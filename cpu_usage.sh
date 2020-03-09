#!/bin/sh
# to run:  ./cpu_usage.sh > cpu_usage.out 2>&1 &
PROCESS="java"
top | grep $PROCESS