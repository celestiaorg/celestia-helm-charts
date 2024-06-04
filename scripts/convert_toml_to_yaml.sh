#!/bin/bash

# Function to convert TOML to YAML
convert_toml_to_yaml() {
  local toml_file=$1
  local yaml_output

  echo "Converting TOML file: $toml_file"

  # Check if yq and jq are installed
  if ! command -v yq &> /dev/null; then
    echo "yq could not be found. Please install yq to use this script."
    exit 1
  fi

  if ! command -v jq &> /dev/null; then
    echo "jq could not be found. Please install jq to use this script."
    exit 1
  fi

  # Convert TOML to YAML using yq
  yaml_output=$(yq eval -o=json "$toml_file" | jq 'walk(if type == "object" then with_entries(.key |= gsub("-"; "_")) else . end)' | yq eval -P)

  # Check if yq produced any output
  if [ -z "$yaml_output" ]; then
    echo "yq did not produce any output. Please check the TOML file."
    exit 1
  fi

  # Print the YAML output
  echo "$yaml_output"
}

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <path_to_toml_file>"
  exit 1
fi

# Call the function with the provided TOML file
convert_toml_to_yaml "$1"
