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
function parttimeemployeeWage() {
wageperHour=8
fulldayHours=4
partdailyWage=$(( $wageperHour * $fulldayHours ))
echo "Total Part time employee wage is" $dailyWage
}

function wageforMonth() {
noofDays=20
if [ $noofDays -ge 20 ]
then 
	wageMonth=$(( $noofDays * $dailyWage ))
	echo "Wage for whole month is" $wageMonth
fi 
}
employeeAttandence
employeeDailyWage
parttimeemployeeWage
wageforMonth
