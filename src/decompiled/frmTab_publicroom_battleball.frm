VERSION 5.00
Begin VB.Form frmTab_publicroom_battleball
  Caption = "Form2"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form2"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 4185
  ClientHeight = 2535
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmTab_publicroom_battleball.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 4215
    Height = 2550
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.TextBox Text3
      Left = 360
      Top = 1680
      Width = 1935
      Height = 225
      Text = "Loading.."
      TabIndex = 3
      BorderStyle = 0 'None
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Verdana"
        Size = 6.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox Text2
      Left = 2640
      Top = 1150
      Width = 1335
      Height = 225
      Text = "Loading.."
      TabIndex = 2
      BorderStyle = 0 'None
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Verdana"
        Size = 6.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox Text1
      Left = 360
      Top = 1140
      Width = 1935
      Height = 225
      Text = "Loading.."
      TabIndex = 1
      BorderStyle = 0 'None
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Verdana"
        Size = 6.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "BattleBall editor"
      ForeColor = &HFFFFFF&
      Left = 1200
      Top = 240
      Width = 1695
      Height = 255
      TabIndex = 7
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Verdana"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label4
      Caption = "Player:"
      ForeColor = &H0&
      Left = 240
      Top = 1440
      Width = 735
      Height = 255
      TabIndex = 6
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Verdana"
        Size = 6.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label3
      Caption = "Creator:"
      ForeColor = &H0&
      Left = 2110
      Top = 840
      Width = 1455
      Height = 255
      TabIndex = 5
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Verdana"
        Size = 6.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label2
      Caption = "Game name:"
      ForeColor = &H0&
      Left = -120
      Top = 840
      Width = 1695
      Height = 255
      TabIndex = 4
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Verdana"
        Size = 6.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Image Image1
      Picture = "frmTab_publicroom_battleball.frx":000230BA
      Left = 240
      Top = 1080
      Width = 2160
      Height = 330
    End
    Begin VB.Image Image2
      Picture = "frmTab_publicroom_battleball.frx":0002561C
      Left = 240
      Top = 1620
      Width = 2160
      Height = 330
    End
    Begin VB.Image Image3
      Picture = "frmTab_publicroom_battleball.frx":00027B7E
      Left = 2520
      Top = 1080
      Width = 1500
      Height = 330
    End
    Begin VB.Image Image4
      Left = 960
      Top = 2160
      Width = 375
      Height = 15
    End
    Begin VB.Image Command2
      Picture = "frmTab_publicroom_battleball.frx":00029588
      Left = 240
      Top = 2060
      Width = 3705
      Height = 300
    End
    Begin VB.Image Image16
      Picture = "frmTab_publicroom_battleball.frx":0002CFEA
      Left = 3600
      Top = 180
      Width = 360
      Height = 330
    End
  End
End

Attribute VB_Name = "frmTab_publicroom_battleball"

Option Explicit

' BattleBall Editor Form
' Allows configuration of BattleBall game settings

Private Const WM_NCLBUTTONDOWN As Long = &HA1
Private Const HTCAPTION As Long = 2
Private Const HWND_TOPMOST As Long = -1
Private Const HWND_NOTOPMOST As Long = -2
Private Const SWP_NOSIZE As Long = 1
Private Const SWP_NOMOVE As Long = 2
Private Const SWP_FLAGS As Long = SWP_NOSIZE Or SWP_NOMOVE

Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function ReleaseCapture Lib "user32" () As Long
Private Declare Function SetWindowPos Lib "user32" (ByVal hWnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long

Private Sub Image16_Click()
    ' Close button clicked - hide the form
    Me.Hide
End Sub

Private Sub Command2_Click()
    ' Save button clicked - save BattleBall settings to INI file
    Dim sSettingsFile As String

    sSettingsFile = gAppPath & "configuration\settings.ini"

    ' Save game name
    WriteINI "server", "bbname", Me.Text1.Text, sSettingsFile

    ' Save creator/owner and player
    WriteINI "server", "bbownerandplayer", Me.Text2.Text, sSettingsFile

    ' Save player 2
    WriteINI "Server", "bbplayer2", Me.Text3.Text, sSettingsFile

    MsgBox "Battle ball changes saved!", vbInformation
End Sub

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ' Allow dragging the form by the picture, or unload on right-click
    If Button = 1 Then
        ' Left click - drag form
        ReleaseCapture
        SendMessage Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
    Else
        ' Right click - unload form
        Unload Me
    End If
End Sub

Private Sub Form_Load()
    Dim sSettingsFile As String

    ' Set window position based on foreground setting
    If GetINI("server", "foreground", gSettingsFile) = "Y" Then
        SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_FLAGS
    Else
        SetWindowPos Me.hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_FLAGS
    End If

    sSettingsFile = gAppPath & "configuration\settings.ini"

    ' Load BattleBall settings from INI file
    Me.Text1.Text = GetINI("server", "bbname", sSettingsFile)
    Me.Text2.Text = GetINI("server", "bbownerandplayer", sSettingsFile)
    Me.Text3.Text = GetINI("server", "bbplayer2", sSettingsFile)

    ' Enable all text boxes
    Me.Text1.Enabled = True
    Me.Text2.Enabled = True
    Me.Text3.Enabled = True
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ' Allow dragging the form, or unload on right-click
    If Button = 1 Then
        ' Left click - drag form
        ReleaseCapture
        SendMessage Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
    Else
        ' Right click - unload form
        Unload Me
    End If
End Sub
