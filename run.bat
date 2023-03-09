
for /f "delims=" %%a in ('call ini.cmd ./3DMigoto/d3dx.ini Loader target') do (
    set val=%%a
)
echo %val%
git fetch origin^
  & rd /s /q "./3dmigoto/Mods"^
  & if not exist "./3dmigoto/Mods" mkdir "./3dmigoto/Mods"^
  & Xcopy "./models" "./3dmigoto/Mods" /s^
  & cd ./3dmigoto^
  & git add .^
  & git commit -m "yep.."^
  & git merge teach/master^
  & git merge lategame/master^
  & git push^
  & start "" "./3DMigoto Loader.exe"
timeout /t 5
start "" "%val%"
pause