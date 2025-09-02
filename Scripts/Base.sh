#!/bin/bash

chmod +x ./Base/*

./Base/Disk.sh
./Base/SystemPackages.sh
./Base/Locale.sh
pacman -Syu