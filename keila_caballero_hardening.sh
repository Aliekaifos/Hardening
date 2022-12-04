#!/bin/bash

#KEILA CABALLERO#
#AUTOMATIZACION DE TAREAS DE HARDENING

centos=$(grep 'NAME="CentOS Linux"' /etc/os-release)
ubuntu=$(grep 'NAME="Ubuntu"' /etc/os-release)


if echo $centos | grep CentOS
then
        echo Installing clamav...
        sudo yum remove clamav -y > /dev/null 2>&1
        sudo yum install clamav -y > /dev/null 2>&1
        echo installed!
        echo Installing EPEL repositories...
        sudo yum install -y epel-release
        sudo yum repolist
        echo Successfull!
        echo Updating...
        sudo yum update -y > /dev/null 2>&1
        sudo yum upgrade -y > /dev/null 2>&1
        echo Successfull!
else
        if echo $ubuntu | grep Ubuntu
        then
        echo Installing clamav...
        sudo apt-get remove clamav -y > /dev/null 2>&1
        sudo apt-get install clamav -y > /dev/null 2>&1
        echo installed!
        echo Updating...
        sudo apt update -y > /dev/null 2>&1
        sudo apt upgrade -y > /dev/null 2>&1
        echo Successfull!
        fi
fi
