#!/bin/bash

for FILE in *; do
  file $FILE

  [ -x $FILE ] && EXE="Ja" || EXE="Nein"
  echo "Ausfuehrbar: $EXE"
done
