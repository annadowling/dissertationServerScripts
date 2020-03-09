#!/bin/sh
# to run:  ./cpu_usage.sh &
PROCESS="java"
CPU=`top | grep $PROCESS`
echo $CPU >> cpu_usage.out