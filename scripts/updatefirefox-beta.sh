#!/bin/bash

ansible-playbook -i hosts site.yml --ask-sudo-pass --tags "firefox" -e "arch=64" --vault-password-file=scripts/vaultpass
