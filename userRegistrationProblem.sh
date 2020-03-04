#!/bin/bash -x
echo "Welcome to user registration problem"
read -p "Enter the first name:" FirstName
#Pattern for first name
patternFirstName="^[A-Z][a-z]{2,}$"
if [[ $FirstName =~ $patternFirstName ]]
then
	echo Valid
else
	echo Invalid
fi
read -p "Enter the last name:" LastName
#Pattern for last name
patternLastName="^[A-Z]{1}[a-z]{2,}$"
if [[ $LastName =~ $patternLastName ]]
then
	echo Valid
else
	echo Invalid
fi
