Attribute VB_Name = "����ģ��"
Public Function ����_�ռ����(Optional ��� As Boolean)
Dim i As Long
    һ�������� = "����_�ռ����"
    If ��� Then Ui.�㷨����.Cls
    If Ui.���ƿռ����.Checked = True Then
        With Ui.�㷨����
            For i = 0 To �㷨������.X
                Ui.�㷨����.Line (i, 0)-(i, �㷨������.Y), RGB(20, 20, 20)
            Next
            For i = 0 To �㷨������.Y
                Ui.�㷨����.Line (0, i)-(�㷨������.X, i), RGB(20, 20, 20)
            Next
        End With
    End If
End Function

Public Function ����_���ӻ�(���ӻ��� As String, �� As String, ��ɫ As Long, Optional ��� As Boolean)
    Dim i As Long, j As Long, ���꼯() As String, ���껺��() As String, ���� As Two_dimensional_coordinates, Ŀ������ As Two_dimensional_coordinates
    һ�������� = "����_���ӻ�"
    On Error GoTo Er
    ���꼯 = Split(��, " ")
    Ui.�㷨����.ForeColor = ��ɫ
    For i = 0 To UBound(�㷨����)
        For j = 0 To UBound(���꼯)
            If InStr(1, ���꼯(j), ",") > 0 Then
                ���껺�� = Split(���꼯(j), ",")
                Ŀ������.X = Val(���껺��(0)): Ŀ������.Y = Val(���껺��(1))
                ���� = �޽������仯(�㷨����(i).Position, Ŀ������)
                Ui.�㷨����.Line (����.X, ����.Y)-(����.X + 1, ����.Y + 1), ��ɫ, B
                Ui.�㷨����.CurrentX = ����.X + 0.2
                Ui.�㷨����.CurrentY = ����.Y
                Ui.�㷨����.Print ���ӻ��� & "��" & j + 1
            End If
        Next
    Next
    Exit Function
Er:
    Debug.Print "����_���ӻ�", Err.Description
End Function

Public Function ����_�ռ�����(Optional ��� As Boolean)
    Dim i As Long, j As Long, ������ɫ As Long
    һ�������� = "����_�ռ�����"
    If ��� Then Ui.�㷨����.Cls
    For i = 0 To UBound(�ռ�����)
        For j = 0 To UBound(�ռ�����)
            Select Case �ռ�����(i, j)
                Case 0
                    GoTo NULLCOLOR
                Case 1
                    ������ɫ = RGB(0, 255, 127)
                Case 2
                    ������ɫ = RGB(255, 215, 0)
                Case 3
                    ������ɫ = RGB(255, 255, 255)
            End Select
            Ui.�㷨����.Line (i, j)-(i + 1, j + 1), ������ɫ, BF
NULLCOLOR:
        Next
    Next
End Function
