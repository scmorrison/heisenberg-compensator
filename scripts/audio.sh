#!/bin/bash

ansible-playbook -i hosts site.yml --ask-sudo-pass --tags="base,audio"
