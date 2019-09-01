::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdDqDJFyK4n4xOwhRWBe+OmqsD7YT5qby7OXn
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIRBSvSsOkH1qo9wW6VESx+OC8CR5p9
::eg0/rx1wNQPfEVWB+kM9LVsJDCWvDO1G6zD2KW88NGN+ZsjKkWfar+8=
::fBEirQZwNQPfEVWB+kM9LVsJDIFe3O5V9zLyJ205DGx7T8j3lWX4owYiHjFZ5WX2PSU=
::cRolqwZ3JBvQF1fEqQK19PvRo/UF0qQ/xFaaFAV+BSsAZZaUrSa6r0peP2Pu
::dhA7uBVwLU+EWHGL5EdwGw9BSA2NXA==
::YQ03rBFzNR3SWATE2VB+ABRESWQ=
::dhAmsQZ3MwfNWATE2VB+ABRESWQ=
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRkBKKK1x+rTossH/og8+liZAil8KDEOW4mYgye6nVi7
::Zh4grVQjdDqDJFyK4n4kJxRYcDaHMWSsA4I9xdjI6viRq04YGucnfe8=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off&title "WAMP开发环境服务移除工具 by Mr.Hope"&mode con cols=150&color F0

:: 管理员权限由exe获得

echo.
echo ------------------------------------------------------------------------------------------------------------
echo.
echo 本工具会移除WAMP环境中的Apache与MySQL服务。
echo.
echo ------------------------------------------------------------------------------------------------------------
echo.
echo 正常情况下，不应该执行服务移除，请退出！！！！！
echo 正常情况下，不应该执行服务移除，请退出！！！！！
echo 正常情况下，不应该执行服务移除，请退出！！！！！
echo.
pause>nul
echo 是否执行服务移除？
echo  y:  确认
echo  n:  取消并退出
choice /c yn /n
SET choice=%choice:~0,1%
if errorlevel 2 goto exit
if errorlevel 1 goto confirm

:exit
echo 请按任意键退出该工具。
pause>nul
exit

:confirm
echo 正常情况下，不应该执行服务移除，请退出！！！！！
echo 这是Mr.Hope提供的最后一次确认机会！！！！！
echo.
echo 确定执行环境移除？
echo  y:  确认
echo  n:  取消并退出
choice /c yn /n
SET choice=%choice:~0,1%
if errorlevel 2 goto exit
if errorlevel 1 goto remove

:remove
echo stop Apache service...

rem 判断Apache服务是否运行，若在运行则停止
sc query|find "Apache2.4" && %SystemRoot%\system32\net stop Apache2.4 || echo Apache is not Running

echo stop MySQL service...

:: 判断MySQL服务是否运行，若在运行则停止
sc query | find "MySQL" && %mynet% stop mysql || echo MySQL is not Running

echo uninstalling Apache service...

U:\Apache\bin\httpd.exe -k uninstall

echo Uninstalling MySQL Service...

U:\MySQL\bin\mysqld.exe uninstall

echo.
echo 服务已移除，按任意键退出。
pause>nul
exit