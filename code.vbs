Option Explicit
Sub mainSyori(strName1, strName2)
    Dim objFso
    Dim objOtf1
    Dim objOtf2
 
    Set objFso = CreateObject("Scripting.FileSystemObject")
    Set objOtf1 = objFso.OpenTextFile(strName1, 1)
    Set objOtf2 = objFso.OpenTextFile(strName2, 2, True)
 
    While Not objOtf1.AtEndOfStream
        objOtf2.WriteLine (objOtf1.ReadLine)
    Wend
 
    objOtf1.Close
    objOtf2.Close
    WScript.Echo "èàóùèIóπ"
End Sub

mainSyori "README.txt", "output.txt"
