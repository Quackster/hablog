VERSION 5.00
Begin VB.Form frmCredits
  Caption = "Form2"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form2"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 2595
  ClientHeight = 2235
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmCredits.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 2655
    Height = 2265
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
      Top = 1440
      Width = 2055
      Height = 285
      TabIndex = 1
      MultiLine = -1  'True
      TabStop = 0   'False
      Appearance = 0 'Flat
    End
    Begin VB.Label Label1
      Caption = "Credits"
      ForeColor = &HFFFFFF&
      Left = 480
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
      Caption = "Amount:"
      Left = 240
      Top = 1200
      Width = 2055
      Height = 255
      TabIndex = 2
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Command1
      Picture = "frmCredits.frx":00013A0E
      Left = 240
      Top = 1680
      Width = 2055
      Height = 300
    End
    Begin VB.Image Image1
      Picture = "frmCredits.frx":00015A80
      Left = 2010
      Top = 180
      Width = 360
      Height = 330
    End
  End
End

Attribute VB_Name = "frmCredits"

Option Explicit

' Credits Form
' Adds credits to a user's account and logs transactions

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

    ' Set window position based on foreground setting
    If GetINI("server", "foreground", gSettingsFile) = "Y" Then
        SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_FLAGS
    Else
        SetWindowPos Me.hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_FLAGS
    End If

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
    ' Add credits to user's account
    Dim sTargetUser As String
    Dim vParts As Variant
    Dim sAmount As String
    Dim dCurrentCredits As Double
    Dim dNewCredits As Double
    Dim oTextStream As Object
    Dim sTransactionLog As String
    Dim i As Long

    ' Get selected username from the online users list
    vParts = Split(CStr(frmMain.lstUsers.Text), " ")
    sTargetUser = vParts(0)

    ' Get amount to add from textbox
    sAmount = Me.Text1.Text

    ' Check if user folder exists
    If gFSO.FolderExists(gAppPath & "habbos\" & LCase(sTargetUser)) Then

        ' Read current credits
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase(sTargetUser) & "\credits.txt", 1, False, 0)
        dCurrentCredits = Val(oTextStream.ReadAll)

        ' Add the new amount
        dNewCredits = dCurrentCredits + Val(sAmount)

        ' Write new credits total
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase(sTargetUser) & "\credits.txt", 2, False, 0)
        oTextStream.Write CStr(dNewCredits)

        ' Log the transaction
        ' Format: date<tab>time<tab>amount<tab>0<tab><tab>web_internal<cr>
        sTransactionLog = Format(Date, "dd-mm-yyyy") & Chr$(9) & _
                          Format(Time, "hh:mm") & Chr$(9) & _
                          sAmount & Chr$(9) & _
                          "0" & Chr$(9) & _
                          Chr$(9) & _
                          "web_internal" & Chr$(13)

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUsernames(CLng(vParts(0))) & "\transactions.txt", 8, True, 0)
        oTextStream.Write sTransactionLog

        ' Loop through all sockets to find the target user and update their credits display
        For i = 1 To frmMain.SockI
            ' Check if username matches (case-insensitive) and socket is connected
            If LCase(sTargetUser) = LCase(gUsernames(i)) And frmMain.Sock(CInt(i)).State = 7 Then
                ' Double-check socket is still connected
                If frmMain.Sock(CInt(i)).State = 7 Then
                    ' Send credits update message (@F = credits packet)
                    frmMain.Sock(CInt(i)).SendData "@F" & CStr(dNewCredits) & ".0" & Chr$(1)
                End If
                Exit For
            End If
        Next i
    End If
End Sub

Private Sub QueryUnload(Cancel As Integer, UnloadMode As Integer)
    ' QueryUnload handler - unload the frmCredits form reference
    Unload frmCredits
End Sub
