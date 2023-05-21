; This file will load all the other script files
; ==============================================


; CTRL + ALT + r to reload all scripts below
^!r::
  Tooltip, AHK Main script reloaded
  Sleep, 1000
  Reload
return

; Remap capslock to esc
Capslock::Esc

; Load all of these scripts
#Include mediakeys.ahk ; media controls
#Include windows.ahk ; window manipulation
#Include altmove.ahk ; Move windows while holding alt
#Include ms_teams.ahk ; Move windows while holding alt
#Include umlauts.ahk ; Hotkeys for german keyboard layout
