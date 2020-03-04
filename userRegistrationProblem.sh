#!/bin/bash -x
echo "Welcome to user registration problem"
read -p "Enter the first name:" FirstName
patternFirstName="^[A-Z][a-z]{2,}$"
if [[ $FirstName =~ $patternFirstName ]]
then
		echo Valid
else
		echo Invalid
fi
