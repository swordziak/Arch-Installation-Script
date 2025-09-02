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
            country_list="AL&country=GR&country=RS&country=IT"
            break
            ;;
        2)
            country_list="AM&country=TR&country=AZ&country=GE"
            break
            ;;
        3)
            country_list="AU"
            break
            ;;
        4)
            country_list="AT"
            break
            ;;
        5)
            country_list="AM&country=IR&country=AZ&country=GE"
            break
            ;;
        6)
            country_list="BD&country=IN"
            break
            ;;
        7)
            country_list="BY&country=RU"
            break
            ;;
        8)
            country_list="BE&country=FR&country=DE&country=LU"
            break
            ;;
        9)
            country_list="BR&country=CO"
            break
            ;;
        10)
            country_list="BG&country=GR&country=RO&country=RS"
            break
            ;;
        11)
            country_list="KH&country=TH&country=VN"
            break
            ;;
        12)
            country_list="CA"
            break
            ;;
        13)
            country_list="CL&country=BR"
            break
            ;;
        14)
            country_list="CN"
            break
            ;;
        15)
            country_list="CO&country=BR"
            break
            ;;
        16)
            country_list="CO&country=RS&country=AT&country=IT"
            break
            ;;
        17)
            country_list="CZ"
            break
            ;;
        18)
            country_list="DK&country=DE"
            break
            ;;
        19)
            country_list="EC&country=CO&country=BR"
            break
            ;;
        20)
            country_list="EE&country=LT&country=LV&country=FI"
            break
            ;;
        21)
            country_list="FI"
            break
            ;;
        22)
            country_list="FR"
            break
            ;;
        23)
            country_list="GE&country=TR&country=RU"
            break
            ;;
        24)
            country_list="DE"
            break
            ;;
        25)
            country_list="GR&country=TR&country=BG"
            break
            ;;
        26)
            country_list="HK&country=JP"
            break
            ;;
        27)
            country_list="HU&country=SK&country=UA"
            break
            ;;
        28)
            country_list="IS&country=GB"
            break
            ;;
        29)
            country_list="IN"
            break
            ;;
        30)
            country_list="ID"
            break
            ;;
        31)
            country_list="IR&country=TR&country=AZ"
            break
            ;;
        32)
            country_list="IL&country=TR&country=GR"
            break
            ;;
        33)
            country_list="IT&country=FR"
            break
            ;;
        34)
            country_list="JP"
            break
            ;;
        35)
            country_list="KZ&country=RU"
            break
            ;;
        36)
            country_list="KE&country=RE&country=ZA"
            break
            ;;
        37)
            country_list="LV&country=LT&country=PL"
            break
            ;;
        38)
            country_list="LV&country=LT&country=PL"
            break
            ;;
        39)
            country_list="BE&country=FR&country=DE&country=LU"
            break
            ;;
        40)
            country_list="MU&country=RE&country=ZA&country=IN"
            break
            ;;
        41)
            country_list="MX&country=US"
            break
            ;;
        42)
            country_list="MD"
            break
            ;;
        43)
            country_list="MA&country=PT&country=ES"
            break
            ;;
        44)
            country_list="NP&country=IN&country=CN"
            break
            ;;
        45)
            country_list="NL"
            break
            ;;
        46)
            country_list="NC&country=AU"
            break
            ;;
        47)
            country_list="NZ&country=AU"
            break
            ;;
        48)
            country_list="MK&country=GR&country=RS&country=BG&country=TR"
            break
            ;;
        49)
            country_list="NO"
            break
            ;;
        50)
            country_list="PY&country=CL"
            break
            ;;
        51)
            country_list="PL&country=DE&country=LT&country=LV&country=CZ&country=UA&country=SK"
            break
            ;;
        52)
            country_list="PT&country=ES"
            break
            ;;
        53)
            country_list="RO"
            break
            ;;
        54)
            country_list="RU"
            break
            ;;
        55)
            country_list="RE&country=AZ&country=SA"
            break
            ;;
        56)
            country_list="RE&country=AZ&country=SA"
            break
            ;;
        57)
            country_list="RS&country=BG&country=RO"
            break
            ;;
        58)
            country_list="SG"
            break
            ;;
        59)
            country_list="SK&country=CZ"
            break
            ;;
        60)
            country_list="SI&country=SK&country=CZ"
            break
            ;;
        61)
            country_list="ZA&country=RE&country=SA&country=KE"
            break
            ;;
        62)
            country_list="KR"
            break
            ;;
        63)
            country_list="PT&country=ES"
            break
            ;;
        64)
            country_list="SE"
            break
            ;;
        65)
            country_list="CH"
            break
            ;;
        66)
            country_list="TW"
            break
            ;;
        67)
            country_list="TH&country=SG&country=CN"
            break
            ;;
        68)
            country_list="TR&country=GR&country=BG"
            break
            ;;
        69)
            country_list="UA&country=LV&country=LT&country=PL"
            break
            ;;
        70)
            country_list="AE&country=SA&country=ZA&country=IN"
            break
            ;;
        71)
            country_list="GB"
            break
            ;;
        72)
            country_list="US"
            break
            ;;
        73)
            country_list="UZ&country=RU"
            break
            ;;
        74)
            country_list="VN&country=TH&country=HK"
            break
            ;;
        *)
            country_list="all"
            break
            ;;
    esac
    if [[ -n "$country_list" ]]; then
        arch-chroot /mnt bash -c "curl -s \"https://archlinux.org/mirrorlist/?country=$country_list&protocol=https&use_mirror_status=on\" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist"
        break
    fi
done