#!/bin/bash

#Function to add user to a group

add_user_to_group(){
   read -p "enter the username:" username
   read -p "enter the groupname:" groupname
   usermod -aG $groupname $username
   if [ $? -eq 0 ];
   then
   echo "user $username is added to the group $groupname"
   else
   echo "failed adding user to the group"
   fi
}

#Function to change the username

change_username(){
   read -p "enter the username" username
   read -p "enter the newname" newname
   usermod -l $newname $username
   if [ $? -eq 0 ];
   then
   echo "username has been changed from $username to $newname"
   else
   echo "failed to change the username of $username"
   fi
}

#Function to change user's home directory

change_home_directory(){
   read -p "enter the username:" username
   read -p "enter the new home directory path:" newpath
   usermod -d $newpath $username
   if [ $? -eq 0 ];
   then
   echo "the home directory of user $username is changed to $newpath"
   else
   echo "failed to change the home directory of user $username"
   fi
}

#Function to user's shell

change_shell(){
   read -p "enter the username:" username
   read -p "enter the new shell:" newshell
   usermod -s $newshell $username
   if [ $? -eq 0 ];
   then
   echo "the shell of the user $username is changed to $newshell"
   else
   echo "failed to change the shell of the user $username"
   fi
}

#Function to lock a user account

lock_user_account(){
   read -p "enter the username:" username
   usermod -L $username
   if [ $? -eq 0 ];
   then
   echo "user account $username has been successfully locked"
   else
   echo "failed to lokck user account of $username"
   fi
}

#Function to unlock the user account

unlock_user_account(){
   read -p "enter the user name:" username
   usermod -U $username
   if [ $? -eq 0 ];
   then
   echo "user account $username has been unlocked successfully"
   else
   echo "unable to unlock user account $username"
   fi
}

#Main function using switch loop

main(){
   while true;
   do
   echo "select an option"
   echo "1.add user to a group"
   echo "2.change username"
   echo "3.change home directory"
   echo "4.change shell"
   echo "5.lock user account"
   echo "6.Unlock user account"
   echo "7.quit"
   read -p "enter your choice" choice

   case $choice in
     1)
       add_user_to_group
       ;;
     2)
       change_username
       ;;
     3)
       change_home_directory
       ;;
     4)
       change_shell
       ;;
     5)
       lock_user_account
       ;;
     6)
       unlock_user_account
       ;;
     7)
       echo "exiting..."
       exit 0
       ;;
     *)
       echo "invalid option...try again"
       ;;
    esac
    done
}

main
