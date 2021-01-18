#!/bin/bash

LOGFILE="/home/HelloWfjkwd-VM/exercise-logs/winston.log"

## functions
get_infoLogs(){
echo ""
echo "Number of Information Logs"
echo "=========================="
cat $LOGFILE \
| grep info \
| wc | awk '{print $1}'
}

get_errorLogs(){
echo ""
echo "Number of Error Logs"
echo "=========================="
cat $LOGFILE \
| grep error: \
| wc | awk '{print $1}'
}

get_listerrors(){
echo ""
echo "status | message                  | url                    | method             | timestamp "
#cat $LOGFILE | grep -A1 "^error: $" | awk '$3 == 400 {print $3}'
cat $LOGFILE | grep -A5 "status - 400" | awk '{print $3}'
#cat $LOGFILE | grep -A5 "status - 400" | tail -1
}

#Running
get_infoLogs
get_errorLogs
get_listerrors
