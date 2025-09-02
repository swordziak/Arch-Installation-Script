#!/bin/bash

echo "Installing Cinnamon."
arch-chroot /mnt pacman -S cinnamon xed xreader lightdm lightdm-slick-greeter --noconfirm
arch-chroot /mnt sed -i 's/^#greeter-session=example-greeter/greeter-session=slick-greeter/' /etc/lightdm/lightdm.conf
arch-chroot /mnt systemctl enable lightdm