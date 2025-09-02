#!/bin/bash

echo "Installing Xfce."
            arch-chroot /mnt pacman -S xfce4 xfce4-goodies lightdm-gtk-greeter --noconfirm
            arch-chroot /mnt systemctl enable lightdm