; Easy window dragging
; =====================

;  credits:
;
; alt + click window dragging
;    https://autohotkey.com/board/topic/25106-altlbutton-window-dragging/
;
; Changing the mouse cursor while doing so
;    https://autohotkey.com/board/topic/32608-changing-the-system-cursor/
;



#SingleInstance Force

;--------------------------------------------------
; Window dragging via alt+lbutton                 -
; Author: Lasmori (email AT lasmori D0T com)      -
; http://www.autohotkey.com/forum/topic27487.html -
;--------------------------------------------------
!LButton::

; Fixed to move background windows properly
CoordMode, Mouse, Screen

MouseGetPos, , , id ; get ID of window under cursor
WinGetPos, win_x, win_y, , , ahk_id %id% ; get upper left corner of window
MouseGetPos, current_x, current_y, window_id ; get cursor position on the screen (not relative to window)
cur_win_x := current_x - win_x ; calculate relative cursor position
cur_win_y := current_y - win_y
WinGet, window_minmax, MinMax, ahk_id %window_id%

; Return if the window is maximized or minimized
if window_minmax <> 0
{
  return
}

CoordMode, Mouse, Screen
SetWinDelay, 0
SetSystemCursor() 

loop
{
  ; exit the loop if the left mouse button was released
  if !GetKeyState("LButton", "P")
  {
    RestoreCursors()
    break
  }

  ; move the window based on cursor position
  MouseGetPos, cur_x, cur_y
  WinMove, ahk_id %window_id%,, (cur_x - cur_win_x), (cur_y - cur_win_y)
}

return

;
; Change mouse button 
;


SetSystemCursor()
{
	IDC_SIZEALL := 32646
	CursorHandle := DllCall( "LoadCursor", Uint,0, Int,IDC_SIZEALL )
	Cursors = 32512,32513,32514,32515,32516,32640,32641,32642,32643,32644,32645,32646,32648,32649,32650,32651
	Loop, Parse, Cursors, `,
	{
		DllCall( "SetSystemCursor", Uint,CursorHandle, Int,A_Loopfield )
	}
}

RestoreCursors() 
{
	SPI_SETCURSORS := 0x57
	DllCall( "SystemParametersInfo", UInt,SPI_SETCURSORS, UInt,0, UInt,0, UInt,0 )
}
