: '
    - Indirect declaration of an array in shell script: ARRAYNAME[INDEXNR]=value
    - Direct declaration of an array in shell script:   ARRAYNAME=(value1 value2  .... valueN)
    - Print Array Value in Shell Script:                echo ${ARRAYNAME[*]} or echo ${ARRAYNAME[@]}
    - Print length of an array:                         echo ${#ARRAYNAME[*]} 
'

a=Bioinformatique
echo "Longueur de \"$a\" : ${#a}"

# Indirect declaration of an array
Nom[0]="malek"
Nom[1]="mohamed"
Nom[2]="amine"

# Direct declaration of an array
Numbers=(10 20 30 40)

# Print Array Values
echo ${Nom[*]}
echo ${Numbers[*]}

# Print length
echo ${#Numbers[*]}
