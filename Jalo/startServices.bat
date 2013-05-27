@echo off
title=COM Server

rem *************************************************************************
rem  This script is to start ABPP Server.
rem *************************************************************************

rem  Initialize the environment variables (if not already done).
call setupEnv.bat

rem start ABPP Server
%JAVA_HOME%\bin\java %JVM_MEM_ARGS%  -javaagent:%ECV_HOME%\lib\jolokia-jvm-1.1.1-agent.jar=port=7777,host=localhost %JVM_OPTIONS%  com.i2.xcore.xserver.Xserver %XSERVER% %XSERVICES%
if errorlevel 1 (
 pause
	exit 1
)
exit
