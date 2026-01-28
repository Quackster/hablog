VERSION 5.00
Begin VB.Form frmBan
  Caption = "frmBan"
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
    Picture = "frmBan.frx":0000
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
      Top = 1320
      Width = 2055
      Height = 967
      TabIndex = 1
      MultiLine = -1  'True
      TabStop = 0   'False
      Appearance = 0 'Flat
    End
    Begin VB.Label Label1
      Caption = "Ban"
      ForeColor = &HFFFFFF&
      Left = 360
      Top = 240
      Width = 1695
      Height = 255
      TabIndex = 4
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
      Top = 840
      Width = 2055
      Height = 255
      TabIndex = 3
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label3
      Caption = "Reason:"
      Left = 240
      Top = 1080
      Width = 2055
      Height = 255
      TabIndex = 2
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Image1
      Picture = "frmBan.frx":0001B082
      Left = 2040
      Top = 180
      Width = 360
      Height = 330
    End
    Begin VB.Image Command1
      Picture = "frmBan.frx":0001B6F4
      Left = 240
      Top = 2280
      Width = 2055
      Height = 300
    End
  End
End

Attribute VB_Name = "frmBan"

Option Explicit

' Ban Form
' Bans users for 24 hours with a specified reason

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
    Dim sSelectedUser As String
    Dim vParts As Variant

    ' Get selected user from main form's list
    sSelectedUser = frmMain.lstUsers.Text
    vParts = Split(sSelectedUser, " ")
    Me.Label2.Caption = "to: " & vParts(0)

    ' Set form size
    Me.Height = 2550
    Me.Width = 2280

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
    ' Ban the selected user for 24 hours
    Dim sTargetUser As String
    Dim vParts As Variant
    Dim sReason As String
    Dim sBanExpiry As String
    Dim i As Long
    Dim oTextStream As Object
    Dim lBanHours As Long

    ' Get selected username from the online users list
    vParts = Split(CStr(frmMain.lstUsers.Text), " ")
    sTargetUser = vParts(0)

    ' Get ban reason from textbox
    sReason = Me.Text1.Text

    ' Ban duration is 24 hours
    lBanHours = 24

    ' Check if user folder exists
    If gFSO.FolderExists(gAppPath & "habbos\" & LCase(sTargetUser)) Then

        ' Calculate ban expiry time (24 hours from now)
        sBanExpiry = CStr(DateAdd("h", Val(CStr(lBanHours)), Now))

        ' Write ban expiry to file
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "user_bans\" & LCase(sTargetUser) & ".txt", 2, True, 0)
        oTextStream.Write sBanExpiry

        ' Write ban reason to file
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "user_bans\" & LCase(sTargetUser) & ".reason", 2, True, 0)
        oTextStream.Write "24 H: " & sReason

        ' Loop through all sockets to find and kick the banned user
        For i = 1 To frmMain.SockI
            ' Check if username matches (case-insensitive) and socket is connected
            If LCase(sTargetUser) = LCase(gUsernames(i)) And frmMain.Sock(CInt(i)).State = 7 Then
                ' Double-check socket is still connected
                If frmMain.Sock(CInt(i)).State = 7 Then
                    ' Send ban message with reason
                    frmMain.Sock(CInt(i)).SendData "@c" & "24 H: " & sReason & Chr$(1)
                End If

                ' Clear user session data if they have room data
                If gUserData(i).RoomId > 0 Then
                    ' Remove from room (Proc_2_7_B2228C likely removes user from room)
                    RemoveUserFromRoom CLng(gUserData(i).RoomId), CStr("@]" & CStr(gUserData(i).RoomSlot)) & Chr$(1)
                    gUserData(i).RoomSlot = "H"
                    gUserData(i).RoomId = 0
                End If

                ' Clear user state if they have state data
                If gUserData(i).State > 0 Then
                    ' Remove from public room (Proc_2_8_B229C4 likely removes from public room)
                    RemoveUserFromPublicRoom CLng(gUserData(i).State), CStr("@]" & CStr(gUserData(i).RoomSlot)) & Chr$(1)
                    gUserData(i).RoomSlot = "H"
                    gUsernames(i) = vbNullString
                    gUserData(i).State = 0
                End If

                Exit For
            End If
        Next i
    End If
End Sub
