@echo off

del %cd%\create

set modTitleName=
set modDescription=
set modName=
set rootSrc=%userprofile%\Zomboid\mods

if not exist %rootSrc% (
	echo Mod folder is not found
	exit /b
)

set folders=\media \media\anims_x \media\animsets \media\lua \media\lua\client \media\lua\server \media\lua\shared \media\maps \media\models_x \media\scripts \media\sound \media\texturepacks \media\textures \media\ui

:get_mod_name
set /p modTitleName="Type mod name: "
if not defined modTitleName (
	goto get_mod_name
)

set modName=%modTitleName: =_%
set rootSrc=%rootSrc%\%modName%
mkdir %rootSrc%

:get_mod_description
set /p modDescription="Type mod description: "
if not defined modDescription (
	goto get_mod_description
)

for %%f in (%folders%) do (
	if not exist %rootSrc%%%f (
		mkdir %rootSrc%%%f
	)
)

echo name=%modTitleName% > %cd%\mod.info
echo id=%modName% >> %cd%\mod.info
echo description=%modDescription% >> %cd%\mod.info
echo poster=poster.png >> %cd%\mod.info
echo require= >> %cd%\mod.info
echo url= >> %cd%\mod.info

for /f %%a in ('dir %cd% /b') do (
	if not %%a==create.cmd (
		move "%cd%\%%a" "%rootSrc%"
	)
)

echo @echo off > %rootSrc%\complete.cmd
echo cd %rootSrc% >> %rootSrc%\complete.cmd
echo del %cd%\create.cmd >> %rootSrc%\complete.cmd
echo rmdir /q %cd% >> %rootSrc%\complete.cmd
echo del %rootSrc%\complete.cmd >> %rootSrc%\complete.cmd
cd ..
call %rootSrc%\complete.cmd
