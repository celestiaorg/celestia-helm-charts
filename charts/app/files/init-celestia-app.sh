#!/bin/sh
# $1 argument: celestia-app home directory (default: ~/.celestia-app)
# $2 argument: the chain id that this script runs against

GENESIS_URL="https://raw.githubusercontent.com/celestiaorg/networks/master/$2/genesis.json"
echo "\n--------------  Download genesis file --------------"
mkdir -p $1/config
wget -O $1/config/genesis.json $GENESIS_URL

if [ "$QUICKSYNC_ENABLED" = true ]
then
  echo "\n-------------- Download snapshot for quick-sync --------------"
  mkdir -p $1/data
  SNAP_NAME=$(wget --no-check-certificate -q -O - https://snaps.qubelabs.io/celestia/ | egrep -o ">$2.*tar" | tr -d ">")
  wget -O - https://snaps.qubelabs.io/celestia/${SNAP_NAME} | tar xf - -C $1/data
else
  echo "Quick sync from snapshot disabled"
fi
