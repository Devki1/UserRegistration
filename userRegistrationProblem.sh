#!/bin/bash -x
echo "Welcome to user registration problem"
function validFirstName()
{
read -p "Enter the first name:" FirstName
#Pattern for first name
patternFirstName="^[A-Z][a-z]{2,}$"
if [[ $FirstName =~ $patternFirstName ]]
then
	echo Valid
else
	echo Invalid
fi
}
function validLastName()
{
read -p "Enter the last name:" LastName
#Pattern for last name
patternLastName="^[A-Z]{1}[a-z]{2,}$"
if [[ $LastName =~ $patternLastName ]]
then
	echo Valid
else
	echo Invalid
fi
}
function validEmailId()
{
read -p "Enter a valid email id:" EmailId
#Pattern for valid emailid 
patternForEmailId="^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,}$"
if [[ $EmailId =~ $patternForEmailId ]]
then
	echo Valid
else
	echo Invalid
fi
}
validFirstName
validLastName
validEmailId
