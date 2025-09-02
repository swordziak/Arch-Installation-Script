#!/bin/bash

chmod +x ./Post/*

arch-chroot /mnt systemctl enable NetworkManager
./Post/Grub.sh