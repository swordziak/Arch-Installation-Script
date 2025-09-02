#!/bin/bash

while true; do
    echo "Choose desktop"
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
            ./Desktop/Xfce.sh
            break
            ;;
        *)
            echo "Wrong choice. Try again."
            ;;
    esac
done

if arch-chroot /mnt pacman -Q bluez > /dev/null 2>&1; then
    case $DESKTOP_INSTALL in
        1|2|6|9|10|11)
            arch-chroot /mnt pacman -S gnome-bluetooth-3.0 --noconfirm
            ;;
        4|7|8)
            arch-chroot /mnt pacman -S bluedevil --noconfirm
            ;;
        5)
            arch-chroot /mnt pacman -S blueman --noconfirm
            ;;
    esac
fi