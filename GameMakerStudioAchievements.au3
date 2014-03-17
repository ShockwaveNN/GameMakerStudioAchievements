; #FUNCTION# ;===============================================================================
;
; Name...........: _GameMakerDebug
; Description ...: Earn GameMaker Studio Achievements 
;                  (http://steamcommunity.com/stats/214850/achievements):
;                  'Debugger', '10 Debugs', '100 Debugs', '1000 Debugs'
;                  For using this function you should have manually open a project in 
;                  GameMaker: Studio with working project (I think empty project go well)
; Syntax.........: _GameMakerDebug()
; Return values .: Nothing
; Author ........: Pavel Lobashov
;
; ;==========================================================================================
Func _GameMakerDebug()
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

; #FUNCTION# ;===============================================================================
;
; Name...........: _GameMakerRun
; Description ...: Earn GameMaker Studio Achievements 
;                  (http://steamcommunity.com/stats/214850/achievements):
;                  'Runner', '10 Runs', '100 Runs', '1000 Runs'
;                  For using this function you should have manually open a project in 
;                  GameMaker: Studio with working project (I think empty project go well)
; Syntax.........: _GameMakerDebug()
; Return values .: Nothing
; Author ........: Pavel Lobashov
;
; ;==========================================================================================
Func _GameMakerRun()
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

; #FUNCTION# ;===============================================================================
;
; Name...........: _GameDebugWithError
; Description ...: Earn GameMaker Studio Achievement 
;                  (http://steamcommunity.com/stats/214850/achievements):
;                  'Get 1,000 compile errors'
;                  For using this function you should have manually open a project in 
;                  GameMaker: Studio, create a script with error (just type random stuff)
;                  and run this function
; Syntax.........: _GameMakerDebug()
; Return values .: Nothing
; Author ........: Pavel Lobashov
;
; ;==========================================================================================
Func _GameDebugWithError()
  For $i = 1 To 1000
    ConsoleWrite("Running with error for " & $i & " time" & @CRLF)
    WinActivate("[CLASS:TMainForm]")
    Send("{F6}")
    Sleep(3000)
    Send("^{F4}")
  Next
EndFunc
