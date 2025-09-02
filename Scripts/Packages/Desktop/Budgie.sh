#!/bin/bash

echo "Installing Budgie."
arch-chroot /mnt pacman -S budgie budgie-desktop-view budgie-backgrounds network-manager-applet materia-gtk-theme papirus-icon-theme nemo gdm
arch-chroot /mnt systemctl enable gdm