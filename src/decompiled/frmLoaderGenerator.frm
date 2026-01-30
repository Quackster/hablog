VERSION 5.00
Begin VB.Form frmLoaderGenerator
  Caption = "Form2"
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form2"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 4800
  ClientHeight = 3600
  ShowInTaskbar = 0   'False
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmLoaderGenerator.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 11460
    Height = 7815
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.CommandButton Command1
      Caption = "Generate loader"
      BackColor = &H80000013&
      Left = 5760
      Top = 7440
      Width = 2775
      Height = 255
      TabIndex = 5
      Style = 1
    End
    Begin VB.TextBox Text2
      BackColor = &H80000013&
      Left = 2880
      Top = 7410
      Width = 2775
      Height = 285
      Text = "loader_v14.html"
      TabIndex = 4
      Appearance = 0 'Flat
    End
    Begin VB.TextBox Text1
      BackColor = &H80000013&
      Left = 120
      Top = 720
      Width = 11175
      Height = 6615
      Text = "frmLoaderGenerator.frx":0D68
      TabIndex = 3
      MultiLine = -1  'True
      ScrollBars = 3
      Appearance = 0 'Flat
    End
    Begin VB.CommandButton closefrmAutoClose
      Caption = "X"
      BackColor = &H80000013&
      Left = 11040
      Top = 405
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
    Begin VB.Label Label2
      Caption = "Save loader as"
      Left = 120
      Top = 7440
      Width = 2655
      Height = 255
      TabIndex = 6
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label1
      Caption = "Loader Generator (V13, working V14 furni's)"
      ForeColor = &H0&
      Left = 120
      Top = 360
      Width = 10815
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
  Begin VB.Menu mpopupsys
    Caption = "mpopupsys"
    Begin VB.Menu mnuFuncts
      Caption = "Functions"
      Begin VB.Menu mnuMize
        Caption = "Minimize"
        Enabled = 0   'False
      End
      Begin VB.Menu mpoprestore
        Caption = "Restore"
      End
      Begin VB.Menu mpopexit
        Caption = "Exit"
      End
    End
    Begin VB.Menu mnuAbout
      Caption = "About"
    End
  End
  Begin VB.Menu mnuuseronline
    Caption = "User Online"
    Begin VB.Menu mnuFunctions
      Caption = "Functions"
      Begin VB.Menu mnuOnlineBan
        Caption = "Ban"
      End
      Begin VB.Menu mnuOnlineAlert
        Caption = "Alert"
      End
      Begin VB.Menu mnuOnlineCredits
        Caption = "Credits"
      End
    End
    Begin VB.Menu mnuOpt
      Caption = "Options"
      Begin VB.Menu mnuKick
        Caption = "Kick"
      End
    End
    Begin VB.Menu mnuupd
      Caption = "Update Mission"
    End
    Begin VB.Menu mnudisc
      Caption = "Disconnect"
    End
    Begin VB.Menu mnuonlinepostition
      Visible = 0   'False
      Caption = "Position"
    End
    Begin VB.Menu mnuOnlineData
      Visible = 0   'False
      Caption = "Data"
    End
  End
End

Attribute VB_Name = "frmLoaderGenerator"

Option Explicit

' Loader Generator Form
' Generates HTML loader files for Habbo client
' Also contains context menu handlers for user management (ban, alert, kick, disconnect)

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
Private Declare Function AllowSetForegroundWindow Lib "user32" (ByVal dwProcessId As Long) As Long

Private Sub mnuOnlineAlert_Click()
    ' Show alert form
    frmAlert.Show
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

Private Sub mpopexit_Click()
    ' Exit application
    End
End Sub

Private Sub mnuOnlineBan_Click()
    ' Show ban form
    frmBan.Show
End Sub

Private Sub mpoprestore_Click()
    ' Restore main form from minimized state
    frmMain.WindowState = 0
    AllowSetForegroundWindow frmMain.hWnd
    frmMain.Show
End Sub

Private Sub mnuOnlineCredits_Click()
    ' Show credits form
    frmCredits.Show
End Sub

Private Sub mnudisc_Click()
    ' Disconnect selected user from server
    Dim sListText As String
    Dim vParts As Variant
    Dim sTargetUser As String
    Dim i As Variant
    Dim oSock As Object

    ' Get selected user from listbox
    sListText = frmMain.Listuseronline.Text
    vParts = Split(sListText, " ")
    sTargetUser = vParts(0)

    ' Loop through all sockets to find the user
    For i = 1 To frmMain.SockI
        ' Check if username matches and socket is connected
        If LCase(sTargetUser) = LCase(gUsernames(i)) And frmMain.Sock(CInt(i)).State = 7 Then
            ' Send room exit packet
            SendData CInt(i), "@R" & Chr$(1)

            ' Send disconnect message
            SendData CInt(i), "BKYou're will disconnected now." & Chr$(1)

            ' If user is in a private room, remove them
            If gUserData(i).RoomId > 0 Then
                RemoveUserFromRoom gUserData(i).RoomId, Chr$(1) & "@]" & CStr(gUserData(i).RoomSlot)
                gUserData(i).RoomSlot = "I" & GetLocaleString("hotel_view")
                gUserData(i).RoomId = 0
                gUserData(i).State = 0
            End If

            ' If user is in a public room, remove them
            If gUserData(i).PublicRoomId > 0 Then
                RemoveUserFromPublicRoom gUserData(i).PublicRoomId, Chr$(1) & "@]" & CStr(gUserData(i).RoomSlot)
                gUserData(i).RoomSlot = "I" & GetLocaleString("hotel_view")
                gUserData(i).RoomSlot = vbNullString
                gUserData(i).PublicRoomId = 0
                gUserData(i).State = 0
            End If

            ' Wait for 4 seconds before closing connection
            DoEvents
            Dim vStartTime As Variant
            Dim vElapsed As Variant
            vStartTime = Timer
            Do
                DoEvents
                vElapsed = Timer - vStartTime
            Loop Until vElapsed >= 4

            DoEvents

            ' Close the socket
            frmMain.Sock(CInt(i)).Close
        End If
    Next i
End Sub

Private Sub mnuAbout_Click()
    ' Show about/welcome form
    frmWelcome.Show
End Sub

Private Sub mnuupd_Click()
    ' Show update user mission form
    frmUpdateUser.Show
End Sub

Private Sub mnuKick_Click()
    ' Kick selected user from room (but keep connected)
    Dim sListText As String
    Dim vParts As Variant
    Dim sTargetUser As String
    Dim i As Variant
    Dim oSock As Object

    ' Get selected user from listbox
    sListText = frmMain.Listuseronline.Text
    vParts = Split(sListText, " ")
    sTargetUser = vParts(0)

    ' Loop through all sockets to find the user
    For i = 1 To frmMain.SockI
        ' Check if username matches and socket is connected
        If LCase(sTargetUser) = LCase(gUsernames(i)) And frmMain.Sock(CInt(i)).State = 7 Then
            ' Send room exit packet
            SendData CInt(i), "@R" & Chr$(1)

            ' Send kick message
            SendData CInt(i), "BKThe Server has kicked you out the room." & Chr$(1)

            ' If user is in a private room, remove them
            If gUserData(i).RoomId > 0 Then
                RemoveUserFromRoom gUserData(i).RoomId, Chr$(1) & "@]" & CStr(gUserData(i).RoomSlot)
                gUserData(i).RoomSlot = "I" & GetLocaleString("hotel_view")
                gUserData(i).RoomId = 0
                gUserData(i).State = 0
            End If

            ' If user is in a public room, remove them
            If gUserData(i).PublicRoomId > 0 Then
                RemoveUserFromPublicRoom gUserData(i).PublicRoomId, Chr$(1) & "@]" & CStr(gUserData(i).RoomSlot)
                gUserData(i).RoomSlot = "I" & GetLocaleString("hotel_view")
                gUserData(i).RoomSlot = vbNullString
                gUserData(i).PublicRoomId = 0
                gUserData(i).State = 0
            End If
        End If
    Next i
End Sub

Private Sub closefrmAutoClose_Click()
    ' Close button clicked - unload this form
    Unload frmLoaderGenerator
End Sub

Private Sub Command1_Click()
    ' Generate loader button clicked
    Dim sContent As String
    Dim iFileNum As Integer

    ' Get content from text box
    sContent = Me.Text1.Text

    ' Get free file number
    iFileNum = FreeFile

    ' Open file for output (filename from Text2)
    Open Me.Text2.Text For Output As #iFileNum

    ' Write content to file
    Print #iFileNum, sContent

    ' Close file
    Close #iFileNum

    ' Show success message
    MsgBox "Loader succesfully generated!", vbOKOnly
End Sub

Private Sub Form_Load()
    ' Set form dimensions
    Me.Height = 7815
    Me.Width = 11460

    ' Set window position based on foreground checkbox setting
    If frmMain.chkForegroundValue = 1 Then
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

Private Sub mnuonlinepostition_Click()
    ' Send position update packet to selected user
    Dim sListText As String
    Dim vParts As Variant
    Dim sTargetUser As String
    Dim i As Variant

    ' Get selected user from listbox
    sListText = frmMain.Listuseronline.Text
    vParts = Split(sListText, " ")
    sTargetUser = vParts(0)

    ' Loop through all sockets to find the user
    For i = 1 To frmMain.SockI
        ' Check if username matches and socket is connected
        If LCase(sTargetUser) = LCase(gUsernames(i)) And frmMain.Sock(CInt(i)).State = 7 Then
            ' Send position packet
            SendData CInt(i), "@y1"
        End If
    Next i
End Sub
