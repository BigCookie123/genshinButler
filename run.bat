
for /f "delims=" %%a in ('call ini.cmd ./3DMigoto/d3dx.ini Loader target') do (
    set val=%%a
)
echo %val%
rd /s /q "./3dmigoto/Mods"^
  & if not exist "./3dmigoto/Mods" mkdir "./3dmigoto/Mods"^
  & Xcopy "./models" "./3dmigoto/Mods" /s^
  & cd ./3dmigoto^
  & git fetch origin^
  & git checkout teach^
  & start "" "./3DMigoto Loader.exe"
timeout /t 5
start "" "%val%"
pause