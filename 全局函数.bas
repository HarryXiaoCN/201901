Attribute VB_Name = "全局函数"
Public Function 算法环境更新()
On Error GoTo Er
    If 暂停开关 = False Then
        算法信息读入
        算法信息传出
        空间事物刷新
        绘制_空间格线 True
        绘制_空间事物
        If 视觉可视化开关 Then 绘制_可视化 "视觉", 算法视觉编码_视觉定义, 视觉颜色
        If 移动可视化开关 Then 绘制_可视化 "移动", 算法移动通道编码_移动通道定义, 移动颜色
        载体状态刷新
    End If
Exit Function
Er:
Debug.Print "算法环境更新", 一级函数名, 二级函数名, Err.Description
End Function

Public Function 空间事物刷新()
    Dim i As Long
    一级函数名 = "空间事物刷新"
    ReDim 空间事物(算法环境边.X, 算法环境边.Y)
    For i = 0 To UBound(算法载体)
        With 算法载体(i)
            If .Health > 0 Then
                空间事物(.Position.X, .Position.Y) = 算法载体索引
            End If
        End With
    Next
    For i = 0 To UBound(奖励集)
        With 奖励集(i)
            If .Be Then
                空间事物(.Position.X, .Position.Y) = 奖励索引
            End If
        End With
    Next
End Function

Public Function 载体状态刷新()
    Dim i As Long, 行字符缓存 As String
    一级函数名 = "载体状态刷新"
    With Ui
        .载体状态列表.Clear
        行字符缓存 = "载体名" & vbTab & "生命" & vbTab & "位置" & vbTab & "存活时长" & vbTab & "轨迹"
        .载体状态列表.AddItem 行字符缓存
        For i = 0 To UBound(算法载体)
            If 算法载体(i).Health > 0 Then 算法载体(i).SurvivalTime = 算法载体(i).SurvivalTime + Ui.文件读写时钟.Interval / 1000
            行字符缓存 = 算法载体(i).Name & vbTab & 算法载体(i).Health & _
            vbTab & 算法载体(i).Position.X & "," & 算法载体(i).Position.Y _
            & vbTab & 算法载体(i).SurvivalTime & vbTab & Mid(算法载体(i).Trace, 1, 18)
            .载体状态列表.AddItem 行字符缓存
        Next
    End With
End Function
