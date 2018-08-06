::-----------------------------------
::     Change these variables       |
::-----------------------------------

::Path to your AddonBuilder.exe
SET ADDON_BUILDER_PATH="E:\Program Files (x86)\SteamLibrary\steamapps\common\Arma 3 Tools\AddonBuilder\AddonBuilder.exe"

::-----------------------------------
::   Do not change anything below   |
::-----------------------------------

::Source folder path
SET SOURCE_PATH=%CD%\AntistasiServerUtility

::Destination folder path
SET DEST_PATH=%CD%\@AntistasiServerUtility\Addons

::Path ot the file with fildcards to include into the .pbo
SET WILDCARDS_PATH=%CD%\Wildcards.txt

::Call the Addon Builder
%ADDON_BUILDER_PATH% "%SOURCE_PATH%" "%DEST_PATH%" -clear -include="%WILDCARDS_PATH%"

pause