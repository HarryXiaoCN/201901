Attribute VB_Name = "����ӿ�"
'Public Declare Function �㷨�Ӿ����� Lib "�㷨�Ӿ�����" (�ռ�������Ϣ() As Long, ByVal �Ӿ�����X���� As Long, ByVal �Ӿ�����Y���� As Long) As String
'Public Declare Function ����ƶ�ͨ������ Lib "�㷨�ƶ�ͨ������" () As Long
'Public Declare Function �ƶ������ȡ Lib "�㷨�ƶ�ͨ������" (ByVal ͨ����� As Long) As Two_dimensional_coordinates  '��������
Public Function �㷨��Ϣ����()
    Dim i As Long
    һ�������� = "�㷨��Ϣ����"
    For i = LBound(�㷨����) To UBound(�㷨����)
        If �㷨����(i).Health > 0 Then
            �㷨��Ϣ����_�Ӻ��� �㷨����(i)
        End If
    Next
End Function

Private Function ������_���ͨ����(������ As String) As Long
    Dim ����() As String
    If Mid(������, 1, 4) = "ADIR" Then
        ���� = Split(������, " ")
        ������_���ͨ���� = Val(����(1))
    End If
End Function

Public Function �㷨��Ϣ����_�Ӻ���(�㷨�� As Algorithmic_Vector)
    Dim ��ȡ·�� As String, ͨ�������� As Long, �ƶ����� As Two_dimensional_coordinates
    ���������� = "�㷨��Ϣ����_�Ӻ���"
    ��ȡ·�� = App.Path & "\" & �㷨��.Name & ".action"
    If ReadFile_ALL_HV(��ȡ·��, �㷨��.Action) = False Then
        �ƶ����� = �ƶ������ȡ(������_���ͨ����(�㷨��.Action))
        �����ƶ� �㷨��, �ƶ�����
        �㷨��.Trace = �ƶ�����.X & "," & �ƶ�����.Y & " " & �㷨��.Trace
        ������� �㷨��, �ռ�����, �㷨����
        Name ��ȡ·�� As ��ȡ·�� & "-RO"
    End If
End Function

Public Function �㷨��Ϣ����(Optional �ٷֱ�Ѫ�� As Boolean)
    Dim outString As String, outPath As String, i As Long
    һ�������� = "�㷨��Ϣ����"
    For i = LBound(�㷨����) To UBound(�㷨����)
        If �㷨����(i).Health > 0 Then
            outPath = App.Path & "\" & �㷨����(i).Name & ".info"
            outString = �㷨�Ӿ�����(�ռ�����, �㷨����(i).Position.X, �㷨����(i).Position.Y) & vbCrLf
            If �ٷֱ�Ѫ�� Then
                outString = outString & "HP R " & �㷨����(i).Health & vbCrLf
            Else
                outString = outString & "HP A " & �㷨����(i).Health & vbCrLf
            End If
            outString = outString & "DIR " & ����ƶ�ͨ������
            �㷨����(i).Info = outString
            SaveFile_All outPath, outString
        End If
    Next
    
End Function


Public Function ReadFile_ALL_HV(fPath As String, sourceString As String) As Boolean
    Dim fN As Integer
    fN = FreeFile
On Error GoTo Er
    If Dir(fPath) <> "" Then
        Open fPath For Binary As #fN
            sourceString = Input(LOF(1), #fN)
        Close #fN
    Else
        GoTo Er
    End If
    Exit Function
Er:
    ReadFile_ALL_HV = True
End Function

Public Function SaveFile_All(fPath As String, outString As String)
    Dim fN As Integer
    fN = FreeFile
    Open fPath For Output As #fN
        Print #fN, outString
    Close #fN
End Function


