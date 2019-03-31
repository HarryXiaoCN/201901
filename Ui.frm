VERSION 5.00
Begin VB.Form Ui 
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000007&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "算法环境"
   ClientHeight    =   12825
   ClientLeft      =   10800
   ClientTop       =   2715
   ClientWidth     =   14340
   BeginProperty Font 
      Name            =   "微软雅黑"
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
   Begin VB.TextBox 奖励规则定义框 
      Appearance      =   0  'Flat
      BackColor       =   &H80000007&
      BeginProperty Font 
         Name            =   "微软雅黑"
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
      ToolTipText     =   "在此录入顺时间轨迹串，程序将执行全字符匹配以检测是否符合奖励轨迹；""!""后为奖励生成处,""$""号后为绝对坐标奖励生成坐标"
      Top             =   2160
      Width           =   3855
   End
   Begin VB.TextBox 移动通道定义框 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000007&
      BeginProperty Font 
         Name            =   "微软雅黑"
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
   Begin VB.TextBox 视觉定义框 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000007&
      BeginProperty Font 
         Name            =   "微软雅黑"
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
      Caption         =   "启    动"
      BeginProperty Font 
         Name            =   "微软雅黑"
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
   Begin VB.Timer 文件读写时钟 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   13920
      Top             =   12480
   End
   Begin VB.PictureBox 可视环境容器 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000007&
      BeginProperty Font 
         Name            =   "宋体"
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
      Begin VB.PictureBox 算法环境 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         BackColor       =   &H00404040&
         BeginProperty Font 
            Name            =   "微软雅黑"
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
      Caption         =   "载体状态"
      ForeColor       =   &H0000C000&
      Height          =   2295
      Left            =   120
      TabIndex        =   4
      Top             =   10200
      Width           =   14055
      Begin VB.ListBox 载体状态列表 
         Appearance      =   0  'Flat
         BackColor       =   &H80000001&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "微软雅黑"
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
      Caption         =   "隐藏"
      ForeColor       =   &H0000C000&
      Height          =   315
      Left            =   13680
      TabIndex        =   12
      ToolTipText     =   "点击将隐藏/显示所有本程序可观测到的算法环境部分"
      Top             =   120
      Width           =   480
   End
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "奖励规则定义"
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
      Caption         =   "移动通道定义"
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
      Caption         =   "载体视觉定义"
      ForeColor       =   &H8000000D&
      Height          =   315
      Left            =   10320
      TabIndex        =   6
      Top             =   120
      Width           =   1440
   End
   Begin VB.Label 鼠标位置信息 
      AutoSize        =   -1  'True
      BackColor       =   &H80000007&
      BackStyle       =   0  'Transparent
      Caption         =   "当前鼠标位置："
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   120
      TabIndex        =   2
      Top             =   12480
      Width           =   1680
   End
   Begin VB.Menu 菜单 
      Caption         =   "菜单"
      Begin VB.Menu 退出 
         Caption         =   "退出"
      End
   End
   Begin VB.Menu 视图 
      Caption         =   "视图"
      Begin VB.Menu 绘制空间格线 
         Caption         =   "绘制空间格线"
         Checked         =   -1  'True
      End
   End
   Begin VB.Menu 参数 
      Caption         =   "参数"
      Begin VB.Menu 载体 
         Caption         =   "载体"
         Begin VB.Menu 载体名字 
            Caption         =   "名字"
         End
         Begin VB.Menu 载体初始生命 
            Caption         =   "初始生命"
         End
         Begin VB.Menu 载体重置生命 
            Caption         =   "重置生命"
         End
      End
      Begin VB.Menu 定义 
         Caption         =   "环境"
         Begin VB.Menu 打乱 
            Caption         =   "打乱"
            Begin VB.Menu 打乱视觉定义 
               Caption         =   "视觉定义"
            End
            Begin VB.Menu 打乱移动定义 
               Caption         =   "移动定义"
            End
         End
         Begin VB.Menu 生成 
            Caption         =   "生成"
            Begin VB.Menu 生成奖励规则 
               Caption         =   "奖励规则"
            End
            Begin VB.Menu 生成随机奖励 
               Caption         =   "随机奖励"
            End
         End
      End
      Begin VB.Menu 隐藏或显示界面参数 
         Caption         =   "隐藏界面参数"
      End
   End
   Begin VB.Menu 史书 
      Caption         =   "史书"
      Begin VB.Menu 启用史书 
         Caption         =   "启用史书"
      End
   End
End
Attribute VB_Name = "Ui"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    If 文件读写时钟.Enabled = False Then
        Me.定义.Enabled = False
        Me.载体名字.Enabled = False
        Me.载体初始生命.Enabled = False
        视觉定义框_Change
        移动通道定义框_Change
        奖励规则定义框_Change
        文件读写时钟.Enabled = True
        Command1.Caption = "暂停"
    ElseIf 暂停开关 Then
        暂停开关 = False
        Command1.Caption = "暂停"
    Else
        暂停开关 = True
        Command1.Caption = "继续"
    End If
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    Select Case KeyCode
        Case 27
            算法环境.SetFocus
    End Select
End Sub

Private Sub Form_Load()
    算法环境边.X = 算法环境.Width
    算法环境边.Y = 算法环境.Height
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    Dim 确认退出 As String
    If UCase(InputBox("确定退出程序？", "关闭确认", "YES")) = "YES" Then
        End
    Else
        Cancel = 1
    End If
End Sub

Private Sub Label4_Click()
    隐藏或显示界面参数_Click
End Sub

Private Sub 打乱视觉定义_Click()
    视觉定义框.Text = 随机组合视动定义(视觉定义框.Text)
End Sub

Private Sub 打乱移动定义_Click()
    移动通道定义框.Text = 随机组合视动定义(移动通道定义框.Text)
End Sub

Private Sub 绘制空间格线_Click()
    If 绘制空间格线.Checked = False Then
        绘制空间格线.Checked = True
        绘制_空间格线
    Else
        绘制空间格线.Checked = False
    End If
End Sub

Private Sub 启用史书_Click()
    史书路径 = App.Path & "\" & 算法载体(0).Name & Format(Now, "yyyy年mm月dd日hh时mm分ss秒启.史书")
    启用史书.Checked = True
    启用史书.Enabled = False
    Exit Sub
Er:
    MsgBox "启用史书失败！" & vbCrLf & Err.Description, 16, "启用史书"
    启用史书.Checked = False
    启用史书.Enabled = True
End Sub

Private Sub 奖励规则定义框_Change()
    奖励规则编码_奖励定义 = 奖励规则定义框.Text
End Sub

Private Sub 生成奖励规则_Click()
    Dim CMD As String, 函参() As String, 新规则奖励 As String, 随机条数 As Long, 随机绝对判断数 As Long
    Dim 最小步长 As Long, 最大步长 As Long, 最小生成条数 As Long, 最大生成条数 As Long, i As Long
'    On Error GoTo Er
    CMD = InputBox("指定规则最小步长,最大步长,最小生成条数,最大生成条数", "随机生成奖励规则", "3,10,2,5")
    函参 = Split(CMD, ",")
    最小步长 = Val(函参(0))
    最大步长 = Val(函参(1))
    最小生成条数 = Val(函参(2))
    最大生成条数 = Val(函参(3))
    随机条数 = 获取随机整数(最小生成条数, 最大生成条数)
    For i = 1 To 随机条数
        随机绝对判断数 = 获取随机整数(0, 1)
        新规则奖励 = 新规则奖励 & 随机生成奖励规则(最小步长, 最大步长, 移动通道定义框.Text, 随机绝对判断数) & vbCrLf
    Next
    奖励规则定义框.Text = Mid(新规则奖励, 1, Len(新规则奖励) - 1)
    Exit Sub
Er:
    MsgBox "参数错误，生成失败！" & vbCrLf & Err.Description, 16, "随机生成奖励规则"
End Sub

Private Sub 生成随机奖励_Click()
    Dim CMD As String, CMDTmp() As String, 随机总数 As Long, i As Long, 坐标 As Two_dimensional_coordinates
    On Error GoTo Er
    CMD = InputBox("输入生成奖励块的总个数区间：", "生成随机奖励", "3,9")
    CMDTmp = Split(CMD, ",")
    随机总数 = 获取随机整数(Val(CMDTmp(0)), Val(CMDTmp(1)))
    For i = 1 To 随机总数
        坐标.X = 获取随机整数(LBound(空间事物, 1), UBound(空间事物, 1) - 1)
        坐标.Y = 获取随机整数(LBound(空间事物, 2), UBound(空间事物, 2) - 1)
        奖励增灭 坐标, True
        Debug.Print 坐标.X, 坐标.Y
    Next
Er:
End Sub

Private Sub 移动通道定义框_Change()
    算法移动通道编码_移动通道定义 = 移动通道定义框.Text
End Sub
Private Sub 视觉定义框_Change()
    算法视觉编码_视觉定义 = 视觉定义框.Text
End Sub

Private Sub 奖励规则定义框_GotFocus()
    奖励可视化开关 = True
    If 暂停开关 And 文件读写时钟.Enabled Then
        奖励规则定义框.Locked = False
    Else
        奖励规则定义框.Locked = True
    End If
    奖励规则定义框.ForeColor = 奖励颜色
End Sub

Private Sub 移动通道定义框_GotFocus()
    移动可视化开关 = True
    If 暂停开关 And 文件读写时钟.Enabled Then
        移动通道定义框.Locked = False
    Else
        移动通道定义框.Locked = True
    End If
    移动通道定义框.BackColor = 移动颜色
    移动通道定义框.ForeColor = RGB(75, 0, 130)
End Sub

Private Sub 视觉定义框_GotFocus()
    视觉可视化开关 = True
    If 暂停开关 And 文件读写时钟.Enabled Then
        视觉定义框.Locked = False
    Else
        视觉定义框.Locked = True
    End If
    视觉定义框.BackColor = 视觉颜色
    视觉定义框.ForeColor = RGB(75, 0, 130)
End Sub

Private Sub 奖励规则定义框_LostFocus()
    奖励可视化开关 = False
    奖励规则定义框.ForeColor = RGB(255, 255, 255)
End Sub

Private Sub 移动通道定义框_LostFocus()
    移动可视化开关 = False
    移动通道定义框.BackColor = RGB(0, 0, 0)
    移动通道定义框.ForeColor = RGB(255, 255, 255)
End Sub

Private Sub 视觉定义框_LostFocus()
    视觉可视化开关 = False
    视觉定义框.BackColor = RGB(0, 0, 0)
    视觉定义框.ForeColor = RGB(255, 255, 255)
End Sub

Private Sub 算法环境_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim 坐标 As Two_dimensional_coordinates
On Error GoTo Er
    坐标.X = Int(X): 坐标.Y = Int(Y)
    If Me.文件读写时钟.Enabled = False Then
        If buttom = 1 Then
            算法载体(0).Position.X = 坐标.X
            算法载体(1).Position.Y = 坐标.Y
        ElseIf Button = 2 Then
            空间事物(坐标.X, 坐标.Y) = 3
        End If
    ElseIf 空间事物(坐标.X, 坐标.Y) = 0 Then
        奖励增灭 坐标, True
    End If
Er:
End Sub

Private Sub 算法环境_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    鼠标位置信息.Caption = "当前鼠标位置 - X:" & Int(X) & "  Y:" & Int(Y)
End Sub

Private Sub 退出_Click()
    End
End Sub

Private Sub 文件读写时钟_Timer()
    算法环境更新
End Sub


Private Sub 隐藏或显示界面参数_Click()
    If Label4.Caption = "隐藏" Then
        视觉定义框.Visible = False
        移动通道定义框.Visible = False
        奖励规则定义框.Visible = False
        算法环境.Visible = False
        载体状态列表.Visible = False
        隐藏或显示界面参数.Caption = "显示界面参数"
        Label4.Caption = "显示"
    Else
        视觉定义框.Visible = True
        移动通道定义框.Visible = True
        奖励规则定义框.Visible = True
        算法环境.Visible = True
        载体状态列表.Visible = True
        隐藏或显示界面参数.Caption = "隐藏界面参数"
        Label4.Caption = "隐藏"
    End If
End Sub

Private Sub 载体初始生命_Click()
    算法载体(0).Health = Val(InputBox("算法载体生命值：", "设置算法载体生命值", 10))
End Sub

Private Sub 载体名字_Click()
    算法载体(0).Name = InputBox("算法载体名字：", "设置算法载体名字", "小白鼠")
End Sub

Private Sub 载体重置生命_Click()
    Dim 命令() As String, i As Long
    On Error GoTo Er
    命令 = Split(InputBox("请输入需要重置生命的载体名字，并以“,”结束后加上重置后的生命值！", "重置载体生命", "小白鼠,10"), ",")
    For i = 0 To UBound(算法载体)
        If 算法载体(i).Name = 命令(0) Then
            算法载体(i).Health = Val(命令(1)): Exit Sub
        End If
    Next
Er:
End Sub
