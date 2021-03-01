#! /usr/bin/env bash

logger "Starting qjoypad monitor with configuration \"$1\"..."

while true
do
  if pgrep -x "qjoypad" > /dev/null
  then
    logger "killing qjoypad process"
    pkill qjoypad
  else
    logger "starting qjoypad process"
    qjoypad "$1" &
    
    sleep 5

    while true
    do
      if [ -f /tmp/restart_qjoypad ]
      then
	logger "detected restart joypad flag file"
	sleep 5
	rm /tmp/restart_qjoypad
	break
      fi

      sleep 1
    done
  fi
  sleep 1
done
