#!/usr/bin/env bash

i=0

x=$(($1 - 1))
x_pos=$(($x * 10))
x_x=0


o=0
y=$(($2 - 1))
y_pos=$(($y * 10))
y_y=0


 echo "<!DOCTYPE html>
<html>
  <head>
    <meta name="author" content="Hackalife">
  <title>Go-Brett $1 x $2</title>  </head>
  <body>
  <!--X =($1), Y=($2) -->
  <svg version='1.1' xmlns='http://www.w3.org/2000/svg' width='200' hight='200'>


"
for (( i = 0; i < $x; i++ )); do
  x_x=$(($i*10 ))

  echo "<line x1='0' y1='$x_x' x2='$y_pos' y2='$x_x' style='stroke:rgb(255,0,0);stroke-width:2' />"


  echo "<!-- <line x1='0' x2='$y_pos' y1='$x_x' y2='$x_x' stroke='black' stroke-width='5' stroke-linecap='round' stroke-dasharray='1,$x'/> -->"

done

echo "<line x1='0' y1='$x_pos' x2='$y_pos' y2='$x_pos' style='stroke:rgb(255,0,0);stroke-width:2' />"


for (( o = 0; o < $y; o++ )); do
  y_y=$(($o*10 ))

  echo "<line y1='0' x1='$y_y' y2='$x_pos' x2='$y_y' style='stroke:rgb(255,0,0);stroke-width:2' />"


done

echo "<line y1='0' x1='$y_pos' y2='$x_pos' x2='$y_pos' style='stroke:rgb(255,0,0);stroke-width:2' />"


cat << _EOF_
  </svg>

Der code im svg tag kann selbststaendig als svg genutzt werden.

Wenn man den Linienstyle auf gepunktet stellt kann man die punkte an den schnittpunkten der linien generieren.
muss allerdings noch angepasst werden und ich sehe meinen Fehler gerade nicht

</body>
</html>
_EOF_
