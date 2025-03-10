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
echo /// pack compendium "templates-actors"
call fvtt package pack templates-actors
echo.
echo /// unpack compendium "templates-items"
call fvtt package pack templates-items
echo.
echo /// unpack compendium "armes"
call fvtt package pack armes
echo.
echo /// unpack compendium "peuples"
call fvtt package pack peuples
echo.
echo /// unpack compendium "pouvoirs"
call fvtt package pack pouvoirs
echo.
echo /// unpack compendium "pnj"
call fvtt package pack pnj
echo.
rem echo /// create compendium "scenarios"
rem call fvtt package pack scenarios
rem echo.
echo /// create compendium "systeme-et-templates"
call fvtt package pack systeme-et-templates
echo.
echo * ********************************* *
echo * all compendiums have been created *
echo * ********************************* *
echo.
@echo on
