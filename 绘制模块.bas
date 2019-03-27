Attribute VB_Name = "绘制模块"
Public Function 绘制_空间格线(Optional 清空 As Boolean)
Dim i As Long
    一级函数名 = "绘制_空间格线"
    If 清空 Then Ui.算法环境.Cls
    If Ui.绘制空间格线.Checked = True Then
        With Ui.算法环境
            For i = 0 To 算法环境边.X
                Ui.算法环境.Line (i, 0)-(i, 算法环境边.Y), RGB(20, 20, 20)
            Next
            For i = 0 To 算法环境边.Y
                Ui.算法环境.Line (0, i)-(算法环境边.X, i), RGB(20, 20, 20)
            Next
        End With
    End If
End Function

Public Function 绘制_可视化(可视化名 As String, 集 As String, 颜色 As Long, Optional 清空 As Boolean)
    Dim i As Long, j As Long, 坐标集() As String, 坐标缓存() As String, 坐标 As Two_dimensional_coordinates, 目标坐标 As Two_dimensional_coordinates
    一级函数名 = "绘制_可视化"
    On Error GoTo Er
    坐标集 = Split(集, " ")
    Ui.算法环境.ForeColor = 颜色
    For i = 0 To UBound(算法载体)
        For j = 0 To UBound(坐标集)
            If InStr(1, 坐标集(j), ",") > 0 Then
                坐标缓存 = Split(坐标集(j), ",")
                目标坐标.X = Val(坐标缓存(0)): 目标坐标.Y = Val(坐标缓存(1))
                坐标 = 无界向量变化(算法载体(i).Position, 目标坐标)
                Ui.算法环境.Line (坐标.X, 坐标.Y)-(坐标.X + 1, 坐标.Y + 1), 颜色, B
                Ui.算法环境.CurrentX = 坐标.X + 0.2
                Ui.算法环境.CurrentY = 坐标.Y
                Ui.算法环境.Print 可视化名 & "：" & j + 1
            End If
        Next
    Next
    Exit Function
Er:
    Debug.Print "绘制_可视化", Err.Description
End Function

Public Function 绘制_空间事物(Optional 清空 As Boolean)
    Dim i As Long, j As Long, 绘制颜色 As Long
    一级函数名 = "绘制_空间事物"
    If 清空 Then Ui.算法环境.Cls
    For i = 0 To UBound(空间事物)
        For j = 0 To UBound(空间事物)
            Select Case 空间事物(i, j)
                Case 0
                    GoTo NULLCOLOR
                Case 1
                    绘制颜色 = RGB(0, 255, 127)
                Case 2
                    绘制颜色 = RGB(255, 215, 0)
                Case 3
                    绘制颜色 = RGB(255, 255, 255)
            End Select
            Ui.算法环境.Line (i, j)-(i + 1, j + 1), 绘制颜色, BF
NULLCOLOR:
        Next
    Next
End Function
