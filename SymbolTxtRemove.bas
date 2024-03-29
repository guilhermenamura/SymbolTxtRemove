Function SymbolTxtRemove(str, Optional NoDotRemove As Integer = 0, Optional NoCommaRemove As Integer = 0)
 
    tmp = str
    If Not (str Like "##/##/####") Then 'Não alterar datas
        strCharToReplace = "-/,;:!@#$%¨&*()[]{}´`'_=+|\.º"
        strCharReplacement = "-----------------------------"
        If (NoDotRemove = 1) Then
            strCharToReplace = Replace(strCharToReplace, ".", "")
        End If
        If (NoCommaRemove = 1) Then
            strCharToReplace = Replace(strCharToReplace, ",", "")
        End If
                
        For i = 1 To Len(tmp)
            p = InStr(1, strCharToReplace, Mid(tmp, i, 1))
            If p > 0 Then Mid(tmp, i, 1) = Mid(strCharReplacement, p, 1)
        Next
        
        tmp = Replace(tmp, "-", "")
    
    End If
    
    SymbolTxtRemove = tmp
     
End Function
