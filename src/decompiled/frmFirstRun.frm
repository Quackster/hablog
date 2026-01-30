VERSION 5.00
Begin VB.Form frmFirstRun
  Caption = "Wilkommen"
  BackColor = &H0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 4785
  ClientTop = 4095
  ClientWidth = 6015
  ClientHeight = 2235
  ShowInTaskbar = 0   'False
  Begin VB.Timer Timer1
    Interval = 1000
    Left = 3000
    Top = 1800
  End
  Begin VB.Image Image4
    Picture = "frmFirstRun.frx":0000
    Left = 0
    Top = 0
    Width = 6240
    Height = 2565
    Visible = 0   'False
  End
  Begin VB.Image Image3
    Picture = "frmFirstRun.frx":000341E2
    Left = -120
    Top = -240
    Width = 6330
    Height = 2595
    Visible = 0   'False
  End
  Begin VB.Image Image2
    Picture = "frmFirstRun.frx":00069B08
    Left = 0
    Top = 0
    Width = 6270
    Height = 2595
    Visible = 0   'False
  End
  Begin VB.Image heade
    Picture = "frmFirstRun.frx":0009EC12
    Left = 0
    Top = 0
    Width = 6015
    Height = 2235
  End
  Begin VB.Shape Shape1
    Left = 2400
    Top = 4440
    Width = 7620
    Height = 4545
  End
  Begin VB.Label loading
    Caption = "Welcome to DebboProject V3"
    ForeColor = &H80000007&
    Left = 3015
    Top = 4200
    Width = 4335
    Height = 255
    TabIndex = 0
    Alignment = 1 'Right Justify
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
    Picture = "frmFirstRun.frx":000CA918
    Left = 7080
    Top = 4440
    Width = 7500
    Height = 4500
  End
End

Attribute VB_Name = "frmFirstRun"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function ReleaseCapture Lib "user32" () As Long

Private Const WM_NCLBUTTONDOWN = &HA1
Private Const HTCAPTION = 2

Private Sub Image2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ' Allow dragging the form by the image, or unload on right-click
    If Button = 1 Then
        ' Left click - drag form
        ReleaseCapture
        SendMessage Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
    Else
        ' Right click - unload form
        Unload Me
    End If
End Sub

Private Sub Image4_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ' Allow dragging the form by the image, or unload on right-click
    If Button = 1 Then
        ' Left click - drag form
        ReleaseCapture
        SendMessage Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
    Else
        ' Right click - unload form
        Unload Me
    End If
End Sub

Private Sub Image3_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ' Allow dragging the form by the image, or unload on right-click
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
    Dim startTime As Single

    ' Wait 2 seconds then show Image2
    startTime = Timer
    Do
        DoEvents
    Loop Until Timer - startTime >= 2
    Image2.Visible = True

    ' Wait 3 seconds then hide Image2 and show Image4
    startTime = Timer
    Do
        DoEvents
    Loop Until Timer - startTime >= 3
    Image2.Visible = False
    Image4.Visible = True

    ' Wait 2 seconds then hide Image4 and show Image3
    startTime = Timer
    Do
        DoEvents
    Loop Until Timer - startTime >= 2
    Image4.Visible = False
    Image3.Visible = True

    ' Disable the timer
    Timer1.Enabled = False
    Timer1.Enabled = False
End Sub

Private Sub heade_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then
        ReleaseCapture
        SendMessage Me.hwnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
    Else
        Unload Me
    End If
End Sub

Private Sub Form_Load()
    Dim startTime As Single

    Me.Show
    DoEvents

    ' Wait approximately 9 seconds
    startTime = Timer
    Do
        DoEvents
    Loop Until Timer - startTime >= 9

    Load frmMain
    DoEvents
    Unload Me
    frmMain.Show
End Sub
