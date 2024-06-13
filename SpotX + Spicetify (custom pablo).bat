@echo off

set /p UserInput= "SpotX se va a instalar junto con Spicetify, continuar? (y/n)? "
if /i "%UserInput%"=="y" (
    powershell -Command "& {[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/SpotX-Official/spotx-official.github.io/main/run.ps1' | Invoke-Expression}"
    powershell -Command "& {iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1 | iex}"
    powershell -Command "& {iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.ps1 | iex}"
    pause
) else (
    echo Cancelado.
    pause
    exit /b
)
