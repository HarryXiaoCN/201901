Attribute VB_Name = "��������"
Public Function ������ɽ�������(��С���� As Long, ��󲽳� As Long, ByVal �ƶ�ͨ������ As String, Optional �������� As Long) As String
    Dim ������� As Long, ��ͨ������ As String, ��������() As String, i As Long
    ������� = ��ȡ�������(��С����, ��󲽳�)
    ��ͨ������ = �ַ����������(�ƶ�ͨ������, " ")
    �������� = Split(��ͨ������, " ")
    For i = 1 To �������
        ������ɽ������� = ������ɽ������� & ��������(��ȡ�������(LBound(��������), UBound(��������))) & " "
    Next
    ������ɽ������� = Mid(������ɽ�������, 1, Len(������ɽ�������) - 1)
    If �������� = 1 Then
        ������ɽ������� = ������ɽ������� & "$"
    Else
        ������ɽ������� = ������ɽ������� & "!"
    End If
    ������ɽ������� = ������ɽ������� & ��ȡ�������(LBound(�ռ�����, 1), UBound(�ռ�����, 1)) & "," & ��ȡ�������(LBound(�ռ�����, 2), UBound(�ռ�����, 2))
End Function

Public Function �������Ӷ�����(����ͨ�� As String) As String
    �������Ӷ����� = �ַ����������(����ͨ��, " ")
End Function

Private Function �ַ����������(�ʼ��ַ��� As String, �Ϸ� As String) As String
    Dim i As Long, ����� As Long, �ʼ�����() As String, �ʼ�() As String
    �ʼ� = Split(�ʼ��ַ���, �Ϸ�)
    �Ѳɼ��� = "\"
    �ʼ����� = �ʼ�
    For i = 0 To UBound(�ʼ�) - 1
        ����� = ��ȡ�������(0, UBound(�ʼ�����))
        �ַ���������� = �ַ���������� & �ʼ�����(�����) & �Ϸ�
        �ʼ����� = �ַ�������ɾ��(�ʼ�����, �����)
    Next
    �ַ���������� = �ַ���������� & �ʼ�����(0) & �Ϸ�
    �ַ���������� = Mid(�ַ����������, 1, Len(�ַ����������) - 1)
End Function

Private Function �ַ�������ɾ��(����() As String, ���)
    Dim ������() As String, i As Long, j As Long
    ReDim ������(LBound(����) To UBound(����) - 1)
    j = LBound(����)
    For i = LBound(����) To UBound(����)
        If i <> ��� Then
            ������(j) = ����(i)
            j = j + 1
        End If
    Next
    �ַ�������ɾ�� = ������
End Function

Public Function ��ȡ�������(a, b) As Long
    Randomize
    ��ȡ������� = Int(Rnd * (b - a + 1)) + a
End Function
