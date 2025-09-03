#!/bin/bash

arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=all&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"