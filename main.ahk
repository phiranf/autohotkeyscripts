; This file will load all the other script files
; ==============================================


; CTRL + ALT + r to reload all scripts below
^!r::
  Tooltip, AHK Main script reloaded
  Sleep, 1000
  Reload
return

; Load all of these scripts
#Include mediakeys.ahk ; media controls
#Include windows.ahk ; window manipulation
