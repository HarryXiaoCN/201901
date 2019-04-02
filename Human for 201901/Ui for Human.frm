VERSION 5.00
Begin VB.Form Ui 
   Appearance      =   0  'Flat
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   Caption         =   "把人当小白鼠"
   ClientHeight    =   4950
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   22650
   FillColor       =   &H00FFFFFF&
   BeginProperty Font 
      Name            =   "微软雅黑"
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
   StartUpPosition =   2  '屏幕中心
   Begin VB.ListBox 记录 
      Appearance      =   0  'Flat
      BackColor       =   &H00404040&
      ForeColor       =   &H80000005&
      Height          =   4755
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   4815
   End
   Begin VB.Timer 文件读写时钟 
      Interval        =   200
      Left            =   16440
      Top             =   4440
   End
   Begin VB.Label 生命值 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "当前生命："
      BeginProperty Font 
         Name            =   "微软雅黑"
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
   Begin VB.Label 移动通道 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "移动1"
      BeginProperty Font 
         Name            =   "微软雅黑"
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
   Begin VB.Label 视觉通道 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "视觉1:0"
      BeginProperty Font 
         Name            =   "微软雅黑"
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
Private Type 帧
    视觉帧() As String
    血量 As Double
    移动通道数 As Long
End Type
Private 鼠标X As Single, 鼠标Y As Single, 移动通道缓存 As Integer, 信息帧 As 帧, 视觉控件数 As Long, 移动控件数 As Long


Private Sub Form_Load()
    清理残留信息帧
End Sub

Private Function 视觉赋值()
    Dim i As Long, 缓存 As String
    On Error GoTo Er
    For i = 1 To UBound(信息帧.视觉帧) + 1
        缓存 = "视觉" & i & ":" & 信息帧.视觉帧(i - 1)
        视觉通道(i - 1).Caption = 缓存
    Next
Er:
End Function

Private Function 视觉控件加载()
    Dim i As Long
    On Error GoTo Er
    If UBound(信息帧.视觉帧) > 视觉控件数 Then
        For i = 视觉控件数 To UBound(信息帧.视觉帧) - 1
            Load 视觉通道(i + 1)
            视觉通道(i + 1).Caption = "视觉" & i + 2 & ":"
            视觉通道(i + 1).Left = 视觉通道(i).Width + 视觉通道(i).Left + 240
            视觉通道(i + 1).Visible = True
            视觉控件数 = 视觉控件数 + 1
        Next
    ElseIf UBound(信息帧.视觉帧) < 视觉控件数 Then
        For i = UBound(信息帧.视觉帧) + 1 To 视觉控件数
            视觉通道(i).Visible = False
        Next
    End If
Er:
End Function

Private Function 移动控件加载()
    Dim i As Long
    On Error GoTo Er
    If 信息帧.移动通道数 > 移动控件数 Then
        For i = 移动控件数 To 信息帧.移动通道数 - 1
            Load 移动通道(i + 1)
            移动通道(i + 1).Caption = "移动" & i + 2
            移动通道(i + 1).Left = 移动通道(i).Width + 移动通道(i).Left + 120
            移动通道(i + 1).Visible = True
            移动控件数 = 移动控件数 + 1
        Next
    ElseIf 信息帧.移动通道数 < 移动控件数 Then
        For i = 信息帧.移动通道数 + 1 To 移动控件数
            移动通道(i).Visible = False
        Next
    End If
Er:
End Function

Private Sub 视觉通道_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    鼠标X = X: 鼠标Y = Y
End Sub

Private Sub 视觉通道_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button > 0 Then
        视觉通道(Index).Top = 视觉通道(Index).Top + (Y - 鼠标Y)
        视觉通道(Index).Left = 视觉通道(Index).Left + (X - 鼠标X)
'        鼠标X = X: 鼠标Y = Y
    End If
End Sub

Private Sub 文件读写时钟_Timer()
    获取信息帧
    生命值.Caption = "当前生命：" & 信息帧.血量
    视觉控件加载
    移动控件加载
    视觉赋值
End Sub

Private Sub 移动通道_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    鼠标X = X: 鼠标Y = Y
    If Button = 1 Then
        移动通道缓存 = Index
        移动通道(Index).ForeColor = RGB(0, 255, 127)
        下达移动命令 Index + 1
    End If
End Sub

Private Sub 移动通道_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        移动通道(Index).Top = 移动通道(Index).Top + (Y - 鼠标Y)
        移动通道(Index).Left = 移动通道(Index).Left + (X - 鼠标X)
    End If
End Sub

Private Function 下达移动命令(通道序号 As Integer)
    On Error GoTo Er
    If Dir("..\小白鼠.action-RO") <> "" Then
        SaveFile_All "..\小白鼠.action-RO", "ADIR " & 通道序号
        Name "..\小白鼠.action-RO" As "..\小白鼠.action"
    Else
        SaveFile_All "..\小白鼠.action", "ADIR " & 通道序号
    End If
    记录.AddItem "写入行为帧[" & 通道序号 & "]成功！"
    Exit Function
Er:
    记录.AddItem "写入行为帧[" & 通道序号 & "]失败！"
End Function

Private Sub 移动通道_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    移动通道(Index).ForeColor = &HFFFF00
End Sub

Private Function 清理残留信息帧()
    If Dir("..\小白鼠.action") <> "" Then
        Name "..\小白鼠.action" As "..\小白鼠.action-RO"
    End If
End Function

Private Function 获取信息帧()
    Dim 信息 As String, 信息缓存() As String
    If Dir("..\小白鼠.info") <> "" Then
        ReadFile_ALL_HV "..\小白鼠.info", 信息
        Name "..\小白鼠.info" As "..\小白鼠.info-RO"
        信息缓存 = Split(信息, vbCrLf)
        With 信息帧
            .视觉帧 = Split(信息缓存(0), " ")
            .血量 = Val(Split(信息缓存(1), " ")(2))
            .移动通道数 = Val(Split(信息缓存(2), " ")(1))
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


