if [[ "$FLATPAK" == "1" ]]; then
    echo "Instaling Flatpak."
    arch-chroot /mnt pacman -S flatpak
    arch-chroot /mnt flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
elif [[ "$FLATPAK" == "2" ]]; then
    :
else
    echo "Wrong choice. Try again."
fi