@echo off
REM 
REM création des compendiums du module CSB Bloodlust Classique
REM
REM le paquet fvtt doit être  installé https://github.com/foundryvtt/foundryvtt-cli
REM
REM /!\ nécessite que l'instance de foundry soit fermée avant de lancer la commande
REM
@echo off
cls
echo * ********************************* *
echo * start create compendiums          *
echo * ********************************* *
echo.
echo /// configure environment
call fvtt package workon csb-bloodlust-classique --type=Module
echo.
echo /// create compendium "scenarios"
call fvtt package pack scenarios
echo.
echo /// create compendium "systeme-et-templates"
call fvtt package pack systeme-et-templates
echo.
echo * ********************************* *
echo * all compendiums have been created *
echo * ********************************* *
echo.
@echo on
