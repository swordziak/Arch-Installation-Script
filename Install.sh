#!/bin/bash

echo "Select disc (ex. sda, nvme0n1p):"
read DISK
# --- FORMAT
mkfs.fat -F32 /dev/${DISK}1
mkfs.btrfs -L Arch /dev/${DISK}2
mkswap /dev/${DISK}3

# --- MOUNT
mount /dev/${DISK}2 /mnt
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
umount /mnt
mount -o subvol=@ /dev/${DISK}2 /mnt
mkdir -p /mnt/home
mount -o subvol=@home /dev/${DISK}2 /mnt/home
mount --mkdir /dev/${DISK}1 /mnt/boot/
swapon /dev/${DISK}3

# --- BASE
curl -s "https://archlinux.org/mirrorlist/?country=DE&country=PL&country=CZ&country=UA&country=LT&country=SK&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 25 - > /etc/pacman.d/mirrorlist
pacstrap -K /mnt base linux linux-firmware amd-ucode btrfs-progs nano man-pages man-db dosfstools ntfs-3g git base-devel
genfstab -U /mnt >> /mnt/etc/fstab

# --- CHROOT
arch-chroot /mnt ln -sf /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
arch-chroot /mnt hwclock --systohc
arch-chroot /mnt locale-gen
arch-chroot /mnt localectl set-locale LANG=pl_PL.UTF-8
arch-chroot /mnt echo 'KEYMAP=pl' > /etc/vconsole.conf
echo "Enter hostname:"
read HOST
arch-chroot /mnt echo $HOST > /etc/hostname

# --- ACCOUNT
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

echo "$PASS" | arch-chroot /mnt passwd --stdin root
arch-chroot /mnt useradd -m -G wheel,video -s /bin/${SHELL} $USER_NAME
echo "$PASS" | arch-chroot /mnt passwd --stdin $USER_NAME
arch-chroot /mnt echo '%wheel ALL=(ALL:ALL) ALL' >> /etc/sudoers
arch-chroot /mnt chmod 0440 /etc/sudoers
arch-chroot /mnt chsh -s /bin/${SHELL} root

# --- DESKTOP
arch-chroot /mnt pacman -Syu
arch-chroot /mnt pacman -S $SHELL
arch-chroot /mnt pacman -S gdm gnome-shell nautilus gnome-screenshot gnome-console gvfs gvfs-afc gvfs-goa gvfs-dnssd gvfs-google gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-onedrive gvfs-smb gvfs-wsdd malcontent gnome-control-center gnome-session xdg-desktop-portal-gnome networkmanager adw-gtk-theme timeshift
arch-chroot /mnt pacman -S nvidia-open nvidia-utils 
arch-chroot /mnt mkinitcpio -P
arch-chroot /mnt pacman -S flatpak
arch-chroot /mnt flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# --- SERVICES
arch-chroot /mnt systemctl enable gdm
arch-chroot /mnt systemctl enable NetworkManager

# --- BOOTLOADER
arch-chroot /mnt grub-install --target=x86_64-efi --efi-directory=/boot/ --bootloader-id=GRUB --modules="tpm" --disable-shim-lock
arch-chroot /mnt grub-mkconfig -o /boot/grub/grub.cfg

# --- END
umount -R /mnt
reboot