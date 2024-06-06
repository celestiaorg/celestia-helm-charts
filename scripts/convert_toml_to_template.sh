#!/bin/bash

# Function to convert TOML to templated TOML
convert_toml_to_template() {
  local toml_file=$1
  local node_type=$2
  local toml_output
  local template_output

  echo "Converting TOML file: $toml_file to templated TOML"

  # Check if yq is installed
  if ! command -v yq &> /dev/null; then
    echo "yq could not be found. Please install yq to use this script."
    exit 1
  fi

  # Read the TOML file remove all empty lines and all comments
  toml_output=$(grep -v '^\s*$' "$toml_file" | grep -v '^\s*#')

  # Check if the TOML file was read successfully
  if [ -z "$toml_output" ]; then
    echo "The TOML file is empty or could not be read. Please check the TOML file."
    exit 1
  fi

  # Convert TOML to templated TOML
  template_output=""
  current_section=""
  file_base_name=$(basename "$toml_file" .toml)toml
  while IFS= read -r line; do
    leading_spaces=$(echo "$line" | sed -e 's/\(^[[:space:]]*\).*/\1/')
    if [[ $line =~ ^[[:space:]]*([a-zA-Z0-9_-]+)\ =\ \"(.+)\"$ ]]; then
      key="${BASH_REMATCH[1]}"
      key_replaced="${key//-/_}"
      current_section_replaced="${current_section//-/_}"
      if [ -n "$current_section" ]; then
        template_output+="${leading_spaces}$key = \"{{ .Values.${node_type}.config.${file_base_name}.${current_section_replaced}.$key_replaced }}\"\n"
      else
        template_output+="${leading_spaces}$key = \"{{ .Values.${node_type}.config.${file_base_name}.$key_replaced }}\"\n"
      fi
    elif [[ $line =~ ^[[:space:]]*([a-zA-Z0-9_-]+)\ =\ \[(.+)\]$ ]]; then
      key="${BASH_REMATCH[1]}"
      key_replaced="${key//-/_}"
      current_section_replaced="${current_section//-/_}"
      if [ -n "$current_section" ]; then
        template_output+="${leading_spaces}$key = [{{ range \$index, \$element := .Values.${node_type}.config.${file_base_name}.${current_section_replaced}.$key_replaced }}{{ if \$index }}, {{ end }}\"{{ \$element }}\"{{ end }}]\n"
      else
        template_output+="${leading_spaces}$key = [{{ range \$index, \$element := .Values.${node_type}.config.${file_base_name}.$key_replaced }}{{ if \$index }}, {{ end }}\"{{ \$element }}\"{{ end }}]\n"
      fi
    elif [[ $line =~ ^[[:space:]]*([a-zA-Z0-9_-]+)\ =\ (.+)$ ]]; then
      key="${BASH_REMATCH[1]}"
      value="${BASH_REMATCH[2]}"
      key_replaced="${key//-/_}"
      current_section_replaced="${current_section//-/_}"
      if [[ $value =~ ^\".*\"$ ]]; then
        if [ -n "$current_section" ]; then
          template_output+="${leading_spaces}$key = \"{{ .Values.${node_type}.config.${file_base_name}.${current_section_replaced}.$key_replaced }}\"\n"
        else
          template_output+="${leading_spaces}$key = \"{{ .Values.${node_type}.config.${file_base_name}.$key_replaced }}\"\n"
        fi
      else
        if [[ $value =~ ^[0-9]+$ ]]; then
          if [ -n "$current_section" ]; then
            template_output+="${leading_spaces}$key = {{ printf \"%.0f\" .Values.${node_type}.config.${file_base_name}.${current_section_replaced}.$key_replaced }}\n"
          else
            template_output+="${leading_spaces}$key = {{ printf \"%.0f\" .Values.${node_type}.config.${file_base_name}.$key_replaced }}\n"
          fi
        else
          if [ -n "$current_section" ]; then
            template_output+="${leading_spaces}$key = {{ .Values.${node_type}.config.${file_base_name}.${current_section_replaced}.$key_replaced }}\n"
          else
            template_output+="${leading_spaces}$key = {{ .Values.${node_type}.config.${file_base_name}.$key_replaced }}\n"
          fi
        fi
      fi
    elif [[ $line =~ ^[[:space:]]*\[([a-zA-Z0-9_.-]+)\]$ ]]; then
      current_section="${BASH_REMATCH[1]}"
      current_section_replaced="${current_section//-/_}"
      template_output+="${leading_spaces}[${current_section_replaced}]\n"
    else
      template_output+="$line\n"
    fi
  done <<< "$toml_output"

  # Print the templated TOML output, stripping down all empty lines
  echo -e "$template_output" | sed '/^\s*]$/d'
}

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <path_to_toml_file> <node_type>" 
  exit 1
fi

# Call the function with the provided TOML file
convert_toml_to_template "$1" "$2"
