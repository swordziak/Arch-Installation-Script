#!/bin/bash

# TODO: Timezone select
# TODO: Language and Keymap select

arch-chroot /mnt ln -sf /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
arch-chroot /mnt hwclock --systohc
arch-chroot /mnt locale-gen
arch-chroot /mnt localectl set-locale LANG=en_US.UTF-8
arch-chroot /mnt echo 'KEYMAP=us' > /etc/vconsole.conf
echo "Enter hostname:"
read HOST
arch-chroot /mnt echo $HOST > /etc/hostname