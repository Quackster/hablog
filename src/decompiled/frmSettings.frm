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


Private Sub Label2_Click() 'B19248
  'Data Table: 54EE7C
  loc_B1923C: FLdRfVar var_94
  loc_B1923F: ImpAdCallFPR4 Proc_27_2_B4059C()
  loc_B19244: FFree1Var var_94 = ""
  loc_B19247: ExitProcHresult
End Sub

Private Sub Label2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1A504
  'Data Table: 54EE7C
  loc_B1A4D8: LitI4 &H7F89
  loc_B1A4DD: LitI4 0
  loc_B1A4E2: ImpAdCallI2 LoadCursor(, )
  loc_B1A4E7: FStR4 var_8C
  loc_B1A4EA: SetLastSystemError
  loc_B1A4EB: ILdRf var_8C
  loc_B1A4EE: FStR4 var_88
  loc_B1A4F1: ILdRf var_88
  loc_B1A4F4: CBoolI4
  loc_B1A4F6: BranchF loc_B1A502
  loc_B1A4F9: ILdRf var_88
  loc_B1A4FC: ImpAdCallFPR4 SetCursor()
  loc_B1A501: SetLastSystemError
  loc_B1A502: ExitProcHresult
End Sub

Private Sub Label10_Click() 'B1991C
  'Data Table: 54EE7C
  loc_B19904: ILdRf Me
  loc_B19907: FStAdNoPop
  loc_B1990B: ImpAdLdRf MemVar_C10514
  loc_B1990E: NewIfNullPr Global
  loc_B19911: Global.Unload from_stack_1
  loc_B19916: FFree1Ad var_88
  loc_B19919: ExitProcHresult
End Sub

Private Sub Label10_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1A6D0
  'Data Table: 54EE7C
  loc_B1A6A4: LitI4 &H7F89
  loc_B1A6A9: LitI4 0
  loc_B1A6AE: ImpAdCallI2 LoadCursor(, )
  loc_B1A6B3: FStR4 var_8C
  loc_B1A6B6: SetLastSystemError
  loc_B1A6B7: ILdRf var_8C
  loc_B1A6BA: FStR4 var_88
  loc_B1A6BD: ILdRf var_88
  loc_B1A6C0: CBoolI4
  loc_B1A6C2: BranchF loc_B1A6CE
  loc_B1A6C5: ILdRf var_88
  loc_B1A6C8: ImpAdCallFPR4 SetCursor()
  loc_B1A6CD: SetLastSystemError
  loc_B1A6CE: ExitProcHresult
End Sub

Private Sub mainCheck4_Click() 'B1B410
  'Data Table: 54EE7C
  loc_B1B3C4: FLdRfVar var_8A
  loc_B1B3C7: FLdPrThis
  loc_B1B3C8: VCallAd Control_ID_mainCheck4
  loc_B1B3CB: FStAdFunc var_88
  loc_B1B3CE: FLdPr var_88
  loc_B1B3D1:  = Me.Value
  loc_B1B3D6: FLdI2 var_8A
  loc_B1B3D9: LitI2_Byte 1
  loc_B1B3DB: EqI2
  loc_B1B3DC: FFree1Ad var_88
  loc_B1B3DF: BranchF loc_B1B3F9
  loc_B1B3E2: LitI2_Byte &HFF
  loc_B1B3E4: FLdPrThis
  loc_B1B3E5: VCallAd Control_ID_mainText3
  loc_B1B3E8: FStAdFunc var_88
  loc_B1B3EB: FLdPr var_88
  loc_B1B3EE: Me.Enabled = from_stack_1b
  loc_B1B3F3: FFree1Ad var_88
  loc_B1B3F6: Branch loc_B1B40D
  loc_B1B3F9: LitI2_Byte 0
  loc_B1B3FB: FLdPrThis
  loc_B1B3FC: VCallAd Control_ID_mainText3
  loc_B1B3FF: FStAdFunc var_88
  loc_B1B402: FLdPr var_88
  loc_B1B405: Me.Enabled = from_stack_1b
  loc_B1B40A: FFree1Ad var_88
  loc_B1B40D: ExitProcHresult
End Sub

Private Sub mainCommand1_Click() 'B26334
  'Data Table: 54EE7C
  loc_B261C4: LitI2_Byte &HB
  loc_B261C6: FLdPrThis
  loc_B261C7: Me.MousePointer = from_stack_1
  loc_B261CC: LitI2_Byte 0
  loc_B261CE: FLdPrThis
  loc_B261CF: VCallAd Control_ID_mainCommand1
  loc_B261D2: FStAdFunc var_88
  loc_B261D5: FLdPr var_88
  loc_B261D8: Me.Enabled = from_stack_1b
  loc_B261DD: FFree1Ad var_88
  loc_B261E0: LitI2_Byte 0
  loc_B261E2: FLdPrThis
  loc_B261E3: VCallAd Control_ID_mainCommand2
  loc_B261E6: FStAdFunc var_88
  loc_B261E9: FLdPr var_88
  loc_B261EC: Me.Enabled = from_stack_1b
  loc_B261F1: FFree1Ad var_88
  loc_B261F4: FLdRfVar var_8C
  loc_B261F7: FLdPrThis
  loc_B261F8: VCallAd Control_ID_mainText1
  loc_B261FB: FStAdFunc var_88
  loc_B261FE: FLdPr var_88
  loc_B26201:  = Me.Text
  loc_B26206: ImpAdLdI4 MemVar_C0F03C
  loc_B26209: ILdRf var_8C
  loc_B2620C: LitStr "port"
  loc_B2620F: LitStr "server"
  loc_B26212: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B26217: FFree1Str var_8C
  loc_B2621A: FFree1Ad var_88
  loc_B2621D: FLdRfVar var_8E
  loc_B26220: FLdPrThis
  loc_B26221: VCallAd Control_ID_mainCheck1
  loc_B26224: FStAdFunc var_88
  loc_B26227: FLdPr var_88
  loc_B2622A:  = Me.Value
  loc_B2622F: ImpAdLdI4 MemVar_C0F03C
  loc_B26232: FLdI2 var_8E
  loc_B26235: CStrUI1
  loc_B26237: FStStrNoPop var_8C
  loc_B2623A: LitStr "bobba_filter"
  loc_B2623D: LitStr "config"
  loc_B26240: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B26245: FFree1Str var_8C
  loc_B26248: FFree1Ad var_88
  loc_B2624B: FLdRfVar var_8E
  loc_B2624E: FLdPrThis
  loc_B2624F: VCallAd Control_ID_mainCheck2
  loc_B26252: FStAdFunc var_88
  loc_B26255: FLdPr var_88
  loc_B26258:  = Me.Value
  loc_B2625D: ImpAdLdI4 MemVar_C0F03C
  loc_B26260: FLdI2 var_8E
  loc_B26263: CStrUI1
  loc_B26265: FStStrNoPop var_8C
  loc_B26268: LitStr "console"
  loc_B2626B: LitStr "config"
  loc_B2626E: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B26273: FFree1Str var_8C
  loc_B26276: FFree1Ad var_88
  loc_B26279: FLdRfVar var_8E
  loc_B2627C: FLdPrThis
  loc_B2627D: VCallAd Control_ID_mainCheck4
  loc_B26280: FStAdFunc var_88
  loc_B26283: FLdPr var_88
  loc_B26286:  = Me.Value
  loc_B2628B: FLdRfVar var_98
  loc_B2628E: FLdPrThis
  loc_B2628F: VCallAd Control_ID_mainText3
  loc_B26292: FStAdFunc var_94
  loc_B26295: FLdPr var_94
  loc_B26298:  = Me.Text
  loc_B2629D: ImpAdLdI4 MemVar_C0F03C
  loc_B262A0: FLdI2 var_8E
  loc_B262A3: CStrUI1
  loc_B262A5: FStStrNoPop var_8C
  loc_B262A8: LitStr ","
  loc_B262AB: ConcatStr
  loc_B262AC: FStStrNoPop var_9C
  loc_B262AF: ILdRf var_98
  loc_B262B2: ConcatStr
  loc_B262B3: FStStrNoPop var_A0
  loc_B262B6: LitStr "welcome_message"
  loc_B262B9: LitStr "config"
  loc_B262BC: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B262C1: FFreeStr var_8C = "": var_9C = "": var_98 = ""
  loc_B262CC: FFreeAd var_88 = ""
  loc_B262D3: FLdRfVar var_8E
  loc_B262D6: FLdPrThis
  loc_B262D7: VCallAd Control_ID_mainCheck5
  loc_B262DA: FStAdFunc var_88
  loc_B262DD: FLdPr var_88
  loc_B262E0:  = Me.Value
  loc_B262E5: ImpAdLdI4 MemVar_C0F03C
  loc_B262E8: FLdI2 var_8E
  loc_B262EB: CStrUI1
  loc_B262ED: FStStrNoPop var_8C
  loc_B262F0: LitStr "freehcclothes"
  loc_B262F3: LitStr "config"
  loc_B262F6: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B262FB: FFree1Str var_8C
  loc_B262FE: FFree1Ad var_88
  loc_B26301: LitI2_Byte &HFF
  loc_B26303: FLdPrThis
  loc_B26304: VCallAd Control_ID_mainCommand1
  loc_B26307: FStAdFunc var_88
  loc_B2630A: FLdPr var_88
  loc_B2630D: Me.Enabled = from_stack_1b
  loc_B26312: FFree1Ad var_88
  loc_B26315: LitI2_Byte &HFF
  loc_B26317: FLdPrThis
  loc_B26318: VCallAd Control_ID_mainCommand2
  loc_B2631B: FStAdFunc var_88
  loc_B2631E: FLdPr var_88
  loc_B26321: Me.Enabled = from_stack_1b
  loc_B26326: FFree1Ad var_88
  loc_B26329: LitI2_Byte 0
  loc_B2632B: FLdPrThis
  loc_B2632C: Me.MousePointer = from_stack_1
  loc_B26331: ExitProcHresult
End Sub

Private Sub mainCommand2_Click() 'B1D6E4
  'Data Table: 54EE7C
  loc_B1D678: LitI2_Byte &HB
  loc_B1D67A: FLdPrThis
  loc_B1D67B: Me.MousePointer = from_stack_1
  loc_B1D680: LitI2_Byte 0
  loc_B1D682: FLdPrThis
  loc_B1D683: VCallAd Control_ID_mainCommand1
  loc_B1D686: FStAdFunc var_88
  loc_B1D689: FLdPr var_88
  loc_B1D68C: Me.Enabled = from_stack_1b
  loc_B1D691: FFree1Ad var_88
  loc_B1D694: LitI2_Byte 0
  loc_B1D696: FLdPrThis
  loc_B1D697: VCallAd Control_ID_mainCommand2
  loc_B1D69A: FStAdFunc var_88
  loc_B1D69D: FLdPr var_88
  loc_B1D6A0: Me.Enabled = from_stack_1b
  loc_B1D6A5: FFree1Ad var_88
  loc_B1D6A8: FLdRfVar var_98
  loc_B1D6AB: ImpAdCallFPR4 Proc_27_1_B570C0()
  loc_B1D6B0: FFree1Var var_98 = ""
  loc_B1D6B3: LitI2_Byte &HFF
  loc_B1D6B5: FLdPrThis
  loc_B1D6B6: VCallAd Control_ID_mainCommand1
  loc_B1D6B9: FStAdFunc var_88
  loc_B1D6BC: FLdPr var_88
  loc_B1D6BF: Me.Enabled = from_stack_1b
  loc_B1D6C4: FFree1Ad var_88
  loc_B1D6C7: LitI2_Byte &HFF
  loc_B1D6C9: FLdPrThis
  loc_B1D6CA: VCallAd Control_ID_mainCommand2
  loc_B1D6CD: FStAdFunc var_88
  loc_B1D6D0: FLdPr var_88
  loc_B1D6D3: Me.Enabled = from_stack_1b
  loc_B1D6D8: FFree1Ad var_88
  loc_B1D6DB: LitI2_Byte 0
  loc_B1D6DD: FLdPrThis
  loc_B1D6DE: Me.MousePointer = from_stack_1
  loc_B1D6E3: ExitProcHresult
End Sub

Private Sub ranksCombo1_Click() 'B5D15C
  'Data Table: 54EE7C
  loc_B5C684: LitVarI2 var_C4, 0
  loc_B5C689: FLdRfVar var_94
  loc_B5C68C: LitVarI2 var_B4, 58
  loc_B5C691: ForVar var_E4
  loc_B5C697: FLdRfVar var_120
  loc_B5C69A: FLdRfVar var_94
  loc_B5C69D: CI2Var
  loc_B5C69E: FLdPrThis
  loc_B5C69F: VCallAd Control_ID_ranksList1
  loc_B5C6A2: FStAdFunc var_11C
  loc_B5C6A5: FLdPr var_11C
  loc_B5C6A8: from_stack_2 = Me.List(from_stack_1)
  loc_B5C6AD: FLdRfVar var_EC
  loc_B5C6B0: FLdPrThis
  loc_B5C6B1: VCallAd Control_ID_ranksCombo1
  loc_B5C6B4: FStAdFunc var_E8
  loc_B5C6B7: FLdPr var_E8
  loc_B5C6BA:  = Me.Text
  loc_B5C6BF: LitI4 1
  loc_B5C6C4: LitI4 0
  loc_B5C6C9: FStStrCopy var_118
  loc_B5C6CC: FLdRfVar var_118
  loc_B5C6CF: ImpAdLdI4 MemVar_C0F044
  loc_B5C6D2: LitStr "ranks\"
  loc_B5C6D5: ConcatStr
  loc_B5C6D6: FStStrNoPop var_F0
  loc_B5C6D9: ILdRf var_EC
  loc_B5C6DC: ConcatStr
  loc_B5C6DD: FStStrNoPop var_F4
  loc_B5C6E0: LitStr ".ini"
  loc_B5C6E3: ConcatStr
  loc_B5C6E4: CVarStr var_114
  loc_B5C6E7: LitVarStr var_B4, "speech_cmd"
  loc_B5C6EC: FStVarCopyObj var_104
  loc_B5C6EF: FLdRfVar var_104
  loc_B5C6F2: LitVarStr var_A4, "rank"
  loc_B5C6F7: PopAdLdVar
  loc_B5C6F8: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5C6FD: FStStrNoPop var_128
  loc_B5C700: LitI4 0
  loc_B5C705: LitI4 -1
  loc_B5C70A: LitI4 1
  loc_B5C70F: LitStr ","
  loc_B5C712: LitStr ":"
  loc_B5C715: ILdRf var_120
  loc_B5C718: ImpAdCallI2 Replace(, , , , , )
  loc_B5C71D: FStStrNoPop var_124
  loc_B5C720: LitI4 0
  loc_B5C725: FnInStr4
  loc_B5C727: CBoolI4
  loc_B5C729: FFreeStr var_F0 = "": var_EC = "": var_F4 = "": var_118 = "": var_120 = "": var_124 = ""
  loc_B5C73A: FFreeAd var_E8 = ""
  loc_B5C741: FFreeVar var_104 = ""
  loc_B5C748: BranchF loc_B5C766
  loc_B5C74B: LitI2_Byte &HFF
  loc_B5C74D: FLdRfVar var_94
  loc_B5C750: CI2Var
  loc_B5C751: FLdPrThis
  loc_B5C752: VCallAd Control_ID_ranksList1
  loc_B5C755: FStAdFunc var_E8
  loc_B5C758: FLdPr var_E8
  loc_B5C75B: Me.Selected = from_stack_1
  loc_B5C760: FFree1Ad var_E8
  loc_B5C763: Branch loc_B5C77E
  loc_B5C766: LitI2_Byte 0
  loc_B5C768: FLdRfVar var_94
  loc_B5C76B: CI2Var
  loc_B5C76C: FLdPrThis
  loc_B5C76D: VCallAd Control_ID_ranksList1
  loc_B5C770: FStAdFunc var_E8
  loc_B5C773: FLdPr var_E8
  loc_B5C776: Me.Selected = from_stack_1
  loc_B5C77B: FFree1Ad var_E8
  loc_B5C77E: FLdRfVar var_94
  loc_B5C781: NextStepVar var_E4
  loc_B5C787: FLdRfVar var_EC
  loc_B5C78A: FLdPrThis
  loc_B5C78B: VCallAd Control_ID_ranksCombo1
  loc_B5C78E: FStAdFunc var_E8
  loc_B5C791: FLdPr var_E8
  loc_B5C794:  = Me.Text
  loc_B5C799: LitI4 1
  loc_B5C79E: LitI4 0
  loc_B5C7A3: FStStrCopy var_118
  loc_B5C7A6: FLdRfVar var_118
  loc_B5C7A9: ImpAdLdI4 MemVar_C0F044
  loc_B5C7AC: LitStr "ranks\"
  loc_B5C7AF: ConcatStr
  loc_B5C7B0: FStStrNoPop var_F0
  loc_B5C7B3: ILdRf var_EC
  loc_B5C7B6: ConcatStr
  loc_B5C7B7: FStStrNoPop var_F4
  loc_B5C7BA: LitStr ".ini"
  loc_B5C7BD: ConcatStr
  loc_B5C7BE: CVarStr var_114
  loc_B5C7C1: LitVarStr var_B4, "mod_tool"
  loc_B5C7C6: FStVarCopyObj var_104
  loc_B5C7C9: FLdRfVar var_104
  loc_B5C7CC: LitVarStr var_A4, "rank"
  loc_B5C7D1: PopAdLdVar
  loc_B5C7D2: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5C7D7: FStStrNoPop var_120
  loc_B5C7DA: LitStr ",alert"
  loc_B5C7DD: LitI4 0
  loc_B5C7E2: FnInStr4
  loc_B5C7E4: CBoolI4
  loc_B5C7E6: FFreeStr var_F0 = "": var_EC = "": var_F4 = "": var_118 = ""
  loc_B5C7F3: FFree1Ad var_E8
  loc_B5C7F6: FFreeVar var_104 = ""
  loc_B5C7FD: BranchF loc_B5C819
  loc_B5C800: LitI2_Byte &HFF
  loc_B5C802: LitI2_Byte 0
  loc_B5C804: FLdPrThis
  loc_B5C805: VCallAd Control_ID_ranksList2
  loc_B5C808: FStAdFunc var_E8
  loc_B5C80B: FLdPr var_E8
  loc_B5C80E: Me.Selected = from_stack_1
  loc_B5C813: FFree1Ad var_E8
  loc_B5C816: Branch loc_B5C82F
  loc_B5C819: LitI2_Byte 0
  loc_B5C81B: LitI2_Byte 0
  loc_B5C81D: FLdPrThis
  loc_B5C81E: VCallAd Control_ID_ranksList2
  loc_B5C821: FStAdFunc var_E8
  loc_B5C824: FLdPr var_E8
  loc_B5C827: Me.Selected = from_stack_1
  loc_B5C82C: FFree1Ad var_E8
  loc_B5C82F: FLdRfVar var_EC
  loc_B5C832: FLdPrThis
  loc_B5C833: VCallAd Control_ID_ranksCombo1
  loc_B5C836: FStAdFunc var_E8
  loc_B5C839: FLdPr var_E8
  loc_B5C83C:  = Me.Text
  loc_B5C841: LitI4 1
  loc_B5C846: LitI4 0
  loc_B5C84B: FStStrCopy var_118
  loc_B5C84E: FLdRfVar var_118
  loc_B5C851: ImpAdLdI4 MemVar_C0F044
  loc_B5C854: LitStr "ranks\"
  loc_B5C857: ConcatStr
  loc_B5C858: FStStrNoPop var_F0
  loc_B5C85B: ILdRf var_EC
  loc_B5C85E: ConcatStr
  loc_B5C85F: FStStrNoPop var_F4
  loc_B5C862: LitStr ".ini"
  loc_B5C865: ConcatStr
  loc_B5C866: CVarStr var_114
  loc_B5C869: LitVarStr var_B4, "mod_tool"
  loc_B5C86E: FStVarCopyObj var_104
  loc_B5C871: FLdRfVar var_104
  loc_B5C874: LitVarStr var_A4, "rank"
  loc_B5C879: PopAdLdVar
  loc_B5C87A: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5C87F: FStStrNoPop var_120
  loc_B5C882: LitStr ",ban"
  loc_B5C885: LitI4 0
  loc_B5C88A: FnInStr4
  loc_B5C88C: CBoolI4
  loc_B5C88E: FFreeStr var_F0 = "": var_EC = "": var_F4 = "": var_118 = ""
  loc_B5C89B: FFree1Ad var_E8
  loc_B5C89E: FFreeVar var_104 = ""
  loc_B5C8A5: BranchF loc_B5C8C1
  loc_B5C8A8: LitI2_Byte &HFF
  loc_B5C8AA: LitI2_Byte 1
  loc_B5C8AC: FLdPrThis
  loc_B5C8AD: VCallAd Control_ID_ranksList2
  loc_B5C8B0: FStAdFunc var_E8
  loc_B5C8B3: FLdPr var_E8
  loc_B5C8B6: Me.Selected = from_stack_1
  loc_B5C8BB: FFree1Ad var_E8
  loc_B5C8BE: Branch loc_B5C8D7
  loc_B5C8C1: LitI2_Byte 0
  loc_B5C8C3: LitI2_Byte 1
  loc_B5C8C5: FLdPrThis
  loc_B5C8C6: VCallAd Control_ID_ranksList2
  loc_B5C8C9: FStAdFunc var_E8
  loc_B5C8CC: FLdPr var_E8
  loc_B5C8CF: Me.Selected = from_stack_1
  loc_B5C8D4: FFree1Ad var_E8
  loc_B5C8D7: FLdRfVar var_EC
  loc_B5C8DA: FLdPrThis
  loc_B5C8DB: VCallAd Control_ID_ranksCombo1
  loc_B5C8DE: FStAdFunc var_E8
  loc_B5C8E1: FLdPr var_E8
  loc_B5C8E4:  = Me.Text
  loc_B5C8E9: LitI4 1
  loc_B5C8EE: LitI4 0
  loc_B5C8F3: FStStrCopy var_118
  loc_B5C8F6: FLdRfVar var_118
  loc_B5C8F9: ImpAdLdI4 MemVar_C0F044
  loc_B5C8FC: LitStr "ranks\"
  loc_B5C8FF: ConcatStr
  loc_B5C900: FStStrNoPop var_F0
  loc_B5C903: ILdRf var_EC
  loc_B5C906: ConcatStr
  loc_B5C907: FStStrNoPop var_F4
  loc_B5C90A: LitStr ".ini"
  loc_B5C90D: ConcatStr
  loc_B5C90E: CVarStr var_114
  loc_B5C911: LitVarStr var_B4, "mod_tool"
  loc_B5C916: FStVarCopyObj var_104
  loc_B5C919: FLdRfVar var_104
  loc_B5C91C: LitVarStr var_A4, "rank"
  loc_B5C921: PopAdLdVar
  loc_B5C922: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5C927: FStStrNoPop var_120
  loc_B5C92A: LitStr ",kick"
  loc_B5C92D: LitI4 0
  loc_B5C932: FnInStr4
  loc_B5C934: CBoolI4
  loc_B5C936: FFreeStr var_F0 = "": var_EC = "": var_F4 = "": var_118 = ""
  loc_B5C943: FFree1Ad var_E8
  loc_B5C946: FFreeVar var_104 = ""
  loc_B5C94D: BranchF loc_B5C969
  loc_B5C950: LitI2_Byte &HFF
  loc_B5C952: LitI2_Byte 2
  loc_B5C954: FLdPrThis
  loc_B5C955: VCallAd Control_ID_ranksList2
  loc_B5C958: FStAdFunc var_E8
  loc_B5C95B: FLdPr var_E8
  loc_B5C95E: Me.Selected = from_stack_1
  loc_B5C963: FFree1Ad var_E8
  loc_B5C966: Branch loc_B5C97F
  loc_B5C969: LitI2_Byte 0
  loc_B5C96B: LitI2_Byte 2
  loc_B5C96D: FLdPrThis
  loc_B5C96E: VCallAd Control_ID_ranksList2
  loc_B5C971: FStAdFunc var_E8
  loc_B5C974: FLdPr var_E8
  loc_B5C977: Me.Selected = from_stack_1
  loc_B5C97C: FFree1Ad var_E8
  loc_B5C97F: FLdRfVar var_EC
  loc_B5C982: FLdPrThis
  loc_B5C983: VCallAd Control_ID_ranksCombo1
  loc_B5C986: FStAdFunc var_E8
  loc_B5C989: FLdPr var_E8
  loc_B5C98C:  = Me.Text
  loc_B5C991: LitI4 1
  loc_B5C996: LitI4 0
  loc_B5C99B: FStStrCopy var_118
  loc_B5C99E: FLdRfVar var_118
  loc_B5C9A1: ImpAdLdI4 MemVar_C0F044
  loc_B5C9A4: LitStr "ranks\"
  loc_B5C9A7: ConcatStr
  loc_B5C9A8: FStStrNoPop var_F0
  loc_B5C9AB: ILdRf var_EC
  loc_B5C9AE: ConcatStr
  loc_B5C9AF: FStStrNoPop var_F4
  loc_B5C9B2: LitStr ".ini"
  loc_B5C9B5: ConcatStr
  loc_B5C9B6: CVarStr var_114
  loc_B5C9B9: LitVarStr var_B4, "mod_tool"
  loc_B5C9BE: FStVarCopyObj var_104
  loc_B5C9C1: FLdRfVar var_104
  loc_B5C9C4: LitVarStr var_A4, "rank"
  loc_B5C9C9: PopAdLdVar
  loc_B5C9CA: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5C9CF: FStStrNoPop var_120
  loc_B5C9D2: LitStr ",roomalert"
  loc_B5C9D5: LitI4 0
  loc_B5C9DA: FnInStr4
  loc_B5C9DC: CBoolI4
  loc_B5C9DE: FFreeStr var_F0 = "": var_EC = "": var_F4 = "": var_118 = ""
  loc_B5C9EB: FFree1Ad var_E8
  loc_B5C9EE: FFreeVar var_104 = ""
  loc_B5C9F5: BranchF loc_B5CA11
  loc_B5C9F8: LitI2_Byte &HFF
  loc_B5C9FA: LitI2_Byte 3
  loc_B5C9FC: FLdPrThis
  loc_B5C9FD: VCallAd Control_ID_ranksList2
  loc_B5CA00: FStAdFunc var_E8
  loc_B5CA03: FLdPr var_E8
  loc_B5CA06: Me.Selected = from_stack_1
  loc_B5CA0B: FFree1Ad var_E8
  loc_B5CA0E: Branch loc_B5CA27
  loc_B5CA11: LitI2_Byte 0
  loc_B5CA13: LitI2_Byte 3
  loc_B5CA15: FLdPrThis
  loc_B5CA16: VCallAd Control_ID_ranksList2
  loc_B5CA19: FStAdFunc var_E8
  loc_B5CA1C: FLdPr var_E8
  loc_B5CA1F: Me.Selected = from_stack_1
  loc_B5CA24: FFree1Ad var_E8
  loc_B5CA27: FLdRfVar var_EC
  loc_B5CA2A: FLdPrThis
  loc_B5CA2B: VCallAd Control_ID_ranksCombo1
  loc_B5CA2E: FStAdFunc var_E8
  loc_B5CA31: FLdPr var_E8
  loc_B5CA34:  = Me.Text
  loc_B5CA39: LitI4 1
  loc_B5CA3E: LitI4 0
  loc_B5CA43: FStStrCopy var_118
  loc_B5CA46: FLdRfVar var_118
  loc_B5CA49: ImpAdLdI4 MemVar_C0F044
  loc_B5CA4C: LitStr "ranks\"
  loc_B5CA4F: ConcatStr
  loc_B5CA50: FStStrNoPop var_F0
  loc_B5CA53: ILdRf var_EC
  loc_B5CA56: ConcatStr
  loc_B5CA57: FStStrNoPop var_F4
  loc_B5CA5A: LitStr ".ini"
  loc_B5CA5D: ConcatStr
  loc_B5CA5E: CVarStr var_114
  loc_B5CA61: LitVarStr var_B4, "mod_tool"
  loc_B5CA66: FStVarCopyObj var_104
  loc_B5CA69: FLdRfVar var_104
  loc_B5CA6C: LitVarStr var_A4, "rank"
  loc_B5CA71: PopAdLdVar
  loc_B5CA72: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5CA77: FStStrNoPop var_120
  loc_B5CA7A: LitStr ",roomkick"
  loc_B5CA7D: LitI4 0
  loc_B5CA82: FnInStr4
  loc_B5CA84: CBoolI4
  loc_B5CA86: FFreeStr var_F0 = "": var_EC = "": var_F4 = "": var_118 = ""
  loc_B5CA93: FFree1Ad var_E8
  loc_B5CA96: FFreeVar var_104 = ""
  loc_B5CA9D: BranchF loc_B5CAB9
  loc_B5CAA0: LitI2_Byte &HFF
  loc_B5CAA2: LitI2_Byte 4
  loc_B5CAA4: FLdPrThis
  loc_B5CAA5: VCallAd Control_ID_ranksList2
  loc_B5CAA8: FStAdFunc var_E8
  loc_B5CAAB: FLdPr var_E8
  loc_B5CAAE: Me.Selected = from_stack_1
  loc_B5CAB3: FFree1Ad var_E8
  loc_B5CAB6: Branch loc_B5CACF
  loc_B5CAB9: LitI2_Byte 0
  loc_B5CABB: LitI2_Byte 4
  loc_B5CABD: FLdPrThis
  loc_B5CABE: VCallAd Control_ID_ranksList2
  loc_B5CAC1: FStAdFunc var_E8
  loc_B5CAC4: FLdPr var_E8
  loc_B5CAC7: Me.Selected = from_stack_1
  loc_B5CACC: FFree1Ad var_E8
  loc_B5CACF: FLdRfVar var_EC
  loc_B5CAD2: ImpAdLdRf MemVar_C0F3D4
  loc_B5CAD5: NewIfNullPr frmSettings
  loc_B5CAD8: VCallAd Control_ID_ranksCombo1
  loc_B5CADB: FStAdFunc var_E8
  loc_B5CADE: FLdPr var_E8
  loc_B5CAE1:  = frmSettings.ComboBox.Text
  loc_B5CAE6: LitI4 0
  loc_B5CAEB: FStStrCopy var_118
  loc_B5CAEE: FLdRfVar var_118
  loc_B5CAF1: ImpAdLdI4 MemVar_C0F044
  loc_B5CAF4: LitStr "ranks\"
  loc_B5CAF7: ConcatStr
  loc_B5CAF8: FStStrNoPop var_F0
  loc_B5CAFB: ILdRf var_EC
  loc_B5CAFE: ConcatStr
  loc_B5CAFF: FStStrNoPop var_F4
  loc_B5CB02: LitStr ".ini"
  loc_B5CB05: ConcatStr
  loc_B5CB06: CVarStr var_114
  loc_B5CB09: LitVarStr var_B4, "badges"
  loc_B5CB0E: FStVarCopyObj var_104
  loc_B5CB11: FLdRfVar var_104
  loc_B5CB14: LitVarStr var_A4, "rank"
  loc_B5CB19: PopAdLdVar
  loc_B5CB1A: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5CB1F: CVarStr var_148
  loc_B5CB22: FStVar var_138
  loc_B5CB26: FFreeStr var_F0 = "": var_EC = "": var_F4 = ""
  loc_B5CB31: FFree1Ad var_E8
  loc_B5CB34: FFreeVar var_104 = ""
  loc_B5CB3B: LitI4 0
  loc_B5CB40: LitI4 -1
  loc_B5CB45: LitI4 1
  loc_B5CB4A: LitStr ";"
  loc_B5CB4D: LitStr ";;"
  loc_B5CB50: FLdRfVar var_138
  loc_B5CB53: CStrVarVal var_EC
  loc_B5CB57: ImpAdCallI2 Replace(, , , , , )
  loc_B5CB5C: CVarStr var_104
  loc_B5CB5F: FStVar var_138
  loc_B5CB63: FFree1Str var_EC
  loc_B5CB66: LitI4 0
  loc_B5CB6B: LitI4 -1
  loc_B5CB70: LitI4 1
  loc_B5CB75: LitStr ";"
  loc_B5CB78: LitStr ";;"
  loc_B5CB7B: FLdRfVar var_138
  loc_B5CB7E: CStrVarVal var_EC
  loc_B5CB82: ImpAdCallI2 Replace(, , , , , )
  loc_B5CB87: CVarStr var_104
  loc_B5CB8A: FStVar var_138
  loc_B5CB8E: FFree1Str var_EC
  loc_B5CB91: LitI4 0
  loc_B5CB96: LitI4 -1
  loc_B5CB9B: LitI4 1
  loc_B5CBA0: LitStr ";"
  loc_B5CBA3: LitStr ";;"
  loc_B5CBA6: FLdRfVar var_138
  loc_B5CBA9: CStrVarVal var_EC
  loc_B5CBAD: ImpAdCallI2 Replace(, , , , , )
  loc_B5CBB2: CVarStr var_104
  loc_B5CBB5: FStVar var_138
  loc_B5CBB9: FFree1Str var_EC
  loc_B5CBBC: LitI4 1
  loc_B5CBC1: FLdRfVar var_138
  loc_B5CBC4: FLdRfVar var_104
  loc_B5CBC7: ImpAdCallFPR4  = Left(, )
  loc_B5CBCC: FLdRfVar var_104
  loc_B5CBCF: LitVarStr var_A4, ";"
  loc_B5CBD4: HardType
  loc_B5CBD5: NeVarBool
  loc_B5CBD7: FFree1Var var_104 = ""
  loc_B5CBDA: BranchF loc_B5CBED
  loc_B5CBDD: LitVarStr var_A4, ";"
  loc_B5CBE2: FLdRfVar var_138
  loc_B5CBE5: ConcatVar var_104
  loc_B5CBE9: FStVar var_138
  loc_B5CBED: LitI4 1
  loc_B5CBF2: FLdRfVar var_138
  loc_B5CBF5: FLdRfVar var_104
  loc_B5CBF8: ImpAdCallFPR4  = Right(, )
  loc_B5CBFD: FLdRfVar var_104
  loc_B5CC00: LitVarStr var_A4, ";"
  loc_B5CC05: HardType
  loc_B5CC06: EqVarBool
  loc_B5CC08: FFree1Var var_104 = ""
  loc_B5CC0B: BranchF loc_B5CC32
  loc_B5CC0E: FLdRfVar var_138
  loc_B5CC11: FnLenVar var_104
  loc_B5CC15: LitVarI2 var_A4, 1
  loc_B5CC1A: SubVar var_114
  loc_B5CC1E: CI4Var
  loc_B5CC20: FLdRfVar var_138
  loc_B5CC23: FLdRfVar var_148
  loc_B5CC26: ImpAdCallFPR4  = Left(, )
  loc_B5CC2B: FLdRfVar var_148
  loc_B5CC2E: FStVar var_138
  loc_B5CC32: ImpAdLdI4 MemVar_C0F044
  loc_B5CC35: LitStr "ranks\"
  loc_B5CC38: ConcatStr
  loc_B5CC39: FStStrNoPop var_F0
  loc_B5CC3C: FLdRfVar var_EC
  loc_B5CC3F: ImpAdLdRf MemVar_C0F3D4
  loc_B5CC42: NewIfNullPr frmSettings
  loc_B5CC45: VCallAd Control_ID_ranksCombo1
  loc_B5CC48: FStAdFunc var_E8
  loc_B5CC4B: FLdPr var_E8
  loc_B5CC4E:  = frmSettings.ComboBox.Text
  loc_B5CC53: ILdRf var_EC
  loc_B5CC56: ConcatStr
  loc_B5CC57: FStStrNoPop var_F4
  loc_B5CC5A: LitStr ".ini"
  loc_B5CC5D: ConcatStr
  loc_B5CC5E: FStStrNoPop var_120
  loc_B5CC61: FLdRfVar var_138
  loc_B5CC64: CStrVarVal var_118
  loc_B5CC68: LitStr "badges"
  loc_B5CC6B: LitStr "rank"
  loc_B5CC6E: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B5CC73: FFreeStr var_F0 = "": var_EC = "": var_F4 = "": var_118 = ""
  loc_B5CC80: FFree1Ad var_E8
  loc_B5CC83: LitStr vbNullString
  loc_B5CC86: ImpAdLdRf MemVar_C0F3D4
  loc_B5CC89: NewIfNullPr frmSettings
  loc_B5CC8C: VCallAd Control_ID_ranksText1
  loc_B5CC8F: FStAdFunc var_E8
  loc_B5CC92: FLdPr var_E8
  loc_B5CC95: frmSettings.TextBox.Text = from_stack_1
  loc_B5CC9A: FFree1Ad var_E8
  loc_B5CC9D: FLdRfVar var_EC
  loc_B5CCA0: ImpAdLdRf MemVar_C0F3D4
  loc_B5CCA3: NewIfNullPr frmSettings
  loc_B5CCA6: VCallAd Control_ID_ranksCombo1
  loc_B5CCA9: FStAdFunc var_E8
  loc_B5CCAC: FLdPr var_E8
  loc_B5CCAF:  = frmSettings.ComboBox.Text
  loc_B5CCB4: LitI4 0
  loc_B5CCB9: FStStrCopy var_118
  loc_B5CCBC: FLdRfVar var_118
  loc_B5CCBF: ImpAdLdI4 MemVar_C0F044
  loc_B5CCC2: LitStr "ranks\"
  loc_B5CCC5: ConcatStr
  loc_B5CCC6: FStStrNoPop var_F0
  loc_B5CCC9: ILdRf var_EC
  loc_B5CCCC: ConcatStr
  loc_B5CCCD: FStStrNoPop var_F4
  loc_B5CCD0: LitStr ".ini"
  loc_B5CCD3: ConcatStr
  loc_B5CCD4: CVarStr var_114
  loc_B5CCD7: LitVarStr var_B4, "badges"
  loc_B5CCDC: FStVarCopyObj var_104
  loc_B5CCDF: FLdRfVar var_104
  loc_B5CCE2: LitVarStr var_A4, "rank"
  loc_B5CCE7: PopAdLdVar
  loc_B5CCE8: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5CCED: FStStr var_128
  loc_B5CCF0: LitVar_Missing var_158
  loc_B5CCF3: LitI4 2
  loc_B5CCF8: FLdZeroAd var_128
  loc_B5CCFB: CVarStr var_148
  loc_B5CCFE: FLdRfVar var_168
  loc_B5CD01: ImpAdCallFPR4  = Mid(, , )
  loc_B5CD06: LitI4 0
  loc_B5CD0B: LitI4 -1
  loc_B5CD10: LitI4 1
  loc_B5CD15: LitStr vbCrLf
  loc_B5CD18: LitStr ";"
  loc_B5CD1B: FLdRfVar var_168
  loc_B5CD1E: CStrVarVal var_120
  loc_B5CD22: ImpAdCallI2 Replace(, , , , , )
  loc_B5CD27: FStStrNoPop var_124
  loc_B5CD2A: ImpAdLdRf MemVar_C0F3D4
  loc_B5CD2D: NewIfNullPr frmSettings
  loc_B5CD30: VCallAd Control_ID_ranksText1
  loc_B5CD33: FStAdFunc var_11C
  loc_B5CD36: FLdPr var_11C
  loc_B5CD39: frmSettings.TextBox.Text = from_stack_1
  loc_B5CD3E: FFreeStr var_F0 = "": var_EC = "": var_F4 = "": var_118 = "": var_120 = "": var_124 = ""
  loc_B5CD4F: FFreeAd var_E8 = ""
  loc_B5CD56: FFreeVar var_104 = "": var_114 = "": var_148 = "": var_158 = ""
  loc_B5CD63: FLdRfVar var_EC
  loc_B5CD66: ImpAdLdRf MemVar_C0F3D4
  loc_B5CD69: NewIfNullPr frmSettings
  loc_B5CD6C: VCallAd Control_ID_ranksCombo1
  loc_B5CD6F: FStAdFunc var_E8
  loc_B5CD72: FLdPr var_E8
  loc_B5CD75:  = frmSettings.ComboBox.Text
  loc_B5CD7A: LitI4 0
  loc_B5CD7F: FStStrCopy var_118
  loc_B5CD82: FLdRfVar var_118
  loc_B5CD85: ImpAdLdI4 MemVar_C0F044
  loc_B5CD88: LitStr "ranks\"
  loc_B5CD8B: ConcatStr
  loc_B5CD8C: FStStrNoPop var_F0
  loc_B5CD8F: ILdRf var_EC
  loc_B5CD92: ConcatStr
  loc_B5CD93: FStStrNoPop var_F4
  loc_B5CD96: LitStr ".ini"
  loc_B5CD99: ConcatStr
  loc_B5CD9A: CVarStr var_114
  loc_B5CD9D: LitVarStr var_B4, "admin_catalogue"
  loc_B5CDA2: FStVarCopyObj var_104
  loc_B5CDA5: FLdRfVar var_104
  loc_B5CDA8: LitVarStr var_A4, "rank"
  loc_B5CDAD: PopAdLdVar
  loc_B5CDAE: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5CDB3: FStStrNoPop var_120
  loc_B5CDB6: CI2Str
  loc_B5CDB8: ImpAdLdRf MemVar_C0F3D4
  loc_B5CDBB: NewIfNullPr frmSettings
  loc_B5CDBE: VCallAd Control_ID_ranksCheck1
  loc_B5CDC1: FStAdFunc var_11C
  loc_B5CDC4: FLdPr var_11C
  loc_B5CDC7: frmSettings.CheckBox.Value = from_stack_1
  loc_B5CDCC: FFreeStr var_F0 = "": var_EC = "": var_F4 = "": var_118 = ""
  loc_B5CDD9: FFreeAd var_E8 = ""
  loc_B5CDE0: FFreeVar var_104 = ""
  loc_B5CDE7: FLdRfVar var_EC
  loc_B5CDEA: ImpAdLdRf MemVar_C0F3D4
  loc_B5CDED: NewIfNullPr frmSettings
  loc_B5CDF0: VCallAd Control_ID_ranksCombo1
  loc_B5CDF3: FStAdFunc var_E8
  loc_B5CDF6: FLdPr var_E8
  loc_B5CDF9:  = frmSettings.ComboBox.Text
  loc_B5CDFE: LitI4 0
  loc_B5CE03: FStStrCopy var_118
  loc_B5CE06: FLdRfVar var_118
  loc_B5CE09: ImpAdLdI4 MemVar_C0F044
  loc_B5CE0C: LitStr "ranks\"
  loc_B5CE0F: ConcatStr
  loc_B5CE10: FStStrNoPop var_F0
  loc_B5CE13: ILdRf var_EC
  loc_B5CE16: ConcatStr
  loc_B5CE17: FStStrNoPop var_F4
  loc_B5CE1A: LitStr ".ini"
  loc_B5CE1D: ConcatStr
  loc_B5CE1E: CVarStr var_114
  loc_B5CE21: LitVarStr var_B4, "see_room_owner"
  loc_B5CE26: FStVarCopyObj var_104
  loc_B5CE29: FLdRfVar var_104
  loc_B5CE2C: LitVarStr var_A4, "rank"
  loc_B5CE31: PopAdLdVar
  loc_B5CE32: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5CE37: FStStrNoPop var_120
  loc_B5CE3A: CI2Str
  loc_B5CE3C: ImpAdLdRf MemVar_C0F3D4
  loc_B5CE3F: NewIfNullPr frmSettings
  loc_B5CE42: VCallAd Control_ID_ranksCheck2
  loc_B5CE45: FStAdFunc var_11C
  loc_B5CE48: FLdPr var_11C
  loc_B5CE4B: frmSettings.CheckBox.Value = from_stack_1
  loc_B5CE50: FFreeStr var_F0 = "": var_EC = "": var_F4 = "": var_118 = ""
  loc_B5CE5D: FFreeAd var_E8 = ""
  loc_B5CE64: FFreeVar var_104 = ""
  loc_B5CE6B: FLdRfVar var_EC
  loc_B5CE6E: ImpAdLdRf MemVar_C0F3D4
  loc_B5CE71: NewIfNullPr frmSettings
  loc_B5CE74: VCallAd Control_ID_ranksCombo1
  loc_B5CE77: FStAdFunc var_E8
  loc_B5CE7A: FLdPr var_E8
  loc_B5CE7D:  = frmSettings.ComboBox.Text
  loc_B5CE82: LitI4 0
  loc_B5CE87: FStStrCopy var_118
  loc_B5CE8A: FLdRfVar var_118
  loc_B5CE8D: ImpAdLdI4 MemVar_C0F044
  loc_B5CE90: LitStr "ranks\"
  loc_B5CE93: ConcatStr
  loc_B5CE94: FStStrNoPop var_F0
  loc_B5CE97: ILdRf var_EC
  loc_B5CE9A: ConcatStr
  loc_B5CE9B: FStStrNoPop var_F4
  loc_B5CE9E: LitStr ".ini"
  loc_B5CEA1: ConcatStr
  loc_B5CEA2: CVarStr var_114
  loc_B5CEA5: LitVarStr var_B4, "enter_any_room"
  loc_B5CEAA: FStVarCopyObj var_104
  loc_B5CEAD: FLdRfVar var_104
  loc_B5CEB0: LitVarStr var_A4, "rank"
  loc_B5CEB5: PopAdLdVar
  loc_B5CEB6: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5CEBB: FStStrNoPop var_120
  loc_B5CEBE: CI2Str
  loc_B5CEC0: ImpAdLdRf MemVar_C0F3D4
  loc_B5CEC3: NewIfNullPr frmSettings
  loc_B5CEC6: VCallAd Control_ID_ranksCheck3
  loc_B5CEC9: FStAdFunc var_11C
  loc_B5CECC: FLdPr var_11C
  loc_B5CECF: frmSettings.CheckBox.Value = from_stack_1
  loc_B5CED4: FFreeStr var_F0 = "": var_EC = "": var_F4 = "": var_118 = ""
  loc_B5CEE1: FFreeAd var_E8 = ""
  loc_B5CEE8: FFreeVar var_104 = ""
  loc_B5CEEF: FLdRfVar var_EC
  loc_B5CEF2: ImpAdLdRf MemVar_C0F3D4
  loc_B5CEF5: NewIfNullPr frmSettings
  loc_B5CEF8: VCallAd Control_ID_ranksCombo1
  loc_B5CEFB: FStAdFunc var_E8
  loc_B5CEFE: FLdPr var_E8
  loc_B5CF01:  = frmSettings.ComboBox.Text
  loc_B5CF06: LitI4 0
  loc_B5CF0B: FStStrCopy var_118
  loc_B5CF0E: FLdRfVar var_118
  loc_B5CF11: ImpAdLdI4 MemVar_C0F044
  loc_B5CF14: LitStr "ranks\"
  loc_B5CF17: ConcatStr
  loc_B5CF18: FStStrNoPop var_F0
  loc_B5CF1B: ILdRf var_EC
  loc_B5CF1E: ConcatStr
  loc_B5CF1F: FStStrNoPop var_F4
  loc_B5CF22: LitStr ".ini"
  loc_B5CF25: ConcatStr
  loc_B5CF26: CVarStr var_114
  loc_B5CF29: LitVarStr var_B4, "recrieve_cfh"
  loc_B5CF2E: FStVarCopyObj var_104
  loc_B5CF31: FLdRfVar var_104
  loc_B5CF34: LitVarStr var_A4, "rank"
  loc_B5CF39: PopAdLdVar
  loc_B5CF3A: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5CF3F: FStStrNoPop var_120
  loc_B5CF42: CI2Str
  loc_B5CF44: ImpAdLdRf MemVar_C0F3D4
  loc_B5CF47: NewIfNullPr frmSettings
  loc_B5CF4A: VCallAd Control_ID_ranksCheck4
  loc_B5CF4D: FStAdFunc var_11C
  loc_B5CF50: FLdPr var_11C
  loc_B5CF53: frmSettings.CheckBox.Value = from_stack_1
  loc_B5CF58: FFreeStr var_F0 = "": var_EC = "": var_F4 = "": var_118 = ""
  loc_B5CF65: FFreeAd var_E8 = ""
  loc_B5CF6C: FFreeVar var_104 = ""
  loc_B5CF73: FLdRfVar var_EC
  loc_B5CF76: ImpAdLdRf MemVar_C0F3D4
  loc_B5CF79: NewIfNullPr frmSettings
  loc_B5CF7C: VCallAd Control_ID_ranksCombo1
  loc_B5CF7F: FStAdFunc var_E8
  loc_B5CF82: FLdPr var_E8
  loc_B5CF85:  = frmSettings.ComboBox.Text
  loc_B5CF8A: LitI4 0
  loc_B5CF8F: FStStrCopy var_118
  loc_B5CF92: FLdRfVar var_118
  loc_B5CF95: ImpAdLdI4 MemVar_C0F044
  loc_B5CF98: LitStr "ranks\"
  loc_B5CF9B: ConcatStr
  loc_B5CF9C: FStStrNoPop var_F0
  loc_B5CF9F: ILdRf var_EC
  loc_B5CFA2: ConcatStr
  loc_B5CFA3: FStStrNoPop var_F4
  loc_B5CFA6: LitStr ".ini"
  loc_B5CFA9: ConcatStr
  loc_B5CFAA: CVarStr var_114
  loc_B5CFAD: LitVarStr var_B4, "rights_in_any_room"
  loc_B5CFB2: FStVarCopyObj var_104
  loc_B5CFB5: FLdRfVar var_104
  loc_B5CFB8: LitVarStr var_A4, "rank"
  loc_B5CFBD: PopAdLdVar
  loc_B5CFBE: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5CFC3: FStStrNoPop var_120
  loc_B5CFC6: CI2Str
  loc_B5CFC8: ImpAdLdRf MemVar_C0F3D4
  loc_B5CFCB: NewIfNullPr frmSettings
  loc_B5CFCE: VCallAd Control_ID_ranksCheck5
  loc_B5CFD1: FStAdFunc var_11C
  loc_B5CFD4: FLdPr var_11C
  loc_B5CFD7: frmSettings.CheckBox.Value = from_stack_1
  loc_B5CFDC: FFreeStr var_F0 = "": var_EC = "": var_F4 = "": var_118 = ""
  loc_B5CFE9: FFreeAd var_E8 = ""
  loc_B5CFF0: FFreeVar var_104 = ""
  loc_B5CFF7: FLdRfVar var_EC
  loc_B5CFFA: ImpAdLdRf MemVar_C0F3D4
  loc_B5CFFD: NewIfNullPr frmSettings
  loc_B5D000: VCallAd Control_ID_ranksCombo1
  loc_B5D003: FStAdFunc var_E8
  loc_B5D006: FLdPr var_E8
  loc_B5D009:  = frmSettings.ComboBox.Text
  loc_B5D00E: LitI4 0
  loc_B5D013: FStStrCopy var_118
  loc_B5D016: FLdRfVar var_118
  loc_B5D019: ImpAdLdI4 MemVar_C0F044
  loc_B5D01C: LitStr "ranks\"
  loc_B5D01F: ConcatStr
  loc_B5D020: FStStrNoPop var_F0
  loc_B5D023: ILdRf var_EC
  loc_B5D026: ConcatStr
  loc_B5D027: FStStrNoPop var_F4
  loc_B5D02A: LitStr ".ini"
  loc_B5D02D: ConcatStr
  loc_B5D02E: CVarStr var_114
  loc_B5D031: LitVarStr var_B4, "fuse_rights"
  loc_B5D036: FStVarCopyObj var_104
  loc_B5D039: FLdRfVar var_104
  loc_B5D03C: LitVarStr var_A4, "rank"
  loc_B5D041: PopAdLdVar
  loc_B5D042: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5D047: FStStrNoPop var_120
  loc_B5D04A: ImpAdLdRf MemVar_C0F3D4
  loc_B5D04D: NewIfNullPr frmSettings
  loc_B5D050: VCallAd Control_ID_ranksText2
  loc_B5D053: FStAdFunc var_11C
  loc_B5D056: FLdPr var_11C
  loc_B5D059: frmSettings.TextBox.Text = from_stack_1
  loc_B5D05E: FFreeStr var_F0 = "": var_EC = "": var_F4 = "": var_118 = ""
  loc_B5D06B: FFreeAd var_E8 = ""
  loc_B5D072: FFreeVar var_104 = ""
  loc_B5D079: LitI2_Byte &HFF
  loc_B5D07B: ImpAdLdRf MemVar_C0F3D4
  loc_B5D07E: NewIfNullPr frmSettings
  loc_B5D081: VCallAd Control_ID_ranksList1
  loc_B5D084: FStAdFunc var_E8
  loc_B5D087: FLdPr var_E8
  loc_B5D08A: frmSettings.ListBox.Enabled = from_stack_1b
  loc_B5D08F: FFree1Ad var_E8
  loc_B5D092: LitI2_Byte &HFF
  loc_B5D094: ImpAdLdRf MemVar_C0F3D4
  loc_B5D097: NewIfNullPr frmSettings
  loc_B5D09A: VCallAd Control_ID_ranksList2
  loc_B5D09D: FStAdFunc var_E8
  loc_B5D0A0: FLdPr var_E8
  loc_B5D0A3: frmSettings.ListBox.Enabled = from_stack_1b
  loc_B5D0A8: FFree1Ad var_E8
  loc_B5D0AB: LitI2_Byte &HFF
  loc_B5D0AD: ImpAdLdRf MemVar_C0F3D4
  loc_B5D0B0: NewIfNullPr frmSettings
  loc_B5D0B3: VCallAd Control_ID_ranksText1
  loc_B5D0B6: FStAdFunc var_E8
  loc_B5D0B9: FLdPr var_E8
  loc_B5D0BC: frmSettings.TextBox.Enabled = from_stack_1b
  loc_B5D0C1: FFree1Ad var_E8
  loc_B5D0C4: LitI2_Byte &HFF
  loc_B5D0C6: ImpAdLdRf MemVar_C0F3D4
  loc_B5D0C9: NewIfNullPr frmSettings
  loc_B5D0CC: VCallAd Control_ID_ranksText2
  loc_B5D0CF: FStAdFunc var_E8
  loc_B5D0D2: FLdPr var_E8
  loc_B5D0D5: frmSettings.TextBox.Enabled = from_stack_1b
  loc_B5D0DA: FFree1Ad var_E8
  loc_B5D0DD: LitI2_Byte &HFF
  loc_B5D0DF: ImpAdLdRf MemVar_C0F3D4
  loc_B5D0E2: NewIfNullPr frmSettings
  loc_B5D0E5: VCallAd Control_ID_ranksCheck1
  loc_B5D0E8: FStAdFunc var_E8
  loc_B5D0EB: FLdPr var_E8
  loc_B5D0EE: frmSettings.CheckBox.Enabled = from_stack_1b
  loc_B5D0F3: FFree1Ad var_E8
  loc_B5D0F6: LitI2_Byte &HFF
  loc_B5D0F8: ImpAdLdRf MemVar_C0F3D4
  loc_B5D0FB: NewIfNullPr frmSettings
  loc_B5D0FE: VCallAd Control_ID_ranksCheck2
  loc_B5D101: FStAdFunc var_E8
  loc_B5D104: FLdPr var_E8
  loc_B5D107: frmSettings.CheckBox.Enabled = from_stack_1b
  loc_B5D10C: FFree1Ad var_E8
  loc_B5D10F: LitI2_Byte &HFF
  loc_B5D111: ImpAdLdRf MemVar_C0F3D4
  loc_B5D114: NewIfNullPr frmSettings
  loc_B5D117: VCallAd Control_ID_ranksCheck3
  loc_B5D11A: FStAdFunc var_E8
  loc_B5D11D: FLdPr var_E8
  loc_B5D120: frmSettings.CheckBox.Enabled = from_stack_1b
  loc_B5D125: FFree1Ad var_E8
  loc_B5D128: LitI2_Byte &HFF
  loc_B5D12A: ImpAdLdRf MemVar_C0F3D4
  loc_B5D12D: NewIfNullPr frmSettings
  loc_B5D130: VCallAd Control_ID_ranksCheck4
  loc_B5D133: FStAdFunc var_E8
  loc_B5D136: FLdPr var_E8
  loc_B5D139: frmSettings.CheckBox.Enabled = from_stack_1b
  loc_B5D13E: FFree1Ad var_E8
  loc_B5D141: LitI2_Byte &HFF
  loc_B5D143: ImpAdLdRf MemVar_C0F3D4
  loc_B5D146: NewIfNullPr frmSettings
  loc_B5D149: VCallAd Control_ID_ranksCheck5
  loc_B5D14C: FStAdFunc var_E8
  loc_B5D14F: FLdPr var_E8
  loc_B5D152: frmSettings.CheckBox.Enabled = from_stack_1b
  loc_B5D157: FFree1Ad var_E8
  loc_B5D15A: ExitProcHresult
End Sub

Private Sub ranksCommand1_Click() 'B4799C
  'Data Table: 54EE7C
  loc_B47298: FLdRfVar var_9A
  loc_B4729B: ImpAdLdI4 MemVar_C0F044
  loc_B4729E: LitStr "ranks\"
  loc_B472A1: ConcatStr
  loc_B472A2: FStStrNoPop var_90
  loc_B472A5: FLdRfVar var_8C
  loc_B472A8: FLdPrThis
  loc_B472A9: VCallAd Control_ID_ranksCombo1
  loc_B472AC: FStAdFunc var_88
  loc_B472AF: FLdPr var_88
  loc_B472B2:  = Me.Text
  loc_B472B7: ILdRf var_8C
  loc_B472BA: ConcatStr
  loc_B472BB: FStStrNoPop var_94
  loc_B472BE: LitStr ".ini"
  loc_B472C1: ConcatStr
  loc_B472C2: FStStrNoPop var_98
  loc_B472C5: ImpAdLdRf MemVar_C0F040
  loc_B472C8: NewIfNullPr IFileSystem3
  loc_B472CB: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B472D0: FLdI2 var_9A
  loc_B472D3: LitI2_Byte &HFF
  loc_B472D5: EqI2
  loc_B472D6: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_B472E1: FFree1Ad var_88
  loc_B472E4: BranchF loc_B4799A
  loc_B472E7: LitVarStr var_BC, ","
  loc_B472EC: FStVarCopy
  loc_B472F0: LitVarI2 var_EC, 0
  loc_B472F5: FLdRfVar var_CC
  loc_B472F8: LitVarI2 var_DC, 58
  loc_B472FD: ForVar var_10C
  loc_B47303: FLdRfVar var_9A
  loc_B47306: FLdRfVar var_CC
  loc_B47309: CI2Var
  loc_B4730A: FLdPrThis
  loc_B4730B: VCallAd Control_ID_ranksList1
  loc_B4730E: FStAdFunc var_88
  loc_B47311: FLdPr var_88
  loc_B47314:  = Me.Selected
  loc_B47319: FLdI2 var_9A
  loc_B4731C: LitI2_Byte &HFF
  loc_B4731E: EqI2
  loc_B4731F: FFree1Ad var_88
  loc_B47322: BranchF loc_B4736F
  loc_B47325: FLdRfVar var_8C
  loc_B47328: FLdRfVar var_CC
  loc_B4732B: CI2Var
  loc_B4732C: FLdPrThis
  loc_B4732D: VCallAd Control_ID_ranksList1
  loc_B47330: FStAdFunc var_88
  loc_B47333: FLdPr var_88
  loc_B47336: from_stack_2 = Me.List(from_stack_1)
  loc_B4733B: FLdRfVar var_AC
  loc_B4733E: LitI4 0
  loc_B47343: LitI4 -1
  loc_B47348: LitI4 1
  loc_B4734D: LitStr ","
  loc_B47350: LitStr ":"
  loc_B47353: ILdRf var_8C
  loc_B47356: ImpAdCallI2 Replace(, , , , , )
  loc_B4735B: CVarStr var_11C
  loc_B4735E: ConcatVar var_12C
  loc_B47362: FStVar var_AC
  loc_B47366: FFree1Str var_8C
  loc_B47369: FFree1Ad var_88
  loc_B4736C: FFree1Var var_11C = ""
  loc_B4736F: FLdRfVar var_CC
  loc_B47372: NextStepVar var_10C
  loc_B47378: LitI4 0
  loc_B4737D: LitI4 -1
  loc_B47382: LitI4 1
  loc_B47387: LitStr ","
  loc_B4738A: LitStr ",,"
  loc_B4738D: FLdRfVar var_AC
  loc_B47390: CStrVarVal var_8C
  loc_B47394: ImpAdCallI2 Replace(, , , , , )
  loc_B47399: CVarStr var_11C
  loc_B4739C: FStVar var_AC
  loc_B473A0: FFree1Str var_8C
  loc_B473A3: ImpAdLdI4 MemVar_C0F044
  loc_B473A6: LitStr "ranks\"
  loc_B473A9: ConcatStr
  loc_B473AA: FStStrNoPop var_90
  loc_B473AD: FLdRfVar var_8C
  loc_B473B0: FLdPrThis
  loc_B473B1: VCallAd Control_ID_ranksCombo1
  loc_B473B4: FStAdFunc var_88
  loc_B473B7: FLdPr var_88
  loc_B473BA:  = Me.Text
  loc_B473BF: ILdRf var_8C
  loc_B473C2: ConcatStr
  loc_B473C3: FStStrNoPop var_94
  loc_B473C6: LitStr ".ini"
  loc_B473C9: ConcatStr
  loc_B473CA: FStStrNoPop var_130
  loc_B473CD: FLdRfVar var_AC
  loc_B473D0: CStrVarVal var_98
  loc_B473D4: LitStr "speech_cmd"
  loc_B473D7: LitStr "rank"
  loc_B473DA: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B473DF: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B473EC: FFree1Ad var_88
  loc_B473EF: FLdRfVar var_9A
  loc_B473F2: LitI2_Byte 0
  loc_B473F4: FLdPrThis
  loc_B473F5: VCallAd Control_ID_ranksList2
  loc_B473F8: FStAdFunc var_88
  loc_B473FB: FLdPr var_88
  loc_B473FE:  = Me.Selected
  loc_B47403: FLdI2 var_9A
  loc_B47406: LitI2_Byte &HFF
  loc_B47408: EqI2
  loc_B47409: FFree1Ad var_88
  loc_B4740C: BranchF loc_B4741B
  loc_B4740F: LitVarStr var_BC, ",alert"
  loc_B47414: FStVarCopy
  loc_B47418: Branch loc_B47424
  loc_B4741B: LitVarStr var_BC, vbNullString
  loc_B47420: FStVarCopy
  loc_B47424: LitVar_Missing var_150
  loc_B47427: LitVar_Missing var_12C
  loc_B4742A: LitVar_Missing var_11C
  loc_B4742D: LitI4 0
  loc_B47432: FLdRfVar var_140
  loc_B47435: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B4743A: FFreeVar var_11C = "": var_12C = ""
  loc_B47443: FLdRfVar var_9A
  loc_B47446: LitI2_Byte 1
  loc_B47448: FLdPrThis
  loc_B47449: VCallAd Control_ID_ranksList2
  loc_B4744C: FStAdFunc var_88
  loc_B4744F: FLdPr var_88
  loc_B47452:  = Me.Selected
  loc_B47457: FLdI2 var_9A
  loc_B4745A: LitI2_Byte &HFF
  loc_B4745C: EqI2
  loc_B4745D: FFree1Ad var_88
  loc_B47460: BranchF loc_B47473
  loc_B47463: FLdRfVar var_140
  loc_B47466: LitVarStr var_BC, ",ban"
  loc_B4746B: ConcatVar var_11C
  loc_B4746F: FStVar var_140
  loc_B47473: LitVar_Missing var_150
  loc_B47476: LitVar_Missing var_12C
  loc_B47479: LitVar_Missing var_11C
  loc_B4747C: LitI4 0
  loc_B47481: FLdRfVar var_140
  loc_B47484: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B47489: FFreeVar var_11C = "": var_12C = ""
  loc_B47492: FLdRfVar var_9A
  loc_B47495: LitI2_Byte 2
  loc_B47497: FLdPrThis
  loc_B47498: VCallAd Control_ID_ranksList2
  loc_B4749B: FStAdFunc var_88
  loc_B4749E: FLdPr var_88
  loc_B474A1:  = Me.Selected
  loc_B474A6: FLdI2 var_9A
  loc_B474A9: LitI2_Byte &HFF
  loc_B474AB: EqI2
  loc_B474AC: FFree1Ad var_88
  loc_B474AF: BranchF loc_B474C2
  loc_B474B2: FLdRfVar var_140
  loc_B474B5: LitVarStr var_BC, ",kick"
  loc_B474BA: ConcatVar var_11C
  loc_B474BE: FStVar var_140
  loc_B474C2: LitVar_Missing var_150
  loc_B474C5: LitVar_Missing var_12C
  loc_B474C8: LitVar_Missing var_11C
  loc_B474CB: LitI4 0
  loc_B474D0: FLdRfVar var_140
  loc_B474D3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B474D8: FFreeVar var_11C = "": var_12C = ""
  loc_B474E1: FLdRfVar var_9A
  loc_B474E4: LitI2_Byte 3
  loc_B474E6: FLdPrThis
  loc_B474E7: VCallAd Control_ID_ranksList2
  loc_B474EA: FStAdFunc var_88
  loc_B474ED: FLdPr var_88
  loc_B474F0:  = Me.Selected
  loc_B474F5: FLdI2 var_9A
  loc_B474F8: LitI2_Byte &HFF
  loc_B474FA: EqI2
  loc_B474FB: FFree1Ad var_88
  loc_B474FE: BranchF loc_B47511
  loc_B47501: FLdRfVar var_140
  loc_B47504: LitVarStr var_BC, ",roomalert"
  loc_B47509: ConcatVar var_11C
  loc_B4750D: FStVar var_140
  loc_B47511: LitVar_Missing var_150
  loc_B47514: LitVar_Missing var_12C
  loc_B47517: LitVar_Missing var_11C
  loc_B4751A: LitI4 0
  loc_B4751F: FLdRfVar var_140
  loc_B47522: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B47527: FFreeVar var_11C = "": var_12C = ""
  loc_B47530: FLdRfVar var_9A
  loc_B47533: LitI2_Byte 4
  loc_B47535: FLdPrThis
  loc_B47536: VCallAd Control_ID_ranksList2
  loc_B47539: FStAdFunc var_88
  loc_B4753C: FLdPr var_88
  loc_B4753F:  = Me.Selected
  loc_B47544: FLdI2 var_9A
  loc_B47547: LitI2_Byte &HFF
  loc_B47549: EqI2
  loc_B4754A: FFree1Ad var_88
  loc_B4754D: BranchF loc_B47560
  loc_B47550: FLdRfVar var_140
  loc_B47553: LitVarStr var_BC, ",roomkick"
  loc_B47558: ConcatVar var_11C
  loc_B4755C: FStVar var_140
  loc_B47560: LitVar_Missing var_150
  loc_B47563: LitVar_Missing var_12C
  loc_B47566: LitVar_Missing var_11C
  loc_B47569: LitI4 0
  loc_B4756E: FLdRfVar var_140
  loc_B47571: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B47576: FFreeVar var_11C = "": var_12C = ""
  loc_B4757F: ImpAdLdI4 MemVar_C0F044
  loc_B47582: LitStr "ranks\"
  loc_B47585: ConcatStr
  loc_B47586: FStStrNoPop var_90
  loc_B47589: FLdRfVar var_8C
  loc_B4758C: FLdPrThis
  loc_B4758D: VCallAd Control_ID_ranksCombo1
  loc_B47590: FStAdFunc var_88
  loc_B47593: FLdPr var_88
  loc_B47596:  = Me.Text
  loc_B4759B: ILdRf var_8C
  loc_B4759E: ConcatStr
  loc_B4759F: FStStrNoPop var_94
  loc_B475A2: LitStr ".ini"
  loc_B475A5: ConcatStr
  loc_B475A6: FStStrNoPop var_130
  loc_B475A9: FLdRfVar var_140
  loc_B475AC: CStrVarVal var_98
  loc_B475B0: LitStr "mod_tool"
  loc_B475B3: LitStr "rank"
  loc_B475B6: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B475BB: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B475C8: FFree1Ad var_88
  loc_B475CB: FLdRfVar var_8C
  loc_B475CE: FLdPrThis
  loc_B475CF: VCallAd Control_ID_ranksText1
  loc_B475D2: FStAdFunc var_88
  loc_B475D5: FLdPr var_88
  loc_B475D8:  = Me.Text
  loc_B475DD: LitI4 0
  loc_B475E2: LitI4 -1
  loc_B475E7: LitI4 1
  loc_B475EC: LitStr ";"
  loc_B475EF: LitStr vbCrLf
  loc_B475F2: ILdRf var_8C
  loc_B475F5: ImpAdCallI2 Replace(, , , , , )
  loc_B475FA: CVarStr var_11C
  loc_B475FD: FStVar var_160
  loc_B47601: FFree1Str var_8C
  loc_B47604: FFree1Ad var_88
  loc_B47607: LitI4 0
  loc_B4760C: LitI4 -1
  loc_B47611: LitI4 1
  loc_B47616: LitStr ";"
  loc_B47619: LitStr ";;"
  loc_B4761C: FLdRfVar var_160
  loc_B4761F: CStrVarVal var_8C
  loc_B47623: ImpAdCallI2 Replace(, , , , , )
  loc_B47628: CVarStr var_11C
  loc_B4762B: FStVar var_160
  loc_B4762F: FFree1Str var_8C
  loc_B47632: LitI4 0
  loc_B47637: LitI4 -1
  loc_B4763C: LitI4 1
  loc_B47641: LitStr ";"
  loc_B47644: LitStr ";;"
  loc_B47647: FLdRfVar var_160
  loc_B4764A: CStrVarVal var_8C
  loc_B4764E: ImpAdCallI2 Replace(, , , , , )
  loc_B47653: CVarStr var_11C
  loc_B47656: FStVar var_160
  loc_B4765A: FFree1Str var_8C
  loc_B4765D: LitI4 0
  loc_B47662: LitI4 -1
  loc_B47667: LitI4 1
  loc_B4766C: LitStr ";"
  loc_B4766F: LitStr ";;"
  loc_B47672: FLdRfVar var_160
  loc_B47675: CStrVarVal var_8C
  loc_B47679: ImpAdCallI2 Replace(, , , , , )
  loc_B4767E: CVarStr var_11C
  loc_B47681: FStVar var_160
  loc_B47685: FFree1Str var_8C
  loc_B47688: LitI4 1
  loc_B4768D: FLdRfVar var_160
  loc_B47690: FLdRfVar var_11C
  loc_B47693: ImpAdCallFPR4  = Left(, )
  loc_B47698: FLdRfVar var_11C
  loc_B4769B: LitVarStr var_BC, ";"
  loc_B476A0: HardType
  loc_B476A1: NeVarBool
  loc_B476A3: FFree1Var var_11C = ""
  loc_B476A6: BranchF loc_B476B9
  loc_B476A9: LitVarStr var_BC, ";"
  loc_B476AE: FLdRfVar var_160
  loc_B476B1: ConcatVar var_11C
  loc_B476B5: FStVar var_160
  loc_B476B9: LitI4 1
  loc_B476BE: FLdRfVar var_160
  loc_B476C1: FLdRfVar var_11C
  loc_B476C4: ImpAdCallFPR4  = Right(, )
  loc_B476C9: FLdRfVar var_11C
  loc_B476CC: LitVarStr var_BC, ";"
  loc_B476D1: HardType
  loc_B476D2: EqVarBool
  loc_B476D4: FFree1Var var_11C = ""
  loc_B476D7: BranchF loc_B476FE
  loc_B476DA: FLdRfVar var_160
  loc_B476DD: FnLenVar var_11C
  loc_B476E1: LitVarI2 var_BC, 1
  loc_B476E6: SubVar var_12C
  loc_B476EA: CI4Var
  loc_B476EC: FLdRfVar var_160
  loc_B476EF: FLdRfVar var_150
  loc_B476F2: ImpAdCallFPR4  = Left(, )
  loc_B476F7: FLdRfVar var_150
  loc_B476FA: FStVar var_160
  loc_B476FE: ImpAdLdI4 MemVar_C0F044
  loc_B47701: LitStr "ranks\"
  loc_B47704: ConcatStr
  loc_B47705: FStStrNoPop var_90
  loc_B47708: FLdRfVar var_8C
  loc_B4770B: FLdPrThis
  loc_B4770C: VCallAd Control_ID_ranksCombo1
  loc_B4770F: FStAdFunc var_88
  loc_B47712: FLdPr var_88
  loc_B47715:  = Me.Text
  loc_B4771A: ILdRf var_8C
  loc_B4771D: ConcatStr
  loc_B4771E: FStStrNoPop var_94
  loc_B47721: LitStr ".ini"
  loc_B47724: ConcatStr
  loc_B47725: FStStrNoPop var_130
  loc_B47728: FLdRfVar var_160
  loc_B4772B: CStrVarVal var_98
  loc_B4772F: LitStr "badges"
  loc_B47732: LitStr "rank"
  loc_B47735: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B4773A: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B47747: FFree1Ad var_88
  loc_B4774A: FLdRfVar var_9A
  loc_B4774D: FLdPrThis
  loc_B4774E: VCallAd Control_ID_ranksCheck1
  loc_B47751: FStAdFunc var_88
  loc_B47754: FLdPr var_88
  loc_B47757:  = Me.Value
  loc_B4775C: ImpAdLdI4 MemVar_C0F044
  loc_B4775F: LitStr "ranks\"
  loc_B47762: ConcatStr
  loc_B47763: FStStrNoPop var_90
  loc_B47766: FLdRfVar var_8C
  loc_B47769: FLdPrThis
  loc_B4776A: VCallAd Control_ID_ranksCombo1
  loc_B4776D: FStAdFunc var_164
  loc_B47770: FLdPr var_164
  loc_B47773:  = Me.Text
  loc_B47778: ILdRf var_8C
  loc_B4777B: ConcatStr
  loc_B4777C: FStStrNoPop var_94
  loc_B4777F: LitStr ".ini"
  loc_B47782: ConcatStr
  loc_B47783: FStStrNoPop var_130
  loc_B47786: FLdI2 var_9A
  loc_B47789: CStrUI1
  loc_B4778B: FStStrNoPop var_98
  loc_B4778E: LitStr "admin_catalogue"
  loc_B47791: LitStr "rank"
  loc_B47794: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B47799: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B477A6: FFreeAd var_88 = ""
  loc_B477AD: FLdRfVar var_9A
  loc_B477B0: FLdPrThis
  loc_B477B1: VCallAd Control_ID_ranksCheck2
  loc_B477B4: FStAdFunc var_88
  loc_B477B7: FLdPr var_88
  loc_B477BA:  = Me.Value
  loc_B477BF: ImpAdLdI4 MemVar_C0F044
  loc_B477C2: LitStr "ranks\"
  loc_B477C5: ConcatStr
  loc_B477C6: FStStrNoPop var_90
  loc_B477C9: FLdRfVar var_8C
  loc_B477CC: FLdPrThis
  loc_B477CD: VCallAd Control_ID_ranksCombo1
  loc_B477D0: FStAdFunc var_164
  loc_B477D3: FLdPr var_164
  loc_B477D6:  = Me.Text
  loc_B477DB: ILdRf var_8C
  loc_B477DE: ConcatStr
  loc_B477DF: FStStrNoPop var_94
  loc_B477E2: LitStr ".ini"
  loc_B477E5: ConcatStr
  loc_B477E6: FStStrNoPop var_130
  loc_B477E9: FLdI2 var_9A
  loc_B477EC: CStrUI1
  loc_B477EE: FStStrNoPop var_98
  loc_B477F1: LitStr "see_room_owner"
  loc_B477F4: LitStr "rank"
  loc_B477F7: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B477FC: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B47809: FFreeAd var_88 = ""
  loc_B47810: FLdRfVar var_9A
  loc_B47813: FLdPrThis
  loc_B47814: VCallAd Control_ID_ranksCheck3
  loc_B47817: FStAdFunc var_88
  loc_B4781A: FLdPr var_88
  loc_B4781D:  = Me.Value
  loc_B47822: ImpAdLdI4 MemVar_C0F044
  loc_B47825: LitStr "ranks\"
  loc_B47828: ConcatStr
  loc_B47829: FStStrNoPop var_90
  loc_B4782C: FLdRfVar var_8C
  loc_B4782F: FLdPrThis
  loc_B47830: VCallAd Control_ID_ranksCombo1
  loc_B47833: FStAdFunc var_164
  loc_B47836: FLdPr var_164
  loc_B47839:  = Me.Text
  loc_B4783E: ILdRf var_8C
  loc_B47841: ConcatStr
  loc_B47842: FStStrNoPop var_94
  loc_B47845: LitStr ".ini"
  loc_B47848: ConcatStr
  loc_B47849: FStStrNoPop var_130
  loc_B4784C: FLdI2 var_9A
  loc_B4784F: CStrUI1
  loc_B47851: FStStrNoPop var_98
  loc_B47854: LitStr "enter_any_room"
  loc_B47857: LitStr "rank"
  loc_B4785A: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B4785F: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B4786C: FFreeAd var_88 = ""
  loc_B47873: FLdRfVar var_9A
  loc_B47876: FLdPrThis
  loc_B47877: VCallAd Control_ID_ranksCheck4
  loc_B4787A: FStAdFunc var_88
  loc_B4787D: FLdPr var_88
  loc_B47880:  = Me.Value
  loc_B47885: ImpAdLdI4 MemVar_C0F044
  loc_B47888: LitStr "ranks\"
  loc_B4788B: ConcatStr
  loc_B4788C: FStStrNoPop var_90
  loc_B4788F: FLdRfVar var_8C
  loc_B47892: FLdPrThis
  loc_B47893: VCallAd Control_ID_ranksCombo1
  loc_B47896: FStAdFunc var_164
  loc_B47899: FLdPr var_164
  loc_B4789C:  = Me.Text
  loc_B478A1: ILdRf var_8C
  loc_B478A4: ConcatStr
  loc_B478A5: FStStrNoPop var_94
  loc_B478A8: LitStr ".ini"
  loc_B478AB: ConcatStr
  loc_B478AC: FStStrNoPop var_130
  loc_B478AF: FLdI2 var_9A
  loc_B478B2: CStrUI1
  loc_B478B4: FStStrNoPop var_98
  loc_B478B7: LitStr "recrieve_cfh"
  loc_B478BA: LitStr "rank"
  loc_B478BD: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B478C2: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B478CF: FFreeAd var_88 = ""
  loc_B478D6: FLdRfVar var_9A
  loc_B478D9: FLdPrThis
  loc_B478DA: VCallAd Control_ID_ranksCheck5
  loc_B478DD: FStAdFunc var_88
  loc_B478E0: FLdPr var_88
  loc_B478E3:  = Me.Value
  loc_B478E8: ImpAdLdI4 MemVar_C0F044
  loc_B478EB: LitStr "ranks\"
  loc_B478EE: ConcatStr
  loc_B478EF: FStStrNoPop var_90
  loc_B478F2: FLdRfVar var_8C
  loc_B478F5: FLdPrThis
  loc_B478F6: VCallAd Control_ID_ranksCombo1
  loc_B478F9: FStAdFunc var_164
  loc_B478FC: FLdPr var_164
  loc_B478FF:  = Me.Text
  loc_B47904: ILdRf var_8C
  loc_B47907: ConcatStr
  loc_B47908: FStStrNoPop var_94
  loc_B4790B: LitStr ".ini"
  loc_B4790E: ConcatStr
  loc_B4790F: FStStrNoPop var_130
  loc_B47912: FLdI2 var_9A
  loc_B47915: CStrUI1
  loc_B47917: FStStrNoPop var_98
  loc_B4791A: LitStr "rights_in_any_room"
  loc_B4791D: LitStr "rank"
  loc_B47920: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B47925: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B47932: FFreeAd var_88 = ""
  loc_B47939: FLdRfVar var_8C
  loc_B4793C: FLdPrThis
  loc_B4793D: VCallAd Control_ID_ranksText2
  loc_B47940: FStAdFunc var_88
  loc_B47943: FLdPr var_88
  loc_B47946:  = Me.Text
  loc_B4794B: ImpAdLdI4 MemVar_C0F044
  loc_B4794E: LitStr "ranks\"
  loc_B47951: ConcatStr
  loc_B47952: FStStrNoPop var_94
  loc_B47955: FLdRfVar var_90
  loc_B47958: FLdPrThis
  loc_B47959: VCallAd Control_ID_ranksCombo1
  loc_B4795C: FStAdFunc var_164
  loc_B4795F: FLdPr var_164
  loc_B47962:  = Me.Text
  loc_B47967: ILdRf var_90
  loc_B4796A: ConcatStr
  loc_B4796B: FStStrNoPop var_98
  loc_B4796E: LitStr ".ini"
  loc_B47971: ConcatStr
  loc_B47972: FStStrNoPop var_130
  loc_B47975: ILdRf var_8C
  loc_B47978: LitStr "fuse_rights"
  loc_B4797B: LitStr "rank"
  loc_B4797E: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B47983: FFreeStr var_94 = "": var_90 = "": var_98 = "": var_8C = ""
  loc_B47990: FFreeAd var_88 = ""
  loc_B47997: Branch loc_B4799A
  loc_B4799A: ExitProcHresult
  loc_B4799B: CR8I2
End Sub

Private Sub ranksCommand2_Click() 'B1D82C
  'Data Table: 54EE7C
  loc_B1D7C0: LitI2_Byte &HB
  loc_B1D7C2: FLdPrThis
  loc_B1D7C3: Me.MousePointer = from_stack_1
  loc_B1D7C8: LitI2_Byte 0
  loc_B1D7CA: FLdPrThis
  loc_B1D7CB: VCallAd Control_ID_ranksCommand1
  loc_B1D7CE: FStAdFunc var_88
  loc_B1D7D1: FLdPr var_88
  loc_B1D7D4: Me.Enabled = from_stack_1b
  loc_B1D7D9: FFree1Ad var_88
  loc_B1D7DC: LitI2_Byte 0
  loc_B1D7DE: FLdPrThis
  loc_B1D7DF: VCallAd Control_ID_ranksCommand2
  loc_B1D7E2: FStAdFunc var_88
  loc_B1D7E5: FLdPr var_88
  loc_B1D7E8: Me.Enabled = from_stack_1b
  loc_B1D7ED: FFree1Ad var_88
  loc_B1D7F0: FLdRfVar var_98
  loc_B1D7F3: ImpAdCallFPR4 Proc_27_9_B65BF8()
  loc_B1D7F8: FFree1Var var_98 = ""
  loc_B1D7FB: LitI2_Byte &HFF
  loc_B1D7FD: FLdPrThis
  loc_B1D7FE: VCallAd Control_ID_ranksCommand1
  loc_B1D801: FStAdFunc var_88
  loc_B1D804: FLdPr var_88
  loc_B1D807: Me.Enabled = from_stack_1b
  loc_B1D80C: FFree1Ad var_88
  loc_B1D80F: LitI2_Byte &HFF
  loc_B1D811: FLdPrThis
  loc_B1D812: VCallAd Control_ID_ranksCommand2
  loc_B1D815: FStAdFunc var_88
  loc_B1D818: FLdPr var_88
  loc_B1D81B: Me.Enabled = from_stack_1b
  loc_B1D820: FFree1Ad var_88
  loc_B1D823: LitI2_Byte 0
  loc_B1D825: FLdPrThis
  loc_B1D826: Me.MousePointer = from_stack_1
  loc_B1D82B: ExitProcHresult
End Sub

Private Sub Label3_Click() 'B19288
  'Data Table: 54EE7C
  loc_B1927C: FLdRfVar var_94
  loc_B1927F: ImpAdCallFPR4 Proc_27_3_B3CC40()
  loc_B19284: FFree1Var var_94 = ""
  loc_B19287: ExitProcHresult
End Sub

Private Sub Label3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1A4A8
  'Data Table: 54EE7C
  loc_B1A47C: LitI4 &H7F89
  loc_B1A481: LitI4 0
  loc_B1A486: ImpAdCallI2 LoadCursor(, )
  loc_B1A48B: FStR4 var_8C
  loc_B1A48E: SetLastSystemError
  loc_B1A48F: ILdRf var_8C
  loc_B1A492: FStR4 var_88
  loc_B1A495: ILdRf var_88
  loc_B1A498: CBoolI4
  loc_B1A49A: BranchF loc_B1A4A6
  loc_B1A49D: ILdRf var_88
  loc_B1A4A0: ImpAdCallFPR4 SetCursor()
  loc_B1A4A5: SetLastSystemError
  loc_B1A4A6: ExitProcHresult
End Sub

Private Sub Label4_Click() 'B192C8
  'Data Table: 54EE7C
  loc_B192BC: FLdRfVar var_94
  loc_B192BF: ImpAdCallFPR4 Proc_27_4_B4464C()
  loc_B192C4: FFree1Var var_94 = ""
  loc_B192C7: ExitProcHresult
End Sub

Private Sub Label4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1A618
  'Data Table: 54EE7C
  loc_B1A5EC: LitI4 &H7F89
  loc_B1A5F1: LitI4 0
  loc_B1A5F6: ImpAdCallI2 LoadCursor(, )
  loc_B1A5FB: FStR4 var_8C
  loc_B1A5FE: SetLastSystemError
  loc_B1A5FF: ILdRf var_8C
  loc_B1A602: FStR4 var_88
  loc_B1A605: ILdRf var_88
  loc_B1A608: CBoolI4
  loc_B1A60A: BranchF loc_B1A616
  loc_B1A60D: ILdRf var_88
  loc_B1A610: ImpAdCallFPR4 SetCursor()
  loc_B1A615: SetLastSystemError
  loc_B1A616: ExitProcHresult
End Sub

Private Sub Label5_Click() 'B191C8
  'Data Table: 54EE7C
  loc_B191BC: FLdRfVar var_94
  loc_B191BF: ImpAdCallFPR4 Proc_27_5_B32180()
  loc_B191C4: FFree1Var var_94 = ""
  loc_B191C7: ExitProcHresult
End Sub

Private Sub Label5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1A7E4
  'Data Table: 54EE7C
  loc_B1A7B8: LitI4 &H7F89
  loc_B1A7BD: LitI4 0
  loc_B1A7C2: ImpAdCallI2 LoadCursor(, )
  loc_B1A7C7: FStR4 var_8C
  loc_B1A7CA: SetLastSystemError
  loc_B1A7CB: ILdRf var_8C
  loc_B1A7CE: FStR4 var_88
  loc_B1A7D1: ILdRf var_88
  loc_B1A7D4: CBoolI4
  loc_B1A7D6: BranchF loc_B1A7E2
  loc_B1A7D9: ILdRf var_88
  loc_B1A7DC: ImpAdCallFPR4 SetCursor()
  loc_B1A7E1: SetLastSystemError
  loc_B1A7E2: ExitProcHresult
  loc_B1A7E3: UMiR8
End Sub

Private Sub Label6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B18438
  'Data Table: 54EE7C
  loc_B18434: ExitProcHresult
End Sub

Private Sub Label7_Click() 'B18C88
  'Data Table: 54EE7C
  loc_B18C7C: FLdRfVar var_94
  loc_B18C7F: ImpAdCallFPR4 Proc_27_9_B65BF8()
  loc_B18C84: FFree1Var var_94 = ""
  loc_B18C87: ExitProcHresult
End Sub

Private Sub Label7_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1A674
  'Data Table: 54EE7C
  loc_B1A648: LitI4 &H7F89
  loc_B1A64D: LitI4 0
  loc_B1A652: ImpAdCallI2 LoadCursor(, )
  loc_B1A657: FStR4 var_8C
  loc_B1A65A: SetLastSystemError
  loc_B1A65B: ILdRf var_8C
  loc_B1A65E: FStR4 var_88
  loc_B1A661: ILdRf var_88
  loc_B1A664: CBoolI4
  loc_B1A666: BranchF loc_B1A672
  loc_B1A669: ILdRf var_88
  loc_B1A66C: ImpAdCallFPR4 SetCursor()
  loc_B1A671: SetLastSystemError
  loc_B1A672: ExitProcHresult
  loc_B1A673: UMiR8
End Sub

Private Sub Label8_Click() 'B18988
  'Data Table: 54EE7C
  loc_B1897C: FLdRfVar var_94
  loc_B1897F: ImpAdCallFPR4 Proc_27_10_B3F3D4()
  loc_B18984: FFree1Var var_94 = ""
  loc_B18987: ExitProcHresult
End Sub

Private Sub Label8_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1A44C
  'Data Table: 54EE7C
  loc_B1A420: LitI4 &H7F89
  loc_B1A425: LitI4 0
  loc_B1A42A: ImpAdCallI2 LoadCursor(, )
  loc_B1A42F: FStR4 var_8C
  loc_B1A432: SetLastSystemError
  loc_B1A433: ILdRf var_8C
  loc_B1A436: FStR4 var_88
  loc_B1A439: ILdRf var_88
  loc_B1A43C: CBoolI4
  loc_B1A43E: BranchF loc_B1A44A
  loc_B1A441: ILdRf var_88
  loc_B1A444: ImpAdCallFPR4 SetCursor()
  loc_B1A449: SetLastSystemError
  loc_B1A44A: ExitProcHresult
End Sub

Private Sub Label9_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B18368
  'Data Table: 54EE7C
  loc_B18364: ExitProcHresult
  loc_B18365: FnStrComp3Var
End Sub

Private Sub filterLabel2_Click() 'B2DB90
  'Data Table: 54EE7C
  loc_B2D8D4: FLdRfVar var_90
  loc_B2D8D7: FLdPrThis
  loc_B2D8D8: VCallAd Control_ID_filterList1
  loc_B2D8DB: FStAdFunc var_8C
  loc_B2D8DE: FLdPr var_8C
  loc_B2D8E1:  = Me.Text
  loc_B2D8E6: ILdRf var_90
  loc_B2D8E9: LitStr vbNullString
  loc_B2D8EC: EqStr
  loc_B2D8EE: FFree1Str var_90
  loc_B2D8F1: FFree1Ad var_8C
  loc_B2D8F4: BranchF loc_B2D8F8
  loc_B2D8F7: ExitProcHresult
  loc_B2D8F8: FLdRfVar var_94
  loc_B2D8FB: FLdRfVar var_8C
  loc_B2D8FE: LitI4 0
  loc_B2D903: LitI2_Byte 0
  loc_B2D905: LitI4 1
  loc_B2D90A: ImpAdLdI4 MemVar_C0F044
  loc_B2D90D: LitStr "configuration\bobbafilter.ini"
  loc_B2D910: ConcatStr
  loc_B2D911: FStStrNoPop var_90
  loc_B2D914: ImpAdLdRf MemVar_C0F040
  loc_B2D917: NewIfNullPr IFileSystem3
  loc_B2D91A: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2D91F: FLdPr var_8C
  loc_B2D922:  = Me.ReadAll
  loc_B2D927: FLdZeroAd var_94
  loc_B2D92A: FStStr var_88
  loc_B2D92D: FFree1Str var_90
  loc_B2D930: FFree1Ad var_8C
  loc_B2D933: LitI4 0
  loc_B2D938: LitI4 -1
  loc_B2D93D: LitI4 1
  loc_B2D942: LitStr vbCrLf
  loc_B2D945: LitStr vbCrLf
  loc_B2D948: LitStr vbCrLf
  loc_B2D94B: ConcatStr
  loc_B2D94C: FStStrNoPop var_90
  loc_B2D94F: ILdRf var_88
  loc_B2D952: ImpAdCallI2 Replace(, , , , , )
  loc_B2D957: FStStr var_88
  loc_B2D95A: FFree1Str var_90
  loc_B2D95D: LitI4 0
  loc_B2D962: LitI4 -1
  loc_B2D967: LitI4 1
  loc_B2D96C: LitStr vbCrLf
  loc_B2D96F: LitStr vbCrLf
  loc_B2D972: LitStr vbCrLf
  loc_B2D975: ConcatStr
  loc_B2D976: FStStrNoPop var_90
  loc_B2D979: ILdRf var_88
  loc_B2D97C: ImpAdCallI2 Replace(, , , , , )
  loc_B2D981: FStStr var_88
  loc_B2D984: FFree1Str var_90
  loc_B2D987: LitI4 0
  loc_B2D98C: LitI4 -1
  loc_B2D991: LitI4 1
  loc_B2D996: LitStr vbCrLf
  loc_B2D999: LitStr vbCrLf
  loc_B2D99C: LitStr vbCrLf
  loc_B2D99F: ConcatStr
  loc_B2D9A0: FStStrNoPop var_90
  loc_B2D9A3: ILdRf var_88
  loc_B2D9A6: ImpAdCallI2 Replace(, , , , , )
  loc_B2D9AB: FStStr var_88
  loc_B2D9AE: FFree1Str var_90
  loc_B2D9B1: LitI4 1
  loc_B2D9B6: FLdRfVar var_88
  loc_B2D9B9: CVarRef
  loc_B2D9BE: FLdRfVar var_B4
  loc_B2D9C1: ImpAdCallFPR4  = Left(, )
  loc_B2D9C6: FLdRfVar var_B4
  loc_B2D9C9: LitVarStr var_C4, vbCrLf
  loc_B2D9CE: HardType
  loc_B2D9CF: EqVarBool
  loc_B2D9D1: FFree1Var var_B4 = ""
  loc_B2D9D4: BranchF loc_B2D9FD
  loc_B2D9D7: LitVar_Missing var_B4
  loc_B2D9DA: LitI4 2
  loc_B2D9DF: FLdRfVar var_88
  loc_B2D9E2: CVarRef
  loc_B2D9E7: FLdRfVar var_D4
  loc_B2D9EA: ImpAdCallFPR4  = Mid(, , )
  loc_B2D9EF: FLdRfVar var_D4
  loc_B2D9F2: CStrVarTmp
  loc_B2D9F3: FStStr var_88
  loc_B2D9F6: FFreeVar var_B4 = ""
  loc_B2D9FD: LitI4 1
  loc_B2DA02: FLdRfVar var_88
  loc_B2DA05: CVarRef
  loc_B2DA0A: FLdRfVar var_B4
  loc_B2DA0D: ImpAdCallFPR4  = Right(, )
  loc_B2DA12: FLdRfVar var_B4
  loc_B2DA15: LitVarStr var_C4, vbCrLf
  loc_B2DA1A: HardType
  loc_B2DA1B: NeVarBool
  loc_B2DA1D: FFree1Var var_B4 = ""
  loc_B2DA20: BranchF loc_B2DA2D
  loc_B2DA23: ILdRf var_88
  loc_B2DA26: LitStr vbCrLf
  loc_B2DA29: ConcatStr
  loc_B2DA2A: FStStr var_88
  loc_B2DA2D: FLdRfVar var_90
  loc_B2DA30: FLdPrThis
  loc_B2DA31: VCallAd Control_ID_filterList1
  loc_B2DA34: FStAdFunc var_8C
  loc_B2DA37: FLdPr var_8C
  loc_B2DA3A:  = Me.Text
  loc_B2DA3F: LitI4 0
  loc_B2DA44: LitI4 -1
  loc_B2DA49: LitI4 1
  loc_B2DA4E: LitStr vbNullString
  loc_B2DA51: ILdRf var_90
  loc_B2DA54: LitStr vbCrLf
  loc_B2DA57: ConcatStr
  loc_B2DA58: FStStrNoPop var_94
  loc_B2DA5B: ILdRf var_88
  loc_B2DA5E: ImpAdCallI2 Replace(, , , , , )
  loc_B2DA63: FStStr var_88
  loc_B2DA66: FFreeStr var_90 = ""
  loc_B2DA6D: FFree1Ad var_8C
  loc_B2DA70: ILdRf var_88
  loc_B2DA73: FLdRfVar var_8C
  loc_B2DA76: LitI4 0
  loc_B2DA7B: LitI2_Byte 0
  loc_B2DA7D: LitI4 2
  loc_B2DA82: ImpAdLdI4 MemVar_C0F044
  loc_B2DA85: LitStr "configuration\bobbafilter.ini"
  loc_B2DA88: ConcatStr
  loc_B2DA89: FStStrNoPop var_90
  loc_B2DA8C: ImpAdLdRf MemVar_C0F040
  loc_B2DA8F: NewIfNullPr IFileSystem3
  loc_B2DA92: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2DA97: FLdPr var_8C
  loc_B2DA9A: from_stack_2 = Me.Write(from_stack_1v)
  loc_B2DA9F: FFree1Str var_90
  loc_B2DAA2: FFree1Ad var_8C
  loc_B2DAA5: FLdRfVar var_94
  loc_B2DAA8: FLdRfVar var_8C
  loc_B2DAAB: LitI4 0
  loc_B2DAB0: LitI2_Byte 0
  loc_B2DAB2: LitI4 1
  loc_B2DAB7: ImpAdLdI4 MemVar_C0F044
  loc_B2DABA: LitStr "configuration\bobbafilter.ini"
  loc_B2DABD: ConcatStr
  loc_B2DABE: FStStrNoPop var_90
  loc_B2DAC1: ImpAdLdRf MemVar_C0F040
  loc_B2DAC4: NewIfNullPr IFileSystem3
  loc_B2DAC7: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2DACC: FLdPr var_8C
  loc_B2DACF:  = Me.ReadAll
  loc_B2DAD4: LitI4 0
  loc_B2DAD9: LitI4 -1
  loc_B2DADE: LitVarStr var_A4, vbCrLf
  loc_B2DAE3: FStVarCopyObj var_B4
  loc_B2DAE6: FLdRfVar var_B4
  loc_B2DAE9: ILdRf var_94
  loc_B2DAEC: FLdRfVar var_D4
  loc_B2DAEF: ImpAdCallFPR4  = Split(, , , )
  loc_B2DAF4: FLdRfVar var_D4
  loc_B2DAF7: FStVar var_E4
  loc_B2DAFB: FFreeStr var_90 = ""
  loc_B2DB02: FFree1Ad var_8C
  loc_B2DB05: FFree1Var var_B4 = ""
  loc_B2DB08: FLdPrThis
  loc_B2DB09: VCallAd Control_ID_filterList1
  loc_B2DB0C: FStAdFunc var_8C
  loc_B2DB0F: FLdPr var_8C
  loc_B2DB12: Me.Clear
  loc_B2DB17: FFree1Ad var_8C
  loc_B2DB1A: LitVarI2 var_104, 0
  loc_B2DB1F: FLdRfVar var_F4
  loc_B2DB22: FLdRfVar var_E4
  loc_B2DB25: CRefVarAry
  loc_B2DB27: PopAdLd4
  loc_B2DB28: LitI2_Byte 1
  loc_B2DB2A: FnUBound
  loc_B2DB2C: CVarI4
  loc_B2DB30: ForVar var_124
  loc_B2DB36: FLdRfVar var_F4
  loc_B2DB39: CDargRef
  loc_B2DB3D: FLdRfVar var_E4
  loc_B2DB40: VarIndexLdVar
  loc_B2DB46: LitVarStr var_C4, vbNullString
  loc_B2DB4B: HardType
  loc_B2DB4C: NeVarBool
  loc_B2DB4E: FFree1Var var_B4 = ""
  loc_B2DB51: BranchF loc_B2DB84
  loc_B2DB54: LitVar_Missing var_C4
  loc_B2DB57: PopAdLdVar
  loc_B2DB58: FLdRfVar var_F4
  loc_B2DB5B: CDargRef
  loc_B2DB5F: FLdRfVar var_E4
  loc_B2DB62: VarIndexLdVar
  loc_B2DB68: CStrVarVal var_90
  loc_B2DB6C: FLdPrThis
  loc_B2DB6D: VCallAd Control_ID_filterList1
  loc_B2DB70: FStAdFunc var_8C
  loc_B2DB73: FLdPr var_8C
  loc_B2DB76: Me.AddItem from_stack_1, from_stack_2
  loc_B2DB7B: FFree1Str var_90
  loc_B2DB7E: FFree1Ad var_8C
  loc_B2DB81: FFree1Var var_B4 = ""
  loc_B2DB84: FLdRfVar var_F4
  loc_B2DB87: NextStepVar var_124
  loc_B2DB8D: ExitProcHresult
  loc_B2DB8E: FLdPrThis
End Sub

Private Sub filterLabel2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1A89C
  'Data Table: 54EE7C
  loc_B1A870: LitI4 &H7F89
  loc_B1A875: LitI4 0
  loc_B1A87A: ImpAdCallI2 LoadCursor(, )
  loc_B1A87F: FStR4 var_8C
  loc_B1A882: SetLastSystemError
  loc_B1A883: ILdRf var_8C
  loc_B1A886: FStR4 var_88
  loc_B1A889: ILdRf var_88
  loc_B1A88C: CBoolI4
  loc_B1A88E: BranchF loc_B1A89A
  loc_B1A891: ILdRf var_88
  loc_B1A894: ImpAdCallFPR4 SetCursor()
  loc_B1A899: SetLastSystemError
  loc_B1A89A: ExitProcHresult
End Sub

Private Sub filterLabel1_Click() 'B37C88
  'Data Table: 54EE7C
  loc_B3788C: LitVarStr var_98, "enter_bobba_word"
  loc_B37891: PopAdLdVar
  loc_B37892: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B37897: FStStr var_18C
  loc_B3789A: LitVarStr var_A8, "title_bobba_word_win"
  loc_B3789F: PopAdLdVar
  loc_B378A0: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B378A5: FStStr var_190
  loc_B378A8: LitVar_Missing var_168
  loc_B378AB: LitVar_Missing var_148
  loc_B378AE: LitVar_Missing var_128
  loc_B378B1: LitVar_Missing var_108
  loc_B378B4: LitVar_Missing var_E8
  loc_B378B7: FLdZeroAd var_190
  loc_B378BA: CVarStr var_C8
  loc_B378BD: FLdZeroAd var_18C
  loc_B378C0: CVarStr var_B8
  loc_B378C3: ImpAdCallI2 InputBox(, , , , , , )
  loc_B378C8: CVarStr var_188
  loc_B378CB: FStVar var_178
  loc_B378CF: FFreeStr var_18C = ""
  loc_B378D6: FFreeVar var_B8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = ""
  loc_B378E7: FLdRfVar var_190
  loc_B378EA: FLdRfVar var_194
  loc_B378ED: LitI4 0
  loc_B378F2: LitI2_Byte 0
  loc_B378F4: LitI4 1
  loc_B378F9: ImpAdLdI4 MemVar_C0F044
  loc_B378FC: LitStr "configuration\bobbafilter.ini"
  loc_B378FF: ConcatStr
  loc_B37900: FStStrNoPop var_18C
  loc_B37903: ImpAdLdRf MemVar_C0F040
  loc_B37906: NewIfNullPr IFileSystem3
  loc_B37909: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B3790E: FLdPr var_194
  loc_B37911:  = Me.ReadAll
  loc_B37916: FLdZeroAd var_190
  loc_B37919: FStStr var_88
  loc_B3791C: FFree1Str var_18C
  loc_B3791F: FFree1Ad var_194
  loc_B37922: LitI4 0
  loc_B37927: LitI4 -1
  loc_B3792C: LitI4 1
  loc_B37931: LitStr vbCrLf
  loc_B37934: LitStr vbCrLf
  loc_B37937: LitStr vbCrLf
  loc_B3793A: ConcatStr
  loc_B3793B: FStStrNoPop var_18C
  loc_B3793E: ILdRf var_88
  loc_B37941: ImpAdCallI2 Replace(, , , , , )
  loc_B37946: FStStr var_88
  loc_B37949: FFree1Str var_18C
  loc_B3794C: LitI4 0
  loc_B37951: LitI4 -1
  loc_B37956: LitI4 1
  loc_B3795B: LitStr vbCrLf
  loc_B3795E: LitStr vbCrLf
  loc_B37961: LitStr vbCrLf
  loc_B37964: ConcatStr
  loc_B37965: FStStrNoPop var_18C
  loc_B37968: ILdRf var_88
  loc_B3796B: ImpAdCallI2 Replace(, , , , , )
  loc_B37970: FStStr var_88
  loc_B37973: FFree1Str var_18C
  loc_B37976: LitI4 0
  loc_B3797B: LitI4 -1
  loc_B37980: LitI4 1
  loc_B37985: LitStr vbCrLf
  loc_B37988: LitStr vbCrLf
  loc_B3798B: LitStr vbCrLf
  loc_B3798E: ConcatStr
  loc_B3798F: FStStrNoPop var_18C
  loc_B37992: ILdRf var_88
  loc_B37995: ImpAdCallI2 Replace(, , , , , )
  loc_B3799A: FStStr var_88
  loc_B3799D: FFree1Str var_18C
  loc_B379A0: LitI4 1
  loc_B379A5: FLdRfVar var_88
  loc_B379A8: CVarRef
  loc_B379AD: FLdRfVar var_B8
  loc_B379B0: ImpAdCallFPR4  = Left(, )
  loc_B379B5: FLdRfVar var_B8
  loc_B379B8: LitVarStr var_A8, vbCrLf
  loc_B379BD: HardType
  loc_B379BE: EqVarBool
  loc_B379C0: FFree1Var var_B8 = ""
  loc_B379C3: BranchF loc_B379EC
  loc_B379C6: LitVar_Missing var_B8
  loc_B379C9: LitI4 2
  loc_B379CE: FLdRfVar var_88
  loc_B379D1: CVarRef
  loc_B379D6: FLdRfVar var_C8
  loc_B379D9: ImpAdCallFPR4  = Mid(, , )
  loc_B379DE: FLdRfVar var_C8
  loc_B379E1: CStrVarTmp
  loc_B379E2: FStStr var_88
  loc_B379E5: FFreeVar var_B8 = ""
  loc_B379EC: LitI4 1
  loc_B379F1: FLdRfVar var_88
  loc_B379F4: CVarRef
  loc_B379F9: FLdRfVar var_B8
  loc_B379FC: ImpAdCallFPR4  = Right(, )
  loc_B37A01: FLdRfVar var_B8
  loc_B37A04: LitVarStr var_A8, vbCrLf
  loc_B37A09: HardType
  loc_B37A0A: NeVarBool
  loc_B37A0C: FFree1Var var_B8 = ""
  loc_B37A0F: BranchF loc_B37A1C
  loc_B37A12: ILdRf var_88
  loc_B37A15: LitStr vbCrLf
  loc_B37A18: ConcatStr
  loc_B37A19: FStStr var_88
  loc_B37A1C: FLdRfVar var_178
  loc_B37A1F: FnLenVar var_B8
  loc_B37A23: LitVarI2 var_98, 1
  loc_B37A28: AddVar var_C8
  loc_B37A2C: CI4Var
  loc_B37A2E: FLdRfVar var_88
  loc_B37A31: CVarRef
  loc_B37A36: FLdRfVar var_E8
  loc_B37A39: ImpAdCallFPR4  = Left(, )
  loc_B37A3E: FLdRfVar var_E8
  loc_B37A41: FLdRfVar var_178
  loc_B37A44: FLdRfVar var_108
  loc_B37A47: ImpAdCallFPR4  = LCase()
  loc_B37A4C: FLdRfVar var_108
  loc_B37A4F: LitVarStr var_D8, vbCrLf
  loc_B37A54: ConcatVar var_128
  loc_B37A58: EqVar var_148
  loc_B37A5C: LitI4 1
  loc_B37A61: ILdRf var_88
  loc_B37A64: CVarStr var_138
  loc_B37A67: LitVarStr var_F8, vbCrLf
  loc_B37A6C: FLdRfVar var_178
  loc_B37A6F: FLdRfVar var_168
  loc_B37A72: ImpAdCallFPR4  = LCase()
  loc_B37A77: FLdRfVar var_168
  loc_B37A7A: ConcatVar var_188
  loc_B37A7E: LitVarStr var_118, vbCrLf
  loc_B37A83: ConcatVar var_1A4
  loc_B37A87: LitI4 0
  loc_B37A8C: FnInStr4Var
  loc_B37A90: OrVar var_1C4
  loc_B37A94: CBoolVarNull
  loc_B37A96: FFreeVar var_C8 = "": var_108 = "": var_E8 = "": var_128 = "": var_168 = "": var_188 = "": var_1A4 = ""
  loc_B37AA9: BranchF loc_B37AEA
  loc_B37AAC: LitVarStr var_98, "word_already_on_list_msg"
  loc_B37AB1: PopAdLdVar
  loc_B37AB2: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B37AB7: FStStr var_18C
  loc_B37ABA: LitVar_Missing var_108
  loc_B37ABD: LitVar_Missing var_E8
  loc_B37AC0: LitVarStr var_A8, "Server"
  loc_B37AC5: FStVarCopyObj var_C8
  loc_B37AC8: FLdRfVar var_C8
  loc_B37ACB: LitI4 &H10
  loc_B37AD0: FLdZeroAd var_18C
  loc_B37AD3: CVarStr var_B8
  loc_B37AD6: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B37ADB: FFree1Str var_18C
  loc_B37ADE: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_B37AE9: ExitProcHresult
  loc_B37AEA: FLdRfVar var_178
  loc_B37AED: FnLenVar var_B8
  loc_B37AF1: LitVarI2 var_98, 1
  loc_B37AF6: HardType
  loc_B37AF7: LeVarBool
  loc_B37AF9: BranchF loc_B37B3A
  loc_B37AFC: LitVarStr var_98, "word_inacceptable"
  loc_B37B01: PopAdLdVar
  loc_B37B02: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B37B07: FStStr var_18C
  loc_B37B0A: LitVar_Missing var_108
  loc_B37B0D: LitVar_Missing var_E8
  loc_B37B10: LitVarStr var_A8, "Server"
  loc_B37B15: FStVarCopyObj var_C8
  loc_B37B18: FLdRfVar var_C8
  loc_B37B1B: LitI4 &H10
  loc_B37B20: FLdZeroAd var_18C
  loc_B37B23: CVarStr var_B8
  loc_B37B26: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B37B2B: FFree1Str var_18C
  loc_B37B2E: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_B37B39: ExitProcHresult
  loc_B37B3A: ILdRf var_88
  loc_B37B3D: CVarStr var_98
  loc_B37B40: FLdRfVar var_178
  loc_B37B43: FLdRfVar var_B8
  loc_B37B46: ImpAdCallFPR4  = LCase()
  loc_B37B4B: FLdRfVar var_B8
  loc_B37B4E: ConcatVar var_C8
  loc_B37B52: LitVarStr var_A8, vbCrLf
  loc_B37B57: ConcatVar var_E8
  loc_B37B5B: CStrVarTmp
  loc_B37B5C: FStStr var_88
  loc_B37B5F: FFreeVar var_B8 = "": var_C8 = ""
  loc_B37B68: ILdRf var_88
  loc_B37B6B: FLdRfVar var_194
  loc_B37B6E: LitI4 0
  loc_B37B73: LitI2_Byte 0
  loc_B37B75: LitI4 2
  loc_B37B7A: ImpAdLdI4 MemVar_C0F044
  loc_B37B7D: LitStr "configuration\bobbafilter.ini"
  loc_B37B80: ConcatStr
  loc_B37B81: FStStrNoPop var_18C
  loc_B37B84: ImpAdLdRf MemVar_C0F040
  loc_B37B87: NewIfNullPr IFileSystem3
  loc_B37B8A: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B37B8F: FLdPr var_194
  loc_B37B92: from_stack_2 = Me.Write(from_stack_1v)
  loc_B37B97: FFree1Str var_18C
  loc_B37B9A: FFree1Ad var_194
  loc_B37B9D: FLdRfVar var_190
  loc_B37BA0: FLdRfVar var_194
  loc_B37BA3: LitI4 0
  loc_B37BA8: LitI2_Byte 0
  loc_B37BAA: LitI4 1
  loc_B37BAF: ImpAdLdI4 MemVar_C0F044
  loc_B37BB2: LitStr "configuration\bobbafilter.ini"
  loc_B37BB5: ConcatStr
  loc_B37BB6: FStStrNoPop var_18C
  loc_B37BB9: ImpAdLdRf MemVar_C0F040
  loc_B37BBC: NewIfNullPr IFileSystem3
  loc_B37BBF: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B37BC4: FLdPr var_194
  loc_B37BC7:  = Me.ReadAll
  loc_B37BCC: LitI4 0
  loc_B37BD1: LitI4 -1
  loc_B37BD6: LitVarStr var_98, vbCrLf
  loc_B37BDB: FStVarCopyObj var_B8
  loc_B37BDE: FLdRfVar var_B8
  loc_B37BE1: ILdRf var_190
  loc_B37BE4: FLdRfVar var_C8
  loc_B37BE7: ImpAdCallFPR4  = Split(, , , )
  loc_B37BEC: FLdRfVar var_C8
  loc_B37BEF: FStVar var_1D4
  loc_B37BF3: FFreeStr var_18C = ""
  loc_B37BFA: FFree1Ad var_194
  loc_B37BFD: FFree1Var var_B8 = ""
  loc_B37C00: FLdPrThis
  loc_B37C01: VCallAd Control_ID_filterList1
  loc_B37C04: FStAdFunc var_194
  loc_B37C07: FLdPr var_194
  loc_B37C0A: Me.Clear
  loc_B37C0F: FFree1Ad var_194
  loc_B37C12: LitVarI2 var_D8, 0
  loc_B37C17: FLdRfVar var_1E4
  loc_B37C1A: FLdRfVar var_1D4
  loc_B37C1D: CRefVarAry
  loc_B37C1F: PopAdLd4
  loc_B37C20: LitI2_Byte 1
  loc_B37C22: FnUBound
  loc_B37C24: CVarI4
  loc_B37C28: ForVar var_204
  loc_B37C2E: FLdRfVar var_1E4
  loc_B37C31: CDargRef
  loc_B37C35: FLdRfVar var_1D4
  loc_B37C38: VarIndexLdVar
  loc_B37C3E: LitVarStr var_A8, vbNullString
  loc_B37C43: HardType
  loc_B37C44: NeVarBool
  loc_B37C46: FFree1Var var_B8 = ""
  loc_B37C49: BranchF loc_B37C7C
  loc_B37C4C: LitVar_Missing var_A8
  loc_B37C4F: PopAdLdVar
  loc_B37C50: FLdRfVar var_1E4
  loc_B37C53: CDargRef
  loc_B37C57: FLdRfVar var_1D4
  loc_B37C5A: VarIndexLdVar
  loc_B37C60: CStrVarVal var_18C
  loc_B37C64: FLdPrThis
  loc_B37C65: VCallAd Control_ID_filterList1
  loc_B37C68: FStAdFunc var_194
  loc_B37C6B: FLdPr var_194
  loc_B37C6E: Me.AddItem from_stack_1, from_stack_2
  loc_B37C73: FFree1Str var_18C
  loc_B37C76: FFree1Ad var_194
  loc_B37C79: FFree1Var var_B8 = ""
  loc_B37C7C: FLdRfVar var_1E4
  loc_B37C7F: NextStepVar var_204
  loc_B37C85: ExitProcHresult
End Sub

Private Sub filterLabel1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1A788
  'Data Table: 54EE7C
  loc_B1A75C: LitI4 &H7F89
  loc_B1A761: LitI4 0
  loc_B1A766: ImpAdCallI2 LoadCursor(, )
  loc_B1A76B: FStR4 var_8C
  loc_B1A76E: SetLastSystemError
  loc_B1A76F: ILdRf var_8C
  loc_B1A772: FStR4 var_88
  loc_B1A775: ILdRf var_88
  loc_B1A778: CBoolI4
  loc_B1A77A: BranchF loc_B1A786
  loc_B1A77D: ILdRf var_88
  loc_B1A780: ImpAdCallFPR4 SetCursor()
  loc_B1A785: SetLastSystemError
  loc_B1A786: ExitProcHresult
End Sub

Private Sub guestLabel1_Click() 'B19008
  'Data Table: 54EE7C
  loc_B18FFC: FLdRfVar var_94
  loc_B18FFF: ImpAdCallFPR4 Proc_27_6_B4A6E4()
  loc_B19004: FFree1Var var_94 = ""
  loc_B19007: ExitProcHresult
End Sub

Private Sub guestLabel1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1A840
  'Data Table: 54EE7C
  loc_B1A814: LitI4 &H7F89
  loc_B1A819: LitI4 0
  loc_B1A81E: ImpAdCallI2 LoadCursor(, )
  loc_B1A823: FStR4 var_8C
  loc_B1A826: SetLastSystemError
  loc_B1A827: ILdRf var_8C
  loc_B1A82A: FStR4 var_88
  loc_B1A82D: ILdRf var_88
  loc_B1A830: CBoolI4
  loc_B1A832: BranchF loc_B1A83E
  loc_B1A835: ILdRf var_88
  loc_B1A838: ImpAdCallFPR4 SetCursor()
  loc_B1A83D: SetLastSystemError
  loc_B1A83E: ExitProcHresult
End Sub

Private Sub guestLabel2_Click() 'B18F48
  'Data Table: 54EE7C
  loc_B18F3C: FLdRfVar var_94
  loc_B18F3F: ImpAdCallFPR4 Proc_27_7_B4C5DC()
  loc_B18F44: FFree1Var var_94 = ""
  loc_B18F47: ExitProcHresult
End Sub

Private Sub guestLabel2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1A3F0
  'Data Table: 54EE7C
  loc_B1A3C4: LitI4 &H7F89
  loc_B1A3C9: LitI4 0
  loc_B1A3CE: ImpAdCallI2 LoadCursor(, )
  loc_B1A3D3: FStR4 var_8C
  loc_B1A3D6: SetLastSystemError
  loc_B1A3D7: ILdRf var_8C
  loc_B1A3DA: FStR4 var_88
  loc_B1A3DD: ILdRf var_88
  loc_B1A3E0: CBoolI4
  loc_B1A3E2: BranchF loc_B1A3EE
  loc_B1A3E5: ILdRf var_88
  loc_B1A3E8: ImpAdCallFPR4 SetCursor()
  loc_B1A3ED: SetLastSystemError
  loc_B1A3EE: ExitProcHresult
End Sub

Private Sub Image4_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1CAC0
  'Data Table: 54EE7C
  loc_B1CA60: ILdI2 Button
  loc_B1CA63: LitI2_Byte 1
  loc_B1CA65: EqI2
  loc_B1CA66: BranchF loc_B1CAA9
  loc_B1CA69: ImpAdCallI2 ReleaseCapture()
  loc_B1CA6E: FStR4 var_8C
  loc_B1CA71: SetLastSystemError
  loc_B1CA72: ILdRf var_8C
  loc_B1CA75: CR8I4
  loc_B1CA76: IStFPR4 X
  loc_B1CA79: FLdRfVar var_8C
  loc_B1CA7C: FLdPrThis
  loc_B1CA7D:  = Me.hWnd
  loc_B1CA82: LitI4 0
  loc_B1CA87: PopTmpLdAdStr var_90
  loc_B1CA8A: LitI4 2
  loc_B1CA8F: LitI4 &HA1
  loc_B1CA94: ILdRf var_8C
  loc_B1CA97: ImpAdCallI2 SendMessage(, , , )
  loc_B1CA9C: FStR4 var_94
  loc_B1CA9F: SetLastSystemError
  loc_B1CAA0: ILdRf var_94
  loc_B1CAA3: FStR4 var_88
  loc_B1CAA6: Branch loc_B1CABE
  loc_B1CAA9: ILdRf Me
  loc_B1CAAC: FStAdNoPop
  loc_B1CAB0: ImpAdLdRf MemVar_C10514
  loc_B1CAB3: NewIfNullPr Global
  loc_B1CAB6: Global.Unload from_stack_1
  loc_B1CABB: FFree1Ad var_98
  loc_B1CABE: ExitProcHresult
End Sub

Private Sub Image3_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1CA2C
  'Data Table: 54EE7C
  loc_B1C9CC: ILdI2 Button
  loc_B1C9CF: LitI2_Byte 1
  loc_B1C9D1: EqI2
  loc_B1C9D2: BranchF loc_B1CA15
  loc_B1C9D5: ImpAdCallI2 ReleaseCapture()
  loc_B1C9DA: FStR4 var_8C
  loc_B1C9DD: SetLastSystemError
  loc_B1C9DE: ILdRf var_8C
  loc_B1C9E1: CR8I4
  loc_B1C9E2: IStFPR4 X
  loc_B1C9E5: FLdRfVar var_8C
  loc_B1C9E8: FLdPrThis
  loc_B1C9E9:  = Me.hWnd
  loc_B1C9EE: LitI4 0
  loc_B1C9F3: PopTmpLdAdStr var_90
  loc_B1C9F6: LitI4 2
  loc_B1C9FB: LitI4 &HA1
  loc_B1CA00: ILdRf var_8C
  loc_B1CA03: ImpAdCallI2 SendMessage(, , , )
  loc_B1CA08: FStR4 var_94
  loc_B1CA0B: SetLastSystemError
  loc_B1CA0C: ILdRf var_94
  loc_B1CA0F: FStR4 var_88
  loc_B1CA12: Branch loc_B1CA2A
  loc_B1CA15: ILdRf Me
  loc_B1CA18: FStAdNoPop
  loc_B1CA1C: ImpAdLdRf MemVar_C10514
  loc_B1CA1F: NewIfNullPr Global
  loc_B1CA22: Global.Unload from_stack_1
  loc_B1CA27: FFree1Ad var_98
  loc_B1CA2A: ExitProcHresult
End Sub

Private Sub Label1_Click() 'B19048
  'Data Table: 54EE7C
  loc_B1903C: FLdRfVar var_94
  loc_B1903F: ImpAdCallFPR4 Proc_27_1_B570C0()
  loc_B19044: FFree1Var var_94 = ""
  loc_B19047: ExitProcHresult
End Sub

Private Sub Label1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1A5BC
  'Data Table: 54EE7C
  loc_B1A590: LitI4 &H7F89
  loc_B1A595: LitI4 0
  loc_B1A59A: ImpAdCallI2 LoadCursor(, )
  loc_B1A59F: FStR4 var_8C
  loc_B1A5A2: SetLastSystemError
  loc_B1A5A3: ILdRf var_8C
  loc_B1A5A6: FStR4 var_88
  loc_B1A5A9: ILdRf var_88
  loc_B1A5AC: CBoolI4
  loc_B1A5AE: BranchF loc_B1A5BA
  loc_B1A5B1: ILdRf var_88
  loc_B1A5B4: ImpAdCallFPR4 SetCursor()
  loc_B1A5B9: SetLastSystemError
  loc_B1A5BA: ExitProcHresult
End Sub

Private Sub Image1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1CD10
  'Data Table: 54EE7C
  loc_B1CCB0: ILdI2 Button
  loc_B1CCB3: LitI2_Byte 1
  loc_B1CCB5: EqI2
  loc_B1CCB6: BranchF loc_B1CCF9
  loc_B1CCB9: ImpAdCallI2 ReleaseCapture()
  loc_B1CCBE: FStR4 var_8C
  loc_B1CCC1: SetLastSystemError
  loc_B1CCC2: ILdRf var_8C
  loc_B1CCC5: CR8I4
  loc_B1CCC6: IStFPR4 X
  loc_B1CCC9: FLdRfVar var_8C
  loc_B1CCCC: FLdPrThis
  loc_B1CCCD:  = Me.hWnd
  loc_B1CCD2: LitI4 0
  loc_B1CCD7: PopTmpLdAdStr var_90
  loc_B1CCDA: LitI4 2
  loc_B1CCDF: LitI4 &HA1
  loc_B1CCE4: ILdRf var_8C
  loc_B1CCE7: ImpAdCallI2 SendMessage(, , , )
  loc_B1CCEC: FStR4 var_94
  loc_B1CCEF: SetLastSystemError
  loc_B1CCF0: ILdRf var_94
  loc_B1CCF3: FStR4 var_88
  loc_B1CCF6: Branch loc_B1CD0E
  loc_B1CCF9: ILdRf Me
  loc_B1CCFC: FStAdNoPop
  loc_B1CD00: ImpAdLdRf MemVar_C10514
  loc_B1CD03: NewIfNullPr Global
  loc_B1CD06: Global.Unload from_stack_1
  loc_B1CD0B: FFree1Ad var_98
  loc_B1CD0E: ExitProcHresult
End Sub

Private Sub clubCommand1_Click() 'B58F70
  'Data Table: 54EE7C
  loc_B5859C: LitI2_Byte &HB
  loc_B5859E: FLdPrThis
  loc_B5859F: Me.MousePointer = from_stack_1
  loc_B585A4: LitI2_Byte 0
  loc_B585A6: FLdPrThis
  loc_B585A7: VCallAd Control_ID_clubCommand1
  loc_B585AA: FStAdFunc var_88
  loc_B585AD: FLdPr var_88
  loc_B585B0: Me.Enabled = from_stack_1b
  loc_B585B5: FFree1Ad var_88
  loc_B585B8: LitI2_Byte 0
  loc_B585BA: FLdPrThis
  loc_B585BB: VCallAd Control_ID_clubCommand2
  loc_B585BE: FStAdFunc var_88
  loc_B585C1: FLdPr var_88
  loc_B585C4: Me.Enabled = from_stack_1b
  loc_B585C9: FFree1Ad var_88
  loc_B585CC: LitVarI2 var_C8, 0
  loc_B585D1: FLdRfVar var_98
  loc_B585D4: LitVarI2 var_B8, 10
  loc_B585D9: ForVar var_E8
  loc_B585DF: FLdRfVar var_F0
  loc_B585E2: FLdRfVar var_EC
  loc_B585E5: FLdRfVar var_98
  loc_B585E8: CI2Var
  loc_B585E9: FLdPrThis
  loc_B585EA: VCallAd Control_ID_hcpresent
  loc_B585ED: FStAdFunc var_88
  loc_B585F0: FLdPr var_88
  loc_B585F3: Set from_stack_2 = Me(from_stack_1)
  loc_B585F8: FLdPr var_EC
  loc_B585FB:  = Me.Text
  loc_B58600: LitI4 1
  loc_B58605: FLdZeroAd var_F0
  loc_B58608: CVarStr var_100
  loc_B5860B: FLdRfVar var_110
  loc_B5860E: ImpAdCallFPR4  = Left(, )
  loc_B58613: FLdRfVar var_110
  loc_B58616: LitVarStr var_A8, ";"
  loc_B5861B: HardType
  loc_B5861C: NeVarBool
  loc_B5861E: FFreeAd var_88 = ""
  loc_B58625: FFreeVar var_100 = ""
  loc_B5862C: BranchF loc_B5868A
  loc_B5862F: LitStr ";"
  loc_B58632: FLdRfVar var_F0
  loc_B58635: FLdRfVar var_EC
  loc_B58638: FLdRfVar var_98
  loc_B5863B: CI2Var
  loc_B5863C: FLdPrThis
  loc_B5863D: VCallAd Control_ID_hcpresent
  loc_B58640: FStAdFunc var_88
  loc_B58643: FLdPr var_88
  loc_B58646: Set from_stack_2 = Me(from_stack_1)
  loc_B5864B: FLdPr var_EC
  loc_B5864E:  = Me.Text
  loc_B58653: ILdRf var_F0
  loc_B58656: ConcatStr
  loc_B58657: FStStrNoPop var_12C
  loc_B5865A: FLdRfVar var_128
  loc_B5865D: FLdRfVar var_98
  loc_B58660: CI2Var
  loc_B58661: FLdPrThis
  loc_B58662: VCallAd Control_ID_hcpresent
  loc_B58665: FStAdFunc var_124
  loc_B58668: FLdPr var_124
  loc_B5866B: Set from_stack_2 = Me(from_stack_1)
  loc_B58670: FLdPr var_128
  loc_B58673: Me.Text = from_stack_1
  loc_B58678: FFreeStr var_F0 = ""
  loc_B5867F: FFreeAd var_88 = "": var_EC = "": var_124 = ""
  loc_B5868A: FLdRfVar var_F0
  loc_B5868D: FLdRfVar var_EC
  loc_B58690: FLdRfVar var_98
  loc_B58693: CI2Var
  loc_B58694: FLdPrThis
  loc_B58695: VCallAd Control_ID_hcpresent
  loc_B58698: FStAdFunc var_88
  loc_B5869B: FLdPr var_88
  loc_B5869E: Set from_stack_2 = Me(from_stack_1)
  loc_B586A3: FLdPr var_EC
  loc_B586A6:  = Me.Text
  loc_B586AB: LitI4 1
  loc_B586B0: FLdZeroAd var_F0
  loc_B586B3: CVarStr var_100
  loc_B586B6: FLdRfVar var_110
  loc_B586B9: ImpAdCallFPR4  = Right(, )
  loc_B586BE: FLdRfVar var_110
  loc_B586C1: LitVarStr var_A8, ";"
  loc_B586C6: HardType
  loc_B586C7: EqVarBool
  loc_B586C9: FFreeAd var_88 = ""
  loc_B586D0: FFreeVar var_100 = ""
  loc_B586D7: BranchF loc_B58776
  loc_B586DA: FLdRfVar var_F0
  loc_B586DD: FLdRfVar var_EC
  loc_B586E0: FLdRfVar var_98
  loc_B586E3: CI2Var
  loc_B586E4: FLdPrThis
  loc_B586E5: VCallAd Control_ID_hcpresent
  loc_B586E8: FStAdFunc var_88
  loc_B586EB: FLdPr var_88
  loc_B586EE: Set from_stack_2 = Me(from_stack_1)
  loc_B586F3: FLdPr var_EC
  loc_B586F6:  = Me.Text
  loc_B586FB: FLdRfVar var_12C
  loc_B586FE: FLdRfVar var_128
  loc_B58701: FLdRfVar var_98
  loc_B58704: CI2Var
  loc_B58705: FLdPrThis
  loc_B58706: VCallAd Control_ID_hcpresent
  loc_B58709: FStAdFunc var_124
  loc_B5870C: FLdPr var_124
  loc_B5870F: Set from_stack_2 = Me(from_stack_1)
  loc_B58714: FLdPr var_128
  loc_B58717:  = Me.Text
  loc_B5871C: ILdRf var_12C
  loc_B5871F: FnLenStr
  loc_B58720: LitI4 1
  loc_B58725: SubI4
  loc_B58726: FLdZeroAd var_F0
  loc_B58729: CVarStr var_100
  loc_B5872C: FLdRfVar var_110
  loc_B5872F: ImpAdCallFPR4  = Left(, )
  loc_B58734: FLdRfVar var_110
  loc_B58737: CStrVarVal var_138
  loc_B5873B: FLdRfVar var_134
  loc_B5873E: FLdRfVar var_98
  loc_B58741: CI2Var
  loc_B58742: FLdPrThis
  loc_B58743: VCallAd Control_ID_hcpresent
  loc_B58746: FStAdFunc var_130
  loc_B58749: FLdPr var_130
  loc_B5874C: Set from_stack_2 = Me(from_stack_1)
  loc_B58751: FLdPr var_134
  loc_B58754: Me.Text = from_stack_1
  loc_B58759: FFreeStr var_12C = ""
  loc_B58760: FFreeAd var_88 = "": var_EC = "": var_124 = "": var_128 = "": var_130 = ""
  loc_B5876F: FFreeVar var_100 = ""
  loc_B58776: FLdRfVar var_F0
  loc_B58779: FLdRfVar var_EC
  loc_B5877C: FLdRfVar var_98
  loc_B5877F: CI2Var
  loc_B58780: FLdPrThis
  loc_B58781: VCallAd Control_ID_hcpresent
  loc_B58784: FStAdFunc var_88
  loc_B58787: FLdPr var_88
  loc_B5878A: Set from_stack_2 = Me(from_stack_1)
  loc_B5878F: FLdPr var_EC
  loc_B58792:  = Me.Text
  loc_B58797: LitI4 0
  loc_B5879C: LitI4 -1
  loc_B587A1: LitI4 1
  loc_B587A6: LitStr ";"
  loc_B587A9: LitStr ";;"
  loc_B587AC: ILdRf var_F0
  loc_B587AF: ImpAdCallI2 Replace(, , , , , )
  loc_B587B4: FStStrNoPop var_12C
  loc_B587B7: FLdRfVar var_128
  loc_B587BA: FLdRfVar var_98
  loc_B587BD: CI2Var
  loc_B587BE: FLdPrThis
  loc_B587BF: VCallAd Control_ID_hcpresent
  loc_B587C2: FStAdFunc var_124
  loc_B587C5: FLdPr var_124
  loc_B587C8: Set from_stack_2 = Me(from_stack_1)
  loc_B587CD: FLdPr var_128
  loc_B587D0: Me.Text = from_stack_1
  loc_B587D5: FFreeStr var_F0 = ""
  loc_B587DC: FFreeAd var_88 = "": var_EC = "": var_124 = ""
  loc_B587E7: FLdRfVar var_F0
  loc_B587EA: FLdRfVar var_EC
  loc_B587ED: FLdRfVar var_98
  loc_B587F0: CI2Var
  loc_B587F1: FLdPrThis
  loc_B587F2: VCallAd Control_ID_hcpresent
  loc_B587F5: FStAdFunc var_88
  loc_B587F8: FLdPr var_88
  loc_B587FB: Set from_stack_2 = Me(from_stack_1)
  loc_B58800: FLdPr var_EC
  loc_B58803:  = Me.Text
  loc_B58808: LitI4 0
  loc_B5880D: LitI4 -1
  loc_B58812: LitI4 1
  loc_B58817: LitStr ";"
  loc_B5881A: LitStr ";;"
  loc_B5881D: ILdRf var_F0
  loc_B58820: ImpAdCallI2 Replace(, , , , , )
  loc_B58825: FStStrNoPop var_12C
  loc_B58828: FLdRfVar var_128
  loc_B5882B: FLdRfVar var_98
  loc_B5882E: CI2Var
  loc_B5882F: FLdPrThis
  loc_B58830: VCallAd Control_ID_hcpresent
  loc_B58833: FStAdFunc var_124
  loc_B58836: FLdPr var_124
  loc_B58839: Set from_stack_2 = Me(from_stack_1)
  loc_B5883E: FLdPr var_128
  loc_B58841: Me.Text = from_stack_1
  loc_B58846: FFreeStr var_F0 = ""
  loc_B5884D: FFreeAd var_88 = "": var_EC = "": var_124 = ""
  loc_B58858: FLdRfVar var_F0
  loc_B5885B: FLdRfVar var_EC
  loc_B5885E: FLdRfVar var_98
  loc_B58861: CI2Var
  loc_B58862: FLdPrThis
  loc_B58863: VCallAd Control_ID_hcpresent
  loc_B58866: FStAdFunc var_88
  loc_B58869: FLdPr var_88
  loc_B5886C: Set from_stack_2 = Me(from_stack_1)
  loc_B58871: FLdPr var_EC
  loc_B58874:  = Me.Text
  loc_B58879: LitI4 0
  loc_B5887E: LitI4 -1
  loc_B58883: LitI4 1
  loc_B58888: LitStr ";"
  loc_B5888B: LitStr ";;"
  loc_B5888E: ILdRf var_F0
  loc_B58891: ImpAdCallI2 Replace(, , , , , )
  loc_B58896: FStStrNoPop var_12C
  loc_B58899: FLdRfVar var_128
  loc_B5889C: FLdRfVar var_98
  loc_B5889F: CI2Var
  loc_B588A0: FLdPrThis
  loc_B588A1: VCallAd Control_ID_hcpresent
  loc_B588A4: FStAdFunc var_124
  loc_B588A7: FLdPr var_124
  loc_B588AA: Set from_stack_2 = Me(from_stack_1)
  loc_B588AF: FLdPr var_128
  loc_B588B2: Me.Text = from_stack_1
  loc_B588B7: FFreeStr var_F0 = ""
  loc_B588BE: FFreeAd var_88 = "": var_EC = "": var_124 = ""
  loc_B588C9: FLdRfVar var_F0
  loc_B588CC: FLdRfVar var_EC
  loc_B588CF: FLdRfVar var_98
  loc_B588D2: CI2Var
  loc_B588D3: FLdPrThis
  loc_B588D4: VCallAd Control_ID_hcpresent
  loc_B588D7: FStAdFunc var_88
  loc_B588DA: FLdPr var_88
  loc_B588DD: Set from_stack_2 = Me(from_stack_1)
  loc_B588E2: FLdPr var_EC
  loc_B588E5:  = Me.Text
  loc_B588EA: LitI4 0
  loc_B588EF: LitI4 -1
  loc_B588F4: LitVarStr var_A8, ";"
  loc_B588F9: FStVarCopyObj var_100
  loc_B588FC: FLdRfVar var_100
  loc_B588FF: ILdRf var_F0
  loc_B58902: FLdRfVar var_110
  loc_B58905: ImpAdCallFPR4  = Split(, , , )
  loc_B5890A: FLdRfVar var_110
  loc_B5890D: FStVar var_148
  loc_B58911: FFree1Str var_F0
  loc_B58914: FFreeAd var_88 = ""
  loc_B5891B: FFree1Var var_100 = ""
  loc_B5891E: LitVarI2 var_C8, 1
  loc_B58923: FLdRfVar var_158
  loc_B58926: FLdRfVar var_148
  loc_B58929: CRefVarAry
  loc_B5892B: PopAdLd4
  loc_B5892C: LitI2_Byte 1
  loc_B5892E: FnUBound
  loc_B58930: CVarI4
  loc_B58934: ForVar var_178
  loc_B5893A: FLdRfVar var_158
  loc_B5893D: CDargRef
  loc_B58941: FLdRfVar var_148
  loc_B58944: VarIndexLdVar
  loc_B5894A: LitVarStr var_B8, vbNullString
  loc_B5894F: HardType
  loc_B58950: NeVarBool
  loc_B58952: FFree1Var var_100 = ""
  loc_B58955: BranchF loc_B58A4A
  loc_B58958: FLdRfVar var_17A
  loc_B5895B: ImpAdLdI4 MemVar_C0F044
  loc_B5895E: LitStr "buy_furni\club_furni\"
  loc_B58961: ConcatStr
  loc_B58962: CVarStr var_100
  loc_B58965: FLdRfVar var_158
  loc_B58968: CDargRef
  loc_B5896C: FLdRfVar var_148
  loc_B5896F: VarIndexLdVar
  loc_B58975: ConcatVar var_120
  loc_B58979: CStrVarVal var_F0
  loc_B5897D: ImpAdLdRf MemVar_C0F040
  loc_B58980: NewIfNullPr IFileSystem3
  loc_B58983: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B58988: FLdI2 var_17A
  loc_B5898B: LitI2_Byte 0
  loc_B5898D: EqI2
  loc_B5898E: FFree1Str var_F0
  loc_B58991: FFreeVar var_100 = "": var_110 = ""
  loc_B5899A: BranchF loc_B58A4A
  loc_B5899D: LitI4 &H8080FF
  loc_B589A2: FLdRfVar var_EC
  loc_B589A5: FLdRfVar var_98
  loc_B589A8: CI2Var
  loc_B589A9: FLdPrThis
  loc_B589AA: VCallAd Control_ID_hcpresent
  loc_B589AD: FStAdFunc var_88
  loc_B589B0: FLdPr var_88
  loc_B589B3: Set from_stack_2 = Me(from_stack_1)
  loc_B589B8: FLdPr var_EC
  loc_B589BB: Me.BackColor = from_stack_1
  loc_B589C0: FFreeAd var_88 = ""
  loc_B589C7: LitVarStr var_A8, "folder_doesnt_exists"
  loc_B589CC: PopAdLdVar
  loc_B589CD: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B589D2: FStStr var_138
  loc_B589D5: FLdRfVar var_158
  loc_B589D8: CDargRef
  loc_B589DC: FLdRfVar var_148
  loc_B589DF: VarIndexLdVar
  loc_B589E5: PopAd
  loc_B589E7: LitI4 0
  loc_B589EC: LitI4 -1
  loc_B589F1: LitI4 1
  loc_B589F6: FLdRfVar var_100
  loc_B589F9: CStrVarVal var_12C
  loc_B589FD: LitStr Chr(37) & "foldername" & Chr(37)
  loc_B58A00: FLdZeroAd var_138
  loc_B58A03: FStStrNoPop var_F0
  loc_B58A06: ImpAdCallI2 Replace(, , , , , )
  loc_B58A0B: FStStr var_1C0
  loc_B58A0E: LitVar_Missing var_1BC
  loc_B58A11: LitVar_Missing var_19C
  loc_B58A14: LitVarStr var_C8, "Server"
  loc_B58A19: FStVarCopyObj var_120
  loc_B58A1C: FLdRfVar var_120
  loc_B58A1F: LitI4 &H10
  loc_B58A24: FLdZeroAd var_1C0
  loc_B58A27: CVarStr var_110
  loc_B58A2A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B58A2F: FFreeStr var_F0 = "": var_12C = "": var_138 = ""
  loc_B58A3A: FFreeVar var_100 = "": var_110 = "": var_120 = "": var_19C = ""
  loc_B58A47: Branch loc_B58AB9
  loc_B58A4A: FLdRfVar var_158
  loc_B58A4D: NextStepVar var_178
  loc_B58A53: FLdRfVar var_F0
  loc_B58A56: FLdRfVar var_EC
  loc_B58A59: FLdRfVar var_98
  loc_B58A5C: CI2Var
  loc_B58A5D: FLdPrThis
  loc_B58A5E: VCallAd Control_ID_hcpresent
  loc_B58A61: FStAdFunc var_88
  loc_B58A64: FLdPr var_88
  loc_B58A67: Set from_stack_2 = Me(from_stack_1)
  loc_B58A6C: FLdPr var_EC
  loc_B58A6F:  = Me.Text
  loc_B58A74: ImpAdLdI4 MemVar_C0F044
  loc_B58A77: LitStr "configuration\settings.ini"
  loc_B58A7A: ConcatStr
  loc_B58A7B: FStStrNoPop var_138
  loc_B58A7E: ILdRf var_F0
  loc_B58A81: LitVarStr var_B8, "present"
  loc_B58A86: FLdRfVar var_98
  loc_B58A89: LitVarI2 var_A8, 1
  loc_B58A8E: AddVar var_100
  loc_B58A92: ConcatVar var_110
  loc_B58A96: CStrVarVal var_12C
  loc_B58A9A: LitStr "HC"
  loc_B58A9D: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B58AA2: FFreeStr var_12C = "": var_F0 = ""
  loc_B58AAB: FFreeAd var_88 = ""
  loc_B58AB2: FFreeVar var_100 = ""
  loc_B58AB9: FLdRfVar var_98
  loc_B58ABC: NextStepVar var_E8
  loc_B58AC2: FLdRfVar var_F0
  loc_B58AC5: FLdPrThis
  loc_B58AC6: VCallAd Control_ID_clubText1
  loc_B58AC9: FStAdFunc var_88
  loc_B58ACC: FLdPr var_88
  loc_B58ACF:  = Me.Text
  loc_B58AD4: LitI4 1
  loc_B58AD9: FLdZeroAd var_F0
  loc_B58ADC: CVarStr var_100
  loc_B58ADF: FLdRfVar var_110
  loc_B58AE2: ImpAdCallFPR4  = Left(, )
  loc_B58AE7: FLdRfVar var_110
  loc_B58AEA: LitVarStr var_A8, ";"
  loc_B58AEF: HardType
  loc_B58AF0: NeVarBool
  loc_B58AF2: FFree1Ad var_88
  loc_B58AF5: FFreeVar var_100 = ""
  loc_B58AFC: BranchF loc_B58B38
  loc_B58AFF: LitStr ";"
  loc_B58B02: FLdRfVar var_F0
  loc_B58B05: FLdPrThis
  loc_B58B06: VCallAd Control_ID_clubText1
  loc_B58B09: FStAdFunc var_88
  loc_B58B0C: FLdPr var_88
  loc_B58B0F:  = Me.Text
  loc_B58B14: ILdRf var_F0
  loc_B58B17: ConcatStr
  loc_B58B18: FStStrNoPop var_12C
  loc_B58B1B: FLdPrThis
  loc_B58B1C: VCallAd Control_ID_clubText1
  loc_B58B1F: FStAdFunc var_EC
  loc_B58B22: FLdPr var_EC
  loc_B58B25: Me.Text = from_stack_1
  loc_B58B2A: FFreeStr var_F0 = ""
  loc_B58B31: FFreeAd var_88 = ""
  loc_B58B38: FLdRfVar var_F0
  loc_B58B3B: FLdPrThis
  loc_B58B3C: VCallAd Control_ID_clubText1
  loc_B58B3F: FStAdFunc var_88
  loc_B58B42: FLdPr var_88
  loc_B58B45:  = Me.Text
  loc_B58B4A: LitI4 1
  loc_B58B4F: FLdZeroAd var_F0
  loc_B58B52: CVarStr var_100
  loc_B58B55: FLdRfVar var_110
  loc_B58B58: ImpAdCallFPR4  = Right(, )
  loc_B58B5D: FLdRfVar var_110
  loc_B58B60: LitVarStr var_A8, ";"
  loc_B58B65: HardType
  loc_B58B66: EqVarBool
  loc_B58B68: FFree1Ad var_88
  loc_B58B6B: FFreeVar var_100 = ""
  loc_B58B72: BranchF loc_B58BDE
  loc_B58B75: FLdRfVar var_F0
  loc_B58B78: FLdPrThis
  loc_B58B79: VCallAd Control_ID_clubText1
  loc_B58B7C: FStAdFunc var_88
  loc_B58B7F: FLdPr var_88
  loc_B58B82:  = Me.Text
  loc_B58B87: FLdRfVar var_12C
  loc_B58B8A: FLdPrThis
  loc_B58B8B: VCallAd Control_ID_clubText1
  loc_B58B8E: FStAdFunc var_EC
  loc_B58B91: FLdPr var_EC
  loc_B58B94:  = Me.Text
  loc_B58B99: ILdRf var_12C
  loc_B58B9C: FnLenStr
  loc_B58B9D: LitI4 1
  loc_B58BA2: SubI4
  loc_B58BA3: FLdZeroAd var_F0
  loc_B58BA6: CVarStr var_100
  loc_B58BA9: FLdRfVar var_110
  loc_B58BAC: ImpAdCallFPR4  = Left(, )
  loc_B58BB1: FLdRfVar var_110
  loc_B58BB4: CStrVarVal var_138
  loc_B58BB8: FLdPrThis
  loc_B58BB9: VCallAd Control_ID_clubText1
  loc_B58BBC: FStAdFunc var_124
  loc_B58BBF: FLdPr var_124
  loc_B58BC2: Me.Text = from_stack_1
  loc_B58BC7: FFreeStr var_12C = ""
  loc_B58BCE: FFreeAd var_88 = "": var_EC = ""
  loc_B58BD7: FFreeVar var_100 = ""
  loc_B58BDE: FLdRfVar var_F0
  loc_B58BE1: FLdPrThis
  loc_B58BE2: VCallAd Control_ID_clubText1
  loc_B58BE5: FStAdFunc var_88
  loc_B58BE8: FLdPr var_88
  loc_B58BEB:  = Me.Text
  loc_B58BF0: LitI4 0
  loc_B58BF5: LitI4 -1
  loc_B58BFA: LitI4 1
  loc_B58BFF: LitStr ";"
  loc_B58C02: LitStr ";;"
  loc_B58C05: ILdRf var_F0
  loc_B58C08: ImpAdCallI2 Replace(, , , , , )
  loc_B58C0D: FStStrNoPop var_12C
  loc_B58C10: FLdPrThis
  loc_B58C11: VCallAd Control_ID_clubText1
  loc_B58C14: FStAdFunc var_EC
  loc_B58C17: FLdPr var_EC
  loc_B58C1A: Me.Text = from_stack_1
  loc_B58C1F: FFreeStr var_F0 = ""
  loc_B58C26: FFreeAd var_88 = ""
  loc_B58C2D: FLdRfVar var_F0
  loc_B58C30: FLdPrThis
  loc_B58C31: VCallAd Control_ID_clubText1
  loc_B58C34: FStAdFunc var_88
  loc_B58C37: FLdPr var_88
  loc_B58C3A:  = Me.Text
  loc_B58C3F: LitI4 0
  loc_B58C44: LitI4 -1
  loc_B58C49: LitI4 1
  loc_B58C4E: LitStr ";"
  loc_B58C51: LitStr ";;"
  loc_B58C54: ILdRf var_F0
  loc_B58C57: ImpAdCallI2 Replace(, , , , , )
  loc_B58C5C: FStStrNoPop var_12C
  loc_B58C5F: FLdPrThis
  loc_B58C60: VCallAd Control_ID_clubText1
  loc_B58C63: FStAdFunc var_EC
  loc_B58C66: FLdPr var_EC
  loc_B58C69: Me.Text = from_stack_1
  loc_B58C6E: FFreeStr var_F0 = ""
  loc_B58C75: FFreeAd var_88 = ""
  loc_B58C7C: FLdRfVar var_F0
  loc_B58C7F: FLdPrThis
  loc_B58C80: VCallAd Control_ID_clubText1
  loc_B58C83: FStAdFunc var_88
  loc_B58C86: FLdPr var_88
  loc_B58C89:  = Me.Text
  loc_B58C8E: LitI4 0
  loc_B58C93: LitI4 -1
  loc_B58C98: LitI4 1
  loc_B58C9D: LitStr ";"
  loc_B58CA0: LitStr ";;"
  loc_B58CA3: ILdRf var_F0
  loc_B58CA6: ImpAdCallI2 Replace(, , , , , )
  loc_B58CAB: FStStrNoPop var_12C
  loc_B58CAE: FLdPrThis
  loc_B58CAF: VCallAd Control_ID_clubText1
  loc_B58CB2: FStAdFunc var_EC
  loc_B58CB5: FLdPr var_EC
  loc_B58CB8: Me.Text = from_stack_1
  loc_B58CBD: FFreeStr var_F0 = ""
  loc_B58CC4: FFreeAd var_88 = ""
  loc_B58CCB: FLdRfVar var_F0
  loc_B58CCE: FLdPrThis
  loc_B58CCF: VCallAd Control_ID_clubText1
  loc_B58CD2: FStAdFunc var_88
  loc_B58CD5: FLdPr var_88
  loc_B58CD8:  = Me.Text
  loc_B58CDD: ImpAdLdI4 MemVar_C0F044
  loc_B58CE0: LitStr "configuration\settings.ini"
  loc_B58CE3: ConcatStr
  loc_B58CE4: FStStrNoPop var_12C
  loc_B58CE7: ILdRf var_F0
  loc_B58CEA: LitStr "hcbadge"
  loc_B58CED: LitStr "HC"
  loc_B58CF0: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B58CF5: FFreeStr var_F0 = ""
  loc_B58CFC: FFree1Ad var_88
  loc_B58CFF: FLdRfVar var_F0
  loc_B58D02: FLdPrThis
  loc_B58D03: VCallAd Control_ID_clubText2
  loc_B58D06: FStAdFunc var_88
  loc_B58D09: FLdPr var_88
  loc_B58D0C:  = Me.Text
  loc_B58D11: LitI4 1
  loc_B58D16: FLdZeroAd var_F0
  loc_B58D19: CVarStr var_100
  loc_B58D1C: FLdRfVar var_110
  loc_B58D1F: ImpAdCallFPR4  = Left(, )
  loc_B58D24: FLdRfVar var_110
  loc_B58D27: LitVarStr var_A8, ";"
  loc_B58D2C: HardType
  loc_B58D2D: NeVarBool
  loc_B58D2F: FFree1Ad var_88
  loc_B58D32: FFreeVar var_100 = ""
  loc_B58D39: BranchF loc_B58D75
  loc_B58D3C: LitStr ";"
  loc_B58D3F: FLdRfVar var_F0
  loc_B58D42: FLdPrThis
  loc_B58D43: VCallAd Control_ID_clubText2
  loc_B58D46: FStAdFunc var_88
  loc_B58D49: FLdPr var_88
  loc_B58D4C:  = Me.Text
  loc_B58D51: ILdRf var_F0
  loc_B58D54: ConcatStr
  loc_B58D55: FStStrNoPop var_12C
  loc_B58D58: FLdPrThis
  loc_B58D59: VCallAd Control_ID_clubText2
  loc_B58D5C: FStAdFunc var_EC
  loc_B58D5F: FLdPr var_EC
  loc_B58D62: Me.Text = from_stack_1
  loc_B58D67: FFreeStr var_F0 = ""
  loc_B58D6E: FFreeAd var_88 = ""
  loc_B58D75: FLdRfVar var_F0
  loc_B58D78: FLdPrThis
  loc_B58D79: VCallAd Control_ID_clubText2
  loc_B58D7C: FStAdFunc var_88
  loc_B58D7F: FLdPr var_88
  loc_B58D82:  = Me.Text
  loc_B58D87: LitI4 1
  loc_B58D8C: FLdZeroAd var_F0
  loc_B58D8F: CVarStr var_100
  loc_B58D92: FLdRfVar var_110
  loc_B58D95: ImpAdCallFPR4  = Right(, )
  loc_B58D9A: FLdRfVar var_110
  loc_B58D9D: LitVarStr var_A8, ";"
  loc_B58DA2: HardType
  loc_B58DA3: EqVarBool
  loc_B58DA5: FFree1Ad var_88
  loc_B58DA8: FFreeVar var_100 = ""
  loc_B58DAF: BranchF loc_B58E1B
  loc_B58DB2: FLdRfVar var_F0
  loc_B58DB5: FLdPrThis
  loc_B58DB6: VCallAd Control_ID_clubText2
  loc_B58DB9: FStAdFunc var_88
  loc_B58DBC: FLdPr var_88
  loc_B58DBF:  = Me.Text
  loc_B58DC4: FLdRfVar var_12C
  loc_B58DC7: FLdPrThis
  loc_B58DC8: VCallAd Control_ID_clubText2
  loc_B58DCB: FStAdFunc var_EC
  loc_B58DCE: FLdPr var_EC
  loc_B58DD1:  = Me.Text
  loc_B58DD6: ILdRf var_12C
  loc_B58DD9: FnLenStr
  loc_B58DDA: LitI4 1
  loc_B58DDF: SubI4
  loc_B58DE0: FLdZeroAd var_F0
  loc_B58DE3: CVarStr var_100
  loc_B58DE6: FLdRfVar var_110
  loc_B58DE9: ImpAdCallFPR4  = Left(, )
  loc_B58DEE: FLdRfVar var_110
  loc_B58DF1: CStrVarVal var_138
  loc_B58DF5: FLdPrThis
  loc_B58DF6: VCallAd Control_ID_clubText2
  loc_B58DF9: FStAdFunc var_124
  loc_B58DFC: FLdPr var_124
  loc_B58DFF: Me.Text = from_stack_1
  loc_B58E04: FFreeStr var_12C = ""
  loc_B58E0B: FFreeAd var_88 = "": var_EC = ""
  loc_B58E14: FFreeVar var_100 = ""
  loc_B58E1B: FLdRfVar var_F0
  loc_B58E1E: FLdPrThis
  loc_B58E1F: VCallAd Control_ID_clubText2
  loc_B58E22: FStAdFunc var_88
  loc_B58E25: FLdPr var_88
  loc_B58E28:  = Me.Text
  loc_B58E2D: LitI4 0
  loc_B58E32: LitI4 -1
  loc_B58E37: LitI4 1
  loc_B58E3C: LitStr ";"
  loc_B58E3F: LitStr ";;"
  loc_B58E42: ILdRf var_F0
  loc_B58E45: ImpAdCallI2 Replace(, , , , , )
  loc_B58E4A: FStStrNoPop var_12C
  loc_B58E4D: FLdPrThis
  loc_B58E4E: VCallAd Control_ID_clubText2
  loc_B58E51: FStAdFunc var_EC
  loc_B58E54: FLdPr var_EC
  loc_B58E57: Me.Text = from_stack_1
  loc_B58E5C: FFreeStr var_F0 = ""
  loc_B58E63: FFreeAd var_88 = ""
  loc_B58E6A: FLdRfVar var_F0
  loc_B58E6D: FLdPrThis
  loc_B58E6E: VCallAd Control_ID_clubText2
  loc_B58E71: FStAdFunc var_88
  loc_B58E74: FLdPr var_88
  loc_B58E77:  = Me.Text
  loc_B58E7C: LitI4 0
  loc_B58E81: LitI4 -1
  loc_B58E86: LitI4 1
  loc_B58E8B: LitStr ";"
  loc_B58E8E: LitStr ";;"
  loc_B58E91: ILdRf var_F0
  loc_B58E94: ImpAdCallI2 Replace(, , , , , )
  loc_B58E99: FStStrNoPop var_12C
  loc_B58E9C: FLdPrThis
  loc_B58E9D: VCallAd Control_ID_clubText2
  loc_B58EA0: FStAdFunc var_EC
  loc_B58EA3: FLdPr var_EC
  loc_B58EA6: Me.Text = from_stack_1
  loc_B58EAB: FFreeStr var_F0 = ""
  loc_B58EB2: FFreeAd var_88 = ""
  loc_B58EB9: FLdRfVar var_F0
  loc_B58EBC: FLdPrThis
  loc_B58EBD: VCallAd Control_ID_clubText2
  loc_B58EC0: FStAdFunc var_88
  loc_B58EC3: FLdPr var_88
  loc_B58EC6:  = Me.Text
  loc_B58ECB: LitI4 0
  loc_B58ED0: LitI4 -1
  loc_B58ED5: LitI4 1
  loc_B58EDA: LitStr ";"
  loc_B58EDD: LitStr ";;"
  loc_B58EE0: ILdRf var_F0
  loc_B58EE3: ImpAdCallI2 Replace(, , , , , )
  loc_B58EE8: FStStrNoPop var_12C
  loc_B58EEB: FLdPrThis
  loc_B58EEC: VCallAd Control_ID_clubText2
  loc_B58EEF: FStAdFunc var_EC
  loc_B58EF2: FLdPr var_EC
  loc_B58EF5: Me.Text = from_stack_1
  loc_B58EFA: FFreeStr var_F0 = ""
  loc_B58F01: FFreeAd var_88 = ""
  loc_B58F08: FLdRfVar var_F0
  loc_B58F0B: FLdPrThis
  loc_B58F0C: VCallAd Control_ID_clubText2
  loc_B58F0F: FStAdFunc var_88
  loc_B58F12: FLdPr var_88
  loc_B58F15:  = Me.Text
  loc_B58F1A: ImpAdLdI4 MemVar_C0F044
  loc_B58F1D: LitStr "configuration\settings.ini"
  loc_B58F20: ConcatStr
  loc_B58F21: FStStrNoPop var_12C
  loc_B58F24: ILdRf var_F0
  loc_B58F27: LitStr "hcbadge2"
  loc_B58F2A: LitStr "HC"
  loc_B58F2D: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B58F32: FFreeStr var_F0 = ""
  loc_B58F39: FFree1Ad var_88
  loc_B58F3C: LitI2_Byte &HFF
  loc_B58F3E: FLdPrThis
  loc_B58F3F: VCallAd Control_ID_clubCommand1
  loc_B58F42: FStAdFunc var_88
  loc_B58F45: FLdPr var_88
  loc_B58F48: Me.Enabled = from_stack_1b
  loc_B58F4D: FFree1Ad var_88
  loc_B58F50: LitI2_Byte &HFF
  loc_B58F52: FLdPrThis
  loc_B58F53: VCallAd Control_ID_clubCommand2
  loc_B58F56: FStAdFunc var_88
  loc_B58F59: FLdPr var_88
  loc_B58F5C: Me.Enabled = from_stack_1b
  loc_B58F61: FFree1Ad var_88
  loc_B58F64: LitI2_Byte 0
  loc_B58F66: FLdPrThis
  loc_B58F67: Me.MousePointer = from_stack_1
  loc_B58F6C: ExitProcHresult
  loc_B58F6D: ExitProcCy
End Sub

Private Sub clubCommand2_Click() 'B1D4F8
  'Data Table: 54EE7C
  loc_B1D48C: LitI2_Byte &HB
  loc_B1D48E: FLdPrThis
  loc_B1D48F: Me.MousePointer = from_stack_1
  loc_B1D494: LitI2_Byte 0
  loc_B1D496: FLdPrThis
  loc_B1D497: VCallAd Control_ID_clubCommand1
  loc_B1D49A: FStAdFunc var_88
  loc_B1D49D: FLdPr var_88
  loc_B1D4A0: Me.Enabled = from_stack_1b
  loc_B1D4A5: FFree1Ad var_88
  loc_B1D4A8: LitI2_Byte 0
  loc_B1D4AA: FLdPrThis
  loc_B1D4AB: VCallAd Control_ID_clubCommand2
  loc_B1D4AE: FStAdFunc var_88
  loc_B1D4B1: FLdPr var_88
  loc_B1D4B4: Me.Enabled = from_stack_1b
  loc_B1D4B9: FFree1Ad var_88
  loc_B1D4BC: FLdRfVar var_98
  loc_B1D4BF: ImpAdCallFPR4 Proc_27_10_B3F3D4()
  loc_B1D4C4: FFree1Var var_98 = ""
  loc_B1D4C7: LitI2_Byte &HFF
  loc_B1D4C9: FLdPrThis
  loc_B1D4CA: VCallAd Control_ID_clubCommand1
  loc_B1D4CD: FStAdFunc var_88
  loc_B1D4D0: FLdPr var_88
  loc_B1D4D3: Me.Enabled = from_stack_1b
  loc_B1D4D8: FFree1Ad var_88
  loc_B1D4DB: LitI2_Byte &HFF
  loc_B1D4DD: FLdPrThis
  loc_B1D4DE: VCallAd Control_ID_clubCommand2
  loc_B1D4E1: FStAdFunc var_88
  loc_B1D4E4: FLdPr var_88
  loc_B1D4E7: Me.Enabled = from_stack_1b
  loc_B1D4EC: FFree1Ad var_88
  loc_B1D4EF: LitI2_Byte 0
  loc_B1D4F1: FLdPrThis
  loc_B1D4F2: Me.MousePointer = from_stack_1
  loc_B1D4F7: ExitProcHresult
End Sub

Private Sub Form_Load() 'B213EC
  'Data Table: 54EE7C
  loc_B21310: LitI2 10065
  loc_B21313: CR8I2
  loc_B21314: PopFPR4
  loc_B21315: FLdPr Me
  loc_B21318: Me.Width = from_stack_1s
  loc_B2131D: LitI2 6735
  loc_B21320: CR8I2
  loc_B21321: PopFPR4
  loc_B21322: FLdPr Me
  loc_B21325: Me.Height = from_stack_1s
  loc_B2132A: FLdRfVar var_94
  loc_B2132D: ImpAdCallFPR4 Proc_27_0_B266BC()
  loc_B21332: FFree1Var var_94 = ""
  loc_B21335: FLdRfVar var_94
  loc_B21338: ImpAdCallFPR4 Proc_27_1_B570C0()
  loc_B2133D: FFree1Var var_94 = ""
  loc_B21340: FLdRfVar var_9A
  loc_B21343: ImpAdLdRf MemVar_C0F018
  loc_B21346: NewIfNullPr frmMain
  loc_B21349: VCallAd Control_ID_
  loc_B2134C: FStAdFunc var_98
  loc_B2134F: FLdPr var_98
  loc_B21352:  = frmMain.CheckBox.Value
  loc_B21357: FLdI2 var_9A
  loc_B2135A: LitI2_Byte 1
  loc_B2135C: EqI2
  loc_B2135D: FFree1Ad var_98
  loc_B21360: BranchF loc_B21398
  loc_B21363: FLdRfVar var_A0
  loc_B21366: FLdPr Me
  loc_B21369:  = Me.hWnd
  loc_B2136E: LitI4 3
  loc_B21373: LitI4 0
  loc_B21378: LitI4 0
  loc_B2137D: LitI4 0
  loc_B21382: LitI4 0
  loc_B21387: LitI4 -1
  loc_B2138C: ILdRf var_A0
  loc_B2138F: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B21394: SetLastSystemError
  loc_B21395: Branch loc_B213CA
  loc_B21398: FLdRfVar var_A0
  loc_B2139B: FLdPr Me
  loc_B2139E:  = Me.hWnd
  loc_B213A3: LitI4 3
  loc_B213A8: LitI4 0
  loc_B213AD: LitI4 0
  loc_B213B2: LitI4 0
  loc_B213B7: LitI4 0
  loc_B213BC: LitI4 -2
  loc_B213C1: ILdRf var_A0
  loc_B213C4: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B213C9: SetLastSystemError
  loc_B213CA: LitI2 200
  loc_B213CD: LitI2 164
  loc_B213D0: LitI2_Byte &H65
  loc_B213D2: ImpAdCallI2 RGB(, , )
  loc_B213D7: FLdPrThis
  loc_B213D8: VCallAd Control_ID_title
  loc_B213DB: FStAdFunc var_98
  loc_B213DE: FLdPr var_98
  loc_B213E1: Me.BackColor = from_stack_1
  loc_B213E6: FFree1Ad var_98
  loc_B213E9: ExitProcHresult
  loc_B213EA: GtCyR8
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1CE38
  'Data Table: 54EE7C
  loc_B1CDD8: ILdI2 Button
  loc_B1CDDB: LitI2_Byte 1
  loc_B1CDDD: EqI2
  loc_B1CDDE: BranchF loc_B1CE21
  loc_B1CDE1: ImpAdCallI2 ReleaseCapture()
  loc_B1CDE6: FStR4 var_8C
  loc_B1CDE9: SetLastSystemError
  loc_B1CDEA: ILdRf var_8C
  loc_B1CDED: CR8I4
  loc_B1CDEE: IStFPR4 X
  loc_B1CDF1: FLdRfVar var_8C
  loc_B1CDF4: FLdPrThis
  loc_B1CDF5:  = Me.hWnd
  loc_B1CDFA: LitI4 0
  loc_B1CDFF: PopTmpLdAdStr var_90
  loc_B1CE02: LitI4 2
  loc_B1CE07: LitI4 &HA1
  loc_B1CE0C: ILdRf var_8C
  loc_B1CE0F: ImpAdCallI2 SendMessage(, , , )
  loc_B1CE14: FStR4 var_94
  loc_B1CE17: SetLastSystemError
  loc_B1CE18: ILdRf var_94
  loc_B1CE1B: FStR4 var_88
  loc_B1CE1E: Branch loc_B1CE36
  loc_B1CE21: ILdRf Me
  loc_B1CE24: FStAdNoPop
  loc_B1CE28: ImpAdLdRf MemVar_C10514
  loc_B1CE2B: NewIfNullPr Global
  loc_B1CE2E: Global.Unload from_stack_1
  loc_B1CE33: FFree1Ad var_98
  loc_B1CE36: ExitProcHresult
  loc_B1CE37: NotI4
End Sub

Private Sub filterText1_Change() 'B19838
  'Data Table: 54EE7C
  loc_B19820: LitI2_Byte &HFF
  loc_B19822: FLdPrThis
  loc_B19823: VCallAd Control_ID_filterCommand1
  loc_B19826: FStAdFunc var_88
  loc_B19829: FLdPr var_88
  loc_B1982C: Me.Enabled = from_stack_1b
  loc_B19831: FFree1Ad var_88
  loc_B19834: ExitProcHresult
  loc_B19835: NewIfNullAd
End Sub

Private Sub filterCommand1_Click() 'B1B690
  'Data Table: 54EE7C
  loc_B1B644: FLdRfVar var_8C
  loc_B1B647: FLdPrThis
  loc_B1B648: VCallAd Control_ID_filterText1
  loc_B1B64B: FStAdFunc var_88
  loc_B1B64E: FLdPr var_88
  loc_B1B651:  = Me.Text
  loc_B1B656: ImpAdLdI4 MemVar_C0F044
  loc_B1B659: LitStr "configuration\settings.ini"
  loc_B1B65C: ConcatStr
  loc_B1B65D: FStStrNoPop var_90
  loc_B1B660: ILdRf var_8C
  loc_B1B663: LitStr "replacement"
  loc_B1B666: LitStr "config"
  loc_B1B669: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B1B66E: FFreeStr var_8C = ""
  loc_B1B675: FFree1Ad var_88
  loc_B1B678: LitI2_Byte 0
  loc_B1B67A: FLdPrThis
  loc_B1B67B: VCallAd Control_ID_filterCommand1
  loc_B1B67E: FStAdFunc var_88
  loc_B1B681: FLdPr var_88
  loc_B1B684: Me.Enabled = from_stack_1b
  loc_B1B689: FFree1Ad var_88
  loc_B1B68C: ExitProcHresult
End Sub

Private Sub guestcategoriesCommand1_Click() 'B34C2C
  'Data Table: 54EE7C
  loc_B348A0: LitI2_Byte &HB
  loc_B348A2: FLdPrThis
  loc_B348A3: Me.MousePointer = from_stack_1
  loc_B348AA: LitI2_Byte 0
  loc_B348AC: FLdPrThis
  loc_B348AD: VCallAd Control_ID_guestcategoriesCommand1
  loc_B348B0: FStAdFunc var_88
  loc_B348B3: FLdPr var_88
  loc_B348B6: Me.Enabled = from_stack_1b
  loc_B348BB: FFree1Ad var_88
  loc_B348C0: LitI2_Byte 0
  loc_B348C2: FLdPrThis
  loc_B348C3: VCallAd Control_ID_guestcategoriesCommand2
  loc_B348C6: FStAdFunc var_88
  loc_B348C9: FLdPr var_88
  loc_B348CC: Me.Enabled = from_stack_1b
  loc_B348D1: FFree1Ad var_88
  loc_B348D6: LitStr "SL"
  loc_B348D9: LitI4 0
  loc_B348DE: FLdRfVar var_A0
  loc_B348E1: Ary1StStrCopy
  loc_B348E4: LitStr "RL"
  loc_B348E7: LitI4 1
  loc_B348EC: FLdRfVar var_A0
  loc_B348EF: Ary1StStrCopy
  loc_B348F2: LitStr "PR"
  loc_B348F5: LitI4 2
  loc_B348FA: FLdRfVar var_A0
  loc_B348FD: Ary1StStrCopy
  loc_B34900: LitStr "RQ"
  loc_B34903: LitI4 3
  loc_B34908: FLdRfVar var_A0
  loc_B3490B: Ary1StStrCopy
  loc_B3490E: LitStr "SV"
  loc_B34911: LitI4 4
  loc_B34916: FLdRfVar var_A0
  loc_B34919: Ary1StStrCopy
  loc_B3491C: LitStr "Q]"
  loc_B3491F: LitI4 5
  loc_B34924: FLdRfVar var_A0
  loc_B34927: Ary1StStrCopy
  loc_B3492A: LitStr "R]"
  loc_B3492D: LitI4 6
  loc_B34932: FLdRfVar var_A0
  loc_B34935: Ary1StStrCopy
  loc_B34938: LitStr "PL"
  loc_B3493B: LitI4 7
  loc_B34940: FLdRfVar var_A0
  loc_B34943: Ary1StStrCopy
  loc_B34946: LitStr "RN"
  loc_B34949: LitI4 8
  loc_B3494E: FLdRfVar var_A0
  loc_B34951: Ary1StStrCopy
  loc_B34954: LitStr "RR"
  loc_B34957: LitI4 9
  loc_B3495C: FLdRfVar var_A0
  loc_B3495F: Ary1StStrCopy
  loc_B34962: LitVarI2 var_E4, 0
  loc_B34967: FLdRfVar var_B4
  loc_B3496A: LitVarI2 var_D4, 9
  loc_B3496F: ForVar var_104
  loc_B34977: On Error Resume Next
  loc_B3497C: FLdRfVar var_10C
  loc_B3497F: FLdRfVar var_108
  loc_B34982: FLdRfVar var_B4
  loc_B34985: CI2Var
  loc_B34986: FLdPrThis
  loc_B34987: VCallAd Control_ID_catprop
  loc_B3498A: FStAdFunc var_88
  loc_B3498D: FLdPr var_88
  loc_B34990: Set from_stack_2 = Me(from_stack_1)
  loc_B34995: FLdPr var_108
  loc_B34998:  = Me.Text
  loc_B3499D: ImpAdLdI4 MemVar_C0F044
  loc_B349A0: LitStr "room_categories\categories.ini"
  loc_B349A3: ConcatStr
  loc_B349A4: FStStrNoPop var_110
  loc_B349A7: ILdRf var_10C
  loc_B349AA: FLdRfVar var_B4
  loc_B349AD: CI4Var
  loc_B349AF: FLdRfVar var_A0
  loc_B349B2: Ary1LdI4
  loc_B349B3: LitStr "categories"
  loc_B349B6: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B349BB: FFreeStr var_10C = ""
  loc_B349C2: FFreeAd var_88 = ""
  loc_B349CB: FLdRfVar var_10C
  loc_B349CE: FLdRfVar var_108
  loc_B349D1: FLdRfVar var_B4
  loc_B349D4: CI2Var
  loc_B349D5: FLdPrThis
  loc_B349D6: VCallAd Control_ID_catname
  loc_B349D9: FStAdFunc var_88
  loc_B349DC: FLdPr var_88
  loc_B349DF: Set from_stack_2 = Me(from_stack_1)
  loc_B349E4: FLdPr var_108
  loc_B349E7:  = Me.Text
  loc_B349EC: FLdRfVar var_110
  loc_B349EF: FLdRfVar var_134
  loc_B349F2: ImpAdLdRf MemVar_C10514
  loc_B349F5: NewIfNullPr Global
  loc_B349F8:  = Global.App
  loc_B349FD: FLdPr var_134
  loc_B34A00:  = App.Path
  loc_B34A05: ILdRf var_110
  loc_B34A08: LitStr "\locale\"
  loc_B34A0B: ConcatStr
  loc_B34A0C: FStStrNoPop var_16C
  loc_B34A0F: LitI4 0
  loc_B34A14: FStStrCopy var_168
  loc_B34A17: FLdRfVar var_168
  loc_B34A1A: ImpAdLdRf MemVar_C0F03C
  loc_B34A1D: CVarRef
  loc_B34A22: LitVarStr var_144, "lang"
  loc_B34A27: FStVarCopyObj var_154
  loc_B34A2A: FLdRfVar var_154
  loc_B34A2D: LitVarStr var_E4, "server"
  loc_B34A32: PopAdLdVar
  loc_B34A33: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B34A38: FStStrNoPop var_170
  loc_B34A3B: ConcatStr
  loc_B34A3C: FStStrNoPop var_174
  loc_B34A3F: LitStr "\locale.txt"
  loc_B34A42: ConcatStr
  loc_B34A43: FStStrNoPop var_17C
  loc_B34A46: ILdRf var_10C
  loc_B34A49: LitVarStr var_D4, "categorie_"
  loc_B34A4E: FLdRfVar var_B4
  loc_B34A51: LitVarI2 var_C4, 1
  loc_B34A56: AddVar var_120
  loc_B34A5A: ConcatVar var_130
  loc_B34A5E: CStrVarVal var_178
  loc_B34A62: LitStr "locale"
  loc_B34A65: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B34A6A: FFreeStr var_110 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_10C = ""
  loc_B34A7D: FFreeAd var_88 = "": var_108 = ""
  loc_B34A86: FFreeVar var_120 = "": var_154 = ""
  loc_B34A91: FLdRfVar var_17E
  loc_B34A94: FLdRfVar var_108
  loc_B34A97: FLdRfVar var_B4
  loc_B34A9A: CI2Var
  loc_B34A9B: FLdPrThis
  loc_B34A9C: VCallAd Control_ID_allowtraden
  loc_B34A9F: FStAdFunc var_88
  loc_B34AA2: FLdPr var_88
  loc_B34AA5: Set from_stack_2 = Me(from_stack_1)
  loc_B34AAA: FLdPr var_108
  loc_B34AAD:  = Me.Value
  loc_B34AB2: FLdI2 var_17E
  loc_B34AB5: LitI2_Byte 1
  loc_B34AB7: EqI2
  loc_B34AB8: FLdRfVar var_180
  loc_B34ABB: ImpAdLdI4 MemVar_C0F044
  loc_B34ABE: LitStr "room_categories\allowtrade_"
  loc_B34AC1: ConcatStr
  loc_B34AC2: FStStrNoPop var_10C
  loc_B34AC5: FLdRfVar var_B4
  loc_B34AC8: CI4Var
  loc_B34ACA: FLdRfVar var_A0
  loc_B34ACD: Ary1LdI4
  loc_B34ACE: ConcatStr
  loc_B34ACF: FStStrNoPop var_110
  loc_B34AD2: LitStr ".txt"
  loc_B34AD5: ConcatStr
  loc_B34AD6: FStStrNoPop var_168
  loc_B34AD9: ImpAdLdRf MemVar_C0F040
  loc_B34ADC: NewIfNullPr IFileSystem3
  loc_B34ADF: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B34AE4: FLdI2 var_180
  loc_B34AE7: LitI2_Byte 0
  loc_B34AE9: EqI2
  loc_B34AEA: AndI4
  loc_B34AEB: FFreeStr var_10C = "": var_110 = ""
  loc_B34AF4: FFreeAd var_88 = ""
  loc_B34AFB: BranchF loc_B34B3F
  loc_B34B00: FLdRfVar var_88
  loc_B34B03: LitI2_Byte 0
  loc_B34B05: LitI2_Byte &HFF
  loc_B34B07: ImpAdLdI4 MemVar_C0F044
  loc_B34B0A: LitStr "room_categories\allowtrade_"
  loc_B34B0D: ConcatStr
  loc_B34B0E: FStStrNoPop var_10C
  loc_B34B11: FLdRfVar var_B4
  loc_B34B14: CI4Var
  loc_B34B16: FLdRfVar var_A0
  loc_B34B19: Ary1LdI4
  loc_B34B1A: ConcatStr
  loc_B34B1B: FStStrNoPop var_110
  loc_B34B1E: LitStr ".txt"
  loc_B34B21: ConcatStr
  loc_B34B22: FStStrNoPop var_168
  loc_B34B25: ImpAdLdRf MemVar_C0F040
  loc_B34B28: NewIfNullPr IFileSystem3
  loc_B34B2B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B34B30: FFreeStr var_10C = "": var_110 = ""
  loc_B34B39: FFree1Ad var_88
  loc_B34B3C: Branch loc_B34BE4
  loc_B34B41: FLdRfVar var_17E
  loc_B34B44: FLdRfVar var_108
  loc_B34B47: FLdRfVar var_B4
  loc_B34B4A: CI2Var
  loc_B34B4B: FLdPrThis
  loc_B34B4C: VCallAd Control_ID_allowtraden
  loc_B34B4F: FStAdFunc var_88
  loc_B34B52: FLdPr var_88
  loc_B34B55: Set from_stack_2 = Me(from_stack_1)
  loc_B34B5A: FLdPr var_108
  loc_B34B5D:  = Me.Value
  loc_B34B62: FLdI2 var_17E
  loc_B34B65: LitI2_Byte 0
  loc_B34B67: EqI2
  loc_B34B68: FLdRfVar var_180
  loc_B34B6B: ImpAdLdI4 MemVar_C0F044
  loc_B34B6E: LitStr "room_categories\allowtrade_"
  loc_B34B71: ConcatStr
  loc_B34B72: FStStrNoPop var_10C
  loc_B34B75: FLdRfVar var_B4
  loc_B34B78: CI4Var
  loc_B34B7A: FLdRfVar var_A0
  loc_B34B7D: Ary1LdI4
  loc_B34B7E: ConcatStr
  loc_B34B7F: FStStrNoPop var_110
  loc_B34B82: LitStr ".txt"
  loc_B34B85: ConcatStr
  loc_B34B86: FStStrNoPop var_168
  loc_B34B89: ImpAdLdRf MemVar_C0F040
  loc_B34B8C: NewIfNullPr IFileSystem3
  loc_B34B8F: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B34B94: FLdI2 var_180
  loc_B34B97: LitI2_Byte &HFF
  loc_B34B99: EqI2
  loc_B34B9A: AndI4
  loc_B34B9B: FFreeStr var_10C = "": var_110 = ""
  loc_B34BA4: FFreeAd var_88 = ""
  loc_B34BAB: BranchF loc_B34BE4
  loc_B34BB0: LitI2_Byte 0
  loc_B34BB2: ImpAdLdI4 MemVar_C0F044
  loc_B34BB5: LitStr "room_categories\allowtrade_"
  loc_B34BB8: ConcatStr
  loc_B34BB9: FStStrNoPop var_10C
  loc_B34BBC: FLdRfVar var_B4
  loc_B34BBF: CI4Var
  loc_B34BC1: FLdRfVar var_A0
  loc_B34BC4: Ary1LdI4
  loc_B34BC5: ConcatStr
  loc_B34BC6: FStStrNoPop var_110
  loc_B34BC9: LitStr ".txt"
  loc_B34BCC: ConcatStr
  loc_B34BCD: FStStrNoPop var_168
  loc_B34BD0: ImpAdLdRf MemVar_C0F040
  loc_B34BD3: NewIfNullPr IFileSystem3
  loc_B34BD6: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_B34BDB: FFreeStr var_10C = "": var_110 = ""
  loc_B34BE8: FLdRfVar var_B4
  loc_B34BEB: NextStepVar var_104
  loc_B34BF3: LitI2_Byte &HFF
  loc_B34BF5: FLdPrThis
  loc_B34BF6: VCallAd Control_ID_guestcategoriesCommand1
  loc_B34BF9: FStAdFunc var_88
  loc_B34BFC: FLdPr var_88
  loc_B34BFF: Me.Enabled = from_stack_1b
  loc_B34C04: FFree1Ad var_88
  loc_B34C09: LitI2_Byte &HFF
  loc_B34C0B: FLdPrThis
  loc_B34C0C: VCallAd Control_ID_guestcategoriesCommand2
  loc_B34C0F: FStAdFunc var_88
  loc_B34C12: FLdPr var_88
  loc_B34C15: Me.Enabled = from_stack_1b
  loc_B34C1A: FFree1Ad var_88
  loc_B34C1F: LitI2_Byte 0
  loc_B34C21: FLdPrThis
  loc_B34C22: Me.MousePointer = from_stack_1
  loc_B34C29: ExitProcHresult
End Sub

Private Sub guestcategoriesCommand2_Click() 'B1DA18
  'Data Table: 54EE7C
  loc_B1D9AC: LitI2_Byte &HB
  loc_B1D9AE: FLdPrThis
  loc_B1D9AF: Me.MousePointer = from_stack_1
  loc_B1D9B4: LitI2_Byte 0
  loc_B1D9B6: FLdPrThis
  loc_B1D9B7: VCallAd Control_ID_guestcategoriesCommand1
  loc_B1D9BA: FStAdFunc var_88
  loc_B1D9BD: FLdPr var_88
  loc_B1D9C0: Me.Enabled = from_stack_1b
  loc_B1D9C5: FFree1Ad var_88
  loc_B1D9C8: LitI2_Byte 0
  loc_B1D9CA: FLdPrThis
  loc_B1D9CB: VCallAd Control_ID_guestcategoriesCommand2
  loc_B1D9CE: FStAdFunc var_88
  loc_B1D9D1: FLdPr var_88
  loc_B1D9D4: Me.Enabled = from_stack_1b
  loc_B1D9D9: FFree1Ad var_88
  loc_B1D9DC: FLdRfVar var_98
  loc_B1D9DF: ImpAdCallFPR4 Proc_27_7_B4C5DC()
  loc_B1D9E4: FFree1Var var_98 = ""
  loc_B1D9E7: LitI2_Byte &HFF
  loc_B1D9E9: FLdPrThis
  loc_B1D9EA: VCallAd Control_ID_guestcategoriesCommand1
  loc_B1D9ED: FStAdFunc var_88
  loc_B1D9F0: FLdPr var_88
  loc_B1D9F3: Me.Enabled = from_stack_1b
  loc_B1D9F8: FFree1Ad var_88
  loc_B1D9FB: LitI2_Byte &HFF
  loc_B1D9FD: FLdPrThis
  loc_B1D9FE: VCallAd Control_ID_guestcategoriesCommand2
  loc_B1DA01: FStAdFunc var_88
  loc_B1DA04: FLdPr var_88
  loc_B1DA07: Me.Enabled = from_stack_1b
  loc_B1DA0C: FFree1Ad var_88
  loc_B1DA0F: LitI2_Byte 0
  loc_B1DA11: FLdPrThis
  loc_B1DA12: Me.MousePointer = from_stack_1
  loc_B1DA17: ExitProcHresult
End Sub

Private Sub Image5_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1CDA4
  'Data Table: 54EE7C
  loc_B1CD44: ILdI2 Button
  loc_B1CD47: LitI2_Byte 1
  loc_B1CD49: EqI2
  loc_B1CD4A: BranchF loc_B1CD8D
  loc_B1CD4D: ImpAdCallI2 ReleaseCapture()
  loc_B1CD52: FStR4 var_8C
  loc_B1CD55: SetLastSystemError
  loc_B1CD56: ILdRf var_8C
  loc_B1CD59: CR8I4
  loc_B1CD5A: IStFPR4 X
  loc_B1CD5D: FLdRfVar var_8C
  loc_B1CD60: FLdPrThis
  loc_B1CD61:  = Me.hWnd
  loc_B1CD66: LitI4 0
  loc_B1CD6B: PopTmpLdAdStr var_90
  loc_B1CD6E: LitI4 2
  loc_B1CD73: LitI4 &HA1
  loc_B1CD78: ILdRf var_8C
  loc_B1CD7B: ImpAdCallI2 SendMessage(, , , )
  loc_B1CD80: FStR4 var_94
  loc_B1CD83: SetLastSystemError
  loc_B1CD84: ILdRf var_94
  loc_B1CD87: FStR4 var_88
  loc_B1CD8A: Branch loc_B1CDA2
  loc_B1CD8D: ILdRf Me
  loc_B1CD90: FStAdNoPop
  loc_B1CD94: ImpAdLdRf MemVar_C10514
  loc_B1CD97: NewIfNullPr Global
  loc_B1CD9A: Global.Unload from_stack_1
  loc_B1CD9F: FFree1Ad var_98
  loc_B1CDA2: ExitProcHresult
End Sub

Private Sub guestroomCommand1_Click() 'B2D570
  'Data Table: 54EE7C
  loc_B2D2BC: LitI2_Byte &HB
  loc_B2D2BE: FLdPrThis
  loc_B2D2BF: Me.MousePointer = from_stack_1
  loc_B2D2C4: LitI2_Byte 0
  loc_B2D2C6: FLdPrThis
  loc_B2D2C7: VCallAd Control_ID_guestroomCommand1
  loc_B2D2CA: FStAdFunc var_88
  loc_B2D2CD: FLdPr var_88
  loc_B2D2D0: Me.Enabled = from_stack_1b
  loc_B2D2D5: FFree1Ad var_88
  loc_B2D2D8: LitI2_Byte 0
  loc_B2D2DA: FLdPrThis
  loc_B2D2DB: VCallAd Control_ID_guestroomCommand2
  loc_B2D2DE: FStAdFunc var_88
  loc_B2D2E1: FLdPr var_88
  loc_B2D2E4: Me.Enabled = from_stack_1b
  loc_B2D2E9: FFree1Ad var_88
  loc_B2D2EC: FLdRfVar var_96
  loc_B2D2EF: ImpAdLdI4 MemVar_C0F044
  loc_B2D2F2: LitStr "privaterooms\"
  loc_B2D2F5: ConcatStr
  loc_B2D2F6: FStStrNoPop var_90
  loc_B2D2F9: FLdRfVar var_8C
  loc_B2D2FC: FLdPrThis
  loc_B2D2FD: VCallAd Control_ID_guestroomText1
  loc_B2D300: FStAdFunc var_88
  loc_B2D303: FLdPr var_88
  loc_B2D306:  = Me.Text
  loc_B2D30B: ILdRf var_8C
  loc_B2D30E: ConcatStr
  loc_B2D30F: FStStrNoPop var_94
  loc_B2D312: ImpAdLdRf MemVar_C0F040
  loc_B2D315: NewIfNullPr IFileSystem3
  loc_B2D318: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B2D31D: FLdI2 var_96
  loc_B2D320: LitI2_Byte &HFF
  loc_B2D322: EqI2
  loc_B2D323: FFreeStr var_90 = "": var_8C = ""
  loc_B2D32C: FFree1Ad var_88
  loc_B2D32F: BranchF loc_B2D53F
  loc_B2D332: FLdRfVar var_8C
  loc_B2D335: FLdPrThis
  loc_B2D336: VCallAd Control_ID_guestroomText3
  loc_B2D339: FStAdFunc var_88
  loc_B2D33C: FLdPr var_88
  loc_B2D33F:  = Me.Text
  loc_B2D344: ILdRf var_8C
  loc_B2D347: LitStr vbNullString
  loc_B2D34A: EqStr
  loc_B2D34C: FFree1Str var_8C
  loc_B2D34F: FFree1Ad var_88
  loc_B2D352: BranchF loc_B2D36A
  loc_B2D355: LitStr " "
  loc_B2D358: FLdPrThis
  loc_B2D359: VCallAd Control_ID_guestroomText3
  loc_B2D35C: FStAdFunc var_88
  loc_B2D35F: FLdPr var_88
  loc_B2D362: Me.Text = from_stack_1
  loc_B2D367: FFree1Ad var_88
  loc_B2D36A: FLdRfVar var_8C
  loc_B2D36D: FLdPrThis
  loc_B2D36E: VCallAd Control_ID_guestroomText4
  loc_B2D371: FStAdFunc var_88
  loc_B2D374: FLdPr var_88
  loc_B2D377:  = Me.Text
  loc_B2D37C: ILdRf var_8C
  loc_B2D37F: LitStr vbNullString
  loc_B2D382: EqStr
  loc_B2D384: FFree1Str var_8C
  loc_B2D387: FFree1Ad var_88
  loc_B2D38A: BranchF loc_B2D3A2
  loc_B2D38D: LitStr " "
  loc_B2D390: FLdPrThis
  loc_B2D391: VCallAd Control_ID_guestroomText4
  loc_B2D394: FStAdFunc var_88
  loc_B2D397: FLdPr var_88
  loc_B2D39A: Me.Text = from_stack_1
  loc_B2D39F: FFree1Ad var_88
  loc_B2D3A2: FLdRfVar var_8C
  loc_B2D3A5: FLdPrThis
  loc_B2D3A6: VCallAd Control_ID_guestroomText5
  loc_B2D3A9: FStAdFunc var_88
  loc_B2D3AC: FLdPr var_88
  loc_B2D3AF:  = Me.Text
  loc_B2D3B4: ILdRf var_8C
  loc_B2D3B7: LitStr vbNullString
  loc_B2D3BA: EqStr
  loc_B2D3BC: FFree1Str var_8C
  loc_B2D3BF: FFree1Ad var_88
  loc_B2D3C2: BranchF loc_B2D3DA
  loc_B2D3C5: LitStr " "
  loc_B2D3C8: FLdPrThis
  loc_B2D3C9: VCallAd Control_ID_guestroomText5
  loc_B2D3CC: FStAdFunc var_88
  loc_B2D3CF: FLdPr var_88
  loc_B2D3D2: Me.Text = from_stack_1
  loc_B2D3D7: FFree1Ad var_88
  loc_B2D3DA: FLdRfVar var_90
  loc_B2D3DD: FLdPrThis
  loc_B2D3DE: VCallAd Control_ID_guestroomText1
  loc_B2D3E1: FStAdFunc var_9C
  loc_B2D3E4: FLdPr var_9C
  loc_B2D3E7:  = Me.Text
  loc_B2D3EC: FLdRfVar var_8C
  loc_B2D3EF: FLdPrThis
  loc_B2D3F0: VCallAd Control_ID_guestroomText3
  loc_B2D3F3: FStAdFunc var_88
  loc_B2D3F6: FLdPr var_88
  loc_B2D3F9:  = Me.Text
  loc_B2D3FE: ILdRf var_8C
  loc_B2D401: FLdRfVar var_A8
  loc_B2D404: LitI4 0
  loc_B2D409: LitI2_Byte 0
  loc_B2D40B: LitI4 2
  loc_B2D410: ImpAdLdI4 MemVar_C0F044
  loc_B2D413: LitStr "privaterooms\"
  loc_B2D416: ConcatStr
  loc_B2D417: FStStrNoPop var_94
  loc_B2D41A: ILdRf var_90
  loc_B2D41D: ConcatStr
  loc_B2D41E: FStStrNoPop var_A0
  loc_B2D421: LitStr "\name.txt"
  loc_B2D424: ConcatStr
  loc_B2D425: FStStrNoPop var_A4
  loc_B2D428: ImpAdLdRf MemVar_C0F040
  loc_B2D42B: NewIfNullPr IFileSystem3
  loc_B2D42E: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2D433: FLdPr var_A8
  loc_B2D436: from_stack_2 = Me.Write(from_stack_1v)
  loc_B2D43B: FFreeStr var_94 = "": var_90 = "": var_A0 = "": var_A4 = ""
  loc_B2D448: FFreeAd var_88 = "": var_9C = ""
  loc_B2D451: FLdRfVar var_90
  loc_B2D454: FLdPrThis
  loc_B2D455: VCallAd Control_ID_guestroomText1
  loc_B2D458: FStAdFunc var_9C
  loc_B2D45B: FLdPr var_9C
  loc_B2D45E:  = Me.Text
  loc_B2D463: FLdRfVar var_8C
  loc_B2D466: FLdPrThis
  loc_B2D467: VCallAd Control_ID_guestroomText4
  loc_B2D46A: FStAdFunc var_88
  loc_B2D46D: FLdPr var_88
  loc_B2D470:  = Me.Text
  loc_B2D475: ILdRf var_8C
  loc_B2D478: FLdRfVar var_A8
  loc_B2D47B: LitI4 0
  loc_B2D480: LitI2_Byte 0
  loc_B2D482: LitI4 2
  loc_B2D487: ImpAdLdI4 MemVar_C0F044
  loc_B2D48A: LitStr "privaterooms\"
  loc_B2D48D: ConcatStr
  loc_B2D48E: FStStrNoPop var_94
  loc_B2D491: ILdRf var_90
  loc_B2D494: ConcatStr
  loc_B2D495: FStStrNoPop var_A0
  loc_B2D498: LitStr "\description.txt"
  loc_B2D49B: ConcatStr
  loc_B2D49C: FStStrNoPop var_A4
  loc_B2D49F: ImpAdLdRf MemVar_C0F040
  loc_B2D4A2: NewIfNullPr IFileSystem3
  loc_B2D4A5: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2D4AA: FLdPr var_A8
  loc_B2D4AD: from_stack_2 = Me.Write(from_stack_1v)
  loc_B2D4B2: FFreeStr var_94 = "": var_90 = "": var_A0 = "": var_A4 = ""
  loc_B2D4BF: FFreeAd var_88 = "": var_9C = ""
  loc_B2D4C8: FLdRfVar var_90
  loc_B2D4CB: FLdPrThis
  loc_B2D4CC: VCallAd Control_ID_guestroomText1
  loc_B2D4CF: FStAdFunc var_9C
  loc_B2D4D2: FLdPr var_9C
  loc_B2D4D5:  = Me.Text
  loc_B2D4DA: FLdRfVar var_8C
  loc_B2D4DD: FLdPrThis
  loc_B2D4DE: VCallAd Control_ID_guestroomText5
  loc_B2D4E1: FStAdFunc var_88
  loc_B2D4E4: FLdPr var_88
  loc_B2D4E7:  = Me.Text
  loc_B2D4EC: ILdRf var_8C
  loc_B2D4EF: FLdRfVar var_A8
  loc_B2D4F2: LitI4 0
  loc_B2D4F7: LitI2_Byte 0
  loc_B2D4F9: LitI4 2
  loc_B2D4FE: ImpAdLdI4 MemVar_C0F044
  loc_B2D501: LitStr "privaterooms\"
  loc_B2D504: ConcatStr
  loc_B2D505: FStStrNoPop var_94
  loc_B2D508: ILdRf var_90
  loc_B2D50B: ConcatStr
  loc_B2D50C: FStStrNoPop var_A0
  loc_B2D50F: LitStr "\pass.txt"
  loc_B2D512: ConcatStr
  loc_B2D513: FStStrNoPop var_A4
  loc_B2D516: ImpAdLdRf MemVar_C0F040
  loc_B2D519: NewIfNullPr IFileSystem3
  loc_B2D51C: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2D521: FLdPr var_A8
  loc_B2D524: from_stack_2 = Me.Write(from_stack_1v)
  loc_B2D529: FFreeStr var_94 = "": var_90 = "": var_A0 = "": var_A4 = ""
  loc_B2D536: FFreeAd var_88 = "": var_9C = ""
  loc_B2D53F: LitI2_Byte &HFF
  loc_B2D541: FLdPrThis
  loc_B2D542: VCallAd Control_ID_guestroomCommand1
  loc_B2D545: FStAdFunc var_88
  loc_B2D548: FLdPr var_88
  loc_B2D54B: Me.Enabled = from_stack_1b
  loc_B2D550: FFree1Ad var_88
  loc_B2D553: LitI2_Byte &HFF
  loc_B2D555: FLdPrThis
  loc_B2D556: VCallAd Control_ID_guestroomCommand2
  loc_B2D559: FStAdFunc var_88
  loc_B2D55C: FLdPr var_88
  loc_B2D55F: Me.Enabled = from_stack_1b
  loc_B2D564: FFree1Ad var_88
  loc_B2D567: LitI2_Byte 0
  loc_B2D569: FLdPrThis
  loc_B2D56A: Me.MousePointer = from_stack_1
  loc_B2D56F: ExitProcHresult
End Sub

Private Sub guestroomCommand2_Click() 'B1DABC
  'Data Table: 54EE7C
  loc_B1DA50: LitI2_Byte &HB
  loc_B1DA52: FLdPrThis
  loc_B1DA53: Me.MousePointer = from_stack_1
  loc_B1DA58: LitI2_Byte 0
  loc_B1DA5A: FLdPrThis
  loc_B1DA5B: VCallAd Control_ID_guestroomCommand1
  loc_B1DA5E: FStAdFunc var_88
  loc_B1DA61: FLdPr var_88
  loc_B1DA64: Me.Enabled = from_stack_1b
  loc_B1DA69: FFree1Ad var_88
  loc_B1DA6C: LitI2_Byte 0
  loc_B1DA6E: FLdPrThis
  loc_B1DA6F: VCallAd Control_ID_guestroomCommand2
  loc_B1DA72: FStAdFunc var_88
  loc_B1DA75: FLdPr var_88
  loc_B1DA78: Me.Enabled = from_stack_1b
  loc_B1DA7D: FFree1Ad var_88
  loc_B1DA80: FLdRfVar var_98
  loc_B1DA83: ImpAdCallFPR4 Proc_27_6_B4A6E4()
  loc_B1DA88: FFree1Var var_98 = ""
  loc_B1DA8B: LitI2_Byte &HFF
  loc_B1DA8D: FLdPrThis
  loc_B1DA8E: VCallAd Control_ID_guestroomCommand1
  loc_B1DA91: FStAdFunc var_88
  loc_B1DA94: FLdPr var_88
  loc_B1DA97: Me.Enabled = from_stack_1b
  loc_B1DA9C: FFree1Ad var_88
  loc_B1DA9F: LitI2_Byte &HFF
  loc_B1DAA1: FLdPrThis
  loc_B1DAA2: VCallAd Control_ID_guestroomCommand2
  loc_B1DAA5: FStAdFunc var_88
  loc_B1DAA8: FLdPr var_88
  loc_B1DAAB: Me.Enabled = from_stack_1b
  loc_B1DAB0: FFree1Ad var_88
  loc_B1DAB3: LitI2_Byte 0
  loc_B1DAB5: FLdPrThis
  loc_B1DAB6: Me.MousePointer = from_stack_1
  loc_B1DABB: ExitProcHresult
End Sub

Private Sub Image6_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1CECC
  'Data Table: 54EE7C
  loc_B1CE6C: ILdI2 Button
  loc_B1CE6F: LitI2_Byte 1
  loc_B1CE71: EqI2
  loc_B1CE72: BranchF loc_B1CEB5
  loc_B1CE75: ImpAdCallI2 ReleaseCapture()
  loc_B1CE7A: FStR4 var_8C
  loc_B1CE7D: SetLastSystemError
  loc_B1CE7E: ILdRf var_8C
  loc_B1CE81: CR8I4
  loc_B1CE82: IStFPR4 X
  loc_B1CE85: FLdRfVar var_8C
  loc_B1CE88: FLdPrThis
  loc_B1CE89:  = Me.hWnd
  loc_B1CE8E: LitI4 0
  loc_B1CE93: PopTmpLdAdStr var_90
  loc_B1CE96: LitI4 2
  loc_B1CE9B: LitI4 &HA1
  loc_B1CEA0: ILdRf var_8C
  loc_B1CEA3: ImpAdCallI2 SendMessage(, , , )
  loc_B1CEA8: FStR4 var_94
  loc_B1CEAB: SetLastSystemError
  loc_B1CEAC: ILdRf var_94
  loc_B1CEAF: FStR4 var_88
  loc_B1CEB2: Branch loc_B1CECA
  loc_B1CEB5: ILdRf Me
  loc_B1CEB8: FStAdNoPop
  loc_B1CEBC: ImpAdLdRf MemVar_C10514
  loc_B1CEBF: NewIfNullPr Global
  loc_B1CEC2: Global.Unload from_stack_1
  loc_B1CEC7: FFree1Ad var_98
  loc_B1CECA: ExitProcHresult
  loc_B1CECB: ExitProcCy
End Sub

Private Sub guestroomList1_DblClick() 'B36F20
  'Data Table: 54EE7C
  loc_B36B20: FLdRfVar var_8C
  loc_B36B23: FLdPrThis
  loc_B36B24: VCallAd Control_ID_guestroomList1
  loc_B36B27: FStAdFunc var_88
  loc_B36B2A: FLdPr var_88
  loc_B36B2D:  = Me.Text
  loc_B36B32: FLdZeroAd var_8C
  loc_B36B35: CVarStr var_AC
  loc_B36B38: FStVar var_9C
  loc_B36B3C: FFree1Ad var_88
  loc_B36B3F: LitI4 0
  loc_B36B44: LitI4 -1
  loc_B36B49: LitI4 1
  loc_B36B4E: LitStr vbNullString
  loc_B36B51: LitStr ")"
  loc_B36B54: FLdRfVar var_9C
  loc_B36B57: CStrVarVal var_8C
  loc_B36B5B: ImpAdCallI2 Replace(, , , , , )
  loc_B36B60: CVarStr var_AC
  loc_B36B63: FStVar var_9C
  loc_B36B67: FFree1Str var_8C
  loc_B36B6A: LitVarI2 var_148, 0
  loc_B36B6F: PopAdLdVar
  loc_B36B70: LitI4 0
  loc_B36B75: LitI4 -1
  loc_B36B7A: LitVarStr var_118, " "
  loc_B36B7F: FStVarCopyObj var_128
  loc_B36B82: FLdRfVar var_128
  loc_B36B85: FLdRfVar var_9C
  loc_B36B88: CStrVarVal var_108
  loc_B36B8C: FLdRfVar var_138
  loc_B36B8F: ImpAdCallFPR4  = Split(, , , )
  loc_B36B94: FLdRfVar var_138
  loc_B36B97: VarIndexLdVar
  loc_B36B9D: PopAd
  loc_B36B9F: LitVarI2 var_DC, 0
  loc_B36BA4: PopAdLdVar
  loc_B36BA5: LitI4 0
  loc_B36BAA: LitI4 -1
  loc_B36BAF: LitVarStr var_BC, " "
  loc_B36BB4: FStVarCopyObj var_AC
  loc_B36BB7: FLdRfVar var_AC
  loc_B36BBA: FLdRfVar var_9C
  loc_B36BBD: CStrVarVal var_8C
  loc_B36BC1: FLdRfVar var_CC
  loc_B36BC4: ImpAdCallFPR4  = Split(, , , )
  loc_B36BC9: FLdRfVar var_CC
  loc_B36BCC: VarIndexLdRfVarLock
  loc_B36BD4: ImpAdCallI2 IsNumeric()
  loc_B36BD9: FStI2 var_102
  loc_B36BDC: AryUnlock
  loc_B36BDF: FLdI2 var_102
  loc_B36BE2: LitI2_Byte 0
  loc_B36BE4: EqI2
  loc_B36BE5: FLdRfVar var_18E
  loc_B36BE8: ImpAdLdI4 MemVar_C0F044
  loc_B36BEB: LitStr "privaterooms\"
  loc_B36BEE: ConcatStr
  loc_B36BEF: CVarStr var_168
  loc_B36BF2: FLdRfVar var_178
  loc_B36BF5: ConcatVar var_188
  loc_B36BF9: CStrVarVal var_18C
  loc_B36BFD: ImpAdLdRf MemVar_C0F040
  loc_B36C00: NewIfNullPr IFileSystem3
  loc_B36C03: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B36C08: FLdI2 var_18E
  loc_B36C0B: LitI2_Byte 0
  loc_B36C0D: EqI2
  loc_B36C0E: OrI4
  loc_B36C0F: FFreeStr var_8C = "": var_108 = ""
  loc_B36C18: FFreeVar var_AC = "": var_CC = "": var_FC = "": var_128 = "": var_138 = "": var_168 = "": var_178 = ""
  loc_B36C2B: BranchF loc_B36C2F
  loc_B36C2E: ExitProcHresult
  loc_B36C2F: LitVarI2 var_DC, 0
  loc_B36C34: PopAdLdVar
  loc_B36C35: LitI4 0
  loc_B36C3A: LitI4 -1
  loc_B36C3F: LitVarStr var_BC, " "
  loc_B36C44: FStVarCopyObj var_AC
  loc_B36C47: FLdRfVar var_AC
  loc_B36C4A: FLdRfVar var_9C
  loc_B36C4D: CStrVarVal var_8C
  loc_B36C51: FLdRfVar var_CC
  loc_B36C54: ImpAdCallFPR4  = Split(, , , )
  loc_B36C59: FLdRfVar var_CC
  loc_B36C5C: VarIndexLdVar
  loc_B36C62: CStrVarVal var_108
  loc_B36C66: FLdPrThis
  loc_B36C67: VCallAd Control_ID_guestroomText1
  loc_B36C6A: FStAdFunc var_88
  loc_B36C6D: FLdPr var_88
  loc_B36C70: Me.Text = from_stack_1
  loc_B36C75: FFreeStr var_8C = ""
  loc_B36C7C: FFree1Ad var_88
  loc_B36C7F: FFreeVar var_AC = "": var_CC = ""
  loc_B36C88: FLdRfVar var_8C
  loc_B36C8B: FLdPrThis
  loc_B36C8C: VCallAd Control_ID_guestroomText1
  loc_B36C8F: FStAdFunc var_88
  loc_B36C92: FLdPr var_88
  loc_B36C95:  = Me.Text
  loc_B36C9A: FLdRfVar var_19C
  loc_B36C9D: FLdRfVar var_198
  loc_B36CA0: LitI4 0
  loc_B36CA5: LitI2_Byte 0
  loc_B36CA7: LitI4 1
  loc_B36CAC: ImpAdLdI4 MemVar_C0F044
  loc_B36CAF: LitStr "privaterooms\"
  loc_B36CB2: ConcatStr
  loc_B36CB3: FStStrNoPop var_108
  loc_B36CB6: ILdRf var_8C
  loc_B36CB9: ConcatStr
  loc_B36CBA: FStStrNoPop var_18C
  loc_B36CBD: LitStr "\owner.txt"
  loc_B36CC0: ConcatStr
  loc_B36CC1: FStStrNoPop var_194
  loc_B36CC4: ImpAdLdRf MemVar_C0F040
  loc_B36CC7: NewIfNullPr IFileSystem3
  loc_B36CCA: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B36CCF: FLdPr var_198
  loc_B36CD2:  = Me.ReadAll
  loc_B36CD7: ILdRf var_19C
  loc_B36CDA: FLdPrThis
  loc_B36CDB: VCallAd Control_ID_guestroomText2
  loc_B36CDE: FStAdFunc var_1A0
  loc_B36CE1: FLdPr var_1A0
  loc_B36CE4: Me.Text = from_stack_1
  loc_B36CE9: FFreeStr var_108 = "": var_8C = "": var_18C = "": var_194 = ""
  loc_B36CF6: FFreeAd var_88 = "": var_198 = ""
  loc_B36CFF: FLdRfVar var_8C
  loc_B36D02: FLdPrThis
  loc_B36D03: VCallAd Control_ID_guestroomText1
  loc_B36D06: FStAdFunc var_88
  loc_B36D09: FLdPr var_88
  loc_B36D0C:  = Me.Text
  loc_B36D11: FLdRfVar var_19C
  loc_B36D14: FLdRfVar var_198
  loc_B36D17: LitI4 0
  loc_B36D1C: LitI2_Byte 0
  loc_B36D1E: LitI4 1
  loc_B36D23: ImpAdLdI4 MemVar_C0F044
  loc_B36D26: LitStr "privaterooms\"
  loc_B36D29: ConcatStr
  loc_B36D2A: FStStrNoPop var_108
  loc_B36D2D: ILdRf var_8C
  loc_B36D30: ConcatStr
  loc_B36D31: FStStrNoPop var_18C
  loc_B36D34: LitStr "\name.txt"
  loc_B36D37: ConcatStr
  loc_B36D38: FStStrNoPop var_194
  loc_B36D3B: ImpAdLdRf MemVar_C0F040
  loc_B36D3E: NewIfNullPr IFileSystem3
  loc_B36D41: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B36D46: FLdPr var_198
  loc_B36D49:  = Me.ReadAll
  loc_B36D4E: ILdRf var_19C
  loc_B36D51: FLdPrThis
  loc_B36D52: VCallAd Control_ID_guestroomText3
  loc_B36D55: FStAdFunc var_1A0
  loc_B36D58: FLdPr var_1A0
  loc_B36D5B: Me.Text = from_stack_1
  loc_B36D60: FFreeStr var_108 = "": var_8C = "": var_18C = "": var_194 = ""
  loc_B36D6D: FFreeAd var_88 = "": var_198 = ""
  loc_B36D76: FLdRfVar var_8C
  loc_B36D79: FLdPrThis
  loc_B36D7A: VCallAd Control_ID_guestroomText1
  loc_B36D7D: FStAdFunc var_88
  loc_B36D80: FLdPr var_88
  loc_B36D83:  = Me.Text
  loc_B36D88: FLdRfVar var_19C
  loc_B36D8B: FLdRfVar var_198
  loc_B36D8E: LitI4 0
  loc_B36D93: LitI2_Byte 0
  loc_B36D95: LitI4 1
  loc_B36D9A: ImpAdLdI4 MemVar_C0F044
  loc_B36D9D: LitStr "privaterooms\"
  loc_B36DA0: ConcatStr
  loc_B36DA1: FStStrNoPop var_108
  loc_B36DA4: ILdRf var_8C
  loc_B36DA7: ConcatStr
  loc_B36DA8: FStStrNoPop var_18C
  loc_B36DAB: LitStr "\description.txt"
  loc_B36DAE: ConcatStr
  loc_B36DAF: FStStrNoPop var_194
  loc_B36DB2: ImpAdLdRf MemVar_C0F040
  loc_B36DB5: NewIfNullPr IFileSystem3
  loc_B36DB8: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B36DBD: FLdPr var_198
  loc_B36DC0:  = Me.ReadAll
  loc_B36DC5: ILdRf var_19C
  loc_B36DC8: FLdPrThis
  loc_B36DC9: VCallAd Control_ID_guestroomText4
  loc_B36DCC: FStAdFunc var_1A0
  loc_B36DCF: FLdPr var_1A0
  loc_B36DD2: Me.Text = from_stack_1
  loc_B36DD7: FFreeStr var_108 = "": var_8C = "": var_18C = "": var_194 = ""
  loc_B36DE4: FFreeAd var_88 = "": var_198 = ""
  loc_B36DED: FLdRfVar var_8C
  loc_B36DF0: FLdPrThis
  loc_B36DF1: VCallAd Control_ID_guestroomText1
  loc_B36DF4: FStAdFunc var_88
  loc_B36DF7: FLdPr var_88
  loc_B36DFA:  = Me.Text
  loc_B36DFF: FLdRfVar var_19C
  loc_B36E02: FLdRfVar var_198
  loc_B36E05: LitI4 0
  loc_B36E0A: LitI2_Byte 0
  loc_B36E0C: LitI4 1
  loc_B36E11: ImpAdLdI4 MemVar_C0F044
  loc_B36E14: LitStr "privaterooms\"
  loc_B36E17: ConcatStr
  loc_B36E18: FStStrNoPop var_108
  loc_B36E1B: ILdRf var_8C
  loc_B36E1E: ConcatStr
  loc_B36E1F: FStStrNoPop var_18C
  loc_B36E22: LitStr "\pass.txt"
  loc_B36E25: ConcatStr
  loc_B36E26: FStStrNoPop var_194
  loc_B36E29: ImpAdLdRf MemVar_C0F040
  loc_B36E2C: NewIfNullPr IFileSystem3
  loc_B36E2F: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B36E34: FLdPr var_198
  loc_B36E37:  = Me.ReadAll
  loc_B36E3C: ILdRf var_19C
  loc_B36E3F: FLdPrThis
  loc_B36E40: VCallAd Control_ID_guestroomText5
  loc_B36E43: FStAdFunc var_1A0
  loc_B36E46: FLdPr var_1A0
  loc_B36E49: Me.Text = from_stack_1
  loc_B36E4E: FFreeStr var_108 = "": var_8C = "": var_18C = "": var_194 = ""
  loc_B36E5B: FFreeAd var_88 = "": var_198 = ""
  loc_B36E64: FLdRfVar var_8C
  loc_B36E67: FLdPrThis
  loc_B36E68: VCallAd Control_ID_guestroomText5
  loc_B36E6B: FStAdFunc var_88
  loc_B36E6E: FLdPr var_88
  loc_B36E71:  = Me.Text
  loc_B36E76: ILdRf var_8C
  loc_B36E79: LitStr " "
  loc_B36E7C: NeStr
  loc_B36E7E: FLdRfVar var_108
  loc_B36E81: FLdPrThis
  loc_B36E82: VCallAd Control_ID_guestroomText5
  loc_B36E85: FStAdFunc var_198
  loc_B36E88: FLdPr var_198
  loc_B36E8B:  = Me.Text
  loc_B36E90: ILdRf var_108
  loc_B36E93: LitStr vbNullString
  loc_B36E96: NeStr
  loc_B36E98: AndI4
  loc_B36E99: FLdRfVar var_18C
  loc_B36E9C: FLdPrThis
  loc_B36E9D: VCallAd Control_ID_guestroomText5
  loc_B36EA0: FStAdFunc var_1A0
  loc_B36EA3: FLdPr var_1A0
  loc_B36EA6:  = Me.Text
  loc_B36EAB: ILdRf var_18C
  loc_B36EAE: LitStr "null"
  loc_B36EB1: NeStr
  loc_B36EB3: AndI4
  loc_B36EB4: FFreeStr var_8C = "": var_108 = ""
  loc_B36EBD: FFreeAd var_88 = "": var_198 = ""
  loc_B36EC6: BranchF loc_B36EE0
  loc_B36EC9: LitI2_Byte &HFF
  loc_B36ECB: FLdPrThis
  loc_B36ECC: VCallAd Control_ID_guestroomText5
  loc_B36ECF: FStAdFunc var_88
  loc_B36ED2: FLdPr var_88
  loc_B36ED5: Me.Enabled = from_stack_1b
  loc_B36EDA: FFree1Ad var_88
  loc_B36EDD: Branch loc_B36EF4
  loc_B36EE0: LitI2_Byte 0
  loc_B36EE2: FLdPrThis
  loc_B36EE3: VCallAd Control_ID_guestroomText5
  loc_B36EE6: FStAdFunc var_88
  loc_B36EE9: FLdPr var_88
  loc_B36EEC: Me.Enabled = from_stack_1b
  loc_B36EF1: FFree1Ad var_88
  loc_B36EF4: LitI2_Byte &HFF
  loc_B36EF6: FLdPrThis
  loc_B36EF7: VCallAd Control_ID_guestroomText3
  loc_B36EFA: FStAdFunc var_88
  loc_B36EFD: FLdPr var_88
  loc_B36F00: Me.Enabled = from_stack_1b
  loc_B36F05: FFree1Ad var_88
  loc_B36F08: LitI2_Byte &HFF
  loc_B36F0A: FLdPrThis
  loc_B36F0B: VCallAd Control_ID_guestroomText4
  loc_B36F0E: FStAdFunc var_88
  loc_B36F11: FLdPr var_88
  loc_B36F14: Me.Enabled = from_stack_1b
  loc_B36F19: FFree1Ad var_88
  loc_B36F1C: ExitProcHresult
End Sub

Private Sub habbosCommand1_Click() 'B38A90
  'Data Table: 54EE7C
  loc_B38630: LitI2_Byte &HB
  loc_B38632: FLdPrThis
  loc_B38633: Me.MousePointer = from_stack_1
  loc_B38638: LitI2_Byte 0
  loc_B3863A: FLdPrThis
  loc_B3863B: VCallAd Control_ID_habbosCommand1
  loc_B3863E: FStAdFunc var_88
  loc_B38641: FLdPr var_88
  loc_B38644: Me.Enabled = from_stack_1b
  loc_B38649: FFree1Ad var_88
  loc_B3864C: LitI2_Byte 0
  loc_B3864E: FLdPrThis
  loc_B3864F: VCallAd Control_ID_habbosCommand2
  loc_B38652: FStAdFunc var_88
  loc_B38655: FLdPr var_88
  loc_B38658: Me.Enabled = from_stack_1b
  loc_B3865D: FFree1Ad var_88
  loc_B38660: FLdRfVar var_94
  loc_B38663: FLdPrThis
  loc_B38664: VCallAd Control_ID_habbosList1
  loc_B38667: FStAdFunc var_90
  loc_B3866A: FLdPr var_90
  loc_B3866D:  = Me.Text
  loc_B38672: FLdZeroAd var_94
  loc_B38675: CVarStr var_A4
  loc_B38678: FLdRfVar var_B4
  loc_B3867B: ImpAdCallFPR4  = LCase()
  loc_B38680: FLdRfVar var_8C
  loc_B38683: FLdPrThis
  loc_B38684: VCallAd Control_ID_habbosText2
  loc_B38687: FStAdFunc var_88
  loc_B3868A: FLdPr var_88
  loc_B3868D:  = Me.Text
  loc_B38692: ILdRf var_8C
  loc_B38695: FLdRfVar var_FC
  loc_B38698: LitI4 0
  loc_B3869D: LitI2_Byte 0
  loc_B3869F: LitI4 2
  loc_B386A4: ImpAdLdI4 MemVar_C0F044
  loc_B386A7: LitStr "habbos\"
  loc_B386AA: ConcatStr
  loc_B386AB: CVarStr var_C4
  loc_B386AE: FLdRfVar var_B4
  loc_B386B1: ConcatVar var_D4
  loc_B386B5: LitVarStr var_E4, "\pass.txt"
  loc_B386BA: ConcatVar var_F4
  loc_B386BE: CStrVarVal var_F8
  loc_B386C2: ImpAdLdRf MemVar_C0F040
  loc_B386C5: NewIfNullPr IFileSystem3
  loc_B386C8: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B386CD: FLdPr var_FC
  loc_B386D0: from_stack_2 = Me.Write(from_stack_1v)
  loc_B386D5: FFreeStr var_F8 = ""
  loc_B386DC: FFreeAd var_88 = "": var_90 = ""
  loc_B386E5: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B386F2: FLdRfVar var_94
  loc_B386F5: FLdPrThis
  loc_B386F6: VCallAd Control_ID_habbosList1
  loc_B386F9: FStAdFunc var_90
  loc_B386FC: FLdPr var_90
  loc_B386FF:  = Me.Text
  loc_B38704: FLdZeroAd var_94
  loc_B38707: CVarStr var_A4
  loc_B3870A: FLdRfVar var_B4
  loc_B3870D: ImpAdCallFPR4  = LCase()
  loc_B38712: FLdRfVar var_8C
  loc_B38715: FLdPrThis
  loc_B38716: VCallAd Control_ID_habbosText3
  loc_B38719: FStAdFunc var_88
  loc_B3871C: FLdPr var_88
  loc_B3871F:  = Me.Text
  loc_B38724: ILdRf var_8C
  loc_B38727: FLdRfVar var_FC
  loc_B3872A: LitI4 0
  loc_B3872F: LitI2_Byte 0
  loc_B38731: LitI4 2
  loc_B38736: ImpAdLdI4 MemVar_C0F044
  loc_B38739: LitStr "habbos\"
  loc_B3873C: ConcatStr
  loc_B3873D: CVarStr var_C4
  loc_B38740: FLdRfVar var_B4
  loc_B38743: ConcatVar var_D4
  loc_B38747: LitVarStr var_E4, "\mission.txt"
  loc_B3874C: ConcatVar var_F4
  loc_B38750: CStrVarVal var_F8
  loc_B38754: ImpAdLdRf MemVar_C0F040
  loc_B38757: NewIfNullPr IFileSystem3
  loc_B3875A: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B3875F: FLdPr var_FC
  loc_B38762: from_stack_2 = Me.Write(from_stack_1v)
  loc_B38767: FFreeStr var_F8 = ""
  loc_B3876E: FFreeAd var_88 = "": var_90 = ""
  loc_B38777: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B38784: FLdRfVar var_94
  loc_B38787: FLdPrThis
  loc_B38788: VCallAd Control_ID_habbosList1
  loc_B3878B: FStAdFunc var_90
  loc_B3878E: FLdPr var_90
  loc_B38791:  = Me.Text
  loc_B38796: FLdZeroAd var_94
  loc_B38799: CVarStr var_A4
  loc_B3879C: FLdRfVar var_B4
  loc_B3879F: ImpAdCallFPR4  = LCase()
  loc_B387A4: FLdRfVar var_8C
  loc_B387A7: FLdPrThis
  loc_B387A8: VCallAd Control_ID_habbosText4
  loc_B387AB: FStAdFunc var_88
  loc_B387AE: FLdPr var_88
  loc_B387B1:  = Me.Text
  loc_B387B6: ILdRf var_8C
  loc_B387B9: FLdRfVar var_FC
  loc_B387BC: LitI4 0
  loc_B387C1: LitI2_Byte 0
  loc_B387C3: LitI4 2
  loc_B387C8: ImpAdLdI4 MemVar_C0F044
  loc_B387CB: LitStr "habbos\"
  loc_B387CE: ConcatStr
  loc_B387CF: CVarStr var_C4
  loc_B387D2: FLdRfVar var_B4
  loc_B387D5: ConcatVar var_D4
  loc_B387D9: LitVarStr var_E4, "\consolemission.txt"
  loc_B387DE: ConcatVar var_F4
  loc_B387E2: CStrVarVal var_F8
  loc_B387E6: ImpAdLdRf MemVar_C0F040
  loc_B387E9: NewIfNullPr IFileSystem3
  loc_B387EC: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B387F1: FLdPr var_FC
  loc_B387F4: from_stack_2 = Me.Write(from_stack_1v)
  loc_B387F9: FFreeStr var_F8 = ""
  loc_B38800: FFreeAd var_88 = "": var_90 = ""
  loc_B38809: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B38816: FLdRfVar var_94
  loc_B38819: FLdPrThis
  loc_B3881A: VCallAd Control_ID_habbosList1
  loc_B3881D: FStAdFunc var_90
  loc_B38820: FLdPr var_90
  loc_B38823:  = Me.Text
  loc_B38828: FLdZeroAd var_94
  loc_B3882B: CVarStr var_A4
  loc_B3882E: FLdRfVar var_B4
  loc_B38831: ImpAdCallFPR4  = LCase()
  loc_B38836: FLdRfVar var_8C
  loc_B38839: FLdPrThis
  loc_B3883A: VCallAd Control_ID_habbosText5
  loc_B3883D: FStAdFunc var_88
  loc_B38840: FLdPr var_88
  loc_B38843:  = Me.Text
  loc_B38848: ILdRf var_8C
  loc_B3884B: FLdRfVar var_FC
  loc_B3884E: LitI4 0
  loc_B38853: LitI2_Byte 0
  loc_B38855: LitI4 2
  loc_B3885A: ImpAdLdI4 MemVar_C0F044
  loc_B3885D: LitStr "habbos\"
  loc_B38860: ConcatStr
  loc_B38861: CVarStr var_C4
  loc_B38864: FLdRfVar var_B4
  loc_B38867: ConcatVar var_D4
  loc_B3886B: LitVarStr var_E4, "\badges.txt"
  loc_B38870: ConcatVar var_F4
  loc_B38874: CStrVarVal var_F8
  loc_B38878: ImpAdLdRf MemVar_C0F040
  loc_B3887B: NewIfNullPr IFileSystem3
  loc_B3887E: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B38883: FLdPr var_FC
  loc_B38886: from_stack_2 = Me.Write(from_stack_1v)
  loc_B3888B: FFreeStr var_F8 = ""
  loc_B38892: FFreeAd var_88 = "": var_90 = ""
  loc_B3889B: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B388A8: FLdRfVar var_94
  loc_B388AB: FLdPrThis
  loc_B388AC: VCallAd Control_ID_habbosList1
  loc_B388AF: FStAdFunc var_90
  loc_B388B2: FLdPr var_90
  loc_B388B5:  = Me.Text
  loc_B388BA: FLdZeroAd var_94
  loc_B388BD: CVarStr var_A4
  loc_B388C0: FLdRfVar var_B4
  loc_B388C3: ImpAdCallFPR4  = LCase()
  loc_B388C8: FLdRfVar var_8C
  loc_B388CB: FLdPrThis
  loc_B388CC: VCallAd Control_ID_habbosText6
  loc_B388CF: FStAdFunc var_88
  loc_B388D2: FLdPr var_88
  loc_B388D5:  = Me.Text
  loc_B388DA: ILdRf var_8C
  loc_B388DD: FLdRfVar var_FC
  loc_B388E0: LitI4 0
  loc_B388E5: LitI2_Byte 0
  loc_B388E7: LitI4 2
  loc_B388EC: ImpAdLdI4 MemVar_C0F044
  loc_B388EF: LitStr "habbos\"
  loc_B388F2: ConcatStr
  loc_B388F3: CVarStr var_C4
  loc_B388F6: FLdRfVar var_B4
  loc_B388F9: ConcatVar var_D4
  loc_B388FD: LitVarStr var_E4, "\credits.txt"
  loc_B38902: ConcatVar var_F4
  loc_B38906: CStrVarVal var_F8
  loc_B3890A: ImpAdLdRf MemVar_C0F040
  loc_B3890D: NewIfNullPr IFileSystem3
  loc_B38910: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B38915: FLdPr var_FC
  loc_B38918: from_stack_2 = Me.Write(from_stack_1v)
  loc_B3891D: FFreeStr var_F8 = ""
  loc_B38924: FFreeAd var_88 = "": var_90 = ""
  loc_B3892D: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B3893A: FLdRfVar var_94
  loc_B3893D: FLdPrThis
  loc_B3893E: VCallAd Control_ID_habbosList1
  loc_B38941: FStAdFunc var_90
  loc_B38944: FLdPr var_90
  loc_B38947:  = Me.Text
  loc_B3894C: FLdZeroAd var_94
  loc_B3894F: CVarStr var_A4
  loc_B38952: FLdRfVar var_B4
  loc_B38955: ImpAdCallFPR4  = LCase()
  loc_B3895A: FLdRfVar var_8C
  loc_B3895D: FLdPrThis
  loc_B3895E: VCallAd Control_ID_habbosText7
  loc_B38961: FStAdFunc var_88
  loc_B38964: FLdPr var_88
  loc_B38967:  = Me.Text
  loc_B3896C: ILdRf var_8C
  loc_B3896F: FLdRfVar var_FC
  loc_B38972: LitI4 0
  loc_B38977: LitI2_Byte 0
  loc_B38979: LitI4 2
  loc_B3897E: ImpAdLdI4 MemVar_C0F044
  loc_B38981: LitStr "habbos\"
  loc_B38984: ConcatStr
  loc_B38985: CVarStr var_C4
  loc_B38988: FLdRfVar var_B4
  loc_B3898B: ConcatVar var_D4
  loc_B3898F: LitVarStr var_E4, "\tickets.txt"
  loc_B38994: ConcatVar var_F4
  loc_B38998: CStrVarVal var_F8
  loc_B3899C: ImpAdLdRf MemVar_C0F040
  loc_B3899F: NewIfNullPr IFileSystem3
  loc_B389A2: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B389A7: FLdPr var_FC
  loc_B389AA: from_stack_2 = Me.Write(from_stack_1v)
  loc_B389AF: FFreeStr var_F8 = ""
  loc_B389B6: FFreeAd var_88 = "": var_90 = ""
  loc_B389BF: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B389CC: FLdRfVar var_94
  loc_B389CF: FLdPrThis
  loc_B389D0: VCallAd Control_ID_habbosList1
  loc_B389D3: FStAdFunc var_90
  loc_B389D6: FLdPr var_90
  loc_B389D9:  = Me.Text
  loc_B389DE: FLdZeroAd var_94
  loc_B389E1: CVarStr var_A4
  loc_B389E4: FLdRfVar var_B4
  loc_B389E7: ImpAdCallFPR4  = LCase()
  loc_B389EC: FLdRfVar var_8C
  loc_B389EF: FLdPrThis
  loc_B389F0: VCallAd Control_ID_habbosCombo1
  loc_B389F3: FStAdFunc var_88
  loc_B389F6: FLdPr var_88
  loc_B389F9:  = Me.Text
  loc_B389FE: ILdRf var_8C
  loc_B38A01: FLdRfVar var_FC
  loc_B38A04: LitI4 0
  loc_B38A09: LitI2_Byte 0
  loc_B38A0B: LitI4 2
  loc_B38A10: ImpAdLdI4 MemVar_C0F044
  loc_B38A13: LitStr "habbos\"
  loc_B38A16: ConcatStr
  loc_B38A17: CVarStr var_C4
  loc_B38A1A: FLdRfVar var_B4
  loc_B38A1D: ConcatVar var_D4
  loc_B38A21: LitVarStr var_E4, "\rank.txt"
  loc_B38A26: ConcatVar var_F4
  loc_B38A2A: CStrVarVal var_F8
  loc_B38A2E: ImpAdLdRf MemVar_C0F040
  loc_B38A31: NewIfNullPr IFileSystem3
  loc_B38A34: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B38A39: FLdPr var_FC
  loc_B38A3C: from_stack_2 = Me.Write(from_stack_1v)
  loc_B38A41: FFreeStr var_F8 = ""
  loc_B38A48: FFreeAd var_88 = "": var_90 = ""
  loc_B38A51: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B38A5E: LitI2_Byte &HFF
  loc_B38A60: FLdPrThis
  loc_B38A61: VCallAd Control_ID_habbosCommand1
  loc_B38A64: FStAdFunc var_88
  loc_B38A67: FLdPr var_88
  loc_B38A6A: Me.Enabled = from_stack_1b
  loc_B38A6F: FFree1Ad var_88
  loc_B38A72: LitI2_Byte &HFF
  loc_B38A74: FLdPrThis
  loc_B38A75: VCallAd Control_ID_habbosCommand2
  loc_B38A78: FStAdFunc var_88
  loc_B38A7B: FLdPr var_88
  loc_B38A7E: Me.Enabled = from_stack_1b
  loc_B38A83: FFree1Ad var_88
  loc_B38A86: LitI2_Byte 0
  loc_B38A88: FLdPrThis
  loc_B38A89: Me.MousePointer = from_stack_1
  loc_B38A8E: ExitProcHresult
End Sub

Private Sub habbosCommand2_Click() 'B1D000
  'Data Table: 54EE7C
  loc_B1CF98: LitI2_Byte &HB
  loc_B1CF9A: FLdPrThis
  loc_B1CF9B: Me.MousePointer = from_stack_1
  loc_B1CFA0: LitI2_Byte 0
  loc_B1CFA2: FLdPrThis
  loc_B1CFA3: VCallAd Control_ID_limitsCommand1
  loc_B1CFA6: FStAdFunc var_88
  loc_B1CFA9: FLdPr var_88
  loc_B1CFAC: Me.Enabled = from_stack_1b
  loc_B1CFB1: FFree1Ad var_88
  loc_B1CFB4: LitI2_Byte 0
  loc_B1CFB6: FLdPrThis
  loc_B1CFB7: VCallAd Control_ID_limitsCommand2
  loc_B1CFBA: FStAdFunc var_88
  loc_B1CFBD: FLdPr var_88
  loc_B1CFC0: Me.Enabled = from_stack_1b
  loc_B1CFC5: FFree1Ad var_88
  loc_B1CFC8: Call habbosList1_DblClick()
  loc_B1CFCD: LitI2_Byte &HFF
  loc_B1CFCF: FLdPrThis
  loc_B1CFD0: VCallAd Control_ID_limitsCommand1
  loc_B1CFD3: FStAdFunc var_88
  loc_B1CFD6: FLdPr var_88
  loc_B1CFD9: Me.Enabled = from_stack_1b
  loc_B1CFDE: FFree1Ad var_88
  loc_B1CFE1: LitI2_Byte &HFF
  loc_B1CFE3: FLdPrThis
  loc_B1CFE4: VCallAd Control_ID_limitsCommand2
  loc_B1CFE7: FStAdFunc var_88
  loc_B1CFEA: FLdPr var_88
  loc_B1CFED: Me.Enabled = from_stack_1b
  loc_B1CFF2: FFree1Ad var_88
  loc_B1CFF5: LitI2_Byte 0
  loc_B1CFF7: FLdPrThis
  loc_B1CFF8: Me.MousePointer = from_stack_1
  loc_B1CFFD: ExitProcHresult
  loc_B1CFFE: LargeBos
End Sub

Private Sub habbosList1_DblClick() 'B4BE14
  'Data Table: 54EE7C
  loc_B4B6C8: FLdRfVar var_D2
  loc_B4B6CB: ImpAdLdI4 MemVar_C0F044
  loc_B4B6CE: LitStr "habbos\"
  loc_B4B6D1: ConcatStr
  loc_B4B6D2: CVarStr var_BC
  loc_B4B6D5: FLdRfVar var_8C
  loc_B4B6D8: FLdPrThis
  loc_B4B6D9: VCallAd Control_ID_habbosList1
  loc_B4B6DC: FStAdFunc var_88
  loc_B4B6DF: FLdPr var_88
  loc_B4B6E2:  = Me.Text
  loc_B4B6E7: FLdZeroAd var_8C
  loc_B4B6EA: CVarStr var_9C
  loc_B4B6ED: FLdRfVar var_AC
  loc_B4B6F0: ImpAdCallFPR4  = LCase()
  loc_B4B6F5: FLdRfVar var_AC
  loc_B4B6F8: ConcatVar var_CC
  loc_B4B6FC: CStrVarVal var_D0
  loc_B4B700: ImpAdLdRf MemVar_C0F040
  loc_B4B703: NewIfNullPr IFileSystem3
  loc_B4B706: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B4B70B: FLdI2 var_D2
  loc_B4B70E: LitI2_Byte &HFF
  loc_B4B710: EqI2
  loc_B4B711: FFree1Str var_D0
  loc_B4B714: FFree1Ad var_88
  loc_B4B717: FFreeVar var_9C = "": var_BC = "": var_AC = ""
  loc_B4B722: BranchF loc_B4BDD5
  loc_B4B725: FLdRfVar var_8C
  loc_B4B728: FLdPrThis
  loc_B4B729: VCallAd Control_ID_habbosList1
  loc_B4B72C: FStAdFunc var_88
  loc_B4B72F: FLdPr var_88
  loc_B4B732:  = Me.Text
  loc_B4B737: FLdZeroAd var_8C
  loc_B4B73A: CVarStr var_9C
  loc_B4B73D: FLdRfVar var_AC
  loc_B4B740: ImpAdCallFPR4  = LCase()
  loc_B4B745: FLdRfVar var_FC
  loc_B4B748: FLdRfVar var_F8
  loc_B4B74B: LitI4 0
  loc_B4B750: LitI2_Byte 0
  loc_B4B752: LitI4 1
  loc_B4B757: ImpAdLdI4 MemVar_C0F044
  loc_B4B75A: LitStr "habbos\"
  loc_B4B75D: ConcatStr
  loc_B4B75E: CVarStr var_BC
  loc_B4B761: FLdRfVar var_AC
  loc_B4B764: ConcatVar var_CC
  loc_B4B768: LitVarStr var_E4, "\name.txt"
  loc_B4B76D: ConcatVar var_F4
  loc_B4B771: CStrVarVal var_D0
  loc_B4B775: ImpAdLdRf MemVar_C0F040
  loc_B4B778: NewIfNullPr IFileSystem3
  loc_B4B77B: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4B780: FLdPr var_F8
  loc_B4B783:  = Me.ReadAll
  loc_B4B788: ILdRf var_FC
  loc_B4B78B: FLdPrThis
  loc_B4B78C: VCallAd Control_ID_habbosText1
  loc_B4B78F: FStAdFunc var_100
  loc_B4B792: FLdPr var_100
  loc_B4B795: Me.Text = from_stack_1
  loc_B4B79A: FFreeStr var_D0 = ""
  loc_B4B7A1: FFreeAd var_88 = "": var_F8 = ""
  loc_B4B7AA: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = ""
  loc_B4B7B7: FLdRfVar var_8C
  loc_B4B7BA: FLdPrThis
  loc_B4B7BB: VCallAd Control_ID_habbosList1
  loc_B4B7BE: FStAdFunc var_88
  loc_B4B7C1: FLdPr var_88
  loc_B4B7C4:  = Me.Text
  loc_B4B7C9: FLdZeroAd var_8C
  loc_B4B7CC: CVarStr var_9C
  loc_B4B7CF: FLdRfVar var_AC
  loc_B4B7D2: ImpAdCallFPR4  = LCase()
  loc_B4B7D7: FLdRfVar var_FC
  loc_B4B7DA: FLdRfVar var_F8
  loc_B4B7DD: LitI4 0
  loc_B4B7E2: LitI2_Byte 0
  loc_B4B7E4: LitI4 1
  loc_B4B7E9: ImpAdLdI4 MemVar_C0F044
  loc_B4B7EC: LitStr "habbos\"
  loc_B4B7EF: ConcatStr
  loc_B4B7F0: CVarStr var_BC
  loc_B4B7F3: FLdRfVar var_AC
  loc_B4B7F6: ConcatVar var_CC
  loc_B4B7FA: LitVarStr var_E4, "\pass.txt"
  loc_B4B7FF: ConcatVar var_F4
  loc_B4B803: CStrVarVal var_D0
  loc_B4B807: ImpAdLdRf MemVar_C0F040
  loc_B4B80A: NewIfNullPr IFileSystem3
  loc_B4B80D: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4B812: FLdPr var_F8
  loc_B4B815:  = Me.ReadAll
  loc_B4B81A: ILdRf var_FC
  loc_B4B81D: FLdPrThis
  loc_B4B81E: VCallAd Control_ID_habbosText2
  loc_B4B821: FStAdFunc var_100
  loc_B4B824: FLdPr var_100
  loc_B4B827: Me.Text = from_stack_1
  loc_B4B82C: FFreeStr var_D0 = ""
  loc_B4B833: FFreeAd var_88 = "": var_F8 = ""
  loc_B4B83C: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = ""
  loc_B4B849: FLdRfVar var_8C
  loc_B4B84C: FLdPrThis
  loc_B4B84D: VCallAd Control_ID_habbosList1
  loc_B4B850: FStAdFunc var_88
  loc_B4B853: FLdPr var_88
  loc_B4B856:  = Me.Text
  loc_B4B85B: FLdZeroAd var_8C
  loc_B4B85E: CVarStr var_9C
  loc_B4B861: FLdRfVar var_AC
  loc_B4B864: ImpAdCallFPR4  = LCase()
  loc_B4B869: FLdRfVar var_FC
  loc_B4B86C: FLdRfVar var_F8
  loc_B4B86F: LitI4 0
  loc_B4B874: LitI2_Byte 0
  loc_B4B876: LitI4 1
  loc_B4B87B: ImpAdLdI4 MemVar_C0F044
  loc_B4B87E: LitStr "habbos\"
  loc_B4B881: ConcatStr
  loc_B4B882: CVarStr var_BC
  loc_B4B885: FLdRfVar var_AC
  loc_B4B888: ConcatVar var_CC
  loc_B4B88C: LitVarStr var_E4, "\mission.txt"
  loc_B4B891: ConcatVar var_F4
  loc_B4B895: CStrVarVal var_D0
  loc_B4B899: ImpAdLdRf MemVar_C0F040
  loc_B4B89C: NewIfNullPr IFileSystem3
  loc_B4B89F: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4B8A4: FLdPr var_F8
  loc_B4B8A7:  = Me.ReadAll
  loc_B4B8AC: ILdRf var_FC
  loc_B4B8AF: FLdPrThis
  loc_B4B8B0: VCallAd Control_ID_habbosText3
  loc_B4B8B3: FStAdFunc var_100
  loc_B4B8B6: FLdPr var_100
  loc_B4B8B9: Me.Text = from_stack_1
  loc_B4B8BE: FFreeStr var_D0 = ""
  loc_B4B8C5: FFreeAd var_88 = "": var_F8 = ""
  loc_B4B8CE: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = ""
  loc_B4B8DB: FLdRfVar var_8C
  loc_B4B8DE: FLdPrThis
  loc_B4B8DF: VCallAd Control_ID_habbosList1
  loc_B4B8E2: FStAdFunc var_88
  loc_B4B8E5: FLdPr var_88
  loc_B4B8E8:  = Me.Text
  loc_B4B8ED: FLdZeroAd var_8C
  loc_B4B8F0: CVarStr var_9C
  loc_B4B8F3: FLdRfVar var_AC
  loc_B4B8F6: ImpAdCallFPR4  = LCase()
  loc_B4B8FB: FLdRfVar var_FC
  loc_B4B8FE: FLdRfVar var_F8
  loc_B4B901: LitI4 0
  loc_B4B906: LitI2_Byte 0
  loc_B4B908: LitI4 1
  loc_B4B90D: ImpAdLdI4 MemVar_C0F044
  loc_B4B910: LitStr "habbos\"
  loc_B4B913: ConcatStr
  loc_B4B914: CVarStr var_BC
  loc_B4B917: FLdRfVar var_AC
  loc_B4B91A: ConcatVar var_CC
  loc_B4B91E: LitVarStr var_E4, "\consolemission.txt"
  loc_B4B923: ConcatVar var_F4
  loc_B4B927: CStrVarVal var_D0
  loc_B4B92B: ImpAdLdRf MemVar_C0F040
  loc_B4B92E: NewIfNullPr IFileSystem3
  loc_B4B931: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4B936: FLdPr var_F8
  loc_B4B939:  = Me.ReadAll
  loc_B4B93E: ILdRf var_FC
  loc_B4B941: FLdPrThis
  loc_B4B942: VCallAd Control_ID_habbosText4
  loc_B4B945: FStAdFunc var_100
  loc_B4B948: FLdPr var_100
  loc_B4B94B: Me.Text = from_stack_1
  loc_B4B950: FFreeStr var_D0 = ""
  loc_B4B957: FFreeAd var_88 = "": var_F8 = ""
  loc_B4B960: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = ""
  loc_B4B96D: FLdRfVar var_8C
  loc_B4B970: FLdPrThis
  loc_B4B971: VCallAd Control_ID_habbosList1
  loc_B4B974: FStAdFunc var_88
  loc_B4B977: FLdPr var_88
  loc_B4B97A:  = Me.Text
  loc_B4B97F: FLdZeroAd var_8C
  loc_B4B982: CVarStr var_9C
  loc_B4B985: FLdRfVar var_AC
  loc_B4B988: ImpAdCallFPR4  = LCase()
  loc_B4B98D: FLdRfVar var_FC
  loc_B4B990: FLdRfVar var_F8
  loc_B4B993: LitI4 0
  loc_B4B998: LitI2_Byte 0
  loc_B4B99A: LitI4 1
  loc_B4B99F: ImpAdLdI4 MemVar_C0F044
  loc_B4B9A2: LitStr "habbos\"
  loc_B4B9A5: ConcatStr
  loc_B4B9A6: CVarStr var_BC
  loc_B4B9A9: FLdRfVar var_AC
  loc_B4B9AC: ConcatVar var_CC
  loc_B4B9B0: LitVarStr var_E4, "\badges.txt"
  loc_B4B9B5: ConcatVar var_F4
  loc_B4B9B9: CStrVarVal var_D0
  loc_B4B9BD: ImpAdLdRf MemVar_C0F040
  loc_B4B9C0: NewIfNullPr IFileSystem3
  loc_B4B9C3: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4B9C8: FLdPr var_F8
  loc_B4B9CB:  = Me.ReadAll
  loc_B4B9D0: ILdRf var_FC
  loc_B4B9D3: FLdPrThis
  loc_B4B9D4: VCallAd Control_ID_habbosText5
  loc_B4B9D7: FStAdFunc var_100
  loc_B4B9DA: FLdPr var_100
  loc_B4B9DD: Me.Text = from_stack_1
  loc_B4B9E2: FFreeStr var_D0 = ""
  loc_B4B9E9: FFreeAd var_88 = "": var_F8 = ""
  loc_B4B9F2: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = ""
  loc_B4B9FF: FLdRfVar var_8C
  loc_B4BA02: FLdPrThis
  loc_B4BA03: VCallAd Control_ID_habbosList1
  loc_B4BA06: FStAdFunc var_88
  loc_B4BA09: FLdPr var_88
  loc_B4BA0C:  = Me.Text
  loc_B4BA11: FLdZeroAd var_8C
  loc_B4BA14: CVarStr var_9C
  loc_B4BA17: FLdRfVar var_AC
  loc_B4BA1A: ImpAdCallFPR4  = LCase()
  loc_B4BA1F: FLdRfVar var_FC
  loc_B4BA22: FLdRfVar var_F8
  loc_B4BA25: LitI4 0
  loc_B4BA2A: LitI2_Byte 0
  loc_B4BA2C: LitI4 1
  loc_B4BA31: ImpAdLdI4 MemVar_C0F044
  loc_B4BA34: LitStr "habbos\"
  loc_B4BA37: ConcatStr
  loc_B4BA38: CVarStr var_BC
  loc_B4BA3B: FLdRfVar var_AC
  loc_B4BA3E: ConcatVar var_CC
  loc_B4BA42: LitVarStr var_E4, "\credits.txt"
  loc_B4BA47: ConcatVar var_F4
  loc_B4BA4B: CStrVarVal var_D0
  loc_B4BA4F: ImpAdLdRf MemVar_C0F040
  loc_B4BA52: NewIfNullPr IFileSystem3
  loc_B4BA55: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4BA5A: FLdPr var_F8
  loc_B4BA5D:  = Me.ReadAll
  loc_B4BA62: ILdRf var_FC
  loc_B4BA65: FLdPrThis
  loc_B4BA66: VCallAd Control_ID_habbosText6
  loc_B4BA69: FStAdFunc var_100
  loc_B4BA6C: FLdPr var_100
  loc_B4BA6F: Me.Text = from_stack_1
  loc_B4BA74: FFreeStr var_D0 = ""
  loc_B4BA7B: FFreeAd var_88 = "": var_F8 = ""
  loc_B4BA84: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = ""
  loc_B4BA91: FLdRfVar var_8C
  loc_B4BA94: FLdPrThis
  loc_B4BA95: VCallAd Control_ID_habbosList1
  loc_B4BA98: FStAdFunc var_88
  loc_B4BA9B: FLdPr var_88
  loc_B4BA9E:  = Me.Text
  loc_B4BAA3: FLdZeroAd var_8C
  loc_B4BAA6: CVarStr var_9C
  loc_B4BAA9: FLdRfVar var_AC
  loc_B4BAAC: ImpAdCallFPR4  = LCase()
  loc_B4BAB1: FLdRfVar var_FC
  loc_B4BAB4: FLdRfVar var_F8
  loc_B4BAB7: LitI4 0
  loc_B4BABC: LitI2_Byte 0
  loc_B4BABE: LitI4 1
  loc_B4BAC3: ImpAdLdI4 MemVar_C0F044
  loc_B4BAC6: LitStr "habbos\"
  loc_B4BAC9: ConcatStr
  loc_B4BACA: CVarStr var_BC
  loc_B4BACD: FLdRfVar var_AC
  loc_B4BAD0: ConcatVar var_CC
  loc_B4BAD4: LitVarStr var_E4, "\tickets.txt"
  loc_B4BAD9: ConcatVar var_F4
  loc_B4BADD: CStrVarVal var_D0
  loc_B4BAE1: ImpAdLdRf MemVar_C0F040
  loc_B4BAE4: NewIfNullPr IFileSystem3
  loc_B4BAE7: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4BAEC: FLdPr var_F8
  loc_B4BAEF:  = Me.ReadAll
  loc_B4BAF4: ILdRf var_FC
  loc_B4BAF7: FLdPrThis
  loc_B4BAF8: VCallAd Control_ID_habbosText7
  loc_B4BAFB: FStAdFunc var_100
  loc_B4BAFE: FLdPr var_100
  loc_B4BB01: Me.Text = from_stack_1
  loc_B4BB06: FFreeStr var_D0 = ""
  loc_B4BB0D: FFreeAd var_88 = "": var_F8 = ""
  loc_B4BB16: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = ""
  loc_B4BB23: FLdPrThis
  loc_B4BB24: VCallAd Control_ID_habbosCombo1
  loc_B4BB27: FStAdFunc var_88
  loc_B4BB2A: FLdPr var_88
  loc_B4BB2D: Me.Clear
  loc_B4BB32: FFree1Ad var_88
  loc_B4BB35: LitVar_Missing var_E4
  loc_B4BB38: PopAdLdVar
  loc_B4BB39: LitStr "habbo"
  loc_B4BB3C: FLdPrThis
  loc_B4BB3D: VCallAd Control_ID_habbosCombo1
  loc_B4BB40: FStAdFunc var_88
  loc_B4BB43: FLdPr var_88
  loc_B4BB46: Me.AddItem from_stack_1, from_stack_2
  loc_B4BB4B: FFree1Ad var_88
  loc_B4BB4E: LitVar_Missing var_E4
  loc_B4BB51: PopAdLdVar
  loc_B4BB52: LitStr "habbox"
  loc_B4BB55: FLdPrThis
  loc_B4BB56: VCallAd Control_ID_habbosCombo1
  loc_B4BB59: FStAdFunc var_88
  loc_B4BB5C: FLdPr var_88
  loc_B4BB5F: Me.AddItem from_stack_1, from_stack_2
  loc_B4BB64: FFree1Ad var_88
  loc_B4BB67: LitVar_Missing var_E4
  loc_B4BB6A: PopAdLdVar
  loc_B4BB6B: LitStr "silver"
  loc_B4BB6E: FLdPrThis
  loc_B4BB6F: VCallAd Control_ID_habbosCombo1
  loc_B4BB72: FStAdFunc var_88
  loc_B4BB75: FLdPr var_88
  loc_B4BB78: Me.AddItem from_stack_1, from_stack_2
  loc_B4BB7D: FFree1Ad var_88
  loc_B4BB80: LitVar_Missing var_E4
  loc_B4BB83: PopAdLdVar
  loc_B4BB84: LitStr "gold"
  loc_B4BB87: FLdPrThis
  loc_B4BB88: VCallAd Control_ID_habbosCombo1
  loc_B4BB8B: FStAdFunc var_88
  loc_B4BB8E: FLdPr var_88
  loc_B4BB91: Me.AddItem from_stack_1, from_stack_2
  loc_B4BB96: FFree1Ad var_88
  loc_B4BB99: LitVar_Missing var_E4
  loc_B4BB9C: PopAdLdVar
  loc_B4BB9D: LitStr "moderator"
  loc_B4BBA0: FLdPrThis
  loc_B4BBA1: VCallAd Control_ID_habbosCombo1
  loc_B4BBA4: FStAdFunc var_88
  loc_B4BBA7: FLdPr var_88
  loc_B4BBAA: Me.AddItem from_stack_1, from_stack_2
  loc_B4BBAF: FFree1Ad var_88
  loc_B4BBB2: LitVar_Missing var_E4
  loc_B4BBB5: PopAdLdVar
  loc_B4BBB6: LitStr "admin"
  loc_B4BBB9: FLdPrThis
  loc_B4BBBA: VCallAd Control_ID_habbosCombo1
  loc_B4BBBD: FStAdFunc var_88
  loc_B4BBC0: FLdPr var_88
  loc_B4BBC3: Me.AddItem from_stack_1, from_stack_2
  loc_B4BBC8: FFree1Ad var_88
  loc_B4BBCB: FLdRfVar var_8C
  loc_B4BBCE: FLdPrThis
  loc_B4BBCF: VCallAd Control_ID_habbosList1
  loc_B4BBD2: FStAdFunc var_88
  loc_B4BBD5: FLdPr var_88
  loc_B4BBD8:  = Me.Text
  loc_B4BBDD: FLdZeroAd var_8C
  loc_B4BBE0: CVarStr var_9C
  loc_B4BBE3: FLdRfVar var_AC
  loc_B4BBE6: ImpAdCallFPR4  = LCase()
  loc_B4BBEB: FLdRfVar var_FC
  loc_B4BBEE: FLdRfVar var_F8
  loc_B4BBF1: LitI4 0
  loc_B4BBF6: LitI2_Byte 0
  loc_B4BBF8: LitI4 1
  loc_B4BBFD: ImpAdLdI4 MemVar_C0F044
  loc_B4BC00: LitStr "habbos\"
  loc_B4BC03: ConcatStr
  loc_B4BC04: CVarStr var_BC
  loc_B4BC07: FLdRfVar var_AC
  loc_B4BC0A: ConcatVar var_CC
  loc_B4BC0E: LitVarStr var_E4, "\rank.txt"
  loc_B4BC13: ConcatVar var_F4
  loc_B4BC17: CStrVarVal var_D0
  loc_B4BC1B: ImpAdLdRf MemVar_C0F040
  loc_B4BC1E: NewIfNullPr IFileSystem3
  loc_B4BC21: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4BC26: FLdPr var_F8
  loc_B4BC29:  = Me.ReadAll
  loc_B4BC2E: ILdRf var_FC
  loc_B4BC31: FLdPrThis
  loc_B4BC32: VCallAd Control_ID_habbosCombo1
  loc_B4BC35: FStAdFunc var_100
  loc_B4BC38: FLdPr var_100
  loc_B4BC3B: Me.Text = from_stack_1
  loc_B4BC40: FFreeStr var_D0 = ""
  loc_B4BC47: FFreeAd var_88 = "": var_F8 = ""
  loc_B4BC50: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = ""
  loc_B4BC5D: LitI2_Byte &HFF
  loc_B4BC5F: FLdPrThis
  loc_B4BC60: VCallAd Control_ID_habbosText2
  loc_B4BC63: FStAdFunc var_88
  loc_B4BC66: FLdPr var_88
  loc_B4BC69: Me.Enabled = from_stack_1b
  loc_B4BC6E: FFree1Ad var_88
  loc_B4BC71: LitI2_Byte &HFF
  loc_B4BC73: FLdPrThis
  loc_B4BC74: VCallAd Control_ID_habbosText3
  loc_B4BC77: FStAdFunc var_88
  loc_B4BC7A: FLdPr var_88
  loc_B4BC7D: Me.Enabled = from_stack_1b
  loc_B4BC82: FFree1Ad var_88
  loc_B4BC85: LitI2_Byte &HFF
  loc_B4BC87: FLdPrThis
  loc_B4BC88: VCallAd Control_ID_habbosText4
  loc_B4BC8B: FStAdFunc var_88
  loc_B4BC8E: FLdPr var_88
  loc_B4BC91: Me.Enabled = from_stack_1b
  loc_B4BC96: FFree1Ad var_88
  loc_B4BC99: LitI2_Byte &HFF
  loc_B4BC9B: FLdPrThis
  loc_B4BC9C: VCallAd Control_ID_habbosText5
  loc_B4BC9F: FStAdFunc var_88
  loc_B4BCA2: FLdPr var_88
  loc_B4BCA5: Me.Enabled = from_stack_1b
  loc_B4BCAA: FFree1Ad var_88
  loc_B4BCAD: LitI2_Byte &HFF
  loc_B4BCAF: FLdPrThis
  loc_B4BCB0: VCallAd Control_ID_habbosText6
  loc_B4BCB3: FStAdFunc var_88
  loc_B4BCB6: FLdPr var_88
  loc_B4BCB9: Me.Enabled = from_stack_1b
  loc_B4BCBE: FFree1Ad var_88
  loc_B4BCC1: LitI2_Byte &HFF
  loc_B4BCC3: FLdPrThis
  loc_B4BCC4: VCallAd Control_ID_habbosText7
  loc_B4BCC7: FStAdFunc var_88
  loc_B4BCCA: FLdPr var_88
  loc_B4BCCD: Me.Enabled = from_stack_1b
  loc_B4BCD2: FFree1Ad var_88
  loc_B4BCD5: LitI2_Byte &HFF
  loc_B4BCD7: FLdPrThis
  loc_B4BCD8: VCallAd Control_ID_habbosCombo1
  loc_B4BCDB: FStAdFunc var_88
  loc_B4BCDE: FLdPr var_88
  loc_B4BCE1: Me.Enabled = from_stack_1b
  loc_B4BCE6: FFree1Ad var_88
  loc_B4BCE9: LitVarI2 var_E4, 0
  loc_B4BCEE: FStVar var_110
  loc_B4BCF2: LitVarI2 var_144, 1
  loc_B4BCF7: FLdRfVar var_120
  loc_B4BCFA: FLdRfVar var_124
  loc_B4BCFD: ImpAdLdRf MemVar_C0F018
  loc_B4BD00: NewIfNullPr frmMain
  loc_B4BD03: from_stack_1v = frmMain.SockIGet()
  loc_B4BD08: ILdRf var_124
  loc_B4BD0B: CVarI4
  loc_B4BD0F: ForVar var_164
  loc_B4BD15: FLdRfVar var_120
  loc_B4BD18: CI4Var
  loc_B4BD1A: ImpAdLdI4 MemVar_C0F100
  loc_B4BD1D: Ary1LdPr
  loc_B4BD1E: MemLdStr global_204
  loc_B4BD21: FLdRfVar var_8C
  loc_B4BD24: FLdPrThis
  loc_B4BD25: VCallAd Control_ID_
  loc_B4BD28: FStAdFunc var_88
  loc_B4BD2B: FLdPr var_88
  loc_B4BD2E:  = frmMain.ListBox.Text
  loc_B4BD33: ILdRf var_8C
  loc_B4BD36: EqStr
  loc_B4BD38: FFree1Str var_8C
  loc_B4BD3B: FFree1Ad var_88
  loc_B4BD3E: BranchF loc_B4BD90
  loc_B4BD41: FLdRfVar var_F8
  loc_B4BD44: FLdRfVar var_120
  loc_B4BD47: CI2Var
  loc_B4BD48: ImpAdLdRf MemVar_C0F018
  loc_B4BD4B: NewIfNullPr frmMain
  loc_B4BD4E: VCallAd Control_ID_
  loc_B4BD51: FStAdFunc var_88
  loc_B4BD54: FLdPr var_88
  loc_B4BD57: Set from_stack_2 = frmMain(from_stack_1)
  loc_B4BD5C: FLdPr var_F8
  loc_B4BD5F: LateIdLdVar var_9C DispID_8 0
  loc_B4BD66: CI2Var
  loc_B4BD67: CI4UI1
  loc_B4BD68: LitI4 7
  loc_B4BD6D: EqI4
  loc_B4BD6E: FFreeAd var_88 = ""
  loc_B4BD75: FFree1Var var_9C = ""
  loc_B4BD78: BranchF loc_B4BD87
  loc_B4BD7B: LitVarI2 var_E4, 1
  loc_B4BD80: FStVar var_110
  loc_B4BD84: Branch loc_B4BD90
  loc_B4BD87: LitVarI2 var_E4, 0
  loc_B4BD8C: FStVar var_110
  loc_B4BD90: FLdRfVar var_120
  loc_B4BD93: NextStepVar var_164
  loc_B4BD99: FLdRfVar var_110
  loc_B4BD9C: LitVarI2 var_E4, 1
  loc_B4BDA1: HardType
  loc_B4BDA2: EqVarBool
  loc_B4BDA4: BranchF loc_B4BDBE
  loc_B4BDA7: LitI2_Byte &HFF
  loc_B4BDA9: FLdPrThis
  loc_B4BDAA: VCallAd Control_ID_habbosImage2
  loc_B4BDAD: FStAdFunc var_88
  loc_B4BDB0: FLdPr var_88
  loc_B4BDB3: Me.Visible = from_stack_1b
  loc_B4BDB8: FFree1Ad var_88
  loc_B4BDBB: Branch loc_B4BDD2
  loc_B4BDBE: LitI2_Byte 0
  loc_B4BDC0: FLdPrThis
  loc_B4BDC1: VCallAd Control_ID_habbosImage2
  loc_B4BDC4: FStAdFunc var_88
  loc_B4BDC7: FLdPr var_88
  loc_B4BDCA: Me.Visible = from_stack_1b
  loc_B4BDCF: FFree1Ad var_88
  loc_B4BDD2: Branch loc_B4BE12
  loc_B4BDD5: LitVarStr var_E4, "user_doesnt_exists"
  loc_B4BDDA: PopAdLdVar
  loc_B4BDDB: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4BDE0: FStStr var_8C
  loc_B4BDE3: LitVar_Missing var_CC
  loc_B4BDE6: LitVar_Missing var_BC
  loc_B4BDE9: LitVarStr var_134, "Server"
  loc_B4BDEE: FStVarCopyObj var_AC
  loc_B4BDF1: FLdRfVar var_AC
  loc_B4BDF4: LitI4 &H10
  loc_B4BDF9: FLdZeroAd var_8C
  loc_B4BDFC: CVarStr var_9C
  loc_B4BDFF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B4BE04: FFree1Str var_8C
  loc_B4BE07: FFreeVar var_9C = "": var_AC = "": var_BC = ""
  loc_B4BE12: ExitProcHresult
End Sub

Private Sub limitsCommand1_Click() 'B23868
  'Data Table: 54EE7C
  loc_B23738: LitI2_Byte &HB
  loc_B2373A: FLdPrThis
  loc_B2373B: Me.MousePointer = from_stack_1
  loc_B23740: LitI2_Byte 0
  loc_B23742: FLdPrThis
  loc_B23743: VCallAd Control_ID_limitsCommand1
  loc_B23746: FStAdFunc var_88
  loc_B23749: FLdPr var_88
  loc_B2374C: Me.Enabled = from_stack_1b
  loc_B23751: FFree1Ad var_88
  loc_B23754: LitI2_Byte 0
  loc_B23756: FLdPrThis
  loc_B23757: VCallAd Control_ID_limitsCommand2
  loc_B2375A: FStAdFunc var_88
  loc_B2375D: FLdPr var_88
  loc_B23760: Me.Enabled = from_stack_1b
  loc_B23765: FFree1Ad var_88
  loc_B23768: FLdRfVar var_8C
  loc_B2376B: FLdPrThis
  loc_B2376C: VCallAd Control_ID_limitsText1
  loc_B2376F: FStAdFunc var_88
  loc_B23772: FLdPr var_88
  loc_B23775:  = Me.Text
  loc_B2377A: ImpAdLdI4 MemVar_C0F03C
  loc_B2377D: ILdRf var_8C
  loc_B23780: LitStr "maxroomsperuser"
  loc_B23783: LitStr "config"
  loc_B23786: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2378B: FFree1Str var_8C
  loc_B2378E: FFree1Ad var_88
  loc_B23791: FLdRfVar var_8C
  loc_B23794: FLdPrThis
  loc_B23795: VCallAd Control_ID_limitsText2
  loc_B23798: FStAdFunc var_88
  loc_B2379B: FLdPr var_88
  loc_B2379E:  = Me.Text
  loc_B237A3: ImpAdLdI4 MemVar_C0F03C
  loc_B237A6: ILdRf var_8C
  loc_B237A9: LitStr "maxguestroomsinlist"
  loc_B237AC: LitStr "config"
  loc_B237AF: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B237B4: FFree1Str var_8C
  loc_B237B7: FFree1Ad var_88
  loc_B237BA: FLdRfVar var_8C
  loc_B237BD: FLdPrThis
  loc_B237BE: VCallAd Control_ID_limitsText3
  loc_B237C1: FStAdFunc var_88
  loc_B237C4: FLdPr var_88
  loc_B237C7:  = Me.Text
  loc_B237CC: ImpAdLdI4 MemVar_C0F03C
  loc_B237CF: ILdRf var_8C
  loc_B237D2: LitStr "maxfavouriterooms"
  loc_B237D5: LitStr "config"
  loc_B237D8: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B237DD: FFree1Str var_8C
  loc_B237E0: FFree1Ad var_88
  loc_B237E3: FLdRfVar var_8C
  loc_B237E6: FLdPrThis
  loc_B237E7: VCallAd Control_ID_limitsText4
  loc_B237EA: FStAdFunc var_88
  loc_B237ED: FLdPr var_88
  loc_B237F0:  = Me.Text
  loc_B237F5: ImpAdLdI4 MemVar_C0F03C
  loc_B237F8: ILdRf var_8C
  loc_B237FB: LitStr "maxrollersinroom"
  loc_B237FE: LitStr "config"
  loc_B23801: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B23806: FFree1Str var_8C
  loc_B23809: FFree1Ad var_88
  loc_B2380C: FLdRfVar var_8C
  loc_B2380F: FLdPrThis
  loc_B23810: VCallAd Control_ID_limitsText5
  loc_B23813: FStAdFunc var_88
  loc_B23816: FLdPr var_88
  loc_B23819:  = Me.Text
  loc_B2381E: ImpAdLdI4 MemVar_C0F03C
  loc_B23821: ILdRf var_8C
  loc_B23824: LitStr "maxpetsinroom"
  loc_B23827: LitStr "config"
  loc_B2382A: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2382F: FFree1Str var_8C
  loc_B23832: FFree1Ad var_88
  loc_B23835: LitI2_Byte &HFF
  loc_B23837: FLdPrThis
  loc_B23838: VCallAd Control_ID_limitsCommand1
  loc_B2383B: FStAdFunc var_88
  loc_B2383E: FLdPr var_88
  loc_B23841: Me.Enabled = from_stack_1b
  loc_B23846: FFree1Ad var_88
  loc_B23849: LitI2_Byte &HFF
  loc_B2384B: FLdPrThis
  loc_B2384C: VCallAd Control_ID_limitsCommand2
  loc_B2384F: FStAdFunc var_88
  loc_B23852: FLdPr var_88
  loc_B23855: Me.Enabled = from_stack_1b
  loc_B2385A: FFree1Ad var_88
  loc_B2385D: LitI2_Byte 0
  loc_B2385F: FLdPrThis
  loc_B23860: Me.MousePointer = from_stack_1
  loc_B23865: ExitProcHresult
End Sub

Private Sub limitsCommand2_Click() 'B1D974
  'Data Table: 54EE7C
  loc_B1D908: LitI2_Byte &HB
  loc_B1D90A: FLdPrThis
  loc_B1D90B: Me.MousePointer = from_stack_1
  loc_B1D910: LitI2_Byte 0
  loc_B1D912: FLdPrThis
  loc_B1D913: VCallAd Control_ID_limitsCommand1
  loc_B1D916: FStAdFunc var_88
  loc_B1D919: FLdPr var_88
  loc_B1D91C: Me.Enabled = from_stack_1b
  loc_B1D921: FFree1Ad var_88
  loc_B1D924: LitI2_Byte 0
  loc_B1D926: FLdPrThis
  loc_B1D927: VCallAd Control_ID_limitsCommand2
  loc_B1D92A: FStAdFunc var_88
  loc_B1D92D: FLdPr var_88
  loc_B1D930: Me.Enabled = from_stack_1b
  loc_B1D935: FFree1Ad var_88
  loc_B1D938: FLdRfVar var_98
  loc_B1D93B: ImpAdCallFPR4 Proc_27_2_B4059C()
  loc_B1D940: FFree1Var var_98 = ""
  loc_B1D943: LitI2_Byte &HFF
  loc_B1D945: FLdPrThis
  loc_B1D946: VCallAd Control_ID_limitsCommand1
  loc_B1D949: FStAdFunc var_88
  loc_B1D94C: FLdPr var_88
  loc_B1D94F: Me.Enabled = from_stack_1b
  loc_B1D954: FFree1Ad var_88
  loc_B1D957: LitI2_Byte &HFF
  loc_B1D959: FLdPrThis
  loc_B1D95A: VCallAd Control_ID_limitsCommand2
  loc_B1D95D: FStAdFunc var_88
  loc_B1D960: FLdPr var_88
  loc_B1D963: Me.Enabled = from_stack_1b
  loc_B1D968: FFree1Ad var_88
  loc_B1D96B: LitI2_Byte 0
  loc_B1D96D: FLdPrThis
  loc_B1D96E: Me.MousePointer = from_stack_1
  loc_B1D973: ExitProcHresult
End Sub

Private Sub filterImage2_Click() 'B2D87C
  'Data Table: 54EE7C
  loc_B2D5C0: FLdRfVar var_90
  loc_B2D5C3: FLdPrThis
  loc_B2D5C4: VCallAd Control_ID_filterList1
  loc_B2D5C7: FStAdFunc var_8C
  loc_B2D5CA: FLdPr var_8C
  loc_B2D5CD:  = Me.Text
  loc_B2D5D2: ILdRf var_90
  loc_B2D5D5: LitStr vbNullString
  loc_B2D5D8: EqStr
  loc_B2D5DA: FFree1Str var_90
  loc_B2D5DD: FFree1Ad var_8C
  loc_B2D5E0: BranchF loc_B2D5E4
  loc_B2D5E3: ExitProcHresult
  loc_B2D5E4: FLdRfVar var_94
  loc_B2D5E7: FLdRfVar var_8C
  loc_B2D5EA: LitI4 0
  loc_B2D5EF: LitI2_Byte 0
  loc_B2D5F1: LitI4 1
  loc_B2D5F6: ImpAdLdI4 MemVar_C0F044
  loc_B2D5F9: LitStr "configuration\bobbafilter.ini"
  loc_B2D5FC: ConcatStr
  loc_B2D5FD: FStStrNoPop var_90
  loc_B2D600: ImpAdLdRf MemVar_C0F040
  loc_B2D603: NewIfNullPr IFileSystem3
  loc_B2D606: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2D60B: FLdPr var_8C
  loc_B2D60E:  = Me.ReadAll
  loc_B2D613: FLdZeroAd var_94
  loc_B2D616: FStStr var_88
  loc_B2D619: FFree1Str var_90
  loc_B2D61C: FFree1Ad var_8C
  loc_B2D61F: LitI4 0
  loc_B2D624: LitI4 -1
  loc_B2D629: LitI4 1
  loc_B2D62E: LitStr vbCrLf
  loc_B2D631: LitStr vbCrLf
  loc_B2D634: LitStr vbCrLf
  loc_B2D637: ConcatStr
  loc_B2D638: FStStrNoPop var_90
  loc_B2D63B: ILdRf var_88
  loc_B2D63E: ImpAdCallI2 Replace(, , , , , )
  loc_B2D643: FStStr var_88
  loc_B2D646: FFree1Str var_90
  loc_B2D649: LitI4 0
  loc_B2D64E: LitI4 -1
  loc_B2D653: LitI4 1
  loc_B2D658: LitStr vbCrLf
  loc_B2D65B: LitStr vbCrLf
  loc_B2D65E: LitStr vbCrLf
  loc_B2D661: ConcatStr
  loc_B2D662: FStStrNoPop var_90
  loc_B2D665: ILdRf var_88
  loc_B2D668: ImpAdCallI2 Replace(, , , , , )
  loc_B2D66D: FStStr var_88
  loc_B2D670: FFree1Str var_90
  loc_B2D673: LitI4 0
  loc_B2D678: LitI4 -1
  loc_B2D67D: LitI4 1
  loc_B2D682: LitStr vbCrLf
  loc_B2D685: LitStr vbCrLf
  loc_B2D688: LitStr vbCrLf
  loc_B2D68B: ConcatStr
  loc_B2D68C: FStStrNoPop var_90
  loc_B2D68F: ILdRf var_88
  loc_B2D692: ImpAdCallI2 Replace(, , , , , )
  loc_B2D697: FStStr var_88
  loc_B2D69A: FFree1Str var_90
  loc_B2D69D: LitI4 1
  loc_B2D6A2: FLdRfVar var_88
  loc_B2D6A5: CVarRef
  loc_B2D6AA: FLdRfVar var_B4
  loc_B2D6AD: ImpAdCallFPR4  = Left(, )
  loc_B2D6B2: FLdRfVar var_B4
  loc_B2D6B5: LitVarStr var_C4, vbCrLf
  loc_B2D6BA: HardType
  loc_B2D6BB: EqVarBool
  loc_B2D6BD: FFree1Var var_B4 = ""
  loc_B2D6C0: BranchF loc_B2D6E9
  loc_B2D6C3: LitVar_Missing var_B4
  loc_B2D6C6: LitI4 2
  loc_B2D6CB: FLdRfVar var_88
  loc_B2D6CE: CVarRef
  loc_B2D6D3: FLdRfVar var_D4
  loc_B2D6D6: ImpAdCallFPR4  = Mid(, , )
  loc_B2D6DB: FLdRfVar var_D4
  loc_B2D6DE: CStrVarTmp
  loc_B2D6DF: FStStr var_88
  loc_B2D6E2: FFreeVar var_B4 = ""
  loc_B2D6E9: LitI4 1
  loc_B2D6EE: FLdRfVar var_88
  loc_B2D6F1: CVarRef
  loc_B2D6F6: FLdRfVar var_B4
  loc_B2D6F9: ImpAdCallFPR4  = Right(, )
  loc_B2D6FE: FLdRfVar var_B4
  loc_B2D701: LitVarStr var_C4, vbCrLf
  loc_B2D706: HardType
  loc_B2D707: NeVarBool
  loc_B2D709: FFree1Var var_B4 = ""
  loc_B2D70C: BranchF loc_B2D719
  loc_B2D70F: ILdRf var_88
  loc_B2D712: LitStr vbCrLf
  loc_B2D715: ConcatStr
  loc_B2D716: FStStr var_88
  loc_B2D719: FLdRfVar var_90
  loc_B2D71C: FLdPrThis
  loc_B2D71D: VCallAd Control_ID_filterList1
  loc_B2D720: FStAdFunc var_8C
  loc_B2D723: FLdPr var_8C
  loc_B2D726:  = Me.Text
  loc_B2D72B: LitI4 0
  loc_B2D730: LitI4 -1
  loc_B2D735: LitI4 1
  loc_B2D73A: LitStr vbNullString
  loc_B2D73D: ILdRf var_90
  loc_B2D740: LitStr vbCrLf
  loc_B2D743: ConcatStr
  loc_B2D744: FStStrNoPop var_94
  loc_B2D747: ILdRf var_88
  loc_B2D74A: ImpAdCallI2 Replace(, , , , , )
  loc_B2D74F: FStStr var_88
  loc_B2D752: FFreeStr var_90 = ""
  loc_B2D759: FFree1Ad var_8C
  loc_B2D75C: ILdRf var_88
  loc_B2D75F: FLdRfVar var_8C
  loc_B2D762: LitI4 0
  loc_B2D767: LitI2_Byte 0
  loc_B2D769: LitI4 2
  loc_B2D76E: ImpAdLdI4 MemVar_C0F044
  loc_B2D771: LitStr "configuration\bobbafilter.ini"
  loc_B2D774: ConcatStr
  loc_B2D775: FStStrNoPop var_90
  loc_B2D778: ImpAdLdRf MemVar_C0F040
  loc_B2D77B: NewIfNullPr IFileSystem3
  loc_B2D77E: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2D783: FLdPr var_8C
  loc_B2D786: from_stack_2 = Me.Write(from_stack_1v)
  loc_B2D78B: FFree1Str var_90
  loc_B2D78E: FFree1Ad var_8C
  loc_B2D791: FLdRfVar var_94
  loc_B2D794: FLdRfVar var_8C
  loc_B2D797: LitI4 0
  loc_B2D79C: LitI2_Byte 0
  loc_B2D79E: LitI4 1
  loc_B2D7A3: ImpAdLdI4 MemVar_C0F044
  loc_B2D7A6: LitStr "configuration\bobbafilter.ini"
  loc_B2D7A9: ConcatStr
  loc_B2D7AA: FStStrNoPop var_90
  loc_B2D7AD: ImpAdLdRf MemVar_C0F040
  loc_B2D7B0: NewIfNullPr IFileSystem3
  loc_B2D7B3: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2D7B8: FLdPr var_8C
  loc_B2D7BB:  = Me.ReadAll
  loc_B2D7C0: LitI4 0
  loc_B2D7C5: LitI4 -1
  loc_B2D7CA: LitVarStr var_A4, vbCrLf
  loc_B2D7CF: FStVarCopyObj var_B4
  loc_B2D7D2: FLdRfVar var_B4
  loc_B2D7D5: ILdRf var_94
  loc_B2D7D8: FLdRfVar var_D4
  loc_B2D7DB: ImpAdCallFPR4  = Split(, , , )
  loc_B2D7E0: FLdRfVar var_D4
  loc_B2D7E3: FStVar var_E4
  loc_B2D7E7: FFreeStr var_90 = ""
  loc_B2D7EE: FFree1Ad var_8C
  loc_B2D7F1: FFree1Var var_B4 = ""
  loc_B2D7F4: FLdPrThis
  loc_B2D7F5: VCallAd Control_ID_filterList1
  loc_B2D7F8: FStAdFunc var_8C
  loc_B2D7FB: FLdPr var_8C
  loc_B2D7FE: Me.Clear
  loc_B2D803: FFree1Ad var_8C
  loc_B2D806: LitVarI2 var_104, 0
  loc_B2D80B: FLdRfVar var_F4
  loc_B2D80E: FLdRfVar var_E4
  loc_B2D811: CRefVarAry
  loc_B2D813: PopAdLd4
  loc_B2D814: LitI2_Byte 1
  loc_B2D816: FnUBound
  loc_B2D818: CVarI4
  loc_B2D81C: ForVar var_124
  loc_B2D822: FLdRfVar var_F4
  loc_B2D825: CDargRef
  loc_B2D829: FLdRfVar var_E4
  loc_B2D82C: VarIndexLdVar
  loc_B2D832: LitVarStr var_C4, vbNullString
  loc_B2D837: HardType
  loc_B2D838: NeVarBool
  loc_B2D83A: FFree1Var var_B4 = ""
  loc_B2D83D: BranchF loc_B2D870
  loc_B2D840: LitVar_Missing var_C4
  loc_B2D843: PopAdLdVar
  loc_B2D844: FLdRfVar var_F4
  loc_B2D847: CDargRef
  loc_B2D84B: FLdRfVar var_E4
  loc_B2D84E: VarIndexLdVar
  loc_B2D854: CStrVarVal var_90
  loc_B2D858: FLdPrThis
  loc_B2D859: VCallAd Control_ID_filterList1
  loc_B2D85C: FStAdFunc var_8C
  loc_B2D85F: FLdPr var_8C
  loc_B2D862: Me.AddItem from_stack_1, from_stack_2
  loc_B2D867: FFree1Str var_90
  loc_B2D86A: FFree1Ad var_8C
  loc_B2D86D: FFree1Var var_B4 = ""
  loc_B2D870: FLdRfVar var_F4
  loc_B2D873: NextStepVar var_124
  loc_B2D879: ExitProcHresult
  loc_B2D87A: FLdI2 filterImage2_Click44
End Sub

Private Sub filterImage2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1A560
  'Data Table: 54EE7C
  loc_B1A534: LitI4 &H7F89
  loc_B1A539: LitI4 0
  loc_B1A53E: ImpAdCallI2 LoadCursor(, )
  loc_B1A543: FStR4 var_8C
  loc_B1A546: SetLastSystemError
  loc_B1A547: ILdRf var_8C
  loc_B1A54A: FStR4 var_88
  loc_B1A54D: ILdRf var_88
  loc_B1A550: CBoolI4
  loc_B1A552: BranchF loc_B1A55E
  loc_B1A555: ILdRf var_88
  loc_B1A558: ImpAdCallFPR4 SetCursor()
  loc_B1A55D: SetLastSystemError
  loc_B1A55E: ExitProcHresult
End Sub

Private Sub filterImage1_Click() 'B3780C
  'Data Table: 54EE7C
  loc_B37410: LitVarStr var_98, "enter_bobba_word"
  loc_B37415: PopAdLdVar
  loc_B37416: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B3741B: FStStr var_18C
  loc_B3741E: LitVarStr var_A8, "title_bobba_word_win"
  loc_B37423: PopAdLdVar
  loc_B37424: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B37429: FStStr var_190
  loc_B3742C: LitVar_Missing var_168
  loc_B3742F: LitVar_Missing var_148
  loc_B37432: LitVar_Missing var_128
  loc_B37435: LitVar_Missing var_108
  loc_B37438: LitVar_Missing var_E8
  loc_B3743B: FLdZeroAd var_190
  loc_B3743E: CVarStr var_C8
  loc_B37441: FLdZeroAd var_18C
  loc_B37444: CVarStr var_B8
  loc_B37447: ImpAdCallI2 InputBox(, , , , , , )
  loc_B3744C: CVarStr var_188
  loc_B3744F: FStVar var_178
  loc_B37453: FFreeStr var_18C = ""
  loc_B3745A: FFreeVar var_B8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = ""
  loc_B3746B: FLdRfVar var_190
  loc_B3746E: FLdRfVar var_194
  loc_B37471: LitI4 0
  loc_B37476: LitI2_Byte 0
  loc_B37478: LitI4 1
  loc_B3747D: ImpAdLdI4 MemVar_C0F044
  loc_B37480: LitStr "configuration\bobbafilter.ini"
  loc_B37483: ConcatStr
  loc_B37484: FStStrNoPop var_18C
  loc_B37487: ImpAdLdRf MemVar_C0F040
  loc_B3748A: NewIfNullPr IFileSystem3
  loc_B3748D: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B37492: FLdPr var_194
  loc_B37495:  = Me.ReadAll
  loc_B3749A: FLdZeroAd var_190
  loc_B3749D: FStStr var_88
  loc_B374A0: FFree1Str var_18C
  loc_B374A3: FFree1Ad var_194
  loc_B374A6: LitI4 0
  loc_B374AB: LitI4 -1
  loc_B374B0: LitI4 1
  loc_B374B5: LitStr vbCrLf
  loc_B374B8: LitStr vbCrLf
  loc_B374BB: LitStr vbCrLf
  loc_B374BE: ConcatStr
  loc_B374BF: FStStrNoPop var_18C
  loc_B374C2: ILdRf var_88
  loc_B374C5: ImpAdCallI2 Replace(, , , , , )
  loc_B374CA: FStStr var_88
  loc_B374CD: FFree1Str var_18C
  loc_B374D0: LitI4 0
  loc_B374D5: LitI4 -1
  loc_B374DA: LitI4 1
  loc_B374DF: LitStr vbCrLf
  loc_B374E2: LitStr vbCrLf
  loc_B374E5: LitStr vbCrLf
  loc_B374E8: ConcatStr
  loc_B374E9: FStStrNoPop var_18C
  loc_B374EC: ILdRf var_88
  loc_B374EF: ImpAdCallI2 Replace(, , , , , )
  loc_B374F4: FStStr var_88
  loc_B374F7: FFree1Str var_18C
  loc_B374FA: LitI4 0
  loc_B374FF: LitI4 -1
  loc_B37504: LitI4 1
  loc_B37509: LitStr vbCrLf
  loc_B3750C: LitStr vbCrLf
  loc_B3750F: LitStr vbCrLf
  loc_B37512: ConcatStr
  loc_B37513: FStStrNoPop var_18C
  loc_B37516: ILdRf var_88
  loc_B37519: ImpAdCallI2 Replace(, , , , , )
  loc_B3751E: FStStr var_88
  loc_B37521: FFree1Str var_18C
  loc_B37524: LitI4 1
  loc_B37529: FLdRfVar var_88
  loc_B3752C: CVarRef
  loc_B37531: FLdRfVar var_B8
  loc_B37534: ImpAdCallFPR4  = Left(, )
  loc_B37539: FLdRfVar var_B8
  loc_B3753C: LitVarStr var_A8, vbCrLf
  loc_B37541: HardType
  loc_B37542: EqVarBool
  loc_B37544: FFree1Var var_B8 = ""
  loc_B37547: BranchF loc_B37570
  loc_B3754A: LitVar_Missing var_B8
  loc_B3754D: LitI4 2
  loc_B37552: FLdRfVar var_88
  loc_B37555: CVarRef
  loc_B3755A: FLdRfVar var_C8
  loc_B3755D: ImpAdCallFPR4  = Mid(, , )
  loc_B37562: FLdRfVar var_C8
  loc_B37565: CStrVarTmp
  loc_B37566: FStStr var_88
  loc_B37569: FFreeVar var_B8 = ""
  loc_B37570: LitI4 1
  loc_B37575: FLdRfVar var_88
  loc_B37578: CVarRef
  loc_B3757D: FLdRfVar var_B8
  loc_B37580: ImpAdCallFPR4  = Right(, )
  loc_B37585: FLdRfVar var_B8
  loc_B37588: LitVarStr var_A8, vbCrLf
  loc_B3758D: HardType
  loc_B3758E: NeVarBool
  loc_B37590: FFree1Var var_B8 = ""
  loc_B37593: BranchF loc_B375A0
  loc_B37596: ILdRf var_88
  loc_B37599: LitStr vbCrLf
  loc_B3759C: ConcatStr
  loc_B3759D: FStStr var_88
  loc_B375A0: FLdRfVar var_178
  loc_B375A3: FnLenVar var_B8
  loc_B375A7: LitVarI2 var_98, 1
  loc_B375AC: AddVar var_C8
  loc_B375B0: CI4Var
  loc_B375B2: FLdRfVar var_88
  loc_B375B5: CVarRef
  loc_B375BA: FLdRfVar var_E8
  loc_B375BD: ImpAdCallFPR4  = Left(, )
  loc_B375C2: FLdRfVar var_E8
  loc_B375C5: FLdRfVar var_178
  loc_B375C8: FLdRfVar var_108
  loc_B375CB: ImpAdCallFPR4  = LCase()
  loc_B375D0: FLdRfVar var_108
  loc_B375D3: LitVarStr var_D8, vbCrLf
  loc_B375D8: ConcatVar var_128
  loc_B375DC: EqVar var_148
  loc_B375E0: LitI4 1
  loc_B375E5: ILdRf var_88
  loc_B375E8: CVarStr var_138
  loc_B375EB: LitVarStr var_F8, vbCrLf
  loc_B375F0: FLdRfVar var_178
  loc_B375F3: FLdRfVar var_168
  loc_B375F6: ImpAdCallFPR4  = LCase()
  loc_B375FB: FLdRfVar var_168
  loc_B375FE: ConcatVar var_188
  loc_B37602: LitVarStr var_118, vbCrLf
  loc_B37607: ConcatVar var_1A4
  loc_B3760B: LitI4 0
  loc_B37610: FnInStr4Var
  loc_B37614: OrVar var_1C4
  loc_B37618: CBoolVarNull
  loc_B3761A: FFreeVar var_C8 = "": var_108 = "": var_E8 = "": var_128 = "": var_168 = "": var_188 = "": var_1A4 = ""
  loc_B3762D: BranchF loc_B3766E
  loc_B37630: LitVarStr var_98, "word_already_on_list_msg"
  loc_B37635: PopAdLdVar
  loc_B37636: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B3763B: FStStr var_18C
  loc_B3763E: LitVar_Missing var_108
  loc_B37641: LitVar_Missing var_E8
  loc_B37644: LitVarStr var_A8, "Server"
  loc_B37649: FStVarCopyObj var_C8
  loc_B3764C: FLdRfVar var_C8
  loc_B3764F: LitI4 &H10
  loc_B37654: FLdZeroAd var_18C
  loc_B37657: CVarStr var_B8
  loc_B3765A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B3765F: FFree1Str var_18C
  loc_B37662: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_B3766D: ExitProcHresult
  loc_B3766E: FLdRfVar var_178
  loc_B37671: FnLenVar var_B8
  loc_B37675: LitVarI2 var_98, 1
  loc_B3767A: HardType
  loc_B3767B: LeVarBool
  loc_B3767D: BranchF loc_B376BE
  loc_B37680: LitVarStr var_98, "word_inacceptable"
  loc_B37685: PopAdLdVar
  loc_B37686: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B3768B: FStStr var_18C
  loc_B3768E: LitVar_Missing var_108
  loc_B37691: LitVar_Missing var_E8
  loc_B37694: LitVarStr var_A8, "Server"
  loc_B37699: FStVarCopyObj var_C8
  loc_B3769C: FLdRfVar var_C8
  loc_B3769F: LitI4 &H10
  loc_B376A4: FLdZeroAd var_18C
  loc_B376A7: CVarStr var_B8
  loc_B376AA: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B376AF: FFree1Str var_18C
  loc_B376B2: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_B376BD: ExitProcHresult
  loc_B376BE: ILdRf var_88
  loc_B376C1: CVarStr var_98
  loc_B376C4: FLdRfVar var_178
  loc_B376C7: FLdRfVar var_B8
  loc_B376CA: ImpAdCallFPR4  = LCase()
  loc_B376CF: FLdRfVar var_B8
  loc_B376D2: ConcatVar var_C8
  loc_B376D6: LitVarStr var_A8, vbCrLf
  loc_B376DB: ConcatVar var_E8
  loc_B376DF: CStrVarTmp
  loc_B376E0: FStStr var_88
  loc_B376E3: FFreeVar var_B8 = "": var_C8 = ""
  loc_B376EC: ILdRf var_88
  loc_B376EF: FLdRfVar var_194
  loc_B376F2: LitI4 0
  loc_B376F7: LitI2_Byte 0
  loc_B376F9: LitI4 2
  loc_B376FE: ImpAdLdI4 MemVar_C0F044
  loc_B37701: LitStr "configuration\bobbafilter.ini"
  loc_B37704: ConcatStr
  loc_B37705: FStStrNoPop var_18C
  loc_B37708: ImpAdLdRf MemVar_C0F040
  loc_B3770B: NewIfNullPr IFileSystem3
  loc_B3770E: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B37713: FLdPr var_194
  loc_B37716: from_stack_2 = Me.Write(from_stack_1v)
  loc_B3771B: FFree1Str var_18C
  loc_B3771E: FFree1Ad var_194
  loc_B37721: FLdRfVar var_190
  loc_B37724: FLdRfVar var_194
  loc_B37727: LitI4 0
  loc_B3772C: LitI2_Byte 0
  loc_B3772E: LitI4 1
  loc_B37733: ImpAdLdI4 MemVar_C0F044
  loc_B37736: LitStr "configuration\bobbafilter.ini"
  loc_B37739: ConcatStr
  loc_B3773A: FStStrNoPop var_18C
  loc_B3773D: ImpAdLdRf MemVar_C0F040
  loc_B37740: NewIfNullPr IFileSystem3
  loc_B37743: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B37748: FLdPr var_194
  loc_B3774B:  = Me.ReadAll
  loc_B37750: LitI4 0
  loc_B37755: LitI4 -1
  loc_B3775A: LitVarStr var_98, vbCrLf
  loc_B3775F: FStVarCopyObj var_B8
  loc_B37762: FLdRfVar var_B8
  loc_B37765: ILdRf var_190
  loc_B37768: FLdRfVar var_C8
  loc_B3776B: ImpAdCallFPR4  = Split(, , , )
  loc_B37770: FLdRfVar var_C8
  loc_B37773: FStVar var_1D4
  loc_B37777: FFreeStr var_18C = ""
  loc_B3777E: FFree1Ad var_194
  loc_B37781: FFree1Var var_B8 = ""
  loc_B37784: FLdPrThis
  loc_B37785: VCallAd Control_ID_filterList1
  loc_B37788: FStAdFunc var_194
  loc_B3778B: FLdPr var_194
  loc_B3778E: Me.Clear
  loc_B37793: FFree1Ad var_194
  loc_B37796: LitVarI2 var_D8, 0
  loc_B3779B: FLdRfVar var_1E4
  loc_B3779E: FLdRfVar var_1D4
  loc_B377A1: CRefVarAry
  loc_B377A3: PopAdLd4
  loc_B377A4: LitI2_Byte 1
  loc_B377A6: FnUBound
  loc_B377A8: CVarI4
  loc_B377AC: ForVar var_204
  loc_B377B2: FLdRfVar var_1E4
  loc_B377B5: CDargRef
  loc_B377B9: FLdRfVar var_1D4
  loc_B377BC: VarIndexLdVar
  loc_B377C2: LitVarStr var_A8, vbNullString
  loc_B377C7: HardType
  loc_B377C8: NeVarBool
  loc_B377CA: FFree1Var var_B8 = ""
  loc_B377CD: BranchF loc_B37800
  loc_B377D0: LitVar_Missing var_A8
  loc_B377D3: PopAdLdVar
  loc_B377D4: FLdRfVar var_1E4
  loc_B377D7: CDargRef
  loc_B377DB: FLdRfVar var_1D4
  loc_B377DE: VarIndexLdVar
  loc_B377E4: CStrVarVal var_18C
  loc_B377E8: FLdPrThis
  loc_B377E9: VCallAd Control_ID_filterList1
  loc_B377EC: FStAdFunc var_194
  loc_B377EF: FLdPr var_194
  loc_B377F2: Me.AddItem from_stack_1, from_stack_2
  loc_B377F7: FFree1Str var_18C
  loc_B377FA: FFree1Ad var_194
  loc_B377FD: FFree1Var var_B8 = ""
  loc_B37800: FLdRfVar var_1E4
  loc_B37803: NextStepVar var_204
  loc_B37809: ExitProcHresult
  loc_B3780A: CopyBytes
End Sub

Private Sub filterImage1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1A72C
  'Data Table: 54EE7C
  loc_B1A700: LitI4 &H7F89
  loc_B1A705: LitI4 0
  loc_B1A70A: ImpAdCallI2 LoadCursor(, )
  loc_B1A70F: FStR4 var_8C
  loc_B1A712: SetLastSystemError
  loc_B1A713: ILdRf var_8C
  loc_B1A716: FStR4 var_88
  loc_B1A719: ILdRf var_88
  loc_B1A71C: CBoolI4
  loc_B1A71E: BranchF loc_B1A72A
  loc_B1A721: ILdRf var_88
  loc_B1A724: ImpAdCallFPR4 SetCursor()
  loc_B1A729: SetLastSystemError
  loc_B1A72A: ExitProcHresult
End Sub

Private Function Proc_26_57_B182CC() 'B182CC
  'Data Table: 54EE7C
  loc_B182C8: ExitProcHresult
  loc_B182C9: FnStrComp3Var
End Function

Private Function Proc_26_58_B181C8() 'B181C8
  'Data Table: 54EE7C
  loc_B181C4: ExitProcHresult
End Function
