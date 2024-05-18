#!/bin/bash
 
 ID=$(id -u)
if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 2
else
     echo "your root user"
fi
yum install mysql -y

if [ $? -ne 0 ]
then
 echo "ERROR :: Installed Mysql is faild"
 exit 1
 else 
 echo " Installed Mysql is success"

 fi
 yum install git -y

 if [ $? -ne 0 ]
then
 echo "ERROR :: Installed git is faild"
 exit 1
 else 
 echo " Installed git is success"

 fi
