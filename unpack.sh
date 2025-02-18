#!/usr/bin/env bash

#
# dépaquetage des compendiums du module CSB Bloodlust classique
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
    echo 'Usage: ./unpack.sh
unpack les compendiums du module CSB Bloodlust classique'
    exit
fi

workdirectory="$(pwd)"

echo "* ********************************** *"
echo "* start unpack compendiums           *"
echo "* ********************************** *"

echo "  * configure environment"
fvtt package workon csb-bloodlust-classique --type=Module

echo "  * unpack compendium scenarios"
fvtt package unpack -c scenarios

echo "  * unpack compendium systeme-et-templates"
fvtt package unpack -c systeme-et-templates

echo "* ********************************** *"
echo "* all compendiums have been unpacked *"
echo "* ********************************** *"
echo

cd ${workdirectory-}
