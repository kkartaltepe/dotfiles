#!/bin/bash
# Depends on gvfs-afc for mounting iPhones
# Ripped from https://wiki.debian.org/iPhone . Thanks Debian

idVendor=$(lsusb -v 2>/dev/null | awk '/idVendor.*Apple/{print $2; exit}')
iSerial=$(lsusb -v -d $idVendor: 2>/dev/null | awk '/iSerial/{print $3; exit}')
gvfs-mount afc://$iSerial/
