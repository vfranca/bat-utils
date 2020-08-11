@echo off
rem Utilitários de CMD
rem Atualiza os pacotes do Chocolatey
if "%1" == "-l" (
echo npp
echo git
echo nvda
echo python
goto :EOF
)

if "%1" == "npp" (
call :npp
goto :EOF
)

if "%1" == "nvda" (
call :nvda
goto :EOF
)

if "%1" == "git" (
call :git
goto :EOF
)

if "%1" == "python" (
call :python
goto :EOF
)

rem Atualização de aplicativos

choco upgrade chocolatey -y

rem Java
choco upgrade javaruntime -y
choco upgrade jre8 -y
choco upgrade jdk8 -y

rem Navegadores
choco upgrade googlechrome -y
rem choco upgrade opera -y
choco upgrade firefox -y
choco upgrade flashplayerplugin -y

rem Drivers
choco upgrade googledrive -y
choco upgrade dropbox -y

choco upgrade thunderbird -y

:nvda
choco upgrade nvda -y
goto :EOF
)

choco upgrade openoffice -y
choco upgrade winrar -y
choco upgrade discord -y
choco upgrade telegram -y
choco upgrade whatsapp -y
choco upgrade zoom -y
choco upgrade kindle -y
choco upgrade spotify -y
rem choco upgrade slack -y
choco upgrade -y keepass
choco upgrade -y audacity
choco upgrade -y adobereader
choco upgrade -y whois

rem ferramentas para programação

:npp
choco upgrade notepadplusplus --x86 -y
goto :EOF

:git
choco upgrade -y git --params="'GitAndUnixToolsOnPath'"
choco upgrade -y gitflow-avh
choco upgrade -y git-cola
choco upgrade -y hub
rem choco upgrade -y sourcetree
goto :EOF

choco upgrade -y putty
choco upgrade -y sqlite

rem PHP
choco upgrade php -y
choco upgrade composer -y
rem choco upgrade bitnami-xampp -y

rem Python
:python
choco upgrade python -y
goto :EOF

rem Rust
rem choco upgrade rust -y

rem Node
choco upgrade nodejs-lts -y

rem Máquina virtual
rem choco upgrade -y virtualbox
rem choco upgrade -y vagrant
rem choco upgrade -y terraform
rem choco upgrade -y packer

rem Docker
rem choco upgrade -y docker-cli
rem choco upgrade -y docker-compose
rem choco upgrade -y docker-for-windows
rem choco upgrade -y docker-machine
