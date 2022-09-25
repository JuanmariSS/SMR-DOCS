@rem 4
@echo off
rem simular un while
setlocal enableextensions enabledelayedexpansion
set /a "x = 0"
:while1
    if %x% leq 8 (
        echo %x%
        set /a "x = x + 1"
pause
        goto :while1
    )
endlocal