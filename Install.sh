#!/bin/bash

echo "Select disc:"
read DISK

if [[ "$DISK" == *nvme* ]]; then
    DISK_PREFIX="/dev/${DISK}p"
else
    DISK_PREFIX="/dev/${DISK}"
fi

# --- FORMAT
mkfs.fat -F32 ${DISK_PREFIX}1
mkfs.btrfs -L Arch ${DISK_PREFIX}2
mkswap ${DISK_PREFIX}3

# --- MOUNT
mount /dev/${DISK_PREFIX}2 /mnt
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
umount /mnt
mount -o subvol=@ /dev/${DISK_PREFIX}2 /mnt
mkdir -p /mnt/home
mount -o subvol=@home /dev/${DISK_PREFIX}2 /mnt/home
mount --mkdir /dev/${DISK_PREFIX}1 /mnt/boot/
swapon /dev/${DISK_PREFIX}3

# --- BASE
curl -s "https://archlinux.org/mirrorlist/?country=DE&country=PL&country=CZ&country=UA&country=LT&country=SK&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 25 - > /etc/pacman.d/mirrorlist
# --- UCODE
echo "Pick your CPU brand:"
echo "1) AMD"
echo "2) Intel"
read CPU_CHOICE

case $CPU_CHOICE in
    1)
        echo "Picked AMD. Installing AMD microcode."
        UCODE="amd-ucode"
        ;;
    2)
        echo "Picked Intel. Installing Intel microcode."
        UCODE="intel-ucode"
        ;;
    *)
        echo "Wrong choice. Installing both for safety."
        UCODE="amd-ucode intel-ucode"
        ;;
esac
pacstrap -K /mnt base linux linux-firmware $UCODE btrfs-progs nano man-pages man-db dosfstools ntfs-3g git base-devel
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
while true; do
    echo "Pick desktop"
    echo "1) Budgie"
    echo "2) Cinnamon"
    echo "3) COSMIC"
    echo "4) Cutefish"
    echo "5) Deepin"
    echo "6) GNOME"
    echo "7) KDE"
    echo "8) LXQt"
    echo "9) MATE"
    echo "10) Pantheon"
    echo "11) Xfce"
    read -p "Choose option: " DESKTOP_INSTALL

    case $DESKTOP_INSTALL in
        1)
            echo "Installing Budgie."
            arch-chroot /mnt pacman -S budgie budgie-desktop-view budgie-backgrounds network-manager-applet materia-gtk-theme papirus-icon-theme nemo gdm
            arch-chroot /mnt systemctl enable gdm
            break
            ;;
        2)
            echo "Installing Cinnamon."
            arch-chroot /mnt pacman -S cinnamon xed xreader lightdm lightdm-slick-greeter
            arch-chroot /mnt sed -i 's/^#greeter-session=example-greeter/greeter-session=slick-greeter/' /etc/lightdm/lightdm.conf
            arch-chroot /mnt systemctl enable lightdm
            break
            ;;
        3)
            echo "Installing COSMIC."
            arch-chroot /mnt pacman -S cosmic gvfs gvfs-smb gvfs-mtp gvfs-gphoto2 gvfs-afc gvfs-nfs gvfs-dnssd gnome-keyring
            arch-chroot /mnt systemctl enable cosmic-greeter.service
            break
            ;;
        4)
            echo "Installing Cutefish."
            arch-chroot /mnt pacman -S cutefish sddm
            arch-chroot /mnt systemctl enable sddm
            break
            ;;
        5)
            echo "Installing Deepin."
            arch-chroot /mnt pacman -S deepin deepin-kwin deepin-extra lightdm
            arch-chroot /mnt sed -i 's/^#greeter-session=example-greeter/greeter-session=lightdm-deepin-greeter/' /etc/lightdm/lightdm.conf
            arch-chroot /mnt systemctl enable lightdm
            break
            ;;
        6)
            echo "Installing GNOME."
            arch-chroot /mnt pacman -S gnome
            arch-chroot /mnt systemctl enable gdm
            break
            ;;
        7)
            echo "Installing KDE."
            arch-chroot /mnt pacman -S plasma sddm
            arch-chroot /mnt systemctl enable sddm
            break
            ;;
        8)
            echo "Installing LXQt."
            arch-chroot /mnt pacman -S lxqt breeze-icons sddm
            arch-chroot /mnt systemctl enable sddm
            break
            ;;
        9)
            echo "Installing MATE."
            arch-chroot /mnt pacman -S mate mate-extra lightdm-slick-greeter
            arch-chroot /mnt sed -i 's/^#greeter-session=example-greeter/greeter-session=slick-greeter/' /etc/lightdm/lightdm.conf
            arch-chroot /mnt systemctl enable lightdm
            break
            ;;
        10)
            echo "Installing Pantheon."
            arch-chroot /mnt pacman -S pantheon pantheon-geoclue2-agent pantheon-polkit-agent pantheon-print pantheon-settings-daemon lightdm lightdm-pantheon-greeter
            arch-chroot /mnt sed -i 's/^#greeter-session=example-greeter/greeter-session=io.elementary.greeter/' /etc/lightdm/lightdm.conf
            arch-chroot /mnt systemctl enable lightdm
            break
            ;;
        11)
            echo "Installing Xfce."
            arch-chroot /mnt pacman -S xfce4 xfce4-goodies lightdm-gtk-greeter
            arch-chroot /mnt systemctl enable lightdm
            break
            ;;
        *)
            echo "Wrong choice. Try again."
            ;;
    esac
done
echo "Do you want install NVIDIA Drivers?"
echo "1) Yes"
echo "2) No"
read GPU_CHOICE

if [[ "$GPU_CHOICE" == "1" ]]; then
    echo "Instaling drivers."
    arch-chroot /mnt pacman -S nvidia-open nvidia-utils
elif [[ "$GPU_CHOICE" == "2" ]]; then
    :
else
    echo "Wrong choice. Try again."
fi
arch-chroot /mnt mkinitcpio -P

echo "Do you want install Flatpak?"
echo "1) Yes"
echo "2) No"
read FLATPAK

if [[ "$FLATPAK" == "1" ]]; then
    echo "Instaling Flatpak."
    arch-chroot /mnt pacman -S flatpak
    arch-chroot /mnt flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
elif [[ "$FLATPAK" == "2" ]]; then
    :
else
    echo "Wrong choice. Try again."
fi

# --- SERVICES
arch-chroot /mnt systemctl enable NetworkManager

# --- BOOTLOADER
arch-chroot /mnt grub-install --target=x86_64-efi --efi-directory=/boot/ --bootloader-id=GRUB --modules="tpm" --disable-shim-lock
arch-chroot /mnt grub-mkconfig -o /boot/grub/grub.cfg

# --- END
umount -R /mnt
reboot