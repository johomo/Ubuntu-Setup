#!/bin/bash

if ! command -v ansible > /dev/null 2>&1; then
    echo "Ansible not found. Installing..."
    sudo apt update
    sudo apt install software-properties-common
    sudo apt-add-repository --yes --update ppa:ansible/ansible
    sudo apt install ansible
fi 

# Run playbook
ansible-playbook ubuntu_setup.yml --ask-become-pass
