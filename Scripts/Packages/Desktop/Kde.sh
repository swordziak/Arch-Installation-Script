#!/bin/bash

echo "Installing KDE."
arch-chroot /mnt pacman -S plasma sddm
arch-chroot /mnt systemctl enable sddm