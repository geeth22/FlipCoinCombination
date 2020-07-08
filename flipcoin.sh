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

