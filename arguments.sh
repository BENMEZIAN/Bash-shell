echo "Nom du programme: $0"                         $0: nom de programme
echo "Nombre de parametres: $#"                     $1 : nombre de parametres
echo "Deux premiers parametres: arg1=$1 arg2=$2"    $1,$2 : les deux premiers parametres
                                                    note: ($1-9) $1, $2, $3... les neuf premiers paramètres passés au script
echo "Liste: $*"                                    $* : liste des parametres 
echo "Elements : $@"                                $@ : Liste des paramètres sous forme d’éléments distincts

: '
set : permet de redéfinir le contenu des paramètres de position
    Syntaxe : set val1 val2 val3 ...
    $1 prendra comme contenu val1, $2 prendra val2, ...

shift : Un simple appel décale tous les paramètres d’une position en supprimant le premier
    Syntaxe : shift
    $2 devient $1, $3 devient $2, ...
'
