Attribute VB_Name = "引擎接口"
'Public Declare Function 算法视觉编码 Lib "算法视觉编码" (空间事物信息() As Long, ByVal 视觉载体X坐标 As Long, ByVal 视觉载体Y坐标 As Long) As String
'Public Declare Function 获得移动通道总数 Lib "算法移动通道编码" () As Long
'Public Declare Function 移动结果获取 Lib "算法移动通道编码" (ByVal 通道序号 As Long) As Two_dimensional_coordinates  '返回向量
Public Function 算法信息读入()
    Dim i As Long
    一级函数名 = "算法信息读入"
    For i = LBound(算法载体) To UBound(算法载体)
        If 算法载体(i).Health > 0 Then
            算法信息读入_子函数 算法载体(i)
        End If
    Next
End Function

Private Function 命令解读_获得通道数(命令行 As String) As Long
    Dim 缓存() As String
    If Mid(命令行, 1, 4) = "ADIR" Then
        缓存 = Split(命令行, " ")
        命令解读_获得通道数 = Val(缓存(1))
    End If
End Function

Public Function 算法信息读入_子函数(算法体 As Algorithmic_Vector)
    Dim 读取路径 As String, 通道数序数 As Long, 移动向量 As Two_dimensional_coordinates
    二级函数名 = "算法信息读入_子函数"
    读取路径 = App.Path & "\" & 算法体.Name & ".action"
    If ReadFile_ALL_HV(读取路径, 算法体.Action) = False Then
        移动向量 = 移动结果获取(命令解读_获得通道数(算法体.Action))
        载体移动 算法体, 移动向量
        算法体.Trace = 移动向量.X & "," & 移动向量.Y & " " & 算法体.Trace
        奖励检测 算法体, 空间事物, 算法载体
        Name 读取路径 As 读取路径 & "-RO"
    End If
End Function

Public Function 算法信息传出(Optional 百分比血量 As Boolean)
    Dim outString As String, outPath As String, i As Long
    一级函数名 = "算法信息传出"
    For i = LBound(算法载体) To UBound(算法载体)
        If 算法载体(i).Health > 0 Then
            outPath = App.Path & "\" & 算法载体(i).Name & ".info"
            outString = 算法视觉编码(空间事物, 算法载体(i).Position.X, 算法载体(i).Position.Y) & vbCrLf
            If 百分比血量 Then
                outString = outString & "HP R " & 算法载体(i).Health & vbCrLf
            Else
                outString = outString & "HP A " & 算法载体(i).Health & vbCrLf
            End If
            outString = outString & "DIR " & 获得移动通道总数
            算法载体(i).Info = outString
            SaveFile_All outPath, outString
        End If
    Next
    
End Function


Public Function ReadFile_ALL_HV(fPath As String, sourceString As String) As Boolean
    Dim fN As Integer
    fN = FreeFile
On Error GoTo Er
    If Dir(fPath) <> "" Then
        Open fPath For Binary As #fN
            sourceString = Input(LOF(1), #fN)
        Close #fN
    Else
        GoTo Er
    End If
    Exit Function
Er:
    ReadFile_ALL_HV = True
End Function

Public Function SaveFile_All(fPath As String, outString As String)
    Dim fN As Integer
    fN = FreeFile
    Open fPath For Output As #fN
        Print #fN, outString
    Close #fN
End Function


