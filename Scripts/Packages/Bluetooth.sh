#!/bin/bash

echo "Do you want to install Bluetooth?"
echo "1) Yes"
echo "2) No"
read -r BLUETOOTH_CHOICE

case "$BLUETOOTH_CHOICE" in
    1)
        arch-chroot /mnt pacman -S bluez bluez-utils --noconfirm
        arch-chroot /mnt systemctl enable bluetooth.service
        ;;
    2)
        break
        ;;
    *)
        echo "Wrong choice. Try again."
        ;;
esac