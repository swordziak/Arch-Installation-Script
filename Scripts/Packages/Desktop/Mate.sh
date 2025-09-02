#!/bin/bash

echo "Installing MATE."
arch-chroot /mnt pacman -S mate mate-extra lightdm-slick-greeter
arch-chroot /mnt sed -i 's/^#greeter-session=example-greeter/greeter-session=slick-greeter/' /etc/lightdm/lightdm.conf
arch-chroot /mnt systemctl enable lightdm