Attribute VB_Name = "������_�㷨�Ӿ�����"
Public �㷨�Ӿ�����_�Ӿ����� As String

Public Function �㷨�Ӿ�����(�ռ�������Ϣ() As Long, �Ӿ��������� As Two_dimensional_coordinates) As String
    Dim �Ӿ�ͨ��() As String, i As Long, ��������() As String, ���� As Two_dimensional_coordinates
    ���������� = "�㷨�Ӿ�����"
    �Ӿ�ͨ�� = Split(�㷨�Ӿ�����_�Ӿ�����, " ")
    For i = 0 To UBound(�Ӿ�ͨ��)
        If InStr(1, �Ӿ�ͨ��(i), ",") > 0 Then
            �������� = Split(�Ӿ�ͨ��(i), ",")
            ����.X = Val(��������(0)): ����.Y = Val(��������(1))
            ���� = �޽������仯(�Ӿ���������, ����)
            �㷨�Ӿ����� = �㷨�Ӿ����� & �ռ�������Ϣ(����.X, ����.Y) & " "
        End If
    Next
    �㷨�Ӿ����� = Mid(�㷨�Ӿ�����, 1, Len(�㷨�Ӿ�����) - 1)
End Function
