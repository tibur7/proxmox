#!/bin/bash

sudo qm clone 9000 999 --name test-clone-cloud-init


sudo qm set 999 --sshkey ~/.ssh/id_rsa.pub
sudo qm set 999 --ipconfig0 ip=10.98.1.96/24,gw=10.98.1.1

sudo qm start 999