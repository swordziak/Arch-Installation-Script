#!/bin/bash

echo "Do you want to add AUR Support?"
echo "1) Yes"
echo "2) No"
read AUR

case $AUR in
    1)
        arch-chroot /mnt sudo pacman -S --needed git base-devel
        arch-chroot /mnt git clone https://aur.archlinux.org/yay.git
        arch-chroot /mnt cd yay
        arch-chroot /mnt makepkg -si
        arch-chroot /mnt cd ..
        arch-chroot /mnt rm -rf yay
        break
        ;;
    2)
        break
        ;;
    *)
        echo "Wrong choice. Try again."
        ;;
esac