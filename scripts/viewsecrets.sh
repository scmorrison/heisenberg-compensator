#!/bin/bash

ansible-vault view vars/secrets.yml --vault-password-file=scripts/vaultpass
