#!/bin/bash

arch-chroot /mnt ln -sf /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
arch-chroot /mnt hwclock --systohc
arch-chroot /mnt locale-gen
arch-chroot /mnt localectl set-locale LANG=pl_PL.UTF-8
arch-chroot /mnt echo 'KEYMAP=pl' > /etc/vconsole.conf
echo "Enter hostname:"
read HOST
arch-chroot /mnt echo $HOST > /etc/hostname