@echo off
set _dir=%~dsp0
set path=%_dir%;%path%
set conf=%_dir%\video

youtube-dl.exe --version --config-location %conf%
youtube-dl.exe -U --config-location %conf%
youtube-dl.exe --version --config-location %conf%
echo.
echo Als Video-Datei herunterladen...
set /p url=Url:
youtube-dl.exe --config-location %conf% %url%
pause