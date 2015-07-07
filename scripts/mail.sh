#!/bin/bash

ansible-playbook -i hosts site.yml --ask-sudo-pass --tags "mailfilter,oitemplate" --vault-password-file=scripts/vaultpass
