VERSION 5.00
Begin VB.Form frmWelcomes
  Caption = "HabLog - Informations"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Picture = "frmWelcomes.frx":0000
  BorderStyle = 1 'Fixed Single
  Icon = "frmWelcomes.frx":000535E2
  LinkTopic = "Form2"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 5325
  ClientTop = 4725
  ClientWidth = 4545
  ClientHeight = 2865
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmWelcomes.frx":00058DC4
    ForeColor = &H80000008&
    Left = 6960
    Top = 2520
    Width = 3900
    Height = 4455
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
      TabIndex = 9
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
    Begin VB.TextBox txtHotelName
      BackColor = &HFFFFFF&
      Left = 1680
      Top = 720
      Width = 2055
      Height = 285
      Text = "My Hotel name"
      TabIndex = 8
      Alignment = 1 'Right Justify
    End
    Begin VB.TextBox txtHotelPort
      BackColor = &HFFFFFF&
      Left = 1680
      Top = 1080
      Width = 2055
      Height = 285
      Text = "1232"
      TabIndex = 7
      Alignment = 1 'Right Justify
    End
    Begin VB.CommandButton cmdCreate
      Caption = "Create my Hotel!"
      BackColor = &H80000013&
      Left = 120
      Top = 4080
      Width = 3615
      Height = 255
      TabIndex = 6
      Style = 1
    End
    Begin VB.TextBox txtStartingCreds
      BackColor = &HFFFFFF&
      Left = 1680
      Top = 1800
      Width = 1335
      Height = 285
      Text = "500"
      TabIndex = 5
      Alignment = 1 'Right Justify
    End
    Begin VB.CheckBox chkFullCat
      Caption = "Check1"
      BackColor = &HC8A465&
      Left = 3480
      Top = 3600
      Width = 255
      Height = 255
      TabIndex = 4
    End
    Begin VB.CheckBox chkWelcBobba
      Caption = "Check1"
      BackColor = &HC8A465&
      Left = 3480
      Top = 3240
      Width = 255
      Height = 255
      TabIndex = 3
      Value = 1
    End
    Begin VB.ComboBox lstHotelLanguage
      Left = 1680
      Top = 1440
      Width = 2055
      Height = 315
      Text = "Choose your language"
      TabIndex = 2
    End
    Begin VB.TextBox txtMaxOnline
      BackColor = &HFFFFFF&
      Left = 2040
      Top = 2160
      Width = 975
      Height = 285
      Text = "50"
      TabIndex = 1
      Alignment = 1 'Right Justify
    End
    Begin VB.Label headWelcome
      Caption = "Welcome to DebboProject!"
      Index = 0
      ForeColor = &H0&
      Left = 120
      Top = 390
      Width = 3255
      Height = 255
      TabIndex = 19
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
    Begin VB.Label lblHotelname
      Caption = "Hotel name:"
      Index = 1
      Left = 120
      Top = 720
      Width = 4245
      Height = 255
      TabIndex = 18
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Verdana"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Enter the name of your Hotel"
    End
    Begin VB.Label lblHotelport
      Caption = "Hotel port:"
      Index = 3
      Left = 120
      Top = 1080
      Width = 4245
      Height = 255
      TabIndex = 17
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Verdana"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Enter the port DebboProject should run your Hotel on"
    End
    Begin VB.Label lblHotellang
      Caption = "Hotel language:"
      Index = 4
      Left = 120
      Top = 1440
      Width = 4245
      Height = 255
      TabIndex = 16
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Verdana"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Choose the language your Hotel will use"
    End
    Begin VB.Label lblHotellang
      Caption = "Starting Credits:"
      Index = 0
      Left = 120
      Top = 1800
      Width = 4245
      Height = 255
      TabIndex = 15
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Verdana"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Enter how much Credits a Habbo should receive when registering"
    End
    Begin VB.Label lblHotellang
      Caption = "      Credits"
      Index = 1
      Left = 3120
      Top = 1680
      Width = 735
      Height = 495
      TabIndex = 14
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Verdana"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblHotellang
      Caption = "Full Catalogue for everyone?"
      Index = 2
      Left = 120
      Top = 3600
      Width = 4245
      Height = 255
      TabIndex = 13
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Verdana"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Can normal Habbo's buy all furni?"
    End
    Begin VB.Label lblHotellang
      Caption = "Bobba-filter enabled?"
      Index = 3
      Left = 120
      Top = 3240
      Width = 4245
      Height = 255
      TabIndex = 12
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Verdana"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Do you want to filter swear words?"
    End
    Begin VB.Label lblHotellang
      Caption = "      Users"
      Index = 8
      Left = 3120
      Top = 2040
      Width = 735
      Height = 495
      TabIndex = 11
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Verdana"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblHotellang
      Caption = "Max. users online:"
      Index = 9
      Left = 0
      Top = 2160
      Width = 4245
      Height = 255
      TabIndex = 10
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Verdana"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "How much users can be online at the same moment in your Hotel? Decrease this number if you've lag"
    End
  End
  Begin VB.Image Image1
    Picture = "frmWelcomes.frx":000916F2
    Left = 0
    Top = 0
    Width = 1125
    Height = 1155
  End
  Begin VB.Image Image2
    Picture = "frmWelcomes.frx":00095BC8
    Left = 1140
    Top = 0
    Width = 1125
    Height = 1140
  End
  Begin VB.Image Image3
    Picture = "frmWelcomes.frx":00099FBA
    Left = 2280
    Top = 0
    Width = 1125
    Height = 1140
  End
  Begin VB.Image Image4
    Picture = "frmWelcomes.frx":0009E3AC
    Left = 3420
    Top = 0
    Width = 1125
    Height = 1140
  End
  Begin VB.Label Label1
    Caption = "frmWelcomes.frx":000A279E
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 120
    Top = 1320
    Width = 4245
    Height = 1875
    TabIndex = 20
    BackStyle = 0 'Transparent
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "frmWelcomes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

' Hotel Setup Wizard Form
' Configures hotel name, port, language, starting credits, max online, bobba filter, and catalogue

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

Private Sub cmdCreate_Click()
    ' Create hotel button clicked - validate and save settings
    Dim vHotelName As Variant
    Dim vHotelPort As Variant
    Dim vLanguage As Variant
    Dim vStartingCredits As Variant
    Dim vMaxOnline As Variant
    Dim vBobbaFilter As Variant
    Dim vFullCatalog As Variant
    Dim oTextStream As Object

    ' Validate hotel name
    If Me.txtHotelName.Text <> vbNullString Then
        vHotelName = Me.txtHotelName.Text
    ElseIf Me.txtHotelName.Text = vbNullString Then
        MsgBox "Sorry, but you need to give your Hotel a name!", vbOKOnly, "DebboProject :: Your own Hotel!"
        Exit Sub
    End If

    ' Validate hotel port
    If IsNumeric(Me.txtHotelPort.Text) And Me.txtHotelPort.Text <> "0" Then
        vHotelPort = Me.txtHotelPort.Text
    ElseIf Me.txtHotelPort.Text = vbNullString Or Not IsNumeric(Me.txtHotelPort.Text) Or Me.txtHotelPort.Text = "0" Then
        MsgBox "Sorry, but you need to fill out a valid port!", vbOKOnly, "DebboProject :: Your own Hotel!"
        Exit Sub
    End If

    ' Map language selection to language code
    If Me.lstHotelLanguage.Text = "English" Then
        vLanguage = "US"
    End If
    If Me.lstHotelLanguage.Text = "German" Then
        vLanguage = "DE"
    End If
    If Me.lstHotelLanguage.Text = "Dutch" Then
        vLanguage = "NL"
    End If
    If Me.lstHotelLanguage.Text = "French" Then
        vLanguage = "FR"
    End If
    If Me.lstHotelLanguage.Text = "Italian" Then
        vLanguage = "IT"
    End If
    If Me.lstHotelLanguage.Text = "Spanish" Then
        vLanguage = "ES"
    End If
    If Me.lstHotelLanguage.Text = "Danish" Then
        vLanguage = "DK"
    End If

    ' Check if language was selected
    If Me.lstHotelLanguage.Text = "Choose your language" Then
        MsgBox "Sorry, but you need to choose a language from the list. Using custom languages isn't supported!", vbOKOnly, "DebboProject :: Your own Hotel!"
        Exit Sub
    End If

    ' Validate starting credits
    If IsNumeric(Me.txtStartingCreds.Text) Then
        vStartingCredits = Me.txtStartingCreds.Text
    ElseIf Me.txtStartingCreds.Text = vbNullString Or Not IsNumeric(Me.txtStartingCreds.Text) Then
        MsgBox "Sorry, but you need to fill out a valid amount of starting Credits!", vbOKOnly, "DebboProject :: Your own Hotel!"
        Exit Sub
    End If

    ' Validate max online
    If IsNumeric(Me.txtMaxOnline.Text) And Me.txtMaxOnline.Text <> "0" Then
        vMaxOnline = Me.txtMaxOnline.Text
    ElseIf Me.txtMaxOnline.Text = vbNullString Or Me.txtMaxOnline.Text = "0" Or Not IsNumeric(Me.txtMaxOnline.Text) Then
        MsgBox "Sorry, but you need to fill out a valid max online limit!", vbOKOnly, "DebboProject :: Your own Hotel!"
        Exit Sub
    End If

    ' Get bobba filter setting
    If Me.chkWelcBobba.Value = 1 Then
        vBobbaFilter = "1"
    End If
    If Me.chkWelcBobba.Value = 0 Then
        vBobbaFilter = "0"
    End If

    ' Get full catalog setting
    If Me.chkFullCat.Value = 1 Then
        vFullCatalog = "1"
    End If
    If Me.chkFullCat.Value = 0 Then
        vFullCatalog = "0"
    End If

    ' Save settings to INI file
    WriteINI "config", "hotel_name", CStr(vHotelName), gSettingsFile
    WriteINI "server", "port", CStr(vHotelPort), gSettingsFile
    WriteINI "server", "lang", CStr(vLanguage), gSettingsFile

    ' Write starting credits to file
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "new_habbo\credits.txt", 2, False, 0)
    oTextStream.Write CStr(vStartingCredits)

    ' Save more settings
    WriteINI "server", "max_online", CStr(vMaxOnline), gSettingsFile
    WriteINI "config", "bobba_filter", CStr(vBobbaFilter), gSettingsFile
    WriteINI "config", "cata_all", CStr(vFullCatalog), gSettingsFile
    WriteINI "config", "wizard_done", "1", gSettingsFile

    ' Show success message
    MsgBox "Congratulations! Your hotel setup seems to have been successful! " & vbCrLf & _
           "The server shall now restart. When it reloads you will be able to use!", vbOKOnly
End Sub

Private Sub Image2_Click()
    ' Logging info button clicked
    Me.Label1.Caption = "HabLog Project has an Server log to log Packets. That you find at the frontpage. We're coded lots of Scripter walls but if a scripter founds a method to script you find the log there."
    Me.Image4.Visible = True
    Me.Image2.Visible = False
    Me.Image3.Visible = True
    Me.Image1.Visible = True
End Sub

Private Sub Image4_Click()
    ' IP/Hosting info button clicked
    Me.Label1.Caption = "HabLog Project needs lots of PHP Files. " & frmMain.Sock(1).LocalIP & " is your IP you need this IP to host your Hotel. If you use Hamachi you need the Peoples who want join in your or another Network."
    Me.Image4.Visible = False
    Me.Image2.Visible = True
    Me.Image3.Visible = True
    Me.Image1.Visible = True
End Sub

Private Sub Image3_Click()
    ' Security info button clicked
    Me.Label1.Caption = "HabLog Project has a big Security wall to block many Scripters, we've patched many Injections and many scripts. You found a unblocked Script? Report it at Ragezone."
    Me.Image4.Visible = True
    Me.Image2.Visible = True
    Me.Image3.Visible = False
    Me.Image1.Visible = True
End Sub

Private Sub Image1_Click()
    ' About info button clicked
    Me.Label1.Caption = "HabLog Project is an Project who beginned to coding one month ago. We're made some features and we thanks to DebboProject, Carlos, Orakel, Rekordi and Myrax! Our Project is one of the biggest Retro Projects. We're search Peoples who could Help us. Fuck SngForum!"
    Me.Image4.Visible = True
    Me.Image2.Visible = True
    Me.Image3.Visible = True
    Me.Image1.Visible = False
End Sub

Private Sub closefrmAutoClose_Click()
    ' Close button clicked - end application
    End
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
    ' Initialize form and populate language list

    ' Set application path
    gAppPath = Replace(App.Path & "\database\", "\\", "\")

    ' Populate language dropdown
    Me.lstHotelLanguage.AddItem "English"
    Me.lstHotelLanguage.AddItem "German"
    Me.lstHotelLanguage.AddItem "Dutch"
    Me.lstHotelLanguage.AddItem "French"
    Me.lstHotelLanguage.AddItem "Italian"
    Me.lstHotelLanguage.AddItem "Spanish"
    Me.lstHotelLanguage.AddItem "Danish"

    ' Set window position based on foreground checkbox setting
    If frmMain.chkForegroundValue = 1 Then
        SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_FLAGS
        WriteINI "server", "foreground", "Y", gSettingsFile
    Else
        SetWindowPos Me.hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_FLAGS
        WriteINI "server", "foreground", "N", gSettingsFile
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
