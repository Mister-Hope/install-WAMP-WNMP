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
::ZQ05rAF9IAHYFVzEqQIRBSvSsOkH1qo/50maJSp+OC8CR5p9
::eg0/rx1wNQPfEVWB+kM9LVsJDCWvDO1G6zD2KW0aE2xKYMjKkWfar+8=
::fBEirQZwNQPfEVWB+kM9LVsJDIFe3O5V9zLyJ205DGx7T8j3lWfehAkWGDFZ5WX2PSU=
::cRolqwZ3JBvQF1fEqQK19PvRo/UF0qQ/xFaaFAV+BSsCQ7GbmSC6r0peP2Pu
::dhA7uBVwLU+EWHGL5EdwGw9BSA2NXA==
::YQ03rBFzNR3SWATE2VB+ABRESWQ=
::dhAmsQZ3MwfNWATE2VB+ABRESWQ=
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRkBKKK1x+rTossH/og8+liZAil+DhYBb4+Ygye6nVi7
::Zh4grVQjdDqDJFyK4n4kJxRYcDeWM3uNJ5gspu3j6oo=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off&title "WAMP开发环境服务停止工具 by Mr.Hope"&mode con cols=180&color F0

:: 管理员权限由exe获得

echo.
echo.
echo ------------------------------------------------------------------------------------------------------------
echo.
echo 如暂不需要运行WAMP开发环境，此工具可以停止WAMP开发环境。
echo.
echo ------------------------------------------------------------------------------------------------------------
echo.
echo 请按任意键停止服务，如果不小心运行了此工具，请现在退出。
pause>nul

:checkRun

:: 判断Apache服务是否运行，若在运行则停止
sc query | find "Apache2.4" && set apache=1 || set apache=0

echo.
if %apache% EQU 1 (
  %SystemRoot%\system32\net stop Apache2.4
  echo 已停止Apache2.4。
) else (
  echo Apache未在运行！
)

echo.

:: 判断MySQL服务是否运行，若在运行则停止
sc query | find "MySQL" && set MySQL=1 || set MySQL=0

echo.

if %MySQL% EQU 1 (
  %SystemRoot%\system32\net stop mysql
  echo 已停止MySQL
) else (
  echo MySQL未在运行！
)

echo.
echo 按任意键退出。
pause>nul
exit