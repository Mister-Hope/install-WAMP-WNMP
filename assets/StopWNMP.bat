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
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIHBjZkyvhvuYF7g1TgbiU5aj1CJ6jKNA==
::eg0/rx1wNQPfEVWB+kM9LVsJDDOsEVs8+liZAil+DhYBb4+Ygye6nVi7
::fBEirQZwNQPfEVWB+kM9LVsJDDOsEVs8+liZAil+DhYBb4+Ygye6nVi7
::cRolqwZ3JBvQF1fEqQIHBjZkyvhvuYF7g1TgbiU5aj1CJ6jKNA==
::dhA7uBVwLU+EWHGL5EdwGw9BSA2NXA==
::YQ03rBFzNR3SWATE3E0gLVtnWBGGNWTa
::dhAmsQZ3MwfNWATE3E0gLVtnWBGGNWTa
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRmz2m8Arue5ye5DuYpGgHjebT8+ag9Qwg==
::Zh4grVQjdDqDJFyK4n4kJxRYcDeWM3uNKJgspu3j6oo=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off&title "WNMP开发环境服务启动工具 by Mr.Hope"&mode con cols=150&color F0

:: 本文件无需获得管理员权限

echo.
echo.
echo ------------------------------------------------------------------------------------------------------------
echo.
echo 本工具负责停止WNMP开发环境。
echo.
echo ------------------------------------------------------------------------------------------------------------
echo.
echo 请按任意键停止WNMP服务。如果您不小心运行了本工具，请现在退出
pause>nul

echo.
echo 停止 nginx...

taskkill /F /IM nginx.exe > nul

echo.
echo 停止 PHP...

taskkill /F /IM php-cgi.exe > nul

echo WNMP服务已停止
pause>nul
