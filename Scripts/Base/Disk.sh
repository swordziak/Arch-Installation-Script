#!/bin/bash

# TODO: LUKS Support

echo "Select disc:"
read DISK

if [[ "$DISK" == *nvme* ]]; then
    DISK_PREFIX="/dev/${DISK}p"
else
    DISK_PREFIX="/dev/${DISK}"
fi

RAM_MB=$(grep MemTotal /proc/meminfo | awk '{print int($2/1024)}')
SWAP_MB=$((RAM_MB * 150 / 100))
parted --script /dev/${DISK} mklabel gpt
parted --script /dev/${DISK} mkpart "efi" fat32 1MiB 513MiB
parted --script /dev/${DISK} set 1 esp on
parted --script /dev/${DISK} mkpart "btrfs" btrfs 513MiB "$((100 - (SWAP_MB * 100 / 10000)))"%
parted --script /dev/${DISK} mkpart "swap" linux-swap "$((100 - (SWAP_MB * 100 / 10000)))"% 100%


mkfs.fat -F32 ${DISK_PREFIX}1
mkfs.btrfs -L Arch ${DISK_PREFIX}2
mkswap ${DISK_PREFIX}3

mount ${DISK_PREFIX}2 /mnt
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
umount /mnt
mount -o subvol=@ ${DISK_PREFIX}2 /mnt
mkdir -p /mnt/home
mount -o subvol=@home ${DISK_PREFIX}2 /mnt/home
mount --mkdir ${DISK_PREFIX}1 /mnt/boot/
swapon ${DISK_PREFIX}3