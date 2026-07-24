@echo off
title 批处理关闭休眠文件
echo 开始关闭休眠文件
powercfg -h off
echo 完成关闭
rem powercfg -h on
rem echo 恢复完成
pause