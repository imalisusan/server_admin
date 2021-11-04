#! /bin/bash

read -p "Enter your name:" name

echo "Hello $name nice to meet you"

#Simple if statement
if [ "$name" == "Brad" ]
then 
    echo "Your name is Brad"
else
    echo "Your name is not Brad"
fi

#Simple if statement
if [ "$name" == "Brad" ]
    then 
        echo "Your name is Brad"
elif [ "$name" == "Susan" ]
    then 
        echo "Your name is Susan"
else
    echo "Your name is not Brad or Susan"
fi

