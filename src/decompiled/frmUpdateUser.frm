VERSION 5.00
Begin VB.Form frmUpdateUser
  Caption = "Form1"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 2595
  ClientHeight = 2775
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmUpdateUser.frx":0000
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
    Begin VB.Image Command1
      Picture = "frmUpdateUser.frx":0001B082
      Left = 240
      Top = 2280
      Width = 2055
      Height = 300
    End
    Begin VB.Image Image1
      Picture = "frmUpdateUser.frx":0001D0F4
      Left = 2040
      Top = 180
      Width = 360
      Height = 330
    End
    Begin VB.Label Label2
      Caption = "To:"
      Left = 240
      Top = 960
      Width = 2055
      Height = 255
      TabIndex = 3
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label1
      Caption = "Change Mission"
      ForeColor = &HFFFFFF&
      Left = 360
      Top = 240
      Width = 1695
      Height = 255
      TabIndex = 2
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
  End
End

Attribute VB_Name = "frmUpdateUser"

Option Explicit

' Update User Mission Form
' Allows changing a user's mission/motto

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
    On Error Resume Next

    Dim sSelectedUser As String
    Dim vParts As Variant
    Dim sUsername As String
    Dim oTextStream As Object

    ' Set window position based on foreground setting
    If GetINI("server", "foreground", gSettingsFile) = "Y" Then
        SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_FLAGS
    Else
        SetWindowPos Me.hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_FLAGS
    End If

    ' Get selected user from main form's list
    sSelectedUser = frmMain.lstUsers.Text
    vParts = Split(sSelectedUser, " ")
    sUsername = vParts(0)

    ' Display username in label
    Me.Label2.Caption = "Change Mission: " & sUsername

    ' Load current mission from file
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\mission.txt", 1, False, 0)
    Me.Text1.Text = oTextStream.ReadAll

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
    ' Save the updated mission
    Dim sTargetUser As String
    Dim vParts As Variant
    Dim i As Long
    Dim oTextStream As Object
    Dim sNewMission As String

    ' Get selected username from the online users list
    vParts = Split(CStr(frmMain.lstUsers.Text), " ")
    sTargetUser = vParts(0)

    ' Loop through all sockets to find the target user and send empty data (disconnect/refresh)
    For i = 1 To frmMain.SockI
        ' Check if username matches (case-insensitive) and socket is connected
        If LCase(sTargetUser) = LCase(gUsernames(i)) And frmMain.Sock(CInt(i)).State = 7 Then
            ' Double-check socket is still connected
            If frmMain.Sock(CInt(i)).State = 7 Then
                ' Send empty data to trigger update
                frmMain.Sock(CInt(i)).SendData vbNullString
            End If
        End If
    Next i

    ' Save new mission to file
    sNewMission = Me.Text1.Text
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sTargetUser & "\mission.txt", 2, False, 0)
    oTextStream.Write sNewMission

    ' Create update marker file
    gFSO.CreateTextFile App.Path & "\database\update\" & sTargetUser & ".UPDATE", False, True
End Sub

Private Sub QueryUnload(Cancel As Integer, UnloadMode As Integer)
    ' QueryUnload handler - unload the frmUpdateUser form reference
    Unload frmUpdateUser
End Sub
