VERSION 5.00
Begin VB.Form frmTabTutorial
  Caption = "Tutorial Lady"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  Icon = "frmTabTutorial.frx":0000
  LinkTopic = "Form3"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 9465
  ClientHeight = 2850
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.PictureBox Picture2
    BackColor = &H80000006&
    Picture = "frmTabTutorial.frx":57E2
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 9465
    Height = 2895
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.TextBox Text1
      Left = 2160
      Top = 1770
      Width = 5775
      Height = 195
      Text = "[What you want call]"
      TabIndex = 6
      BorderStyle = 0 'None
    End
    Begin VB.TextBox Text25
      Left = 1920
      Top = 3315
      Width = 1815
      Height = 195
      Enabled = 0   'False
      TabIndex = 1
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.Label Label4
      Caption = "Say"
      Left = 7345
      Top = 2200
      Width = 735
      Height = 255
      TabIndex = 8
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
    Begin VB.Image Image4
      Picture = "frmTabTutorial.frx":0005ED8C
      Left = 7270
      Top = 2160
      Width = 735
      Height = 300
    End
    Begin VB.Label Label3
      Caption = "You:"
      Left = 1680
      Top = 1770
      Width = 1695
      Height = 255
      TabIndex = 7
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
    Begin VB.Image Image3
      Picture = "frmTabTutorial.frx":0005F95E
      Left = 1560
      Top = 1680
      Width = 6450
      Height = 390
    End
    Begin VB.Label Label2
      Caption = "Hey can i help you with anything? U've a problem here? I'm have experince!"
      Left = 2400
      Top = 1230
      Width = 5415
      Height = 255
      TabIndex = 5
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label1
      Caption = "Hebbo:"
      Left = 1680
      Top = 1230
      Width = 1695
      Height = 255
      TabIndex = 4
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
    Begin VB.Image Image2
      Picture = "frmTabTutorial.frx":00067CD8
      Left = 840
      Top = 1080
      Width = 7200
      Height = 1305
    End
    Begin VB.Label Label33
      Caption = "Poolfigure:"
      Left = -360
      Top = 4320
      Width = 2055
      Height = 255
      TabIndex = 3
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label headWelcome
      Caption = "Tutorial Boy"
      Index = 0
      ForeColor = &HFFFFFF&
      Left = 3000
      Top = 240
      Width = 3255
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
    Begin VB.Image Image1
      Index = 3
      Picture = "frmTabTutorial.frx":0008667A
      Left = 8880
      Top = 180
      Width = 360
      Height = 330
    End
  End
End

Attribute VB_Name = "frmTabTutorial"

Option Explicit

' Tutorial Chatbot Form
' Simple keyword-based chatbot that responds to user input

Private Const WM_NCLBUTTONDOWN As Long = &HA1
Private Const HTCAPTION As Long = 2

Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function ReleaseCapture Lib "user32" () As Long

Private Sub Picture2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
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

Private Sub Label4_Click()
    ' Chatbot keyword response logic
    ' Checks user input for keywords and responds accordingly
    Dim sOriginalText As String
    Dim sModifiedText As String

    ' Check for "credits" keyword
    sOriginalText = Me.Text1.Text
    sModifiedText = Replace(Me.Text1.Text, "credits", vbNullString, 1, -1, vbTextCompare)
    sModifiedText = Replace(sModifiedText, "Credits", vbNullString)
    sModifiedText = Replace(sModifiedText, "helpers", vbNullString)

    If sOriginalText = sModifiedText Then
        Me.Label2.Caption = "I'm just a robot, tell me it a bit easyer or others!"
    Else
        Me.Label2.Caption = "Ah yes, the credits you find at the 'Info' tab on the Server."
        Exit Sub
    End If

    ' Check for "version" keyword
    sOriginalText = Me.Text1.Text
    sModifiedText = Replace(Me.Text1.Text, "version", vbNullString, 1, -1, vbTextCompare)

    If sOriginalText = sModifiedText Then
        Me.Label2.Caption = "I'm just a robot, tell me it a bit easyer or others!"
    Else
        Me.Label2.Caption = "The next version is comming next or this week ;)"
        Exit Sub
    End If

    ' Check for "join" keyword
    sOriginalText = Me.Text1.Text
    sModifiedText = Replace(Me.Text1.Text, "join", vbNullString, 1, -1, vbTextCompare)
    sModifiedText = Replace(sModifiedText, "Join", vbNullString)

    If sOriginalText = sModifiedText Then
        Me.Label2.Caption = "I'm just a robot, tell me it a bit easyer or others!"
    Else
        Me.Label2.Caption = "You want join HabLog, omg? Tell it Hebbo!"
        Exit Sub
    End If

    ' Check for "fuck" or "sex" keywords
    sOriginalText = Me.Text1.Text
    sModifiedText = Replace(Me.Text1.Text, "fuck", vbNullString, 1, -1, vbTextCompare)
    sModifiedText = Replace(sModifiedText, "sex", vbNullString)

    If sOriginalText = sModifiedText Then
        Me.Label2.Caption = "I'm just a robot, tell me it a bit easyer or others!"
    Else
        Me.Label2.Caption = "You wanna sex, omg? You're a noob or what?"
        Exit Sub
    End If

    ' Check for "bobba" keyword
    sOriginalText = Me.Text1.Text
    sModifiedText = Replace(Me.Text1.Text, "bobba", vbNullString, 1, -1, vbTextCompare)
    sModifiedText = Replace(sModifiedText, "Bobba", vbNullString)

    If sOriginalText = sModifiedText Then
        Me.Label2.Caption = "I'm just a robot, tell me it a bit easyer or others!"
    Else
        Me.Label2.Caption = "What?? Bobba?? Theres arent a bobbafilter guy ;)"
        Exit Sub
    End If

    ' Check for greeting keywords (hi, hallo, hey)
    sOriginalText = Me.Text1.Text
    sModifiedText = Replace(Me.Text1.Text, "hi", vbNullString, 1, -1, vbTextCompare)
    sModifiedText = Replace(sModifiedText, "hallo", vbNullString)
    sModifiedText = Replace(sModifiedText, "Hi", vbNullString)
    sModifiedText = Replace(sModifiedText, "Hallo", vbNullString)
    sModifiedText = Replace(sModifiedText, "Hey", vbNullString)

    If sOriginalText = sModifiedText Then
        Me.Label2.Caption = "I'm just a robot, tell me it a bit easyer or others!"
    Else
        Me.Label2.Caption = "Oh Hay ;) I like that you using my server!"
        Exit Sub
    End If

    ' Check for "thank" keyword
    sOriginalText = Me.Text1.Text
    sModifiedText = Replace(Me.Text1.Text, "thank", vbNullString, 1, -1, vbTextCompare)
    sModifiedText = Replace(sModifiedText, "Thank", vbNullString)

    If sOriginalText = sModifiedText Then
        Me.Label2.Caption = "I'm just a robot, tell me it a bit easyer or others!"
    Else
        Me.Label2.Caption = "You're Welcome!"
        Exit Sub
    End If

    ' Check for "please" or "you're welcome" keywords
    sOriginalText = Me.Text1.Text
    sModifiedText = Replace(Me.Text1.Text, "please", vbNullString, 1, -1, vbTextCompare)
    sModifiedText = Replace(sModifiedText, "you're welcome", vbNullString)
    sModifiedText = Replace(sModifiedText, "you are welcome", vbNullString)

    If sOriginalText = sModifiedText Then
        Me.Label2.Caption = "I'm just a robot, tell me it a bit easyer or others!"
    Else
        Me.Label2.Caption = "I find it OK, you neednt to say that ;)"
        Exit Sub
    End If
End Sub

Private Sub Image1_Click(Index As Integer)
    ' Close button clicked - hide the form
    Me.Hide
End Sub

Private Sub Form_Activate()
    ' Enable the form when activated
    Me.Enabled = True
End Sub

Private Sub Form_Deactivate()
    ' No action needed on deactivation
End Sub
