::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWGzeyEc+PidVXxeHKHiGNKASwOH/6++JgUITR+0zfcHewrHu
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
::ZQ05rAF9IAHYFVzEqQIHBjZkyvhvuYF7g0XTbQIzaj1CJ6jKNA==
::eg0/rx1wNQPfEVWB+kM9LVsJDDOsEVs8+liZAil+HyUCSIWYgye6nVi7
::fBEirQZwNQPfEVWB+kM9LVsJDDOsEVs8+liZAil+HyUCSIWYgye6nVi7
::cRolqwZ3JBvQF1fEqQIHBjZkyvhvuYF7g0XTbQIzaj1CJ6jKNA==
::dhA7uBVwLU+EWHGL5EdwGw9BSA2NXA==
::YQ03rBFzNR3SWATE3E0gLVtnWBGGNWTa
::dhAmsQZ3MwfNWATE3E0gLVtnWBGGNWTa
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRmz2m8Arue5ye5DuZt1g1/UbT8+ag9Qwg==
::Zh4grVQjdDqDJFyK4n4kJxRYcDeWPXmuMZsx2Kb+9+/n
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
echo 每次启动电脑后，开发环境不会自动启动。如果您需要WNMP开发环境，需要运行本工具。
echo.
echo ------------------------------------------------------------------------------------------------------------
echo.
echo 请按任意键启动WNMP服务。
pause>nul

:: 设置PHP与Nginx地址
set php_home=/PHP
set nginx_home=/nginx

:: 每个进程处理的最大请求数，或设置为 Windows 环境变量
set PHP_FCGI_MAX_REQUESTS=1000

echo.
echo 启动 PHP...
echo.

:: Starting PHP FastCGI...
RunHiddenConsole %php_home%/php-cgi.exe -b 127.0.0.1:9000 -c %php_home%/php.ini

echo.
echo 启动 nginx...
echo.

:: Starting nginx...
RunHiddenConsole %nginx_home%/nginx.exe -p %nginx_home%

echo.
echo WNMP服务启动完成。
pause>nul