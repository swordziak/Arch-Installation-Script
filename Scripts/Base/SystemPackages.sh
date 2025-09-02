#!/bin/bash

echo "Choose your CPU brand:"
echo "1) AMD"
echo "2) Intel"
read CPU_CHOICE

case $CPU_CHOICE in
    1)
        echo "Choosed AMD. Installing AMD microcode."
        UCODE="amd-ucode"
        ;;
    2)
        echo "Choosed Intel. Installing Intel microcode."
        UCODE="intel-ucode"
        ;;
    *)
        echo "Wrong choice. Installing both for safety."
        UCODE="amd-ucode intel-ucode"
        ;;
esac

pacstrap -K /mnt base linux linux-firmware $UCODE btrfs-progs nano man-pages man-db dosfstools ntfs-3g git base-devel
genfstab -U /mnt >> /mnt/etc/fstab