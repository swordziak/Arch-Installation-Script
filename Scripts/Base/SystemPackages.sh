#!/bin/bash

chmod +x ./SystemPackages/*

curl -s "https://archlinux.org/mirrorlist/?country=DE&country=PL&country=CZ&country=UA&country=LT&country=SK&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 25 - > /etc/pacman.d/mirrorlist

./SystemPackages/Ucode.sh

pacstrap -K /mnt base linux linux-firmware $UCODE btrfs-progs nano man-pages man-db dosfstools ntfs-3g git base-devel
genfstab -U /mnt >> /mnt/etc/fstab