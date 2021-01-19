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
function wageCondition() {
noofHours=100
moofDays=20
if [ $noofHours -eq 100 ]
then 
	wageMonth=$(wageforMonth)
	echo "After Evaluating working days or Hours total wage" $wageMonth
elif [ $noofDays -eq 20 ]
then
	 wageMonth=$(wageforMonth)
	 echo "After Evaluating working days or Hours total wage" $wageMonth

fi
}

employeeAttandence
employeeDailyWage
parttimeemployeeWage
wageforMonth
wageCondition
s
