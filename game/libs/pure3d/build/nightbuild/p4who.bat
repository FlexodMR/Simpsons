@echo off

set MYGREP=Tools\grep.exe
set DEFNUM=50

if "%1" == "sw" (
	if "%2"	== "" (
		p4 changes -m %DEFNUM% | %MYGREP% -f progpat.txt
	) else (
		p4 changes -m %2 | %MYGREP% -f progpat.txt
	)
) else if "%1" == "24" (
	if "%2"	== "" (
		perl changes_24h.pl | %MYGREP% -f progpat.txt
	) else (
		perl changes_24h.pl | %MYGREP% -e %2
	)
) else if not "%1" == "" (
	if "%2"	== "" (
		p4 changes -m %DEFNUM%  | %MYGREP% -e %1
	) else (
		p4 changes -m %2 | %MYGREP% -e %1
	)
) else (
	echo.
	echo Syntax: p4who [sw^|"user"] [maximum number of changes]
	echo Syntax: p4who 24 ["user]
)