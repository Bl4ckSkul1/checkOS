#!/bin/bash
#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

function banner (){

echo -e "${greenColour} ██████ ██   ██ ███████  ██████ ██   ██  ██████  ███████ ${endColour}"
echo -e "${greenColour}██      ██   ██ ██      ██      ██  ██  ██    ██ ██      ${endColour}"
echo -e "${greenColour}██      ███████ █████   ██      █████   ██    ██ ███████ ${endColour}"
echo -e "${greenColour}██      ██   ██ ██      ██      ██  ██  ██    ██      ██ ${endColour}"
echo -e "${greenColour} ██████ ██   ██ ███████  ██████ ██   ██  ██████  ███████ ${endColour}"
echo -e "${greenColour}                                                         ${endColour}"
echo -e "${purpleColour}                          by	Bl4ckSkull               ${endColour}"

}

if [ $1 == ""]
then
banner
 echo -e "${redColour}[X]${endColour} Se necesita una ip"
 echo -e "${greenColour}[i]${endColour} Ingresa  una ip"
echo -e "${greenColour}[i]${endColour} Formato: checkos.sh IP"

else 
	banner
	OS=$(ping -c 1 $1 |grep ttl | cut -d " " -f6 | tr '=' ' '|cut -d " " -f2)


if [[ $(($OS)) == 64||$(($OS)) == 63 ]]
then
    echo -e "${greenColour}[*]${endColour}[["$1"]]"
	echo -ne "${yellowColour}[i]${endColour}${grayColour} Linux${endColour}"
elif [[ $(($OS)) == 128||$(($OS)) == 127 ]]
then
 echo -e "${greenColour}[*]${endColour}[["$1"]]"
	echo -ne "${yellowColour}[i]${endColour}${grayColour} Windows ${endColour}"
elif [[ $(($OS)) == 254||$(($OS)) == 253 ]]
then
 echo -e "${greenColour}[*]${endColour}[["$1"]]"
        echo -ne "${yellowColour}[i]${endColour}${grayColour} Solaris  ${endColour}"
else 
	echo -ne  "${redColour}[X]${endColour}${greenColour} !!! No Esta Activa !!!${endColour}"
fi

fi
