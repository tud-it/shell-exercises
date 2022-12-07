#!/bin/bash

if [ $# == 0 ]; then
  echo "Bitte geben Sie eine Datei als Parameter mit."
  exit 1
fi

if [ -f $1 ]; then
  echo "Die mitgegebene Datei existiert nicht."
  exit 2
fi

file $1

[ -x $1 ] && EXE="Ja" || EXE="Nein"
echo "Ausfuehrbar: $EXE"
