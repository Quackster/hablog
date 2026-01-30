VERSION 5.00
Begin VB.Form frmTab_publicroom_layout
  Caption = "Form2"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form2"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 4185
  ClientHeight = 2535
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmTab_publicroom_layout.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 4215
    Height = 2550
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.ComboBox Combo1
      BackColor = &H8000000E&
      Left = 960
      Top = 840
      Width = 1695
      Height = 315
      Text = "-- Choose --"
      TabIndex = 3
      List = "frmTab_publicroom_layout.frx":000230BA
      ItemData = "frmTab_publicroom_layout.frx":000230EA
    End
    Begin VB.ComboBox Combo2
      BackColor = &H8000000E&
      Left = 960
      Top = 1440
      Width = 1695
      Height = 315
      Text = "-- Choose --"
      TabIndex = 2
      List = "frmTab_publicroom_layout.frx":0002310F
      ItemData = "frmTab_publicroom_layout.frx":0002312C
    End
    Begin VB.ComboBox Combo3
      BackColor = &H8000000E&
      Left = 960
      Top = 2040
      Width = 1695
      Height = 315
      Text = "-- Choose --"
      TabIndex = 1
      List = "frmTab_publicroom_layout.frx":00023136
      ItemData = "frmTab_publicroom_layout.frx":00023173
    End
    Begin VB.Label Label1
      Caption = "Layout Editor"
      ForeColor = &HFFFFFF&
      Left = 360
      Top = 240
      Width = 3255
      Height = 255
      TabIndex = 7
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
      Caption = "Infobus:"
      BackColor = &H80&
      ForeColor = &H80000007&
      Left = 45
      Top = 870
      Width = 735
      Height = 255
      TabIndex = 6
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label3
      Caption = "Caf�:"
      BackColor = &H80&
      ForeColor = &H80000007&
      Left = 45
      Top = 1450
      Width = 735
      Height = 255
      TabIndex = 5
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label4
      Caption = "Theater:"
      BackColor = &H80&
      ForeColor = &H80000007&
      Left = 45
      Top = 2050
      Width = 735
      Height = 255
      TabIndex = 4
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Image16
      Picture = "frmTab_publicroom_layout.frx":00023183
      Left = 3600
      Top = 180
      Width = 360
      Height = 330
    End
    Begin VB.Image Command3
      Picture = "frmTab_publicroom_layout.frx":000237F5
      Left = 2760
      Top = 2040
      Width = 1215
      Height = 300
    End
    Begin VB.Image Command2
      Picture = "frmTab_publicroom_layout.frx":00024B47
      Left = 2760
      Top = 1440
      Width = 1215
      Height = 300
    End
    Begin VB.Image Command1
      Picture = "frmTab_publicroom_layout.frx":00025E99
      Left = 2760
      Top = 840
      Width = 1215
      Height = 300
    End
  End
End

Attribute VB_Name = "frmTab_publicroom_layout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

' Layout Editor Form
' Allows configuration of public room layouts (Infobus, Cafe, Theater)

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

Private Sub Image16_Click()
    ' Close button clicked - hide the form
    Me.Hide
End Sub

Private Sub Command1_Click()
    ' Save Infobus layout
    Dim sSettingsFile As String

    If Me.Combo1.Text = "-- Choose --" Then
        MsgBox "You must choose a infobus layout!", vbInformation
        Exit Sub
    End If

    sSettingsFile = gAppPath & "configuration\settings.ini"
    WriteINI "config", "infobus_layout", Me.Combo1.Text, sSettingsFile
End Sub

Private Sub Command2_Click()
    ' Save Cafe layout
    Dim sSettingsFile As String

    If Me.Combo2.Text = "-- Choose --" Then
        MsgBox "You must choose a cafe layout!", vbInformation
        Exit Sub
    End If

    sSettingsFile = gAppPath & "configuration\settings.ini"
    WriteINI "config", "cafe_layout", Me.Combo2.Text, sSettingsFile
End Sub

Private Sub Command3_Click()
    ' Save Theater layout
    Dim sSettingsFile As String

    If Me.Combo3.Text = "-- Choose --" Then
        MsgBox "You must choose a theatre layout!", vbInformation
        Exit Sub
    End If

    sSettingsFile = gAppPath & "configuration\settings.ini"
    WriteINI "config", "theater_layout", Me.Combo3.Text, sSettingsFile
End Sub

Private Sub Form_Load()
    On Error Resume Next

    ' Remove and re-add theater_samsung to combo (ensures it's in the list)
    Me.Combo3.RemoveItem CInt("theater_samsung")
    Me.Combo3.AddItem "theater_samsung"

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

Private Sub CloseLayoutForm()
    ' Unload the layout editor form
    Unload frmTab_publicroom_layout
End Sub

Private Sub SaveStudioLayout()
    ' Save studio layout to INI file
    Dim sSettingsFile As String
    Dim sLayout As String

    sLayout = Me.Combo1.Text  ' Uses same combo for studio in this context
    sSettingsFile = gAppPath & "configuration\settings.ini"

    If sLayout = "-- Choose --" Then
        MsgBox "You must choose a studio layout!", vbInformation
        Exit Sub
    End If

    WriteINI "config", "studio_layout", sLayout, sSettingsFile
End Sub
