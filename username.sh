#! /bin/bash
# zip.sh
echo "Enter a username: "
read USERNAME
while echo $USERNAME | egrep -v "^[a-z][a-z0-9_]{2,12}$" > /dev/null 2>&1
do
	echo "You must enter a valid username! Must contain 3-12 characters, begin with a letter, and only lowercase letters!"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"

