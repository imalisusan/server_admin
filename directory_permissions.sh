#! /bin/bash


function askEntity()
{
    echo "For which entity would you like to change the permission for? (user/group)"

    read entity

    case "$entity" in
        [uU][sS][eE][rR])
            entity='o'
            ;;
        [gG][rR][oO][uU][pP])
            entity='g'
            ;;
         [oO][tT][hH][eE][rR][sS])
            #entity='others'
            ;;
        *)
            "Please choose a valid option."
            ;;
    esac
}


function askTerminate()
{
    echo "Would you like to make more changes? (Y/N)"

    read choice

    case "$choice" in
        [yY])
            welcome
            ;;
        [nN])
            echo "Sad to see you leave :( Come back soon"
            ;;
        *)
            echo "Please choose a valid option."
            ;;
    esac
}

function askPermission()
{
    echo "Would you like to change permissions for a file? (read/ write/ execute)"

    read permission

    case "$permission" in
        [rR][eE][aA][dD])
            askEntity
            chmod $entity+r new.txt
            echo "Successfully added write permissions for the file"
            ;;
        [wW][rR][iI][tT][eE])
            askEntity
            chmod $entity+w new.txt
            echo "Successfully added write permissions for the file"
            ;;
         [eE][xX][eE][cC][uU][tT][eE])
            chmod $entity+w new.txt
            askEntity
            echo "Successfully added write permissions for the file"
            ;;
        *)
            echo "Please choose a valid option."
            ;;
    esac

    askTerminate
}

function welcome()
{
    echo "Would you like to change permissions for a file? (Y/N)"

    read choice

    case "$choice" in
        [yY])
            askPermission
            ;;
        [nN])
            echo "Maybe next time"
            ;;
        *)
            "Please choose a valid option."
            ;;
    esac
}


ls
welcome