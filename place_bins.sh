#!/bin/bash

txtoc="\e[0m"; # oc
txtgrn=$(tput setaf 2); # green
txtblu=$(tput setaf 4) # blue

echo -e "${txtgrn}[!]${txtoc} Begin placing scripts...\n";


echo -e "${txtblu}[+]${txtoc} Placing anonymise, deanonymise in /usr/bin";
cp anonymise deanonymise /usr/bin/;
chmod +x /usr/bin/anonymise /usr/bin/deanonymise;

echo -e "\n${txtgrn}[!]${txtoc} Scripts placed!";
