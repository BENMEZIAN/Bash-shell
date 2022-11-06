#!/bin/bash

: '
for var in ${list} : list==> integers, characters, arrays,........
do
    statement(s)
done

while [ expression ]
do
    statement(s)
done
'

########## for loop ##########################################

echo "for loop"

# print integers
for i in {1..5}
do
    echo -n -e "$i "
done

echo -e

# print items of array
numbers=(1 2 3 4 5 6 7 8 9 10)

for i in ${numbers[*]}
do
    echo -n -e "$i "
done

echo -e

characters=('a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l')

for i in ${characters[*]}
do
    echo -n -e "$i "
done

echo -e

words=('abc' 'bef' 'cgh' 'dij' 'ekl' 'fmn' 'gop' 'hgr' 'ist' 'juv' 'kwx' 'lyz')

for i in ${words[*]}
do
    echo -n -e "$i "
done

echo -e

########## while loop ##########################################

# echo ${#numbers[*]}

echo "while loop"

# print integers
i=1
while [ "$i" -le 5 ]
do
    echo -n -e "$i "
    let i='i + 1'
done

echo -e

i=0
while [ "$i" -le ${#numbers[*]} ]  # print array elements with while loop
do
  echo -n -e "$i "
  let i='i + 1'
done

echo -e

i=0
len=${#characters[@]}
while [ $i -lt $len ];
do
    echo -n -e ${characters[$i]}" "
    let i++
done

echo -e 

i=0
len=${#words[@]}
while [ $i -lt $len ];
do
    echo -n -e ${words[$i]}" "
    let i++
done

echo -e

