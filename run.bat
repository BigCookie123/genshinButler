
for /f "delims=" %%a in ('call ini.cmd ./3DMigoto/d3dx.ini Loader target') do (
    set val=%%a
)
echo %val%
git fetch origin^
  & rd /s /q "./3dmigoto/Mods"^
  & if not exist "./3dmigoto/Mods" mkdir "./3dmigoto/Mods"^
  & Xcopy "./models" "./3dmigoto/Mods" /s^
  & cd ./3dmigoto^
  & git checkout teach^
  & git checkout pull^
  & git add .^
  & git commit -m "yep.."^
  & git merge origin/master^
  & git merge origin/sniper^
  & git push^
  & git checkout master^
  & start "" "./3DMigoto Loader.exe"
timeout /t 5
start "" "%val%"
pause