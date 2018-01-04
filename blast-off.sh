#! /bin/bash

# regular text colors no bold
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
magenta=`tput setaf 5`
cyan=`tput setaf 6`
reset=`tput sgr0`

# bold text with colors
bred=`tput setaf 1 && tput bold`
bgreen=`tput setaf 2 && tput bold`
byellow=`tput setaf 3 && tput bold`
bblue=`tput setaf 4 && tput bold`
bmagenta=`tput setaf 5 && tput bold`
bcyan=`tput setaf 6 && tput bold`

clear

echo -e "${bblue}
  __________.____       _____    ____________________      ________  ______________________
  \______   \    |     /  _  \  /   _____/\__    ___/      \_____  \ \_   _____/\_   _____/
   |    |  _/    |    /  /_\  \ \_____  \   |    |  ______  /   |   \ |    __)   |    __)  
   |    |   \    |___/    |    \/        \  |    | /_____/ /    |    \|     \    |     \   
   |______  /_______ \____|__  /_______  /  |____|         \_______  /\___  /    \___  /   
          \/        \/       \/        \/                          \/     \/         \/ 
                                                                    written by specterwires

${bred}WARNING: Not Intended For Illegal Use. Misuse of this program is prohibited. Use At Your Own Risk.
${reset}"

echo "${bgreen}INITIATING${reset}"
count=0
total=34
pstr="[=======================================================================]"

while [ $count -lt $total ]; do
  sleep 0.02
  count=$(( $count + 1 ))
  pd=$(( $count * 73 / $total ))
  printf "${bblue}\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
done
echo "${bgreen}DONE!"
echo "                               "
echo "${bgreen}Ctrl + c To Quit ${bblue}BLAST-OFF ${bgreen}At Any Time${reset}"
echo "${bgreen}To Skip ${bblue}Current Scan ${bgreen}use (s) or any other key${reset}"
printf "${bred}Enter Target IP:${reset} "
read -r ip

# nmap scan

printf "${bblue}Would You Like To Execute A Light${bgreen}(l) ${bblue}OR Intense${bgreen}(i) ${bblue}Nmap TCP Scan? Skip${bgreen}(s)${bblue}? ${bgreen}(l/i/s):${reset} "
read -r nma
if [ $nma == 'l' ]
then
  echo "${bgreen}Okay NMAP, ${bred}BLAST OFF!!! ${bblue}${reset} "
  sleep 0.75
  echo "${bblue}Light Nmap Scan In Progress...${reset}"
  sleep 0.75
  nmap -sV -A $ip
  echo "                                          "
  echo "${bgreen}Light Nmap Scan Complete!${reset}"
  echo "                                          "
elif [ $nma == 'i' ]
then
  echo "${bgreen}Okay NMAP, ${bred}BLAST OFF!!! ${bblue}${reset} "
  sleep 0.75
  echo "${bblue}Intense Nmap Scan In Progress...${reset}"
  sleep 0.75
  nmap -Pn -sT -sV -O -vv $ip -p0-65535
  echo "                                          "
  echo "${bgreen}Intense Nmap Scan Complete!${reset}"
  echo "                                          "
else
  echo "${bred}...Nmap TCP Disengage...${reset}"
count=0
total=34
pstr="[=======================================================================]"

while [ $count -lt $total ]; do
  sleep 0.02
  count=$(( $count + 1 ))
  pd=$(( $count * 73 / $total ))
  printf "${bred}\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
done
#sleep 0.25
echo "${bgreen}DONE!"
#sleep 0.25
echo "${bgreen}DISENGAGEMENT COMPLETED SUCCESSFULLY"
echo "                                             "
fi
#sleep 0.25
echo "${bblue}Would You Like To Execute A TOP-20-PORT${bgreen}(t) ${bblue}OR FULL${bgreen}(f) ${bblue}Nmap UDP Scan? Skip${bgreen}(s)${bblue}?" 
printf "${bred}!!!WARNING: UDP SCANS MAY TAKE A LONG TIME!!!${reset} ${bgreen}(t/f/s):${reset} "
read -r nmp
if [ $nmp == 't' ]
then
  echo "${bgreen}Okay NMAP, ${bred}BLAST OFF!!! ${bblue}${reset} "
  sleep 0.75
  echo "${bblue}TOP-20 UDP Nmap Scan In Progress...${reset}"
  sleep 0.75
  nmap -sU -sV -A --top-ports 20 $ip
  echo "                                                     "
  echo "${bgreen}TOP-20-PORTS Nmap UDP Scan Complete!${reset}"
  echo "                                                     "
elif [ $nmp == 'f' ]
then
  echo "${bgreen}Okay NMAP, ${bred}BLAST OFF!!! ${bblue}${reset} "
  sleep 0.75
  echo "${bblue}FULL UDP Nmap Scan In Progress...${reset}"
  sleep 0.75
  nmap -Pn -sU -sV -O -vv $ip -p0-65535
  echo "                                          "
  echo "${bgreen}FULL UDP Nmap Scan Complete!${reset}"
  echo "                                          "
else
  echo "${bred}...Nmap UDP Disengage...${reset}"
count=0
total=34
pstr="[=======================================================================]"

while [ $count -lt $total ]; do
  sleep 0.02
  count=$(( $count + 1 ))
  pd=$(( $count * 73 / $total ))
  printf "${bred}\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
done
echo "${bgreen}DONE!"
echo "${bgreen}DISENGAGEMENT COMPLETED SUCCESSFULLY"
echo "                                             "
fi


# nikto scan

printf "${bblue}Would You Like To Execute A Nikto Scan? Skip${bgreen}(s)${bblue}? ${bgreen}(y/n/s):${reset} "
read -r nik
if [ $nik == 'y' ]
then
  printf "${bblue}Enter Port Number:${reset} "
  read -r port  
echo "${bgreen}Okay NIKTO, ${bred}BLAST OFF!!! ${bblue}${reset} "
  sleep 0.75
  echo "${bblue}Nikto Scan In Progress...${reset}"
  echo "                                         "
  nikto -C all -host http://$ip:$port
  echo "                                         "
  echo "${bgreen}Nikto Scan Complete!${reset}"
  echo "                                          "
else
  echo "${bred}...Nikto Disengage...${reset}"
  echo "                                      "
count=0
total=34
pstr="[=======================================================================]"

while [ $count -lt $total ]; do
  sleep 0.02
  count=$(( $count + 1 ))
  pd=$(( $count * 73 / $total ))
  printf "${bred}\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
done
echo "${bgreen}DONE!"
echo "${bgreen}DISENGAGEMENT COMPLETED SUCCESSFULLY"
echo "                                             "
fi

# Dirb scan

printf "${bblue}Would You Like To A Execute Dirb Scan? Skip${bgreen}(s)${bblue}? ${bgreen}(y/n/s):${reset} "
read -r dir
if [ $dir == 'y' ]
then  
  printf "${bblue}Enter Port Number:${reset} "
  read -r por
  echo "${bgreen}Okay DIRB, ${bred}BLAST OFF!!! ${bblue}${reset} "
  sleep 0.75
  echo "${bblue}Dirb Scan In Progress...${reset}"
  dirb http://$ip:$por
  echo "                                          "
  echo "${bgreen}Dirb Scan Complete!${reset}"
  echo "                                          "
else
  echo "${bred}...Dirb Disengage...${reset}"
count=0
total=34
pstr="[=======================================================================]"

while [ $count -lt $total ]; do
  sleep 0.02
  count=$(( $count + 1 ))
  pd=$(( $count * 73 / $total ))
  printf "${bred}\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
done
echo "${bgreen}DONE!"
echo "${bgreen}DISENGAGEMENT COMPLETED SUCCESSFULLY"
echo "                                             "
fi
echo "                                             "
echo "${bred}.....Blast Off Sequence Terminating.....${reset}"
echo "                                                       "
count=0
total=34
pstr="[=======================================================================]"

while [ $count -lt $total ]; do
  sleep 0.02 
  count=$(( $count + 1 ))
  pd=$(( $count * 73 / $total ))
  printf "${bblue}\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
done
echo "${bgreen}DONE!"
echo "${bgreen}TERMINATED"
echo "                   "
