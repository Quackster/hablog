VERSION 5.00
Begin VB.Form frmSettings
  Caption = "Form1"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Picture = "frmSettings.frx":0000
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 19200
  ClientHeight = 15360
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.PictureBox Pictab_club
    BackColor = &H80000000&
    ForeColor = &H80000008&
    Left = 2280
    Top = 1440
    Width = 7575
    Height = 5055
    TabIndex = 141
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.TextBox clubText2
      Left = 5520
      Top = 2880
      Width = 1695
      Height = 285
      Text = "clubText2"
      TabIndex = 144
      Alignment = 2 'Center
    End
    Begin VB.TextBox hcpresent
      Index = 10
      Left = 720
      Top = 3480
      Width = 4335
      Height = 285
      TabIndex = 156
      Appearance = 0 'Flat
    End
    Begin VB.TextBox hcpresent
      Index = 9
      Left = 720
      Top = 3240
      Width = 4335
      Height = 285
      TabIndex = 155
      Appearance = 0 'Flat
    End
    Begin VB.TextBox hcpresent
      Index = 8
      Left = 720
      Top = 3000
      Width = 4335
      Height = 285
      TabIndex = 154
      Appearance = 0 'Flat
    End
    Begin VB.TextBox hcpresent
      Index = 7
      Left = 720
      Top = 2760
      Width = 4335
      Height = 285
      TabIndex = 153
      Appearance = 0 'Flat
    End
    Begin VB.TextBox hcpresent
      Index = 6
      Left = 720
      Top = 2520
      Width = 4335
      Height = 285
      TabIndex = 152
      Appearance = 0 'Flat
    End
    Begin VB.TextBox hcpresent
      Index = 5
      Left = 720
      Top = 2280
      Width = 4335
      Height = 285
      TabIndex = 151
      Appearance = 0 'Flat
    End
    Begin VB.TextBox hcpresent
      Index = 4
      Left = 720
      Top = 2040
      Width = 4335
      Height = 285
      TabIndex = 150
      Appearance = 0 'Flat
    End
    Begin VB.TextBox hcpresent
      Index = 3
      Left = 720
      Top = 1800
      Width = 4335
      Height = 285
      TabIndex = 149
      Appearance = 0 'Flat
    End
    Begin VB.TextBox hcpresent
      Index = 2
      Left = 720
      Top = 1560
      Width = 4335
      Height = 285
      TabIndex = 148
      Appearance = 0 'Flat
    End
    Begin VB.TextBox hcpresent
      Index = 1
      Left = 720
      Top = 1320
      Width = 4335
      Height = 285
      TabIndex = 147
      Appearance = 0 'Flat
    End
    Begin VB.TextBox hcpresent
      Index = 0
      Left = 720
      Top = 1080
      Width = 4335
      Height = 285
      TabIndex = 146
      Appearance = 0 'Flat
    End
    Begin VB.TextBox clubText1
      Left = 5520
      Top = 1800
      Width = 1695
      Height = 285
      Text = "clubText1"
      TabIndex = 145
      Alignment = 2 'Center
    End
    Begin VB.CommandButton clubCommand1
      Caption = "clubCommand1"
      Left = 1920
      Top = 4080
      Width = 1815
      Height = 615
      TabIndex = 143
      Picture = "frmSettings.frx":1AF8
      Style = 1
    End
    Begin VB.CommandButton clubCommand2
      Caption = "clubCommand2"
      Left = 3840
      Top = 4080
      Width = 1815
      Height = 615
      TabIndex = 142
      Picture = "frmSettings.frx":2082
      Style = 1
    End
    Begin VB.Label clubLabel3
      Caption = "clubLabel3"
      Left = 5160
      Top = 2640
      Width = 2415
      Height = 255
      TabIndex = 157
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
    End
    Begin VB.Label m
      Caption = "11"
      Index = 10
      Left = 240
      Top = 3495
      Width = 495
      Height = 255
      TabIndex = 170
      BackStyle = 0 'Transparent
    End
    Begin VB.Label m
      Caption = "10"
      Index = 9
      Left = 240
      Top = 3255
      Width = 495
      Height = 255
      TabIndex = 169
      BackStyle = 0 'Transparent
    End
    Begin VB.Label m
      Caption = "9"
      Index = 8
      Left = 240
      Top = 3015
      Width = 495
      Height = 255
      TabIndex = 168
      BackStyle = 0 'Transparent
    End
    Begin VB.Label m
      Caption = "8"
      Index = 7
      Left = 240
      Top = 2775
      Width = 495
      Height = 255
      TabIndex = 167
      BackStyle = 0 'Transparent
    End
    Begin VB.Label m
      Caption = "7"
      Index = 6
      Left = 240
      Top = 2535
      Width = 495
      Height = 255
      TabIndex = 166
      BackStyle = 0 'Transparent
    End
    Begin VB.Label m
      Caption = "6"
      Index = 5
      Left = 240
      Top = 2295
      Width = 495
      Height = 255
      TabIndex = 165
      BackStyle = 0 'Transparent
    End
    Begin VB.Label m
      Caption = "5"
      Index = 4
      Left = 240
      Top = 2055
      Width = 495
      Height = 255
      TabIndex = 164
      BackStyle = 0 'Transparent
    End
    Begin VB.Label m
      Caption = "4"
      Index = 3
      Left = 240
      Top = 1815
      Width = 495
      Height = 255
      TabIndex = 163
      BackStyle = 0 'Transparent
    End
    Begin VB.Label m
      Caption = "3"
      Index = 2
      Left = 240
      Top = 1575
      Width = 495
      Height = 255
      TabIndex = 162
      BackStyle = 0 'Transparent
    End
    Begin VB.Label m
      Caption = "2"
      Index = 1
      Left = 240
      Top = 1335
      Width = 495
      Height = 255
      TabIndex = 161
      BackStyle = 0 'Transparent
    End
    Begin VB.Label m
      Caption = "1"
      Index = 0
      Left = 240
      Top = 1095
      Width = 495
      Height = 255
      TabIndex = 160
      BackStyle = 0 'Transparent
    End
    Begin VB.Label clubLabel1
      Caption = "clubLabel1"
      Left = 0
      Top = 240
      Width = 7575
      Height = 615
      TabIndex = 159
      Alignment = 2 'Center
      WordWrap = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin VB.Label clubLabel2
      Caption = "clubLabel2"
      Left = 5160
      Top = 1560
      Width = 2415
      Height = 255
      TabIndex = 158
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
    End
  End
  Begin VB.PictureBox Pictab_ranks
    BackColor = &H80000000&
    ForeColor = &H80000008&
    Left = 15360
    Top = 10080
    Width = 7575
    Height = 5055
    TabIndex = 124
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.TextBox ranksText2
      Left = 2880
      Top = 3600
      Width = 4335
      Height = 285
      Text = "ranksText2"
      TabIndex = 139
    End
    Begin VB.CheckBox ranksCheck5
      Caption = "ranksCheck5"
      Left = 2880
      Top = 3360
      Width = 2055
      Height = 255
      TabIndex = 138
    End
    Begin VB.CheckBox ranksCheck4
      Caption = "ranksCheck4"
      Left = 2880
      Top = 3120
      Width = 2055
      Height = 255
      TabIndex = 137
    End
    Begin VB.CheckBox ranksCheck3
      Caption = "ranksCheck3"
      Left = 2880
      Top = 2880
      Width = 2055
      Height = 255
      TabIndex = 136
    End
    Begin VB.CheckBox ranksCheck2
      Caption = "ranksCheck2"
      Left = 2880
      Top = 2640
      Width = 2055
      Height = 255
      TabIndex = 135
    End
    Begin VB.CheckBox ranksCheck1
      Caption = "ranksCheck1"
      Left = 2880
      Top = 2400
      Width = 2055
      Height = 255
      TabIndex = 134
    End
    Begin VB.ListBox ranksList2
      Left = 5280
      Top = 840
      Width = 2175
      Height = 1185
      TabIndex = 132
      Sorted = -1  'True
      Style = 1
    End
    Begin VB.TextBox ranksText1
      Left = 2880
      Top = 840
      Width = 2175
      Height = 1215
      Text = "frmSettings.frx":260C
      TabIndex = 130
      MultiLine = -1  'True
      ScrollBars = 2
    End
    Begin VB.ListBox ranksList1
      Left = 120
      Top = 840
      Width = 2415
      Height = 2985
      TabIndex = 128
      Sorted = -1  'True
      Style = 1
    End
    Begin VB.ComboBox ranksCombo1
      Left = 2280
      Top = 120
      Width = 3135
      Height = 315
      Text = "ranksCombo1"
      TabIndex = 127
      List = "frmSettings.frx":2619
      ItemData = "frmSettings.frx":2625
    End
    Begin VB.CommandButton ranksCommand1
      Caption = "ranksCommand1"
      Left = 1920
      Top = 4080
      Width = 1815
      Height = 615
      TabIndex = 126
      Picture = "frmSettings.frx":262F
      Style = 1
    End
    Begin VB.CommandButton ranksCommand2
      Caption = "ranksCommand2"
      Left = 3840
      Top = 4080
      Width = 1815
      Height = 615
      TabIndex = 125
      Picture = "frmSettings.frx":2BB9
      Style = 1
    End
    Begin VB.Label ranksLabel4
      Caption = "ranksLabel4"
      Left = 2880
      Top = 2160
      Width = 4575
      Height = 255
      TabIndex = 140
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
    End
    Begin VB.Label ranksLabel3
      Caption = "ranksLabel3"
      Left = 5280
      Top = 600
      Width = 870
      Height = 195
      TabIndex = 133
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin VB.Label ranksLabel2
      Caption = "ranksLabel2"
      Left = 2880
      Top = 600
      Width = 870
      Height = 195
      TabIndex = 131
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin VB.Label ranksLabel1
      Caption = "ranksLabel1"
      Left = 120
      Top = 600
      Width = 870
      Height = 195
      TabIndex = 129
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
  End
  Begin VB.PictureBox Pictab_public
    BackColor = &H80000000&
    ForeColor = &H80000008&
    Left = 17880
    Top = 4920
    Width = 7575
    Height = 5055
    TabIndex = 121
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.CommandButton publicroomCommand2
      Caption = "publicroomCommand2"
      Left = 3840
      Top = 4080
      Width = 1815
      Height = 615
      TabIndex = 123
      Picture = "frmSettings.frx":3143
      Style = 1
    End
    Begin VB.CommandButton publicroomCommand1
      Caption = "publicroomCommand1"
      Left = 1920
      Top = 4080
      Width = 1815
      Height = 615
      TabIndex = 122
      Picture = "frmSettings.frx":36CD
      Style = 1
    End
  End
  Begin VB.PictureBox Pictab_guest
    BackColor = &H80000000&
    ForeColor = &H80000008&
    Left = 17880
    Top = -240
    Width = 7575
    Height = 5055
    TabIndex = 65
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.PictureBox Pictab_guestcategories
      Left = 120
      Top = 480
      Width = 7335
      Height = 4455
      TabIndex = 84
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
      BorderStyle = 0 'None
      Begin VB.ListBox catprop
        Index = 9
        Left = 720
        Top = 2400
        Width = 495
        Height = 255
        TabIndex = 107
      End
      Begin VB.ListBox catprop
        Index = 8
        Left = 720
        Top = 2160
        Width = 495
        Height = 255
        TabIndex = 108
      End
      Begin VB.ListBox catprop
        Index = 7
        Left = 720
        Top = 1920
        Width = 495
        Height = 255
        TabIndex = 109
      End
      Begin VB.ListBox catprop
        Index = 6
        Left = 720
        Top = 1680
        Width = 495
        Height = 255
        TabIndex = 110
      End
      Begin VB.ListBox catprop
        Index = 5
        Left = 720
        Top = 1440
        Width = 495
        Height = 255
        TabIndex = 111
      End
      Begin VB.ListBox catprop
        Index = 4
        Left = 720
        Top = 1200
        Width = 495
        Height = 255
        TabIndex = 112
      End
      Begin VB.ListBox catprop
        Index = 3
        Left = 720
        Top = 960
        Width = 495
        Height = 255
        TabIndex = 113
      End
      Begin VB.ListBox catprop
        Index = 2
        Left = 720
        Top = 720
        Width = 495
        Height = 255
        TabIndex = 114
      End
      Begin VB.ListBox catprop
        Index = 1
        Left = 720
        Top = 480
        Width = 495
        Height = 255
        TabIndex = 115
      End
      Begin VB.TextBox catname
        Index = 9
        Left = 1440
        Top = 2400
        Width = 4815
        Height = 285
        Text = "ERROR"
        TabIndex = 97
      End
      Begin VB.TextBox catname
        Index = 8
        Left = 1440
        Top = 2160
        Width = 4815
        Height = 285
        Text = "ERROR"
        TabIndex = 98
      End
      Begin VB.TextBox catname
        Index = 7
        Left = 1440
        Top = 1920
        Width = 4815
        Height = 285
        Text = "ERROR"
        TabIndex = 99
      End
      Begin VB.TextBox catname
        Index = 6
        Left = 1440
        Top = 1680
        Width = 4815
        Height = 285
        Text = "ERROR"
        TabIndex = 100
      End
      Begin VB.TextBox catname
        Index = 5
        Left = 1440
        Top = 1440
        Width = 4815
        Height = 285
        Text = "ERROR"
        TabIndex = 101
      End
      Begin VB.TextBox catname
        Index = 4
        Left = 1440
        Top = 1200
        Width = 4815
        Height = 285
        Text = "ERROR"
        TabIndex = 102
      End
      Begin VB.TextBox catname
        Index = 3
        Left = 1440
        Top = 960
        Width = 4815
        Height = 285
        Text = "ERROR"
        TabIndex = 103
      End
      Begin VB.TextBox catname
        Index = 2
        Left = 1440
        Top = 720
        Width = 4815
        Height = 285
        Text = "ERROR"
        TabIndex = 104
      End
      Begin VB.TextBox catname
        Index = 1
        Left = 1440
        Top = 480
        Width = 4815
        Height = 285
        Text = "ERROR"
        TabIndex = 105
      End
      Begin VB.ListBox catprop
        Index = 0
        Left = 720
        Top = 240
        Width = 495
        Height = 255
        TabIndex = 116
      End
      Begin VB.TextBox catname
        Index = 0
        Left = 1440
        Top = 240
        Width = 4815
        Height = 285
        Text = "ERROR"
        TabIndex = 106
      End
      Begin VB.CheckBox allowtraden
        Caption = "Check5"
        Index = 0
        Left = 6480
        Top = 240
        Width = 255
        Height = 255
        TabIndex = 96
      End
      Begin VB.CheckBox allowtraden
        Caption = "Check5"
        Index = 1
        Left = 6480
        Top = 480
        Width = 255
        Height = 255
        TabIndex = 95
      End
      Begin VB.CheckBox allowtraden
        Caption = "Check5"
        Index = 2
        Left = 6480
        Top = 720
        Width = 255
        Height = 255
        TabIndex = 94
      End
      Begin VB.CheckBox allowtraden
        Caption = "Check5"
        Index = 3
        Left = 6480
        Top = 960
        Width = 255
        Height = 255
        TabIndex = 93
      End
      Begin VB.CheckBox allowtraden
        Caption = "Check5"
        Index = 4
        Left = 6480
        Top = 1200
        Width = 255
        Height = 255
        TabIndex = 92
      End
      Begin VB.CheckBox allowtraden
        Caption = "Check5"
        Index = 5
        Left = 6480
        Top = 1440
        Width = 255
        Height = 255
        TabIndex = 91
      End
      Begin VB.CheckBox allowtraden
        Caption = "Check5"
        Index = 6
        Left = 6480
        Top = 1680
        Width = 255
        Height = 255
        TabIndex = 90
      End
      Begin VB.CheckBox allowtraden
        Caption = "Check5"
        Index = 7
        Left = 6480
        Top = 1920
        Width = 255
        Height = 255
        TabIndex = 89
      End
      Begin VB.CheckBox allowtraden
        Caption = "Check5"
        Index = 8
        Left = 6480
        Top = 2160
        Width = 255
        Height = 255
        TabIndex = 88
      End
      Begin VB.CheckBox allowtraden
        Caption = "Check5"
        Index = 9
        Left = 6480
        Top = 2400
        Width = 255
        Height = 255
        TabIndex = 87
      End
      Begin VB.CommandButton guestcategoriesCommand1
        Caption = "guestcategoriesCommand1"
        Left = 1800
        Top = 3600
        Width = 1815
        Height = 615
        TabIndex = 86
        Picture = "frmSettings.frx":3C57
        Style = 1
      End
      Begin VB.CommandButton guestcategoriesCommand2
        Caption = "guestcategoriesCommand2"
        Left = 3720
        Top = 3600
        Width = 1815
        Height = 615
        TabIndex = 85
        Picture = "frmSettings.frx":41E1
        Style = 1
      End
      Begin VB.Label guestcategoriesLabel1
        Caption = "guestcategoriesLabel1"
        Left = 720
        Top = 0
        Width = 495
        Height = 255
        TabIndex = 120
        BackStyle = 0 'Transparent
      End
      Begin VB.Label guestcategoriesLabel2
        Caption = "guestcategoriesLabel2"
        Left = 1440
        Top = 0
        Width = 1605
        Height = 195
        TabIndex = 119
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
      End
      Begin VB.Label guestcategoriesLabel3
        Caption = "guestcategoriesLabel3"
        Left = 6240
        Top = 0
        Width = 615
        Height = 255
        TabIndex = 118
        Alignment = 2 'Center
        BackStyle = 0 'Transparent
      End
      Begin VB.Label guestcategoriesLabel4
        Caption = "guestcategoriesLabel4"
        Left = 720
        Top = 2730
        Width = 6135
        Height = 645
        TabIndex = 117
        WordWrap = -1  'True
        BackStyle = 0 'Transparent
      End
    End
    Begin VB.PictureBox Pictab_guestroom
      Left = 120
      Top = 480
      Width = 7335
      Height = 4455
      TabIndex = 66
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
      BorderStyle = 0 'None
      Begin VB.CommandButton guestroomCommand2
        Caption = "guestroomCommand2"
        Left = 3720
        Top = 3600
        Width = 1815
        Height = 615
        TabIndex = 74
        Picture = "frmSettings.frx":476B
        Style = 1
      End
      Begin VB.CommandButton guestroomCommand1
        Caption = "guestroomCommand1"
        Left = 1800
        Top = 3600
        Width = 1815
        Height = 615
        TabIndex = 73
        Picture = "frmSettings.frx":4CF5
        Style = 1
      End
      Begin VB.ListBox guestroomList1
        Left = 480
        Top = 240
        Width = 6375
        Height = 1230
        TabIndex = 72
        Sorted = -1  'True
      End
      Begin VB.TextBox guestroomText4
        Left = 3120
        Top = 2760
        Width = 3255
        Height = 285
        Enabled = 0   'False
        Text = "guestroomText4"
        TabIndex = 71
      End
      Begin VB.TextBox guestroomText3
        Left = 3120
        Top = 2400
        Width = 3255
        Height = 285
        Enabled = 0   'False
        Text = "guestroomText3"
        TabIndex = 70
      End
      Begin VB.TextBox guestroomText2
        Left = 3120
        Top = 2040
        Width = 3255
        Height = 285
        Enabled = 0   'False
        Text = "guestroomText2"
        TabIndex = 69
      End
      Begin VB.TextBox guestroomText1
        Left = 3120
        Top = 1680
        Width = 3255
        Height = 285
        Enabled = 0   'False
        Text = "guestroomText1"
        TabIndex = 68
      End
      Begin VB.TextBox guestroomText5
        Left = 3120
        Top = 3120
        Width = 3255
        Height = 285
        Enabled = 0   'False
        Text = "guestroomText5"
        TabIndex = 67
      End
      Begin VB.Label guestroomLabel6
        Caption = "guestroomLabel6"
        Left = 480
        Top = 0
        Width = 1215
        Height = 195
        TabIndex = 83
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
      End
      Begin VB.Label guestroomLabel1
        Caption = "guestroomLabel1"
        Left = 1440
        Top = 1680
        Width = 1575
        Height = 255
        TabIndex = 79
        Alignment = 1 'Right Justify
        BackStyle = 0 'Transparent
      End
      Begin VB.Label guestroomLabel2
        Caption = "guestroomLabel2"
        Left = 1440
        Top = 2040
        Width = 1575
        Height = 255
        TabIndex = 78
        Alignment = 1 'Right Justify
        BackStyle = 0 'Transparent
      End
      Begin VB.Label guestroomLabel3
        Caption = "guestroomLabel3"
        Left = 1440
        Top = 2400
        Width = 1575
        Height = 255
        TabIndex = 77
        Alignment = 1 'Right Justify
        BackStyle = 0 'Transparent
      End
      Begin VB.Label guestroomLabel4
        Caption = "guestroomLabel4"
        Left = 1440
        Top = 2760
        Width = 1575
        Height = 255
        TabIndex = 76
        Alignment = 1 'Right Justify
        BackStyle = 0 'Transparent
      End
      Begin VB.Label guestroomLabel5
        Caption = "guestroomLabel5"
        Left = 1440
        Top = 3120
        Width = 1575
        Height = 255
        TabIndex = 75
        Alignment = 1 'Right Justify
        BackStyle = 0 'Transparent
      End
    End
    Begin VB.Line Line3
      X1 = 120
      Y1 = 360
      X2 = 7440
      Y2 = 360
    End
    Begin VB.Label guestLabel2
      Caption = "guestLabel2"
      Left = 3960
      Top = 0
      Width = 1500
      Height = 300
      TabIndex = 81
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label guestLabel1
      Caption = "guestLabel1"
      Left = 2115
      Top = 0
      Width = 1500
      Height = 300
      TabIndex = 80
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.PictureBox Pictab_habbos
    BackColor = &H80000000&
    ForeColor = &H80000008&
    Left = 10200
    Top = 5040
    Width = 7575
    Height = 5055
    TabIndex = 45
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.TextBox habbosText7
      Left = 4200
      Top = 3000
      Width = 3255
      Height = 285
      Enabled = 0   'False
      Text = "habbosText7"
      TabIndex = 61
    End
    Begin VB.TextBox habbosText6
      Left = 4200
      Top = 2640
      Width = 3255
      Height = 285
      Enabled = 0   'False
      Text = "habbosText6"
      TabIndex = 60
    End
    Begin VB.TextBox habbosText5
      Left = 4200
      Top = 2280
      Width = 3255
      Height = 285
      Enabled = 0   'False
      Text = "habbosText5"
      TabIndex = 59
    End
    Begin VB.TextBox habbosText1
      Left = 4200
      Top = 840
      Width = 3255
      Height = 285
      Enabled = 0   'False
      Text = "habbosText1"
      TabIndex = 53
    End
    Begin VB.TextBox habbosText2
      Left = 4200
      Top = 1200
      Width = 3255
      Height = 285
      Enabled = 0   'False
      Text = "habbosText2"
      TabIndex = 52
    End
    Begin VB.TextBox habbosText3
      Left = 4200
      Top = 1560
      Width = 3255
      Height = 285
      Enabled = 0   'False
      Text = "habbosText3"
      TabIndex = 51
    End
    Begin VB.TextBox habbosText4
      Left = 4200
      Top = 1920
      Width = 3255
      Height = 285
      Enabled = 0   'False
      Text = "habbosText4"
      TabIndex = 50
    End
    Begin VB.ComboBox habbosCombo1
      Left = 4200
      Top = 3360
      Width = 3255
      Height = 315
      Enabled = 0   'False
      Text = "habbosCombo1"
      TabIndex = 49
    End
    Begin VB.ListBox habbosList1
      Left = 360
      Top = 480
      Width = 2175
      Height = 3375
      TabIndex = 48
      Sorted = -1  'True
    End
    Begin VB.CommandButton habbosCommand1
      Caption = "habbosCommand1"
      Left = 1920
      Top = 4080
      Width = 1815
      Height = 615
      TabIndex = 47
      Picture = "frmSettings.frx":527F
      Style = 1
    End
    Begin VB.CommandButton habbosCommand2
      Caption = "habbosCommand2"
      Left = 3840
      Top = 4080
      Width = 1815
      Height = 615
      TabIndex = 46
      Picture = "frmSettings.frx":5809
      Style = 1
    End
    Begin VB.Label habbosLabel9
      Caption = "habbosLabel9"
      Left = 360
      Top = 240
      Width = 1005
      Height = 195
      TabIndex = 82
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin VB.Image habbosImage2
      Picture = "frmSettings.frx":5D93
      Left = 4200
      Top = 360
      Width = 750
      Height = 240
      Visible = 0   'False
    End
    Begin VB.Image habbosImage1
      Picture = "frmSettings.frx":5F82
      Left = 4200
      Top = 360
      Width = 750
      Height = 240
    End
    Begin VB.Label habbosLabel8
      Caption = "habbosLabel8"
      Left = 2520
      Top = 3360
      Width = 1575
      Height = 255
      TabIndex = 64
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label habbosLabel7
      Caption = "habbosLabel7"
      Left = 2520
      Top = 3000
      Width = 1575
      Height = 255
      TabIndex = 63
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label habbosLabel6
      Caption = "habbosLabel6"
      Left = 2520
      Top = 2640
      Width = 1575
      Height = 255
      TabIndex = 62
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label habbosLabel5
      Caption = "habbosLabel5"
      Left = 2520
      Top = 2280
      Width = 1575
      Height = 255
      TabIndex = 58
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label habbosLabel4
      Caption = "habbosLabel4"
      Left = 2520
      Top = 1920
      Width = 1575
      Height = 255
      TabIndex = 57
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label habbosLabel3
      Caption = "habbosLabel3"
      Left = 2520
      Top = 1560
      Width = 1575
      Height = 255
      TabIndex = 56
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label habbosLabel2
      Caption = "habbosLabel2"
      Left = 2520
      Top = 1200
      Width = 1575
      Height = 255
      TabIndex = 55
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label habbosLabel1
      Caption = "habbosLabel1"
      Left = 2520
      Top = 840
      Width = 1575
      Height = 255
      TabIndex = 54
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
  End
  Begin VB.PictureBox Pictab_filter
    BackColor = &H80000000&
    ForeColor = &H80000008&
    Left = 0
    Top = 6840
    Width = 7575
    Height = 5055
    TabIndex = 38
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.CommandButton filterCommand1
      Caption = "filterCommand1"
      Left = 4920
      Top = 4200
      Width = 1815
      Height = 615
      TabIndex = 44
      Picture = "frmSettings.frx":6091
      Style = 1
    End
    Begin VB.TextBox filterText1
      Left = 4560
      Top = 3840
      Width = 2535
      Height = 285
      Text = "filterText1"
      TabIndex = 43
      Alignment = 2 'Center
    End
    Begin VB.ListBox filterList1
      Left = 600
      Top = 120
      Width = 3375
      Height = 4740
      TabIndex = 39
      Sorted = -1  'True
    End
    Begin VB.Label filterLabel3
      Caption = "filterLabel3"
      Left = 5430
      Top = 3480
      Width = 795
      Height = 195
      TabIndex = 42
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin VB.Image filterImage2
      Picture = "frmSettings.frx":661B
      Left = 5400
      Top = 1680
      Width = 930
      Height = 885
    End
    Begin VB.Image filterImage4
      Picture = "frmSettings.frx":69A5
      Left = 4560
      Top = 1560
      Width = 1080
      Height = 900
    End
    Begin VB.Image filterImage1
      Picture = "frmSettings.frx":6BA2
      Left = 5400
      Top = 240
      Width = 930
      Height = 885
    End
    Begin VB.Image filterImage3
      Picture = "frmSettings.frx":6F54
      Left = 4560
      Top = 120
      Width = 1080
      Height = 900
    End
    Begin VB.Label filterLabel2
      Caption = "filterLabel2"
      Left = 5460
      Top = 2640
      Width = 795
      Height = 195
      TabIndex = 41
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin VB.Label filterLabel1
      Caption = "filterLabel1"
      Left = 5475
      Top = 1200
      Width = 765
      Height = 195
      TabIndex = 40
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
  End
  Begin VB.PictureBox Pictab_limits
    BackColor = &H80000000&
    ForeColor = &H80000008&
    Left = 7680
    Top = 6840
    Width = 7575
    Height = 5055
    TabIndex = 25
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.CommandButton limitsCommand1
      Caption = "limitsCommand1"
      Left = 1920
      Top = 4080
      Width = 1815
      Height = 615
      TabIndex = 37
      Picture = "frmSettings.frx":7151
      Style = 1
    End
    Begin VB.CommandButton limitsCommand2
      Caption = "limitsCommand2"
      Left = 3840
      Top = 4080
      Width = 1815
      Height = 615
      TabIndex = 36
      Picture = "frmSettings.frx":76DB
      Style = 1
    End
    Begin VB.TextBox limitsText5
      Left = 3000
      Top = 2400
      Width = 2535
      Height = 285
      Text = "limitsText5"
      TabIndex = 35
    End
    Begin VB.TextBox limitsText4
      Left = 3000
      Top = 1920
      Width = 2535
      Height = 285
      Text = "limitsText4"
      TabIndex = 34
    End
    Begin VB.TextBox limitsText3
      Left = 3000
      Top = 1440
      Width = 2535
      Height = 285
      Text = "limitsText3"
      TabIndex = 33
    End
    Begin VB.TextBox limitsText2
      Left = 3000
      Top = 960
      Width = 2535
      Height = 285
      Text = "limitsText2"
      TabIndex = 32
    End
    Begin VB.TextBox limitsText1
      Left = 3000
      Top = 480
      Width = 2535
      Height = 285
      Text = "limitsText1"
      TabIndex = 31
    End
    Begin VB.Label limitsLabel1
      Caption = "limitsLabel1"
      Left = 960
      Top = 480
      Width = 1935
      Height = 255
      TabIndex = 30
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label limitsLabel2
      Caption = "limitsLabel2"
      Left = 960
      Top = 960
      Width = 1935
      Height = 255
      TabIndex = 29
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label limitsLabel3
      Caption = "limitsLabel3"
      Left = 960
      Top = 1440
      Width = 1935
      Height = 255
      TabIndex = 28
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label limitsLabel4
      Caption = "limitsLabel4"
      Left = 960
      Top = 1920
      Width = 1935
      Height = 255
      TabIndex = 27
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label limitsLabel5
      Caption = "limitsLabel5"
      Left = 960
      Top = 2400
      Width = 1935
      Height = 255
      TabIndex = 26
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Image2
      Picture = "frmSettings.frx":7C65
      Left = 4560
      Top = 1560
      Width = 2850
      Height = 3045
    End
    Begin VB.Image Image7
      Picture = "frmSettings.frx":93B9
      Left = 360
      Top = 2400
      Width = 1710
      Height = 1845
    End
  End
  Begin VB.PictureBox Pictab_main
    BackColor = &H80000000&
    ForeColor = &H80000008&
    Left = 10200
    Top = -240
    Width = 7575
    Height = 5055
    TabIndex = 11
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.CommandButton mainCommand2
      Caption = "mainCommand2"
      Left = 3840
      Top = 4080
      Width = 1815
      Height = 615
      TabIndex = 24
      Picture = "frmSettings.frx":9D63
      Style = 1
    End
    Begin VB.CommandButton mainCommand1
      Caption = "mainCommand1"
      Left = 1920
      Top = 4080
      Width = 1815
      Height = 615
      TabIndex = 23
      Picture = "frmSettings.frx":A2ED
      Style = 1
    End
    Begin VB.TextBox mainText3
      Left = 720
      Top = 3600
      Width = 6255
      Height = 285
      Text = "mainText3"
      TabIndex = 22
    End
    Begin VB.CheckBox mainCheck5
      Caption = "mainCheck5"
      Left = 720
      Top = 1800
      Width = 3735
      Height = 255
      TabIndex = 21
    End
    Begin VB.CheckBox mainCheck4
      Caption = "mainCheck4"
      Left = 720
      Top = 3240
      Width = 3735
      Height = 255
      TabIndex = 20
    End
    Begin VB.CheckBox mainCheck3
      Caption = "mainCheck3"
      Left = 720
      Top = 2880
      Width = 3735
      Height = 255
      Enabled = 0   'False
      TabIndex = 19
    End
    Begin VB.CheckBox mainCheck2
      Caption = "mainCheck2"
      Left = 720
      Top = 2520
      Width = 3735
      Height = 255
      TabIndex = 18
    End
    Begin VB.CheckBox mainCheck1
      Caption = "mainCheck1"
      Left = 720
      Top = 2160
      Width = 3735
      Height = 255
      TabIndex = 17
    End
    Begin VB.TextBox mainText2
      Left = 2640
      Top = 1200
      Width = 1935
      Height = 285
      Enabled = 0   'False
      Text = "mainText2"
      TabIndex = 16
    End
    Begin VB.TextBox mainText1
      Left = 2640
      Top = 840
      Width = 1935
      Height = 285
      Text = "mainText1"
      TabIndex = 15
    End
    Begin VB.Label mainLabel1
      Caption = "mainLabel1"
      Left = 0
      Top = 120
      Width = 7575
      Height = 615
      TabIndex = 14
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
    End
    Begin VB.Label mainLabel3
      Caption = "mainLabel3"
      Left = 480
      Top = 1200
      Width = 1935
      Height = 255
      Enabled = 0   'False
      TabIndex = 13
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label mainLabel2
      Caption = "mainLabel2"
      Left = 480
      Top = 840
      Width = 1935
      Height = 255
      TabIndex = 12
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Image mainimage1
      Picture = "frmSettings.frx":A877
      Left = 4560
      Top = 1080
      Width = 2715
      Height = 2295
    End
  End
  Begin VB.Image Image4
    Picture = "frmSettings.frx":BD83
    Left = 1080
    Top = -240
    Width = 2190
    Height = 1770
  End
  Begin VB.Label title
    Caption = "tab_main"
    ForeColor = &HE0E0E0&
    Left = 5190
    Top = 1080
    Width = 1635
    Height = 435
    TabIndex = 10
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label10
    Caption = "X"
    Left = 9720
    Top = 120
    Width = 150
    Height = 240
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Image Image1
    Picture = "frmSettings.frx":C2CC
    Left = 3240
    Top = 120
    Width = 5115
    Height = 585
  End
  Begin VB.Image Image3
    Picture = "frmSettings.frx":C94F
    Left = 480
    Top = 5400
    Width = 1095
    Height = 1065
  End
  Begin VB.Image Image5
    Picture = "frmSettings.frx":CDFB
    Left = 7260
    Top = -480
    Width = 2160
    Height = 1800
  End
  Begin VB.Label Label9
    Caption = "Label9"
    Left = 660
    Top = 4800
    Width = 735
    Height = 240
    TabIndex = 8
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label8
    Caption = "Label8"
    Left = 660
    Top = 4440
    Width = 735
    Height = 240
    TabIndex = 7
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label7
    Caption = "Label7"
    Left = 660
    Top = 4080
    Width = 735
    Height = 240
    TabIndex = 6
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label6
    Caption = "Label6"
    Left = 660
    Top = 3720
    Width = 735
    Height = 240
    TabIndex = 5
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label5
    Caption = "Label5"
    Left = 660
    Top = 3360
    Width = 735
    Height = 240
    TabIndex = 4
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label4
    Caption = "Label4"
    Left = 660
    Top = 3000
    Width = 735
    Height = 240
    TabIndex = 3
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label3
    Caption = "Label3"
    Left = 660
    Top = 2640
    Width = 735
    Height = 240
    TabIndex = 2
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Label2"
    Left = 660
    Top = 2280
    Width = 735
    Height = 240
    TabIndex = 1
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Caption = "Label1"
    Left = 660
    Top = 1920
    Width = 735
    Height = 240
    TabIndex = 0
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Line Line1
    X1 = 0
    Y1 = 6720
    X2 = 10080
    Y2 = 6720
  End
  Begin VB.Line Line2
    X1 = 10080
    Y1 = 0
    X2 = 10080
    Y2 = 6720
  End
  Begin VB.Image Image6
    Picture = "frmSettings.frx":D449
    Left = 0
    Top = -120
    Width = 1275
    Height = 2100
  End
End

Attribute VB_Name = "frmSettings"

Option Explicit

' Settings Form - Main settings panel with tabbed interface
' Handles server configuration, filters, limits, habbos, guestrooms, publicrooms, ranks, and club settings

Private Const WM_NCLBUTTONDOWN As Long = &HA1
Private Const HTCAPTION As Long = 2
Private Const IDC_HAND As Long = &H7F89

Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function ReleaseCapture Lib "user32" () As Long
Private Declare Function LoadCursor Lib "user32" Alias "LoadCursorA" (ByVal hInstance As Long, ByVal lpCursorName As Long) As Long
Private Declare Function SetCursor Lib "user32" (ByVal hCursor As Long) As Long

Private Sub Form_Load()
    On Error Resume Next

    ' Initialize settings form
    LoadTabCaptions
    LoadMainTab
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ' Drag form with left click, close with right click
    If Button = 1 Then
        ReleaseCapture
        SendMessage Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
    Else
        Unload Me
    End If
End Sub

' ============================================
' Tab Label Click Handlers - Switch between tabs
' ============================================

Private Sub Label1_Click()
    LoadMainTab
End Sub

Private Sub Label2_Click()
    LoadLimitsTab
End Sub

Private Sub Label3_Click()
    LoadFilterTab
End Sub

Private Sub Label4_Click()
    LoadHabbosTab
End Sub

Private Sub Label5_Click()
    LoadGuestTab
End Sub

Private Sub Label7_Click()
    LoadRanksTab
End Sub

Private Sub Label8_Click()
    LoadClubTab
End Sub

Private Sub Label10_Click()
    ' Close button
    Unload Me
End Sub

' ============================================
' Tab Label Mouse Handlers - Show hand cursor
' ============================================

Private Sub Label1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetHandCursor
End Sub

Private Sub Label2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetHandCursor
End Sub

Private Sub Label3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetHandCursor
End Sub

Private Sub Label4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetHandCursor
End Sub

Private Sub Label5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetHandCursor
End Sub

Private Sub Label6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ' Empty - public rooms tab
End Sub

Private Sub Label7_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetHandCursor
End Sub

Private Sub Label8_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetHandCursor
End Sub

Private Sub Label9_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ' Empty - console tab
End Sub

Private Sub Label10_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetHandCursor
End Sub

Private Sub SetHandCursor()
    Dim lCursor As Long
    lCursor = LoadCursor(0, IDC_HAND)
    If lCursor Then SetCursor lCursor
End Sub

' ============================================
' Image Mouse Handlers - Drag or close form
' ============================================

Private Sub Image1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    DragOrClose Button
End Sub

Private Sub Image3_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    DragOrClose Button
End Sub

Private Sub Image4_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    DragOrClose Button
End Sub

Private Sub Image5_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    DragOrClose Button
End Sub

Private Sub Image6_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    DragOrClose Button
End Sub

Private Sub DragOrClose(Button As Integer)
    If Button = 1 Then
        ReleaseCapture
        SendMessage Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
    Else
        Unload Me
    End If
End Sub

' ============================================
' Main Tab Handlers
' ============================================

Private Sub mainCheck4_Click()
    ' Toggle welcome message text box
    Me.mainText3.Enabled = (Me.mainCheck4.Value = 1)
End Sub

Private Sub mainCommand1_Click()
    ' Save main settings
    On Error Resume Next

    Me.MousePointer = 11
    Me.mainCommand1.Enabled = False
    Me.mainCommand2.Enabled = False

    ' Save port
    WriteINI "server", "port", Me.mainText1.Text, gSettingsFile

    ' Save bobba filter
    WriteINI "config", "bobba_filter", CStr(Me.mainCheck1.Value), gSettingsFile

    ' Save console setting
    WriteINI "config", "console", CStr(Me.mainCheck2.Value), gSettingsFile

    ' Save welcome message
    WriteINI "config", "welcome_message", CStr(Me.mainCheck4.Value) & "," & Me.mainText3.Text, gSettingsFile

    ' Save free HC clothes setting
    WriteINI "config", "freehcclothes", CStr(Me.mainCheck5.Value), gSettingsFile

    Me.mainCommand1.Enabled = True
    Me.mainCommand2.Enabled = True
    Me.MousePointer = 0
End Sub

Private Sub mainCommand2_Click()
    ' Restore main settings
    On Error Resume Next

    Me.MousePointer = 11
    Me.mainCommand1.Enabled = False
    Me.mainCommand2.Enabled = False

    LoadMainTab

    Me.mainCommand1.Enabled = True
    Me.mainCommand2.Enabled = True
    Me.MousePointer = 0
End Sub

' ============================================
' Limits Tab Handlers
' ============================================

Private Sub limitsCommand1_Click()
    ' Save limits settings
    On Error Resume Next

    Me.MousePointer = 11
    Me.limitsCommand1.Enabled = False
    Me.limitsCommand2.Enabled = False

    WriteINI "config", "maxroomsperuser", Me.limitsText1.Text, gSettingsFile
    WriteINI "config", "maxfurniperroom", Me.limitsText2.Text, gSettingsFile
    WriteINI "config", "maxpetsperroom", Me.limitsText3.Text, gSettingsFile
    WriteINI "config", "maxusersperroom", Me.limitsText4.Text, gSettingsFile
    WriteINI "config", "maxtradeperuser", Me.limitsText5.Text, gSettingsFile

    Me.limitsCommand1.Enabled = True
    Me.limitsCommand2.Enabled = True
    Me.MousePointer = 0
End Sub

Private Sub limitsCommand2_Click()
    ' Restore limits settings
    On Error Resume Next

    Me.MousePointer = 11
    Me.limitsCommand1.Enabled = False
    Me.limitsCommand2.Enabled = False

    LoadLimitsTab

    Me.limitsCommand1.Enabled = True
    Me.limitsCommand2.Enabled = True
    Me.MousePointer = 0
End Sub

' ============================================
' Filter Tab Handlers
' ============================================

Private Sub filterText1_Change()
    ' Filter text changed
End Sub

Private Sub filterCommand1_Click()
    ' Add filter word - not saving directly, just interface placeholder
End Sub

Private Sub filterLabel1_Click()
    ' Add new bobba word
    Dim sNewWord As String
    Dim sContent As String
    Dim oTextStream As Object

    sNewWord = InputBox(GetLocaleString("enter_bobba_word"), GetLocaleString("title_bobba_word_win"))

    If sNewWord <> vbNullString Then
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "configuration\bobbafilter.ini", 1, False, 0)
        sContent = oTextStream.ReadAll

        ' Clean up extra line breaks
        sContent = Replace(sContent, vbCrLf & vbCrLf, vbCrLf)
        sContent = Replace(sContent, vbCrLf & vbCrLf, vbCrLf)

        ' Ensure content ends with line break
        If Right(sContent, 2) <> vbCrLf Then
            sContent = sContent & vbCrLf
        End If

        ' Add new word
        sContent = sContent & sNewWord & vbCrLf

        ' Write back
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "configuration\bobbafilter.ini", 2, False, 0)
        oTextStream.Write sContent

        ' Refresh list
        LoadFilterList
    End If
End Sub

Private Sub filterLabel1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetHandCursor
End Sub

Private Sub filterLabel2_Click()
    ' Remove selected bobba word
    Dim sContent As String
    Dim sSelected As String
    Dim oTextStream As Object
    Dim vWords As Variant
    Dim i As Variant

    sSelected = Me.filterList1.Text
    If sSelected = vbNullString Then Exit Sub

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "configuration\bobbafilter.ini", 1, False, 0)
    sContent = oTextStream.ReadAll

    ' Remove selected word
    sContent = Replace(sContent, sSelected & vbCrLf, vbNullString)

    ' Write back
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "configuration\bobbafilter.ini", 2, False, 0)
    oTextStream.Write sContent

    ' Refresh list
    LoadFilterList
End Sub

Private Sub filterLabel2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetHandCursor
End Sub

Private Sub filterImage1_Click()
    ' Add bobba word (same as filterLabel1)
    filterLabel1_Click
End Sub

Private Sub filterImage1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetHandCursor
End Sub

Private Sub filterImage2_Click()
    ' Remove bobba word (same as filterLabel2)
    filterLabel2_Click
End Sub

Private Sub filterImage2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetHandCursor
End Sub

Private Sub LoadFilterList()
    Dim oTextStream As Object
    Dim sContent As String
    Dim vWords As Variant
    Dim i As Variant

    On Error Resume Next

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "configuration\bobbafilter.ini", 1, False, 0)
    sContent = oTextStream.ReadAll

    Me.filterList1.Clear
    vWords = Split(sContent, vbCrLf)

    For i = 0 To UBound(vWords)
        If vWords(i) <> vbNullString Then
            Me.filterList1.AddItem CStr(vWords(i))
        End If
    Next i
End Sub

' ============================================
' Habbos Tab Handlers
' ============================================

Private Sub habbosCommand1_Click()
    ' Save habbo settings - saves user data to their profile
    On Error Resume Next

    Dim sUsername As String
    Dim sHabboPath As String

    Me.MousePointer = 11
    Me.habbosCommand1.Enabled = False
    Me.habbosCommand2.Enabled = False

    sUsername = Me.habbosList1.Text
    If sUsername <> vbNullString Then
        sHabboPath = gAppPath & "habbos\" & LCase(sUsername) & "\"

        If gFSO.FolderExists(sHabboPath) Then
            WriteINI "info", "name", Me.habbosText1.Text, sHabboPath & "data.ini"
            WriteINI "info", "email", Me.habbosText2.Text, sHabboPath & "data.ini"
            WriteINI "info", "mission", Me.habbosText3.Text, sHabboPath & "data.ini"
            WriteINI "info", "credits", Me.habbosText4.Text, sHabboPath & "data.ini"
            WriteINI "info", "tickets", Me.habbosText5.Text, sHabboPath & "data.ini"
            WriteINI "info", "film", Me.habbosText6.Text, sHabboPath & "data.ini"
            WriteINI "info", "soundmachine", Me.habbosText7.Text, sHabboPath & "data.ini"

            If Me.habbosCombo1.ListIndex >= 0 Then
                WriteINI "info", "rank", Me.habbosCombo1.Text, sHabboPath & "data.ini"
            End If
        End If
    End If

    Me.habbosCommand1.Enabled = True
    Me.habbosCommand2.Enabled = True
    Me.MousePointer = 0
End Sub

Private Sub habbosCommand2_Click()
    ' Restore habbo settings
    On Error Resume Next

    Me.MousePointer = 11
    Me.habbosCommand1.Enabled = False
    Me.habbosCommand2.Enabled = False

    LoadHabbosTab

    Me.habbosCommand1.Enabled = True
    Me.habbosCommand2.Enabled = True
    Me.MousePointer = 0
End Sub

Private Sub habbosList1_DblClick()
    ' Load selected habbo details
    Dim sUsername As String
    Dim sHabboPath As String

    On Error Resume Next

    sUsername = Me.habbosList1.Text
    If sUsername = vbNullString Then Exit Sub

    sHabboPath = gAppPath & "habbos\" & LCase(sUsername) & "\"

    If gFSO.FolderExists(sHabboPath) Then
        ' Enable fields
        Me.habbosText1.Enabled = True
        Me.habbosText2.Enabled = True
        Me.habbosText3.Enabled = True
        Me.habbosText4.Enabled = True
        Me.habbosText5.Enabled = True
        Me.habbosText6.Enabled = True
        Me.habbosText7.Enabled = True
        Me.habbosCombo1.Enabled = True

        ' Load data
        Me.habbosText1.Text = GetINI("info", "name", sHabboPath & "data.ini")
        Me.habbosText2.Text = GetINI("info", "email", sHabboPath & "data.ini")
        Me.habbosText3.Text = GetINI("info", "mission", sHabboPath & "data.ini")
        Me.habbosText4.Text = GetINI("info", "credits", sHabboPath & "data.ini")
        Me.habbosText5.Text = GetINI("info", "tickets", sHabboPath & "data.ini")
        Me.habbosText6.Text = GetINI("info", "film", sHabboPath & "data.ini")
        Me.habbosText7.Text = GetINI("info", "soundmachine", sHabboPath & "data.ini")
        Me.habbosCombo1.Text = GetINI("info", "rank", sHabboPath & "data.ini")

        Me.habbosImage1.Visible = False
        Me.habbosImage2.Visible = True
    End If
End Sub

' ============================================
' Guest Tab Handlers
' ============================================

Private Sub guestLabel1_Click()
    ' Switch to guestroom sub-tab
    LoadGuestroomTab
End Sub

Private Sub guestLabel1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetHandCursor
End Sub

Private Sub guestLabel2_Click()
    ' Switch to categories sub-tab
    LoadGuestCategoriesTab
End Sub

Private Sub guestLabel2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetHandCursor
End Sub

' ============================================
' Guestroom Sub-tab Handlers
' ============================================

Private Sub guestroomCommand1_Click()
    ' Save guestroom settings
    On Error Resume Next

    Dim sRoomId As String
    Dim sRoomPath As String

    Me.MousePointer = 11
    Me.guestroomCommand1.Enabled = False
    Me.guestroomCommand2.Enabled = False

    sRoomId = Me.guestroomText1.Text
    sRoomPath = gAppPath & "privaterooms\" & sRoomId & "\"

    If gFSO.FolderExists(sRoomPath) Then
        ' Ensure fields are not empty
        If Me.guestroomText3.Text = vbNullString Then Me.guestroomText3.Text = " "
        If Me.guestroomText4.Text = vbNullString Then Me.guestroomText4.Text = " "
        If Me.guestroomText5.Text = vbNullString Then Me.guestroomText5.Text = " "

        WriteINI "room", "name", Me.guestroomText2.Text, sRoomPath & "data.ini"
        WriteINI "room", "description", Me.guestroomText3.Text, sRoomPath & "data.ini"
        WriteINI "room", "owner", Me.guestroomText4.Text, sRoomPath & "data.ini"
        WriteINI "room", "maxusers", Me.guestroomText5.Text, sRoomPath & "data.ini"
    End If

    Me.guestroomCommand1.Enabled = True
    Me.guestroomCommand2.Enabled = True
    Me.MousePointer = 0
End Sub

Private Sub guestroomCommand2_Click()
    ' Restore guestroom settings
    On Error Resume Next

    Me.MousePointer = 11
    Me.guestroomCommand1.Enabled = False
    Me.guestroomCommand2.Enabled = False

    LoadGuestroomTab

    Me.guestroomCommand1.Enabled = True
    Me.guestroomCommand2.Enabled = True
    Me.MousePointer = 0
End Sub

Private Sub guestroomList1_DblClick()
    ' Load selected room details
    Dim sRoomId As String
    Dim sRoomPath As String

    On Error Resume Next

    sRoomId = Me.guestroomList1.Text
    If sRoomId = vbNullString Then Exit Sub

    sRoomPath = gAppPath & "privaterooms\" & sRoomId & "\"

    If gFSO.FolderExists(sRoomPath) Then
        ' Enable fields
        Me.guestroomText1.Enabled = True
        Me.guestroomText2.Enabled = True
        Me.guestroomText3.Enabled = True
        Me.guestroomText4.Enabled = True
        Me.guestroomText5.Enabled = True

        ' Load data
        Me.guestroomText1.Text = sRoomId
        Me.guestroomText2.Text = GetINI("room", "name", sRoomPath & "data.ini")
        Me.guestroomText3.Text = GetINI("room", "description", sRoomPath & "data.ini")
        Me.guestroomText4.Text = GetINI("room", "owner", sRoomPath & "data.ini")
        Me.guestroomText5.Text = GetINI("room", "maxusers", sRoomPath & "data.ini")
    End If
End Sub

' ============================================
' Guest Categories Sub-tab Handlers
' ============================================

Private Sub guestcategoriesCommand1_Click()
    ' Save guest categories
    On Error Resume Next

    Dim i As Variant
    Dim vCatIds(0 To 9) As Long
    Dim sCatFile As String
    Dim oTextStream As Object

    Me.MousePointer = 11
    Me.guestcategoriesCommand1.Enabled = False
    Me.guestcategoriesCommand2.Enabled = False

    sCatFile = gAppPath & "room_categories\categories.ini"

    ' Get category IDs from catprop listboxes
    For i = 0 To 9
        If Me.catprop(CInt(i)).ListIndex >= 0 Then
            vCatIds(CInt(i)) = CLng(Me.catprop(CInt(i)).Text)
        End If
    Next i

    ' Save category names and allow trade settings
    For i = 0 To 9
        WriteINI "categories", "cat" & CStr(i + 1), CStr(vCatIds(CInt(i))), sCatFile
        WriteINI "categories", "catname" & CStr(i + 1), Me.catname(CInt(i)).Text, sCatFile

        ' Also update locale
        WriteINI "locale", "categorie_" & CStr(i + 1), Me.catname(CInt(i)).Text, _
                 App.Path & "\locale\" & GetINI("server", "lang", gSettingsFile) & "\locale.txt"

        ' Handle allow trade files
        If Me.allowtraden(CInt(i)).Value = 1 Then
            If Not gFSO.FileExists(gAppPath & "room_categories\allowtrade_" & vCatIds(CInt(i)) & ".txt") Then
                gFSO.CreateTextFile gAppPath & "room_categories\allowtrade_" & vCatIds(CInt(i)) & ".txt", True, False
            End If
        Else
            If gFSO.FileExists(gAppPath & "room_categories\allowtrade_" & vCatIds(CInt(i)) & ".txt") Then
                gFSO.DeleteFile gAppPath & "room_categories\allowtrade_" & vCatIds(CInt(i)) & ".txt", False
            End If
        End If
    Next i

    Me.guestcategoriesCommand1.Enabled = True
    Me.guestcategoriesCommand2.Enabled = True
    Me.MousePointer = 0
End Sub

Private Sub guestcategoriesCommand2_Click()
    ' Restore guest categories
    On Error Resume Next

    Me.MousePointer = 11
    Me.guestcategoriesCommand1.Enabled = False
    Me.guestcategoriesCommand2.Enabled = False

    LoadGuestCategoriesTab

    Me.guestcategoriesCommand1.Enabled = True
    Me.guestcategoriesCommand2.Enabled = True
    Me.MousePointer = 0
End Sub

' ============================================
' Ranks Tab Handlers
' ============================================

Private Sub ranksCombo1_Click()
    ' Rank selected - load permissions
    Dim i As Variant
    Dim sRankFile As String
    Dim sSpeechCmd As String
    Dim sModTool As String
    Dim sBadges As String

    On Error Resume Next

    sRankFile = gAppPath & "ranks\" & Me.ranksCombo1.Text & ".ini"

    ' Check speech commands
    For i = 0 To 58
        sSpeechCmd = GetINI("rank", "speech_cmd", sRankFile)
        If InStr(1, Replace(Me.ranksList1.List(CInt(i)), ":", ","), sSpeechCmd) <> 0 Then
            Me.ranksList1.Selected(CInt(i)) = True
        Else
            Me.ranksList1.Selected(CInt(i)) = False
        End If
    Next i

    ' Check mod tools
    sModTool = GetINI("rank", "mod_tool", sRankFile)
    Me.ranksList2.Selected(0) = (InStr(1, sModTool, ",alert") <> 0)
    Me.ranksList2.Selected(1) = (InStr(1, sModTool, ",ban") <> 0)
    Me.ranksList2.Selected(2) = (InStr(1, sModTool, ",kick") <> 0)
    Me.ranksList2.Selected(3) = (InStr(1, sModTool, ",roomalert") <> 0)
    Me.ranksList2.Selected(4) = (InStr(1, sModTool, ",roomkick") <> 0)

    ' Load badges
    sBadges = GetINI("rank", "badges", sRankFile)
    sBadges = Replace(sBadges, ";;", ";")
    sBadges = Replace(sBadges, ";;", ";")
    sBadges = Replace(sBadges, ";;", ";")

    If Left(sBadges, 1) <> ";" Then sBadges = ";" & sBadges
    If Right(sBadges, 1) = ";" Then sBadges = Left(sBadges, Len(sBadges) - 1)

    Me.ranksText1.Text = Replace(Mid(sBadges, 2), ";", vbCrLf)

    ' Load rank options
    Me.ranksCheck1.Value = CInt(GetINI("rank", "admin_catalogue", sRankFile))
    Me.ranksCheck2.Value = CInt(GetINI("rank", "see_room_owner", sRankFile))
    Me.ranksCheck3.Value = CInt(GetINI("rank", "enter_any_room", sRankFile))
    Me.ranksCheck4.Value = CInt(GetINI("rank", "see_ip", sRankFile))
    Me.ranksCheck5.Value = CInt(GetINI("rank", "housekeeping", sRankFile))
    Me.ranksText2.Text = GetINI("rank", "badge_prefix", sRankFile)
End Sub

Private Sub ranksCommand1_Click()
    ' Save rank settings
    On Error Resume Next

    Dim i As Variant
    Dim sRankFile As String
    Dim sSpeechCmd As String
    Dim sModTool As String
    Dim sBadges As String

    Me.MousePointer = 11
    Me.ranksCommand1.Enabled = False
    Me.ranksCommand2.Enabled = False

    sRankFile = gAppPath & "ranks\" & Me.ranksCombo1.Text & ".ini"

    ' Build speech commands list
    sSpeechCmd = vbNullString
    For i = 0 To Me.ranksList1.ListCount - 1
        If Me.ranksList1.Selected(CInt(i)) Then
            sSpeechCmd = sSpeechCmd & "," & Replace(Me.ranksList1.List(CInt(i)), ":", ",")
        End If
    Next i
    WriteINI "rank", "speech_cmd", sSpeechCmd, sRankFile

    ' Build mod tools list
    sModTool = vbNullString
    If Me.ranksList2.Selected(0) Then sModTool = sModTool & ",alert"
    If Me.ranksList2.Selected(1) Then sModTool = sModTool & ",ban"
    If Me.ranksList2.Selected(2) Then sModTool = sModTool & ",kick"
    If Me.ranksList2.Selected(3) Then sModTool = sModTool & ",roomalert"
    If Me.ranksList2.Selected(4) Then sModTool = sModTool & ",roomkick"
    WriteINI "rank", "mod_tool", sModTool, sRankFile

    ' Save badges
    sBadges = ";" & Replace(Me.ranksText1.Text, vbCrLf, ";")
    WriteINI "rank", "badges", sBadges, sRankFile

    ' Save rank options
    WriteINI "rank", "admin_catalogue", CStr(Me.ranksCheck1.Value), sRankFile
    WriteINI "rank", "see_room_owner", CStr(Me.ranksCheck2.Value), sRankFile
    WriteINI "rank", "enter_any_room", CStr(Me.ranksCheck3.Value), sRankFile
    WriteINI "rank", "see_ip", CStr(Me.ranksCheck4.Value), sRankFile
    WriteINI "rank", "housekeeping", CStr(Me.ranksCheck5.Value), sRankFile
    WriteINI "rank", "badge_prefix", Me.ranksText2.Text, sRankFile

    Me.ranksCommand1.Enabled = True
    Me.ranksCommand2.Enabled = True
    Me.MousePointer = 0
End Sub

Private Sub ranksCommand2_Click()
    ' Restore rank settings
    On Error Resume Next

    Me.MousePointer = 11
    Me.ranksCommand1.Enabled = False
    Me.ranksCommand2.Enabled = False

    LoadRanksTab

    Me.ranksCommand1.Enabled = True
    Me.ranksCommand2.Enabled = True
    Me.MousePointer = 0
End Sub

' ============================================
' Club Tab Handlers
' ============================================

Private Sub clubCommand1_Click()
    ' Save club settings
    On Error Resume Next

    Dim i As Variant
    Dim sPresent As String
    Dim sSettingsFile As String
    Dim vParts As Variant

    Me.MousePointer = 11
    Me.clubCommand1.Enabled = False
    Me.clubCommand2.Enabled = False

    sSettingsFile = gAppPath & "configuration\settings.ini"

    ' Save HC presents (0-10)
    For i = 0 To 10
        sPresent = Me.hcpresent(CInt(i)).Text

        ' Validate that folders exist for each present item
        vParts = Split(sPresent, ";")

        ' Clean up double semicolons
        sPresent = Replace(sPresent, ";;", ";")
        sPresent = Replace(sPresent, ";;", ";")
        sPresent = Replace(sPresent, ";;", ";")

        ' Remove leading/trailing semicolons if needed
        If Left(sPresent, 1) <> ";" Then sPresent = ";" & sPresent
        If Right(sPresent, 1) = ";" Then sPresent = Left(sPresent, Len(sPresent) - 1)

        Me.hcpresent(CInt(i)).Text = sPresent
        WriteINI "HC", "present" & CStr(i + 1), sPresent, sSettingsFile
    Next i

    ' Save HC badge
    sPresent = Me.clubText1.Text
    If Left(sPresent, 1) <> ";" Then sPresent = ";" & sPresent
    If Right(sPresent, 1) = ";" Then sPresent = Left(sPresent, Len(sPresent) - 1)
    sPresent = Replace(sPresent, ";;", ";")
    Me.clubText1.Text = sPresent
    WriteINI "HC", "hcbadge", sPresent, sSettingsFile

    ' Save gold badge
    sPresent = Me.clubText2.Text
    If Left(sPresent, 1) <> ";" Then sPresent = ";" & sPresent
    If Right(sPresent, 1) = ";" Then sPresent = Left(sPresent, Len(sPresent) - 1)
    sPresent = Replace(sPresent, ";;", ";")
    Me.clubText2.Text = sPresent
    WriteINI "HC", "goldbadge", sPresent, sSettingsFile

    Me.clubCommand1.Enabled = True
    Me.clubCommand2.Enabled = True
    Me.MousePointer = 0
End Sub

Private Sub clubCommand2_Click()
    ' Restore club settings
    On Error Resume Next

    Me.MousePointer = 11
    Me.clubCommand1.Enabled = False
    Me.clubCommand2.Enabled = False

    LoadClubTab

    Me.clubCommand1.Enabled = True
    Me.clubCommand2.Enabled = True
    Me.MousePointer = 0
End Sub

