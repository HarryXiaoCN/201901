VERSION 5.00
Begin VB.Form Ui 
   Appearance      =   0  'Flat
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   Caption         =   "���˵�С����"
   ClientHeight    =   4950
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   22650
   FillColor       =   &H00FFFFFF&
   BeginProperty Font 
      Name            =   "΢���ź�"
      Size            =   12
      Charset         =   134
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H8000000B&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   4950
   ScaleWidth      =   22650
   StartUpPosition =   2  '��Ļ����
   Begin VB.ListBox ��¼ 
      Appearance      =   0  'Flat
      BackColor       =   &H00404040&
      ForeColor       =   &H80000005&
      Height          =   4755
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   4815
   End
   Begin VB.Timer �ļ���дʱ�� 
      Interval        =   200
      Left            =   16440
      Top             =   4440
   End
   Begin VB.Label ����ֵ 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "��ǰ������"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   330
      Left            =   5040
      TabIndex        =   3
      Top             =   120
      Width           =   1200
   End
   Begin VB.Label �ƶ�ͨ�� 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "�ƶ�1"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   330
      Index           =   0
      Left            =   5040
      TabIndex        =   1
      Top             =   3240
      Width           =   630
   End
   Begin VB.Label �Ӿ�ͨ�� 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "�Ӿ�1:0"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   330
      Index           =   0
      Left            =   5040
      TabIndex        =   0
      Top             =   1440
      Width           =   855
   End
End
Attribute VB_Name = "Ui"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Type ֡
    �Ӿ�֡() As String
    Ѫ�� As Double
    �ƶ�ͨ���� As Long
End Type
Private ���X As Single, ���Y As Single, �ƶ�ͨ������ As Integer, ��Ϣ֡ As ֡, �Ӿ��ؼ��� As Long, �ƶ��ؼ��� As Long


Private Sub Form_Load()
    ���������Ϣ֡
End Sub

Private Function �Ӿ���ֵ()
    Dim i As Long, ���� As String
    On Error GoTo Er
    For i = 1 To UBound(��Ϣ֡.�Ӿ�֡) + 1
        ���� = "�Ӿ�" & i & ":" & ��Ϣ֡.�Ӿ�֡(i - 1)
        �Ӿ�ͨ��(i - 1).Caption = ����
    Next
Er:
End Function

Private Function �Ӿ��ؼ�����()
    Dim i As Long
    On Error GoTo Er
    If UBound(��Ϣ֡.�Ӿ�֡) > �Ӿ��ؼ��� Then
        For i = �Ӿ��ؼ��� To UBound(��Ϣ֡.�Ӿ�֡) - 1
            Load �Ӿ�ͨ��(i + 1)
            �Ӿ�ͨ��(i + 1).Caption = "�Ӿ�" & i + 2 & ":"
            �Ӿ�ͨ��(i + 1).Left = �Ӿ�ͨ��(i).Width + �Ӿ�ͨ��(i).Left + 240
            �Ӿ�ͨ��(i + 1).Visible = True
            �Ӿ��ؼ��� = �Ӿ��ؼ��� + 1
        Next
    ElseIf UBound(��Ϣ֡.�Ӿ�֡) < �Ӿ��ؼ��� Then
        For i = UBound(��Ϣ֡.�Ӿ�֡) + 1 To �Ӿ��ؼ���
            �Ӿ�ͨ��(i).Visible = False
        Next
    End If
Er:
End Function

Private Function �ƶ��ؼ�����()
    Dim i As Long
    On Error GoTo Er
    If ��Ϣ֡.�ƶ�ͨ���� > �ƶ��ؼ��� Then
        For i = �ƶ��ؼ��� To ��Ϣ֡.�ƶ�ͨ���� - 1
            Load �ƶ�ͨ��(i + 1)
            �ƶ�ͨ��(i + 1).Caption = "�ƶ�" & i + 2
            �ƶ�ͨ��(i + 1).Left = �ƶ�ͨ��(i).Width + �ƶ�ͨ��(i).Left + 120
            �ƶ�ͨ��(i + 1).Visible = True
            �ƶ��ؼ��� = �ƶ��ؼ��� + 1
        Next
    ElseIf ��Ϣ֡.�ƶ�ͨ���� < �ƶ��ؼ��� Then
        For i = ��Ϣ֡.�ƶ�ͨ���� + 1 To �ƶ��ؼ���
            �ƶ�ͨ��(i).Visible = False
        Next
    End If
Er:
End Function

Private Sub �Ӿ�ͨ��_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    ���X = X: ���Y = Y
End Sub

Private Sub �Ӿ�ͨ��_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button > 0 Then
        �Ӿ�ͨ��(Index).Top = �Ӿ�ͨ��(Index).Top + (Y - ���Y)
        �Ӿ�ͨ��(Index).Left = �Ӿ�ͨ��(Index).Left + (X - ���X)
'        ���X = X: ���Y = Y
    End If
End Sub

Private Sub �ļ���дʱ��_Timer()
    ��ȡ��Ϣ֡
    ����ֵ.Caption = "��ǰ������" & ��Ϣ֡.Ѫ��
    �Ӿ��ؼ�����
    �ƶ��ؼ�����
    �Ӿ���ֵ
End Sub

Private Sub �ƶ�ͨ��_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    ���X = X: ���Y = Y
    If Button = 1 Then
        �ƶ�ͨ������ = Index
        �ƶ�ͨ��(Index).ForeColor = RGB(0, 255, 127)
        �´��ƶ����� Index + 1
    End If
End Sub

Private Sub �ƶ�ͨ��_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        �ƶ�ͨ��(Index).Top = �ƶ�ͨ��(Index).Top + (Y - ���Y)
        �ƶ�ͨ��(Index).Left = �ƶ�ͨ��(Index).Left + (X - ���X)
    End If
End Sub

Private Function �´��ƶ�����(ͨ����� As Integer)
    On Error GoTo Er
    If Dir("..\С����.action-RO") <> "" Then
        SaveFile_All "..\С����.action-RO", "ADIR " & ͨ�����
        Name "..\С����.action-RO" As "..\С����.action"
    Else
        SaveFile_All "..\С����.action", "ADIR " & ͨ�����
    End If
    ��¼.AddItem "д����Ϊ֡[" & ͨ����� & "]�ɹ���"
    Exit Function
Er:
    ��¼.AddItem "д����Ϊ֡[" & ͨ����� & "]ʧ�ܣ�"
End Function

Private Sub �ƶ�ͨ��_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    �ƶ�ͨ��(Index).ForeColor = &HFFFF00
End Sub

Private Function ���������Ϣ֡()
    If Dir("..\С����.action") <> "" Then
        Name "..\С����.action" As "..\С����.action-RO"
    End If
End Function

Private Function ��ȡ��Ϣ֡()
    Dim ��Ϣ As String, ��Ϣ����() As String
    If Dir("..\С����.info") <> "" Then
        ReadFile_ALL_HV "..\С����.info", ��Ϣ
        Name "..\С����.info" As "..\С����.info-RO"
        ��Ϣ���� = Split(��Ϣ, vbCrLf)
        With ��Ϣ֡
            .�Ӿ�֡ = Split(��Ϣ����(0), " ")
            .Ѫ�� = Val(Split(��Ϣ����(1), " ")(2))
            .�ƶ�ͨ���� = Val(Split(��Ϣ����(2), " ")(1))
        End With
    End If
End Function

Private Function SaveFile_All(fPath As String, outString As String)
    Dim fN As Integer
    fN = FreeFile
    Open fPath For Output As #fN
        Print #fN, outString
    Close #fN
End Function

Function ReadFile_ALL_HV(fPath As String, sourceString As String)
    Dim fN As Integer
    fN = FreeFile
    Open fPath For Binary As #fN
        sourceString = Input(LOF(1), #fN)
    Close #fN
End Function


