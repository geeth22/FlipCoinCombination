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

#usecase 3

echo "Enter the time you want to flip a coin : "
read  n
Doubleheadcount=0
DoubleTailcount=0
singleheadtailcount=0
singletailheadcount=0

count=0
for ((i=0;i<n;i++))
do
FLIPCOIN[$i]=$(($RANDOM%4 + 1))
if [ ${FLIPCOIN[$i]} -eq 1 ]
then
PRINTCOIN[$i]="HH"
elif [ ${FLIPCOIN[$i]} -eq 2 ]
then
PRINTCOIN[$i]="TT"
elif [ ${FLIPCOIN[$i]} -eq 3 ]
then
PRINTCOIN[$i]="HT" 
elif [ ${FLIPCOIN[$i]} -eq 4 ]
then
PRINTCOIN[$i]="TH"
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
Doubleheadcount=$(($Doubleheadcount+1))
fi
done  

for ((i=0;i<n;i++))
do
if [ ${FLIPCOIN[$i]} -eq 2 ]
then
DoubleTailcount=$(($DoubleTailcount+1))
fi
done 

for ((i=0;i<n;i++))
do
if [ ${FLIPCOIN[$i]} -eq 3 ]
then
singleheadtailcount=$(($singleheadtailcount+1))
fi
done

for ((i=0;i<n;i++))
do
if [ ${FLIPCOIN[$i]} -eq 3 ]
then
singletailheadcount=$(($singletailheadcount+1))
fi
done



echo "Doubleheadcount is : "$Doubleheadcount
echo "DoubleTailcount is : "$DoubleTailcount
echo "singleheadtailcount is : "$singleheadtailcount
echo "singletailheadcount is : "$singletailheadcount



percentDoubleheadcount=$(($Doubleheadcount*100 / n));
percentDoubleTailcount=$(($DoubleTailcount*100 / n));
percentsingleheadtailcount=$(($singleheadtailcount*100 / n));
percentsingletailheadcount=$(($singletailheadcount*100 / n));

echo "percentDoubleheadcount is : $percentDoubleheadcount % "
echo "percentDoubleTailcount is : $percentDoubleTailcount % "
echo "percentsingleheadtailcount is : $percentsingleheadtailcount % "
echo "percentsingletailheadcount is : $percentsingletailheadcount % "

#usecase 4

echo "Enter the time you want to flip a coin : " 
read n
HHH=0
HHT=0
HTH=0
HTT=0
THH=0
THT=0
TTH=0
TTT=0

count=0
for ((i=0;i<n;i++))
do
FLIPCOIN[$i]=$(($RANDOM%8 + 1))
if [ ${FLIPCOIN[$i]} -eq 1 ]
then
PRINTCOIN[$i]="HHH"
elif [ ${FLIPCOIN[$i]} -eq 2 ]
then
PRINTCOIN[$i]="HHT"
elif [ ${FLIPCOIN[$i]} -eq 3 ]
then
PRINTCOIN[$i]="HTH" 
elif [ ${FLIPCOIN[$i]} -eq 4 ]
then
PRINTCOIN[$i]="HTT"
elif [ ${FLIPCOIN[$i]} -eq 5 ]
then
PRINTCOIN[$i]="THH"
elif [ ${FLIPCOIN[$i]} -eq 6 ]
then
PRINTCOIN[$i]="THT"
elif [ ${FLIPCOIN[$i]} -eq 7 ]
then
PRINTCOIN[$i]="TTH" 
elif [ ${FLIPCOIN[$i]} -eq 8 ]
then
PRINTCOIN[$i]="TTT"
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
HHH=$(($HHH+1))
fi
done  
for ((i=0;i<n;i++))
do
if [ ${FLIPCOIN[$i]} -eq 2 ]
then
HHT=$(($HHT+1))
fi
done 
for ((i=0;i<n;i++))
do
if [ ${FLIPCOIN[$i]} -eq 3 ]
then
HTH=$(($HTH+1))
fi
done
for ((i=0;i<n;i++))
do
if [ ${FLIPCOIN[$i]} -eq 3 ]
then
HTT=$(($HTT+1))
fi
done
for ((i=0;i<n;i++))
do
if [ ${FLIPCOIN[$i]} -eq 1 ]
then
THH=$(($THH+1))
fi
done  
for ((i=0;i<n;i++))
do
if [ ${FLIPCOIN[$i]} -eq 2 ]
then
THT=$(($THT+1))
fi
done 
for ((i=0;i<n;i++))
do
if [ ${FLIPCOIN[$i]} -eq 3 ]
then
TTH=$(($TTH+1))
fi
done
for ((i=0;i<n;i++))
do
if [ ${FLIPCOIN[$i]} -eq 3 ]
then
TTT=$(($TTT+1))
fi
done
echo "HHH COUNT IS : "$HHH
echo "HHT COUNT IS : "$HHT
echo "HTH COUNT IS : "$HTH
echo "HTT COUNT IS : "$HTT
echo "THH COUNT IS : "$THH
echo "THT COUNT IS : "$THT
echo "TTH COUNT IS : "$TTH
echo "TTT COUNT IS : "$TTT

percentHHH=$(($HHH*100 / n));
percentHHT=$(($HHT*100 / n));
percentHTH=$(($HTH*100 / n));
percentHTT=$(($HTT*100 / n));
percentTHH=$(($THH*100 / n));
percentTHT=$(($THT*100 / n));
percentTTH=$(($TTH*100 / n));
percentTTT=$(($TTT*100 / n));

echo "percent HHH IS : $percentHHH % "
echo "percent HHT IS : $percentHHT % "
echo "percent HTH IS : $percentHTH % "
echo "percent HTT IS : $percentHTT % "
echo "percent THH IS : $percentTHH % "
echo "percent THT IS : $percentTHT % "
echo "percent TTH IS : $percentTTH % "
echo "percent TTT IS : $percentTTT % "

