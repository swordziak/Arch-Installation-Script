#!/bin/bash

echo "Installing LXQt."
arch-chroot /mnt pacman -S lxqt breeze-icons sddm
arch-chroot /mnt systemctl enable sddm