Option Explicit
Sub mainSyori()
    Dim objFso
    Dim objOtf
    Set objFso = CreateObject("Scripting.FileSystemObject")
    Set objOtf = objFso.OpenTextFile("output.txt", 2, True)
    objOtf.WriteLine("Hello")
    objOtf.Close
End Sub

mainSyori()
