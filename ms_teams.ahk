; Mute MS teams with keychron k8's dedicated mute key 
; credits: https://www.autohotkey.com/boards/viewtopic.php?t=84286
;
; TODO: find better solution, not working all the time, just send shortcut when window is active for now

#c::
Send, ^M 
  
/*
WinGet, id, list, ahk_exe Teams.exe			;get IDs for all teams windows
Loop, %id% 							;Loop through IDs of all teams windows
{
this_ID := id%A_Index%
           WinGetTitle, Title, ahk_id %this_ID%			;get the title of the current window
           If Title <> Microsoft Teams Notification		;make sure title is not the notification
           {
             If Title <> 								;screen sharing win uses null title, make sure the win does not have a null title
             {
               WinActivate, ahk_id %this_ID%				;This should be the correct win, activate it
                 Send, ^M								;send ctrl,shift,m shortcut
                 break								;There are two teams windows, the main win and the meeting win, break the loop so that the mute commmand doesnt get sent twice
             }
           }
}
*/
