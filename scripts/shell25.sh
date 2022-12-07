#!/bin/bash

for FILE in *; do
  echo $FILE > sh25.out
  echo $FILE | wc -l >> sh25.out
done
