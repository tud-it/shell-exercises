#!/bin/bash

NUMBERS_REGEX="^[+-]?[0-9]+$"

until [[ $START =~ $NUMBERS_REGEX ]]; do
  echo -ne "Bitte geben Sie die Startziffer ein: "
  read -r START
done

until [[ $END =~ $NUMBERS_REGEX && $END > $START ]]; do
  echo -ne "Bitte geben Sie die Endziffer ein: "
  read -r END
done

echo ''

for (( I=$START; I <= $END; I++ )); do
  echo $I
done

COUNT=$(expr $END - $START)
if [ $COUNT == 1 ]; then
  echo "The script needed 1 run."
else
  echo "The script needed $COUNT runs."
fi
