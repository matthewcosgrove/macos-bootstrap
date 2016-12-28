# macos-bootstrap

Bootstrap a fresh OS X install with preferred apps and config

Incremental testing of these scripts was facilitated by https://github.com/geerlingguy/macos-virtualbox-vm

# Bootstrap steps

### Step 1 - Prepare tools

1. Install XCode tools
    - Open Terminal
    - `git`
    - Message will say something about xcode-select ’no developer tools were found' and dialog pops up asking to install XCode 
    - click Install
1. Install and configure Ansible
    - Open Terminal
    - `mkdir workspace; cd workspace`
    - `git clone https://github.com/matthewcosgrove/macos-bootstrap.git` 
    - `cd macos-bootstrap`
    - `./install-ansible.sh`
    - `./run-ansible-tasks.sh`
