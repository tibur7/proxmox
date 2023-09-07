#!/bin/bash  

#https://austinsnerdythings.com/2021/08/30/how-to-create-a-proxmox-ubuntu-cloud-init-image/

#2 – Install packages
apt update -y && apt install libguestfs-tools -y
virt-customize -a focal-server-cloudimg-amd64.img --install qemu-guest-agent

wget=/usr/bin/wget
wget https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img



#3 – Create a Proxmox virtual machine using the newly modified image

qm create 9000 --name "ubuntu-2004-cloudinit-template" --memory 2048 --cores 2 --net0 virtio,bridge=vmbr0
qm importdisk 9000 focal-server-cloudimg-amd64.img local-lvm
qm set 9000 --scsihw virtio-scsi-pci --scsi0 local-zfs:vm-9000-disk-0
qm set 9000 --boot c --bootdisk scsi0
qm set 9000 --ide2 local-lvm:cloudinit
qm set 9000 --serial0 socket --vga serial0
qm set 9000 --agent enabled=1