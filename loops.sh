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

until [ expression ]
do
	statement(s)
done

select <variable> in <list of items separated by space>
do
    ... What to do for each option or with the variable ...
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

numbers=(1 2 3 4 5 6 7 8 9 10)

i=0
while [ $i -le ${#numbers[*]} ]  # print array elements with while loop
do
  echo -n -e  $i" "
  let i='i + 1'
done

echo -e

i=0
len=${#numbers[*]}  # ${#numbers[@]}
while [ $i -le $len ]  # print array elements with while loop
do
  echo -n -e  $i" "
  let i='i + 1'
done

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

########## until loop ##########################################

i=1
until [ $i -gt 3 ]
do
    echo "$i"
    let i='i+1'
done

########## until loop ##########################################

PS3="Enter your choice ==> "
echo "What do you do?"
 
select answer in Student Businessman Professional Fresher
do
        case $answer in
                Student)
                        echo "You're still studying"
                        ;;
                Fresher)
                        echo "You're new in the job market"
                        ;;
                Professional)
                        echo "You've been a seasoned professional"
                        ;;
                Businessman)
                        echo "Wow you work really hard for sure!"
                        ;;
                *)
                        echo "Well, you need to enter something from the list!"
                        ;;
        esac
done
---------------------------------- 
Output:
1) Student
2) Businessman
3) Professional
4) Fresher
Enter your choice ==> 3
You've been a seasoned professional
Enter your choice ==> 2
Wow you work really hard for sure!
Enter your choice ==>



