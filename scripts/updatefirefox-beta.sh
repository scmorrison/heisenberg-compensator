#!/bin/bash

ansible-playbook -i hosts site.yml --ask-sudo-pass --tags "firefox" -e "arch=x86_64" --vault-password-file=scripts/vaultpass
