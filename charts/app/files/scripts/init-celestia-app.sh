#!/bin/sh
# $1 argument: celestia-app home directory (default: ~/.celestia-app)
# $2 argument: the chain id that this script runs against

# Directory where your *.toml and *.json files are present.
# Replace this with the actual directory if it's different.
SOURCE_DIR="$1/scripts"

# The target directory where the files will be copied.
# This would be your mounted `config` folder.
TARGET_DIR="$1/config"

GENESIS_URL="https://raw.githubusercontent.com/celestiaorg/networks/master/$2/genesis.json"

echo "\n--------------  Download genesis file --------------"
mkdir -p $TARGET_DIR
wget -O $TARGET_DIR/genesis.json $GENESIS_URL

# Copy *.toml and *.json files from SOURCE_DIR to TARGET_DIR
cp $SOURCE_DIR/*.toml $TARGET_DIR/
cp $SOURCE_DIR/*.json $TARGET_DIR/

# Rename the prefixed files
for f in $1/config/config_*; do
  mv "$f" "$1/config/$(basename $f | sed 's/^config_//')"
done

# Check if priv_validator_state.json doesn't exist in data, then move it from config to data
if [ ! -f "$1/data/priv_validator_state.json" ]; then
  if [ -f "$1/config/priv_validator_state.json" ]; then
    mv "$1/config/priv_validator_state.json" "$1/data/priv_validator_state.json"
  fi
fi

if [ "$QUICKSYNC_ENABLED" = true ]
then
  echo "\n-------------- Download snapshot for quick-sync --------------"
  mkdir -p $1/data
  SNAP_NAME=$(wget --no-check-certificate -q -O - https://snaps.qubelabs.io/celestia/ | egrep -o ">$2.*tar" | tr -d ">")
  wget -O - https://snaps.qubelabs.io/celestia/${SNAP_NAME} | tar xf - -C $1/data
else
  echo "Quick sync from snapshot disabled"
fi
