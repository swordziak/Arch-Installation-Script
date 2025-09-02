#!/bin/bash

echo "$PASS" | arch-chroot /mnt passwd --stdin root
arch-chroot /mnt useradd -m -G wheel,video -s /bin/${SHELL} $USER_NAME
echo "$PASS" | arch-chroot /mnt passwd --stdin $USER_NAME
arch-chroot /mnt echo '%wheel ALL=(ALL:ALL) ALL' >> /etc/sudoers
arch-chroot /mnt chmod 0440 /etc/sudoers
arch-chroot /mnt chsh -s /bin/${SHELL} root
arch-chroot /mnt pacman -S $SHELL --noconfirm