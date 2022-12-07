#!/bin/bash

if [[ -f $1 && -f $2 ]]; then
  sort $1
  sort $2

  echo $1
  echo $2
fi
