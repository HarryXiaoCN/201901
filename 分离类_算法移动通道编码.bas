Attribute VB_Name = "分离类_算法移动通道编码"
Public 算法移动通道编码_移动通道定义 As String

Public Function 获得移动通道总数() As Long
    Dim 通道() As String
    通道 = Split(算法移动通道编码_移动通道定义, " ")
    获得移动通道总数 = UBound(通道)
End Function

Public Function 移动结果获取(通道序数 As Long) As Two_dimensional_coordinates
    Dim 通道() As String, 向量缓存() As String
    通道 = Split(算法移动通道编码_移动通道定义, " ")
    向量缓存 = Split(通道(通道序数 - 1), ",")
    移动结果获取.X = 向量缓存(0): 移动结果获取.Y = 向量缓存(1)
End Function

