Attribute VB_Name = "ȫ�ֱ���"
'�����ά����������ṹ
Public Type Two_dimensional_coordinates
    X As Long
    Y As Long
End Type

'���影��������ṹ
Public Type Reward
    Be As Boolean
    Position As Two_dimensional_coordinates
End Type

'�����㷨����������ṹ
Public Type Algorithmic_Vector
    '�㷨�������ƣ��������������������һ�޶���txt�ı����������̽���
    Name As String
    '�㷨���������ֵ
    Health As Double
    '�㷨���嵱ǰ���㷨�����е�����
    Position  As Two_dimensional_coordinates
    '�㷨���嵱ǰ���ڻ����л�ȡ��������Ϣ����������������txt�ļ��Ա��㷨�����ȡ
    Info As String
    '�������Ӵ���txt�ļ��ж�ȡ����Ϊ
    Action As String
    '�㷨�������ʱ��
    SurvivalTime As Double
    '�㷨������Ϊ�ļ�¼��
    Trace As String
    '�㷨��õ�������Ϣ֡��,CHR(30)�ָ�
    Memory As String
End Type

Public Const �Ӿ���ɫ = 14381203, �ƶ���ɫ = 16748574, ������ɫ = 2003199
Public Const �㷨�������� = 1, �������� = 2
Public �㷨������ As Two_dimensional_coordinates
Public �㷨������λ���� As Double
Public �ռ�����() As Long, �㷨����() As Algorithmic_Vector, ������() As Reward
Public �Ӿ����ӻ����� As Boolean, �ƶ����ӻ����� As Boolean, �������ӻ����� As Boolean, ��ͣ���� As Boolean
Public һ�������� As String, ���������� As String

Sub Main()

    �㷨������λ���� = 1
    
    ReDim ������(0)
    
    Ui.Show
    
    With Ui
    
        .�㷨����.Height = .���ӻ�������.Height
        .�㷨����.Width = .���ӻ�������.Width
        .�㷨����.Left = 0
        .�㷨����.Top = 0
        
        �㷨������.X = 9
        �㷨������.Y = 9
        ReDim �ռ�����(�㷨������.X, �㷨������.Y)
        .�㷨����.Scale (0, 0)-(�㷨������.X, �㷨������.Y)
        
    End With
    
End Sub
