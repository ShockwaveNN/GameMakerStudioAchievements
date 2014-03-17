Func GameMakerDebug()
For $i = 1 To 1000
	ConsoleWrite("Debugging for " & $i & " time"& @CRLF)
WinActivate("[CLASS:TMainForm]")
Send("{F6}")
WinWait("GameMaker Debugger", "", 50)
WinActivate("[CLASS:TMainForm]")
MouseClick("left", 173, 59)
Sleep(5000)
Next
EndFunc

Func GameMakerRun()
For $i = 1 To 1000
	ConsoleWrite("Running for " & $i & " time" & @CRLF)
WinActivate("[CLASS:TMainForm]")
Send("{F5}")
WinWait("GameMaker:Studio", '', 15)
Sleep(5000)
WinActivate("[CLASS:TMainForm]")
MouseClick("left", 173, 59)
Sleep(5000)
Next
EndFunc

Func GameRunWithError()
For $i = 1 To 1000
	ConsoleWrite("Running with error for " & $i & " time" & @CRLF)
WinActivate("[CLASS:TMainForm]")
Send("{F6}")
Sleep(3000)
Send("^{F4}")
Next
EndFunc

GameRunWithError()