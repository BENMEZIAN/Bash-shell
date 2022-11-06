while getopts ":ab:c" option ; do
echo "getopts a trouvé l'option $option"
case $option in
a) echo "Exécution des commandes de l'option a"
echo "Indice de la prochaine option à traiter :$OPTIND"
;;
b) echo "Exécution des commandes de l'option b"
echo "Liste des arguments à traiter :$OPTARG"
echo "Indice de la prochaine option à traiter :$OPTIND"
;;
c) echo "Exécution des commandes de l'option c"
echo "Indice de la prochaine option à traiter :$OPTIND"
;;
\?) echo "$OPTARG : option invalide"
exit 1;;
esac
done
echo "Analyse des options terminée"

-------------------------------------------
Output:

> bash main.sh -a -b test -z
getopts a trouvé l'option a
Exécution des commandes de l'option a
Indice de la prochaine option à traiter :2
getopts a trouvé l'option b
Exécution des commandes de l'option b
Liste des arguments à traiter :test
Indice de la prochaine option à traiter :4
getopts a trouvé l'option ?
z : option invalide


