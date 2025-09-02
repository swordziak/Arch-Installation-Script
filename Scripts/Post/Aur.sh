#!/bin/bash

echo "Do you want to add AUR Support?"
echo "1) Yes"
echo "2) No"
read AUR

case $AUR in
    1)
        read -p "Enter your username: " USERNAME
        arch-chroot /mnt su -c "git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -sri --noconfirm" - $USERNAME
        break
        ;;
    2)
        break
        ;;
    *)
        echo "Wrong choice. Try again."
        ;;
esac

echo "Do you want to Install GUI Package Manager?"
echo "1) Yes"
echo "2) No"
read -p "Your choice: " GUI

case $GUI in
    1)
        if arch-chroot /mnt pacman -Q gnome-shell >/dev/null 2>&1 || \
           arch-chroot /mnt pacman -Q xfce4-session >/dev/null 2>&1 || \
           arch-chroot /mnt pacman -Q budgie-desktop >/dev/null 2>&1 || \
           arch-chroot /mnt pacman -Q cinnamon >/dev/null 2>&1 || \
           arch-chroot /mnt pacman -Q cosmic-session >/dev/null 2>&1 || \
           arch-chroot /mnt pacman -Q marco >/dev/null 2>&1 || \
           arch-chroot /mnt pacman -Q pantheon-session >/dev/null 2>&1; then
            
            echo "Installing Pamac..."
            arch-chroot /mnt su -c "git clone https://aur.archlinux.org/pamac-all.git && cd pamac-all && makepkg -sri --noconfirm" - $USERNAME

        elif arch-chroot /mnt pacman -Q plasma >/dev/null 2>&1 || \
             arch-chroot /mnt pacman -Q lxqt-session >/dev/null 2>&1 || \
             arch-chroot /mnt pacman -Q cutefish-core >/dev/null 2>&1 || \
             arch-chroot /mnt pacman -Q deepin-session >/dev/null 2>&1; then
            
            echo "Installing Octopi..."
            arch-chroot /mnt pacman -S octopi --noconfirm

        else
            echo "Installing Pamac..."
            arch-chroot /mnt su -c "git clone https://aur.archlinux.org/pamac-all.git && cd pamac-all && makepkg -sri --noconfirm" - $USERNAME
        fi
        break
        ;;

    2)
        break
        ;;
    *)
        echo "Wrong choice. Try again."
        ;;
esac