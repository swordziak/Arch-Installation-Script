#!/bin/bash

echo "Installing KDE."
arch-chroot /mnt pacman -S plasma sddm --noconfirm
arch-chroot /mnt systemctl enable sddm