echo "Welcome to Employee Wage Computation Program"

isPartTime=1;
isFulltime=2;
totalSalary=0;
empRatePerHr=20;
numWorkingDays=20;

for(( day=1; day<=numWorkingDays; day++ ))

do
randomCheck=$((RANDOM%3));

case $randomCheck in $isFullTime)
empHrs=8;;
$isPartTime)
empHrs=4;;
*)
empHrs=0;;
esac
salary=$(($empHrs*$empRatePerHr))
totalSalary=$(($totalSalary+$salary))

done

echo "employee has earned $totalSalary$ in a month";


