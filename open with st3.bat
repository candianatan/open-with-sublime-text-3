@echo off
SET path=C:\Program Files\Sublime Text 3\sublime_text.exe


@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text 3"	/t REG_SZ /v "" /d "Open with Sublime Text 3" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text 3"	/t REG_EXPAND_SZ /v "Icon" /d "%path%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text 3\command" /t REG_SZ /v "" /d "%path% \"%%1\"" /f


@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text 3"	/t REG_SZ /v "" /d "Open with Sublime Text 3" /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text 3"	/t REG_EXPAND_SZ /v "Icon" /d "%path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text 3\command" /t REG_SZ /v "" /d "%path% \"%%1\"" /f
