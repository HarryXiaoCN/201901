Attribute VB_Name = "ȫ�ֺ���"
Public Function �㷨��������()
On Error GoTo Er
    If ��ͣ���� = False Then
        �㷨��Ϣ����
        �㷨��Ϣ����
        �ռ�����ˢ��
        ����_�ռ���� True
        ����_�ռ�����
        If �Ӿ����ӻ����� Then ����_���ӻ� "�Ӿ�", �㷨�Ӿ�����_�Ӿ�����, �Ӿ���ɫ
        If �ƶ����ӻ����� Then ����_���ӻ� "�ƶ�", �㷨�ƶ�ͨ������_�ƶ�ͨ������, �ƶ���ɫ
        ����״̬ˢ��
    End If
Exit Function
Er:
Debug.Print "�㷨��������", һ��������, ����������, Err.Description
End Function

Public Function �ռ�����ˢ��()
    Dim i As Long
    һ�������� = "�ռ�����ˢ��"
    ReDim �ռ�����(�㷨������.X, �㷨������.Y)
    For i = 0 To UBound(�㷨����)
        With �㷨����(i)
            If .Health > 0 Then
                �ռ�����(.Position.X, .Position.Y) = �㷨��������
            End If
        End With
    Next
    For i = 0 To UBound(������)
        With ������(i)
            If .Be Then
                �ռ�����(.Position.X, .Position.Y) = ��������
            End If
        End With
    Next
End Function

Public Function ����״̬ˢ��()
    Dim i As Long, ���ַ����� As String
    һ�������� = "����״̬ˢ��"
    With Ui
        .����״̬�б�.Clear
        ���ַ����� = "������" & vbTab & "����" & vbTab & "λ��" & vbTab & "���ʱ��" & vbTab & "�켣"
        .����״̬�б�.AddItem ���ַ�����
        For i = 0 To UBound(�㷨����)
            If �㷨����(i).Health > 0 Then �㷨����(i).SurvivalTime = �㷨����(i).SurvivalTime + Ui.�ļ���дʱ��.Interval / 1000
            ���ַ����� = �㷨����(i).Name & vbTab & �㷨����(i).Health & _
            vbTab & �㷨����(i).Position.X & "," & �㷨����(i).Position.Y _
            & vbTab & �㷨����(i).SurvivalTime & vbTab & Mid(�㷨����(i).Trace, 1, 18)
            .����״̬�б�.AddItem ���ַ�����
        Next
    End With
End Function
