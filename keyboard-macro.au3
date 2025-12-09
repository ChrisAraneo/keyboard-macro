#include <Misc.au3>

ConsoleWrite("keyboard-macro started. Press F1 to trigger F-E-R sequence." & @CRLF)
ConsoleWrite("Press ESC to exit." & @CRLF)

While True
    If _IsPressed("70") Then
        ConsoleWrite("F1 detected! Sending F-E-R sequence..." & @CRLF)
        SendSequence()

        While _IsPressed("70")
            Sleep(10)
        WEnd
    EndIf

    If _IsPressed("1B") Then
        ConsoleWrite("Exiting..." & @CRLF)
        Exit
    EndIf

    Sleep(10)
WEnd

Func SendSequence()
    Sleep(Random(1, 20, 1))

    Send("f")
    Sleep(Random(1, 20, 1))

    Send("e")
    Sleep(Random(1, 20, 1))

    Send("r")

    ConsoleWrite("Sequence sent!" & @CRLF)
EndFunc
