@echo off
cls
:menu
title Programas Vibes
echo Bem-vindo ao instalador automatico!
echo Este instalador ira te ajudar a instalar os seguintes programas:
echo 7Zip, Google Chrome, Mozilla Firefox, Only Office, Libre Office
color 00
echo Usuario Logado:%username%                            Computador:%computername%
date /t  
echo  __________________________
echo     ESCOLHA UM APLICATIVO     
echo  1. Baixar programas           
echo  
echo  3. SAIR               
echo __________________________ 
               
set /p opcao= Escolha uma opcao:
echo _______________________
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% GEQ 4 goto opcao4


:opcao1
echo Baixando o 7 ZIP...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.7-zip.org/a/7z2201-x64.msi', 'C:\Users\%username%\Downloads\7zipSetup.msi')"
echo Instalando o 7 ZIP...
msiexec /i C:\Users\%username%\Downloads\7zipSetup.msi /passive
echo 7Zip instalado com sucesso!
echo __________________________

echo Baixando o GOOGLE CHROME...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://encurtador.com.br/fwzHV', 'C:\Users\%username%\Downloads\GoogleChromeSetup.msi')"
echo Instalando o GOOGLE CHROME...
msiexec /i C:\Users\%username%\Downloads\GoogleChromeSetup.msi /passive
echo GOOGLE CHROME instalado com sucesso!
echo __________________________

echo Baixando o MOZILLA FIREFOX...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://download.mozilla.org/?product=firefox-msi-latest-ssl&os=win64&lang=pt-BR', 'C:\Users\%username%\Downloads\MozillaFiferoxSetup.msi')"
echo Instalando o MOZILLA FIREFOX...
msiexec /i C:\Users\%username%\Downloads\MozillaFiferoxSetup.msi /passive
echo GOOGLE CHROME instalado com sucesso!
echo __________________________

echo Baixando o ONLY OFFICE...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://download.onlyoffice.com/install/desktop/editors/windows/distrib/onlyoffice/DesktopEditors_x64.msi', 'C:\Users\%username%\Downloads\OnlyOfficeSetup.msi')"
echo Instalando o ONLY OFFICE...
msiexec /i C:\Users\%username%\Downloads\OnlyOfficeSetup.msi /passive
echo ONLY OFFICE instalado com sucesso!
echo __________________________

echo Baixando o LIBRE OFFICE...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://download.documentfoundation.org/libreoffice/stable/7.5.2/win/x86_64/LibreOffice_7.5.2_Win_x86-64.msi', 'C:\Users\%username%\Downloads\LibreOfficeSetup.msi')"
echo Instalando o LIBRE OFFICE...
msiexec /i C:\Users\%username%\Downloads\LibreOfficeSetup.msi /passive
echo LIBRE OFFICE instalado com sucesso!
echo __________________________

echo Baixando o TEAM VIEWER...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://download.teamviewer.com/full', 'C:\Users\%username%\Downloads\TeamViewerSetup.msi')"
echo Instalando o TEAM VIEWER...
msiexec /i C:\Users\%username%\Downloads\TeamViewerSetup.msi /passive
echo TEAM VIEWER instalado com sucesso!
echo __________________________
pause

:opcao2
echo Instalando 7ZIP...
start /wait "C:\Users\%username%\Downloads\7zipSetup.exe" /S
echo Arquivo 7Zip instalado com sucesso!
pause
goto menu


:opcao3
exit

:op4
cls
echo -----------------------------------
echo Opcao invalida! Escolha outra opcao
echo -----------------------------------
pause
goto menu
