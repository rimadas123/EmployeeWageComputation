#!/bin/bash -x 

echo "Welcome to Employee Wage Computation"

#check employee is present or absent

#constant values
empRatePerHr=20
numberOfWorkingDays=20
maxHrsInMonth=100

#variables
totalSalary=0
totalEmpHr=0
totalWorkingDays=0

function getWorkingHours() {
	empCheck=$(( RANDOM%3 + 1 ))
	case $empCheck in
		1)
		empHrs=8
		;;
		2)
		empHrs=4
		;;
		3)
		empHrs=0
		;;
	esac
	echo $empHrs
}

while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $numberOfWorkingDays ]]
do
	(( totalWorkingDays++ ))
	workingHours="$( getWorkingHours )"
	totalWorkHrs=$(( $totalEmpHr + $workingHours ))
done
	echo $totalWorkHrs
	#calculate wages per month
	totalSalary=$(( $totalWorkHrs * $empRatePerHr ))

echo "Calculated wages of total hours or number of days is reached for a month :" $totalSalary
