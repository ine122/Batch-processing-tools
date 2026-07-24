@echo off
taskkill /f /im explorer.exe
cd /d %userprofile%\AppData\Local
del lconCache.db /a
start explorer.exe
