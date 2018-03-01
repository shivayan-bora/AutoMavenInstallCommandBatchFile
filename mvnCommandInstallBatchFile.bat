@echo off
SET DEVELOPMENT_HOME=<CODE BASE PATH>

echo /******** Performing Maven Clean Install ********/

echo /******** Building  <Name of PLUGIN 1> ********/
cd %DEVELOPMENT_HOME%\<PLUGIN 1 PATH>\
call mvn clean install -Dmaven.test.skip=true 

if not "%ERRORLEVEL%" == "0" (
	echo /******** Error Encountered ********/
	echo Maven Install failed for <PLUGIN 1 PATH>
	goto :end
)

echo /******** All Builds Successful... ********/

:end
pause
echo /******** Ending Maven Clean Install ********/
exit /b