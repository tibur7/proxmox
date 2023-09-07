#!/bin/bash  

qm create 9001 --name "ubuntu-2004-cloudinit-template-9001" --memory 2048 --cores 2 --net0 virtio,bridge=vmbr0
qm importdisk 9001 focal-server-cloudimg-amd64.img local-lvm
qm set 9001 --scsihw virtio-scsi-pci --scsi0 local-zfs:vm-9000-disk-0
qm set 9001 --boot c --bootdisk scsi0
qm set 9001 --ide2 local-lvm:cloudinit
qm set 9001 --serial0 socket --vga serial0
qm set 9001 --agent enabled=1