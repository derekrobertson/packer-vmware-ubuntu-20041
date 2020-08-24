#!/bin/bash

# Removes files leftover from the cloud-config install
# If these are not removed, cloud-init cannot be run again (for example by Openstack or VMware customization)

FILE=/etc/cloud/cloud.cfg.d/50-curtin-networking.cfg
if test -f "$FILE"; then
  sudo rm $FILE
fi

FILE=/etc/cloud/cloud.cfg.d/curtin-preserve-sources.cfg
if test -f "$FILE"; then
  sudo rm $FILE
fi

FILE=/etc/cloud/cloud.cfg.d/subiquity-disable-cloudinit-networking.cfg
if test -f "$FILE"; then
  sudo rm $FILE
fi