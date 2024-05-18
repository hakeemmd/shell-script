#!/bin/bash
ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"
    VALIDATE (){

    if [ $1 -ne 0 ]
then
    echo "ERROR :: $2 ..is faild"
    exit 1
 else 
    echo " $2 ..is success"

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
    yum remove maven -y &>> $LOGFILE

    VALIDATE $? "Uninstalling mvn"