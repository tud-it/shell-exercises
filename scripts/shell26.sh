#!/bin/bash

for FILE in *.txt; do
  [ -f $FILE ] || break # File muss existieren, sonst break.

  LINES=$(wc -l $FILE | cut -d ' ' -f 1)

  if [ $LINES -ge 5 ]; then
    echo "$FILE hat mehr als 5 Zeilen ($LINES)."
  fi
done
