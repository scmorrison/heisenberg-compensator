#!/bin/bash

ansible-playbook -i hosts site.yml --ask-sudo-pass --tags "firefox" -e "arch=i686" --vault-password-file=scripts/vaultpass
