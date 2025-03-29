@echo off
TITLE yt-dlp Gui
:menu
cls
echo Yt-Dlp Gui - Pt-Br (v1.0.3) [.bat by LorttyNK]
echo --------------------------------
echo [Downloads]
echo 1. Baixar em .mp4;
echo 2. Baixar em .wav;
echo 3. Baixar em .mp3;
echo 4. Baixar Thumbnail em .png;
echo --------------------------------
echo [Gerenciamento]
echo 5. Instalar yt-dlp + Requerimentos;
echo 6. Atualizar;
echo 7. Desinstalar;
echo 8. Help/FAQ;
echo --------------------------------

set /p menu=Escreva um numero: 

if %menu% equ 1 goto 1
if %menu% equ 2 goto 2
if %menu% equ 3 goto 3
if %menu% equ 4 goto 4
if %menu% equ 5 goto 5
if %menu% equ 6 goto 6
if %menu% equ 7 goto 7
if %menu% equ 8 goto 8
goto error

REM BAIXAR EM MP4

:1
cls
echo Yt-Dlp Gui - Pt-Br [.bat by LorttyNK]
echo --------------------------------
set /p mp4=Digite o link: 
yt-dlp %mp4% -P "%USERPROFILE%\Downloads" -S vcodec:h264,res,acodec:m4a --no-mtime 
echo !
echo --------------------------------
echo Verifique: "%USERPROFILE%\Downloads"
echo --------------------------------
pause
goto menu

REM BAIXAR EM WAV

:2
cls
echo Yt-Dlp Gui - Pt-Br [.bat by LorttyNK]
echo --------------------------------
set /p wav=Digite o link: 
yt-dlp %wav% -P "%USERPROFILE%\Downloads" -x --audio-format wav --no-mtime 
echo !
echo --------------------------------
echo Verifique: "%USERPROFILE%\Downloads"
echo --------------------------------
pause
goto menu

REM BAIXAR EM MP3

:3
cls
echo Yt-Dlp Gui - Pt-Br [.bat by LorttyNK]
echo --------------------------------
set /p mp3=Digite o link: 
yt-dlp %mp3% -P "%USERPROFILE%\Downloads" -x --audio-format mp3 --no-mtime 
echo !
echo --------------------------------
echo Verifique: "%USERPROFILE%\Downloads"
echo --------------------------------
pause
goto menu

REM BAIXAR THUMB EM PNG

:4
cls
echo Yt-Dlp Gui - Pt-Br [.bat by LorttyNK]
echo --------------------------------
set /p thumbnail=Digite o link: 
yt-dlp %thumbnail% -P "%USERPROFILE%\Downloads" --write-thumbnail --convert-thumbnails png --no-mtime 
echo !
echo --------------------------------
echo Verifique: "%USERPROFILE%\Downloads"
echo --------------------------------
pause
goto menu

REM BAIXAR YT-DLP

:5
cls
echo Yt-Dlp Gui - Pt-Br [.bat by LorttyNK]
echo --------------------------------
echo Aguarde...
winget install yt-dlp.yt-dlp
winget install Gyan.FFmpeg
winget install yt-dlp
winget install FFmpeg
winget install FFprobe
echo Atual versao do yt-dlp
yt-dlp --version
pause
goto menu

REM ATUALIZAR

:6
cls
echo Yt-Dlp Gui - Pt-Br [.bat by LorttyNK]
echo --------------------------------
echo Atual versao do yt-dlp
yt-dlp --version
echo Aguarde...
yt-dlp -U
pause
goto menu

:7
cls
echo Yt-Dlp Gui - Pt-Br [.bat by LorttyNK]
echo --------------------------------
echo Aguarde...
winget uninstall yt-dlp
winget uninstall FFmpeg
winget uninstall FFprobe
pause
goto menu


REM AJUDA

:8
cls
echo Yt-Dlp Gui - Pt-Br [.bat by LorttyNK]
echo --------------------------------
echo [Help - FAQ]
echo --------------------------------
echo Youtube:
echo 1. Caso voce deseja baixar algum video privado, ou algum video de conteudo exclusivo para membros sera necessario colocar os cookies no yt-dlp para baixa-los;
echo --------------------------------
echo Spotify:
echo 1. Nao sera possivel baixar qualquer link do Spotify pela regra de copyright;
echo --------------------------------
echo Twitter/X:
echo 1. Caso o seu donwload nao funcione, no twitter o video pode estar em alerta de NSFW pelo criador:
echo ERROR: [twitter] 1747648411703091554: NSFW tweet requires authentication. 
echo Use --cookies, --cookies-from-browser, --username and --password, --netrc-cmd, or --netrc (twitter) to provide account credentials.
echo --------------------------------
pause
goto menu

:9
cls
echo Yt-Dlp Gui - Pt-Br [.bat by LorttyNK]
echo --------------------------------
echo [GitHub]
echo --------------------------------
echo https://github.com/LorttyNK/yt-dlp-GUI-OpenSource
start https://github.com/LorttyNK/yt-dlp-GUI-OpenSource
echo --------------------------------
pause
goto menu


REM ERROR

:error
cls
echo Yt-Dlp Gui - Pt-Br [.bat by LorttyNK]
echo --------------------------------
echo Houve algum erro, vamos te colocar novamente no menu
pause
goto menu