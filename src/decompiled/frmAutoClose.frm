VERSION 5.00
Begin VB.Form frmAutoClose
  Caption = "Auto PowerOff"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 2595
  ClientHeight = 2775
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmAutoClose.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 2655
    Height = 3120
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.CheckBox auto_message
      Caption = "auto_message"
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 240
      Top = 1680
      Width = 2010
      Height = 195
      TabIndex = 6
      Appearance = 0 'Flat
    End
    Begin VB.TextBox Text1
      Left = 240
      Top = 1920
      Width = 2025
      Height = 285
      TabIndex = 5
      ScrollBars = 1
      Appearance = 0 'Flat
    End
    Begin VB.ComboBox Combo1
      Left = 1560
      Top = 840
      Width = 735
      Height = 315
      TabIndex = 4
    End
    Begin VB.ComboBox Combo2
      Left = 1560
      Top = 1200
      Width = 735
      Height = 315
      TabIndex = 3
    End
    Begin VB.CheckBox auto_poweroff_pc
      Caption = "auto_poweroff_pc"
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 240
      Top = 2280
      Width = 2025
      Height = 195
      TabIndex = 2
      Appearance = 0 'Flat
    End
    Begin VB.CommandButton iconfrmAutoClose
      Caption = "-"
      BackColor = &H80000013&
      Left = 4560
      Top = 3240
      Width = 240
      Height = 210
      TabIndex = 1
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
    Begin VB.Label Label1
      Caption = "Auto Close"
      ForeColor = &HFFFFFF&
      Left = 480
      Top = 240
      Width = 1455
      Height = 255
      TabIndex = 9
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
    Begin VB.Label Hour
      Caption = "Hour:"
      Left = 240
      Top = 870
      Width = 1215
      Height = 255
      TabIndex = 8
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Minutes
      Caption = "Minutes:"
      Left = 240
      Top = 1245
      Width = 1215
      Height = 255
      TabIndex = 7
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Image1
      Picture = "frmAutoClose.frx":0001B082
      Left = 2040
      Top = 180
      Width = 360
      Height = 330
    End
  End
  Begin VB.Label timeselected
    Caption = "timeselected"
    Left = 240
    Top = 2640
    Width = 1815
    Height = 255
    TabIndex = 11
  End
  Begin VB.Label timemessage
    Caption = "timemessage"
    Left = 240
    Top = 3000
    Width = 1935
    Height = 255
    TabIndex = 10
  End
End

Attribute VB_Name = "frmAutoClose"

Option Explicit

' Auto Close Form
' Schedules automatic server shutdown at a specified time
' Can optionally send warning messages before shutdown and power off PC

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
    Dim i As Variant

    ' Set window position based on foreground checkbox
    If frmMain.chkForegroundValue = 1 Then
        SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_FLAGS
    Else
        SetWindowPos Me.hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_FLAGS
    End If

    ' Populate hour combo (00-23)
    For i = 0 To 9
        Me.Combo1.AddItem "0" & CStr(i)
    Next i
    Me.Combo1.Text = "HH"

    For i = 10 To 23
        Me.Combo1.AddItem CStr(i)
    Next i

    ' Populate minute combo (00-59)
    For i = 0 To 9
        Me.Combo2.AddItem "0" & CStr(i)
    Next i
    Me.Combo2.Text = "MM"

    For i = 10 To 59
        Me.Combo2.AddItem CStr(i)
    Next i

    ' Load locale strings
    Me.Label1.Caption = GetLocaleString("auto_close")
    Me.Hour.Caption = GetLocaleString("Hour")
    Me.Minutes.Caption = GetLocaleString("Minutes")
    Me.auto_message.Caption = GetLocaleString("auto_message")

    ' Set initial time display
    Me.timeselected.Caption = Me.Combo1.Text & "." & Me.Combo2.Text & ".00"

    ' Load settings from INI
    autoclose
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ' Save auto_close_message setting on unload
    WriteINI "server", "auto_close_message", CStr(Me.auto_message.Value) & "," & Me.Text1.Text, gSettingsFile
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

Private Sub auto_message_Click()
    ' Toggle auto message setting
    If Me.auto_message.Value = 1 Then
        ' Enable auto message
        Me.Text1.Enabled = True
        WriteINI "server", "auto_close_message", CStr(Me.auto_message.Value) & "," & Me.Text1.Text, gSettingsFile
        frmMain.tmrAutoClose.Enabled = True
    Else
        ' Disable auto message
        Me.Text1.Enabled = False
        WriteINI "server", "auto_close_message", CStr(Me.auto_message.Value) & "," & Me.Text1.Text, gSettingsFile
        frmMain.tmrAutoClose.Enabled = False
    End If
End Sub

Private Sub Text1_Change()
    ' Save message text changes
    WriteINI "server", "auto_close_message", CStr(Me.auto_message.Value) & "," & Me.Text1.Text, gSettingsFile
End Sub

Private Sub auto_poweroff_pc_Click()
    ' Toggle PC power off setting
    If Me.auto_poweroff_pc.Value = 1 Then
        ' Enable PC power off
        WriteINI "server", "auto_close", CStr(frmMain.chkForegroundValue) & "," & Me.Combo1.Text & "," & Me.Combo2.Text & ",1", gSettingsFile
    Else
        ' Disable PC power off
        WriteINI "server", "auto_close", CStr(frmMain.chkForegroundValue) & "," & Me.Combo1.Text & "," & Me.Combo2.Text & ",0", gSettingsFile
    End If
End Sub

Private Sub Combo1_Click()
    ' Hour selection changed - update display and save settings
    Me.timeselected.Caption = Me.Combo1.Text & "/" & Me.Combo2.Text & "/00"

    ' Save settings
    WriteINI "server", "auto_close", CStr(frmMain.chkForegroundValue) & "," & Me.Combo1.Text & "," & Me.Combo2.Text & "," & CStr(frmAutoClose.auto_poweroff_pc.Value), gSettingsFile

    ' Calculate warning message time
    auto_message_sel
End Sub

Private Sub Combo2_Click()
    ' Minute selection changed - update display and save settings
    Me.timeselected.Caption = Me.Combo1.Text & "/" & Me.Combo2.Text & "/00"

    ' Save settings
    WriteINI "server", "auto_close", CStr(frmMain.chkForegroundValue) & "," & Me.Combo1.Text & "," & Me.Combo2.Text & "," & CStr(frmAutoClose.auto_poweroff_pc.Value), gSettingsFile

    ' Calculate warning message time
    auto_message_sel
End Sub

Private Sub iconfrmAutoClose_Click()
    ' Minimize form
    Me.WindowState = 1
End Sub

Public Sub auto_message_sel()
    ' Calculate the warning message time (5 minutes before close time)
    Dim vHour As Variant
    Dim vMinute As Variant
    Dim vNewMinute As Variant

    vHour = Me.Combo1.Text
    vMinute = Me.Combo2.Text

    ' If minutes is less than 5, need to subtract from previous hour
    If vMinute < "05" Then
        If vHour <> "HH" Then
            ' Subtract 1 from hour and add 60 to minutes before subtracting 5
            vHour = vHour - 1
            vNewMinute = 5 - vMinute
            vMinute = 60 - vNewMinute

            ' Add leading zero if needed
            If vHour < 10 Then
                vHour = "0" & vHour
            End If

            Me.timemessage.Caption = CStr(vHour) & "/" & CStr(vMinute) & "/00"
        End If
    Else
        If vMinute <> "MM" Then
            ' Simply subtract 5 from minutes
            vMinute = vMinute - 5

            ' Add leading zero if needed
            If vMinute < 10 Then
                vMinute = "0" & vMinute
            End If

            Me.timemessage.Caption = CStr(vHour) & "/" & CStr(vMinute) & "/00"
        End If
    End If
End Sub

Public Sub autoclose()
    ' Load auto close settings from INI
    Dim vParts As Variant
    Dim sAutoClose As String
    Dim sAutoMessage As String

    ' Check if foreground checkbox is enabled
    If frmMain.chkForegroundValue = 1 Then
        ' Load auto_close settings: format is "foreground,hour,minute,poweroff"
        sAutoClose = GetINI("server", "auto_close", gSettingsFile)
        vParts = Split(sAutoClose, ",")

        ' Set hour combo (index 1)
        Me.Combo1.Text = CStr(vParts(1))

        ' Set minute combo (index 2)
        Me.Combo2.Text = CStr(vParts(2))

        ' Enable power off checkbox
        Me.auto_poweroff_pc.Enabled = True

        ' Set power off checkbox value (index 3)
        If vParts(3) = "1" Then
            Me.auto_poweroff_pc.Value = 1
        Else
            Me.auto_poweroff_pc.Value = 0
        End If

        ' Enable hour and minute combos
        Me.Combo1.Enabled = True
        Me.Combo2.Enabled = True

        ' Load auto_close_message settings: format is "enabled,message"
        sAutoMessage = GetINI("server", "auto_close_message", gSettingsFile)
        vParts = Split(sAutoMessage, ",")

        ' Check if auto message is enabled (index 0)
        If vParts(0) = "1" Then
            ' Auto message is enabled
            Me.Text1.Text = CStr(vParts(1))
            Me.auto_message.Value = 1
            Me.Text1.Enabled = True
            Me.auto_message.Enabled = True
            frmMain.tmrAutoClose.Enabled = True
        Else
            ' Auto message is disabled
            Me.Text1.Text = CStr(vParts(1))
            Me.auto_message.Value = 0
            Me.auto_message.Enabled = False
            Me.Text1.Enabled = False
            frmMain.tmrAutoClose.Enabled = False
        End If

        ' Enable the auto close timer
        frmMain.tmrAutoClose.Enabled = True
    Else
        ' Foreground not enabled - load settings but disable controls
        sAutoClose = GetINI("server", "auto_close", gSettingsFile)
        vParts = Split(sAutoClose, ",")

        ' Set hour combo (index 1)
        Me.Combo1.Text = CStr(vParts(1))

        ' Set minute combo (index 2)
        Me.Combo2.Text = CStr(vParts(2))

        ' Disable power off checkbox
        Me.auto_poweroff_pc.Enabled = False

        ' Set power off checkbox value (index 3)
        If vParts(3) = "1" Then
            Me.auto_poweroff_pc.Value = 1
        Else
            Me.auto_poweroff_pc.Value = 0
        End If

        ' Disable hour and minute combos
        Me.Combo1.Enabled = False
        Me.Combo2.Enabled = False

        ' Load auto_close_message settings
        sAutoMessage = GetINI("server", "auto_close_message", gSettingsFile)
        vParts = Split(sAutoMessage, ",")

        ' Check if auto message is enabled (index 0)
        If vParts(0) = "1" Then
            ' Auto message setting was enabled but form is disabled
            Me.Text1.Text = CStr(vParts(1))
            Me.auto_message.Value = 1
            Me.auto_message.Enabled = False
            Me.Text1.Enabled = False
            frmMain.tmrAutoClose.Enabled = False
        Else
            ' Auto message is disabled
            Me.Text1.Text = CStr(vParts(1))
            Me.auto_message.Value = 0
            Me.auto_message.Enabled = False
            Me.Text1.Enabled = False
            frmMain.tmrAutoClose.Enabled = False
        End If
    End If
End Sub
