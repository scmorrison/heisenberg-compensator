#!/bin/bash

ansible-playbook -i hosts site.yml --ask-sudo-pass --tags "firefox" -e "release=latest arch=64" --vault-password-file=scripts/vaultpass
