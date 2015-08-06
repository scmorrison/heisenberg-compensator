#!/bin/bash

ansible-playbook -i hosts site.yml --ask-sudo-pass --tags "libreoffice" --vault-password-file=scripts/vaultpass
