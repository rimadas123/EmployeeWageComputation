#!/bin/bash -x 

echo "Welcome to Employee Wage Computation"

#check employee is present or absent

#constant values
empRatePerHr=20
empFullTimeHrs=8
empPartTimeHrs=4
numberOfWorkingDays=20
totalSalary=0

#it will give 0 or 1 by using random
attendance_check=$(( RANDOM%2 ))

#check the condition if it gives 1 then true
if [[ $attendance_check -eq 1 ]]
then
	echo employee is present
	salary=$(( $empRatePerHr * $empFullTimeHrs ))
	halfSalary=$(( $empRatePerHr * $empPartTimeHrs ))
else
	echo employee is absent
	salary=0
	halfSalary=0
fi

#employee wage using case statement
#calculating wages for a month

for (( i=1; i<=numberOfWorkingDays; i++ ))
do
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

	#calculate employee wage
	employeeWage=$(( $empHrs * $empRatePerHr ))

	#calculate wages per month
	totalSalary=$(( $totalSalary + $employeeWage ))

done

echo "salary of an employee:" $salary
echo "part time salary of an employee:" $halfSalary
echo "Employee Wage:" $employeeWage
echo "Salary per month:" $totalSalary
