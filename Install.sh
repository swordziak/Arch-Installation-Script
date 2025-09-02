#!/bin/bash

chmod +x ./Scripts/*

# Main installer script
./Scripts/Base.sh
./Scripts/User.sh
./Scripts/Packages.sh
./Scripts/Post.sh

# Final commands
umount -R /mnt
reboot