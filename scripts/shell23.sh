#!/bin/bash

head -2 personal.txt > personal-sort.txt
tail -n +3 personal.txt | sort >> personal-sort.txt
