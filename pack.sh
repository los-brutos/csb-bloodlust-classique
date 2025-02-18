#!/usr/bin/env bash

#
# création des compendiums du module CSB Bloodlust classique
#
# le paquet fvtt doit être  installé https://github.com/foundryvtt/foundryvtt-cli
#
# /!\ nécessite que l'instance de foundry soit fermée avant de lancer la commande
#

set -o errexit
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then
    set -o xtrace
fi

if [[ "${1-}" =~ ^-*h(elp)?$ ]]; then
    echo 'Usage: ./pack.sh
génère les compendiums du module CSB Bloodlust classique'
    exit
fi

workdirectory="$(pwd)"

echo "* ********************************* *"
echo "* start create compendiums          *"
echo "* ********************************* *"

echo "  * configure environment"
fvtt package workon csb-bloodlust-classique --type=Module

echo "  * create compendium scenarios"
fvtt package pack scenarios

echo "  * create compendium systeme-et-templates"
fvtt package pack systeme-et-templates

echo "* ********************************* *"
echo "* all compendiums have been created *"
echo "* ********************************* *"
echo

cd ${workdirectory-}
