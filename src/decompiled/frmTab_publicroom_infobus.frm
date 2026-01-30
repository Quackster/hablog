VERSION 5.00
Begin VB.Form frmTab_publicroom_infobus
  Caption = "Infobus Poll"
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 0
  ClientTop = -30
  ClientWidth = 4905
  ClientHeight = 4425
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmTab_publicroom_infobus.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 4905
    Height = 4425
    TabIndex = 2
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.TextBox tbQuestion
      BackColor = &H8000000E&
      Left = 1320
      Top = 1225
      Width = 2415
      Height = 195
      TabIndex = 15
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox AnumF
      BackColor = &H8000000E&
      Left = 4080
      Top = 3420
      Width = 375
      Height = 195
      Enabled = 0   'False
      TabIndex = 14
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox AnumE
      BackColor = &H8000000E&
      Left = 4080
      Top = 3060
      Width = 375
      Height = 195
      Enabled = 0   'False
      TabIndex = 13
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox AnumD
      BackColor = &H8000000E&
      Left = 4080
      Top = 2690
      Width = 375
      Height = 195
      Enabled = 0   'False
      TabIndex = 12
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox AnumA
      BackColor = &H8000000E&
      Left = 4080
      Top = 1600
      Width = 375
      Height = 195
      Enabled = 0   'False
      TabIndex = 11
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox AnumC
      BackColor = &H8000000E&
      Left = 4080
      Top = 2320
      Width = 375
      Height = 195
      Enabled = 0   'False
      TabIndex = 10
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox AnumB
      BackColor = &H8000000E&
      Left = 4080
      Top = 1960
      Width = 375
      Height = 195
      Enabled = 0   'False
      TabIndex = 9
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox tbAF
      BackColor = &H8000000E&
      Left = 1320
      Top = 3420
      Width = 2295
      Height = 195
      TabIndex = 8
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox tbAE
      BackColor = &H8000000E&
      Left = 1320
      Top = 3060
      Width = 2295
      Height = 195
      TabIndex = 7
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox tbAD
      BackColor = &H8000000E&
      Left = 1320
      Top = 2690
      Width = 2295
      Height = 195
      TabIndex = 6
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox tbAC
      BackColor = &H8000000E&
      Left = 1320
      Top = 2320
      Width = 2295
      Height = 195
      TabIndex = 5
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox tbAB
      BackColor = &H8000000E&
      Left = 1320
      Top = 1960
      Width = 2295
      Height = 195
      TabIndex = 4
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox tbAA
      BackColor = &H8000000E&
      Left = 1320
      Top = 1600
      Width = 2295
      Height = 195
      TabIndex = 3
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.Label Label1
      Caption = "Question:"
      Left = 0
      Top = 1200
      Width = 1005
      Height = 255
      TabIndex = 26
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label9
      Caption = "Votes"
      Left = 3960
      Top = 890
      Width = 615
      Height = 255
      TabIndex = 25
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label8
      ForeColor = &H404040&
      Left = 360
      Top = 1200
      Width = 3495
      Height = 255
      TabIndex = 24
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label7
      Caption = "Answer F:"
      Left = 120
      Top = 3360
      Width = 975
      Height = 255
      TabIndex = 23
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label6
      Caption = "Answer E:"
      Left = 120
      Top = 3000
      Width = 975
      Height = 255
      TabIndex = 22
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label5
      Caption = "Answer D:"
      Left = 120
      Top = 2640
      Width = 975
      Height = 255
      TabIndex = 21
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label4
      Caption = "Answer C:"
      Left = 120
      Top = 2280
      Width = 975
      Height = 255
      TabIndex = 20
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label3
      Caption = "Answer B:"
      Left = 120
      Top = 1920
      Width = 975
      Height = 255
      TabIndex = 19
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label2
      Caption = "Answer A:"
      Left = 105
      Top = 1560
      Width = 975
      Height = 255
      TabIndex = 18
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label11
      Caption = "Infobus Poll"
      ForeColor = &HFFFFFF&
      Left = 360
      Top = 240
      Width = 3975
      Height = 255
      TabIndex = 17
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
    Begin VB.Image Image1
      Left = 2280
      Top = 3840
      Width = 615
      Height = 15
    End
    Begin VB.Image cmdSendPoll
      Picture = "frmTab_publicroom_infobus.frx":00046E2A
      Left = 1200
      Top = 3840
      Width = 2535
      Height = 300
    End
    Begin VB.Image Image2
      Picture = "frmTab_publicroom_infobus.frx":0004961C
      Left = 3960
      Top = 1160
      Width = 600
      Height = 330
    End
    Begin VB.Image Image3
      Picture = "frmTab_publicroom_infobus.frx":0004A0AE
      Left = 3960
      Top = 1520
      Width = 600
      Height = 330
    End
    Begin VB.Image Image4
      Picture = "frmTab_publicroom_infobus.frx":0004AB40
      Left = 3960
      Top = 1880
      Width = 600
      Height = 330
    End
    Begin VB.Image Image5
      Picture = "frmTab_publicroom_infobus.frx":0004B5D2
      Left = 3960
      Top = 3325
      Width = 600
      Height = 330
    End
    Begin VB.Image Image6
      Picture = "frmTab_publicroom_infobus.frx":0004C064
      Left = 3960
      Top = 2970
      Width = 600
      Height = 330
    End
    Begin VB.Image Image7
      Picture = "frmTab_publicroom_infobus.frx":0004CAF6
      Left = 3960
      Top = 2600
      Width = 600
      Height = 330
    End
    Begin VB.Image Image8
      Picture = "frmTab_publicroom_infobus.frx":0004D588
      Left = 3960
      Top = 2230
      Width = 600
      Height = 330
    End
    Begin VB.Image Image9
      Picture = "frmTab_publicroom_infobus.frx":0004E01A
      Left = 1200
      Top = 1160
      Width = 2580
      Height = 330
    End
    Begin VB.Image Image10
      Picture = "frmTab_publicroom_infobus.frx":00050CB4
      Left = 1200
      Top = 1520
      Width = 2580
      Height = 330
    End
    Begin VB.Image Image11
      Picture = "frmTab_publicroom_infobus.frx":0005394E
      Left = 1200
      Top = 1880
      Width = 2580
      Height = 330
    End
    Begin VB.Image Image12
      Picture = "frmTab_publicroom_infobus.frx":000565E8
      Left = 1200
      Top = 2230
      Width = 2580
      Height = 330
    End
    Begin VB.Image Image13
      Picture = "frmTab_publicroom_infobus.frx":00059282
      Left = 1200
      Top = 2600
      Width = 2580
      Height = 330
    End
    Begin VB.Image Image14
      Picture = "frmTab_publicroom_infobus.frx":0005BF1C
      Left = 1200
      Top = 2970
      Width = 2580
      Height = 330
    End
    Begin VB.Image Image15
      Picture = "frmTab_publicroom_infobus.frx":0005EBB6
      Left = 1200
      Top = 3330
      Width = 2580
      Height = 330
    End
    Begin VB.Label Label12
      Caption = "You must have 2 answers!"
      Left = 1200
      Top = 890
      Width = 2655
      Height = 255
      TabIndex = 16
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Image16
      Picture = "frmTab_publicroom_infobus.frx":00061850
      Left = 4320
      Top = 180
      Width = 360
      Height = 330
    End
  End
  Begin VB.TextBox votestotal
    BackColor = &H8000000E&
    Left = 4080
    Top = 1250
    Width = 375
    Height = 195
    Enabled = 0   'False
    Text = "0"
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 2 'Center
    Appearance = 0 'Flat
  End
  Begin VB.TextBox questionamount
    Left = 240
    Top = 4800
    Width = 615
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    Text = "0"
    TabIndex = 0
  End
  Begin VB.Timer Timer1
    Enabled = 0   'False
    Interval = 30000
    Left = 840
    Top = 4680
  End
  Begin VB.Label Label10
    Caption = "0"
    Left = 120
    Top = 4560
    Width = 615
    Height = 255
    TabIndex = 27
  End
End

Attribute VB_Name = "frmTab_publicroom_infobus"

Option Explicit

' Infobus Poll Form
' Allows creating and running polls in the Infobus public room

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
    ' Set window position based on foreground setting
    If GetINI("server", "foreground", gSettingsFile) = "Y" Then
        SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_FLAGS
    Else
        SetWindowPos Me.hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_FLAGS
    End If

    ' Disable timer initially
    Me.Timer1.Enabled = False
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

Private Sub Timer1_Timer()
    ' Timer fires when poll ends - send results to public room
    Dim sPacket As String

    ' Send poll results packet (AP = poll results)
    sPacket = "AP/" & Me.votestotal.Text & "/" & Me.AnumA.Text & "/" & Me.AnumB.Text
    RemoveUserFromPublicRoom &H22, sPacket

    ' Send additional answer counts if more than 2 answers
    If Me.questionamount.Text >= "3" Then
        RemoveUserFromPublicRoom &H22, "/" & Me.AnumC.Text

        If Me.questionamount.Text >= "4" Then
            RemoveUserFromPublicRoom &H22, "/" & Me.AnumD.Text

            If Me.questionamount.Text >= "5" Then
                RemoveUserFromPublicRoom &H22, "/" & Me.AnumE.Text

                If Me.questionamount.Text = "6" Then
                    RemoveUserFromPublicRoom &H22, "/" & Me.AnumF.Text
                End If
            End If
        End If
    End If

    ' Send empty packet to finalize
    RemoveUserFromPublicRoom &H22, vbNullString

    ' Update status
    Me.Label12.Caption = "Poll finished..."
    Me.cmdSendPoll.Enabled = True

    ' Clear all fields
    Me.tbQuestion.Text = vbNullString
    Me.tbAA.Text = vbNullString
    Me.tbAB.Text = vbNullString
    Me.tbAC.Text = vbNullString
    Me.tbAD.Text = vbNullString
    Me.tbAE.Text = vbNullString
    Me.tbAF.Text = vbNullString

    Me.Label12.Caption = "You must have 2 answers!"
End Sub

Private Sub cmdSendPoll_Click()
    ' Send poll button clicked - validate and send poll to Infobus room
    Dim sPacket As String

    Me.Label12.Caption = "Waiting for poll answers..."
    Me.votestotal.Text = "0"

    ' Validate - must have question and at least 2 answers
    If Me.tbQuestion.Text = vbNullString Or Me.tbAA.Text = vbNullString Or Me.tbAB.Text = vbNullString Then
        Me.Label12.Caption = "Please enter more answers!"
        Exit Sub
    End If

    ' Build and send poll packet (AO = poll)
    ' Format: AO<question><CR>1:<answer1><CR>2:<answer2><chr(2)>
    sPacket = "AO" & Me.tbQuestion.Text & Chr$(&HD) & _
              "1:" & Me.tbAA.Text & Chr$(&HD) & _
              "2:" & Me.tbAB.Text & Chr$(2)
    RemoveUserFromPublicRoom &H22, sPacket

    ' Check for answer C
    If Me.tbAC.Text = vbNullString Then
        Me.questionamount.Text = "2"
    Else
        ' Send answer C
        sPacket = Chr$(&HD) & "3:" & Me.tbAC.Text & Chr$(2)
        RemoveUserFromPublicRoom &H22, sPacket
        Me.questionamount.Text = "3"

        ' Check for answer D
        If Me.tbAD.Text <> vbNullString Then
            sPacket = Chr$(&HD) & "4:" & Me.tbAD.Text & Chr$(2)
            RemoveUserFromPublicRoom &H22, sPacket
            Me.questionamount.Text = "4"

            ' Check for answer E
            If Me.tbAE.Text <> vbNullString Then
                sPacket = Chr$(&HD) & "5:" & Me.tbAE.Text & Chr$(2)
                RemoveUserFromPublicRoom &H22, sPacket
                Me.questionamount.Text = "5"

                ' Check for answer F
                If Me.tbAF.Text <> vbNullString Then
                    sPacket = Chr$(&HD) & "6:" & Me.tbAF.Text & Chr$(2)
                    RemoveUserFromPublicRoom &H22, sPacket
                    Me.questionamount.Text = "6"
                End If
            End If
        End If
    End If

    ' Send empty packet to finalize poll start
    RemoveUserFromPublicRoom &H22, vbNullString

    ' Enable timer for poll duration (30 seconds)
    Me.Timer1.Enabled = True

    ' Reset vote counts
    Me.AnumA.Text = "0"
    Me.AnumB.Text = "0"
    Me.AnumC.Text = "0"
    Me.AnumD.Text = "0"
    Me.AnumE.Text = "0"
    Me.AnumF.Text = "0"

    ' Disable send button while poll is active
    Me.cmdSendPoll.Enabled = False
End Sub

Private Sub Image16_Click()
    ' Close button clicked - hide form
    Me.Hide
End Sub

Private Sub CloseInfobusForm()
    ' Unload the infobus poll form
    Unload frmTab_publicroom_infobus
End Sub

Private Sub EmptyProc()
    ' Empty procedure placeholder
End Sub
