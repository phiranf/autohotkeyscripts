; This file needs to be saved encoded as utf-8 with BOM

#SingleInstance, Force
SendMode Input
FileEncoding , UTF-8
SetWorkingDir, %A_ScriptDir%


^!a::Send ä
^!+A::Send Ä

^!o::Send ö
^!+o::Send Ö

^!u::Send ü
^!+u::Send Ü

^!s::Send ß
^!+s::Send ẞ
