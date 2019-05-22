#!/bin/bash 
# ================//===============
# Wednesday, 22 May 2019 @10:00 PM
# ================//===============
# script sederhana untuk 2 command sekaligus.
# cocok untuk ngumpulin informasi ala-ala hekel inspect element.
# hahaha, bercana kok! semoga bermanfaat.
# =================================
# ps: ini berantakan bgt.. sangat boleh kok diubek-ubek 
# asalkan namaku masih ada disini :)

while getopts i: option 
do 
 case "${option}" 
 in 
 i) IP=${OPTARG};; 
 esac

printf "**************************************************************\n"
echo "MEMULAI SCAN NMAP DI IP: "$IP
printf "**************************************************************\n"
bash -c "nmap -F -T4 $IP"


printf "\n\n\n\n\n\n**************************************************************\n"
echo "MEMULAI MENJALANKAN WHOIS DI IP: "$IP
printf "**************************************************************\n"
bash -c "whois $IP"
printf "\n\n\n**********************************************\n"


printf "** SCRIPT MADE BY @kingofsoq\n"
echo "**(G) http://github.com/kingofsoq"
echo "**(I) http://instagram.com/kingofsoq"
echo "**(T) http://twitter.com/kingofsoq"
printf "**********************************************\n\n"
done