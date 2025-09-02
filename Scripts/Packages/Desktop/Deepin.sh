#!/bin/bash

echo "Installing Deepin."
arch-chroot /mnt pacman -S deepin deepin-kwin deepin-extra lightdm --noconfirm
arch-chroot /mnt sed -i 's/^#greeter-session=example-greeter/greeter-session=lightdm-deepin-greeter/' /etc/lightdm/lightdm.conf
arch-chroot /mnt systemctl enable lightdm