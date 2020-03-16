#!/bin/bash -x
function getTemperatureInFahrenheit()
{
	read -p "enter temperature: " temprature
	Fahrenheit=$(($temprature*(9/5)+32))
	echo $Fahrenheit
}

getTemperatureInCelsious()
{
	read -p "enter temperature:" temperature
	celsious=$(( ( $temperature -32 ) * ( 5 / 9 ) ))
	echo $celsious
}
read -p "temperature convert celsious to fahrenheit press 1,temperature convert fahrenheit to celsious press 2" choice
case $choice in
	1)
		$( getTemperatureInFahrenheit )
		;;
	2)
		$( getTemperatureInCelsious )
      ;;
esac

