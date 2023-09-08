sudo qm clone 9000 234 --name vm234


sudo qm set 234 --sshkey ~/.ssh/id_rsa.pub
sudo qm set 234 --ipconfig0 ip=192.168.0.234/24,gw=192.168.0.1

sudo qm start $2