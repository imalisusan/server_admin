#! /bin/bash

#Switch statements

read -p "Are you 21 and over? Y/N " answer

case "$answer" in
[yY] | [yY][eE][sS])
    echo "You are an adult!"
    ;;
[nN] | [nN][oO])
    echo "You arent an adult!"
    ;;
*)
    echo "Please enter y/Yes or n/No"
    ;;
esac
