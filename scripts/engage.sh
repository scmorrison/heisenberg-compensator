#!/bin/bash

ansible-playbook -i hosts site.yml --ask-sudo-pass  --vault-password-file=scripts/vaultpass --skip-tags="firefox"
