#!/bin/bash

arch-chroot /mnt pacman -S plymouth --noconfirm
arch-chroot /mnt sed -i 's/^HOOKS=(base udev/HOOKS=(base udev plymouth/' /etc/mkinitcpio.conf