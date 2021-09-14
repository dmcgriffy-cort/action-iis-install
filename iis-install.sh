#!/bin/bash

if [[ -z "$INPUT_FILE" ]]; then
  echo "Missing file input in the action"
  exit 1
fi

echo "Input file: $INPUT_FILE"
echo "SMB Source: $INPUT_SMB_SOURCE"
echo "SMB Soure Username: $INPUT_SMB_SOURCE_USERNAME%$INPUT_SMB_SOURCE_PASSWORD"

echo $(smbclient $INPUT_SMB_SOURCE_SHARE -U "$INPUT_SMB_SOURCE_USERNAME%$INPUT_SMB_SOURCE_PASSWORD" -D $INPUT_SMB_SOURCE_DIRECTORY -c 'ls')

