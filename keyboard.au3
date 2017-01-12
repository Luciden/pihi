; MIT License
; Copyright (c) 2017 Dennis Merkus

;======================================================
;
; Function Name:    _SendUnicode("string")
; Description:    Send a unicode or an ASCII string.
; Parameter(s):  $string is the string you want to send.
; Requirement(s):   String Input.
; Return Value(s):  None
; Author(s):        Robie Zhou (robiezhou@gmail.com)
;
;======================================================
Func _SendUnicode($string)
    Local $char
    Local $code

    For $i = 1 to StringLen($string)
        $char = StringMid($string, $i, 1)
        $code = Asc($char)
        If $code > 127 Then
            $code = $code * 256
            $i  = $i + 1
            $char = StringMid($string, $i, 1)
            $code = $code + Asc($char)
        EndIf
        Send("{ASC " & $code & "}")
    Next
EndFunc

; ʻokina
HotKeySet("!'", "TypeOkina")

; macron
HotKeySet("!a", "TypeMacron")
HotKeySet("+!a", "TypeMacron")
HotKeySet("!e", "TypeMacron")
HotKeySet("+!e", "TypeMacron")
HotKeySet("!i", "TypeMacron")
HotKeySet("+!i", "TypeMacron")
HotKeySet("!o", "TypeMacron")
HotKeySet("+!o", "TypeMacron")
HotKeySet("!u", "TypeMacron")
HotKeySet("+!u", "TypeMacron")

While 1
   Sleep(100)
WEnd

Func PasteCharacter($char)
    SLeep(200)

    $old = ClipGet()

	ClipPut($char)
	Send("^v")

	ClipPut($old)
EndFunc

Func TypeOkina()
    PasteCharacter("ʻ")
EndFunc

Func TypeMacron()
	Switch @HotKeyPressed
	Case "!a"
	    PasteCharacter("ā")
	 Case "+!a"
	    PasteCharacter("Ā")
	Case "!e"
	    PasteCharacter("ē")
    Case "+!e"
	    PasteCharacter("Ē")
	Case "!i"
		PasteCharacter("ī")
	 Case "+!i"
	    PasteCharacter("Ī")
	Case "!o"
		PasteCharacter("ō")
	 Case "+!o"
	    PasteCharacter("Ō")
	Case "!u"
		PasteCharacter("ū")
	 Case "+!u"
	    PasteCharacter("Ū")
    EndSwitch
EndFunc

Func _Quit()
   Exit
EndFunc
