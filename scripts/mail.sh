#!/bin/bash

ansible-playbook -i hosts site.yml --ask-sudo-pass --tags "oitemplate" --vault-password-file=scripts/vaultpass
