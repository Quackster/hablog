VERSION 5.00
Begin VB.Form frmAgree
  Caption = "Form3"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form3"
  ClientLeft = 5460
  ClientTop = 2070
  ClientWidth = 4185
  ClientHeight = 6885
  ShowInTaskbar = 0   'False
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmAgree.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 4335
    Height = 7440
    TabIndex = 55
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.TextBox Text1
      Left = 240
      Top = 6360
      Width = 1815
      Height = 285
      Text = "I'm agreed the Rules!"
      TabIndex = 63
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.CheckBox Check1
      Caption = "Agree"
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 240
      Top = 4920
      Width = 3735
      Height = 255
      TabIndex = 61
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin VB.Label Label3
      Caption = "frmAgree.frx":00069202
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 240
      Top = 5640
      Width = 3495
      Height = 615
      TabIndex = 62
      BackStyle = 0 'Transparent
      Appearance = 0 'Flat
    End
    Begin VB.Image Image2
      Picture = "frmAgree.frx":00069294
      Left = 2040
      Top = 6360
      Width = 1680
      Height = 300
    End
    Begin VB.Label Label2
      Caption = "Disagreed"
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = 840
      Top = 5370
      Width = 975
      Height = 375
      TabIndex = 60
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      Appearance = 0 'Flat
    End
    Begin VB.Image Image1
      Picture = "frmAgree.frx":0006AD16
      Left = 3600
      Top = 185
      Width = 360
      Height = 330
    End
    Begin VB.Label Label1
      Caption = "frmAgree.frx":0006B388
      Index = 48
      Left = 240
      Top = 1080
      Width = 4005
      Height = 4575
      TabIndex = 58
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
    Begin VB.Label Label1
      Caption = "Please agree this agreement:             "
      Index = 47
      Left = -120
      Top = 840
      Width = 4485
      Height = 255
      TabIndex = 57
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
    Begin VB.Label header
      Caption = "You must agree    "
      Index = 0
      ForeColor = &HFFFFFF&
      Left = 480
      Top = 240
      Width = 3255
      Height = 255
      TabIndex = 56
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
    Begin VB.Image heade
      Left = 240
      Top = 240
      Width = 3255
      Height = 255
    End
  End
  Begin VB.Frame ifrmWelcomeTo
    BackColor = &HC8A465&
    Left = 4560
    Top = 6960
    Width = 4455
    Height = 5775
    TabIndex = 48
    Begin VB.Label Label1
      Caption = "We wish you a lot of pleasure with DebboProject V3, maybe there'll be a V4, but it's not sure. Success!"
      Index = 43
      Left = 120
      Top = 4440
      Width = 4245
      Height = 1575
      TabIndex = 54
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
    Begin VB.Label Label1
      Caption = "frmAgree.frx":0006B7D6
      Index = 42
      Left = 120
      Top = 3240
      Width = 4245
      Height = 1575
      TabIndex = 53
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
    Begin VB.Label Label1
      Caption = "DebboProject Team"
      Index = 4
      Left = 120
      Top = 5400
      Width = 4245
      Height = 255
      TabIndex = 52
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
    Begin VB.Label Label1
      Caption = "frmAgree.frx":0006B8A9
      Index = 3
      Left = 120
      Top = 1920
      Width = 4245
      Height = 1575
      TabIndex = 51
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
    Begin VB.Label Label1
      Caption = "frmAgree.frx":0006B9C7
      Index = 2
      Left = 120
      Top = 480
      Width = 4245
      Height = 1215
      TabIndex = 50
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
    Begin VB.Label Label1
      Caption = "Welcome to DebboProject V3!"
      Index = 1
      Left = 120
      Top = 240
      Width = 4485
      Height = 495
      TabIndex = 49
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
  Begin VB.Frame ifrmFAQ
    Caption = "FAQ"
    BackColor = &HC8A465&
    Left = 4560
    Top = 7080
    Width = 4455
    Height = 5775
    TabIndex = 34
    Begin VB.Label Label1
      Caption = "That's because we haven't done the pve's, it's a very time-consuming and hard job."
      Index = 41
      Left = 240
      Top = 4560
      Width = 4245
      Height = 615
      TabIndex = 47
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
    Begin VB.Label Label1
      Caption = "- Public Rooms in Navigator are bugged!"
      Index = 40
      Left = 240
      Top = 4320
      Width = 4245
      Height = 495
      TabIndex = 46
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
    Begin VB.Label Label1
      Caption = "Sorry, but we haven't had enough time for it."
      Index = 39
      Left = 360
      Top = 4080
      Width = 4245
      Height = 615
      TabIndex = 45
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
    Begin VB.Label Label1
      Caption = "- Translations aren't complete!"
      Index = 38
      Left = 240
      Top = 3840
      Width = 4245
      Height = 495
      TabIndex = 44
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
    Begin VB.Label Label1
      Caption = "MORE INFO, CHECK OUT THE DEBBO THREAD"
      Index = 34
      Left = 120
      Top = 5160
      Width = 4245
      Height = 255
      TabIndex = 43
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
    Begin VB.Label Label1
      Caption = "SnowStorm, BattleBall and Wobble Squabble are very hard to code. There's a chance that it's never available in DebboProject."
      Index = 33
      Left = 360
      Top = 3240
      Width = 4245
      Height = 615
      TabIndex = 42
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
    Begin VB.Label Label1
      Caption = "- Hey, where's SnowStorm?"
      Index = 32
      Left = 240
      Top = 3000
      Width = 4245
      Height = 495
      TabIndex = 41
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
    Begin VB.Label Label1
      Caption = "frmAgree.frx":0006BAE0
      Index = 31
      Left = 360
      Top = 2400
      Width = 4245
      Height = 615
      TabIndex = 40
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
    Begin VB.Label Label1
      Caption = "- Help, my loader doesn't work!"
      Index = 30
      Left = 240
      Top = 2160
      Width = 4335
      Height = 495
      TabIndex = 39
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
    Begin VB.Label Label1
      Caption = "Running this application is as legal as eating peanuts in the park, but using Sulake's (Habbo Hotel) game files is illegal."
      Index = 18
      Left = 360
      Top = 1560
      Width = 4245
      Height = 615
      TabIndex = 38
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
    Begin VB.Label Label1
      Caption = "- Am I legal when I run DebboProject?"
      Index = 17
      Left = 240
      Top = 1320
      Width = 4245
      Height = 255
      TabIndex = 37
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
    Begin VB.Label Label1
      Caption = "frmAgree.frx":0006BB64
      Index = 29
      Left = 120
      Top = 480
      Width = 4125
      Height = 1815
      TabIndex = 36
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
    Begin VB.Label Label1
      Caption = "FAQ"
      Index = 28
      Left = 0
      Top = 240
      Width = 4485
      Height = 255
      TabIndex = 35
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
  Begin VB.Frame ifrmNew
    Caption = "What's new?"
    BackColor = &HC8A465&
    Left = 4680
    Top = 5400
    Width = 4455
    Height = 5775
    TabIndex = 29
    Begin VB.Label Label1
      Caption = "frmAgree.frx":0006BBFA
      Index = 9
      Left = 120
      Top = 1920
      Width = 4005
      Height = 2175
      TabIndex = 33
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
    Begin VB.Label Label1
      Caption = "New in DebboProject V3:"
      Index = 8
      Left = 0
      Top = 1680
      Width = 4485
      Height = 255
      TabIndex = 32
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
    Begin VB.Label Label1
      Caption = "What's new?"
      Index = 16
      Left = 0
      Top = 240
      Width = 4485
      Height = 255
      TabIndex = 31
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
    Begin VB.Label Label1
      Caption = "frmAgree.frx":0006BE16
      Index = 15
      Left = 120
      Top = 480
      Width = 4365
      Height = 1815
      TabIndex = 30
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
  End
  Begin VB.Frame frameHeader
    BackColor = &HC8A465&
    Left = 4800
    Top = 120
    Width = 4215
    Height = 975
    TabIndex = 24
    Begin VB.CommandButton cmdFAQShow
      Caption = "Small FAQ"
      BackColor = &H80000013&
      Left = 2400
      Top = 240
      Width = 1695
      Height = 255
      TabIndex = 28
      Style = 1
    End
    Begin VB.CommandButton cmdUpcomingShow
      Caption = "Upcoming features"
      BackColor = &H80000013&
      Left = 120
      Top = 600
      Width = 1695
      Height = 255
      TabIndex = 27
      Style = 1
    End
    Begin VB.CommandButton cmdCreditsShow
      Caption = "Credits"
      BackColor = &H80000013&
      Left = 2400
      Top = 600
      Width = 1695
      Height = 255
      TabIndex = 26
      Style = 1
    End
    Begin VB.CommandButton cmdNewShow
      Caption = "What's new?"
      BackColor = &H80000013&
      Left = 120
      Top = 240
      Width = 1695
      Height = 255
      TabIndex = 25
      Style = 1
    End
  End
  Begin VB.CommandButton closefrmAutoClose
    Caption = "X"
    BackColor = &H80000013&
    Left = 5880
    Top = 7440
    Width = 240
    Height = 210
    TabIndex = 23
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
  Begin VB.Frame ifrmUpcomingFeatures
    Caption = "Upcoming features"
    BackColor = &HC8A465&
    Left = 4680
    Top = 1200
    Width = 4455
    Height = 4215
    TabIndex = 18
    Begin VB.Label Label1
      Caption = "frmAgree.frx":0006BF1F
      Index = 7
      Left = 240
      Top = 2520
      Width = 4365
      Height = 1575
      TabIndex = 22
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
    Begin VB.Label Label1
      Caption = "Probably available in DebboProject V4:"
      Index = 6
      Left = 0
      Top = 2280
      Width = 4485
      Height = 255
      TabIndex = 21
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
    Begin VB.Label Label1
      Caption = "frmAgree.frx":0006C088
      Index = 5
      Left = 120
      Top = 480
      Width = 4365
      Height = 1815
      TabIndex = 20
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
    Begin VB.Label Label1
      Caption = "Upcoming features"
      Index = 27
      Left = 120
      Top = 240
      Width = 4485
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
  End
  Begin VB.Frame ifrmCredits
    Caption = "Credits"
    BackColor = &HC8A465&
    Left = 4680
    Top = 1200
    Width = 4455
    Height = 5775
    TabIndex = 0
    Begin VB.Label Label1
      Caption = "werpo (for buying 22kak� a Traxmachine on Habbo.fr)"
      Index = 44
      Left = 120
      Top = 3600
      Width = 4485
      Height = 375
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
    End
    Begin VB.Label Label1
      Caption = "- RaGEZONE boards"
      Index = 37
      Left = 120
      Top = 5280
      Width = 4485
      Height = 495
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
    End
    Begin VB.Label Label1
      Caption = "Italian translation (Burnout2006)"
      Index = 36
      Left = 120
      Top = 2520
      Width = 4485
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
    End
    Begin VB.Label Label1
      Caption = "- DDafydd / Su-la-ke (great help, debugging, idea's, functions, catalogue, :D)"
      Index = 35
      Left = 120
      Top = 4800
      Width = 4485
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
    Begin VB.Label Label1
      Caption = "- Mark (help with Nillus' noobish questions)"
      Index = 26
      Left = 120
      Top = 4440
      Width = 4485
      Height = 375
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
    End
    Begin VB.Label Label1
      Caption = "- grongere/Mitchell - various things, great guy"
      Index = 25
      Left = 120
      Top = 4080
      Width = 4485
      Height = 375
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
    End
    Begin VB.Label Label1
      Caption = ":: Flash:: (for buying Nillus a Traxmachine on Habbo Netherlands)"
      Index = 24
      Left = 120
      Top = 3120
      Width = 4485
      Height = 375
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
    Begin VB.Label Label1
      Caption = "Special thanks:"
      Index = 23
      Left = 0
      Top = 2880
      Width = 4485
      Height = 255
      TabIndex = 10
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
    Begin VB.Label Label1
      Caption = "German translation (Dark_Messiah)"
      Index = 22
      Left = 120
      Top = 2280
      Width = 4485
      Height = 255
      TabIndex = 9
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
    Begin VB.Label Label1
      Caption = "Swedish translation (SwedenS)"
      Index = 21
      Left = 120
      Top = 2040
      Width = 4485
      Height = 255
      TabIndex = 8
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
    Begin VB.Label Label1
      Caption = "Spanish translation (Ivan66)"
      Index = 20
      Left = 120
      Top = 1800
      Width = 4485
      Height = 255
      TabIndex = 7
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
    Begin VB.Label Label1
      Caption = "Help:"
      Index = 11
      Left = 0
      Top = 1560
      Width = 4485
      Height = 255
      TabIndex = 6
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
    Begin VB.Label Label1
      Caption = "Sources:"
      Index = 19
      Left = 90
      Top = 825
      Width = 4485
      Height = 255
      TabIndex = 5
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
    Begin VB.Label Label1
      Caption = "USA111 _ Myrax"
      Index = 14
      Left = 120
      Top = 1065
      Width = 4485
      Height = 255
      TabIndex = 4
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
    Begin VB.Label Label1
      Caption = "Development:"
      Index = 13
      Left = 120
      Top = 240
      Width = 4485
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
    Begin VB.Label Label1
      Caption = "22kak� / Mirkan / Nillus"
      Index = 12
      Left = 90
      Top = 465
      Width = 4485
      Height = 255
      TabIndex = 2
      Alignment = 2 'Center
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
    Begin VB.Label Label1
      Caption = "wizzkid41 (Infobus Development)"
      Index = 10
      Left = 120
      Top = 1320
      Width = 4485
      Height = 255
      TabIndex = 1
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
  End
  Begin VB.Label Label1
    Caption = "DebboProject V3"
    Index = 0
    Left = 120
    Top = 360
    Width = 4485
    Height = 255
    TabIndex = 59
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Verdana"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmAgree"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Image2_Click()
    ' Click on the "Accept" button image
    If Text1.Text = "I'm agreed the Rules!" And Label2.Caption = "Agreed" Then
        Me.Visible = False
        frmMain.Visible = True
    End If
End Sub

Private Sub Check1_Click()
    ' Toggle agreed/disagreed state based on checkbox
    If Check1.Value = 1 Then
        Label2.ForeColor = &H8000&  ' Green
        Label2.Caption = "Agreed"
    Else
        Label2.ForeColor = &HC0&    ' Red
        Label2.Caption = "Disagreed"
    End If
End Sub

Private Sub Image1_Click()
    ' Close/X button
    End
End Sub
