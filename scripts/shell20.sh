#!/bin/bash

if [ $# == 0 ]; then
  echo "Kein Parameter uebergeben!"
  echo "Bitte geben Sie dem Script einen Parameter mit."
  echo "Beispiel: script20.sh a"
  exit 1
fi

if [ $1 == 'a' ]; then
  echo "Prozess-ID des Scriptes: $$"
else
  echo $0
fi
