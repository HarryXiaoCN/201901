Attribute VB_Name = "全局变量"
'定义二维坐标类变量结构
Public Type Two_dimensional_coordinates
    X As Long
    Y As Long
End Type

'定义奖励类变量结构
Public Type Reward
    Be As Boolean
    Position As Two_dimensional_coordinates
End Type

'定义算法载体类变量结构
Public Type Algorithmic_Vector
    '算法载体名称，界面程序根据名称制造独一无二的txt文本与其他进程交流
    Name As String
    '算法载体的生命值
    Health As Double
    '算法载体当前在算法环境中的坐标
    Position  As Two_dimensional_coordinates
    '算法载体当前能在环境中获取的所有信息，将被界面程序处理成txt文件以被算法引擎读取
    Info As String
    '界面程序从磁盘txt文件中读取的行为
    Action As String
    '算法载体存活的时间
    SurvivalTime As Double
    '算法所有行为的记录集
    Trace As String
    '算法获得的所有信息帧集,CHR(30)分隔
    Memory As String
End Type

Public Const 视觉颜色 = 14381203, 移动颜色 = 16748574, 奖励颜色 = 2003199
Public Const 算法载体索引 = 1, 奖励索引 = 2
Public 算法环境边 As Two_dimensional_coordinates
Public 算法环境单位长度 As Double
Public 空间事物() As Long, 算法载体() As Algorithmic_Vector, 奖励集() As Reward
Public 视觉可视化开关 As Boolean, 移动可视化开关 As Boolean, 奖励可视化开关 As Boolean, 暂停开关 As Boolean
Public 一级函数名 As String, 二级函数名 As String

Sub Main()

    算法环境单位长度 = 1
    
    ReDim 奖励集(0)
    
    Ui.Show
    
    With Ui
    
        .算法环境.Height = .可视环境容器.Height
        .算法环境.Width = .可视环境容器.Width
        .算法环境.Left = 0
        .算法环境.Top = 0
        
        算法环境边.X = 9
        算法环境边.Y = 9
        ReDim 空间事物(算法环境边.X, 算法环境边.Y)
        .算法环境.Scale (0, 0)-(算法环境边.X, 算法环境边.Y)
        
    End With
    
End Sub
