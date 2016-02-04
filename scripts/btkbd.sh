#!/bin/bash

ansible-playbook -i hosts site.yml --ask-sudo-pass --tags "btkbd" --vault-password-file=scripts/vaultpass
