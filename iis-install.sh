#!/bin/bash

if [[ -z "$INPUT_FILE" ]]; then
  echo "Missing file input in the action"
  exit 1
fi

echo $INPUT_FILE

echo $(smbclient -U $INPUT_SMB_SOURCE_USERNAME%$INPUT_SMB_SOURCE_PASSWORD -L $INPUT_SMBSOURCE)


