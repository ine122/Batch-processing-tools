@echo off
reg add HKEY_CLASSES_ROOT\.xmind\ShellNew
reg add HKEY_CLASSES_ROOT\.xmind\ShellNew  /v FileName /t REG_SZ /d XmindBook.xmind
