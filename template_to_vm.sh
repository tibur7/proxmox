#!/bin/bash

echo "Template: $1"
echo "VM id: $2"
echo "VM name: $3"
echo "IP address: $4"
echo "Gateway address: $5"

sudo qm clone $1 $2 --name $3


sudo qm set $2 --sshkey ~/.ssh/id_rsa.pub
sudo qm set $2 --ipconfig0 ip=$4/24,gw=$5

sudo qm start $2