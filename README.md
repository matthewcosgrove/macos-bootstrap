# macos-bootstrap

Bootstrap a fresh OS X install with preferred apps and config

Incremental testing of these scripts was facilitated by https://github.com/geerlingguy/macos-virtualbox-vm

# Install steps

1. Install XCode tools
    - Open Terminal
    - `git`
    - Message will say something about xcode-select ’no developer tools were found' and dialog pops up asking to install XCode 
    - click Install
1. Install Ansible
    - Open Terminal
    - `git clone git@github.com:matthewcosgrove/macos-bootstrap.git` 
    - `cd macos-bootstrap`
    - `.install-ansible.sh`
