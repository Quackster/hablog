VERSION 5.00
Begin VB.Form frmTab_publicroom_booteditor
  Caption = "frmTab_publicroom_booteditor"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form2"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 4185
  ClientHeight = 3195
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmTab_publicroom_booteditor.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 4215
    Height = 3210
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.CheckBox Check1
      Caption = "Enabled"
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 2280
      Top = 960
      Width = 1215
      Height = 255
      Enabled = 0   'False
      TabIndex = 6
      Appearance = 0 'Flat
    End
    Begin VB.TextBox Text1
      Left = 1680
      Top = 1030
      Width = 375
      Height = 195
      TabIndex = 5
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.TextBox Text2
      Left = 1680
      Top = 1410
      Width = 1935
      Height = 195
      Enabled = 0   'False
      TabIndex = 4
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.TextBox Text3
      Left = 1680
      Top = 1800
      Width = 1935
      Height = 195
      Enabled = 0   'False
      TabIndex = 3
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.TextBox Text4
      Left = 1680
      Top = 2230
      Width = 1935
      Height = 195
      Enabled = 0   'False
      TabIndex = 2
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.TextBox Text5
      Left = 1680
      Top = 2640
      Width = 1935
      Height = 195
      Enabled = 0   'False
      TabIndex = 1
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.Label Label1
      Caption = "Bot Editor"
      ForeColor = &HFFFFFF&
      Left = 240
      Top = 240
      Width = 3255
      Height = 255
      TabIndex = 12
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
    Begin VB.Label Label6
      Caption = "Look:"
      BackColor = &H80&
      Left = 360
      Top = 2640
      Width = 1095
      Height = 255
      TabIndex = 11
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label5
      Caption = "Walk Space:"
      BackColor = &H80&
      Left = 360
      Top = 2220
      Width = 1095
      Height = 255
      TabIndex = 10
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label4
      Caption = "Mission:"
      BackColor = &H80&
      Left = 360
      Top = 1800
      Width = 1095
      Height = 255
      TabIndex = 9
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label3
      Caption = "Bot name:"
      BackColor = &H80&
      Left = 360
      Top = 1320
      Width = 1095
      Height = 255
      TabIndex = 8
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label2
      Caption = "Public number:"
      BackColor = &H80&
      Left = 360
      Top = 960
      Width = 1095
      Height = 255
      TabIndex = 7
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Image2
      Picture = "frmTab_publicroom_booteditor.frx":0002C1CA
      Left = 1560
      Top = 960
      Width = 600
      Height = 330
    End
    Begin VB.Image Image1
      Picture = "frmTab_publicroom_booteditor.frx":0002CC5C
      Left = 1560
      Top = 1320
      Width = 2160
      Height = 330
    End
    Begin VB.Image Image3
      Picture = "frmTab_publicroom_booteditor.frx":0002F1BE
      Left = 1560
      Top = 1720
      Width = 2160
      Height = 330
    End
    Begin VB.Image Image4
      Picture = "frmTab_publicroom_booteditor.frx":00031720
      Left = 1560
      Top = 2160
      Width = 2160
      Height = 330
    End
    Begin VB.Image Image5
      Picture = "frmTab_publicroom_booteditor.frx":00033C82
      Left = 1560
      Top = 2550
      Width = 2160
      Height = 330
    End
    Begin VB.Image Image16
      Picture = "frmTab_publicroom_booteditor.frx":000361E4
      Left = 3600
      Top = 180
      Width = 360
      Height = 330
    End
  End
End

Attribute VB_Name = "frmTab_publicroom_booteditor"

Option Explicit

' Bot Editor Form for Public Rooms
' Allows editing bot settings (name, mission, walkspace, look, enabled) for public rooms
' Bot data is stored in pub\{room_number}\data.ini under [bot] section

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

Private Sub Form_Load()
    ' Set window position based on foreground setting
    If GetINI("server", "foreground", gSettingsFile) = "Y" Then
        SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_FLAGS
    Else
        SetWindowPos Me.hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_FLAGS
    End If
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

Private Sub Image16_Click()
    ' Close button clicked - hide form
    Me.Hide
End Sub

Private Sub Text1_Change()
    ' Public room number changed - load or clear bot settings
    Dim sDataFile As String

    ' Ensure Text1 only contains numbers
    Me.Text1.Text = Me.Text1.Text

    ' Build path to data.ini for this public room
    sDataFile = gAppPath & "pub\" & Me.Text1.Text & "\data.ini"

    ' Check if data.ini exists for this room
    If gFSO.FileExists(sDataFile) Then
        ' Load bot settings from INI
        Me.Text2.Text = GetINI("bot", "name", sDataFile)
        Me.Text3.Text = GetINI("bot", "mission", sDataFile)
        Me.Text4.Text = GetINI("bot", "walkspace", sDataFile)
        Me.Text5.Text = GetINI("bot", "look", sDataFile)
        Me.Check1.Value = CInt(GetINI("bot", "enabled", sDataFile))

        ' Validate loaded data - if Text2 (name) is empty, clear all and disable
        If Me.Text2.Text = vbNullString Then
            ClearAndDisableFields
        End If

        ' If Text3 (mission) is empty, clear all and disable
        If Me.Text3.Text = vbNullString Then
            ClearAndDisableFields
        End If

        ' If Text4 (walkspace) is empty, clear all and disable
        If Me.Text4.Text = vbNullString Then
            ClearAndDisableFields
        End If

        ' If Text5 (look) is empty, clear all and disable
        If Me.Text5.Text = vbNullString Then
            ClearAndDisableFields
        End If

        ' If Text1 (room number) is empty, clear and disable fields
        If Me.Text1.Text = vbNullString Then
            ClearAndDisableFields
        End If

        ' Enable all fields for valid room with valid data
        Me.Check1.Enabled = True
        Me.Text2.Enabled = True
        Me.Text3.Enabled = True
        Me.Text4.Enabled = True
        Me.Text5.Enabled = True
    End If
End Sub

Private Sub ClearAndDisableFields()
    ' Helper to clear all bot fields and disable them
    Me.Text2.Text = vbNullString
    Me.Text3.Text = vbNullString
    Me.Text4.Text = vbNullString
    Me.Text5.Text = vbNullString
    Me.Check1.Value = 0
    Me.Check1.Enabled = False
    Me.Text2.Enabled = False
    Me.Text3.Enabled = False
    Me.Text4.Enabled = False
    Me.Text5.Enabled = False
End Sub

Private Sub Text2_Change()
    ' Bot name changed - save all bot settings
    SaveBotSettings
End Sub

Private Sub Text3_Change()
    ' Mission changed - save all bot settings
    SaveBotSettings
End Sub

Private Sub Text4_Change()
    ' Walk space changed - save all bot settings
    SaveBotSettings
End Sub

Private Sub Text5_Change()
    ' Look changed - save all bot settings
    SaveBotSettings
End Sub

Private Sub Check1_Click()
    ' Enabled checkbox changed - save all bot settings
    SaveBotSettings
End Sub

Private Sub SaveBotSettings()
    ' Save all bot settings to INI file
    Dim sDataFile As String

    ' Build path to data.ini for this public room
    sDataFile = gAppPath & "pub\" & Me.Text1.Text & "\data.ini"

    ' Save all bot settings
    WriteINI "bot", "name", Me.Text2.Text, sDataFile
    WriteINI "bot", "mission", Me.Text3.Text, sDataFile
    WriteINI "bot", "walkspace", Me.Text4.Text, sDataFile
    WriteINI "bot", "look", Me.Text5.Text, sDataFile
    WriteINI "bot", "enabled", CStr(Me.Check1.Value), sDataFile
End Sub
