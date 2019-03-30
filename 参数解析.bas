Attribute VB_Name = "参数解析"
Public Function 随机生成奖励规则(最小步长 As Long, 最大步长 As Long, ByVal 移动通道向量 As String, Optional 绝对坐标 As Long) As String
    Dim 随机步长 As Long, 新通道向量 As String, 向量缓存() As String, i As Long
    随机步长 = 获取随机整数(最小步长, 最大步长)
    新通道向量 = 字符串随机排序(移动通道向量, " ")
    向量缓存 = Split(新通道向量, " ")
    For i = 1 To 随机步长
        随机生成奖励规则 = 随机生成奖励规则 & 向量缓存(获取随机整数(LBound(向量缓存), UBound(向量缓存))) & " "
    Next
    随机生成奖励规则 = Mid(随机生成奖励规则, 1, Len(随机生成奖励规则) - 1)
    If 绝对坐标 = 1 Then
        随机生成奖励规则 = 随机生成奖励规则 & "$"
    Else
        随机生成奖励规则 = 随机生成奖励规则 & "!"
    End If
    随机生成奖励规则 = 随机生成奖励规则 & 获取随机整数(LBound(空间事物, 1), UBound(空间事物, 1)) & "," & 获取随机整数(LBound(空间事物, 2), UBound(空间事物, 2))
End Function

Public Function 随机组合视动定义(所有通道 As String) As String
    随机组合视动定义 = 字符串随机排序(所有通道, " ")
End Function

Private Function 字符串随机排序(词集字符串 As String, 断符 As String) As String
    Dim i As Long, 随机数 As Long, 词集缓存() As String, 词集() As String
    词集 = Split(词集字符串, 断符)
    已采集点 = "\"
    词集缓存 = 词集
    For i = 0 To UBound(词集) - 1
        随机数 = 获取随机整数(0, UBound(词集缓存))
        字符串随机排序 = 字符串随机排序 & 词集缓存(随机数) & 断符
        词集缓存 = 字符串数组删减(词集缓存, 随机数)
    Next
    字符串随机排序 = 字符串随机排序 & 词集缓存(0) & 断符
    字符串随机排序 = Mid(字符串随机排序, 1, Len(字符串随机排序) - 1)
End Function

Private Function 字符串数组删减(数组() As String, 序号)
    Dim 新数组() As String, i As Long, j As Long
    ReDim 新数组(LBound(数组) To UBound(数组) - 1)
    j = LBound(数组)
    For i = LBound(数组) To UBound(数组)
        If i <> 序号 Then
            新数组(j) = 数组(i)
            j = j + 1
        End If
    Next
    字符串数组删减 = 新数组
End Function

Public Function 获取随机整数(a, b) As Long
    Randomize
    获取随机整数 = Int(Rnd * (b - a + 1)) + a
End Function
