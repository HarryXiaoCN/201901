Attribute VB_Name = "������Ϊ"
Public Function �޽������仯(ԭ������ As Two_dimensional_coordinates, �仯���� As Two_dimensional_coordinates) As Two_dimensional_coordinates
    �޽������仯.X = ԭ������.X + �仯����.X
    �޽������仯.Y = ԭ������.Y + �仯����.Y
    If �޽������仯.X > UBound(�ռ�����, 1) - 1 Then
        �޽������仯.X = �޽������仯.X Mod UBound(�ռ�����, 1)
    ElseIf �޽������仯.X < LBound(�ռ�����, 1) Then
        �޽������仯.X = UBound(�ռ�����, 1) - (Abs(�޽������仯.X) Mod UBound(�ռ�����, 1))
    End If
    If �޽������仯.Y > UBound(�ռ�����, 2) - 1 Then
        �޽������仯.Y = �޽������仯.Y Mod UBound(�ռ�����, 2)
    ElseIf �޽������仯.Y < LBound(�ռ�����, 2) Then
        �޽������仯.Y = UBound(�ռ�����, 2) - (Abs(�޽������仯.Y) Mod UBound(�ռ�����, 2))
    End If
End Function

Public Function �����ƶ�(�㷨�� As Algorithmic_Vector, �ƶ����� As Two_dimensional_coordinates)
    Dim ����λ�� As Two_dimensional_coordinates
    ����λ�� = �㷨��.Position
    ����λ�� = �޽������仯(����λ��, �ƶ�����)
    
    '����������¼�����
    Select Case �ռ�����(����λ��.X, ����λ��.Y)
        Case 0
            �㷨��.Position = ����λ��
        Case 1
            
        Case 2
            �㷨��.Position = ����λ��
            �������� ����λ��, False
            �㷨��.Health = �㷨��.Health + �����������_��λ������
        Case 3
            
    End Select
'    Do While ����λ��.X > UBound(�ռ�����, 1)
'        ����λ��.X = ����λ��.X - UBound(�ռ�����)
'    Loop
'
'    Do While ����λ��.X < LBound(�ռ�����, 1)
'        ����λ��.X = ����λ��.X + UBound(�ռ�����)
'    Loop
'
'    Do While ����λ��.Y > UBound(�ռ�����, 2)
'        ����λ��.Y = ����λ��.Y - UBound(�ռ�����)
'    Loop
'
'    Do While ����λ��.Y < LBound(�ռ�����, 2)
'        ����λ��.Y = ����λ��.Y + UBound(�ռ�����)
'    Loop
    
    
End Function
