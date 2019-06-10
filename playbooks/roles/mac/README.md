# MAC & IOS

## MAC setup
add new user Admin on the Mac, add password

    sudo dscl . -create /Users/admin
    sudo dscl . -create /Users/admin UserShell /bin/bash
    sudo dscl . -create /Users/admin RealName admin
    sudo dscl . -create /Users/admin UniqueID 1001
    sudo dscl . -create /Users/admin PrimaryGroupID 1000
    sudo dscl . -create /Users/admin NFSHomeDirectory /Users/admin
    sudo dscl . -passwd /Users/admin PASSWORDHERE
    sudo dscl . -append /Groups/admin GroupMembership admin


visudo, add user to nopasswd

    admin ALL=(ALL) NOPASSWD:ALL


## update Hosts with password (remove pw before checking into Git)
    [mac]
    192.168.30.211 ansible_user=admin ansible_password=xxxxx

## Run playbook (on Ubuntu host)
install Ansible
    
    sudo apt install ansible
    sudo apt install sshpass

run playbook

    ansible-playbook -i hosts playbooks/mac.yaml -v --ask-pass


### Mac cmd cheatsheet

