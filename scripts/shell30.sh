#!/bin/bash

IP="141.76.16.140"
HOST=$(host $IP)

HOSTNAME=${HOST##* }

    LOGIN1=$(cut -d '.' -f 1 <<< $HOSTNAME)
       ZIH=$(cut -d '.' -f 2 <<< $HOSTNAME)
TU_DRESDEN=$(cut -d '.' -f 3 <<< $HOSTNAME)
        DE=$(cut -d '.' -f 4 <<< $HOSTNAME)

echo "Die IP-Adresse $IP ist der Rechner = $HOSTNAME."
echo "1. Subnetz = $ZIH"
echo "2. Subnetz = $TU_DRESDEN"

echo ''
echo "$DE.$TU_DRESDEN.$ZIH.$LOGIN1"
