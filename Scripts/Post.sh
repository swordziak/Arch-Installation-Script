#!/bin/bash

arch-chroot /mnt systemctl enable NetworkManager
arch-chroot /mnt grub-install --target=x86_64-efi --efi-directory=/boot/ --bootloader-id=GRUB --modules="tpm" --disable-shim-lock
arch-chroot /mnt grub-mkconfig -o /boot/grub/grub.cfg