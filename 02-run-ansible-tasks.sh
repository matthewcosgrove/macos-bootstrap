#!/bin/bash

set -eu

: ${APPLE_EMAIL:?"Need to set APPLE_EMAIL non-empty"}
vars_choice=${ANSIBLE_PROFILE:-main}
apple_email=${APPLE_EMAIL}
echo "Running playbooks based on vars defined in vars/${vars_choice}.yml"
echo "To override vars, set env var ANSIBLE_PROFILE to filename without suffix e.g. ANSIBLE_PROFILE=lite"
ansible-galaxy install -r pre-req-roles.yml
ansible-playbook --extra-vars "vars_choice=${vars_choice} apple_email=${apple_email}" main.yml -i inventory -K
