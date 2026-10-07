#!/bin/bash

# TODO: Timezone select
# TODO: Language and Keymap select

arch-chroot /mnt ln -sf /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
arch-chroot /mnt hwclock --systohc
arch-chroot /mnt locale-gen
arch-chroot /mnt localectl set-locale LANG=en_US.UTF-8
echo 'KEYMAP=us' > /mnt/etc/vconsole.conf
echo "Enter hostname:"
read -r HOST
echo "$HOST" > /mnt/etc/hostname