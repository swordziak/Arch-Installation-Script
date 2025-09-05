#!/bin/bash

./Base/Disk.sh
./Base/Mirrorlist.sh
./Base/SystemPackages.sh
./Base/Locale.sh
arch-chroot /mnt sed -i '/\[multilib\]/,/Include/s/^#//' /etc/pacman.conf
arch-chroot /mnt pacman -Syu --noconfirm