# Tests sur une chaîne: test -z "variable"
: '
a=

test -z "$a"; echo $?

test -n "$a"; echo $?

test "$a" = usthb; echo $?

test "$a" != usthb; echo $?
'

# Tests sur les valeurs numériques: test val1 option val2
: '
test val1 option val2
    option: -eq 
            -ne 
            -lt 
            -gt 
            -le 
            -ge
'

# Tests sur les fichiers: test option nom_fich
: '
test option nom_fich
    option: -f (file)
            -d (directory)
            -c (character)
            -b (bloc)
            -p (pipe)
            -r (read permission)
            -w (write permission)
            -x (execution permission)
            -s (!empty file)
            -e (file exists)
            -L (Link symbolic)
            -u (SUID exist)
            -g (SGID exist)

test -f f1.txt ; echo $?
test -d f1.txt ; echo $?
'

# Tests combinés par des critères ET, OU, NON:
: '
    option: -o (or)
            -a (and)
             ! (not)
[      -o -a !      ]
[ $a -lt 100 -a $b -gt 15 ]

syntax:
if [ expression ]
then
   Statement(s) to be executed if expression is true
else
   Statement(s) to be executed if expression is not true
fi

case word in
   pattern1) Statement(s) to be executed if pattern1 matches;;
   pattern2) Statement(s) to be executed if pattern2 matches;;
   pattern3) Statement(s) to be executed if pattern3 matches;;
   *) Default condition to be executed;;
esac

examples:
############# if condition ########################################################
echo "If condition"

if [ $# -ne 0 ]
then
   echo "$# parametres en ligne de commande"
else
   echo "Aucun paramètre"
   set 10 20 30 40
fi

echo "Nombre de parametres: $#"
echo "Deux premiers parametres: arg1=$1 arg2=$2"
echo "Liste: $*"

############# switch case #########################################################

echo "switch case"

if [ $# -eq 0 ]
    echo "Usage : ./main.sh arg1 arg2 ..."
then
    case $1 in
        x*) echo "arg1 commence par x" ;;
        y*) echo "arg1 commence par y" ;;
        fich[12]) echo "arg1 estfich1 oufich2" ;;
        *) echo "arg1 commence par n’importe" ;;
    esac
    exit 0
fi
'

