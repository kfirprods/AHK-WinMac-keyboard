# AHK-WinMac-keyboard
AHK script to make your Windows feel like a Mac (e.g. Alt+C maps to Ctrl+C).

## How to run the script
- Download and install AutoHotkey from the official website https://www.autohotkey.com/
- Clone or download this repository
- Double-click the `MacKeyboard.ahk` file to run it once

## How to make the script run automatically on Windows startup
- Create a shortcut of `MacKeyboard.ahk`
- Move the shortcut to your "Startup" folder (WinKey+R to open "Run", then paste `shell:startup`)

## Additional tips
- If your windows has **more than one input languages installed** then the Alt+Shift key combination will drive you crazy when selecting text with keyboard shortcuts. Follow [this stack exchange thread](https://superuser.com/questions/698037/can-i-disable-the-altshift-shortcut-to-change-language-in-windows-8-1-or-win) to disable this combination.
- This script maps Ctrl+LeftClick to behave as RightClick, which is neat when using a Laptop's trackpad but not at all useful when using a mouse. Just comment out the relevant line to restore the native Ctrl+LeftClick functionality
