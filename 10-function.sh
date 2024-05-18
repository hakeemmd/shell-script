#!/bin/bash

ID=$(id -u)
    VALIDATE (){

    if [ $? -ne 0 ]
then
    echo "ERROR :: Installed is faild"
    exit 1
 else 
    echo " Installed is success"

 fi
}
if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 2
else
     echo "your root user"
fi
    yum install git -y
    VALIDATE
    yum install mysql -y
    VALIDATE