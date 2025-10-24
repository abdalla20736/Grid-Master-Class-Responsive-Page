@echo off
setlocal enabledelayedexpansion

for %%f in (*_*) do (
    set "filename=%%f"
    for /f "tokens=1* delims=_" %%a in ("!filename!") do (
        set "newname=%%b"
        if defined newname (
            ren "!filename!" "!newname!"
        )
    )
)
echo Renaming complete.
pause