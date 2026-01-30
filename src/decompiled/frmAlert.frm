VERSION 5.00
Begin VB.Form frmAlert
  Caption = "frmAlert"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form2"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 2595
  ClientHeight = 2775
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmAlert.frx":0000
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
    Begin VB.TextBox Text1
      BackColor = &H8000000E&
      Left = 240
      Top = 1200
      Width = 2055
      Height = 1087
      TabIndex = 1
      MultiLine = -1  'True
      TabStop = 0   'False
      Appearance = 0 'Flat
    End
    Begin VB.Label Label1
      Caption = "Message"
      ForeColor = &HFFFFFF&
      Left = 360
      Top = 240
      Width = 1695
      Height = 255
      TabIndex = 3
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
    Begin VB.Label Label2
      Caption = "To:"
      Left = 240
      Top = 960
      Width = 2055
      Height = 255
      TabIndex = 2
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Image1
      Picture = "frmAlert.frx":0001B082
      Left = 2040
      Top = 180
      Width = 360
      Height = 330
    End
    Begin VB.Image Command1
      Picture = "frmAlert.frx":0001B6F4
      Left = 240
      Top = 2280
      Width = 2055
      Height = 300
    End
  End
End

Attribute VB_Name = "frmAlert"

Option Explicit

' Alert/Message Form
' Sends warning messages to selected users via socket

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
    Dim sSelectedUser As String
    Dim vParts As Variant

    ' Set window position based on foreground setting
    If GetINI("server", "foreground", gSettingsFile) = "Y" Then
        SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_FLAGS
    Else
        SetWindowPos Me.hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_FLAGS
    End If

    ' Get selected user from main form's list and display in label
    sSelectedUser = frmMain.lstUsers.Text
    vParts = Split(sSelectedUser, " ")
    Me.Label2.Caption = "to: " & vParts(0)

    ' Check if topmost checkbox is checked on main form
    If frmMain.chkTopmost.Value = 1 Then
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

Private Sub Image1_Click()
    ' Close button clicked - hide the form
    Me.Hide
End Sub

Private Sub Command1_Click()
    ' Send warning message to the selected user
    Dim sTargetUser As String
    Dim vParts As Variant
    Dim i As Long
    Dim sMessage As String

    ' Get selected username from the online users list
    vParts = Split(CStr(frmMain.lstUsers.Text), " ")
    sTargetUser = vParts(0)

    ' Loop through all sockets to find the target user
    For i = 1 To frmMain.SockI
        ' Check if username matches (case-insensitive) and socket is connected
        If LCase(sTargetUser) = LCase(gUsernames(i)) And frmMain.Sock(CInt(i)).State = 7 Then
            ' Double-check socket is still connected
            If frmMain.Sock(CInt(i)).State = 7 Then
                ' Send the warning message
                sMessage = "@amod_warn/" & Me.Text1.Text & Chr$(1) & Chr$(1)
                frmMain.Sock(CInt(i)).SendData sMessage
            End If
        End If
    Next i
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

Private Sub CloseForm()
    ' Unload the alert form
    Unload frmAlert
End Sub
