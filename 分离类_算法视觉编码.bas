Attribute VB_Name = "分离类_算法视觉编码"
Public 算法视觉编码_视觉定义 As String

Public Function 算法视觉编码(空间事物信息() As Long, 视觉载体坐标 As Two_dimensional_coordinates) As String
    Dim 视觉通道() As String, i As Long, 向量缓存() As String, 坐标 As Two_dimensional_coordinates
    二级函数名 = "算法视觉编码"
    视觉通道 = Split(算法视觉编码_视觉定义, " ")
    For i = 0 To UBound(视觉通道)
        If InStr(1, 视觉通道(i), ",") > 0 Then
            向量缓存 = Split(视觉通道(i), ",")
            坐标.X = Val(向量缓存(0)): 坐标.Y = Val(向量缓存(1))
            坐标 = 无界向量变化(视觉载体坐标, 坐标)
            算法视觉编码 = 算法视觉编码 & 空间事物信息(坐标.X, 坐标.Y) & " "
        End If
    Next
    算法视觉编码 = Mid(算法视觉编码, 1, Len(算法视觉编码) - 1)
End Function
