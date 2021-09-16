@echo off
REM for %%i IN (*) DO ECHO %%i

rem for /L %%i IN (1,1,5) DO ECHO %%i

for /L %%i IN (1,1,80) DO (^
echo %%i %cd%
xcopy %cd%\strScan %cd%\strScan_%%i /e /i /f /D
start /wait cmd /c "cd %cd%\strScan_%%i && python36 %cd%/strScan_%%i/test2.py"
start /wait cmd /c "cd %cd%\strScan_%%i && python3  %cd%/strScan_%%i/plotall.py"
)

for /D %%i in (*) do echo %%i