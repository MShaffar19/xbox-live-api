set OUTPUT_FOLDER=%1
if "%1" EQU "" set OUTPUT_FOLDER=c:\test
set TAEF_EXE="C:\Program Files (x86)\Windows Kits\10\Testing\Runtimes\TAEF\x64\TE.exe"
set MYPATH=%~dp0
set TE_DLL=%MYPATH:~0,-1%\..\..\..\Bins\Binaries\Debug\x64\Microsoft.Xbox.Services.UnitTest.141.TAEF\Microsoft.Xbox.Services.UnitTest.141.TAEF.dll 
mkdir %OUTPUT_FOLDER%
set /A X=1

%TAEF_EXE% /inproc /select:"not(@Ignore = 1)" %TE_DLL%
goto done

:help
echo run-all-tests-once-skip-ignore.cmd c:\test
:done