#!/bin/bash

echo "Installing Cutefish."
arch-chroot /mnt pacman -S cutefish sddm --noconfirm
arch-chroot /mnt systemctl enable sddm