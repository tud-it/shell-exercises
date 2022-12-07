#!/bin/bash

sort $1 > $1.txt
sort $2 | head 3 > $2.txt

cat $2.txt >> $1.txt
sort -r $2 >> out14

rm $2
