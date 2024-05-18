#!/bin/bash
 
 ID=$(id -u)
if($ID nt 0)
then
    echo "ERROR:: Please run this script with root access"
else
     echo "your root user"
fi