#!/bin/bash

chmod +x ./Scripts/*

./Scripts/Base.sh
./Scripts/User.sh
./Scripts/Packages.sh
./Scripts/Post.sh

umount -R /mnt
reboot