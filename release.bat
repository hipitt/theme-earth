del /f /s /q %~dp0dist\*.*
rd /s /q %~dp0dist
call pnpm install
call pnpm build
mkdir dist
xcopy /e /y /h /r /q templates dist\templates\
copy theme.yaml dist
copy settings.yaml dist
copy README.md dist

