#!/bin/bash

echo "Prozesse:" > out10
ps -ux -U dopr >> out10

echo '' >> out10
echo "Umgebungsvariablen:" >> out10
env >> out10
