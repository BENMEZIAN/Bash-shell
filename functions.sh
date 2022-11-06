: '
# déclaration d'une fonction
function nom_fonction
{
    <commandes à exécuter>
    return
}

# appel d'une fonction
nom_fonction
'

example:

trois_arg()
{
if [ $# -ne 3 ]
then echo "Nombre d'arguments erronés pour trois_arg()"
     return
fi

echo "Traitement des arguments de trois_arg()"
}


trois_arg                        # 0 paramètres 
trois_arg un deux trois quatre   # 4 paramètres 
trois_arg un deux trois          # 3 paramètres 
