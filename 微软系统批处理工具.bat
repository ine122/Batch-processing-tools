@echo off
title 微软系统批处理工具
mode con lines=30 cols=60 & color 0a

:jiemian
cls
echo ==============================================
echo        请选择要进行的选项，然后回车确定
echo ==============================================
echo.
echo  [1] 虚拟键盘      [7] 本地安全策略      [13] 网卡设置
echo  [2] 注册表        [8] 计算器
echo  [3] 磁盘清理      [9] 任务管理器
echo  [4] 控制面板     [10] 设备管理器
echo  [5] 远程桌面     [11] 系统配置
echo  [6] 服务         [12] 系统信息
echo.
echo  [Q] 退出
echo.
echo ==============================================
set /p a=请输入选项：

2>nul (echo %a%|findstr "^[1-9]$ ^1[0-3]$ ^[Qq]$") && (
    goto :opt%a%
) || (
    echo 输入错误，请重新选择！
    timeout /t 2 >nul
    goto :jiemian
)

:opt1
start osk
goto :jiemian

:opt2
start regedit
goto :jiemian

:opt3
start cleanmgr
goto :jiemian

:opt4
start control
goto :jiemian

:opt5
start mstsc
goto :jiemian

:opt6
start services.msc
goto :jiemian

:opt7
start secpol.msc
goto :jiemian

:opt8
start calc
goto :jiemian

:opt9
start taskmgr
goto :jiemian

:opt10
start devmgmt.msc
goto :jiemian

:opt11
start msconfig
goto :jiemian

:opt12
start msinfo32
goto :jiemian

:opt13
start ncpa.cpl
goto :jiemian

:optQ
:optq
exit