@echo off
set "TyporaPath=D:\Typora\Typora.exe"

reg add "HKEY_CLASSES_ROOT\*\shell\Open with Typora" /ve /d "Open Typora File" /f
reg add "HKEY_CLASSES_ROOT\*\shell\Open with Typora\command" /ve /d "\"%TyporaPath%\" \"%%1\"" /f

reg add "HKEY_CLASSES_ROOT\.md\shell\Open with Typora" /ve /d "Open Typora File" /f
reg add "HKEY_CLASSES_ROOT\.md\shell\Open with Typora\command" /ve /d "\"%TyporaPath%\" \"%%1\"" /f

pause