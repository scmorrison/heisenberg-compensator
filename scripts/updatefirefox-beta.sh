#!/bin/bash

ansible-playbook -i hosts site.yml --ask-sudo-pass --tags "firefox"  --vault-password-file=scripts/vaultpass
