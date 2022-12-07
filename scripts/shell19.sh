#!/bin/bash

case $1 in
  'a' | 1)
    echo "Fall 1"
    ;;
  'b')
    echo "Fall 2"
    ;;
  'c')
    echo "Fall 3"
    ;;
  *)
    echo "Komischer Parameter."
    ;;
esac
