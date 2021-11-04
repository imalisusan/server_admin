#! /bin/bash

#Comparison

# -eq values are equal
# -ne values are not equal
# -gt values are greater than
# -ge values are greater than or equal to 
# -lt values are less than
# -le values are less than or equal to


num1 = 3
num2 = 5

if [ "$num1" -gt "$num2" ]
then 
    echo "$num1 is greater than $num2"
else
    echo "$num2 is greater than $num1"
fi