#!/bin/bash

set -eu

echo "Installing pip"
sudo easy_install pip
echo "Installing Ansible via pip"
sudo pip install ansible --quiet
