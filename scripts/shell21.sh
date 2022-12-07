#!/bin/bash

DAY=$(date "+%A")

if [ $DAY == "Dienstag" ]; then
  echo "Heute ist Dienstag."
else
  echo "Heute ist $DAY."
fi

USERS=$(w -i | tail -n +3)

while read USER; do
  USER=$(tr -s ' ' <<< $USER) # Überflüssige Leerzeichen löschen

  NAME=$(cut -d ' ' -f 1 <<< $USER)
  IP=$(cut -d ' ' -f 3 <<< $USER)
  IP_1=$(cut -d '.' -f 1 <<< $IP)

  if [ $IP_1 == 141 ]; then
    echo $NAME
  fi
done <<< $USERS

hostname > out21
env | tail -5 >> out21
