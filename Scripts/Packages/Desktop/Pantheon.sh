#!/bin/bash

echo "Installing Pantheon."
arch-chroot /mnt pacman -S pantheon pantheon-geoclue2-agent pantheon-polkit-agent pantheon-print pantheon-settings-daemon lightdm lightdm-pantheon-greeter
arch-chroot /mnt sed -i 's/^#greeter-session=example-greeter/greeter-session=io.elementary.greeter/' /etc/lightdm/lightdm.conf
arch-chroot /mnt systemctl enable lightdm