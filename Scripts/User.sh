#!/bin/bash

echo "Enter username:"
read USER_NAME

echo "Enter password:"
read -s PASS

echo "Choose shell:"
echo "1) bash"
echo "2) fish"
echo "3) zsh"
read SHELL_CHOICE

case $SHELL_CHOICE in
    1)
        echo "Choosed bash."
        SHELL="bash"
        ;;
    2)
        echo "Choosed fish."
        SHELL="fish"
        ;;
    3)
        echo "Choosed zsh."
        SHELL="zsh"
        ;;
    *)
        echo "Wrong choice. Choosed bash."
        SHELL="bash"
        ;;
esac
arch-chroot /mnt pacman -S $SHELL

./User/Account.sh $USER_NAME $PASS $SHELL