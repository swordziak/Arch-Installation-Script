#!/bin/bash

COUNTRIES=(
    "1) Albania"
    "2) Armenia"
    "3) Australia"
    "4) Austria"
    "5) Azerbaijan"
    "6) Bangladesh"
    "7) Belarus"
    "8) Belgium"
    "9) Brazil"
    "10) Bulgaria"
    "11) Cambodia"
    "12) Canada"
    "13) Chile"
    "14) China"
    "15) Colombia"
    "16) Croatia"
    "17) Czechia"
    "18) Denmark"
    "19) Ecuador"
    "20) Estonia"
    "21) Finland"
    "22) France"
    "23) Georgia"
    "24) Germany"
    "25) Greece"
    "26) Hong Kong"
    "27) Hungary"
    "28) Iceland"
    "29) India"
    "30) Indonesia"
    "31) Iran"
    "32) Israel"
    "33) Italy"
    "34) Japan"
    "35) Kazakhstan"
    "36) Kenya"
    "37) Latvia"
    "38) Lithuania"
    "39) Luxembourg"
    "40) Mauritius"
    "41) Mexico"
    "42) Moldova"
    "43) Morocco"
    "44) Nepal"
    "45) Netherlands"
    "46) New Caledonia"
    "47) New Zealand"
    "48) North Macedonia"
    "49) Norway"
    "50) Paraguay"
    "51) Poland"
    "52) Portugal"
    "53) Romania"
    "54) Russia"
    "55) Reunion"
    "56) Saudi Arabia"
    "57) Serbia"
    "58) Singapore"
    "59) Slovakia"
    "60) Slovenia"
    "61) South Africa"
    "62) South Korea"
    "63) Spain"
    "64) Sweden"
    "65) Switzerland"
    "66) Taiwan"
    "67) Thailand"
    "68) Turkiye"
    "69) Ukraine"
    "70) United Arab Emirates"
    "71) United Kingdom"
    "72) United States"
    "73) Uzbekistan"
    "74) Vietnam"
)
while true; do
    echo "Choose country for mirrorlist"
    printf '%s\n' "${COUNTRIES[@]}" | column -t
    read -p "Choose option: ENTER for other " MIRRORLIST

    case $MIRRORLIST in
        1)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=AL&country=GR&country=RS&country=IT&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        2)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=AM&country=TR&country=AZ&country=GE&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        3)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=AU&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        4)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=AT&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        5)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=AM&country=IR&country=AZ&country=GE&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        6)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=BD&country=IN&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        7)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=BY&country=RU&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        8)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=BE&country=FR&country=DE&country=LU&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        9)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=BR&country=CO&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        10)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=BG&country=GR&country=RO&country=RS&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        11)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=KH&country=TH&country=VN&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        12)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=CA&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        13)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=CL&country=BR&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        14)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=CN&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        15)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=CO&country=BR&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        16)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=CO&country=RS&country=AT&country=IT&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        17)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=CZ&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        18)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=DK&country=DE&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        19)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=EC&country=CO&country=BR&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        20)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=EE&country=LT&country=LV&country=FI&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        21)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=FI&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        22)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=FR&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        23)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=GE&country=TR&country=RU&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        24)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=DE&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        25)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=GR&country=TR&country=BG&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        26)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=HK&country=JP&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        27)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=HU&country=SK&country=UA&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        28)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=IS&country=GB&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        29)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=IN&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        30)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=ID&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        31)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=IR&country=TR&country=AZ&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        32)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=IL&country=TR&country=GR&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        33)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=IT&country=FR&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        34)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=JP&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        35)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=KZ&country=RU&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        36)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=KE&country=RE&country=ZA&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        37)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=LV&country=LT&country=PL&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        38)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=LV&country=LT&country=PL&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        39)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=BE&country=FR&country=DE&country=LU&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        40)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=MU&country=RE&country=ZA&country=IN&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        41)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=MX&country=US&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        42)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=MD&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        43)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=MA&country=PT&country=ES&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        44)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=NP&country=IN&country=CN&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        45)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=NL&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        46)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=NC&country=AU&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        47)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=NZ&country=AU&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        48)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=MK&country=GR&country=RS&country=BG&country=TR&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        49)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=NO&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        50)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=PY&country=CL&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        51)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=PL&country=DE&country=LT&country=LV&country=CZ&country=UA&country=SK&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        52)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=PT&country=ES&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        53)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=RO&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        54)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=RU&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        55)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=RE&country=AZ&country=SA&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        56)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=RE&country=AZ&country=SA&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        57)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=RS&country=BG&country=RO&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        58)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=SG&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        59)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=SK&country=CZ&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        60)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=SI&country=SK&country=CZ&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        61)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=ZA&country=RE&country=SA&country=KE&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        62)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=KR&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        63)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=PT&country=ES&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        64)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=SE&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        65)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=CH&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        66)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=TW&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        67)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=TH&country=SG&country=CN&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        68)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=TR&country=GR&country=BG&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        69)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=UA&country=LV&country=LT&country=PL&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        70)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=AE&country=SA&country=ZA&country=IN&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        71)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=GB&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        72)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=US&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        73)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=UZ&country=RU&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        74)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=VN&country=TH&country=HK&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
        *)
            arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=all&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
            break
            ;;
    esac
done