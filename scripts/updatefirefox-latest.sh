#!/bin/bash

ansible-playbook -i hosts site.yml --ask-sudo-pass --tags "firefox" -e "release=latest" --vault-password-file=scripts/vaultpass
