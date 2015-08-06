#!/bin/bash

ansible-playbook -i hosts site.yml --ask-sudo-pass --tags "firefox" -e "release=latest arch=i686" --vault-password-file=scripts/vaultpass
