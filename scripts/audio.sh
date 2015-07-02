#!/bin/bash

ansible-playbook -i hosts site.yml --ask-sudo-pass --tags="base,audio"  --vault-password-file=scripts/vaultpass
