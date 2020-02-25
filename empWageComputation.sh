#!/bin/bash -x

echo "Welcome to Employee Wage Computation"

#check employee is present or absent

#constant values
empRatePerHr=20
empHrs=8

#it will give 0 or 1 by using random
attendance_check=$(( RANDOM%2 ))

#check the condition if it gives 1 then true
if [[ $attendance_check -eq 1 ]]
then
	echo employee is present
	salary=$(( $empRatePerHr * $empHrs ))
else
	echo employee is absent
	salary=0
fi

echo "salary of an employee:" $salary
