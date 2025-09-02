#!/bin/bash

chmod +x ./Desktop/* 
while true; do
    echo "Pick desktop"
    echo "1) Budgie"
    echo "2) Cinnamon"
    echo "3) COSMIC"
    echo "4) Cutefish"
    echo "5) Deepin"
    echo "6) GNOME"
    echo "7) KDE"
    echo "8) LXQt"
    echo "9) MATE"
    echo "10) Pantheon"
    echo "11) Xfce"
    read -p "Choose option: " DESKTOP_INSTALL

    case $DESKTOP_INSTALL in
        1)
            ./Desktop/Budgie.sh
            break
            ;;
        2)
            ./Desktop/Cinnamon.sh
            break
            ;;
        3)
            ./Desktop/Cosmic.sh
            break
            ;;
        4)
            ./Desktop/Cutefish.sh
            break
            ;;
        5)
            ./Desktop/Deepin.sh
            break
            ;;
        6)
            ./Desktop/Gnome.sh
            break
            ;;
        7)
            ./Desktop/Kde.sh
            break
            ;;
        8)
            ./Desktop/Lxqt.sh
            break
            ;;
        9)
            ./Desktop/Mate.sh
            break
            ;;
        10)
            ./Desktop/Pantheon.sh
            break
            ;;
        11)
            echo "Installing Xfce."
            arch-chroot /mnt pacman -S xfce4 xfce4-goodies lightdm-gtk-greeter
            arch-chroot /mnt systemctl enable lightdm
            break
            ;;
        *)
            echo "Wrong choice. Try again."
            ;;
    esac
done