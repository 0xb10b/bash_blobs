#!/bin/bash

txtoc="\e[0m"; # oc
txtgrn=$(tput setaf 2); # green
txtblu=$(tput setaf 4) # blue

echo -e "${txtgrn}[!]${txtoc} Begin placing scripts...\n";

echo -e "${txtblu}[+]${txtoc} Copying anon.conf in /etc";
cp anon_template.conf /etc/anon.conf;

echo -e "${txtblu}[+]${txtoc} Copying anonymise, deanonymise in /usr/bin";
cp anonymise deanonymise /usr/bin/;
chmod +x /usr/bin/anonymise /usr/bin/deanonymise;

echo -e "${txtblu}[+]${txtoc} Copying change_hosts.py in /usr/local/bin";
cp change_hosts.py /usr/local/bin;
chmod +x /usr/local/bin/change_hosts.py

echo -e "\n${txtgrn}[!]${txtoc} Scripts placed!";
