Option Explicit
Sub mainSyori(strName1, strName2)
    Dim objFso
    Dim objOtf1
    Dim objOtf2
    Dim strBuf
 
    Set objFso = CreateObject("Scripting.FileSystemObject")
    Set objOtf1 = objFso.OpenTextFile(strName1, 1)
    Set objOtf2 = objFso.OpenTextFile(strName2, 2, True)
 
    While Not objOtf1.AtEndOfStream
        strBuf = objOtf1.ReadLine
        If dataEdit(strBuf) Then
            objOtf2.WriteLine (strBuf)
        End If
    Wend
 
    objOtf1.Close
    objOtf2.Close
    WScript.Echo "èàóùèIóπ"
End Sub

Function dataEdit(strBuf)
    dataEdit = False
    dataEdit = True
End Function

mainSyori "README.txt", "output.txt"
