VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.ocx"
Object = "{95D85F43-414D-432F-909E-2ED57BBC389C}#1.2#0"; "MCLHotkey.ocx"
Begin VB.Form Runner 
   AutoRedraw      =   -1  'True
   Caption         =   "Ant Runner"
   ClientHeight    =   7710
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10590
   Icon            =   "Runner.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7710
   ScaleWidth      =   10590
   StartUpPosition =   2  'CenterScreen
   Begin MCLHotkey.VBHotKey VBHotKey 
      Left            =   7080
      Top             =   6840
      _ExtentX        =   794
      _ExtentY        =   794
      VKey            =   127
      WinKey          =   0   'False
      Enabled         =   0   'False
   End
   Begin VB.CommandButton FakeTray 
      Caption         =   "FakeTray"
      Height          =   495
      Left            =   120
      TabIndex        =   15
      Top             =   6840
      Visible         =   0   'False
      Width           =   1455
   End
   Begin MSComctlLib.ImageList TreeIcons 
      Left            =   5400
      Top             =   6720
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   16777215
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   3
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Runner.frx":0442
            Key             =   "build"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Runner.frx":06B3
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Runner.frx":093F
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Timer ResizeTimer 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   4800
      Top             =   6840
   End
   Begin VB.PictureBox PropertyPanel 
      FillColor       =   &H8000000C&
      Height          =   1935
      Left            =   720
      ScaleHeight     =   1875
      ScaleWidth      =   2715
      TabIndex        =   6
      Top             =   4320
      Width           =   2775
      Begin VB.TextBox txtBuild 
         BackColor       =   &H8000000F&
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   204
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         Left            =   1200
         TabIndex        =   14
         Top             =   120
         Width           =   1455
      End
      Begin VB.TextBox txtDescription 
         BackColor       =   &H8000000F&
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   204
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   645
         Left            =   1200
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         TabIndex        =   12
         Top             =   1200
         Width           =   1455
      End
      Begin VB.TextBox txtDepends 
         BackColor       =   &H8000000F&
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   204
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         Left            =   1200
         Locked          =   -1  'True
         TabIndex        =   11
         Top             =   840
         Width           =   1455
      End
      Begin VB.TextBox txtTarget 
         BackColor       =   &H8000000F&
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   204
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         Left            =   1200
         Locked          =   -1  'True
         TabIndex        =   10
         Top             =   480
         Width           =   1455
      End
      Begin VB.Label lblBuild 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Project:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   204
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000015&
         Height          =   285
         Left            =   0
         TabIndex        =   13
         Top             =   120
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Description:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   204
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000015&
         Height          =   285
         Left            =   0
         TabIndex        =   9
         Top             =   1200
         Width           =   1095
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Depends:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   204
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000015&
         Height          =   285
         Left            =   0
         TabIndex        =   8
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label lblTargetName 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Target:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   204
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000015&
         Height          =   285
         Left            =   0
         TabIndex        =   7
         Top             =   480
         Width           =   1095
      End
   End
   Begin MSComctlLib.TreeView FileTree 
      Height          =   3135
      Left            =   720
      TabIndex        =   4
      Top             =   1080
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   5530
      _Version        =   393217
      HideSelection   =   0   'False
      Indentation     =   441
      LabelEdit       =   1
      LineStyle       =   1
      Sorted          =   -1  'True
      Style           =   7
      ImageList       =   "TreeIcons"
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin AntRunner.ctlSplitterEx HSplitter 
      Height          =   5415
      Left            =   480
      TabIndex        =   5
      Top             =   960
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   9551
   End
   Begin RichTextLib.RichTextBox Log 
      Height          =   5535
      Left            =   3960
      TabIndex        =   3
      Top             =   720
      Width           =   5775
      _ExtentX        =   10186
      _ExtentY        =   9763
      _Version        =   393217
      BorderStyle     =   0
      ReadOnly        =   -1  'True
      ScrollBars      =   3
      RightMargin     =   65000
      AutoVerbMenu    =   -1  'True
      TextRTF         =   $"Runner.frx":0BC3
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Lucida Console"
         Size            =   9.75
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSComctlLib.ImageList Icons 
      Left            =   3600
      Top             =   6720
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   16777215
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   8
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Runner.frx":0C48
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Runner.frx":0DCC
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Runner.frx":0EED
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Runner.frx":115E
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Runner.frx":1275
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Runner.frx":1313
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Runner.frx":1564
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Runner.frx":168A
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComDlg.CommonDialog CD 
      Left            =   2880
      Top             =   6840
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.StatusBar Status 
      Align           =   2  'Align Bottom
      Height          =   270
      Left            =   0
      TabIndex        =   2
      Top             =   7440
      Width           =   10590
      _ExtentX        =   18680
      _ExtentY        =   476
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   2
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Text            =   "Status: Stopped"
            TextSave        =   "Status: Stopped"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Text            =   "Build: "
            TextSave        =   "Build: "
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar 
      Align           =   1  'Align Top
      Height          =   360
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   10590
      _ExtentX        =   18680
      _ExtentY        =   635
      ButtonWidth     =   609
      ButtonHeight    =   582
      Appearance      =   1
      Style           =   1
      ImageList       =   "Icons"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   12
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Add build file"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
            Object.ToolTipText     =   "Remove build file"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
            Object.ToolTipText     =   "Run"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
            Object.ToolTipText     =   "Stop build"
            ImageIndex      =   8
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Options"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "On Top"
            ImageIndex      =   5
            Style           =   1
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Floating window"
            ImageIndex      =   6
            Style           =   1
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "About"
            ImageIndex      =   7
         EndProperty
      EndProperty
      BorderStyle     =   1
   End
   Begin AntRunner.ctlSplitterEx VSplitter 
      Height          =   6495
      Left            =   120
      TabIndex        =   0
      Top             =   480
      Width           =   9975
      _ExtentX        =   18230
      _ExtentY        =   12091
   End
   Begin VB.Menu mnuShell 
      Caption         =   "shell"
      Visible         =   0   'False
      Begin VB.Menu mnuMain 
         Caption         =   "Main window"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuFloat 
         Caption         =   "Floating window"
      End
      Begin VB.Menu mnuSep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuOptions 
         Caption         =   "Options"
      End
      Begin VB.Menu mnuSep2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "Exit"
      End
   End
End
Attribute VB_Name = "Runner"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'resize
Private prevState As Long
'Preferences
Private config As New clsConfig
'FileTree keys
Private TreeKeys As New Dictionary
'Runner
Private WithEvents Ant As clsRunner
Attribute Ant.VB_VarHelpID = -1



Private Sub Form_Load()
    Randomize
    prevState = vbNormal
    Set Ant = New clsRunner

    HSplitter.TileMode = TILE_HORIZONTALLY
    
    HSplitter.AttachObjects FileTree, PropertyPanel
    HSplitter.firstPanelPercentWidth = 75
    
    VSplitter.AttachObjects HSplitter, Log
    VSplitter.TileMode = TILE_VERTICALLY
    
    LoadBuilds
    
    load frmFloat
    frmFloat.State = 1
    
    Dim keySetup As New clsHotKeySetup
    keySetup.SetupKey config, VBHotKey
    
    TrayAdd FakeTray.hwnd, Me.Icon, "Ant Runner", MouseMove
End Sub


Public Sub LoadBuilds()
    Dim build As AntBuild
    Dim Builds As Collection
    Set Builds = config.Builds
    
    For Each build In Builds
        
       TreeKeys.Add build.Id, build
       
       FileTree.Nodes.Add , , build.Id, build.DisplayName, 2, 2
       For i = 1 To build.Targets.Count
          Dim AntTask As AntTarget
          Set AntTask = build.Targets.Item(i)
          TreeKeys.Add build.Id & AntTask.Name, AntTask
          FileTree.Nodes.Add build.Id, tvwChild, build.Id & AntTask.Name, AntTask.Name, 1, 1
       Next
    Next
End Sub



Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    If (config.MinimizeOnClose) Then
        Cancel = 1
        Me.Hide
        mnuMain.Checked = False
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Unload frmFloat
    TrayDelete
End Sub

Private Sub Form_Resize()
    Dim splitterHeight As Long
    
    VSplitter.Width = Me.Width - 380
    
    splitterHeight = Me.Height - VSplitter.Top - (Me.Height - Status.Top) - 80
    If (splitterHeight > 0) Then
        VSplitter.Height = splitterHeight
    End If
    
    If (Me.WindowState <> prevState) Then
        prevState = Me.WindowState
        ResizeTimer.Enabled = True
    End If
End Sub




Private Sub ResizeTimer_Timer()
    Form_Resize
    ResizeTimer.Enabled = False
End Sub


Private Sub FileTree_NodeClick(ByVal Node As MSComctlLib.Node)
    Dim Target As AntTarget
    Dim build As AntBuild
    If (TypeOf TreeKeys.Item(Node.Key) Is AntBuild) Then
        Set build = TreeKeys.Item(Node.Key)
        txtBuild.Text = build.Name
        txtTarget.Text = ""
        txtDepends.Text = ""
        txtDescription.Text = ""
    Else
        Set Target = TreeKeys.Item(Node.Key)
        txtBuild.Text = Target.build.Name
        txtTarget.Text = Target.Name
        txtDepends.Text = Target.Depends
        txtDescription.Text = Target.Description
    End If
    

    Toolbar.Buttons(2).Enabled = (Not FileTree.SelectedItem Is Nothing) And (TypeOf TreeKeys.Item(Node.Key) Is AntBuild)
    Toolbar.Buttons(4).Enabled = (Not FileTree.SelectedItem Is Nothing) And (TypeOf TreeKeys.Item(Node.Key) Is AntTarget)
    frmFloat.Toolbar.Buttons(1).Enabled = (Not FileTree.SelectedItem Is Nothing) And (TypeOf TreeKeys.Item(Node.Key) Is AntTarget)
End Sub


Private Sub FileTree_KeyPress(KeyAscii As Integer)
    If (KeyAscii = 13) Then
        RunBuildTarget
    End If
End Sub


Private Sub FileTree_DblClick()
    RunBuildTarget
End Sub


Private Sub PropertyPanel_Resize()
    Dim newWidth As Long
    newWidth = PropertyPanel.Width - txtTarget.Left - 80
    If (newWidth > 0) Then
        txtTarget.Width = newWidth
        txtDepends.Width = newWidth
        txtDescription.Width = newWidth
        txtBuild.Width = newWidth
    End If
    
    Dim newHeight As Long
    newHeight = PropertyPanel.Height - txtDescription.Top - 80
    If (newHeight > 0) Then
        txtDescription.Height = newHeight
    End If
End Sub




Private Sub Toolbar_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Index
        Case 1:
                AddBuildFile
        Case 2:
                RemoveBuildFile
        Case 4:
                RunBuildTarget
        Case 5:
                Ant.StopBuild
        Case 7:
                ShowOptions
        Case 9:
                SetAlwaysOnTopMode Me.hwnd, Button.value = tbrPressed
        Case 10:
                ShowFloatingWindow Button.value = tbrPressed
        Case 12:
                MsgBox "Ant Runner" & vbCrLf & "version " & App.Major & "." & App.Minor & "." & App.Revision, vbOKOnly, "About"
    End Select
End Sub


Private Sub ShowFloatingWindow(isVisible As Boolean)
   If (isVisible) Then
      frmFloat.Show
      SetAlwaysOnTopMode frmFloat.hwnd, True
      mnuFloat.Checked = True
   Else
      frmFloat.Hide
      mnuFloat.Checked = False
   End If
End Sub


Private Sub ShowOptions()
    load frmOptions
    frmOptions.Show vbModal
End Sub


Public Sub RunBuildTarget()
    Dim Target As AntTarget
    If (Not FileTree.SelectedItem Is Nothing) Then
        If (TypeOf TreeKeys.Item(FileTree.SelectedItem.Key) Is AntTarget) Then
            Set Target = TreeKeys.Item(FileTree.SelectedItem.Key)
            Log.Text = ""
            Ant.RunBuild Target
        End If
    End If
End Sub


Private Sub RemoveBuildFile()
    Dim build As AntBuild
    Dim nodx As Node
    
    Set build = TreeKeys.Item(FileTree.SelectedItem.Key)
    config.DeleteBuild build.Id
    
    FileTree.Nodes.Remove FileTree.SelectedItem.Index
    
    If (FileTree.SelectedItem Is Nothing) Then
        txtBuild.Text = ""
        txtTarget.Text = ""
        txtDepends.Text = ""
        txtDescription.Text = ""
    End If
End Sub


Private Sub AddBuildFile()
   Dim i As Long
   Dim nodx As Node
   Dim build As New AntBuild
   

   CD.Filter = "XML Files (*.xml)|*.xml"
   CD.ShowOpen
   If (Len(CD.FileName) > 0) Then
       build.BuildFile = CD.FileName
       build.DisplayName = InputBox("Enter build display name", "Ant Runner", CD.FileName)
       build.GenerateId
       
       TreeKeys.Add build.Id, build
       
       Set nodx = FileTree.Nodes.Add(, , build.Id, build.DisplayName, 2, 2)
       For i = 1 To build.Targets.Count
          Dim AntTask As AntTarget
          Set AntTask = build.Targets.Item(i)
          TreeKeys.Add build.Id & AntTask.Name, AntTask
          Set nodx = FileTree.Nodes.Add(build.Id, tvwChild, build.Id & AntTask.Name, AntTask.Name, 1, 1)
       Next i
       
       build.save config.prefs
   End If
End Sub


Private Sub Ant_onBuildStart()
    Status.Panels(1).Text = "Status: Running"
    Toolbar.Buttons(4).Enabled = False
    Toolbar.Buttons(5).Enabled = True
    FileTree.Enabled = False
    frmFloat.Toolbar.Buttons(1).Enabled = False
    frmFloat.State = 3
End Sub

Private Sub Ant_onBuildError()
    Status.Panels(1).Text = "Status: Stopped"
    Status.Panels(2).Text = "Build: Failed"
    Toolbar.Buttons(4).Enabled = True
    Toolbar.Buttons(5).Enabled = False
    FileTree.Enabled = True
    frmFloat.Toolbar.Buttons(1).Enabled = True
    If (Me.Visible) Then
        FileTree.SetFocus
    End If
    frmFloat.State = 2
    If (config.ShowBaloon) Then
        DisplayBalloon "Ant", "Build Failed", NIIF_ERROR
    End If
End Sub

Private Sub Ant_onBuildSuccess()
    Status.Panels(1).Text = "Status: Stopped"
    Status.Panels(2).Text = "Build: Successfull"
    Toolbar.Buttons(4).Enabled = True
    Toolbar.Buttons(5).Enabled = False
    FileTree.Enabled = True
    frmFloat.Toolbar.Buttons(1).Enabled = True
    If (Me.Visible) Then
        FileTree.SetFocus
    End If
    frmFloat.State = 1
    If (config.ShowBaloon) Then
        DisplayBalloon "Ant", "Build Successfull", NIIF_INFO
    End If
End Sub

Private Sub Ant_onBuildProgess(data As String)
    Log.Text = Log.Text + data
    Log.SelStart = Len(Log.Text)
End Sub

Private Sub FakeTray_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim cEvent As Single
    cEvent = X / Screen.TwipsPerPixelX
    Select Case cEvent
        Case MouseMove
            'Debug.Print "MouseMove"
        Case LeftUp
            'Debug.Print "Left Up"
            'showHide
        Case LeftDown
            'Debug.Print "Left Down"
        Case LeftDbClick
            'Debug.Print "LeftDbClick"
            mnuMain_Click
        Case MiddleUp
            'Debug.Print "MiddleUp"
        Case MiddleDown
            'Debug.Print "MiddleDown"
        Case MiddleDbClick
            'Debug.Print "MiddleDbClick"
        Case RightUp
            'Debug.Print "RightUp" ': PopupMenu mnuShell
             PopupMenu mnuShell
        Case RightDown
            'Debug.Print "RightDown"
        Case RightDbClick
            'Debug.Print "RightDbClick"
    End Select
End Sub

Private Sub mnuExit_Click()
    Unload frmFloat
    Unload Me
    TrayDelete
    End
End Sub

Private Sub mnuFloat_Click()
    If (frmFloat.Visible = False) Then
        frmFloat.Show
        SetAlwaysOnTopMode frmFloat.hwnd, True
        Toolbar.Buttons(9).value = tbrPressed
        mnuFloat.Checked = True
    Else
        frmFloat.Hide
        Toolbar.Buttons(9).value = tbrUnpressed
        mnuFloat.Checked = False
    End If
End Sub


Private Sub mnuOptions_Click()
    load frmOptions
    frmOptions.Show vbModal
End Sub


Private Sub mnuMain_Click()
    If (Me.Visible) Then
        mnuMain.Checked = False
        Me.Hide
    Else
        Me.Show
        mnuMain.Checked = True
    End If
End Sub


Private Sub VBHotKey_HotkeyPressed()
    If (Toolbar.Buttons(4).Enabled) Then
        RunBuildTarget
    End If
End Sub
