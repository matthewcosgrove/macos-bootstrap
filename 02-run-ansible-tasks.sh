#!/bin/bash

set -eu

: ${APPLE_EMAIL:?"Need to set APPLE_EMAIL non-empty"}
vars_choice=${MACOS_BOOTSTRAP_PROFILE:-main}
apple_email=${APPLE_EMAIL}
echo "Running playbooks based on vars defined in vars/${vars_choice}.yml"
echo "To override vars, set env var MACOS_BOOTSTRAP_PROFILE to filename without suffix e.g. MACOS_BOOTSTRAP_PROFILE=lite"
ansible-galaxy install -r requirements.yml
ansible-playbook --extra-vars "vars_choice=${vars_choice} apple_email=${apple_email}" main.yml -i inventory -K --ask-become-pass
#ansible-playbook --extra-vars "vars_choice=${vars_choice}" main.yml -i inventory -K --ask-become-pass
