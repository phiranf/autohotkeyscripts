; Window shortcuts
; =========


; Minimize the current window
!e::
  WinMinimize, A
return

; Set current window always on top of other windows
^y::
  Winset, Alwaysontop, toggle, A
  WinGet, ExStyle, ExStyle, A

  if (ExStyle & 0x8 = 0) {
  ; inactive
    Tooltip, Un-Pin window
    WinMinimize, A
  } else {
  ; active
    Tooltip, Pin window
  }

  Sleep, 1000
  ToolTip
return

!^c::
  WinExist("A")
  WinGetPos,,, sizeX, sizeY
  WinMove, (A_ScreenWidth/2)-(sizeX/2), (A_ScreenHeight/2)-(sizeY/2)
return
