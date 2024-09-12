#!/bin/bash

echo "[+] Installing Kali Essentials"

sudo apt update
sudo apt-get install seclists powershell dirsearch gobuster snmp-mibs-downloader netexec ghidra 

download-mibs

mkdir /opt/essentials
mkdir /opt/essentials/wordlists
mkdir /opt/essentials/shells
mkdir /opt/essentials/linuxPE
mkdir /opt/essentials/windowsPE

cd /opt/essentials;
git clone https://github.com/swisskyrepo/PayloadsAllTheThings;

cd /opt/essentials/wordlists
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt;
mv /usr/share/seclists/ .

cd /opt/essentials/shells;
git clone https://github.com/pentestmonkey/php-reverse-shell

wget https://raw.githubusercontent.com/ivan-sincek/php-reverse-shell/master/src/reverse/php_reverse_shell.php -O PHPuniversal.php

cd /opt/essentials/linuxPE

wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.1/pspy64s;

wget https://raw.githubusercontent.com/mzet-/linux-exploit-suggester/master/linux-exploit-suggester.sh -O les.sh

wget https://github.com/peass-ng/PEASS-ng/releases/download/20240804-31b931f7/linpeas.sh

cd /opt/essentials/windowsPE

wget https://github.com/peass-ng/PEASS-ng/releases/download/20240804-31b931f7/winPEASany.exe

wget https://github.com/peass-ng/PEASS-ng/releases/download/20240804-31b931f7/winPEAS.bat

wget https://github.com/peass-ng/PEASS-ng/releases/download/20240804-31b931f7/winPEASx64.exe

git clone https://github.com/ParrotSec/mimikatz

echo "[+] You can find all tools inside /opt/essentials directory"
echo "[+] DONT FORGET to edit the /etc/snmp/snmp.conf configuration file to deactivate the line that starts with the word mibs."
