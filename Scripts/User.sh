#!/bin/bash

chmod +x ./User/*

echo "Enter username:"
read USER_NAME

echo "Enter password:"
read -s PASS

echo "Pick shell:"
echo "1) bash"
echo "2) fish"
echo "3) zsh"
read SHELL_CHOICE

case $SHELL_CHOICE in
    1)
        echo "Picked bash."
        SHELL="bash"
        ;;
    2)
        echo "Picked fish."
        SHELL="fish"
        ;;
    3)
        echo "Picked zsh."
        SHELL="zsh"
        ;;
    *)
        echo "Wrong choice. Picked bash."
        SHELL="bash"
        ;;
esac
arch-chroot /mnt pacman -S $SHELL

./User/Account.sh $USER_NAME $PASS $SHELL