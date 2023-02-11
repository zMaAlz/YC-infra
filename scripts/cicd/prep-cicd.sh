#!/bin/bash
sudo chown ansible:ansible .ssh/id_rsa && \
chmod 600 .ssh/id_rsa && \
python3 -m pip install --user ansible && \
cd ~/YC-infra/docker/ && \
scp -r lb ansible@192.168.2.210:~ && \
ssh-agent bash 
ssh-add ~/.ssh/id_rsa