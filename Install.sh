#!/bin/bash

echo "Do you want install Arch Linux?"
echo "1) Yes"
echo "2) No"
read -p "Your choice: " CHOICE
case $CHOICE in
    1|y|Y)
        chmod +x ./Scripts/*
        ./Scripts/Base.sh
        ./Scripts/User.sh
        ./Scripts/Packages.sh
        ./Scripts/Post.sh
        umount -R /mnt
        reboot
        ;;
    *)
        exit
        ;;
esac
