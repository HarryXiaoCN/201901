VERSION 5.00
Begin VB.Form Ui 
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000007&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "�㷨����"
   ClientHeight    =   12825
   ClientLeft      =   10800
   ClientTop       =   2715
   ClientWidth     =   14340
   BeginProperty Font 
      Name            =   "΢���ź�"
      Size            =   12
      Charset         =   134
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   12825
   ScaleWidth      =   14340
   Begin VB.TextBox ����������� 
      Appearance      =   0  'Flat
      BackColor       =   &H80000007&
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   10.5
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000005&
      Height          =   7215
      Left            =   10320
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   10
      Text            =   "Ui.frx":0000
      ToolTipText     =   "�ڴ�¼��˳ʱ��켣��������ִ��ȫ�ַ�ƥ���Լ���Ƿ���Ͻ����켣��""!""��Ϊ�������ɴ�,""$""�ź�Ϊ�������꽱����������"
      Top             =   2160
      Width           =   3855
   End
   Begin VB.TextBox �ƶ�ͨ������� 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000007&
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   10.5
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000005&
      Height          =   375
      Left            =   10320
      Locked          =   -1  'True
      TabIndex        =   8
      Text            =   "0,0 0,1 1,1 1,0 1,-1 0,-1 -1,-1 -1,0 -1,1 "
      Top             =   1320
      Width           =   3855
   End
   Begin VB.TextBox �Ӿ������ 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000007&
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   10.5
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000005&
      Height          =   375
      Left            =   10320
      Locked          =   -1  'True
      TabIndex        =   7
      Text            =   "0,0 0,1 1,1 1,0 1,-1 0,-1 -1,-1 -1,0 -1,1 0,2 2,2 2,0 2,-2 0,-2 -2,-2 -2,0 -2,2"
      Top             =   480
      Width           =   3855
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      Caption         =   "��    ��"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   10320
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   9600
      Width           =   3855
   End
   Begin VB.Timer �ļ���дʱ�� 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   13920
      Top             =   12480
   End
   Begin VB.PictureBox ���ӻ������� 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000007&
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   10000
      Left            =   120
      ScaleHeight     =   9975
      ScaleWidth      =   9975
      TabIndex        =   0
      Top             =   120
      Width           =   10000
      Begin VB.PictureBox �㷨���� 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         BackColor       =   &H00404040&
         BeginProperty Font 
            Name            =   "΢���ź�"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   12000
         Left            =   -10
         ScaleHeight     =   11970
         ScaleWidth      =   11970
         TabIndex        =   1
         Top             =   -10
         Width           =   12000
      End
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000001&
      Caption         =   "����״̬"
      ForeColor       =   &H0000C000&
      Height          =   2295
      Left            =   120
      TabIndex        =   4
      Top             =   10200
      Width           =   14055
      Begin VB.ListBox ����״̬�б� 
         Appearance      =   0  'Flat
         BackColor       =   &H80000001&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "΢���ź�"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   1815
         Left            =   120
         TabIndex        =   5
         TabStop         =   0   'False
         Top             =   360
         Width           =   13815
      End
   End
   Begin VB.Label Label4 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "����"
      ForeColor       =   &H0000C000&
      Height          =   315
      Left            =   13680
      TabIndex        =   12
      ToolTipText     =   "���������/��ʾ���б�����ɹ۲⵽���㷨��������"
      Top             =   120
      Width           =   480
   End
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "����������"
      ForeColor       =   &H8000000D&
      Height          =   315
      Left            =   10320
      TabIndex        =   11
      Top             =   1800
      Width           =   1440
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "�ƶ�ͨ������"
      ForeColor       =   &H8000000D&
      Height          =   315
      Left            =   10320
      TabIndex        =   9
      Top             =   960
      Width           =   1440
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "�����Ӿ�����"
      ForeColor       =   &H8000000D&
      Height          =   315
      Left            =   10320
      TabIndex        =   6
      Top             =   120
      Width           =   1440
   End
   Begin VB.Label ���λ����Ϣ 
      AutoSize        =   -1  'True
      BackColor       =   &H80000007&
      BackStyle       =   0  'Transparent
      Caption         =   "��ǰ���λ�ã�"
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   120
      TabIndex        =   2
      Top             =   12480
      Width           =   1680
   End
   Begin VB.Menu �˵� 
      Caption         =   "�˵�"
      Begin VB.Menu �˳� 
         Caption         =   "�˳�"
      End
   End
   Begin VB.Menu ��ͼ 
      Caption         =   "��ͼ"
      Begin VB.Menu ���ƿռ���� 
         Caption         =   "���ƿռ����"
         Checked         =   -1  'True
      End
   End
   Begin VB.Menu ���� 
      Caption         =   "����"
      Begin VB.Menu ���� 
         Caption         =   "����"
         Begin VB.Menu �������� 
            Caption         =   "����"
         End
         Begin VB.Menu �����ʼ���� 
            Caption         =   "��ʼ����"
         End
         Begin VB.Menu ������������ 
            Caption         =   "��������"
         End
      End
      Begin VB.Menu ���� 
         Caption         =   "����"
         Begin VB.Menu ���� 
            Caption         =   "����"
            Begin VB.Menu �����Ӿ����� 
               Caption         =   "�Ӿ�����"
            End
            Begin VB.Menu �����ƶ����� 
               Caption         =   "�ƶ�����"
            End
         End
         Begin VB.Menu ���� 
            Caption         =   "����"
            Begin VB.Menu ���ɽ������� 
               Caption         =   "��������"
            End
            Begin VB.Menu ����������� 
               Caption         =   "�������"
            End
         End
      End
      Begin VB.Menu ���ػ���ʾ������� 
         Caption         =   "���ؽ������"
      End
   End
   Begin VB.Menu ʷ�� 
      Caption         =   "ʷ��"
      Begin VB.Menu ����ʷ�� 
         Caption         =   "����ʷ��"
      End
   End
End
Attribute VB_Name = "Ui"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    If �ļ���дʱ��.Enabled = False Then
        Me.����.Enabled = False
        Me.��������.Enabled = False
        Me.�����ʼ����.Enabled = False
        �Ӿ������_Change
        �ƶ�ͨ�������_Change
        �����������_Change
        �ļ���дʱ��.Enabled = True
        Command1.Caption = "��ͣ"
    ElseIf ��ͣ���� Then
        ��ͣ���� = False
        Command1.Caption = "��ͣ"
    Else
        ��ͣ���� = True
        Command1.Caption = "����"
    End If
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    Select Case KeyCode
        Case 27
            �㷨����.SetFocus
    End Select
End Sub

Private Sub Form_Load()
    �㷨������.X = �㷨����.Width
    �㷨������.Y = �㷨����.Height
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    Dim ȷ���˳� As String
    If UCase(InputBox("ȷ���˳�����", "�ر�ȷ��", "YES")) = "YES" Then
        End
    Else
        Cancel = 1
    End If
End Sub

Private Sub Label4_Click()
    ���ػ���ʾ�������_Click
End Sub

Private Sub �����Ӿ�����_Click()
    �Ӿ������.Text = �������Ӷ�����(�Ӿ������.Text)
End Sub

Private Sub �����ƶ�����_Click()
    �ƶ�ͨ�������.Text = �������Ӷ�����(�ƶ�ͨ�������.Text)
End Sub

Private Sub ���ƿռ����_Click()
    If ���ƿռ����.Checked = False Then
        ���ƿռ����.Checked = True
        ����_�ռ����
    Else
        ���ƿռ����.Checked = False
    End If
End Sub

Private Sub ����ʷ��_Click()
    ʷ��·�� = App.Path & "\" & �㷨����(0).Name & Format(Now, "yyyy��mm��dd��hhʱmm��ss����.ʷ��")
    ����ʷ��.Checked = True
    ����ʷ��.Enabled = False
    Exit Sub
Er:
    MsgBox "����ʷ��ʧ�ܣ�" & vbCrLf & Err.Description, 16, "����ʷ��"
    ����ʷ��.Checked = False
    ����ʷ��.Enabled = True
End Sub

Private Sub �����������_Change()
    �����������_�������� = �����������.Text
End Sub

Private Sub ���ɽ�������_Click()
    Dim CMD As String, ����() As String, �¹����� As String, ������� As Long, ��������ж��� As Long
    Dim ��С���� As Long, ��󲽳� As Long, ��С�������� As Long, ����������� As Long, i As Long
'    On Error GoTo Er
    CMD = InputBox("ָ��������С����,��󲽳�,��С��������,�����������", "������ɽ�������", "3,10,2,5")
    ���� = Split(CMD, ",")
    ��С���� = Val(����(0))
    ��󲽳� = Val(����(1))
    ��С�������� = Val(����(2))
    ����������� = Val(����(3))
    ������� = ��ȡ�������(��С��������, �����������)
    For i = 1 To �������
        ��������ж��� = ��ȡ�������(0, 1)
        �¹����� = �¹����� & ������ɽ�������(��С����, ��󲽳�, �ƶ�ͨ�������.Text, ��������ж���) & vbCrLf
    Next
    �����������.Text = Mid(�¹�����, 1, Len(�¹�����) - 1)
    Exit Sub
Er:
    MsgBox "������������ʧ�ܣ�" & vbCrLf & Err.Description, 16, "������ɽ�������"
End Sub

Private Sub �����������_Click()
    Dim CMD As String, CMDTmp() As String, ������� As Long, i As Long, ���� As Two_dimensional_coordinates
    On Error GoTo Er
    CMD = InputBox("�������ɽ�������ܸ������䣺", "�����������", "3,9")
    CMDTmp = Split(CMD, ",")
    ������� = ��ȡ�������(Val(CMDTmp(0)), Val(CMDTmp(1)))
    For i = 1 To �������
        ����.X = ��ȡ�������(LBound(�ռ�����, 1), UBound(�ռ�����, 1) - 1)
        ����.Y = ��ȡ�������(LBound(�ռ�����, 2), UBound(�ռ�����, 2) - 1)
        �������� ����, True
        Debug.Print ����.X, ����.Y
    Next
Er:
End Sub

Private Sub �ƶ�ͨ�������_Change()
    �㷨�ƶ�ͨ������_�ƶ�ͨ������ = �ƶ�ͨ�������.Text
End Sub
Private Sub �Ӿ������_Change()
    �㷨�Ӿ�����_�Ӿ����� = �Ӿ������.Text
End Sub

Private Sub �����������_GotFocus()
    �������ӻ����� = True
    If ��ͣ���� And �ļ���дʱ��.Enabled Then
        �����������.Locked = False
    Else
        �����������.Locked = True
    End If
    �����������.ForeColor = ������ɫ
End Sub

Private Sub �ƶ�ͨ�������_GotFocus()
    �ƶ����ӻ����� = True
    If ��ͣ���� And �ļ���дʱ��.Enabled Then
        �ƶ�ͨ�������.Locked = False
    Else
        �ƶ�ͨ�������.Locked = True
    End If
    �ƶ�ͨ�������.BackColor = �ƶ���ɫ
    �ƶ�ͨ�������.ForeColor = RGB(75, 0, 130)
End Sub

Private Sub �Ӿ������_GotFocus()
    �Ӿ����ӻ����� = True
    If ��ͣ���� And �ļ���дʱ��.Enabled Then
        �Ӿ������.Locked = False
    Else
        �Ӿ������.Locked = True
    End If
    �Ӿ������.BackColor = �Ӿ���ɫ
    �Ӿ������.ForeColor = RGB(75, 0, 130)
End Sub

Private Sub �����������_LostFocus()
    �������ӻ����� = False
    �����������.ForeColor = RGB(255, 255, 255)
End Sub

Private Sub �ƶ�ͨ�������_LostFocus()
    �ƶ����ӻ����� = False
    �ƶ�ͨ�������.BackColor = RGB(0, 0, 0)
    �ƶ�ͨ�������.ForeColor = RGB(255, 255, 255)
End Sub

Private Sub �Ӿ������_LostFocus()
    �Ӿ����ӻ����� = False
    �Ӿ������.BackColor = RGB(0, 0, 0)
    �Ӿ������.ForeColor = RGB(255, 255, 255)
End Sub

Private Sub �㷨����_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim ���� As Two_dimensional_coordinates
On Error GoTo Er
    ����.X = Int(X): ����.Y = Int(Y)
    If Me.�ļ���дʱ��.Enabled = False Then
        If buttom = 1 Then
            �㷨����(0).Position.X = ����.X
            �㷨����(1).Position.Y = ����.Y
        ElseIf Button = 2 Then
            �ռ�����(����.X, ����.Y) = 3
        End If
    ElseIf �ռ�����(����.X, ����.Y) = 0 Then
        �������� ����, True
    End If
Er:
End Sub

Private Sub �㷨����_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ���λ����Ϣ.Caption = "��ǰ���λ�� - X:" & Int(X) & "  Y:" & Int(Y)
End Sub

Private Sub �˳�_Click()
    End
End Sub

Private Sub �ļ���дʱ��_Timer()
    �㷨��������
End Sub


Private Sub ���ػ���ʾ�������_Click()
    If Label4.Caption = "����" Then
        �Ӿ������.Visible = False
        �ƶ�ͨ�������.Visible = False
        �����������.Visible = False
        �㷨����.Visible = False
        ����״̬�б�.Visible = False
        ���ػ���ʾ�������.Caption = "��ʾ�������"
        Label4.Caption = "��ʾ"
    Else
        �Ӿ������.Visible = True
        �ƶ�ͨ�������.Visible = True
        �����������.Visible = True
        �㷨����.Visible = True
        ����״̬�б�.Visible = True
        ���ػ���ʾ�������.Caption = "���ؽ������"
        Label4.Caption = "����"
    End If
End Sub

Private Sub �����ʼ����_Click()
    �㷨����(0).Health = Val(InputBox("�㷨��������ֵ��", "�����㷨��������ֵ", 10))
End Sub

Private Sub ��������_Click()
    �㷨����(0).Name = InputBox("�㷨�������֣�", "�����㷨��������", "С����")
End Sub

Private Sub ������������_Click()
    Dim ����() As String, i As Long
    On Error GoTo Er
    ���� = Split(InputBox("��������Ҫ�����������������֣����ԡ�,��������������ú������ֵ��", "������������", "С����,10"), ",")
    For i = 0 To UBound(�㷨����)
        If �㷨����(i).Name = ����(0) Then
            �㷨����(i).Health = Val(����(1)): Exit Sub
        End If
    Next
Er:
End Sub
