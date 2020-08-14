@echo off
pandoc %1.md -o %TEMP%\%1.html
start %TEMP%\%1.html
