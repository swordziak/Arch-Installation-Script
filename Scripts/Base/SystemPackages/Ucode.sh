#!/bin/bash

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