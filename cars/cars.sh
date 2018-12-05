#! /bin/bash
# cars.sh
# Ian Rasmussen

CONT = 1

while [ $CONT -eq 1 ]
do
	echo "Enter car(CAR) "
	echo "Show list of cars(LIST)"
	echo "Quit(QUIT)"
	read pick
	case "$pick" in
		"CAR")
			echo "What is the year of the car? "
			read CARYEAR
			echo "Who makes the car? "
			read CARMAKE
			echo "What is the model of the car? "
			read CARMODEL

			echo "$CARYEAR:$CARMAKE:$CARMODEL" >> My_old_cars.txt;;
		"LIST")
			sort My_old_cars.txt;;
		"QUIT")
			echo "Goodbye!"
			CONT = 0;;
	esac
done
