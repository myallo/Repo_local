#!/bin/bash

vault_password=$1


if [ -z "$vault_password" ]; then
  read -sp "Enter Bitwarden vault password: " vault_password
  echo
fi

export BW_SESSION=$(bw unlock --raw $vault_password)
export ROOT_PASSWORD=$(bw get password pro-root)

echo $ROOT_PASSWORD

