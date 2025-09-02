#!/bin/bash

arch-chroot /mnt grub-install --target=x86_64-efi --efi-directory=/boot/ --bootloader-id=GRUB --modules="tpm" --disable-shim-lock
arch-chroot /mnt sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT="[^"]*/& splash quiet/' /etc/default/grub
arch-chroot /mnt grub-mkconfig -o /boot/grub/grub.cfg