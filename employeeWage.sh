echo "Welcome to Employee Wage Computation System"

function employeeAttandence() {
rand=$(($RANDOM%2))
if [ $rand -eq 0 ]
then 
	echo "Present"
elif [ $rand -eq 1 ]
then
	echo "Not Present"
fi
}

function employeeDailyWage() {
wageperHour=20
fulldayHours=8
dailyWage=$(( $wageperHour * $fulldayHours ))
echo " Total Full Day Wage is " $dailyWage
}

employeeAttandence
employeeDailyWage
