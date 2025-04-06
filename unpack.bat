@echo off
REM 
REM dépaquetage des compendiums du module CSB Bloodlust classique
REM
REM le paquet fvtt doit être  installé https://github.com/foundryvtt/foundryvtt-cli
REM
REM /!\ nécessite que l'instance de foundry soit fermée avant de lancer la commande
REM
@echo off
cls
echo * ********************************** *
echo * start unpack compendiums           *
echo * ********************************** *
echo.
echo /// configure environment
call fvtt package workon csb-bloodlust-classique --type=Module
echo.
echo /// unpack compendium "templates-actors"
call fvtt package unpack -c templates-actors
echo.
echo /// unpack compendium "templates-items"
call fvtt package unpack -c templates-items
echo.
echo /// unpack compendium "armes"
call fvtt package unpack -c armes
echo.
echo /// unpack compendium "peuples"
call fvtt package unpack -c peuples
echo.
echo /// unpack compendium "pouvoirs"
call fvtt package unpack -c pouvoirs
echo.
echo /// unpack compendium "pnj"
call fvtt package unpack -c pnj
echo.
echo /// unpack compendium "animaux"
call fvtt package unpack -c animaux
echo.
echo /// unpack compendium "scenarios"
call fvtt package unpack -c scenarios
echo.
echo /// unpack compendium "systeme-et-templates"
call fvtt package unpack -c systeme-et-templates
echo.
echo * ********************************** *
echo * all compendiums have been unpacked *
echo * ********************************** *
echo.
@echo on
