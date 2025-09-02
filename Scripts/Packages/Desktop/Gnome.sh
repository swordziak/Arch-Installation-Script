#!/bin/bash

echo "Installing GNOME."
arch-chroot /mnt pacman -S gnome
arch-chroot /mnt systemctl enable gdm