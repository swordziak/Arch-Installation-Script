#!/bin/bash

ROOT_UUID=$(blkid -s UUID -o value /dev/${DISK_PREFIX}2)
ESP_PATH="/mnt/boot/efi"

if [ "$BOOT_MODE" == "UEFI" ]; then
    arch-chroot /mnt pacman -S refind
    arch-chroot /mnt refind-install
    cat > /tmp/refind_linux.conf <<-EOF
"Boot Arch Linux"                 "root=UUID=$ROOT_UUID rw quiet splash subvol=/@"
"Boot Arch Linux"      "root=UUID=$ROOT_UUID rw single subvol=/@"
EOF
    arch-chroot /mnt cp /tmp/refind_linux.conf "$ESP_PATH/EFI/refind/refind_linux.conf"
    rm /tmp/refind_linux.conf
elif [ "$BOOT_MODE" == "BIOS" ]; then
    arch-chroot /mnt grub-install --target=i386-pc /dev/${DISK_PREFIX}
    arch-chroot /mnt sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT="[^"]*/& splash quiet subvol=/@/' /etc/default/grub
    arch-chroot /mnt grub-mkconfig -o /boot/grub/grub.cfg
else
    echo "ERROR: Can't install bootloader!"
    exit 1
fi
