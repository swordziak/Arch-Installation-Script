#!/bin/bash

while true; do
    echo "Choose your GPU manufacturer:"
    echo "1) Intel"
    echo "2) AMD"
    echo "3) NVIDIA"
    read -p "Your choice: " GPU_CHOICE

    case $GPU_CHOICE in
        1|2|3)
            break
            ;;
        *)
            :
            ;;
    esac
done

case $GPU_CHOICE in
    1)
        if lspci -v | grep -q "Tiger Lake" || lspci -v | grep -q "Rocket Lake" || lspci -v | grep -q "Alder Lake" || lspci -v | grep -q "Arrow Lake" || lspci -v | grep -q "Meteor Lake" || lspci -v | grep -q "Lunar Lake" || lspci -v | grep -q "Panther Lake" || lspci -v | grep -q "Nova Lake" || lspci -v | grep -q "Razer Lake"; then
            arch-chroot /mnt pacman -S libvpl vpl-gpu-rt --noconfirm
        else
            arch-chroot /mnt pacman -S intel-media-driver --noconfirm
        fi
        ;;
    2)
        arch-chroot /mnt pacman -S mesa vulkan-radeon lib32-mesa lib32-vulkan-radeon mesa-vdpau lib32-mesa-vdpau --noconfirm
        ;;
    3)
        if lspci -v | grep -q "NVIDIA"; then
            GPU_ID=$(lspci -n | grep -E '10de:250[0-9]|10de:25[1-9][0-9]|10de:25[0-9][a-f]|10de:220[0-9]|10de:22[0-9][a-f]|10de:22[1-9][0-9]|10de:22[a-f][0-9]|10de:22[a-f][a-f]')
            if [[ -n "$GPU_ID" ]]; then
                arch-chroot /mnt pacman -S nvidia-open nvidia-utils lib32-nvidia-utils --noconfirm
            else
                arch-chroot /mnt pacman -S nvidia nvidia-utils lib32-nvidia-utils --noconfirm
            fi
        else
            echo "Error: No NVIDIA GPU detected. Installation of NVIDIA drivers will be skipped."
        fi
        ;;
esac