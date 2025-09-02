#1/bin/bash

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