#!/bin/bash

ansible-playbook -i hosts site.yml --ask-sudo-pass --tags "firefox" -e "arch=64 release=nightly" --vault-password-file=scripts/vaultpass
