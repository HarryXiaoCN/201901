Attribute VB_Name = "������_�㷨�ƶ�ͨ������"
Public �㷨�ƶ�ͨ������_�ƶ�ͨ������ As String

Public Function ����ƶ�ͨ������() As Long
    Dim ͨ��() As String
    ͨ�� = Split(�㷨�ƶ�ͨ������_�ƶ�ͨ������, " ")
    ����ƶ�ͨ������ = UBound(ͨ��)
End Function

Public Function �ƶ������ȡ(ͨ������ As Long) As Two_dimensional_coordinates
    Dim ͨ��() As String, ��������() As String
    ͨ�� = Split(�㷨�ƶ�ͨ������_�ƶ�ͨ������, " ")
    �������� = Split(ͨ��(ͨ������ - 1), ",")
    �ƶ������ȡ.X = ��������(0): �ƶ������ȡ.Y = ��������(1)
End Function

