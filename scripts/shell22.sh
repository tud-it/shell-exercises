#!/bin/bash

if [ $# != 2 ]; then
  echo "Es muessen 2 Parameter mitgegeben werden."
  exit 1
fi

if [ $1 -lt $2 ]; then
  for (( I = $1; I <= $2; I++ )); do
    echo $I $2
  done
else
  for (( I = $1; I >= $2; I-- )); do
    echo $I $2
  done
fi
