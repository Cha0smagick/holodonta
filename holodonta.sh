#!/bin/bash
switch='y'
while [ $switch == 'y' ] || [ $switch == 'Y' ];
do
#limpia la pantalla
clear
echo -e "Holodonta V 1.0"
echo -e "Para el blog sectemple.blogspot.com";
echo -e "By: Cha0smagick"
echo -e "Twitch: https://www.twitch.tv/cha0smagick"
echo -e "Github: https://github.com/Cha0smagick"
echo -e ""
echo -e ""
echo -e "------------------------------------------------------"
echo -e "Escoja una opción para autoinstalar: "
echo -e "------------------------------------------------------"
echo -e ""
echo -e ""
echo -e "1. Python 2.7";
echo -e "2. Python 3.1";
echo -e "3. complementos Python 2.7"
echo -e "4. Complementos python 3.1"
echo -e "5. Update de repositorios y del sistema (Warning, puede haber crashes)"
echo -e "6. Salir"
echo -e ""
echo -e ""
read -p "Seleccione una opción :" numero;
case $numero in

1)
	sudo apt-get install python2.7 
	sudo apt install python-pip 
		;;
2)
	sudo apt-get install python3.1 
	sudo apt install python3-pip 
		;;
3)
	sudo apt-get -y update
	sudo apt-get install -y python-pip python-dev build-essential
	sudo pip install numpy
	sudo pip install scipy
	sudo pip install matplotlib
	sudo pip install jupyter
	sudo pip install pandas
	sudo pip install seaborn
	sudo pip install scikit-learn
	sudo pip install beautifulsoup4
	sudo pip install pymongo
		;;
4)
	sudo apt-get -y update
	sudo apt-get install -y python3-pip python-dev build-essential
	sudo pip3 install numpy
	sudo pip3 install scipy
	sudo pip3 install matplotlib
	sudo pip3 install jupyter
	sudo pip3 install pandas
	
	sudo pip3 install seaborn
	sudo pip3 install scikit-learn
	sudo pip3 install beautifulsoup4
	sudo pip3 install pymongo
	sudo apt-get install python3-pygame
		;;
5)
apt-get clean && apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y 
		;;
6) 
	exit 0
		;;
*) 
	echo "No existe la opción. Por favor, escoja una opcion valida"
	exit 0
		;;
esac
	echo -n "Volver al menu principal :";
	read switch;
	done
