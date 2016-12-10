#!/bin/bash

sudo apt-get update
sudo apt-get install -y python-pip python-dev python-pycurl
sudo pip install markupsafe
sudo pip install ansible

sudo mkdir -p /etc/ansible
printf '[vagrant]\nlocalhost\n' | sudo tee /etc/ansible/hosts > /dev/null

PYTHONUNBUFFERED=1 ansible-playbook -c local /home/vagrant/ansible/playbook.yml