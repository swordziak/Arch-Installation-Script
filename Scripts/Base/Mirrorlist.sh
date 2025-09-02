#!/bin/bash

while true; do
    echo "Pick country for mirrorlist"
    echo "1) Albania"
    echo "2) Armenia"
    echo "3) Australia"
    echo "4) Austria"
    echo "5) Azerbaijan"
    echo "6) Bangladesh"
    echo "7) Belarus"
    echo "8) Belgium"
    echo "9) Brazil"
    echo "10) Bulgaria"
    echo "11) Cambodia"
    echo "12) Canada"
    echo "13) Chile"
    echo "14) China"
    echo "15) Colombia"
    echo "16) Croatia"
    echo "17) Czechia"
    echo "18) Denmark"
    echo "19) Ecuador"
    echo "20) Estonia"
    echo "21) Finland"
    echo "22) France"
    echo "23) Georgia"
    echo "24) Germany"
    echo "25) Greece"
    echo "26) Hong Kong"
    echo "27) Hungary"
    echo "28) Iceland"
    echo "29) India"
    echo "30) Indonesia"
    echo "31) Iran"
    echo "32) Israel"
    echo "33) Italy"
    echo "34) Japan"
    echo "35) Kazakhstan"
    echo "36) Kenya"
    echo "37) Latvia"
    echo "38) Lithuania"
    echo "39) Luxembourg"
    echo "40) Mauritius"
    echo "41) Mexico"
    echo "42) Moldova"
    echo "43) Morocco"
    echo "44) Nepal"
    echo "45) Netherlands"
    echo "46) New Caledonia"
    echo "47) New Zealand"
    echo "48) North Macedonia"
    echo "49) Norway"
    echo "50) Paraguay"
    echo "51) Poland"
    echo "52) Portugal"
    echo "53) Romania"
    echo "54) Russia"
    echo "55) Reunion"
    echo "56) Saudi Arabia"
    echo "57) Serbia"
    echo "58) Singapore"
    echo "59) Slovakia"
    echo "60) Slovenia"
    echo "61) South Africa"
    echo "62) South Korea"
    echo "63) Spain"
    echo "64) Sweden"
    echo "65) Switzerland"
    echo "66) Taiwan"
    echo "67) Thailand"
    echo "68) Turkiye"
    echo "69) Ukraine"
    echo "70) United Arab Emirates"
    echo "71) United Kingdom"
    echo "72) United States"
    echo "73) Uzbekistan"
    echo "74) Vietnam"
    read -p "Choose option: ENTER for other " MIRRORLIST

    case $MIRRORLIST in
        1)
            curl -s "https://archlinux.org/mirrorlist/?country=AL&country=GR&country=RS&country=IT&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        2)
            curl -s "https://archlinux.org/mirrorlist/?country=AM&country=TR&country=AZ&country=GE&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        3)
            curl -s "https://archlinux.org/mirrorlist/?country=AU&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        4)
            curl -s "https://archlinux.org/mirrorlist/?country=AT&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        5)
            curl -s "https://archlinux.org/mirrorlist/?country=AM&country=IR&country=AZ&country=GE&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        6)
            curl -s "https://archlinux.org/mirrorlist/?country=BD&country=IN&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        7)
            curl -s "https://archlinux.org/mirrorlist/?country=BY&country=RU&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        8)
            curl -s "https://archlinux.org/mirrorlist/?country=BE&country=FR&country=DE&country=LU&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        9)
            curl -s "https://archlinux.org/mirrorlist/?country=BR&country=CO&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        10)
            curl -s "https://archlinux.org/mirrorlist/?country=BG&country=GR&country=RO&country=RS&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        11)
            curl -s "https://archlinux.org/mirrorlist/?country=KH&country=TH&country=VN&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        12)
            curl -s "https://archlinux.org/mirrorlist/?country=CA&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        13)
            curl -s "https://archlinux.org/mirrorlist/?country=CL&country=BR&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        14)
            curl -s "https://archlinux.org/mirrorlist/?country=CN&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        15)
            curl -s "https://archlinux.org/mirrorlist/?country=CO&country=BR&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        16)
            curl -s "https://archlinux.org/mirrorlist/?country=CO&country=RS&country=AT&country=IT&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        17)
            curl -s "https://archlinux.org/mirrorlist/?country=CZ&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        18)
            curl -s "https://archlinux.org/mirrorlist/?country=DK&country=DE&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        19)
            curl -s "https://archlinux.org/mirrorlist/?country=EC&country=CO&country=BR&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        20)
            curl -s "https://archlinux.org/mirrorlist/?country=EE&country=LT&country=LV&country=FI&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        21)
            curl -s "https://archlinux.org/mirrorlist/?country=FI&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        22)
            curl -s "https://archlinux.org/mirrorlist/?country=FR&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        23)
            curl -s "https://archlinux.org/mirrorlist/?country=GE&country=TR&country=RU&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        24)
            curl -s "https://archlinux.org/mirrorlist/?country=DE&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        25)
            curl -s "https://archlinux.org/mirrorlist/?country=GR&country=TR&country=BG&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        26)
            curl -s "https://archlinux.org/mirrorlist/?country=HK&country=JP&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        27)
            curl -s "https://archlinux.org/mirrorlist/?country=HU&country=SK&country=UA&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        28)
            curl -s "https://archlinux.org/mirrorlist/?country=IS&country=GB&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        29)
            curl -s "https://archlinux.org/mirrorlist/?country=IN&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        30)
            curl -s "https://archlinux.org/mirrorlist/?country=ID&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        31)
            curl -s "https://archlinux.org/mirrorlist/?country=IR&country=TR&country=AZ&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        32)
            curl -s "https://archlinux.org/mirrorlist/?country=IL&country=TR&country=GR&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        33)
            curl -s "https://archlinux.org/mirrorlist/?country=IT&country=FR&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        34)
            curl -s "https://archlinux.org/mirrorlist/?country=JP&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        35)
            curl -s "https://archlinux.org/mirrorlist/?country=KZ&country=RU&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        36)
            curl -s "https://archlinux.org/mirrorlist/?country=KE&country=RE&country=ZA&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        37)
            curl -s "https://archlinux.org/mirrorlist/?country=LV&country=LT&country=PL&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        38)
            curl -s "https://archlinux.org/mirrorlist/?country=LV&country=LT&country=PL&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        39)
            curl -s "https://archlinux.org/mirrorlist/?country=BE&country=FR&country=DE&country=LU&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        40)
            curl -s "https://archlinux.org/mirrorlist/?country=MU&country=RE&country=ZA&country=IN&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        41)
            curl -s "https://archlinux.org/mirrorlist/?country=MX&country=US&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        42)
            curl -s "https://archlinux.org/mirrorlist/?country=MD&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        43)
            curl -s "https://archlinux.org/mirrorlist/?country=MA&country=PT&country=ES&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        44)
            curl -s "https://archlinux.org/mirrorlist/?country=NP&country=IN&country=CN&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        45)
            curl -s "https://archlinux.org/mirrorlist/?country=NL&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        46)
            curl -s "https://archlinux.org/mirrorlist/?country=NC&country=AU&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        47)
            curl -s "https://archlinux.org/mirrorlist/?country=NZ&country=AU&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        48)
            curl -s "https://archlinux.org/mirrorlist/?country=MK&country=GR&country=RS&country=BG&country=TR&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        49)
            curl -s "https://archlinux.org/mirrorlist/?country=NO&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        50)
            curl -s "https://archlinux.org/mirrorlist/?country=PY&country=CL&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        51)
            curl -s "https://archlinux.org/mirrorlist/?country=PL&country=DE&country=LT&country=LV&country=CZ&country=UA&country=SK&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        52)
            curl -s "https://archlinux.org/mirrorlist/?country=PT&country=ES&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        53)
            curl -s "https://archlinux.org/mirrorlist/?country=RO&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        54)
            curl -s "https://archlinux.org/mirrorlist/?country=RU&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        55)
            curl -s "https://archlinux.org/mirrorlist/?country=RE&country=AZ&country=SA&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        56)
            curl -s "https://archlinux.org/mirrorlist/?country=RE&country=AZ&country=SA&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        57)
            curl -s "https://archlinux.org/mirrorlist/?country=RS&country=BG&country=RO&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        58)
            curl -s "https://archlinux.org/mirrorlist/?country=SG&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        59)
            curl -s "https://archlinux.org/mirrorlist/?country=SK&country=CZ&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        60)
            curl -s "https://archlinux.org/mirrorlist/?country=SI&country=SK&country=CZ&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        61)
            curl -s "https://archlinux.org/mirrorlist/?country=ZA&country=RE&country=SA&country=KE&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        62)
            curl -s "https://archlinux.org/mirrorlist/?country=KR&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        63)
            curl -s "https://archlinux.org/mirrorlist/?country=PT&country=ES&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        64)
            curl -s "https://archlinux.org/mirrorlist/?country=SE&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        65)
            curl -s "https://archlinux.org/mirrorlist/?country=CH&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        66)
            curl -s "https://archlinux.org/mirrorlist/?country=TW&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        67)
            curl -s "https://archlinux.org/mirrorlist/?country=TH&country=SG&country=CN&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        68)
            curl -s "https://archlinux.org/mirrorlist/?country=TR&country=GR&country=BG&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        69)
            curl -s "https://archlinux.org/mirrorlist/?country=UA&country=LV&country=LT&country=PL&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        70)
            curl -s "https://archlinux.org/mirrorlist/?country=AE&country=SA&country=ZA&country=IN&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        71)
            curl -s "https://archlinux.org/mirrorlist/?country=GB&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        72)
            curl -s "https://archlinux.org/mirrorlist/?country=US&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        73)
            curl -s "https://archlinux.org/mirrorlist/?country=UZ&country=RU&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        74)
            curl -s "https://archlinux.org/mirrorlist/?country=VN&country=TH&country=HK&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
        *)
            curl -s "https://archlinux.org/mirrorlist/?country=all&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
            break
            ;;
    esac
done