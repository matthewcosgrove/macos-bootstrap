#!/bin/bash

set -eu

vars_choice=${ANS_PROFILE:-main}
echo "Running playbooks based on vars defined in vars/${vars_choice}.yml. To override, set env var ANS_PROFILE to filename without suffix e.g. ANS_PROFILE=lite"
ansible-galaxy install -r pre-req-roles.yml
ansible-playbook --extra-vars "vars_choice=${vars_choice}" main.yml -i inventory -K
