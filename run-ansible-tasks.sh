#!/bin/bash

set -eu

ansible-galaxy install -r pre-req-roles.yml --roles-path roles
ansible-playbook main.yml -i inventory -K
