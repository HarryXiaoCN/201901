Attribute VB_Name = "分离类_奖励规则编码"
Public 奖励规则编码_奖励定义 As String
Public Const 奖励规则编码_单位奖励量 = 100

Public Function 奖励增灭(坐标 As Two_dimensional_coordinates, 增加 As Boolean)
    Dim i As Long
    For i = 0 To UBound(奖励集)
        If 增加 Then
            If 奖励集(i).Be = False Then
                奖励集(i).Be = True
                奖励集(i).Position = 坐标: Exit Function
            End If
        Else
            If 奖励集(i).Be = True And 奖励集(i).Position.X = 坐标.X And 奖励集(i).Position.Y = 坐标.Y Then
                奖励集(i).Be = False: Exit Function
            End If
        End If
    Next
    If 增加 Then
        ReDim Preserve 奖励集(UBound(奖励集) + 1)
        奖励集(UBound(奖励集)).Be = True
        奖励集(UBound(奖励集)).Position = 坐标
    End If
End Function

Public Function 奖励检测(算法体 As Algorithmic_Vector, ByRef 空间() As Long, 载体集() As Algorithmic_Vector)
    Dim 奖励规则() As String, 奖励() As String, 坐标缓存() As String, 坐标 As Two_dimensional_coordinates, 目标坐标 As Two_dimensional_coordinates, 截取字符串缓存 As String
    On Error Resume Next
    奖励规则 = Split(奖励规则编码_奖励定义, vbCrLf)
    For i = 0 To UBound(奖励规则)
        If InStr(1, 奖励规则(i), "!") > 0 Then
            奖励 = Split(奖励规则(i), "!")
            截取字符串缓存 = Mid(算法体.Trace, 1, Len(奖励(0)))
            If 截取字符串缓存 = 奖励(0) Then
                坐标缓存 = Split(奖励(1), ",")
                目标坐标.X = Val(坐标缓存(0))
                目标坐标.Y = Val(坐标缓存(1))
                坐标 = 无界向量变化(算法体.Position, 目标坐标)
                Select Case 空间(坐标.X, 坐标.Y)
                    Case 0
                        奖励增灭 坐标, True
                    Case 1
                        奖励检测_子函数 坐标, 载体集
                End Select
            End If
        ElseIf InStr(1, 奖励规则(i), "$") > 0 Then
            奖励 = Split(奖励规则(i), "$")
            截取字符串缓存 = Mid(算法体.Trace, 1, Len(奖励(0)))
            If 截取字符串缓存 = 奖励(0) Then
                坐标缓存 = Split(奖励(1), ",")
                目标坐标.X = Val(坐标缓存(0))
                目标坐标.Y = Val(坐标缓存(1))
                Select Case 空间(目标坐标.X, 目标坐标.Y)
                    Case 0
                        奖励增灭 目标坐标, True
                    Case 1
                        奖励检测_子函数 目标坐标, 载体集
                End Select
            End If
        End If
    Next
End Function

Public Function 奖励检测_子函数(坐标 As Two_dimensional_coordinates, 载体集() As Algorithmic_Vector)
    Dim i As Long
    For i = LBound(载体集) To UBound(载体集)
        With 载体集(i)
            If .Health > 0 And .Position.X = 坐标.X And .Position.Y = 坐标.Y Then
                奖励增灭 坐标, False
                载体集(i).Health = 载体集(i).Health + 奖励规则编码_单位奖励量
                Exit Function
            End If
        End With
    Next
End Function
