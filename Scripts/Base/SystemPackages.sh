#!/bin/bash

# --- MIRRORS
curl -s "https://archlinux.org/mirrorlist/?country=DE&country=PL&country=CZ&country=UA&country=LT&country=SK&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 25 - > /etc/pacman.d/mirrorlist

# --- UCODE
echo "Pick your CPU brand:"
echo "1) AMD"
echo "2) Intel"
read CPU_CHOICE

case $CPU_CHOICE in
    1)
        echo "Picked AMD. Installing AMD microcode."
        UCODE="amd-ucode"
        ;;
    2)
        echo "Picked Intel. Installing Intel microcode."
        UCODE="intel-ucode"
        ;;
    *)
        echo "Wrong choice. Installing both for safety."
        UCODE="amd-ucode intel-ucode"
        ;;
esac

pacstrap -K /mnt base linux linux-firmware $UCODE btrfs-progs nano man-pages man-db dosfstools ntfs-3g git base-devel
genfstab -U /mnt >> /mnt/etc/fstab