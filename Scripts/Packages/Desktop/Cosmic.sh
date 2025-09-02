#!/bin/bash

echo "Installing COSMIC."
arch-chroot /mnt pacman -S cosmic gvfs gvfs-smb gvfs-mtp gvfs-gphoto2 gvfs-afc gvfs-nfs gvfs-dnssd gnome-keyring
arch-chroot /mnt systemctl enable cosmic-greeter.service