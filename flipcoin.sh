#!/bin/bash -x
echo "FLIP COIN COMBINATION"

#usecase 1

flip=$(( $RANDOM % 2 +1 ))
echo $flip    
if [ $flip -eq 1 ]
then
echo "HEADS"
else
echo "TAILS"
fi

#usecase2

headcount=0
tailcount=0

echo "Enter the time you want to flip a coin"
read n
declare -A FLIPCOIN
declare -a PRINTCOIN
for ((i=0;i<n;i++))
do
FLIPCOIN[$i]=$(($RANDOM%2 + 1))
if [ ${FLIPCOIN[$i]} -eq 1 ]
then
PRINTCOIN[$i]="H"
elif [ ${FLIPCOIN[$i]} -eq 2 ]
then
PRINTCOIN[$i]="T"
fi 
done 


echo  ${FLIPCOIN[*]}
echo  ${PRINTCOIN[*]}


for((i=0;i<n;i++))
do
for((j=0;j<n;j++))
do
if [ ${FLIPCOIN[$i]} -lt ${FLIPCOIN[$j]} ]
then
temp=${FLIPCOIN[$i]}
FLIPCOIN[$i]=${FLIPCOIN[$j]}
FLIPCOIN[$j]=$temp
fi
done
done

for((i=0;i<n;i++))
do
for((j=0;j<n;j++))
do
if [[ "${PRINTCOIN[$i]}" < "${PRINTCOIN[$j]}" ]]
then
temp=${PRINTCOIN[$i]}
PRINTCOIN[$i]=${PRINTCOIN[$j]}
PRINTCOIN[$j]=$temp
fi
done
done

echo  ${FLIPCOIN[*]}
echo  ${PRINTCOIN[*]}


for ((i=0;i<n;i++))
do
if [ ${FLIPCOIN[$i]} -eq 1 ]
then
headcount=$(($headcount+1))
fi
done  

for ((i=0;i<n;i++))
do
if [ ${FLIPCOIN[$i]} -eq 2 ]
then
tailcount=$(($tailcount+1))
fi
done 
echo "Head is : "$headcount
echo "Tails is : "$tailcount
percentheads=$(($headcount*100 / n));
percenttails=$(($tailcount*100 / n));
echo "Head Percentage is  : $percentheads % "
echo "Tails Percentage is : $percenttails % "
