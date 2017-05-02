@echo off

rem WindowsPC デスクトップバックアップ用
rem 特定フォルダの新しいファイルのみを外付けハードディスクにコピー

set PCNAME=pc-name

echo %date% %time%
xcopy /w /d /s /e /y /h /EXCLUDE:C:\Users\%PCNAME%\Desktop\xcopy_ignore C:\xampp\htdocs N:\xampp\htdocs
xcopy /w /d /s /e /y /h /EXCLUDE:C:\Users\%PCNAME%\Desktop\xcopy_ignore C:\Users\%PCNAME%\Desktop\_work N:\_work 
xcopy /w /d /s /e /y /h /EXCLUDE:C:\Users\%PCNAME%\Desktop\xcopy_ignore C:\Users\%PCNAME%\Desktop\_storage N:\_storage 
xcopy /w /d /s /e /y /h /EXCLUDE:C:\Users\%PCNAME%\Desktop\xcopy_ignore C:\Users\%PCNAME%\Desktop\_desktop N:\_desktop 
xcopy /w /d /s /e /y /h /EXCLUDE:C:\Users\%PCNAME%\Desktop\xcopy_ignore C:\Users\%PCNAME%\Desktop\_shortcut N:\_shortcut 
cmd /k

pause
exit
