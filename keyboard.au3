; MIT License
; Copyright (c) 2017 Dennis Merkus

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
