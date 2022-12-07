# Shell Uebungen

## Aufgabe 7

```sh
> ssh dopr043e@login.zih.tu-dresden.de
> uname -a
```
<a href="#top">⬆️</a>

## Aufgaben 8 & 9 <sup><sup>[shell8.sh](./scripts/shell8.sh)</sup></sup>

```sh
## Aufgabe 8
uname -a | cut -d ' ' -f 1,3 > out8

## Aufgabe 9
users > out9
```
<a href="#top">⬆️</a>

## Aufgabe 10 <sup><sup>[shell10.sh](./scripts/shell10.sh)</sup></sup>

`ps -aux`

```sh
echo "Prozesse:" > out10
ps -ux -U dopr >> out10

echo '' >> out10
echo "Umgebungsvariablen:" >> out10
env >> out10
```
<a href="#top">⬆️</a>

## Aufgaben 11 & 12 <sup><sup>[shell12.sh](./scripts/shell12.sh)</sup></sup>

```sh
sort in11a
sort in11b
```
<a href="#top">⬆️</a>

## Aufgabe 13 <sup><sup>[shell13.sh](./scripts/shell13.sh)</sup></sup>

```sh
if [[ -f $1 && -f $2 ]]; then
  sort $1
  sort $2

  echo $1
  echo $2
fi
```
<a href="#top">⬆️</a>

## Aufgabe 14 <sup><sup>[shell14.sh](./scripts/shell14.sh)</sup></sup>

```sh
sort $1 > $1.txt
sort $2 | head 3 > $2.txt

cat $2.txt >> $1.txt
sort -r $2 >> out14

rm $2
```
<a href="#top">⬆️</a>

## Aufgabe 15 <sup><sup>[shell15.sh](./scripts/shell15.sh)</sup></sup>

```sh
echo "$1, $2, $3" > out15
```
<a href="#top">⬆️</a>

## Aufgabe 16 <sup><sup>[shell16.sh](./scripts/shell16.sh)</sup></sup>

```sh
for I in 1 2 3; do
  mkdir A$I
done
```
<a href="#top">⬆️</a>

## Aufgabe 17 <sup><sup>[shell17.sh](./scripts/shell17.sh)</sup></sup>

```sh
for FILE in *; do
  echo FILE > out17
done
```
<a href="#top">⬆️</a>

## Aufgabe 18 <sup><sup>[shell18.sh](./scripts/shell18.sh)</sup></sup>

```sh
if [ $1 == 2 ]; then
  echo "Der Wert ist korrekt."
else
  echo $1
fi
```
<a href="#top">⬆️</a>

## Aufgabe 19 <sup><sup>[shell19.sh](./scripts/shell19.sh)</sup></sup>

```sh
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
```
<a href="#top">⬆️</a>

## Aufgabe 20 <sup><sup>[shell20.sh](./scripts/shell20.sh)</sup></sup>

```sh
if [ $# == 0 ]; then
  echo "Kein Parameter uebergeben!"
  echo "Bitte geben Sie dem Script einen Parameter mit."
  echo "Beispiel: script20.sh a"
  exit 1
fi

if [ $1 == 'a' ]; then
  echo "Prozess-ID des Scriptes: $$"
else
  echo $0
fi
```
<a href="#top">⬆️</a>

## Aufgabe 21 <sup><sup>[shell21.sh](./scripts/shell21.sh)</sup></sup>
```sh
DAY=$(date "+%A")

if [ $DAY == "Dienstag" ]; then
  echo "Heute ist Dienstag."
else
  echo "Heute ist $DAY."
fi

USERS=$(w -i | tail -n +3)

while read USER; do
  USER=$(tr -s ' ' <<< $USER) # Überflüssige Leerzeichen löschen

  NAME=$(cut -d ' ' -f 1 <<< $USER)
  IP=$(cut -d ' ' -f 3 <<< $USER)
  IP_1=$(cut -d '.' -f 1 <<< $IP)

  if [ $IP_1 == 141 ]; then
    echo $NAME
  fi
done <<< $USERS

hostname > out21
env | tail -5 >> out21
```
<a href="#top">⬆️</a>

## Aufgabe 22 <sup><sup>[shell22.sh](./scripts/shell22.sh)</sup></sup>

```sh
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
```
<a href="#top">⬆️</a>

## Aufgabe 23 <sup><sup>[shell23.sh](./scripts/shell23.sh)</sup></sup>

```sh
head -2 personal.txt > personal-sort.txt
tail -n +3 personal.txt | sort >> personal-sort.txt
```
<a href="#top">⬆️</a>

## Aufgabe 24 <sup><sup>[shell24.sh](./scripts/shell24.sh)</sup></sup>

```sh
NUMBERS_REGEX="^[+-]?[0-9]+$"

until [[ $START =~ $NUMBERS_REGEX ]]; do
  echo -ne "Bitte geben Sie die Startziffer ein: "
  read -r START
done

until [[ $END =~ $NUMBERS_REGEX && $END > $START ]]; do
  echo -ne "Bitte geben Sie die Endziffer ein: "
  read -r END
done

echo ''

for (( I=$START; I <= $END; I++ )); do
  echo $I
done

COUNT=$(expr $END - $START)
if [ $COUNT == 1 ]; then
  echo "The script needed 1 run."
else
  echo "The script needed $COUNT runs."
fi
```
<a href="#top">⬆️</a>

## Aufgabe 24a <sup><sup>[shell24a.sh](./scripts/shell24a.sh)</sup></sup>

#### Unteraufgabe 1
```sh
if [ -f parameter.sh ]; then
  cat parameter.sh
else
  echo "Die Datei 'parameter.sh' existiert nicht."
fi
```
<a href="#top">⬆️</a>

#### Unteraufgabe 2
```sh
echo "meine neue Datei" > myfile.txt
if [ -f myfile.txt ] && ! [ -x myfile.txt ]; then
  chmod +x myfile.txt
fi
```
<a href="#top">⬆️</a>

#### Unteraufgabe 3
```sh
COUNT=0

for __ in ls; do
  (( COUNT++ ))
done

echo $COUNT
```
<a href="#top">⬆️</a>

#### Unteraufgabe 4
```sh
MYVAR=$#
if [ $MYVAR != 0 ]; then
  echo $#
  echo $@
else
  echo "Keine Parameter Uebergeben."
fi
```
<a href="#top">⬆️</a>

#### Unteraufgabe 5
```sh
case $1 in
  "TOM" | "TIM" | "JOE" | "JOSH")
    echo $1 > $1.txt
    ;;
esac
```
<a href="#top">⬆️</a>

#### Unteraufgaben 6 + 7
```sh
for VAR in $(env | grep "USER*"); do
  echo $VAR
done
```
<a href="#top">⬆️</a>

## Aufgabe 25 <sup><sup>[shell25.sh](./scripts/shell25.sh)</sup></sup>

```sh
for FILE in *; do
  echo $FILE > sh25.out
  echo $FILE | wc -l >> sh25.out
done
```
<a href="#top">⬆️</a>

## Aufgabe 26 <sup><sup>[shell26.sh](./scripts/shell26.sh)</sup></sup>

```sh
for FILE in *.txt; do
  [ -f $FILE ] || break # File muss existieren, sonst break.

  LINES=$(wc -l $FILE | cut -d ' ' -f 1)

  if [ $LINES -ge 5 ]; then
    echo "$FILE hat mehr als 5 Zeilen ($LINES)."
  fi
done
```
<a href="#top">⬆️</a>

## Aufgaben 27 & 28 <sup><sup>[shell27.sh](./scripts/shell27.sh)</sup></sup>

```sh
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
```
<a href="#top">⬆️</a>

## Aufgabe 29 <sup><sup>[shell29.sh](./scripts/shell29.sh)</sup></sup>

```sh
for FILE in *; do
  file $FILE

  [ -x $FILE ] && EXE="Ja" || EXE="Nein"
  echo "Ausfuehrbar: $EXE"
done
```
<a href="#top">⬆️</a>

## Aufgabe 30 <sup><sup>[shell30.sh](./scripts/shell30.sh)</sup></sup>

```sh
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
```
<a href="#top">⬆️</a>
