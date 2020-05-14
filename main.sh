#!/bin/sh
echo A.
first=7
second=44.3
echo first+second = $first + $second =
awk "BEGIN{print $first+$second}"
echo first*second = $first \* $second =
awk "BEGIN{print $first*$second}"
echo first/second = $first / $second =
awk "BEGIN{print $first/$second}"

echo B.
a=8
a=17
a=9
b=6
c=$(( $a + $b ))
b=$(( $c + $a ))
b=8
echo a=$a, b=$b, c=$c

echo C.
echo No, because there is no $ inside to expand

echo D.
x=5
y=2.36
awk "BEGIN{print $x+int($y)}"

echo E.
X=X
Y=Y
if [ $X \> $Y ]
then
  echo BIG
elif [ $X \< $Y ]
then
  echo small
fi

echo F.
seasonEnum=$( shuf --input-range=1-4 --head-count=1 )
case $seasonEnum in
  1) echo summer;;
  2) echo winter;;
  3) echo fall;;
  4) echo spring
esac

echo G.
a=8
b="123"
echo a+b = $a+$b = $(( $a + $b ))