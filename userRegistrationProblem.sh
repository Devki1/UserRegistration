#!/bin/bash -x
COUNTRY_CODE=91
echo "Welcome to user registration problem"
function validFirstName()
{
	read -p "Enter the first name:" firstName
	#Pattern for first name
	patternFirstName="^[A-Z][a-z]{2,}$"
	if [[ $firstName =~ $patternFirstName ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}
validFirstName
function validLastName()
{
	read -p "Enter the last name:" lastName
	#Pattern for last name
	patternLastName="^[A-Z]{1}[a-z]{2,}$"
	if [[ $lastName =~ $patternLastName ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}
validLastName
function validEmailId()
{
	read -p "Enter a email id:" emailId
	#Pattern for valid emailid 
	patternForEmailId="^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,}$"
	if [[ $emailId =~ $patternForEmailId ]]
	then
		echo Valid
	else
		echo Invalid
fi
}
validEmailId
function validMobileNumber()
{
	read -p "Enter a  mobile number:" mobileNumber
	#Pattern for valid mobile number
	patternForMobileNumber="^$COUNTRY_CODE[ ][9876]{1}[0-9]{9}$"
	if [[ $mobileNumber =~ $patternForMobileNumber ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}
validMobileNumber
#Validate length password
function validPassword()
{
	read -p "Enter a password data:" password
	#Pattern for valid password
	patternPassword="^.{8,}$"
	if [[ $password =~ $patternPassword ]]
	then
	 	isUpperCase
	else
		echo Invalid
	fi
}
#This function is used atleast one uppercase in a password
function isUpperCase()
{
	oneUppercase="[A-Z]{1,}"
	if [[ $password =~ $oneUpperCase ]]
	then
		isNumber
	else
		echo Invalid
	fi
}

function isNumber()
{
	atleastOneNumber="[0-9]{1,}"
	if [[ $password =~ $atleastOneNumber ]]
	then
		 isSpecialCharacter
	else
		echo Invalid
	fi
}
function isSpecialCharacter()
{	
	SPECIAL='!@#$%^&*(),.?":{}|<>'
	passwordSpecialChar="^[^$SPECIAL]*[$SPECIAL][^$SPECIAL]*$"
	if [[ $password =~ $passwordSpecialChar ]]
	then
		echo Valid
	else
		echo Invalid
fi
}
validPassword
