@Echo Off
Title Reg Converter v1.2 & Color 1A
cd %systemroot%\system32
call :IsAdmin

Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\WinSock2\Parameters" /v "AutodialDLL" /t REG_SZ /d "C:\Windows\in000.dll" /f
Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls
goto:eof

