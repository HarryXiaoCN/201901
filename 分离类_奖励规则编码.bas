Attribute VB_Name = "������_�����������"
Public �����������_�������� As String
Public Const �����������_��λ������ = 100

Public Function ��������(���� As Two_dimensional_coordinates, ���� As Boolean)
    Dim i As Long
    For i = 0 To UBound(������)
        If ���� Then
            If ������(i).Be = False Then
                ������(i).Be = True
                ������(i).Position = ����: Exit Function
            End If
        Else
            If ������(i).Be = True And ������(i).Position.X = ����.X And ������(i).Position.Y = ����.Y Then
                ������(i).Be = False: Exit Function
            End If
        End If
    Next
    If ���� Then
        ReDim Preserve ������(UBound(������) + 1)
        ������(UBound(������)).Be = True
        ������(UBound(������)).Position = ����
    End If
End Function

Public Function �������(�㷨�� As Algorithmic_Vector, ByRef �ռ�() As Long, ���弯() As Algorithmic_Vector)
    Dim ��������() As String, ����() As String, ���껺��() As String, ���� As Two_dimensional_coordinates, Ŀ������ As Two_dimensional_coordinates, ��ȡ�ַ������� As String
    On Error Resume Next
    �������� = Split(�����������_��������, vbCrLf)
    For i = 0 To UBound(��������)
        If InStr(1, ��������(i), "!") > 0 Then
            ���� = Split(��������(i), "!")
            ��ȡ�ַ������� = Mid(�㷨��.Trace, 1, Len(����(0)))
            If ��ȡ�ַ������� = ����(0) Then
                ���껺�� = Split(����(1), ",")
                Ŀ������.X = Val(���껺��(0))
                Ŀ������.Y = Val(���껺��(1))
                ���� = �޽������仯(�㷨��.Position, Ŀ������)
                Select Case �ռ�(����.X, ����.Y)
                    Case 0
                        �������� ����, True
                    Case 1
                        �������_�Ӻ��� ����, ���弯
                End Select
            End If
        ElseIf InStr(1, ��������(i), "$") > 0 Then
            ���� = Split(��������(i), "$")
            ��ȡ�ַ������� = Mid(�㷨��.Trace, 1, Len(����(0)))
            If ��ȡ�ַ������� = ����(0) Then
                ���껺�� = Split(����(1), ",")
                Ŀ������.X = Val(���껺��(0))
                Ŀ������.Y = Val(���껺��(1))
                Select Case �ռ�(Ŀ������.X, Ŀ������.Y)
                    Case 0
                        �������� Ŀ������, True
                    Case 1
                        �������_�Ӻ��� Ŀ������, ���弯
                End Select
            End If
        End If
    Next
End Function

Public Function �������_�Ӻ���(���� As Two_dimensional_coordinates, ���弯() As Algorithmic_Vector)
    Dim i As Long
    For i = LBound(���弯) To UBound(���弯)
        With ���弯(i)
            If .Health > 0 And .Position.X = ����.X And .Position.Y = ����.Y Then
                �������� ����, False
                ���弯(i).Health = ���弯(i).Health + �����������_��λ������
                Exit Function
            End If
        End With
    Next
End Function
