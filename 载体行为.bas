Attribute VB_Name = "载体行为"
Public Function 无界向量变化(原点向量 As Two_dimensional_coordinates, 变化向量 As Two_dimensional_coordinates) As Two_dimensional_coordinates
    无界向量变化.X = 原点向量.X + 变化向量.X
    无界向量变化.Y = 原点向量.Y + 变化向量.Y
    If 无界向量变化.X > UBound(空间事物, 1) - 1 Then
        无界向量变化.X = 无界向量变化.X Mod UBound(空间事物, 1)
    ElseIf 无界向量变化.X < LBound(空间事物, 1) Then
        无界向量变化.X = UBound(空间事物, 1) - (Abs(无界向量变化.X) Mod UBound(空间事物, 1))
    End If
    If 无界向量变化.Y > UBound(空间事物, 2) - 1 Then
        无界向量变化.Y = 无界向量变化.Y Mod UBound(空间事物, 2)
    ElseIf 无界向量变化.Y < LBound(空间事物, 2) Then
        无界向量变化.Y = UBound(空间事物, 2) - (Abs(无界向量变化.Y) Mod UBound(空间事物, 2))
    End If
End Function

Public Function 载体移动(算法体 As Algorithmic_Vector, 移动向量 As Two_dimensional_coordinates)
    Dim 虚拟位置 As Two_dimensional_coordinates
    虚拟位置 = 算法体.Position
    虚拟位置 = 无界向量变化(虚拟位置, 移动向量)
    
    '载体的物理事件触发
    Select Case 空间事物(虚拟位置.X, 虚拟位置.Y)
        Case 0
            算法体.Position = 虚拟位置
        Case 1
            
        Case 2
            算法体.Position = 虚拟位置
            奖励增灭 虚拟位置, False
            算法体.Health = 算法体.Health + 奖励规则编码_单位奖励量
        Case 3
            
    End Select
'    Do While 虚拟位置.X > UBound(空间事物, 1)
'        虚拟位置.X = 虚拟位置.X - UBound(空间事物)
'    Loop
'
'    Do While 虚拟位置.X < LBound(空间事物, 1)
'        虚拟位置.X = 虚拟位置.X + UBound(空间事物)
'    Loop
'
'    Do While 虚拟位置.Y > UBound(空间事物, 2)
'        虚拟位置.Y = 虚拟位置.Y - UBound(空间事物)
'    Loop
'
'    Do While 虚拟位置.Y < LBound(空间事物, 2)
'        虚拟位置.Y = 虚拟位置.Y + UBound(空间事物)
'    Loop
    
    
End Function
