#!/bin/bash

aufg1() {
  if [ -f parameter.sh ]; then
    cat parameter.sh
  else
    echo "Die Datei 'parameter.sh' existiert nicht."
  fi
}

aufg2() {
  echo "meine neue Datei" > myfile.txt
  if [ -f myfile.txt ] && ! [ -x myfile.txt ]; then
    chmod +x myfile.txt
  fi
}

aufg3() {
  COUNT=0

  for __ in ls; do
    (( COUNT++ ))
  done

  echo $COUNT
}

aufg4() {
  MYVAR=$#
  if [ $MYVAR != 0 ]; then
    echo $#
    echo $@
  else
    echo "Keine Parameter Uebergeben."
  fi
}

aufg5() {
  case $1 in
    "TOM" | "TIM" | "JOE" | "JOSH")
      echo $1 > $1.txt
      ;;
  esac
}

# aufg6() {
#   env | grep "USER*"
# }

aufg7() {
  for VAR in $(env | grep "USER*"); do
    echo $VAR
  done
}

aufg1
aufg2
aufg3
aufg4
aufg5
# aufg6
aufg7
