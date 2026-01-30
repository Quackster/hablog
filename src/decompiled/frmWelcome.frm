VERSION 5.00
Begin VB.Form frmWelcome
  Caption = "Form3"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form3"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 4185
  ClientHeight = 6885
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.Frame ifrmCredits
    Caption = "Credits"
    BackColor = &HC8A465&
    Left = 4680
    Top = 1200
    Width = 4455
    Height = 5775
    TabIndex = 45
    Begin VB.Label Label1
      Caption = "wizzkid41 (Infobus Development)"
      Index = 10
      Left = 120
      Top = 1320
      Width = 4485
      Height = 255
      TabIndex = 62
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
      Caption = "22kak� / Mirkan / Nillus"
      Index = 12
      Left = 90
      Top = 465
      Width = 4485
      Height = 255
      TabIndex = 61
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
      Caption = "Development:"
      Index = 13
      Left = 120
      Top = 240
      Width = 4485
      Height = 255
      TabIndex = 60
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
      TabIndex = 59
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
      Caption = "Sources:"
      Index = 19
      Left = 90
      Top = 825
      Width = 4485
      Height = 255
      TabIndex = 58
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
      Caption = "Help:"
      Index = 11
      Left = 0
      Top = 1560
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
    Begin VB.Label Label1
      Caption = "Spanish translation (Ivan66)"
      Index = 20
      Left = 120
      Top = 1800
      Width = 4485
      Height = 255
      TabIndex = 56
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
      TabIndex = 55
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
      Caption = "German translation (Dark_Messiah)"
      Index = 22
      Left = 120
      Top = 2280
      Width = 4485
      Height = 255
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
      Caption = "Special thanks:"
      Index = 23
      Left = 0
      Top = 2880
      Width = 4485
      Height = 255
      TabIndex = 53
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
      Caption = ":: Flash:: (for buying Nillus a Traxmachine on Habbo Netherlands)"
      Index = 24
      Left = 120
      Top = 3120
      Width = 4485
      Height = 375
      TabIndex = 52
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
      Caption = "- Mark (help with Nillus' noobish questions)"
      Index = 26
      Left = 120
      Top = 4440
      Width = 4485
      Height = 375
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
      Caption = "- DDafydd / Su-la-ke (great help, debugging, idea's, functions, catalogue, :D)"
      Index = 35
      Left = 120
      Top = 4800
      Width = 4485
      Height = 495
      TabIndex = 49
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
      TabIndex = 48
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
      Caption = "werpo (for buying 22kak� a Traxmachine on Habbo.fr)"
      Index = 44
      Left = 120
      Top = 3600
      Width = 4485
      Height = 375
      TabIndex = 46
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
  Begin VB.Frame ifrmUpcomingFeatures
    Caption = "Upcoming features"
    BackColor = &HC8A465&
    Left = 4680
    Top = 1200
    Width = 4455
    Height = 4215
    TabIndex = 40
    Begin VB.Label Label1
      Caption = "Upcoming features"
      Index = 27
      Left = 120
      Top = 240
      Width = 4485
      Height = 255
      TabIndex = 44
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
      Caption = "frmWelcome.frx":0000
      Index = 5
      Left = 120
      Top = 480
      Width = 4365
      Height = 1815
      TabIndex = 43
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
      TabIndex = 42
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
      Caption = "frmWelcome.frx":0196
      Index = 7
      Left = 240
      Top = 2520
      Width = 4365
      Height = 1575
      TabIndex = 41
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
  Begin VB.CommandButton closefrmAutoClose
    Caption = "X"
    BackColor = &H80000013&
    Left = 5880
    Top = 7440
    Width = 240
    Height = 210
    TabIndex = 39
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
  Begin VB.Frame frameHeader
    BackColor = &HC8A465&
    Left = 4800
    Top = 120
    Width = 4215
    Height = 975
    TabIndex = 34
    Begin VB.CommandButton cmdNewShow
      Caption = "What's new?"
      BackColor = &H80000013&
      Left = 120
      Top = 240
      Width = 1695
      Height = 255
      TabIndex = 38
      Style = 1
    End
    Begin VB.CommandButton cmdCreditsShow
      Caption = "Credits"
      BackColor = &H80000013&
      Left = 2400
      Top = 600
      Width = 1695
      Height = 255
      TabIndex = 37
      Style = 1
    End
    Begin VB.CommandButton cmdUpcomingShow
      Caption = "Upcoming features"
      BackColor = &H80000013&
      Left = 120
      Top = 600
      Width = 1695
      Height = 255
      TabIndex = 36
      Style = 1
    End
    Begin VB.CommandButton cmdFAQShow
      Caption = "Small FAQ"
      BackColor = &H80000013&
      Left = 2400
      Top = 240
      Width = 1695
      Height = 255
      TabIndex = 35
      Style = 1
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
      Caption = "frmWelcome.frx":02FF
      Index = 15
      Left = 120
      Top = 480
      Width = 4365
      Height = 1815
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
      Caption = "What's new?"
      Index = 16
      Left = 0
      Top = 240
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
      Caption = "New in DebboProject V3:"
      Index = 8
      Left = 0
      Top = 1680
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
      Caption = "frmWelcome.frx":0408
      Index = 9
      Left = 120
      Top = 1920
      Width = 4005
      Height = 2175
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
  Begin VB.Frame ifrmFAQ
    Caption = "FAQ"
    BackColor = &HC8A465&
    Left = 4560
    Top = 7080
    Width = 4455
    Height = 5775
    TabIndex = 15
    Begin VB.Label Label1
      Caption = "FAQ"
      Index = 28
      Left = 0
      Top = 240
      Width = 4485
      Height = 255
      TabIndex = 28
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
      Caption = "frmWelcome.frx":0624
      Index = 29
      Left = 120
      Top = 480
      Width = 4125
      Height = 1815
      TabIndex = 27
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
      TabIndex = 26
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
      TabIndex = 25
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
      TabIndex = 24
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
      Caption = "frmWelcome.frx":06BA
      Index = 31
      Left = 360
      Top = 2400
      Width = 4245
      Height = 615
      TabIndex = 23
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
      TabIndex = 22
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
      TabIndex = 21
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
      Caption = "MORE INFO, CHECK OUT THE DEBBO THREAD"
      Index = 34
      Left = 120
      Top = 5160
      Width = 4245
      Height = 255
      TabIndex = 20
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
      Caption = "- Translations aren't complete!"
      Index = 38
      Left = 240
      Top = 3840
      Width = 4245
      Height = 495
      TabIndex = 19
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
    End
    Begin VB.Label Label1
      Caption = "- Public Rooms in Navigator are bugged!"
      Index = 40
      Left = 240
      Top = 4320
      Width = 4245
      Height = 495
      TabIndex = 17
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
      Caption = "That's because we haven't done the pve's, it's a very time-consuming and hard job."
      Index = 41
      Left = 240
      Top = 4560
      Width = 4245
      Height = 615
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
  End
  Begin VB.Frame ifrmWelcomeTo
    BackColor = &HC8A465&
    Left = 4560
    Top = 6960
    Width = 4455
    Height = 5775
    TabIndex = 8
    Begin VB.Label Label1
      Caption = "Welcome to DebboProject V3!"
      Index = 1
      Left = 120
      Top = 240
      Width = 4485
      Height = 495
      TabIndex = 14
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
      Caption = "frmWelcome.frx":073E
      Index = 2
      Left = 120
      Top = 480
      Width = 4245
      Height = 1215
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
      Caption = "frmWelcome.frx":0857
      Index = 3
      Left = 120
      Top = 1920
      Width = 4245
      Height = 1575
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
      Caption = "DebboProject Team"
      Index = 4
      Left = 120
      Top = 5400
      Width = 4245
      Height = 255
      TabIndex = 11
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
      Caption = "frmWelcome.frx":0975
      Index = 42
      Left = 120
      Top = 3240
      Width = 4245
      Height = 1575
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
    End
    Begin VB.Label Label1
      Caption = "We wish you a lot of pleasure with DebboProject V3, maybe there'll be a V4, but it's not sure. Success!"
      Index = 43
      Left = 120
      Top = 4440
      Width = 4245
      Height = 1575
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
  End
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmWelcome.frx":0A48
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 4335
    Height = 7440
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.Label Label1
      Caption = "�� More"
      Index = 51
      Left = 3120
      Top = 850
      Width = 765
      Height = 255
      TabIndex = 64
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
    Begin VB.Label header
      Caption = "About the Server"
      Index = 0
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
    Begin VB.Label Label1
      Caption = "frmWelcome.frx":00069C4A
      Index = 45
      Left = 240
      Top = 1080
      Width = 4005
      Height = 2175
      TabIndex = 6
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
      Caption = "               New in Hablog Resource      "
      Index = 46
      Left = -1080
      Top = 840
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
      Caption = "Special Thanks:             "
      Index = 47
      Left = -840
      Top = 3275
      Width = 4485
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
    Begin VB.Label Label1
      Caption = "frmWelcome.frx":00069F38
      Index = 48
      Left = 240
      Top = 3490
      Width = 4005
      Height = 1575
      TabIndex = 3
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
      Caption = "Special Infos:                "
      Index = 49
      Left = -840
      Top = 4920
      Width = 4485
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
    Begin VB.Label Label1
      Caption = "frmWelcome.frx":0006A097
      Index = 50
      Left = 240
      Top = 5160
      Width = 4005
      Height = 1575
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
    Begin VB.Image Image1
      Picture = "frmWelcome.frx":0006A219
      Left = 3600
      Top = 185
      Width = 360
      Height = 330
    End
  End
  Begin VB.Label Label1
    Caption = "DebboProject V3"
    Index = 0
    Left = 120
    Top = 360
    Width = 4485
    Height = 255
    TabIndex = 63
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

Attribute VB_Name = "frmWelcome"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function ReleaseCapture Lib "user32" () As Long
Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long

Private Const WM_NCLBUTTONDOWN = &HA1
Private Const HTCAPTION = 2
Private Const HWND_TOPMOST = -1
Private Const HWND_NOTOPMOST = -2
Private Const SWP_NOMOVE = &H2
Private Const SWP_NOSIZE = &H1

Private Sub cmdNewShow_Click()
    ifrmWelcomeTo.Visible = False
    ifrmCredits.Visible = False
    ifrmNew.Visible = False
    ifrmUpcomingFeatures.Visible = False
    ifrmNew.Visible = True
    ifrmFAQ.Visible = False
End Sub

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then
        ReleaseCapture
        SendMessage Me.hwnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
    Else
        Unload Me
    End If
End Sub

Private Sub Image1_Click()
    Me.Hide
End Sub

Private Sub cmdUpcomingShow_Click()
    ifrmWelcomeTo.Visible = False
    ifrmCredits.Visible = False
    ifrmNew.Visible = False
    ifrmUpcomingFeatures.Visible = True
    ifrmNew.Visible = False
    ifrmFAQ.Visible = False
End Sub

Private Sub cmdCreditsShow_Click()
    ifrmWelcomeTo.Visible = False
    ifrmCredits.Visible = True
    ifrmNew.Visible = False
    ifrmUpcomingFeatures.Visible = False
    ifrmNew.Visible = False
    ifrmFAQ.Visible = False
End Sub

Private Sub Form_Load()
    ' Set window as topmost or not based on frmMain checkbox
    If frmMain.chkAlwaysOnTop.Value = 1 Then
        SetWindowPos Me.hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE Or SWP_NOSIZE
    Else
        SetWindowPos Me.hwnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOMOVE Or SWP_NOSIZE
    End If
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then
        ReleaseCapture
        SendMessage Me.hwnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
    Else
        Unload Me
    End If
End Sub

Private Sub closefrmAutoClose_Click()
    Unload Me
End Sub

Private Sub heade_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then
        ReleaseCapture
        SendMessage Me.hwnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
    Else
        Unload Me
    End If
End Sub

Private Sub cmdFAQShow_Click()
    ifrmWelcomeTo.Visible = False
    ifrmCredits.Visible = False
    ifrmNew.Visible = False
    ifrmUpcomingFeatures.Visible = False
    ifrmNew.Visible = False
    ifrmFAQ.Visible = True
End Sub

Private Sub Label1_Click(Index As Integer)
    frmTabTutorial.Show
End Sub
