#!/bin/bash

echo "Installing GNOME."
arch-chroot /mnt pacman -S gnome --noconfirm
arch-chroot /mnt systemctl enable gdm