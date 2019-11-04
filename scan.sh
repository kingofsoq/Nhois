#!/bin/bash 
# ================//===============
# Wednesday, 22 May 2019 @10:00 PM
# Tuesday, 5 November 2019 @1:35 AM
# ================//===============
# simple script for running nmap & whois
# =================================
# ps: still mess, need modification 
# you free to modified, just dont remove my name

while getopts i: option 
do 
 case "${option}" 
  in 
 i) IP=${OPTARG};; 
  esac
printf "**************************************************************\n"
echo "STARTING NMAP WITH IP: "$IP
printf "**************************************************************\n"
bash -c "nmap -F -T4 $IP"

printf "\n\n\n\n\n\n**************************************************************\n"
echo "STARTING WHOIS WITH IP: "$IP
printf "**************************************************************\n"
bash -c "whois $IP"
printf "\n\n\n**********************************************\n"

printf "** SCRIPT MADE BY @kingofsoq with LOVE\n"
echo "**(G) http://github.com/kingofsoq"
echo "**(I) http://instagram.com/kingofsoq"
echo "**(T) http://twitter.com/kingofsoq"
printf "**********************************************\n\n"
done
