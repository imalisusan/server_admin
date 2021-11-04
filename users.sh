#! /bin/bash

groups="webdesigners mobiledevs dbadmins"

for group in $groups
    do 
        sudo addgroup $group
        sudo mkdir /etc/skel/$group_files
done

webdesigners="webdesigner1 webdesigner2"
mobiledevs="mobiledev1 mobiledev2 mobiledev3"
dbadmins="dbadmin1 dbadmin2"

for webdesigner in $webdesigners
    do 
        sudo useradd $webdesigner -p $webdesigner.123 -g webdesigners 
        sudo chage -E 01/31/2022 $webdesigner
        echo "Hello $webdesigner, your account has been created. Password is: $webdesigner.123"
done

for mobiledev in $mobiledevs
    do 
        sudo useradd $mobiledev -p $mobiledev.123 -g mobiledevs -d /home/mobiledevs_files
        sudo chage -E 02/28/2022 $mobiledev
        echo "Hello $mobiledev, your account has been created. Password is: $mobiledev.123"
done

for dbadmin in $dbadmins
    do 
        sudo useradd $dbadmin -p $dbadmin.123 -g dbadmins -d /home/dbadmins_files
        sudo chage -E 12/31/2021 $dbadmin
        echo "Hello $dbadmin, your account has been created. Password is: $dbadmin.123"
done

