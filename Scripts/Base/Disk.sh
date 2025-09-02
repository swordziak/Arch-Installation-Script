#!/bin/bash

echo "Select disc:"
read DISK

if [[ "$DISK" == *nvme* ]]; then
    DISK_PREFIX="/dev/${DISK}p"
else
    DISK_PREFIX="/dev/${DISK}"
fi

mkfs.fat -F32 ${DISK_PREFIX}1
mkfs.btrfs -L Arch ${DISK_PREFIX}2
mkswap ${DISK_PREFIX}3

mount /dev/${DISK_PREFIX}2 /mnt
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
umount /mnt
mount -o subvol=@ /dev/${DISK_PREFIX}2 /mnt
mkdir -p /mnt/home
mount -o subvol=@home /dev/${DISK_PREFIX}2 /mnt/home
mount --mkdir /dev/${DISK_PREFIX}1 /mnt/boot/
swapon /dev/${DISK_PREFIX}3