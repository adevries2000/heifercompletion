::Developed by Albert De Vries, University of Florida, devries@ufl.edu


@echo off

title Heifer Completion Calculator
echo batch name: %~nx0
set  "mydir=%cd%"
echo directory = %mydir%
echo ... Leaving batch file ...

"%mydir%\HeiferCompletion-app.exe" "%mydir%\heifer1.csv" -secondFile "%mydir%\heifer2.csv" -thirdFile "%mydir%\heifer3.csv"

echo ... Back to batch file: %~nx0 ...

if %ErrorLevel% equ 0 (
	echo Success. See HeiferCompletion_Log.txt 
) else (
    echo Error %ErrorLevel%. See HeiferCompletion_Log.txt
    pause
)

timeout /t 5