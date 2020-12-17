Option Explicit
Sub mainSyori()
    Dim objFso
    Dim objOtf1
    Dim objOtf2
    Set objFso = CreateObject("Scripting.FileSystemObject")
    Set objOtf1 = objFso.OpenTextFile("README.txt", 1)
    Set objOtf2 = objFso.OpenTextFile("output.txt", 2, True)
    While Not objOtf1.AtEndOfStream
        objOtf2.WriteLine(objOtf1.ReadLine)
    WEnd
    objOtf1.Close
    objOtf2.Close
End Sub

mainSyori()
