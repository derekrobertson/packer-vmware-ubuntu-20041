#!/bin/bash

# Allows VMware customization of the VM using cloud-init, see https://kb.vmware.com/s/article/54986
# We need to clear out everything produced by the previous cloud-init run from packer that created the template
sudo cloud-init clean --logs
sudo rm -rf /var/lib/cloud/*
sudo rm -f /etc/cloud/cloud.cfg
sudo rm -f /etc/netplan/*
sudo truncate -s 0 /etc/machine-id
echo "disable_vmware_customization: false" | sudo tee -a /etc/cloud/cloud.cfg
