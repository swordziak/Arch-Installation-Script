#!/bin/bash


./Base/Disk.sh
./Base/Mirrorlist.sh
./Base/SystemPackages.sh
./Base/Locale.sh
pacman -Syu