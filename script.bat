@echo off

set "program_dir=%~dp0files"

for %%i in ("%program_dir%\*.*") do (
  echo Installing %%~nxi...
  start /wait "%%~nxi" "%%i" /S /D="%program_dir%"
)