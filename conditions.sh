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
'


