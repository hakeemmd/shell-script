#!/bin/bash
ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"
 R= "\e[31m"
 G= "\e[32m"
 Y="\e[33m"
 N="\e[0m"


    VALIDATE (){

    if [ $1 -ne 0 ]
then
    echo -e "ERROR :: $2 ..is $R faild $N"
    exit 1
 else 
    echo -e " $2 ..is $G success $N"

 fi
}
if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 2
else
     echo "your root user"
fi
    yum install git -y &>> $LOGFILE

    VALIDATE $? "installing Git"
    yum install mysql -y &>> $LOGFILE

    VALIDATE $? "installing Mysql"

    yum install maven -y &>> $LOGFILE

    VALIDATE $? "Installing mvn"
   