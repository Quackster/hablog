VERSION 5.00
Begin VB.Form frmTab_userlock
  Caption = "Form2"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form2"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 2595
  ClientHeight = 3855
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmTab_userlock.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 2610
    Height = 3885
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.CommandButton closefrmAutoClose
      Caption = "X"
      BackColor = &H80000013&
      Left = 3465
      Top = 390
      Width = 240
      Height = 210
      TabIndex = 7
      BeginProperty Font
        Name = "MS Serif"
        Size = 6
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &H80000009&
      Style = 1
    End
    Begin VB.CheckBox chkIPCHECK
      Caption = "Check1"
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 1750
      Top = 2280
      Width = 255
      Height = 255
      TabIndex = 6
      Appearance = 0 'Flat
    End
    Begin VB.CheckBox chkREG
      Caption = "Check1"
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 1750
      Top = 2640
      Width = 255
      Height = 255
      TabIndex = 5
      Appearance = 0 'Flat
    End
    Begin VB.CommandButton cmdCloseIt
      Caption = "X"
      BackColor = &H80000013&
      Left = 2640
      Top = 1200
      Width = 240
      Height = 210
      TabIndex = 4
      BeginProperty Font
        Name = "MS Serif"
        Size = 6
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &H80000009&
      Style = 1
    End
    Begin VB.TextBox txtMaxPerIP
      Left = 1680
      Top = 1605
      Width = 375
      Height = 195
      TabIndex = 3
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.CheckBox chkLock
      Caption = "chkLock"
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 1750
      Top = 3000
      Width = 255
      Height = 255
      TabIndex = 2
      Appearance = 0 'Flat
    End
    Begin VB.TextBox txtMaxOnline
      Left = 1680
      Top = 1935
      Width = 375
      Height = 195
      TabIndex = 1
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.Label headUserLock
      Caption = "User Lock"
      ForeColor = &HFFFFFF&
      Left = 720
      Top = 240
      Width = 3255
      Height = 255
      TabIndex = 14
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
    Begin VB.Label lblInfo
      Caption = "Here are some options for the Userlock System. "
      BackColor = &H80&
      ForeColor = &H80000007&
      Left = 240
      Top = 840
      Width = 1935
      Height = 495
      TabIndex = 13
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblIPCHECK
      Caption = "IP Check:"
      Left = 240
      Top = 2280
      Width = 975
      Height = 255
      TabIndex = 12
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblREG
      Caption = "Registration:"
      Left = 240
      Top = 2640
      Width = 1455
      Height = 255
      TabIndex = 11
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label1
      Caption = "Max. acc per IP:"
      Left = 240
      Top = 1560
      Width = 1455
      Height = 255
      TabIndex = 10
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label2
      Caption = "Max. online:"
      Left = 240
      Top = 1920
      Width = 1455
      Height = 255
      TabIndex = 9
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label3
      Caption = "Hotel Lock:"
      Left = 240
      Top = 3000
      Width = 1455
      Height = 255
      TabIndex = 8
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Command2
      Picture = "frmTab_userlock.frx":00021266
      Left = 240
      Top = 3360
      Width = 2070
      Height = 300
    End
    Begin VB.Image Image2
      Picture = "frmTab_userlock.frx":00023328
      Left = 1560
      Top = 1515
      Width = 600
      Height = 330
    End
    Begin VB.Image Image1
      Picture = "frmTab_userlock.frx":00023DBA
      Left = 1560
      Top = 1860
      Width = 600
      Height = 330
    End
    Begin VB.Image Image16
      Picture = "frmTab_userlock.frx":0002484C
      Left = 2040
      Top = 180
      Width = 360
      Height = 330
    End
  End
End

Attribute VB_Name = "frmTab_userlock"

Option Explicit

' User Lock Settings Form
' Controls IP check, registration, max accounts per IP, max online, and hotel lock

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

Private Sub cmdCloseIt_Click()
    ' Close button clicked - unload form
    Unload Me
End Sub

Private Sub chkIPCHECK_Click()
    ' Toggle IP check setting
    If frmTab_userlock.chkIPCHECK.Value = 1 Then
        WriteINI "server", "ipcheck", "1", gSettingsFile
    ElseIf frmTab_userlock.chkIPCHECK.Value = 0 Then
        WriteINI "server", "ipcheck", "0", gSettingsFile
    End If
End Sub

Private Sub chkREG_Click()
    ' Toggle registration setting
    If frmTab_userlock.chkREG.Value = 1 Then
        WriteINI "server", "registration", "1", gSettingsFile
    ElseIf frmTab_userlock.chkREG.Value = 0 Then
        WriteINI "server", "registration", "0", gSettingsFile
    End If
End Sub

Private Sub chkLock_Click()
    ' Toggle hotel lock setting
    Dim i As Long
    Dim oSock As Object

    If frmTab_userlock.chkLock.Value = 1 Then
        ' Lock the hotel
        WriteINI "config", "hotel_lock", "1", gSettingsFile
        WriteINI "server", "registration", "0", gSettingsFile

        ' Kick all connected users
        For i = 1 To frmMain.SockI
            Set oSock = frmMain.Sock(CInt(i))
            If oSock.State = 7 And gUsernames(i) <> vbNullString Then
                ' Send hotel lock message and close connection
                frmMain.Sock(CInt(i)).SendData "BK" & GetLocaleString("get_lockhotel") & Chr$(1)
                frmMain.Sock(CInt(i)).Close
            End If
        Next i
    ElseIf frmTab_userlock.chkLock.Value = 0 Then
        ' Unlock the hotel
        WriteINI "config", "hotel_lock", "0", gSettingsFile
        WriteINI "server", "registration", "1", gSettingsFile
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

Private Sub Form_Load()
    ' Set window position based on foreground setting
    If GetINI("server", "foreground", gSettingsFile) = "Y" Then
        SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_FLAGS
    Else
        SetWindowPos Me.hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_FLAGS
    End If

    ' Load IP check setting
    If GetINI("server", "ipcheck", gSettingsFile) = "1" Then
        frmTab_userlock.chkIPCHECK.Value = 1
    ElseIf GetINI("server", "ipcheck", gSettingsFile) = "0" Then
        frmTab_userlock.chkIPCHECK.Value = 0
    End If

    ' Load registration setting
    If GetINI("server", "registration", gSettingsFile) = "1" Then
        frmTab_userlock.chkREG.Value = 1
    ElseIf GetINI("server", "registration", gSettingsFile) = "0" Then
        frmTab_userlock.chkREG.Value = 0
    End If

    ' Load hotel lock setting
    If GetINI("config", "hotel_lock", gSettingsFile) = "1" Then
        frmTab_userlock.chkLock.Value = 1
    ElseIf GetINI("config", "hotel_lock", gSettingsFile) = "0" Then
        frmTab_userlock.chkLock.Value = 0
    End If

    ' Load max accounts per IP setting
    Me.txtMaxPerIP.Text = GetINI("server", "max_ip", gSettingsFile)

    ' Load max online setting
    Me.txtMaxOnline.Text = GetINI("server", "max_online", gSettingsFile)
End Sub

Private Sub Image16_Click()
    ' Close button clicked - hide form
    Me.Hide
End Sub

Private Sub Command2_Click()
    ' Save button clicked - validate and save settings
    Dim vMaxPerIP As Variant
    Dim vMaxOnline As Variant

    ' Validate max accounts per IP
    If IsNumeric(Me.txtMaxPerIP.Text) And Me.txtMaxPerIP.Text <> "0" Then
        vMaxPerIP = Me.txtMaxPerIP.Text
    ElseIf Me.txtMaxPerIP.Text = vbNullString Or Me.txtMaxPerIP.Text = "0" Or Not IsNumeric(Me.txtMaxPerIP.Text) Then
        MsgBox "You need to fill out a valid max accounts per IP limit!", vbOKOnly, "DebboProject :: UserLock system"
        Exit Sub
    End If

    ' Validate max online
    If IsNumeric(Me.txtMaxOnline.Text) And Me.txtMaxOnline.Text <> "0" Then
        vMaxOnline = Me.txtMaxOnline.Text
    ElseIf Me.txtMaxOnline.Text = vbNullString Or Me.txtMaxOnline.Text = "0" Or Not IsNumeric(Me.txtMaxOnline.Text) Then
        MsgBox "You need to fill out a valid max online limit!", vbOKOnly, "HebboProject"
        Exit Sub
    End If

    ' Save settings to INI
    WriteINI "server", "max_ip", CStr(vMaxPerIP), gSettingsFile
    WriteINI "server", "max_online", CStr(vMaxOnline), gSettingsFile
End Sub
