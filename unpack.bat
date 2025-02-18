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
