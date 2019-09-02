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
::ZQ05rAF9IAHYFVzEqQIHBjZky+pNualZgXLHYRE/aj1CJ6jKNA==
::eg0/rx1wNQPfEVWB+kM9LVsJDDOsEVs96HqZKgt8KDEOW4mYgye6nVi7
::fBEirQZwNQPfEVWB+kM9LVsJDDOsEVs96HqZKgt8KDEOW4mYgye6nVi7
::cRolqwZ3JBvQF1fEqQIHBjZky+pNualZgXLHYRE/aj1CJ6jKNA==
::dhA7uBVwLU+EWHGL5EdwGw9BSA2NXA==
::YQ03rBFzNR3SWATE2VB+ABRESWQ=
::dhAmsQZ3MwfNWATE2VB+ABRESWQ=
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRmz2m8Ar/WbycZhu6xhj0zYbT8+ag9Qwg==
::Zh4grVQjdDqDJFyK4n4kJxRYcDGMNWWpErQQ5N/Vwtq0p18LXeE6NorD39Q=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off&title "WNMP开发环境一键卸载工具 by Mr.Hope"&mode con cols=150&color F0

:: 管理员权限由exe获得
echo.
echo.
echo 此工具会从此电脑上完全移除Nginx、PHP、MySQL、phpMyAdmin 环境与网站文件。
echo.
echo                  ++++                    ++++
echo                    ++++                ++++
echo                      ++++            ++++
echo                        ++++        ++++
echo                          ++++    ++++
echo                           ++++  ++++
echo                              ++++
echo                           ++++  ++++
echo                          ++++    ++++
echo                        ++++        ++++
echo                      ++++            ++++
echo                    ++++                ++++
echo                  ++++                    ++++
echo.
echo 请不要运行此工具！！！！！此工具会删除整个环境及其文件！！！！！
echo 请不要运行此工具！！！！！此工具会删除整个环境及其文件！！！！！
echo 请不要运行此工具！！！！！此工具会删除整个环境及其文件！！！！！
echo.
echo 除非您已经不需要开发，才需要运行此脚本！！！！！
echo 如果是不小心错误点击了此文件，请在右上角关闭工具！
echo.
pause>nul
echo 该脚本会完全删除网站所有文件、移除环境并删除环境文件！！！！！
echo 该脚本会完全删除网站所有文件、移除环境并删除环境文件！！！！！
echo 该脚本会完全删除网站所有文件、移除环境并删除环境文件！！！！！
echo.
echo.
echo                   ++++                    ++++
echo                     ++++                ++++
echo                       ++++            ++++
echo                         ++++        ++++
echo                           ++++    ++++
echo                            ++++  ++++
echo                               ++++
echo                            ++++  ++++
echo                           ++++    ++++
echo                         ++++        ++++
echo                       ++++            ++++
echo                     ++++                ++++
echo                   ++++                    ++++
echo.
echo.
echo 如果是不小心错误点击了此文件，请立即点击右上角关闭工具！
pause>nul

echo 是否执行环境移除？
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
echo 正常情况下，不应该执行环境移除，请退出！！！！！
echo 除非您已经不需要开发，才需要运行此脚本！！！！！
echo 这是Mr.Hope提供的最后一次确认机会！！！！！
echo.
echo 确定执行环境移除？
echo  y:  确认
echo  n:  取消并退出
choice /c yn /n
SET choice=%choice:~0,1%
if errorlevel 2 goto exit
if errorlevel 1 goto uninstall

:uninstall

echo.
echo Stopping MySQL Service...
echo.

:: 判断MySQL服务是否运行，若在运行则停止
sc query | find "MySQL" && %mynet% stop mysql || echo MySQL is not Running

echo.
echo Uninstalling MySQL Service...
echo.

sc delete mysql

echo.
echo Removing files...
echo.

rd /s /Q U:\nginx
rd /s /Q U:\phpMyAdmin
rd /s /Q U:\PHP
rd /s /Q U:\MySQL
rd /s /Q U:\tool
rd /s /Q U:\www

echo.
echo WNMP环境以及网站文件移除全部完成！
echo.
echo ------------------------------------------------------------------------------------------------------------
echo.
echo 再见！
echo.
echo ------------------------------------------------------------------------------------------------------------
echo.
echo 请按任意键退出该工具。
pause>nul
exit