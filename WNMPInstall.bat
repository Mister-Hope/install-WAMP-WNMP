::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWGzeyEc+Pid5VTezECWoB6d8
::fBE1pAF6MU+EWGzeyEc+PidaSw2MJCWoB6d8
::fBE1pAF6MU+EWGzeyEc+PidkZDTMLmqoZg==
::fBE1pAF6MU+EWGzeyEc+PidERBSvJUq+C7wSpvr6/Yo=
::fBE1pAF6MU+EWGzeyEc+PidAQwuOcnm7FNU=
::fBE1pAF6MU+EWGzeyEc+PidiWQEHx7U/23eZPy1+Cj3Jp1UYNA==
::fBE1pAF6MU+EWGzeyEc+PidjRQqwHVn0A60ZiA==
::fBE1pAF6MU+EWGzeyEc+PidVXxeHKHiGBboS7uH8oeOJoQMNXPJf
::fBE1pAF6MU+EWGzeyEc+PidVXxeHKHiGD7sY7fC1/+KXwg==
::fBE1pAF6MU+EWGzeyEc+PidVXxeHKHiGC6Uv4fz+oemIrEt9
::fBE1pAF6MU+EWGzeyEc+PidVXxeHKHiGCLAS/dvy++/JoUITUoI=
::fBE1pAF6MU+EWGzeyEc+PidVXxeHKHiGCLIV5vC17OWJpC0=
::fBE1pAF6MU+EWGzeyEc+PidVXxeHKHiGFr0MpuH15oo=
::fBE1pAF6MU+EWGzeyEc+PidVXxeHKHiGFr0M1/D/6uiSpQBPGrVxKsKMlOfDNuNCvwj8LcASgC4UnMcAbA==
::fBE1pAF6MU+EWGzeyEc+PidVXxeHKHiGFr0MxfHa6+eOrAMeW+w5GA==
::fBE1pAF6MU+EWGzeyEc+PidVXxeHKHiGErAP/NvKw6SXql19
::fBE1pAF6MU+EWGzeyEc+PidVXxeHKHiGMZsx2N7+/fmOrUM0WuQwGA==
::YAwzoRdxOk+EWAjk
::fBw5plQjdDqDJFyK4n4xOwhRWBe+OmqsD7YT5qby7OXn
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZks0
::ZQ05rAF9IBncCkqN+0xwdVsFAlTi
::ZQ05rAF9IAHYFVzEqQIHBjZky+pNualZgm38YRw1aiRuKo74VvsSasHz1aSLQA==
::eg0/rx1wNQPfEVWB+kM9LVsJDDOsEVs96HqZKgt/NwoOVoOYmgu3u2q7
::fBEirQZwNQPfEVWB+kM9LVsJDIBawO5i7jPcKW02KW1zXcnBrmTJqAoRKDBT02TLJ8A7lhL1Jf2uUKs=
::cRolqwZ3JBvQF1fEqQIeLxJaVETTcjrsSORco6jLx9rH9QNOGrp/M8/2w4e/DKBGpBKqJ8BtnTpKkNshFTpccxulLlt68CAS9uNr+EJeUG8=
::dhA7uBVwLU+EWHGL5EdwGw9BSA2NXA==
::YQ03rBFzNR3SWATE2mceHXs=
::dhAmsQZ3MwfNWATE2VB+ABRESWQ=
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRkBKKK28uvRqekK6LLa
::Zh4grVQjdCuDJG6q2XJ+LQNRLA==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off&title "WNMP开发环境一键安装工具 by Mr.Hope"&mode con cols=120&color F0

:: 管理员权限由exe获得

echo ============================================================================================================
echo =====      此工具由Mr.Hope制作。                                                                     =======
echo =====      即将安装Nginx 1.16.1、PHP 7.3.8、MySQL5.7.26、phpMyAdmin4.9.0环境到你的电脑。             =======
echo.=====                                                                                                =======
echo =====      在运行工具之前请确认您已经创建盘符 U 的硬盘，硬盘空间应不少于3G，推荐5G以上空间。         =======
echo.=====                                                                                                =======
echo =====      请注意不要重复运行此工具。                                                                =======
echo ============================================================================================================
echo.

::设置写入磁盘与安装文件路径
set root=U:\
set nginx=%root%nginx
set php=%root%PHP
set phpmyadmin=%root%phpMyAdmin
set tool=%root%tool
set mysql=%root%MySQL
set webfolder=%root%www\wwwroot\nenuyouth
set webfolder2=%root%www\wwwroot\mp

::设置mysqld路径
set mysqld=%mysql%\bin\mysqld.exe

::设置net路径
set mynet=%SystemRoot%\system32\net

::设置host文件路径
set host=C:\WINDOWS\system32\drivers\etc\hosts

:: 判断是否存在U盘
if exist %root% (
  echo 找到U盘...
  goto versionRead
) else (
  echo 未找到盘符为U的本地磁盘！
  echo.
  echo 请创建盘符为U的本地磁盘，方法如下：
  echo. 
  echo ------------------------如何创建盘符U的本地磁盘---------------------------------
  echo. 
  echo 1. 使用即将弹出的窗口，或右击“开始菜单”，选择“磁盘管理”。
  echo.
  echo 2. 在您的最后一块硬盘的最后一个磁盘上右键，选择“压缩卷”。
  echo.
  echo 3. 在压缩空间量处输入“5134”并点击压缩。
  echo.
  echo 4. 在新出现的“未分配”空间上右键，选择“新建简单卷”，点击两次下一步。
  echo.
  echo 5. 分配以下驱动器号改为“U”，之后再次点击两次下一步，之后点击完成即可。
  echo.
  echo -------------------------------------------------------------------------------
  echo.
  echo 请按任意键弹出磁盘管理工具。
  pause>nul

  :: 弹出磁盘管理
  start diskmgmt.msc

  echo.
  echo 请在弹出的窗口进行操作。
  echo 创建成功并确认后，请再次运行此工具。
  goto exit
)


:exit
echo.
echo 清理安装包文件...
echo.

:: 删除安装包文件
if "%cd%" EQU "%~d0\" (
  :: 当前在盘符根目录下
  del %cd%MySQL.rar
  del %cd%nginx.rar
  del %cd%phpMyAdmin.rar
  del %cd%PHP.rar
  del %cd%tool.rar
  del %cd%WinRAR.exe
  del %cd%Vue图形工具.exe
  del %cd%nginx.conf
  del %cd%nenuSite.conf
  del %cd%mpSite.conf
  del %cd%phpMyAdmin.conf
  del %cd%php.ini
  del %cd%php_xdebug-2.7.2-7.3-vc15-x86_64.dll
  del %cd%config.inc.php
  del %cd%index.php
  del %cd%testSQL.php
  del %cd%WNMPVersionInfo
) else (
  :: 当前不在盘符根目录下
  del %cd%\MySQL.rar
  del %cd%\nginx.rar
  del %cd%\phpMyAdmin.rar
  del %cd%\PHP.rar
  del %cd%\tool.rar
  del %cd%\WinRAR.exe
  del %cd%\Vue图形工具.exe
  del %cd%\nginx.conf
  del %cd%\nenuSite.conf
  del %cd%\mpSite.conf
  del %cd%\phpMyAdmin.conf
  del %cd%\php.ini
  del %cd%php_xdebug-2.7.2-7.3-vc15-x86_64.dll
  del %cd%\config.inc.php
  del %cd%\index.php
  del %cd%\testSQL.php
  del %cd%\WNMPVersionInfo
)


echo 清理完成！
echo.
echo 请按任意键退出该工具。
pause>nul
exit


:versionRead
echo 请按任意键开始安装。
pause>nul

echo.
echo 检查版本信息
echo.

:: 设置历史版本
if exist %root%WNMPVersionInfo (
  echo 找到版本信息
  goto readNginxVersion
) else (
  echo 没有找到版本信息
  goto envCheck
)

:readNginxVersion
for /f "skip=1 delims=" %%a in (%root%WNMPVersionInfo) do (
  set nginxOldVersion=%%~a
  goto readPHPVersion
)

:readPHPVersion
for /f "skip=4 delims=" %%a in (%root%WNMPVersionInfo) do (
  set phpOldVersion=%%~a
  goto readMySQLVersion
)

:readMySQLVersion
for /f "skip=7 delims=" %%a in (%root%WNMPVersionInfo) do (
  set mysqlOldVersion=%%~a
  goto readphpMyAdmin
)

:readphpMyAdmin
for /f "skip=10 delims=" %%a in (%root%WNMPVersionInfo) do (
  set phpMyAdminOldVersion=%%~a
  goto versionSet
)

:versionSet
:: 设置当前版本
for /f "skip=1 delims=" %%a in (WNMPVersionInfo) do (
  if %nginxOldVersion% EQU %%~a (
    goto getPHPVersion
  ) else (
    goto getNginx
  )
)

:getNginx
set newNginx=true

:getPHPVersion
for /f "skip=4 delims=" %%a in (WNMPVersionInfo) do (
  if %phpOldVersion% EQU %%~a (
    goto getMySQLVersion
  ) else (
    goto getPHP
  )
)

:getPHP
set newPHP=true

:getMySQLVersion
for /f "skip=7 delims=" %%a in (WNMPVersionInfo) do (
  if %mysqlOldVersion% EQU %%~a (
    goto getphpMyAdmin
  ) else (
    goto getMySQL
  )
)

:getMySQL
set newMySQL=true

:getphpMyAdmin
for /f "skip=10 delims=" %%a in (WNMPVersionInfo) do (
  if %phpMyAdminOldVersion% EQU %%~a (
    goto envCheck
  ) else (
    goto getphpMyAdmin
  )
)

:getphpMyAdmin
set newphpMyAdmin=true

:envCheck
echo.
echo 开始安装前检查...
echo.

:: 停止可能存在的服务
taskkill /F /IM nginx.exe > nul
taskkill /F /IM php-cgi.exe > nul
taskkill /F /IM php.exe > nul

if exist %nginx% (
  if defined newNginx (
    echo =========================================================================
    echo ====                           新版本                                ====
    echo ====                   安装工具包含了新版Nginx                       ====
    echo =========================================================================
    echo ：
    echo.
    echo =========================================================================
    echo ====                           请注意                                ====
    echo ====       本次安装会移除旧的Nginx文件夹，请现在备份文件。           ====
    echo ====   请特别注意nginx/html文件夹，它是存放非绑定域名网站的文件夹。  ====
    echo =========================================================================
    echo ====                                                                 ====
    echo ====    如果只使用了www文件夹放置网站，那么覆盖安装没有任何影响。    ====
    echo ====                                                                 ====
    echo =========================================================================
    echo.
    echo 如果要进行覆盖安装，请现在确定是否需要备份文件，并立即备份文件至其他盘!
    echo.
    echo 请按任意键继续执行安装...

    pause>nul
    
    echo.
    echo 是否应用更新？
    echo.
    echo =========================================================================
    echo.
    echo  y:  =====更新Nginx======（推荐）
    echo      已备份，或无需备份
    echo.
    echo  n:  =====暂不更新Nginx======
    echo      不想更新Nginx，
    echo.
    echo  q:  =====取消安装过程并退出======
    echo      没有完成备份或无法备份，希望稍后安装。
    echo.
    echo =========================================================================
    echo.
    choice /c ynq /n
    SET choice=%choice:~0,1%
    if errorlevel 3 goto exit
    if errorlevel 2 goto notInstallNginx
    if errorlevel 1 goto installNginx
  ) else (
    echo =========================================================================
    echo ====                      Nginx已是最新版本                          ====
    echo ====             除非Nginx运行发生错误，否则无需覆盖安装             ====
    echo =========================================================================
    echo.
    echo 是否覆盖安装？
    echo.
    echo =========================================================================
    echo.
    echo  y:  =====覆盖安装Nginx======
    echo      现有Nginx无法正常工作
    echo.
    echo  n:  =====否=====（推荐）
    echo.
    echo =========================================================================
    echo.
    choice /c ynq /n
    SET choice=%choice:~0,1%
    if errorlevel 3 goto exit
    if errorlevel 2 goto notInstallNginx
    if errorlevel 1 goto installNginxWarning
  )
)

:installNginxWarning
echo.
echo =========================================================================
echo ====                       请注意                                    ====
echo ====      覆盖安装会移除旧的Nginx文件夹，请现在备份文件。            ====
echo ====   请特别注意nginx/html文件夹，它是存放非绑定域名网站的文件夹。  ====
echo =========================================================================
echo ====                                                                 ====
echo ====    如果只使用了www文件夹放置网站，那么覆盖安装没有任何影响。    ====
echo ====                                                                 ====
echo =========================================================================
echo.
echo 如果要进行覆盖安装，请现在确定是否需要备份文件，并立即备份文件至其他盘!
echo.
echo 请按任意键继续执行安装...

pause>nul

echo.
echo 是否继续安装？
echo.
echo =========================================================================
echo.
echo  y:  =====继续，覆盖安装Nginx=====
echo      已备份，或无需备份
echo.
echo  q:  =====取消安装并退出======
echo      没有完成备份或无法备份，希望稍后安装。
echo.
echo =========================================================================
echo.
choice /c yq /n
SET choice=%choice:~0,1%
if errorlevel 2 goto exit

:installNginx
set nginxInstall=1
goto checkPHP

:notInstallNginx
set nginxInstall=0

:checkPHP
if exist %php% (
  if defined newPHP (
    echo =================================================================
    echo                             提示
    echo                     安装工具包含了新版PHP
    echo =================================================================
    echo        更新时会移除旧的PHP版本，一般情况下，这不会造成影响
    echo =================================================================
    echo.
    echo      是否更新？
    echo.
    echo  y:  =====更新PHP======（推荐）
    echo.
    echo  n:  =====跳过PHP更新======
    echo.
    echo =================================================================
    echo.
    choice /c yn /n
    SET choice=%choice:~0,1%
    if errorlevel 2 goto notInstallPHP
    if errorlevel 1 goto installPHP
  ) else (
    echo =================================================================
    echo                             提示
    echo                        PHP已为最新版本
    echo                除非PHP运行发生错误，否则无需覆盖安装
    echo =================================================================
    echo.
    echo      是否覆盖安装？
    echo.
    echo  y:  =====覆盖安装PHP======
    echo      PHP运行报错
    echo.
    echo  n:  =====否======（推荐）
    echo.
    echo =================================================================
    echo.
    choice /c yn /n
    SET choice=%choice:~0,1%
    if errorlevel 2 goto notInstallPHP
    if errorlevel 1 goto installPHP
  )
)

:installPHP
set phpInstall=1
goto checkMySQL

:notInstallPHP
set phpInstall=０

:checkMySQL
if exist %mysql% (
  if defined newMySQL (
    echo =================================================================================
    echo                                     提示
    echo                                 MySQL存在更新
    echo =================================================================================
    echo ====                               请注意                                    ====
    echo ====                                                                         ====
    echo ====                   如果更新MySQL，您的数据库将丢失！                     ====
    echo ====                           请备份您的数据库                              ====
    echo =================================================================================
    echo.
    echo =================================================================================
    echo ====    如果MySQL执行出错需要覆盖安装，建议不进行任何操作、重新初始化数据库  ====
    echo ====                                                                         ====
    echo ====    否则，建议备份U:\MySQL\data文件夹，这是数据库文件                    ====
    echo ====    覆盖安装完成后，请手动终止MySQL服务。                        ====
    echo ====    将U:\MySQL\data删除，并将备份文件夹重新拷回至MySQL目录下             ====
    echo ====    重新启动MySQL服务即可完成数据库的恢复。                      ====
    echo =================================================================================
    echo.
    echo      是否更新？
    echo.
    echo  y:  =====更新MySQL======（推荐）
    echo      我已完成备份
    echo.
    echo  n:  =====跳过MySQL更新======
    echo.
    echo =================================================================================
    echo.
    choice /c yn /n
    SET choice=%choice:~0,1%
    if errorlevel 2 goto notInstallMySQL
    if errorlevel 1 goto installMySQL
  ) else (
    echo =================================================================================
    echo                                     提示
    echo                               MySQL已为最新版本
    echo =================================================================================
    echo.
    echo      除非MySQL出错，否则请跳过安装。
    echo.
    echo  y:  =====覆盖安装MySQL======
    echo.
    echo  n:  =====跳过MySQL安装======（推荐）
    echo.
    echo =================================================================================
    echo.
    choice /c yn /n
    SET choice=%choice:~0,1%
    if errorlevel 2 goto notInstallMySQL
    if errorlevel 1 goto installMySQL
  )
)

:MySQLWarning
echo =================================================================================
echo ====                               请注意                                    ====
echo ====                                                                         ====
echo ====                如果覆盖安装MySQL，您的数据库将丢失！                    ====
echo ====                      十分不建议覆盖安装MySQL                            ====
echo =================================================================================
echo.
echo =================================================================================
echo ====    如果MySQL执行出错需要覆盖安装，建议不进行任何操作、重新初始化数据库  ====
echo ====                                                                         ====
echo ====    否则，建议备份U:\MySQL\data文件夹，这是数据库文件                    ====
echo ====    覆盖安装完成后，请手动终止MySQL服务。                        ====
echo ====    将U:\MySQL\data删除，并将备份文件夹重新拷回至MySQL目录下             ====
echo ====    重新启动MySQL服务即可完成数据库的恢复。                      ====
echo =================================================================================
echo.
echo      请再次确认您需要覆盖安装MySQL。
echo.
echo  y:  =====覆盖安装MySQL======
echo      重新初始化数据库无法解决问题
echo.
echo  n:  =====跳过MySQL安装======（推荐）
echo.
echo =================================================================================
echo.
choice /c yn /n
SET choice=%choice:~0,1%
if errorlevel 2 goto notInstallMySQL

:installMySQL
set mysqlInstall=1
goto checkphpMyAdmin

:notInstallMySQL
set mysqlInstall=0

:checkphpMyAdmin
if exist %phpmyadmin% (
  if defined newphpMyAdmin ( 
    echo =================================================================================
    echo                                     提示
    echo                               phpMyAdmin存在更新
    echo =================================================================================
    echo ====                               请注意                                    ====
    echo ====                                                                         ====
    echo ====             如果覆盖安装phpMyAdmin，您的phpMyAdmin设置将丢失！          ====
    echo ====                       一般情况下，这不会造成影响                        ====
    echo =================================================================================
    echo.
    echo      是否更新phpMyAdmin？
    echo.
    echo  y:  =====更新phpMyAdmin======（推荐）
    echo.
    echo  n:  =====跳过phpMyAdmin更新======
    echo.
    echo =================================================================================
    echo.
    choice /c yn /n
    SET choice=%choice:~0,1%
    if errorlevel 2 goto notInstallphpMyAdmin
    if errorlevel 1 goto installphpMyAdmin
  ) else (
    echo =================================================================================
    echo                                     提示
    echo                               phpMyAdmin已为最新版本
    echo =================================================================================
    echo. 
    echo                     只有您的phpMyAdmin无法正常工作，才需要进行覆盖安装
    echo. 
    echo      是否覆盖安装？
    echo. 
    echo  y:  =====覆盖安装phpMyAdmin======
    echo.
    echo  n:  =====跳过phpMyAdmin安装======（推荐）
    echo.
    echo =================================================================================
    echo.
    choice /c yn /n
    SET choice=%choice:~0,1%
    if errorlevel 2 goto notInstallphpMyAdmin
  )
)

:installphpMyAdmin
set phpMyAdminInstall=1
goto install

:notInstallphpMyAdmin
set phpMyAdminInstall=0


:install
if exist %nginx% (
  echo 检测到旧版Nginx...
  echo.

  :: 是否需要覆盖安装Nginx
  if %nginxInstall% EQU 1 (
    echo 开始删除...

    :: 删除Nginx文件夹
    rd /s /Q %nginx%

    echo.
    echo 旧版Nginx移除成功！
  )
)

if exist %php% (
  echo 检测到旧版PHP
  echo.

  :: 是否需要覆盖安装PHP
  if %phpInstall% EQU 1 (
    echo 开始删除...

    :: 删除PHP文件夹
    rd /s /Q %php%

    echo.
    echo 旧版PHP移除成功！
  )
)

if exist %mysql% (
  echo 检测到旧版MySQL...
  echo.

  :: 判断MySQL服务是否运行，若在运行则停止
  sc query | find "MySQL" && %mynet% stop mysql || echo MySQL is not Running

  :: 是否需要覆盖安装MySQL
  if %mysqlInstall% EQU 1 (
    echo 开始删除...

    :: 删除MySQL文件夹
    rd /s /Q %mysql%

    echo.
    echo 旧版MySQL移除成功！
  )
)

if exist %phpmyadmin% (
  echo 检测到旧版phpMyAdmin...
  echo.

  :: 是否需要覆盖安装phpMyAdmin
  if %phpMyAdminInstall% EQU 1 (
    echo 开始删除...

    :: 删除MySQL文件夹
    rd /s /Q %phpmyadmin%

    echo.
    echo 旧版phpMyAdmin移除成功！
  )
)

if exist %tool% (
  echo 检测到旧版工具
  echo.
  echo 开始删除...

  :: 删除工具文件夹
  rd /s /Q %tool%
  del %root%\Vue图形工具.exe

  echo.
  echo 旧版工具移除成功！
)

echo.
echo 环境检查成功！可以安装！
echo.
echo ========================================
echo ====                                ====
echo ====            开始安装            ====
echo ====                                ====
echo ========================================

echo.
echo 写入Nginx环境文件...0%%
echo.

:: 是否需要覆盖安装Nginx
if %nginxInstall% equ 1 (
  :: 解压Nginx文件
  if "%cd%" EQU "%~d0\" (
    :: 当前在盘符根目录下
    WinRAR.exe x %cd%nginx.rar %root%
    copy %cd%nginx.conf %root%\nginx\conf
    mkdir %root%\nginx\conf\conf
    copy %cd%nenuSite.conf %root%\nginx\conf\conf
    copy %cd%mpSite.conf %root%\nginx\conf\conf
    copy %cd%phpMyAdmin.conf %root%\nginx\conf\conf
  ) else (
    :: 当前不在盘符根目录下
    WinRAR.exe x %cd%\nginx.rar %root%
    copy %cd%\nginx.conf %root%\nginx\conf
    mkdir %root%\nginx\conf\conf
    copy %cd%\nenuSite.conf %root%\nginx\conf\conf
    copy %cd%\mpSite.conf %root%\nginx\conf\conf
    copy %cd%\phpMyAdmin.conf %root%\nginx\conf\conf
  )

  echo 成功！
) else (
  echo 已跳过Nginx安装！
)

echo.
echo 写入PHP环境文件...30%%
echo.

:: 是否需要覆盖安装PHP
if %phpInstall% EQU 1 (
  :: 解压PHP文件，写入配置文件和Xdebug
  if "%cd%" EQU "%~d0\" (
    :: 当前在盘符根目录下
    WinRAR.exe x %cd%PHP.rar %root%
    copy %cd%php.ini %root%\PHP
    copy %cd%php_xdebug-2.7.2-7.3-vc15-x86_64.dll %root%\PHP\ext
  ) else (
    :: 当前不在盘符根目录下
    WinRAR.exe x %cd%\PHP.rar %root%
    copy %cd%\php.ini %root%\PHP
    copy %cd%\php_xdebug-2.7.2-7.3-vc15-x86_64.dll %root%\PHP\ext
  )

  echo 成功！
) else (
  echo 已跳过PHP安装！
)

echo.
echo 写入MySQL环境文件...45%%
echo.
echo 时间可能会较长请耐心等待...
echo.

:: 是否需要覆盖安装MySQL
if %mysqlInstall% equ 1 (
  :: 解压MySQL文件
  if "%cd%" EQU "%~d0\" (
    :: 当前在盘符根目录下
    WinRAR.exe x %cd%MySQL.rar %root%
  ) else (
    :: 当前不在盘符根目录下
    WinRAR.exe x %cd%\MySQL.rar %root%
  )

  echo 成功！
) else (
  echo 已跳过MySQL安装！
)

echo.
echo 写入phpMyAdmin环境文件...60%%
echo.

:: 是否需要覆盖安装phpMyAdmin
if %phpMyAdminInstall% equ 1 (
  :: 解压phpMyAdminb并写入配置文件
  if "%cd%" EQU "%~d0\" (
    :: 当前在盘符根目录下
    WinRAR.exe x %cd%phpMyAdmin.rar %root%
    copy %cd%config.inc.php %root%\phpMyAdmin
  ) else (
    :: 当前不在盘符根目录下
    WinRAR.exe x %cd%\phpMyAdmin.rar %root%
    copy %cd%\config.inc.php %root%\phpMyAdmin
  )

  echo 成功！
) else (
  echo 已跳过phpMyAdmin安装！
)

echo.
echo 检测MySQL状态...67%%
echo.

:: 是否需要覆盖安装MySQL
if %mysqlInstall% equ 1 (
  :: 判断是否存在MySQL服务，若存在则卸载
  sc query "MySQL" >nul && %mysqld% --remove mysql || echo MySQL not found

  echo 成功！
) else (
  echo MySQL已安装...
)

echo.
echo 本地解析写入host文件...69%%
echo.

:: 写入host文件
findstr /i /c:"manage.mysql.com" "%host%" >nul 2>nul && echo manage.mysql.com记录已存在！ || @echo 127.0.0.1 manage.mysql.com >>%host%
findstr /i /c:"nenu.com" "%host%" >nul 2>nul && echo nenu.com记录已存在！ || @echo 127.0.0.1 nenu.com >>%host%
findstr /i /c:"mp.nenu.com" "%host%" >nul 2>nul && echo mp.nenu.com记录已存在！ || @echo 127.0.0.1 mp.nenu.com >>%host%

echo 成功！

echo.
echo 复制Mr.Hope自制工具...70%%
echo.

:: 解压tools文件
if "%cd%" EQU "%~d0\" (
  :: 当前在盘符根目录下
  WinRAR.exe x %cd%tool.rar %root%
  copy %cd%Vue图形工具.exe %root%
) else (
  :: 当前不在盘符根目录下
  WinRAR.exe x %cd%\tool.rar %root%
  copy %cd%\Vue图形工具.exe %root%
)

echo 成功！

echo.
echo 创建网站文件夹...71%%
echo.

:: 判断www是否存在
if exist %root%www (
  goto checkwwwroot
) else (
  mkdir %root%www
  goto checkwwwroot
)

:: 判断wwwroot是否存在
:checkwwwroot
if exist %root%www\wwwroot (
  goto checknenuyouth
) else (
  mkdir %root%www\wwwroot
  goto checknenuyouth
)

:: 判断nenuyouth文件夹是否存在
:checknenuyouth
if exist %webfolder% (
  goto checkmp
) else (
  mkdir %webfolder%
  goto checkmp
)

:: 检查mp文件夹是否存在
:checkmp
if exist %webfolder2% (
  goto copywebsite
) else (
  mkdir %webfolder2%
  goto copywebsite
)

:copywebsite
:: 如果index.php不存在则拷贝文件
if not exist %webfolder%\index.php (
  if "%cd%" EQU "%~d0\" (
    :: 当前在盘符根目录下
    copy %cd%index.php %webfolder%
    copy %cd%testSQL.php %webfolder%
  ) else (
    :: 当前不在盘符根目录下
    copy %cd%\index.php %webfolder%
    copy %cd%\testSQL.php %webfolder%
  )
)

echo.
echo 安装MySQL服务...82%%
echo.

:: 是否需要覆盖安装MySQL
if %mysqlInstall% equ 1 (
  echo.
  echo 初始化MySQL...83%%
  echo.

  :: 无密码初始化mysql
  %mysqld% --initialize-insecure

  echo.
  echo 成功！
  echo.

  echo.
  echo 安装MySQL服务...87%%
  echo.

  :: 安装mysql
  %mysqld% install

  echo.
  echo 成功！
  echo.

  echo.
  echo 启动mySQL服务...90%%
  echo.

  :: 启动mysql服务
  net start mysql

  echo.
  echo 成功！
  echo.

  echo.
  echo 首次登录数据库并设置密码...93%%
  echo.

  ::前往设置密码
  goto setSQLPassword
) else (
  echo MySQL服务已存在！

  echo.
  echo 启动mySQL服务...90%%
  echo.

  :: 启动mysql服务
  net start mysql

  echo.
  goto checkSQLStatus
)

:setSQLPassword
::这里设置是否隐藏bat窗口,如果是请将"set hideform=False"改成"set hideform=True"即可.
set hideform=False

::对话框中要显示的内容
set "message=密码不能太简单，至少要包含大写字母、小写字母、数字与符号的三种，且不得少于8位，否则会设置失败。可以使用预设的Bigboss666!"

::对话框的标题
set "title=请设置数据库root用户密码："

::输入框中的内容注释 (set "note=")为空
set "note=Bigboss666!"

if /i "%hideform%"=="True" (
if "%1"=="h" goto begin
mshta vbscript:createobject^("wscript.shell"^).run^("%~nx0 h",0^)^(window.close^)&&exit
)

:begin
set "vbs=%Temp%\GotUserInputedDataProgram.vbs"
set "data=%Temp%\UserInputedData.tmp"
:: 开始设置对话框
if exist "%vbs%" del /s /q /f "%vbs%">nul
::delete file
echo On Error Resume Next>>"%vbs%"
echo Dim fso,wri,data,file>>"%vbs%"
echo Set fso=Wscript.CreateObject^("Scripting.FileSystemObject"^)>>"%vbs%"
echo file="%data%">>"%vbs%"
echo if fso.FileExists^(file^) Then fso.DeleteFile^(file^)>>"%vbs%"
echo Set wri=fso.CreateTextFile^(file,True^)>>"%vbs%"
echo data=InputBox^("%message%","%title%","%note%"^)>>"%vbs%"
echo wri.Write data>>"%vbs%"
echo wri.Close>>"%vbs%"
echo Set fso=Nothing>>"%vbs%"
echo Set op=Nothing>>"%vbs%"
echo fso.DeleteFile^(Wscript.ScriptFullName^)>>"%vbs%"
echo Wscript.Quit>>"%vbs%"

call "%vbs%"
for /f "delims=" %%i in (%data%) do set "password=%%i"
if exist "%vbs%" del /s /q /f "%data%">nul
if exist "%vbs%" del /s /q /f "%vbs%">nul
::开始弹出对话框

echo.
echo =======================================
echo     你设置的密码为"%password%"。
echo =======================================
echo.

::生成MySQL密码设置指令到临时文件
echo ALTER USER 'root'@'localhost' IDENTIFIED BY '%password%' > %root%temp.txt

:: 以root用户身份连接并设置密码
U:\MySQL\bin\mysql.exe -u root --skip-password < %root%temp.txt

::删除临时文件
del %root%temp.txt

goto deleteFile

:checkSQLStatus
:: 判断MySQL服务是否运行
sc query | find "MySQL" && set mysqlRunning=1 || set mysqlRunning=0

if %mysqlRunning% EQU 1 (
  echo 成功！
  echo.
) else (
  if %mysqlInstall% EQU 1 (
    :: 覆盖安装了MySQL但启动失败
    echo ==================================================
    echo ====           MySQL服务启动失败              ====
    echo ====          请立即汇报给Mr.Hope！           ====
    echo ==================================================
    echo.
  ) else (
    :: 跳过了MySQL安装但启动失败
    echo ==================================================
    echo ====           MySQL服务启动失败              ====
    echo ====   请重新运行本工具——选择覆盖安装MySQL    ====
    echo ==================================================
    echo.
  )
)

:deleteFile
echo.
echo 生成版本信息...96%%
echo.

if "%cd%" EQU "%~d0\" (
  :: 当前在盘符根目录下
  copy %cd%WNMPVersionInfo %root%
) else (
  :: 当前不在盘符根目录下
  copy %cd%\WNMPVersionInfo %root%
)

echo.
echo 清理安装包文件...98%%
echo.

:: 删除安装包文件
if "%cd%" EQU "%~d0\" (
  :: 当前在盘符根目录下
  del %cd%MySQL.rar
  del %cd%nginx.rar
  del %cd%phpMyAdmin.rar
  del %cd%PHP.rar
  del %cd%tool.rar
  del %cd%WinRAR.exe
  del %cd%Vue图形工具.exe
  del %cd%nginx.conf
  del %cd%nenuSite.conf
  del %cd%mpSite.conf
  del %cd%phpMyAdmin.conf
  del %cd%php.ini
  del %cd%php_xdebug-2.7.2-7.3-vc15-x86_64.dll
  del %cd%config.inc.php
  del %cd%index.php
  del %cd%testSQL.php
  del %cd%WNMPVersionInfo
) else (
  :: 当前不在盘符根目录下
  del %cd%\MySQL.rar
  del %cd%\nginx.rar
  del %cd%\phpMyAdmin.rar
  del %cd%\PHP.rar
  del %cd%\tool.rar
  del %cd%\WinRAR.exe
  del %cd%\Vue图形工具.exe
  del %cd%\nginx.conf
  del %cd%\nenuSite.conf
  del %cd%\mpSite.conf
  del %cd%\phpMyAdmin.conf
  del %cd%\php.ini
  del %cd%\php_xdebug-2.7.2-7.3-vc15-x86_64.dll
  del %cd%\config.inc.php
  del %cd%\index.php
  del %cd%\testSQL.php
  del %cd%\WNMPVersionInfo
)

echo 成功！

echo.
echo ...100%%
echo.
echo 安装完成!
echo.
echo ====================================================================================================================
echo                                                   请测试
echo.
echo           请在浏览器中访问nenu.com，如显示“安装成功”字样并输出php信息，Nginx与PHP环境即配置成功！
echo.
echo           请点击nenu.com中MySQL信息下的点击测试，如显示“链接成功”字样，MySQL环境即配置成功！
echo           如果您自定义了数据库密码，请按照网页提示操作。
echo.
echo           请访问manage.mysql.com，并使用root用户名与默认密码Bigboss666!登录，如果登陆成功，phpMyAdmin环境即配置成功！
echo           如果您自定义了数据库密码，请输入您设置的密码而不是默认密码。
echo.
echo           如果遇到了其他问题请汇报给Mr.Hope。
echo.
echo.
echo ====================================================================================================================
echo.
echo     Tips：
echo.
echo     网站的根目录为“ U:\www\wwwroot\nenuyouth”，任何放置在此文件夹下的文件即可在本地通过浏览器使用nenu.com访问。
echo     Nginx、phpMyAdmin、PHP、MySQL文件夹为开发环境所需文件，请不要进行任何操作。
echo     tool文件夹下的其他脚本请根据情况酌情使用。
echo.
echo ====================================================================================================================
echo.
echo 请按任意键退出该工具。

pause>nul
exit