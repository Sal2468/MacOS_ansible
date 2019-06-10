# MacOS and Linux Mint - automated config and provisioning using Ansible

This repo configures various settings on Linux Mint and MacOS machines

I couldnt find any practical repos that do MacOS or Mint automation, so I wrote this up for my company. 

I use this to provision new desktops with new software, sys configs, new users, etc.

To run a particular playbook or tag

     ansible-playbook -i hosts playbooks/mac.yaml -v --tags=packages