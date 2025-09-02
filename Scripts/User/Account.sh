#!/bin/bash

echo "root:$PASS" | arch-chroot /mnt chpasswd

arch-chroot /mnt useradd -m -G wheel,video -s /bin/${SHELL} $USER_NAME
echo "$USER_NAME:$PASS" | arch-chroot /mnt chpasswd

arch-chroot /mnt sed -i 's/^#\s*\(%wheel\s\+ALL=(ALL:ALL)\s\+ALL\)/\1/' /etc/sudoers
arch-chroot /mnt chsh -s /bin/${SHELL} root