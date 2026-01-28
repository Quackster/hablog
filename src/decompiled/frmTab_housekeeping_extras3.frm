VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C0000C04E4C0A}#1.1#0"; "C:\WINDOWS\SysWow64\TABCTL32.OCX"
Begin VB.Form frmTab_housekeeping_extras3
  Caption = "Settings"
  BackColor = &HFFFFFF&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 5685
  ClientTop = 4335
  ClientWidth = 4185
  ClientHeight = 5235
  ShowInTaskbar = 0   'False
  Begin VB.PictureBox Picture2
    BackColor = &H80000006&
    Picture = "frmTab_housekeeping_extras3.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 4185
    Height = 5220
    TabIndex = 169
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.TextBox Text28
      Left = 1920
      Top = 4395
      Width = 1815
      Height = 195
      Enabled = 0   'False
      TabIndex = 189
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.TextBox Text27
      Left = 1920
      Top = 4035
      Width = 1815
      Height = 195
      Enabled = 0   'False
      TabIndex = 188
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.TextBox Text26
      Left = 1920
      Top = 3675
      Width = 1815
      Height = 195
      Enabled = 0   'False
      TabIndex = 187
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.TextBox Text25
      Left = 1920
      Top = 3315
      Width = 1815
      Height = 195
      Enabled = 0   'False
      TabIndex = 186
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.TextBox Text11
      Left = 1920
      Top = 2955
      Width = 1815
      Height = 195
      Enabled = 0   'False
      TabIndex = 185
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.TextBox Text10
      Left = 1920
      Top = 2595
      Width = 1815
      Height = 195
      Enabled = 0   'False
      TabIndex = 184
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.TextBox Text9
      Left = 1920
      Top = 2235
      Width = 1815
      Height = 195
      Enabled = 0   'False
      TabIndex = 183
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.TextBox Text8
      Left = 1920
      Top = 1875
      Width = 1815
      Height = 195
      Enabled = 0   'False
      TabIndex = 172
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.ComboBox Combo2
      Left = 1800
      Top = 1320
      Width = 2055
      Height = 315
      Enabled = 0   'False
      Text = "-- Choose --"
      TabIndex = 171
    End
    Begin VB.ComboBox Combo1
      Left = 1800
      Top = 960
      Width = 2055
      Height = 315
      Text = "-- Choose  --"
      TabIndex = 170
    End
    Begin VB.Label Label33
      Caption = "Poolfigure:"
      Left = -360
      Top = 4320
      Width = 2055
      Height = 255
      TabIndex = 190
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Image9
      Picture = "frmTab_housekeeping_extras3.frx":00047622
      Left = 1800
      Top = 4320
      Width = 2025
      Height = 330
    End
    Begin VB.Image Image8
      Picture = "frmTab_housekeeping_extras3.frx":00049974
      Left = 1800
      Top = 3960
      Width = 2025
      Height = 330
    End
    Begin VB.Image Image7
      Picture = "frmTab_housekeeping_extras3.frx":0004BCC6
      Left = 1800
      Top = 3600
      Width = 2025
      Height = 330
    End
    Begin VB.Image Image6
      Picture = "frmTab_housekeeping_extras3.frx":0004E018
      Left = 1800
      Top = 3240
      Width = 2025
      Height = 330
    End
    Begin VB.Image Image4
      Picture = "frmTab_housekeeping_extras3.frx":0005036A
      Left = 1800
      Top = 2880
      Width = 2025
      Height = 330
    End
    Begin VB.Image Image3
      Picture = "frmTab_housekeeping_extras3.frx":000526BC
      Left = 1800
      Top = 2520
      Width = 2025
      Height = 330
    End
    Begin VB.Image Image2
      Picture = "frmTab_housekeeping_extras3.frx":00054A0E
      Left = 1800
      Top = 2160
      Width = 2025
      Height = 330
    End
    Begin VB.Image Image5
      Picture = "frmTab_housekeeping_extras3.frx":00056D60
      Left = 1800
      Top = 1800
      Width = 2025
      Height = 330
    End
    Begin VB.Label headWelcome
      Caption = "Hebbos"
      Index = 0
      ForeColor = &HFFFFFF&
      Left = 360
      Top = 240
      Width = 3255
      Height = 255
      TabIndex = 182
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
      Picture = "frmTab_housekeeping_extras3.frx":000590B2
      Left = 3600
      Top = 180
      Width = 360
      Height = 330
    End
    Begin VB.Label Label32
      Caption = "Choose Hebbo:"
      Left = -240
      Top = 980
      Width = 1935
      Height = 255
      TabIndex = 181
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Command9
      Picture = "frmTab_housekeeping_extras3.frx":00059724
      Left = 240
      Top = 4720
      Width = 3705
      Height = 300
    End
    Begin VB.Label Label9
      Caption = "Username:"
      Left = -240
      Top = 1800
      Width = 1935
      Height = 255
      TabIndex = 180
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label10
      Caption = "Password:"
      Left = -240
      Top = 2160
      Width = 1935
      Height = 255
      TabIndex = 179
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label11
      Caption = "Mission:"
      Left = -240
      Top = 2520
      Width = 1935
      Height = 255
      TabIndex = 178
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label12
      Caption = "Choose Rank:"
      Left = -240
      Top = 1320
      Width = 1935
      Height = 255
      TabIndex = 177
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label13
      Caption = "Credits:"
      Left = -360
      Top = 2880
      Width = 2055
      Height = 255
      TabIndex = 176
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label29
      Caption = "E-Mail:"
      Left = -360
      Top = 3240
      Width = 2055
      Height = 255
      TabIndex = 175
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label30
      Caption = "Birthdate:"
      Left = -360
      Top = 3600
      Width = 2055
      Height = 255
      TabIndex = 174
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label31
      Caption = "Badges:"
      Left = -360
      Top = 3960
      Width = 2055
      Height = 255
      TabIndex = 173
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
  End
  Begin TabDlg.SSTab SSTab1
    Left = 7080
    Top = 0
    Width = 5175
    Height = 7815
    TabIndex = 0
    OleObjectBlob = "frmTab_housekeeping_extras3.frx":0005D186
    Begin VB.Frame Frame14
      Caption = "Console"
      Left = -74760
      Top = 4200
      Width = 4575
      Height = 855
      TabIndex = 162
      Begin VB.TextBox Text24
        Left = 3480
        Top = 360
        Width = 975
        Height = 285
        TabIndex = 164
        Appearance = 0 'Flat
      End
      Begin VB.Label Label23
        Caption = "Max Friends in List:"
        Left = 120
        Top = 360
        Width = 3255
        Height = 255
        TabIndex = 163
        Alignment = 1 'Right Justify
      End
    End
    Begin VB.Frame Frame13
      Caption = "Restore Rooms"
      Left = -74760
      Top = 4920
      Width = 4575
      Height = 1455
      TabIndex = 150
      Begin VB.CommandButton Command20
        Caption = "Restore"
        Left = 240
        Top = 840
        Width = 4095
        Height = 375
        TabIndex = 152
      End
      Begin VB.ComboBox Combo5
        Left = 240
        Top = 360
        Width = 4095
        Height = 315
        Text = " -- Deleted Rooms -- "
        TabIndex = 151
      End
    End
    Begin VB.Frame Frame12
      Caption = "HC Presents"
      Left = -74760
      Top = 840
      Width = 4575
      Height = 6015
      TabIndex = 110
      Begin VB.CommandButton Command19
        Caption = "Save changes"
        Left = 2400
        Top = 5400
        Width = 1935
        Height = 375
        TabIndex = 139
      End
      Begin VB.CommandButton Command18
        Caption = "Chancel"
        Left = 240
        Top = 5400
        Width = 1935
        Height = 375
        TabIndex = 138
      End
      Begin VB.TextBox Text20
        Left = 3000
        Top = 4920
        Width = 1455
        Height = 285
        TabIndex = 135
      End
      Begin VB.TextBox Text19
        Left = 3000
        Top = 4560
        Width = 1455
        Height = 285
        TabIndex = 134
      End
      Begin VB.TextBox hcpresent
        Index = 10
        Left = 600
        Top = 3960
        Width = 3615
        Height = 285
        TabIndex = 122
        Appearance = 0 'Flat
      End
      Begin VB.TextBox hcpresent
        Index = 9
        Left = 600
        Top = 3720
        Width = 3615
        Height = 285
        TabIndex = 121
        Appearance = 0 'Flat
      End
      Begin VB.TextBox hcpresent
        Index = 8
        Left = 600
        Top = 3480
        Width = 3615
        Height = 285
        TabIndex = 120
        Appearance = 0 'Flat
      End
      Begin VB.TextBox hcpresent
        Index = 7
        Left = 600
        Top = 3240
        Width = 3615
        Height = 285
        TabIndex = 119
        Appearance = 0 'Flat
      End
      Begin VB.TextBox hcpresent
        Index = 6
        Left = 600
        Top = 3000
        Width = 3615
        Height = 285
        TabIndex = 118
        Appearance = 0 'Flat
      End
      Begin VB.TextBox hcpresent
        Index = 5
        Left = 600
        Top = 2760
        Width = 3615
        Height = 285
        TabIndex = 117
        Appearance = 0 'Flat
      End
      Begin VB.TextBox hcpresent
        Index = 4
        Left = 600
        Top = 2520
        Width = 3615
        Height = 285
        TabIndex = 116
        Appearance = 0 'Flat
      End
      Begin VB.TextBox hcpresent
        Index = 3
        Left = 600
        Top = 2280
        Width = 3615
        Height = 285
        TabIndex = 115
        Appearance = 0 'Flat
      End
      Begin VB.TextBox hcpresent
        Index = 2
        Left = 600
        Top = 2040
        Width = 3615
        Height = 285
        TabIndex = 114
        Appearance = 0 'Flat
      End
      Begin VB.TextBox hcpresent
        Index = 1
        Left = 600
        Top = 1800
        Width = 3615
        Height = 285
        TabIndex = 113
        Appearance = 0 'Flat
      End
      Begin VB.TextBox hcpresent
        Index = 0
        Left = 600
        Top = 1560
        Width = 3615
        Height = 285
        TabIndex = 112
        Appearance = 0 'Flat
      End
      Begin VB.Label Label25
        Caption = "Extrabadge(s) => 12 month"
        Left = 120
        Top = 4920
        Width = 2895
        Height = 255
        TabIndex = 137
      End
      Begin VB.Label Label24
        Caption = "Extrabadge(s) 1 - 11 Month:"
        Left = 120
        Top = 4560
        Width = 2895
        Height = 255
        TabIndex = 136
      End
      Begin VB.Label m
        Caption = "11"
        Index = 10
        Left = 120
        Top = 3960
        Width = 495
        Height = 255
        TabIndex = 133
      End
      Begin VB.Label m
        Caption = "10"
        Index = 9
        Left = 120
        Top = 3720
        Width = 495
        Height = 255
        TabIndex = 132
      End
      Begin VB.Label m
        Caption = "9"
        Index = 8
        Left = 120
        Top = 3480
        Width = 495
        Height = 255
        TabIndex = 131
      End
      Begin VB.Label m
        Caption = "8"
        Index = 7
        Left = 120
        Top = 3240
        Width = 495
        Height = 255
        TabIndex = 130
      End
      Begin VB.Label m
        Caption = "7"
        Index = 6
        Left = 120
        Top = 3000
        Width = 495
        Height = 255
        TabIndex = 129
      End
      Begin VB.Label m
        Caption = "6"
        Index = 5
        Left = 120
        Top = 2760
        Width = 495
        Height = 255
        TabIndex = 128
      End
      Begin VB.Label m
        Caption = "5"
        Index = 4
        Left = 120
        Top = 2520
        Width = 495
        Height = 255
        TabIndex = 127
      End
      Begin VB.Label m
        Caption = "4"
        Index = 3
        Left = 120
        Top = 2280
        Width = 495
        Height = 255
        TabIndex = 126
      End
      Begin VB.Label m
        Caption = "3"
        Index = 2
        Left = 120
        Top = 2040
        Width = 495
        Height = 255
        TabIndex = 125
      End
      Begin VB.Label m
        Caption = "2"
        Index = 1
        Left = 120
        Top = 1800
        Width = 495
        Height = 255
        TabIndex = 124
      End
      Begin VB.Label m
        Caption = "1"
        Index = 0
        Left = 120
        Top = 1560
        Width = 495
        Height = 255
        TabIndex = 123
      End
      Begin VB.Label Label22
        Left = 240
        Top = 240
        Width = 4095
        Height = 1335
        TabIndex = 111
      End
    End
    Begin VB.Frame Frame11
      Caption = "Other rights"
      Left = -74760
      Top = 5640
      Width = 4575
      Height = 1455
      TabIndex = 103
      Begin VB.TextBox Text18
        Left = 120
        Top = 1080
        Width = 4335
        Height = 285
        TabIndex = 109
      End
      Begin VB.CheckBox Check8
        Caption = "Rights in any Room"
        Left = 2280
        Top = 240
        Width = 2175
        Height = 255
        TabIndex = 108
      End
      Begin VB.CheckBox Check7
        Caption = "Recrieve Calls for Help"
        Left = 2280
        Top = 480
        Width = 2055
        Height = 255
        TabIndex = 107
      End
      Begin VB.CheckBox Check6
        Caption = "Enter any room"
        Left = 120
        Top = 720
        Width = 2055
        Height = 255
        TabIndex = 106
      End
      Begin VB.CheckBox Check5
        Caption = "Always see room owner"
        Left = 120
        Top = 480
        Width = 2055
        Height = 255
        TabIndex = 105
      End
      Begin VB.CheckBox Check4
        Caption = "Admin Catalogue"
        Left = 120
        Top = 240
        Width = 2055
        Height = 255
        TabIndex = 104
      End
    End
    Begin VB.CommandButton Command17
      Caption = "Save Changes"
      Left = -72360
      Top = 7200
      Width = 2175
      Height = 375
      TabIndex = 102
    End
    Begin VB.CommandButton Command16
      Caption = "Chancel"
      Left = -74760
      Top = 7200
      Width = 2175
      Height = 375
      TabIndex = 101
    End
    Begin VB.CommandButton Command8
      Caption = "Chancel"
      Left = 360
      Top = 5040
      Width = 1935
      Height = 375
      Enabled = 0   'False
      TabIndex = 100
    End
    Begin VB.Frame Frame10
      Caption = "Mod-Tool"
      Left = -72360
      Top = 4080
      Width = 2175
      Height = 1575
      TabIndex = 93
      Begin VB.CheckBox mtool
        Caption = "Roomkick"
        Index = 4
        Left = 120
        Top = 1200
        Width = 1935
        Height = 255
        TabIndex = 99
      End
      Begin VB.CheckBox mtool
        Caption = "Roomalert"
        Index = 3
        Left = 120
        Top = 960
        Width = 1935
        Height = 255
        TabIndex = 98
      End
      Begin VB.CheckBox mtool
        Caption = "Ban User"
        Index = 2
        Left = 120
        Top = 720
        Width = 1935
        Height = 255
        TabIndex = 97
      End
      Begin VB.CheckBox mtool
        Caption = "Alert User"
        Index = 1
        Left = 120
        Top = 480
        Width = 1935
        Height = 255
        TabIndex = 96
      End
      Begin VB.CheckBox mtool
        Caption = "Kick User"
        Index = 0
        Left = 120
        Top = 240
        Width = 1935
        Height = 255
        TabIndex = 95
      End
    End
    Begin VB.Frame Frame9
      Caption = "Badges"
      Left = -74760
      Top = 4080
      Width = 2175
      Height = 1575
      TabIndex = 92
      Begin VB.TextBox Text17
        Left = 120
        Top = 240
        Width = 1935
        Height = 1095
        TabIndex = 94
        MultiLine = -1  'True
        ScrollBars = 2
      End
    End
    Begin VB.Frame Frame5
      Caption = "Speech Commands"
      Left = -74760
      Top = 1080
      Width = 4575
      Height = 3015
      TabIndex = 78
      Begin VB.CheckBox rights
        Caption = ":infobus"
        Index = 20
        Left = 120
        Top = 2640
        Width = 1575
        Height = 255
        TabIndex = 165
      End
      Begin VB.CheckBox rights
        Caption = ":openroom"
        Index = 19
        Left = 2280
        Top = 2400
        Width = 1575
        Height = 255
        TabIndex = 155
      End
      Begin VB.CheckBox rights
        Caption = ":closeroom"
        Index = 18
        Left = 120
        Top = 2400
        Width = 1575
        Height = 255
        TabIndex = 154
      End
      Begin VB.CheckBox rights
        Caption = ":unban"
        Index = 17
        Left = 2280
        Top = 2160
        Width = 1575
        Height = 255
        TabIndex = 153
      End
      Begin VB.CheckBox rights
        Caption = ":deleteroom"
        Index = 16
        Left = 120
        Top = 2160
        Width = 1575
        Height = 255
        TabIndex = 143
      End
      Begin VB.CheckBox rights
        Caption = ":takebadge"
        Index = 15
        Left = 2280
        Top = 1920
        Width = 1575
        Height = 255
        TabIndex = 142
      End
      Begin VB.CheckBox rights
        Caption = ":givebadge"
        Index = 14
        Left = 120
        Top = 1920
        Width = 1575
        Height = 255
        TabIndex = 141
      End
      Begin VB.CheckBox rights
        Caption = ":takecredits"
        Index = 13
        Left = 2280
        Top = 1680
        Width = 1575
        Height = 255
        TabIndex = 140
      End
      Begin VB.CheckBox rights
        Caption = ":userdata"
        Index = 12
        Left = 2280
        Top = 1440
        Width = 1575
        Height = 255
        TabIndex = 91
      End
      Begin VB.CheckBox rights
        Caption = ":hotelalert"
        Index = 11
        Left = 2280
        Top = 1200
        Width = 1575
        Height = 255
        TabIndex = 90
      End
      Begin VB.CheckBox rights
        Caption = ":credits"
        Index = 10
        Left = 2280
        Top = 960
        Width = 1575
        Height = 255
        TabIndex = 89
      End
      Begin VB.CheckBox rights
        Caption = ":whosonline"
        Index = 9
        Left = 2280
        Top = 720
        Width = 1575
        Height = 255
        TabIndex = 88
      End
      Begin VB.CheckBox rights
        Caption = ":voucher"
        Index = 8
        Left = 2280
        Top = 480
        Width = 1575
        Height = 255
        TabIndex = 87
      End
      Begin VB.CheckBox rights
        Caption = ":superban"
        Index = 7
        Left = 2280
        Top = 240
        Width = 1575
        Height = 255
        TabIndex = 86
      End
      Begin VB.CheckBox rights
        Caption = ":roomunmute"
        Index = 6
        Left = 120
        Top = 1680
        Width = 1575
        Height = 255
        TabIndex = 85
      End
      Begin VB.CheckBox rights
        Caption = ":roomshutup"
        Index = 5
        Left = 120
        Top = 1440
        Width = 1575
        Height = 255
        TabIndex = 84
      End
      Begin VB.CheckBox rights
        Caption = ":unmute"
        Index = 4
        Left = 120
        Top = 1200
        Width = 1575
        Height = 255
        TabIndex = 83
      End
      Begin VB.CheckBox rights
        Caption = ":shutup"
        Index = 3
        Left = 120
        Top = 960
        Width = 1575
        Height = 255
        TabIndex = 82
      End
      Begin VB.CheckBox rights
        Caption = ":ban"
        Index = 2
        Left = 120
        Top = 720
        Width = 1575
        Height = 255
        TabIndex = 81
      End
      Begin VB.CheckBox rights
        Caption = ":alert"
        Index = 1
        Left = 120
        Top = 480
        Width = 1575
        Height = 255
        TabIndex = 80
      End
      Begin VB.CheckBox rights
        Caption = ":kick"
        Index = 0
        Left = 120
        Top = 240
        Width = 1575
        Height = 255
        TabIndex = 79
      End
    End
    Begin VB.ComboBox Combo4
      Left = -74760
      Top = 720
      Width = 4575
      Height = 315
      Text = " Ranks"
      TabIndex = 77
    End
    Begin VB.CommandButton Command15
      Caption = "Save Replacement"
      Left = -72360
      Top = 2880
      Width = 2175
      Height = 375
      Enabled = 0   'False
      TabIndex = 67
    End
    Begin VB.TextBox Text16
      Left = -72360
      Top = 2520
      Width = 2175
      Height = 285
      Text = "bobba"
      TabIndex = 65
    End
    Begin VB.CommandButton Command14
      Caption = "Save changes"
      Left = -72360
      Top = 6960
      Width = 2055
      Height = 375
      TabIndex = 48
    End
    Begin VB.CommandButton Command13
      Caption = "Chancel"
      Left = -74760
      Top = 6960
      Width = 2055
      Height = 375
      TabIndex = 47
    End
    Begin VB.Frame Frame7
      Caption = "Edit rooms"
      Left = -74760
      Top = 840
      Width = 4575
      Height = 3975
      TabIndex = 29
      Begin VB.TextBox Text15
        Left = 2280
        Top = 840
        Width = 2055
        Height = 285
        Enabled = 0   'False
        TabIndex = 41
        Appearance = 0 'Flat
      End
      Begin VB.TextBox Text14
        Left = 2280
        Top = 1920
        Width = 2055
        Height = 285
        Enabled = 0   'False
        TabIndex = 39
        Appearance = 0 'Flat
      End
      Begin VB.TextBox Text13
        Left = 2280
        Top = 1560
        Width = 2055
        Height = 285
        Enabled = 0   'False
        TabIndex = 38
        Appearance = 0 'Flat
      End
      Begin VB.TextBox Text12
        Left = 2280
        Top = 1200
        Width = 2055
        Height = 285
        Enabled = 0   'False
        TabIndex = 37
        Appearance = 0 'Flat
      End
      Begin VB.CommandButton Command12
        Caption = "Chancel"
        Left = 240
        Top = 2400
        Width = 4095
        Height = 375
        Enabled = 0   'False
        TabIndex = 33
      End
      Begin VB.CommandButton Command11
        Caption = "Save changes"
        Left = 240
        Top = 2880
        Width = 4095
        Height = 375
        Enabled = 0   'False
        TabIndex = 32
      End
      Begin VB.CommandButton Command10
        Caption = "Delete Room"
        Left = 240
        Top = 3360
        Width = 4095
        Height = 375
        Enabled = 0   'False
        TabIndex = 31
      End
      Begin VB.ComboBox Combo3
        Left = 240
        Top = 360
        Width = 4095
        Height = 315
        Text = " -- Roomlist -- "
        TabIndex = 30
      End
      Begin VB.Label room_id
        Caption = "0"
        Left = 240
        Top = 840
        Width = 615
        Height = 255
        Visible = 0   'False
        TabIndex = 42
      End
      Begin VB.Label Label17
        Caption = "Owner:"
        Left = 360
        Top = 840
        Width = 1815
        Height = 255
        TabIndex = 40
        Alignment = 1 'Right Justify
      End
      Begin VB.Label Label16
        Caption = "Password:"
        Left = 360
        Top = 1920
        Width = 1815
        Height = 255
        TabIndex = 36
        Alignment = 1 'Right Justify
      End
      Begin VB.Label Label15
        Caption = "Description:"
        Left = 360
        Top = 1560
        Width = 1815
        Height = 255
        TabIndex = 35
        Alignment = 1 'Right Justify
      End
      Begin VB.Label Label14
        Caption = "Name:"
        Left = 360
        Top = 1200
        Width = 1815
        Height = 255
        TabIndex = 34
        Alignment = 1 'Right Justify
      End
    End
    Begin VB.CommandButton Command7
      Caption = "Load into editor"
      Left = 2400
      Top = 840
      Width = 2415
      Height = 300
      TabIndex = 28
    End
    Begin VB.Frame Frame6
      Caption = "Habbo editor"
      Left = 240
      Top = 1440
      Width = 4575
      Height = 3375
      TabIndex = 27
    End
    Begin VB.CommandButton Command6
      Caption = "Save changes"
      Left = -72480
      Top = 6240
      Width = 2175
      Height = 375
      TabIndex = 26
    End
    Begin VB.CommandButton Command5
      Caption = "Chancel"
      Left = -74760
      Top = 6240
      Width = 2175
      Height = 375
      TabIndex = 25
    End
    Begin VB.Frame Frame4
      Caption = "Settings"
      Left = -74760
      Top = 2640
      Width = 4575
      Height = 3495
      TabIndex = 22
      Begin VB.TextBox Text7
        Left = 2640
        Top = 720
        Width = 1575
        Height = 285
        Enabled = 0   'False
        TabIndex = 161
        Appearance = 0 'Flat
      End
      Begin VB.CheckBox Check2
        Caption = "Welcome Alert"
        Left = 240
        Top = 720
        Width = 4215
        Height = 255
        TabIndex = 160
      End
      Begin VB.TextBox Text23
        Left = 2160
        Top = 1680
        Width = 2175
        Height = 1455
        TabIndex = 159
        MultiLine = -1  'True
        ScrollBars = 2
      End
      Begin VB.TextBox Text22
        Left = 240
        Top = 2040
        Width = 1815
        Height = 285
        Text = "More infos"
        TabIndex = 158
      End
      Begin VB.TextBox Text21
        Left = 240
        Top = 1680
        Width = 1815
        Height = 285
        Text = "http://url.de"
        TabIndex = 157
      End
      Begin VB.CheckBox Check10
        Caption = "Register console Message:"
        Left = 240
        Top = 1320
        Width = 3975
        Height = 255
        TabIndex = 156
      End
      Begin VB.CheckBox Check3
        Caption = "Console enabled"
        Left = 240
        Top = 480
        Width = 3975
        Height = 255
        TabIndex = 24
      End
      Begin VB.CheckBox Check1
        Caption = "Bobbafilter enabled"
        Left = 240
        Top = 240
        Width = 3975
        Height = 255
        TabIndex = 23
      End
      Begin VB.Shape Shape1
        BorderColor = &H80000000&
        Left = 120
        Top = 1200
        Width = 4335
        Height = 1995
      End
    End
    Begin VB.CommandButton Command4
      Caption = "- Remove"
      Left = -72360
      Top = 1560
      Width = 2175
      Height = 375
      TabIndex = 20
    End
    Begin VB.CommandButton Command3
      Caption = "+ Add"
      Left = -72360
      Top = 1080
      Width = 2175
      Height = 375
      TabIndex = 19
    End
    Begin VB.ListBox List1
      Left = -74760
      Top = 1080
      Width = 2175
      Height = 4515
      TabIndex = 18
      Sorted = -1  'True
      Appearance = 0 'Flat
    End
    Begin VB.Frame Frame3
      Caption = "Connection"
      Left = -74760
      Top = 1560
      Width = 4575
      Height = 975
      TabIndex = 15
      Begin VB.TextBox Text6
        Left = 1920
        Top = 360
        Width = 2295
        Height = 285
        TabIndex = 17
        Appearance = 0 'Flat
      End
      Begin VB.Label Label6
        Caption = "Server port:"
        Left = 120
        Top = 360
        Width = 1695
        Height = 255
        TabIndex = 16
        Alignment = 1 'Right Justify
      End
    End
    Begin VB.CommandButton Command2
      Caption = "Save changes"
      Left = -72360
      Top = 5160
      Width = 2175
      Height = 375
      TabIndex = 14
    End
    Begin VB.CommandButton Command1
      Caption = "Chancel"
      Left = -74760
      Top = 5160
      Width = 2175
      Height = 375
      TabIndex = 13
    End
    Begin VB.Frame Frame2
      Caption = "Furni"
      Left = -74760
      Top = 2760
      Width = 4575
      Height = 1335
      TabIndex = 8
      Begin VB.TextBox Text5
        Left = 3480
        Top = 720
        Width = 975
        Height = 285
        TabIndex = 12
        Appearance = 0 'Flat
      End
      Begin VB.TextBox Text4
        Left = 3480
        Top = 360
        Width = 975
        Height = 285
        TabIndex = 10
        Appearance = 0 'Flat
      End
      Begin VB.Label Label5
        Caption = "Max pets per Room:"
        Left = 240
        Top = 720
        Width = 3135
        Height = 255
        TabIndex = 11
        Alignment = 1 'Right Justify
      End
      Begin VB.Label Label4
        Caption = "Max rollers per Room:"
        Left = 240
        Top = 360
        Width = 3135
        Height = 255
        TabIndex = 9
        Alignment = 1 'Right Justify
      End
    End
    Begin VB.Frame Frame1
      Caption = "Rooms"
      Left = -74760
      Top = 960
      Width = 4575
      Height = 1695
      TabIndex = 1
      Begin VB.TextBox Text3
        Left = 3480
        Top = 1200
        Width = 975
        Height = 285
        TabIndex = 4
        Appearance = 0 'Flat
      End
      Begin VB.TextBox Text2
        Left = 3480
        Top = 720
        Width = 975
        Height = 285
        TabIndex = 3
        Appearance = 0 'Flat
      End
      Begin VB.TextBox Text1
        Left = 3480
        Top = 360
        Width = 975
        Height = 285
        TabIndex = 2
        Appearance = 0 'Flat
      End
      Begin VB.Label Label3
        Caption = "Max Favouriterooms:"
        Left = 120
        Top = 1080
        Width = 3255
        Height = 255
        TabIndex = 7
        Alignment = 1 'Right Justify
      End
      Begin VB.Label Label2
        Caption = "Max Rooms in List:"
        Left = 120
        Top = 720
        Width = 3255
        Height = 255
        TabIndex = 6
        Alignment = 1 'Right Justify
        BackStyle = 0 'Transparent
      End
      Begin VB.Label Label1
        Caption = "Max Rooms per User:"
        Left = 120
        Top = 360
        Width = 3255
        Height = 255
        TabIndex = 5
        Alignment = 1 'Right Justify
      End
    End
    Begin VB.Frame Frame8
      Caption = "Enable/Disable and rename"
      Left = -74760
      Top = 960
      Width = 4455
      Height = 5895
      TabIndex = 43
      Begin VB.TextBox catname
        Index = 9
        Left = 840
        Top = 3840
        Width = 2775
        Height = 285
        TabIndex = 149
      End
      Begin VB.ListBox catprop
        Index = 9
        Left = 240
        Top = 3840
        Width = 495
        Height = 255
        TabIndex = 148
      End
      Begin VB.CheckBox allowtraden
        Index = 9
        Left = 3960
        Top = 3840
        Width = 255
        Height = 255
        TabIndex = 147
      End
      Begin VB.TextBox catname
        Index = 8
        Left = 840
        Top = 3480
        Width = 2775
        Height = 285
        TabIndex = 146
      End
      Begin VB.ListBox catprop
        Index = 8
        Left = 240
        Top = 3480
        Width = 495
        Height = 255
        TabIndex = 145
      End
      Begin VB.CheckBox allowtraden
        Index = 8
        Left = 3960
        Top = 3480
        Width = 255
        Height = 255
        TabIndex = 144
      End
      Begin VB.CheckBox allowtraden
        Index = 7
        Left = 3960
        Top = 3120
        Width = 255
        Height = 255
        TabIndex = 75
      End
      Begin VB.CheckBox allowtraden
        Index = 6
        Left = 3960
        Top = 2760
        Width = 255
        Height = 255
        TabIndex = 74
      End
      Begin VB.CheckBox allowtraden
        Index = 5
        Left = 3960
        Top = 2400
        Width = 255
        Height = 255
        TabIndex = 73
      End
      Begin VB.CheckBox allowtraden
        Index = 4
        Left = 3960
        Top = 2040
        Width = 255
        Height = 255
        TabIndex = 72
      End
      Begin VB.CheckBox allowtraden
        Index = 3
        Left = 3960
        Top = 1680
        Width = 255
        Height = 255
        TabIndex = 71
      End
      Begin VB.CheckBox allowtraden
        Index = 2
        Left = 3960
        Top = 1320
        Width = 255
        Height = 255
        TabIndex = 70
      End
      Begin VB.CheckBox allowtraden
        Index = 1
        Left = 3960
        Top = 960
        Width = 255
        Height = 255
        TabIndex = 69
      End
      Begin VB.CheckBox allowtraden
        Index = 0
        Left = 3960
        Top = 600
        Width = 255
        Height = 255
        TabIndex = 68
      End
      Begin VB.ListBox catprop
        Index = 1
        Left = 240
        Top = 960
        Width = 495
        Height = 255
        TabIndex = 64
      End
      Begin VB.ListBox catprop
        Index = 2
        Left = 240
        Top = 1320
        Width = 495
        Height = 255
        TabIndex = 63
      End
      Begin VB.ListBox catprop
        Index = 3
        Left = 240
        Top = 1680
        Width = 495
        Height = 255
        TabIndex = 62
      End
      Begin VB.ListBox catprop
        Index = 4
        Left = 240
        Top = 2040
        Width = 495
        Height = 255
        TabIndex = 61
      End
      Begin VB.ListBox catprop
        Index = 5
        Left = 240
        Top = 2400
        Width = 495
        Height = 255
        TabIndex = 60
      End
      Begin VB.ListBox catprop
        Index = 6
        Left = 240
        Top = 2760
        Width = 495
        Height = 255
        TabIndex = 59
      End
      Begin VB.ListBox catprop
        Index = 7
        Left = 240
        Top = 3120
        Width = 495
        Height = 255
        TabIndex = 58
      End
      Begin VB.TextBox catname
        Index = 1
        Left = 840
        Top = 960
        Width = 2775
        Height = 285
        TabIndex = 57
      End
      Begin VB.TextBox catname
        Index = 2
        Left = 840
        Top = 1320
        Width = 2775
        Height = 285
        TabIndex = 56
      End
      Begin VB.TextBox catname
        Index = 3
        Left = 840
        Top = 1680
        Width = 2775
        Height = 285
        TabIndex = 55
      End
      Begin VB.TextBox catname
        Index = 4
        Left = 840
        Top = 2040
        Width = 2775
        Height = 285
        TabIndex = 54
      End
      Begin VB.TextBox catname
        Index = 5
        Left = 840
        Top = 2400
        Width = 2775
        Height = 285
        TabIndex = 53
      End
      Begin VB.TextBox catname
        Index = 6
        Left = 840
        Top = 2760
        Width = 2775
        Height = 285
        TabIndex = 52
      End
      Begin VB.TextBox catname
        Index = 7
        Left = 840
        Top = 3120
        Width = 2775
        Height = 285
        TabIndex = 51
      End
      Begin VB.ListBox catprop
        Index = 0
        Left = 240
        Top = 600
        Width = 495
        Height = 255
        TabIndex = 49
      End
      Begin VB.TextBox catname
        Index = 0
        Left = 840
        Top = 600
        Width = 2775
        Height = 285
        TabIndex = 44
      End
      Begin VB.Label Label21
        Caption = "Trading:"
        Left = 3600
        Top = 360
        Width = 735
        Height = 255
        TabIndex = 76
      End
      Begin VB.Label Label20
        Caption = "Enable: 0 = Disabled 1 = Enabled 2 = Enabled and admins only can post rooms there"
        Left = 0
        Top = 4440
        Width = 4455
        Height = 1335
        TabIndex = 50
        Alignment = 2 'Center
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "Microsoft Sans Serif"
          Size = 9
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label Label19
        Caption = "Change name:"
        Left = 840
        Top = 360
        Width = 3495
        Height = 255
        TabIndex = 46
      End
      Begin VB.Label Label18
        Caption = "Enable"
        Left = 240
        Top = 360
        Width = 495
        Height = 255
        TabIndex = 45
      End
    End
    Begin VB.Label Label28
      Caption = "Credits:"
      Left = 480
      Top = 3600
      Width = 2055
      Height = 255
      TabIndex = 168
      Alignment = 1 'Right Justify
    End
    Begin VB.Label Label27
      Caption = "Credits:"
      Left = 360
      Top = 3600
      Width = 2055
      Height = 255
      TabIndex = 167
      Alignment = 1 'Right Justify
    End
    Begin VB.Label Label26
      Caption = "E-Mail:"
      Left = 480
      Top = 3480
      Width = 2055
      Height = 255
      TabIndex = 166
      Alignment = 1 'Right Justify
    End
    Begin VB.Image Image1
      Index = 0
      Left = -74760
      Top = 6600
      Width = 4440
      Height = 915
    End
    Begin VB.Label Label8
      Caption = "Replacement:"
      Left = -72360
      Top = 2280
      Width = 2175
      Height = 255
      TabIndex = 66
    End
    Begin VB.Label Label7
      Caption = "Here you can edit some Settings for the Server."
      Left = -74760
      Top = 840
      Width = 4455
      Height = 495
      TabIndex = 21
    End
  End
End

Attribute VB_Name = "frmTab_housekeeping_extras3"


Private Sub Check10_Click() 'B1EF44
  'Data Table: 549FD0
  loc_B1EEA8: FLdRfVar var_8A
  loc_B1EEAB: FLdPrThis
  loc_B1EEAC: VCallAd Control_ID_Check10
  loc_B1EEAF: FStAdFunc var_88
  loc_B1EEB2: FLdPr var_88
  loc_B1EEB5:  = Me.Value
  loc_B1EEBA: FLdI2 var_8A
  loc_B1EEBD: LitI2_Byte 0
  loc_B1EEBF: EqI2
  loc_B1EEC0: FFree1Ad var_88
  loc_B1EEC3: BranchF loc_B1EF05
  loc_B1EEC6: LitI2_Byte 0
  loc_B1EEC8: FLdPrThis
  loc_B1EEC9: VCallAd Control_ID_Text21
  loc_B1EECC: FStAdFunc var_88
  loc_B1EECF: FLdPr var_88
  loc_B1EED2: Me.Enabled = from_stack_1b
  loc_B1EED7: FFree1Ad var_88
  loc_B1EEDA: LitI2_Byte 0
  loc_B1EEDC: FLdPrThis
  loc_B1EEDD: VCallAd Control_ID_Text22
  loc_B1EEE0: FStAdFunc var_88
  loc_B1EEE3: FLdPr var_88
  loc_B1EEE6: Me.Enabled = from_stack_1b
  loc_B1EEEB: FFree1Ad var_88
  loc_B1EEEE: LitI2_Byte 0
  loc_B1EEF0: FLdPrThis
  loc_B1EEF1: VCallAd Control_ID_Text23
  loc_B1EEF4: FStAdFunc var_88
  loc_B1EEF7: FLdPr var_88
  loc_B1EEFA: Me.Enabled = from_stack_1b
  loc_B1EEFF: FFree1Ad var_88
  loc_B1EF02: Branch loc_B1EF41
  loc_B1EF05: LitI2_Byte &HFF
  loc_B1EF07: FLdPrThis
  loc_B1EF08: VCallAd Control_ID_Text21
  loc_B1EF0B: FStAdFunc var_88
  loc_B1EF0E: FLdPr var_88
  loc_B1EF11: Me.Enabled = from_stack_1b
  loc_B1EF16: FFree1Ad var_88
  loc_B1EF19: LitI2_Byte &HFF
  loc_B1EF1B: FLdPrThis
  loc_B1EF1C: VCallAd Control_ID_Text22
  loc_B1EF1F: FStAdFunc var_88
  loc_B1EF22: FLdPr var_88
  loc_B1EF25: Me.Enabled = from_stack_1b
  loc_B1EF2A: FFree1Ad var_88
  loc_B1EF2D: LitI2_Byte &HFF
  loc_B1EF2F: FLdPrThis
  loc_B1EF30: VCallAd Control_ID_Text23
  loc_B1EF33: FStAdFunc var_88
  loc_B1EF36: FLdPr var_88
  loc_B1EF39: Me.Enabled = from_stack_1b
  loc_B1EF3E: FFree1Ad var_88
  loc_B1EF41: ExitProcHresult
End Sub

Private Sub Check2_Click() 'B1B510
  'Data Table: 549FD0
  loc_B1B4C4: FLdRfVar var_8A
  loc_B1B4C7: FLdPrThis
  loc_B1B4C8: VCallAd Control_ID_Check2
  loc_B1B4CB: FStAdFunc var_88
  loc_B1B4CE: FLdPr var_88
  loc_B1B4D1:  = Me.Value
  loc_B1B4D6: FLdI2 var_8A
  loc_B1B4D9: LitI2_Byte 1
  loc_B1B4DB: EqI2
  loc_B1B4DC: FFree1Ad var_88
  loc_B1B4DF: BranchF loc_B1B4F9
  loc_B1B4E2: LitI2_Byte &HFF
  loc_B1B4E4: FLdPrThis
  loc_B1B4E5: VCallAd Control_ID_Text7
  loc_B1B4E8: FStAdFunc var_88
  loc_B1B4EB: FLdPr var_88
  loc_B1B4EE: Me.Enabled = from_stack_1b
  loc_B1B4F3: FFree1Ad var_88
  loc_B1B4F6: Branch loc_B1B50D
  loc_B1B4F9: LitI2_Byte 0
  loc_B1B4FB: FLdPrThis
  loc_B1B4FC: VCallAd Control_ID_Text7
  loc_B1B4FF: FStAdFunc var_88
  loc_B1B502: FLdPr var_88
  loc_B1B505: Me.Enabled = from_stack_1b
  loc_B1B50A: FFree1Ad var_88
  loc_B1B50D: ExitProcHresult
End Sub

Private Sub Command10_Click() 'B50868
  'Data Table: 549FD0
  loc_B50030: FLdRfVar var_96
  loc_B50033: ImpAdLdI4 MemVar_C0F044
  loc_B50036: LitStr "privaterooms\"
  loc_B50039: ConcatStr
  loc_B5003A: FStStrNoPop var_90
  loc_B5003D: FLdRfVar var_8C
  loc_B50040: FLdPrThis
  loc_B50041: VCallAd Control_ID_room_id
  loc_B50044: FStAdFunc var_88
  loc_B50047: FLdPr var_88
  loc_B5004A:  = Me.Caption
  loc_B5004F: ILdRf var_8C
  loc_B50052: ConcatStr
  loc_B50053: FStStrNoPop var_94
  loc_B50056: ImpAdLdRf MemVar_C0F040
  loc_B50059: NewIfNullPr IFileSystem3
  loc_B5005C: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B50061: FLdI2 var_96
  loc_B50064: LitI2_Byte &HFF
  loc_B50066: EqI2
  loc_B50067: FFreeStr var_90 = "": var_8C = ""
  loc_B50070: FFree1Ad var_88
  loc_B50073: BranchF loc_B50815
  loc_B50076: FLdRfVar var_8C
  loc_B50079: FLdPrThis
  loc_B5007A: VCallAd Control_ID_room_id
  loc_B5007D: FStAdFunc var_88
  loc_B50080: FLdPr var_88
  loc_B50083:  = Me.Caption
  loc_B50088: FLdRfVar var_A4
  loc_B5008B: FLdRfVar var_A0
  loc_B5008E: LitI4 0
  loc_B50093: LitI2_Byte 0
  loc_B50095: LitI4 1
  loc_B5009A: ImpAdLdI4 MemVar_C0F044
  loc_B5009D: LitStr "privaterooms\"
  loc_B500A0: ConcatStr
  loc_B500A1: FStStrNoPop var_90
  loc_B500A4: ILdRf var_8C
  loc_B500A7: ConcatStr
  loc_B500A8: FStStrNoPop var_94
  loc_B500AB: LitStr "\owner.txt"
  loc_B500AE: ConcatStr
  loc_B500AF: FStStrNoPop var_9C
  loc_B500B2: ImpAdLdRf MemVar_C0F040
  loc_B500B5: NewIfNullPr IFileSystem3
  loc_B500B8: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B500BD: FLdPr var_A0
  loc_B500C0:  = Me.ReadAll
  loc_B500C5: FLdZeroAd var_A4
  loc_B500C8: CVarStr var_C4
  loc_B500CB: FStVar var_B4
  loc_B500CF: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_B500DA: FFreeAd var_88 = ""
  loc_B500E1: FLdRfVar var_96
  loc_B500E4: ImpAdLdI4 MemVar_C0F044
  loc_B500E7: LitStr "habbos\"
  loc_B500EA: ConcatStr
  loc_B500EB: CVarStr var_D4
  loc_B500EE: FLdRfVar var_B4
  loc_B500F1: FLdRfVar var_C4
  loc_B500F4: ImpAdCallFPR4  = LCase()
  loc_B500F9: FLdRfVar var_C4
  loc_B500FC: ConcatVar var_E4
  loc_B50100: CStrVarVal var_8C
  loc_B50104: ImpAdLdRf MemVar_C0F040
  loc_B50107: NewIfNullPr IFileSystem3
  loc_B5010A: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B5010F: FLdI2 var_96
  loc_B50112: LitI2_Byte &HFF
  loc_B50114: EqI2
  loc_B50115: FFree1Str var_8C
  loc_B50118: FFreeVar var_D4 = "": var_C4 = ""
  loc_B50121: BranchF loc_B50815
  loc_B50124: FLdRfVar var_B4
  loc_B50127: FLdRfVar var_C4
  loc_B5012A: ImpAdCallFPR4  = LCase()
  loc_B5012F: FLdRfVar var_90
  loc_B50132: FLdRfVar var_88
  loc_B50135: LitI4 0
  loc_B5013A: LitI2_Byte 0
  loc_B5013C: LitI4 1
  loc_B50141: ImpAdLdI4 MemVar_C0F044
  loc_B50144: LitStr "habbos\"
  loc_B50147: ConcatStr
  loc_B50148: CVarStr var_D4
  loc_B5014B: FLdRfVar var_C4
  loc_B5014E: ConcatVar var_E4
  loc_B50152: LitVarStr var_F4, "\rooms.txt"
  loc_B50157: ConcatVar var_104
  loc_B5015B: CStrVarVal var_8C
  loc_B5015F: ImpAdLdRf MemVar_C0F040
  loc_B50162: NewIfNullPr IFileSystem3
  loc_B50165: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B5016A: FLdPr var_88
  loc_B5016D:  = Me.ReadAll
  loc_B50172: ILdRf var_90
  loc_B50175: ImpAdCallFPR4 push push Val()
  loc_B5017A: CVarR8
  loc_B5017E: FStVar var_114
  loc_B50182: FFreeStr var_8C = ""
  loc_B50189: FFree1Ad var_88
  loc_B5018C: FFreeVar var_D4 = "": var_C4 = "": var_E4 = ""
  loc_B50197: FLdRfVar var_114
  loc_B5019A: LitVarI2 var_F4, 0
  loc_B5019F: HardType
  loc_B501A0: LeVarBool
  loc_B501A2: BranchF loc_B501AE
  loc_B501A5: LitVarI2 var_F4, 1
  loc_B501AA: FStVar var_114
  loc_B501AE: FLdRfVar var_B4
  loc_B501B1: FLdRfVar var_D4
  loc_B501B4: ImpAdCallFPR4  = LCase()
  loc_B501B9: FLdRfVar var_114
  loc_B501BC: LitVarI2 var_F4, 1
  loc_B501C1: SubVar var_C4
  loc_B501C5: CStrVarVal var_90
  loc_B501C9: FLdRfVar var_88
  loc_B501CC: LitI4 0
  loc_B501D1: LitI2_Byte 0
  loc_B501D3: LitI4 2
  loc_B501D8: ImpAdLdI4 MemVar_C0F044
  loc_B501DB: LitStr "habbos\"
  loc_B501DE: ConcatStr
  loc_B501DF: CVarStr var_E4
  loc_B501E2: FLdRfVar var_D4
  loc_B501E5: ConcatVar var_104
  loc_B501E9: LitVarStr var_124, "\rooms.txt"
  loc_B501EE: ConcatVar var_134
  loc_B501F2: CStrVarVal var_8C
  loc_B501F6: ImpAdLdRf MemVar_C0F040
  loc_B501F9: NewIfNullPr IFileSystem3
  loc_B501FC: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B50201: FLdPr var_88
  loc_B50204: from_stack_2 = Me.Write(from_stack_1v)
  loc_B50209: FFreeStr var_8C = ""
  loc_B50210: FFree1Ad var_88
  loc_B50213: FFreeVar var_E4 = "": var_D4 = "": var_104 = ""
  loc_B5021E: FLdRfVar var_B4
  loc_B50221: FLdRfVar var_C4
  loc_B50224: ImpAdCallFPR4  = LCase()
  loc_B50229: FLdRfVar var_96
  loc_B5022C: FLdRfVar var_88
  loc_B5022F: LitI4 0
  loc_B50234: LitI2_Byte 0
  loc_B50236: LitI4 1
  loc_B5023B: ImpAdLdI4 MemVar_C0F044
  loc_B5023E: LitStr "habbos\"
  loc_B50241: ConcatStr
  loc_B50242: CVarStr var_D4
  loc_B50245: FLdRfVar var_C4
  loc_B50248: ConcatVar var_E4
  loc_B5024C: LitVarStr var_F4, "\roomlist.txt"
  loc_B50251: ConcatVar var_104
  loc_B50255: CStrVarVal var_8C
  loc_B50259: ImpAdLdRf MemVar_C0F040
  loc_B5025C: NewIfNullPr IFileSystem3
  loc_B5025F: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B50264: FLdPr var_88
  loc_B50267:  = Me.AtEndOfStream
  loc_B5026C: FLdI2 var_96
  loc_B5026F: LitI2_Byte &HFF
  loc_B50271: EqI2
  loc_B50272: FFree1Str var_8C
  loc_B50275: FFree1Ad var_88
  loc_B50278: FFreeVar var_D4 = "": var_C4 = "": var_E4 = ""
  loc_B50283: BranchF loc_B502E8
  loc_B50286: FLdRfVar var_B4
  loc_B50289: FLdRfVar var_C4
  loc_B5028C: ImpAdCallFPR4  = LCase()
  loc_B50291: LitStr vbNullString
  loc_B50294: FLdRfVar var_88
  loc_B50297: LitI4 0
  loc_B5029C: LitI2_Byte 0
  loc_B5029E: LitI4 2
  loc_B502A3: ImpAdLdI4 MemVar_C0F044
  loc_B502A6: LitStr "habbos\"
  loc_B502A9: ConcatStr
  loc_B502AA: CVarStr var_D4
  loc_B502AD: FLdRfVar var_C4
  loc_B502B0: ConcatVar var_E4
  loc_B502B4: LitVarStr var_F4, "\roomlist.txt"
  loc_B502B9: ConcatVar var_104
  loc_B502BD: CStrVarVal var_8C
  loc_B502C1: ImpAdLdRf MemVar_C0F040
  loc_B502C4: NewIfNullPr IFileSystem3
  loc_B502C7: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B502CC: FLdPr var_88
  loc_B502CF: from_stack_2 = Me.Write(from_stack_1v)
  loc_B502D4: FFree1Str var_8C
  loc_B502D7: FFree1Ad var_88
  loc_B502DA: FFreeVar var_D4 = "": var_C4 = "": var_E4 = ""
  loc_B502E5: Branch loc_B503FE
  loc_B502E8: FLdRfVar var_B4
  loc_B502EB: FLdRfVar var_C4
  loc_B502EE: ImpAdCallFPR4  = LCase()
  loc_B502F3: FLdRfVar var_90
  loc_B502F6: FLdRfVar var_88
  loc_B502F9: LitI4 0
  loc_B502FE: LitI2_Byte 0
  loc_B50300: LitI4 1
  loc_B50305: ImpAdLdI4 MemVar_C0F044
  loc_B50308: LitStr "habbos\"
  loc_B5030B: ConcatStr
  loc_B5030C: CVarStr var_D4
  loc_B5030F: FLdRfVar var_C4
  loc_B50312: ConcatVar var_E4
  loc_B50316: LitVarStr var_F4, "\roomlist.txt"
  loc_B5031B: ConcatVar var_104
  loc_B5031F: CStrVarVal var_8C
  loc_B50323: ImpAdLdRf MemVar_C0F040
  loc_B50326: NewIfNullPr IFileSystem3
  loc_B50329: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B5032E: FLdPr var_88
  loc_B50331:  = Me.ReadAll
  loc_B50336: FLdZeroAd var_90
  loc_B50339: FStStr var_138
  loc_B5033C: FFree1Str var_8C
  loc_B5033F: FFree1Ad var_88
  loc_B50342: FFreeVar var_D4 = "": var_C4 = "": var_E4 = ""
  loc_B5034D: FLdRfVar var_8C
  loc_B50350: FLdPrThis
  loc_B50351: VCallAd Control_ID_room_id
  loc_B50354: FStAdFunc var_88
  loc_B50357: FLdPr var_88
  loc_B5035A:  = Me.Caption
  loc_B5035F: LitI4 0
  loc_B50364: LitI4 -1
  loc_B50369: LitI4 1
  loc_B5036E: LitStr vbNullString
  loc_B50371: LitStr "<"
  loc_B50374: ILdRf var_8C
  loc_B50377: ConcatStr
  loc_B50378: FStStrNoPop var_90
  loc_B5037B: LitStr ">"
  loc_B5037E: ConcatStr
  loc_B5037F: FStStrNoPop var_9C
  loc_B50382: FLdRfVar var_148
  loc_B50385: CStrVarVal var_94
  loc_B50389: ImpAdCallI2 Replace(, , , , , )
  loc_B5038E: FStStr var_138
  loc_B50391: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_B5039C: FFree1Ad var_88
  loc_B5039F: FLdRfVar var_B4
  loc_B503A2: FLdRfVar var_C4
  loc_B503A5: ImpAdCallFPR4  = LCase()
  loc_B503AA: ILdRf var_138
  loc_B503AD: FLdRfVar var_88
  loc_B503B0: LitI4 0
  loc_B503B5: LitI2_Byte 0
  loc_B503B7: LitI4 2
  loc_B503BC: ImpAdLdI4 MemVar_C0F044
  loc_B503BF: LitStr "habbos\"
  loc_B503C2: ConcatStr
  loc_B503C3: CVarStr var_D4
  loc_B503C6: FLdRfVar var_C4
  loc_B503C9: ConcatVar var_E4
  loc_B503CD: LitVarStr var_F4, "\roomlist.txt"
  loc_B503D2: ConcatVar var_104
  loc_B503D6: CStrVarVal var_8C
  loc_B503DA: ImpAdLdRf MemVar_C0F040
  loc_B503DD: NewIfNullPr IFileSystem3
  loc_B503E0: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B503E5: FLdPr var_88
  loc_B503E8: from_stack_2 = Me.Write(from_stack_1v)
  loc_B503ED: FFree1Str var_8C
  loc_B503F0: FFree1Ad var_88
  loc_B503F3: FFreeVar var_D4 = "": var_C4 = "": var_E4 = ""
  loc_B503FE: FLdRfVar var_A0
  loc_B50401: LitI2_Byte 0
  loc_B50403: LitI2_Byte &HFF
  loc_B50405: ImpAdLdI4 MemVar_C0F044
  loc_B50408: LitStr "privaterooms\"
  loc_B5040B: ConcatStr
  loc_B5040C: FStStrNoPop var_90
  loc_B5040F: FLdRfVar var_8C
  loc_B50412: FLdPrThis
  loc_B50413: VCallAd Control_ID_room_id
  loc_B50416: FStAdFunc var_88
  loc_B50419: FLdPr var_88
  loc_B5041C:  = Me.Caption
  loc_B50421: ILdRf var_8C
  loc_B50424: ConcatStr
  loc_B50425: FStStrNoPop var_94
  loc_B50428: LitStr "\deleted.txt"
  loc_B5042B: ConcatStr
  loc_B5042C: FStStrNoPop var_9C
  loc_B5042F: ImpAdLdRf MemVar_C0F040
  loc_B50432: NewIfNullPr IFileSystem3
  loc_B50435: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B5043A: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_B50445: FFreeAd var_88 = ""
  loc_B5044C: FLdPrThis
  loc_B5044D: VCallAd Control_ID_Combo3
  loc_B50450: FStAdFunc var_88
  loc_B50453: FLdPr var_88
  loc_B50456: Me.Clear
  loc_B5045B: FFree1Ad var_88
  loc_B5045E: FLdPrThis
  loc_B5045F: VCallAd Control_ID_Combo5
  loc_B50462: FStAdFunc var_88
  loc_B50465: FLdPr var_88
  loc_B50468: Me.Clear
  loc_B5046D: FFree1Ad var_88
  loc_B50470: LitStr "0"
  loc_B50473: FLdPrThis
  loc_B50474: VCallAd Control_ID_room_id
  loc_B50477: FStAdFunc var_88
  loc_B5047A: FLdPr var_88
  loc_B5047D: Me.Caption = from_stack_1
  loc_B50482: FFree1Ad var_88
  loc_B50485: LitStr vbNullString
  loc_B50488: FLdPrThis
  loc_B50489: VCallAd Control_ID_Text12
  loc_B5048C: FStAdFunc var_88
  loc_B5048F: FLdPr var_88
  loc_B50492: Me.Text = from_stack_1
  loc_B50497: FFree1Ad var_88
  loc_B5049A: LitStr vbNullString
  loc_B5049D: FLdPrThis
  loc_B5049E: VCallAd Control_ID_Text13
  loc_B504A1: FStAdFunc var_88
  loc_B504A4: FLdPr var_88
  loc_B504A7: Me.Text = from_stack_1
  loc_B504AC: FFree1Ad var_88
  loc_B504AF: LitStr vbNullString
  loc_B504B2: FLdPrThis
  loc_B504B3: VCallAd Control_ID_Text14
  loc_B504B6: FStAdFunc var_88
  loc_B504B9: FLdPr var_88
  loc_B504BC: Me.Text = from_stack_1
  loc_B504C1: FFree1Ad var_88
  loc_B504C4: LitI2_Byte 0
  loc_B504C6: FLdPrThis
  loc_B504C7: VCallAd Control_ID_Command10
  loc_B504CA: FStAdFunc var_88
  loc_B504CD: FLdPr var_88
  loc_B504D0: Me.Enabled = from_stack_1b
  loc_B504D5: FFree1Ad var_88
  loc_B504D8: LitI2_Byte 0
  loc_B504DA: FLdPrThis
  loc_B504DB: VCallAd Control_ID_Command11
  loc_B504DE: FStAdFunc var_88
  loc_B504E1: FLdPr var_88
  loc_B504E4: Me.Enabled = from_stack_1b
  loc_B504E9: FFree1Ad var_88
  loc_B504EC: LitI2_Byte 0
  loc_B504EE: FLdPrThis
  loc_B504EF: VCallAd Control_ID_Command12
  loc_B504F2: FStAdFunc var_88
  loc_B504F5: FLdPr var_88
  loc_B504F8: Me.Enabled = from_stack_1b
  loc_B504FD: FFree1Ad var_88
  loc_B50500: LitI2_Byte 0
  loc_B50502: FLdPrThis
  loc_B50503: VCallAd Control_ID_Command20
  loc_B50506: FStAdFunc var_88
  loc_B50509: FLdPr var_88
  loc_B5050C: Me.Enabled = from_stack_1b
  loc_B50511: FFree1Ad var_88
  loc_B50514: LitStr " -- "
  loc_B50517: LitVarStr var_F4, "roomlist_combo"
  loc_B5051C: PopAdLdVar
  loc_B5051D: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B50522: FStStrNoPop var_8C
  loc_B50525: ConcatStr
  loc_B50526: FStStrNoPop var_90
  loc_B50529: LitStr " -- "
  loc_B5052C: ConcatStr
  loc_B5052D: FStStrNoPop var_94
  loc_B50530: FLdPrThis
  loc_B50531: VCallAd Control_ID_Combo3
  loc_B50534: FStAdFunc var_88
  loc_B50537: FLdPr var_88
  loc_B5053A: Me.Text = from_stack_1
  loc_B5053F: FFreeStr var_8C = "": var_90 = ""
  loc_B50548: FFree1Ad var_88
  loc_B5054B: LitStr " -- "
  loc_B5054E: LitVarStr var_F4, "roomlist_combo"
  loc_B50553: PopAdLdVar
  loc_B50554: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B50559: FStStrNoPop var_8C
  loc_B5055C: ConcatStr
  loc_B5055D: FStStrNoPop var_90
  loc_B50560: LitStr " -- "
  loc_B50563: ConcatStr
  loc_B50564: FStStrNoPop var_94
  loc_B50567: FLdPrThis
  loc_B50568: VCallAd Control_ID_Combo5
  loc_B5056B: FStAdFunc var_88
  loc_B5056E: FLdPr var_88
  loc_B50571: Me.Text = from_stack_1
  loc_B50576: FFreeStr var_8C = "": var_90 = ""
  loc_B5057F: FFree1Ad var_88
  loc_B50582: FLdRfVar var_A0
  loc_B50585: FLdRfVar var_88
  loc_B50588: ImpAdLdI4 MemVar_C0F044
  loc_B5058B: LitStr "privaterooms"
  loc_B5058E: ConcatStr
  loc_B5058F: FStStrNoPop var_8C
  loc_B50592: ImpAdLdRf MemVar_C0F040
  loc_B50595: NewIfNullPr IFileSystem3
  loc_B50598: from_stack_2 = IFileSystem3.IFileSystem.GetFolder(from_stack_1v)
  loc_B5059D: FLdPr var_88
  loc_B505A0:  = Me.SubFolders
  loc_B505A5: FLdZeroAd var_A0
  loc_B505A8: FStAdFuncNoPop
  loc_B505AB: FLdPr Me
  loc_B505AE: MemLdRfVar from_stack_1.global_52
  loc_B505B1: FFree1Str var_8C
  loc_B505B4: FFree1Ad var_88
  loc_B505B7: ForEachCollObj
  loc_B505BF: FLdRfVar var_8C
  loc_B505C2: FLdPr Me
  loc_B505C5: MemLdPr global_52
  loc_B505C8:  = Me.Path
  loc_B505CD: LitI4 0
  loc_B505D2: LitI4 -1
  loc_B505D7: LitVarStr var_F4, "\"
  loc_B505DC: FStVarCopyObj var_C4
  loc_B505DF: FLdRfVar var_C4
  loc_B505E2: ILdRf var_8C
  loc_B505E5: FLdRfVar var_D4
  loc_B505E8: ImpAdCallFPR4  = Split(, , , )
  loc_B505ED: FLdRfVar var_D4
  loc_B505F0: FStVar var_164
  loc_B505F4: FFree1Str var_8C
  loc_B505F7: FFree1Var var_C4 = ""
  loc_B505FA: LitVarI2 var_184, 1
  loc_B505FF: FLdRfVar var_174
  loc_B50602: FLdRfVar var_164
  loc_B50605: CRefVarAry
  loc_B50607: PopAdLd4
  loc_B50608: LitI2_Byte 1
  loc_B5060A: FnUBound
  loc_B5060C: CVarI4
  loc_B50610: ForVar var_1A4
  loc_B50616: FLdRfVar var_174
  loc_B50619: CDargRef
  loc_B5061D: FLdRfVar var_164
  loc_B50620: VarIndexLdVar
  loc_B50626: CStrVarTmp
  loc_B50627: FStStr var_154
  loc_B5062A: FFree1Var var_C4 = ""
  loc_B5062D: FLdRfVar var_174
  loc_B50630: NextStepVar var_1A4
  loc_B50636: FLdRfVar var_96
  loc_B50639: FLdRfVar var_8C
  loc_B5063C: FLdPr Me
  loc_B5063F: MemLdPr global_52
  loc_B50642:  = Me.Path
  loc_B50647: ILdRf var_8C
  loc_B5064A: LitStr "\deleted.txt"
  loc_B5064D: ConcatStr
  loc_B5064E: FStStrNoPop var_90
  loc_B50651: ImpAdLdRf MemVar_C0F040
  loc_B50654: NewIfNullPr IFileSystem3
  loc_B50657: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B5065C: FLdI2 var_96
  loc_B5065F: LitI2_Byte 0
  loc_B50661: EqI2
  loc_B50662: FFreeStr var_8C = ""
  loc_B50669: BranchF loc_B5073B
  loc_B5066C: FLdRfVar var_8C
  loc_B5066F: FLdPr Me
  loc_B50672: MemLdPr global_52
  loc_B50675:  = Me.Path
  loc_B5067A: FLdRfVar var_94
  loc_B5067D: FLdRfVar var_88
  loc_B50680: LitI4 0
  loc_B50685: LitI2_Byte 0
  loc_B50687: LitI4 1
  loc_B5068C: ILdRf var_8C
  loc_B5068F: LitStr "\name.txt"
  loc_B50692: ConcatStr
  loc_B50693: FStStrNoPop var_90
  loc_B50696: ImpAdLdRf MemVar_C0F040
  loc_B50699: NewIfNullPr IFileSystem3
  loc_B5069C: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B506A1: FLdPr var_88
  loc_B506A4:  = Me.ReadAll
  loc_B506A9: FLdRfVar var_1A8
  loc_B506AC: FLdPr Me
  loc_B506AF: MemLdPr global_52
  loc_B506B2:  = Me.Path
  loc_B506B7: FLdRfVar var_1B0
  loc_B506BA: FLdRfVar var_A0
  loc_B506BD: LitI4 0
  loc_B506C2: LitI2_Byte 0
  loc_B506C4: LitI4 1
  loc_B506C9: ILdRf var_1A8
  loc_B506CC: LitStr "\owner.txt"
  loc_B506CF: ConcatStr
  loc_B506D0: FStStrNoPop var_1AC
  loc_B506D3: ImpAdLdRf MemVar_C0F040
  loc_B506D6: NewIfNullPr IFileSystem3
  loc_B506D9: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B506DE: FLdPr var_A0
  loc_B506E1:  = Me.ReadAll
  loc_B506E6: LitVar_Missing var_F4
  loc_B506E9: PopAdLdVar
  loc_B506EA: ILdRf var_154
  loc_B506ED: LitStr " Name: "
  loc_B506F0: ConcatStr
  loc_B506F1: FStStrNoPop var_9C
  loc_B506F4: ILdRf var_94
  loc_B506F7: ConcatStr
  loc_B506F8: FStStrNoPop var_A4
  loc_B506FB: LitStr " Besitzer: "
  loc_B506FE: ConcatStr
  loc_B506FF: FStStrNoPop var_1B4
  loc_B50702: ILdRf var_1B0
  loc_B50705: ConcatStr
  loc_B50706: FStStrNoPop var_1B8
  loc_B50709: FLdPrThis
  loc_B5070A: VCallAd Control_ID_Combo3
  loc_B5070D: FStAdFunc var_1BC
  loc_B50710: FLdPr var_1BC
  loc_B50713: Me.AddItem from_stack_1, from_stack_2
  loc_B50718: FFreeStr var_8C = "": var_90 = "": var_9C = "": var_94 = "": var_A4 = "": var_1A8 = "": var_1AC = "": var_1B4 = "": var_1B0 = ""
  loc_B5072F: FFreeAd var_88 = "": var_A0 = ""
  loc_B50738: Branch loc_B50807
  loc_B5073B: FLdRfVar var_8C
  loc_B5073E: FLdPr Me
  loc_B50741: MemLdPr global_52
  loc_B50744:  = Me.Path
  loc_B50749: FLdRfVar var_94
  loc_B5074C: FLdRfVar var_88
  loc_B5074F: LitI4 0
  loc_B50754: LitI2_Byte 0
  loc_B50756: LitI4 1
  loc_B5075B: ILdRf var_8C
  loc_B5075E: LitStr "\name.txt"
  loc_B50761: ConcatStr
  loc_B50762: FStStrNoPop var_90
  loc_B50765: ImpAdLdRf MemVar_C0F040
  loc_B50768: NewIfNullPr IFileSystem3
  loc_B5076B: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B50770: FLdPr var_88
  loc_B50773:  = Me.ReadAll
  loc_B50778: FLdRfVar var_1A8
  loc_B5077B: FLdPr Me
  loc_B5077E: MemLdPr global_52
  loc_B50781:  = Me.Path
  loc_B50786: FLdRfVar var_1B0
  loc_B50789: FLdRfVar var_A0
  loc_B5078C: LitI4 0
  loc_B50791: LitI2_Byte 0
  loc_B50793: LitI4 1
  loc_B50798: ILdRf var_1A8
  loc_B5079B: LitStr "\owner.txt"
  loc_B5079E: ConcatStr
  loc_B5079F: FStStrNoPop var_1AC
  loc_B507A2: ImpAdLdRf MemVar_C0F040
  loc_B507A5: NewIfNullPr IFileSystem3
  loc_B507A8: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B507AD: FLdPr var_A0
  loc_B507B0:  = Me.ReadAll
  loc_B507B5: LitVar_Missing var_F4
  loc_B507B8: PopAdLdVar
  loc_B507B9: ILdRf var_154
  loc_B507BC: LitStr " Name: "
  loc_B507BF: ConcatStr
  loc_B507C0: FStStrNoPop var_9C
  loc_B507C3: ILdRf var_94
  loc_B507C6: ConcatStr
  loc_B507C7: FStStrNoPop var_A4
  loc_B507CA: LitStr " Besitzer: "
  loc_B507CD: ConcatStr
  loc_B507CE: FStStrNoPop var_1B4
  loc_B507D1: ILdRf var_1B0
  loc_B507D4: ConcatStr
  loc_B507D5: FStStrNoPop var_1B8
  loc_B507D8: FLdPrThis
  loc_B507D9: VCallAd Control_ID_Combo5
  loc_B507DC: FStAdFunc var_1BC
  loc_B507DF: FLdPr var_1BC
  loc_B507E2: Me.AddItem from_stack_1, from_stack_2
  loc_B507E7: FFreeStr var_8C = "": var_90 = "": var_9C = "": var_94 = "": var_A4 = "": var_1A8 = "": var_1AC = "": var_1B4 = "": var_1B0 = ""
  loc_B507FE: FFreeAd var_88 = "": var_A0 = ""
  loc_B50807: FLdPr Me
  loc_B5080A: MemLdRfVar from_stack_1.global_52
  loc_B5080D: NextEachCollObj
  loc_B50815: LitI2_Byte &HFF
  loc_B50817: FLdPrThis
  loc_B50818: VCallAd Control_ID_Command10
  loc_B5081B: FStAdFunc var_88
  loc_B5081E: FLdPr var_88
  loc_B50821: Me.Enabled = from_stack_1b
  loc_B50826: FFree1Ad var_88
  loc_B50829: LitI2_Byte &HFF
  loc_B5082B: FLdPrThis
  loc_B5082C: VCallAd Control_ID_Command11
  loc_B5082F: FStAdFunc var_88
  loc_B50832: FLdPr var_88
  loc_B50835: Me.Enabled = from_stack_1b
  loc_B5083A: FFree1Ad var_88
  loc_B5083D: LitI2_Byte &HFF
  loc_B5083F: FLdPrThis
  loc_B50840: VCallAd Control_ID_Command12
  loc_B50843: FStAdFunc var_88
  loc_B50846: FLdPr var_88
  loc_B50849: Me.Enabled = from_stack_1b
  loc_B5084E: FFree1Ad var_88
  loc_B50851: LitI2_Byte &HFF
  loc_B50853: FLdPrThis
  loc_B50854: VCallAd Control_ID_Command20
  loc_B50857: FStAdFunc var_88
  loc_B5085A: FLdPr var_88
  loc_B5085D: Me.Enabled = from_stack_1b
  loc_B50862: FFree1Ad var_88
  loc_B50865: ExitProcHresult
End Sub

Private Sub Command11_Click() 'B42A94
  'Data Table: 549FD0
  loc_B42474: FLdRfVar var_96
  loc_B42477: ImpAdLdI4 MemVar_C0F044
  loc_B4247A: LitStr "privaterooms\"
  loc_B4247D: ConcatStr
  loc_B4247E: FStStrNoPop var_90
  loc_B42481: FLdRfVar var_8C
  loc_B42484: FLdPrThis
  loc_B42485: VCallAd Control_ID_room_id
  loc_B42488: FStAdFunc var_88
  loc_B4248B: FLdPr var_88
  loc_B4248E:  = Me.Caption
  loc_B42493: ILdRf var_8C
  loc_B42496: ConcatStr
  loc_B42497: FStStrNoPop var_94
  loc_B4249A: ImpAdLdRf MemVar_C0F040
  loc_B4249D: NewIfNullPr IFileSystem3
  loc_B424A0: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B424A5: FLdI2 var_96
  loc_B424A8: LitI2_Byte &HFF
  loc_B424AA: EqI2
  loc_B424AB: FFreeStr var_90 = "": var_8C = ""
  loc_B424B4: FFree1Ad var_88
  loc_B424B7: BranchF loc_B42A90
  loc_B424BA: FLdRfVar var_8C
  loc_B424BD: FLdPrThis
  loc_B424BE: VCallAd Control_ID_Text12
  loc_B424C1: FStAdFunc var_88
  loc_B424C4: FLdPr var_88
  loc_B424C7:  = Me.Text
  loc_B424CC: ILdRf var_8C
  loc_B424CF: LitStr vbNullString
  loc_B424D2: EqStr
  loc_B424D4: FFree1Str var_8C
  loc_B424D7: FFree1Ad var_88
  loc_B424DA: BranchF loc_B424F2
  loc_B424DD: LitStr " "
  loc_B424E0: FLdPrThis
  loc_B424E1: VCallAd Control_ID_Text12
  loc_B424E4: FStAdFunc var_88
  loc_B424E7: FLdPr var_88
  loc_B424EA: Me.Text = from_stack_1
  loc_B424EF: FFree1Ad var_88
  loc_B424F2: FLdRfVar var_8C
  loc_B424F5: FLdPrThis
  loc_B424F6: VCallAd Control_ID_Text13
  loc_B424F9: FStAdFunc var_88
  loc_B424FC: FLdPr var_88
  loc_B424FF:  = Me.Text
  loc_B42504: ILdRf var_8C
  loc_B42507: LitStr vbNullString
  loc_B4250A: EqStr
  loc_B4250C: FFree1Str var_8C
  loc_B4250F: FFree1Ad var_88
  loc_B42512: BranchF loc_B4252A
  loc_B42515: LitStr " "
  loc_B42518: FLdPrThis
  loc_B42519: VCallAd Control_ID_Text13
  loc_B4251C: FStAdFunc var_88
  loc_B4251F: FLdPr var_88
  loc_B42522: Me.Text = from_stack_1
  loc_B42527: FFree1Ad var_88
  loc_B4252A: FLdRfVar var_8C
  loc_B4252D: FLdPrThis
  loc_B4252E: VCallAd Control_ID_Text14
  loc_B42531: FStAdFunc var_88
  loc_B42534: FLdPr var_88
  loc_B42537:  = Me.Text
  loc_B4253C: ILdRf var_8C
  loc_B4253F: LitStr vbNullString
  loc_B42542: EqStr
  loc_B42544: FFree1Str var_8C
  loc_B42547: FFree1Ad var_88
  loc_B4254A: BranchF loc_B42562
  loc_B4254D: LitStr " "
  loc_B42550: FLdPrThis
  loc_B42551: VCallAd Control_ID_Text14
  loc_B42554: FStAdFunc var_88
  loc_B42557: FLdPr var_88
  loc_B4255A: Me.Text = from_stack_1
  loc_B4255F: FFree1Ad var_88
  loc_B42562: FLdRfVar var_90
  loc_B42565: FLdPrThis
  loc_B42566: VCallAd Control_ID_room_id
  loc_B42569: FStAdFunc var_9C
  loc_B4256C: FLdPr var_9C
  loc_B4256F:  = Me.Caption
  loc_B42574: FLdRfVar var_8C
  loc_B42577: FLdPrThis
  loc_B42578: VCallAd Control_ID_Text12
  loc_B4257B: FStAdFunc var_88
  loc_B4257E: FLdPr var_88
  loc_B42581:  = Me.Text
  loc_B42586: ILdRf var_8C
  loc_B42589: FLdRfVar var_A8
  loc_B4258C: LitI4 0
  loc_B42591: LitI2_Byte 0
  loc_B42593: LitI4 2
  loc_B42598: ImpAdLdI4 MemVar_C0F044
  loc_B4259B: LitStr "privaterooms\"
  loc_B4259E: ConcatStr
  loc_B4259F: FStStrNoPop var_94
  loc_B425A2: ILdRf var_90
  loc_B425A5: ConcatStr
  loc_B425A6: FStStrNoPop var_A0
  loc_B425A9: LitStr "\name.txt"
  loc_B425AC: ConcatStr
  loc_B425AD: FStStrNoPop var_A4
  loc_B425B0: ImpAdLdRf MemVar_C0F040
  loc_B425B3: NewIfNullPr IFileSystem3
  loc_B425B6: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B425BB: FLdPr var_A8
  loc_B425BE: from_stack_2 = Me.Write(from_stack_1v)
  loc_B425C3: FFreeStr var_94 = "": var_90 = "": var_A0 = "": var_A4 = ""
  loc_B425D0: FFreeAd var_88 = "": var_9C = ""
  loc_B425D9: FLdRfVar var_90
  loc_B425DC: FLdPrThis
  loc_B425DD: VCallAd Control_ID_room_id
  loc_B425E0: FStAdFunc var_9C
  loc_B425E3: FLdPr var_9C
  loc_B425E6:  = Me.Caption
  loc_B425EB: FLdRfVar var_8C
  loc_B425EE: FLdPrThis
  loc_B425EF: VCallAd Control_ID_Text13
  loc_B425F2: FStAdFunc var_88
  loc_B425F5: FLdPr var_88
  loc_B425F8:  = Me.Text
  loc_B425FD: ILdRf var_8C
  loc_B42600: FLdRfVar var_A8
  loc_B42603: LitI4 0
  loc_B42608: LitI2_Byte 0
  loc_B4260A: LitI4 2
  loc_B4260F: ImpAdLdI4 MemVar_C0F044
  loc_B42612: LitStr "privaterooms\"
  loc_B42615: ConcatStr
  loc_B42616: FStStrNoPop var_94
  loc_B42619: ILdRf var_90
  loc_B4261C: ConcatStr
  loc_B4261D: FStStrNoPop var_A0
  loc_B42620: LitStr "\description.txt"
  loc_B42623: ConcatStr
  loc_B42624: FStStrNoPop var_A4
  loc_B42627: ImpAdLdRf MemVar_C0F040
  loc_B4262A: NewIfNullPr IFileSystem3
  loc_B4262D: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B42632: FLdPr var_A8
  loc_B42635: from_stack_2 = Me.Write(from_stack_1v)
  loc_B4263A: FFreeStr var_94 = "": var_90 = "": var_A0 = "": var_A4 = ""
  loc_B42647: FFreeAd var_88 = "": var_9C = ""
  loc_B42650: FLdRfVar var_90
  loc_B42653: FLdPrThis
  loc_B42654: VCallAd Control_ID_room_id
  loc_B42657: FStAdFunc var_9C
  loc_B4265A: FLdPr var_9C
  loc_B4265D:  = Me.Caption
  loc_B42662: FLdRfVar var_8C
  loc_B42665: FLdPrThis
  loc_B42666: VCallAd Control_ID_Text14
  loc_B42669: FStAdFunc var_88
  loc_B4266C: FLdPr var_88
  loc_B4266F:  = Me.Text
  loc_B42674: ILdRf var_8C
  loc_B42677: FLdRfVar var_A8
  loc_B4267A: LitI4 0
  loc_B4267F: LitI2_Byte 0
  loc_B42681: LitI4 2
  loc_B42686: ImpAdLdI4 MemVar_C0F044
  loc_B42689: LitStr "privaterooms\"
  loc_B4268C: ConcatStr
  loc_B4268D: FStStrNoPop var_94
  loc_B42690: ILdRf var_90
  loc_B42693: ConcatStr
  loc_B42694: FStStrNoPop var_A0
  loc_B42697: LitStr "\pass.txt"
  loc_B4269A: ConcatStr
  loc_B4269B: FStStrNoPop var_A4
  loc_B4269E: ImpAdLdRf MemVar_C0F040
  loc_B426A1: NewIfNullPr IFileSystem3
  loc_B426A4: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B426A9: FLdPr var_A8
  loc_B426AC: from_stack_2 = Me.Write(from_stack_1v)
  loc_B426B1: FFreeStr var_94 = "": var_90 = "": var_A0 = "": var_A4 = ""
  loc_B426BE: FFreeAd var_88 = "": var_9C = ""
  loc_B426C7: FLdPrThis
  loc_B426C8: VCallAd Control_ID_Combo3
  loc_B426CB: FStAdFunc var_88
  loc_B426CE: FLdPr var_88
  loc_B426D1: Me.Clear
  loc_B426D6: FFree1Ad var_88
  loc_B426D9: FLdPrThis
  loc_B426DA: VCallAd Control_ID_Combo5
  loc_B426DD: FStAdFunc var_88
  loc_B426E0: FLdPr var_88
  loc_B426E3: Me.Clear
  loc_B426E8: FFree1Ad var_88
  loc_B426EB: LitStr "0"
  loc_B426EE: FLdPrThis
  loc_B426EF: VCallAd Control_ID_room_id
  loc_B426F2: FStAdFunc var_88
  loc_B426F5: FLdPr var_88
  loc_B426F8: Me.Caption = from_stack_1
  loc_B426FD: FFree1Ad var_88
  loc_B42700: LitStr vbNullString
  loc_B42703: FLdPrThis
  loc_B42704: VCallAd Control_ID_Text12
  loc_B42707: FStAdFunc var_88
  loc_B4270A: FLdPr var_88
  loc_B4270D: Me.Text = from_stack_1
  loc_B42712: FFree1Ad var_88
  loc_B42715: LitStr vbNullString
  loc_B42718: FLdPrThis
  loc_B42719: VCallAd Control_ID_Text13
  loc_B4271C: FStAdFunc var_88
  loc_B4271F: FLdPr var_88
  loc_B42722: Me.Text = from_stack_1
  loc_B42727: FFree1Ad var_88
  loc_B4272A: LitStr vbNullString
  loc_B4272D: FLdPrThis
  loc_B4272E: VCallAd Control_ID_Text14
  loc_B42731: FStAdFunc var_88
  loc_B42734: FLdPr var_88
  loc_B42737: Me.Text = from_stack_1
  loc_B4273C: FFree1Ad var_88
  loc_B4273F: LitI2_Byte 0
  loc_B42741: FLdPrThis
  loc_B42742: VCallAd Control_ID_Command10
  loc_B42745: FStAdFunc var_88
  loc_B42748: FLdPr var_88
  loc_B4274B: Me.Enabled = from_stack_1b
  loc_B42750: FFree1Ad var_88
  loc_B42753: LitI2_Byte 0
  loc_B42755: FLdPrThis
  loc_B42756: VCallAd Control_ID_Command11
  loc_B42759: FStAdFunc var_88
  loc_B4275C: FLdPr var_88
  loc_B4275F: Me.Enabled = from_stack_1b
  loc_B42764: FFree1Ad var_88
  loc_B42767: LitI2_Byte 0
  loc_B42769: FLdPrThis
  loc_B4276A: VCallAd Control_ID_Command12
  loc_B4276D: FStAdFunc var_88
  loc_B42770: FLdPr var_88
  loc_B42773: Me.Enabled = from_stack_1b
  loc_B42778: FFree1Ad var_88
  loc_B4277B: LitI2_Byte 0
  loc_B4277D: FLdPrThis
  loc_B4277E: VCallAd Control_ID_Command20
  loc_B42781: FStAdFunc var_88
  loc_B42784: FLdPr var_88
  loc_B42787: Me.Enabled = from_stack_1b
  loc_B4278C: FFree1Ad var_88
  loc_B4278F: LitStr " -- "
  loc_B42792: LitVarStr var_B8, "roomlist_combo"
  loc_B42797: PopAdLdVar
  loc_B42798: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4279D: FStStrNoPop var_8C
  loc_B427A0: ConcatStr
  loc_B427A1: FStStrNoPop var_90
  loc_B427A4: LitStr " -- "
  loc_B427A7: ConcatStr
  loc_B427A8: FStStrNoPop var_94
  loc_B427AB: FLdPrThis
  loc_B427AC: VCallAd Control_ID_Combo3
  loc_B427AF: FStAdFunc var_88
  loc_B427B2: FLdPr var_88
  loc_B427B5: Me.Text = from_stack_1
  loc_B427BA: FFreeStr var_8C = "": var_90 = ""
  loc_B427C3: FFree1Ad var_88
  loc_B427C6: LitStr " -- "
  loc_B427C9: LitVarStr var_B8, "roomlist_combo"
  loc_B427CE: PopAdLdVar
  loc_B427CF: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B427D4: FStStrNoPop var_8C
  loc_B427D7: ConcatStr
  loc_B427D8: FStStrNoPop var_90
  loc_B427DB: LitStr " -- "
  loc_B427DE: ConcatStr
  loc_B427DF: FStStrNoPop var_94
  loc_B427E2: FLdPrThis
  loc_B427E3: VCallAd Control_ID_Combo5
  loc_B427E6: FStAdFunc var_88
  loc_B427E9: FLdPr var_88
  loc_B427EC: Me.Text = from_stack_1
  loc_B427F1: FFreeStr var_8C = "": var_90 = ""
  loc_B427FA: FFree1Ad var_88
  loc_B427FD: FLdRfVar var_9C
  loc_B42800: FLdRfVar var_88
  loc_B42803: ImpAdLdI4 MemVar_C0F044
  loc_B42806: LitStr "privaterooms"
  loc_B42809: ConcatStr
  loc_B4280A: FStStrNoPop var_8C
  loc_B4280D: ImpAdLdRf MemVar_C0F040
  loc_B42810: NewIfNullPr IFileSystem3
  loc_B42813: from_stack_2 = IFileSystem3.IFileSystem.GetFolder(from_stack_1v)
  loc_B42818: FLdPr var_88
  loc_B4281B:  = Me.SubFolders
  loc_B42820: FLdZeroAd var_9C
  loc_B42823: FStAdFuncNoPop
  loc_B42826: FLdPr Me
  loc_B42829: MemLdRfVar from_stack_1.global_52
  loc_B4282C: FFree1Str var_8C
  loc_B4282F: FFree1Ad var_88
  loc_B42832: ForEachCollObj
  loc_B4283A: FLdRfVar var_8C
  loc_B4283D: FLdPr Me
  loc_B42840: MemLdPr global_52
  loc_B42843:  = Me.Path
  loc_B42848: LitI4 0
  loc_B4284D: LitI4 -1
  loc_B42852: LitVarStr var_B8, "\"
  loc_B42857: FStVarCopyObj var_D4
  loc_B4285A: FLdRfVar var_D4
  loc_B4285D: ILdRf var_8C
  loc_B42860: FLdRfVar var_E4
  loc_B42863: ImpAdCallFPR4  = Split(, , , )
  loc_B42868: FLdRfVar var_E4
  loc_B4286B: FStVar var_F4
  loc_B4286F: FFree1Str var_8C
  loc_B42872: FFree1Var var_D4 = ""
  loc_B42875: LitVarI2 var_124, 1
  loc_B4287A: FLdRfVar var_104
  loc_B4287D: FLdRfVar var_F4
  loc_B42880: CRefVarAry
  loc_B42882: PopAdLd4
  loc_B42883: LitI2_Byte 1
  loc_B42885: FnUBound
  loc_B42887: CVarI4
  loc_B4288B: ForVar var_144
  loc_B42891: FLdRfVar var_104
  loc_B42894: CDargRef
  loc_B42898: FLdRfVar var_F4
  loc_B4289B: VarIndexLdVar
  loc_B428A1: CStrVarTmp
  loc_B428A2: FStStr var_C4
  loc_B428A5: FFree1Var var_D4 = ""
  loc_B428A8: FLdRfVar var_104
  loc_B428AB: NextStepVar var_144
  loc_B428B1: FLdRfVar var_96
  loc_B428B4: FLdRfVar var_8C
  loc_B428B7: FLdPr Me
  loc_B428BA: MemLdPr global_52
  loc_B428BD:  = Me.Path
  loc_B428C2: ILdRf var_8C
  loc_B428C5: LitStr "\deleted.txt"
  loc_B428C8: ConcatStr
  loc_B428C9: FStStrNoPop var_90
  loc_B428CC: ImpAdLdRf MemVar_C0F040
  loc_B428CF: NewIfNullPr IFileSystem3
  loc_B428D2: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B428D7: FLdI2 var_96
  loc_B428DA: LitI2_Byte 0
  loc_B428DC: EqI2
  loc_B428DD: FFreeStr var_8C = ""
  loc_B428E4: BranchF loc_B429B6
  loc_B428E7: FLdRfVar var_8C
  loc_B428EA: FLdPr Me
  loc_B428ED: MemLdPr global_52
  loc_B428F0:  = Me.Path
  loc_B428F5: FLdRfVar var_94
  loc_B428F8: FLdRfVar var_88
  loc_B428FB: LitI4 0
  loc_B42900: LitI2_Byte 0
  loc_B42902: LitI4 1
  loc_B42907: ILdRf var_8C
  loc_B4290A: LitStr "\name.txt"
  loc_B4290D: ConcatStr
  loc_B4290E: FStStrNoPop var_90
  loc_B42911: ImpAdLdRf MemVar_C0F040
  loc_B42914: NewIfNullPr IFileSystem3
  loc_B42917: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4291C: FLdPr var_88
  loc_B4291F:  = Me.ReadAll
  loc_B42924: FLdRfVar var_148
  loc_B42927: FLdPr Me
  loc_B4292A: MemLdPr global_52
  loc_B4292D:  = Me.Path
  loc_B42932: FLdRfVar var_150
  loc_B42935: FLdRfVar var_9C
  loc_B42938: LitI4 0
  loc_B4293D: LitI2_Byte 0
  loc_B4293F: LitI4 1
  loc_B42944: ILdRf var_148
  loc_B42947: LitStr "\owner.txt"
  loc_B4294A: ConcatStr
  loc_B4294B: FStStrNoPop var_14C
  loc_B4294E: ImpAdLdRf MemVar_C0F040
  loc_B42951: NewIfNullPr IFileSystem3
  loc_B42954: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B42959: FLdPr var_9C
  loc_B4295C:  = Me.ReadAll
  loc_B42961: LitVar_Missing var_B8
  loc_B42964: PopAdLdVar
  loc_B42965: ILdRf var_C4
  loc_B42968: LitStr " Name: "
  loc_B4296B: ConcatStr
  loc_B4296C: FStStrNoPop var_A0
  loc_B4296F: ILdRf var_94
  loc_B42972: ConcatStr
  loc_B42973: FStStrNoPop var_A4
  loc_B42976: LitStr " Besitzer: "
  loc_B42979: ConcatStr
  loc_B4297A: FStStrNoPop var_154
  loc_B4297D: ILdRf var_150
  loc_B42980: ConcatStr
  loc_B42981: FStStrNoPop var_158
  loc_B42984: FLdPrThis
  loc_B42985: VCallAd Control_ID_Combo3
  loc_B42988: FStAdFunc var_A8
  loc_B4298B: FLdPr var_A8
  loc_B4298E: Me.AddItem from_stack_1, from_stack_2
  loc_B42993: FFreeStr var_8C = "": var_90 = "": var_A0 = "": var_94 = "": var_A4 = "": var_148 = "": var_14C = "": var_154 = "": var_150 = ""
  loc_B429AA: FFreeAd var_88 = "": var_9C = ""
  loc_B429B3: Branch loc_B42A82
  loc_B429B6: FLdRfVar var_8C
  loc_B429B9: FLdPr Me
  loc_B429BC: MemLdPr global_52
  loc_B429BF:  = Me.Path
  loc_B429C4: FLdRfVar var_94
  loc_B429C7: FLdRfVar var_88
  loc_B429CA: LitI4 0
  loc_B429CF: LitI2_Byte 0
  loc_B429D1: LitI4 1
  loc_B429D6: ILdRf var_8C
  loc_B429D9: LitStr "\name.txt"
  loc_B429DC: ConcatStr
  loc_B429DD: FStStrNoPop var_90
  loc_B429E0: ImpAdLdRf MemVar_C0F040
  loc_B429E3: NewIfNullPr IFileSystem3
  loc_B429E6: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B429EB: FLdPr var_88
  loc_B429EE:  = Me.ReadAll
  loc_B429F3: FLdRfVar var_148
  loc_B429F6: FLdPr Me
  loc_B429F9: MemLdPr global_52
  loc_B429FC:  = Me.Path
  loc_B42A01: FLdRfVar var_150
  loc_B42A04: FLdRfVar var_9C
  loc_B42A07: LitI4 0
  loc_B42A0C: LitI2_Byte 0
  loc_B42A0E: LitI4 1
  loc_B42A13: ILdRf var_148
  loc_B42A16: LitStr "\owner.txt"
  loc_B42A19: ConcatStr
  loc_B42A1A: FStStrNoPop var_14C
  loc_B42A1D: ImpAdLdRf MemVar_C0F040
  loc_B42A20: NewIfNullPr IFileSystem3
  loc_B42A23: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B42A28: FLdPr var_9C
  loc_B42A2B:  = Me.ReadAll
  loc_B42A30: LitVar_Missing var_B8
  loc_B42A33: PopAdLdVar
  loc_B42A34: ILdRf var_C4
  loc_B42A37: LitStr " Name: "
  loc_B42A3A: ConcatStr
  loc_B42A3B: FStStrNoPop var_A0
  loc_B42A3E: ILdRf var_94
  loc_B42A41: ConcatStr
  loc_B42A42: FStStrNoPop var_A4
  loc_B42A45: LitStr " Besitzer: "
  loc_B42A48: ConcatStr
  loc_B42A49: FStStrNoPop var_154
  loc_B42A4C: ILdRf var_150
  loc_B42A4F: ConcatStr
  loc_B42A50: FStStrNoPop var_158
  loc_B42A53: FLdPrThis
  loc_B42A54: VCallAd Control_ID_Combo5
  loc_B42A57: FStAdFunc var_A8
  loc_B42A5A: FLdPr var_A8
  loc_B42A5D: Me.AddItem from_stack_1, from_stack_2
  loc_B42A62: FFreeStr var_8C = "": var_90 = "": var_A0 = "": var_94 = "": var_A4 = "": var_148 = "": var_14C = "": var_154 = "": var_150 = ""
  loc_B42A79: FFreeAd var_88 = "": var_9C = ""
  loc_B42A82: FLdPr Me
  loc_B42A85: MemLdRfVar from_stack_1.global_52
  loc_B42A88: NextEachCollObj
  loc_B42A90: ExitProcHresult
  loc_B42A91: ConcatStr
  loc_B42A92: FStStrNoPop arg_5870
End Sub

Private Sub Command12_Click() 'B3D738
  'Data Table: 549FD0
  loc_B3D228: FLdRfVar var_8C
  loc_B3D22B: FLdPrThis
  loc_B3D22C: VCallAd Control_ID_Combo3
  loc_B3D22F: FStAdFunc var_88
  loc_B3D232: FLdPr var_88
  loc_B3D235:  = Me.Text
  loc_B3D23A: FLdRfVar var_D4
  loc_B3D23D: FLdPrThis
  loc_B3D23E: VCallAd Control_ID_Combo3
  loc_B3D241: FStAdFunc var_D0
  loc_B3D244: FLdPr var_D0
  loc_B3D247:  = Me.Text
  loc_B3D24C: FLdRfVar var_16C
  loc_B3D24F: FLdPrThis
  loc_B3D250: VCallAd Control_ID_Combo3
  loc_B3D253: FStAdFunc var_168
  loc_B3D256: FLdPr var_168
  loc_B3D259:  = Me.Text
  loc_B3D25E: LitVarI2 var_1AC, 0
  loc_B3D263: PopAdLdVar
  loc_B3D264: LitI4 0
  loc_B3D269: LitI4 -1
  loc_B3D26E: LitVarStr var_17C, " "
  loc_B3D273: FStVarCopyObj var_18C
  loc_B3D276: FLdRfVar var_18C
  loc_B3D279: ILdRf var_16C
  loc_B3D27C: FLdRfVar var_19C
  loc_B3D27F: ImpAdCallFPR4  = Split(, , , )
  loc_B3D284: FLdRfVar var_19C
  loc_B3D287: VarIndexLdVar
  loc_B3D28D: PopAd
  loc_B3D28F: LitI4 1
  loc_B3D294: FLdZeroAd var_8C
  loc_B3D297: CVarStr var_9C
  loc_B3D29A: FLdRfVar var_AC
  loc_B3D29D: ImpAdCallFPR4  = Left(, )
  loc_B3D2A2: FLdRfVar var_AC
  loc_B3D2A5: LitVarStr var_BC, " "
  loc_B3D2AA: HardType
  loc_B3D2AB: EqVar var_CC
  loc_B3D2AF: LitVarI2 var_114, 0
  loc_B3D2B4: PopAdLdVar
  loc_B3D2B5: LitI4 0
  loc_B3D2BA: LitI4 -1
  loc_B3D2BF: LitVarStr var_E4, " "
  loc_B3D2C4: FStVarCopyObj var_F4
  loc_B3D2C7: FLdRfVar var_F4
  loc_B3D2CA: ILdRf var_D4
  loc_B3D2CD: FLdRfVar var_104
  loc_B3D2D0: ImpAdCallFPR4  = Split(, , , )
  loc_B3D2D5: FLdRfVar var_104
  loc_B3D2D8: VarIndexLdVar
  loc_B3D2DE: LitVarStr var_134, vbNullString
  loc_B3D2E3: HardType
  loc_B3D2E4: EqVar var_154
  loc_B3D2E8: OrVar var_164
  loc_B3D2EC: FLdRfVar var_1F2
  loc_B3D2EF: ImpAdLdI4 MemVar_C0F044
  loc_B3D2F2: LitStr "privaterooms\"
  loc_B3D2F5: ConcatStr
  loc_B3D2F6: CVarStr var_1CC
  loc_B3D2F9: FLdRfVar var_1DC
  loc_B3D2FC: ConcatVar var_1EC
  loc_B3D300: CStrVarVal var_1F0
  loc_B3D304: ImpAdLdRf MemVar_C0F040
  loc_B3D307: NewIfNullPr IFileSystem3
  loc_B3D30A: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B3D30F: FLdI2 var_1F2
  loc_B3D312: LitI2_Byte 0
  loc_B3D314: EqI2
  loc_B3D315: CVarBoolI2 var_204
  loc_B3D319: OrVar var_214
  loc_B3D31D: CBoolVarNull
  loc_B3D31F: FFreeStr var_D4 = "": var_16C = ""
  loc_B3D328: FFreeAd var_88 = "": var_D0 = ""
  loc_B3D331: FFreeVar var_9C = "": var_AC = "": var_F4 = "": var_104 = "": var_144 = "": var_18C = "": var_19C = "": var_1CC = "": var_1DC = "": var_1EC = ""
  loc_B3D34A: BranchF loc_B3D34E
  loc_B3D34D: ExitProcHresult
  loc_B3D34E: FLdRfVar var_8C
  loc_B3D351: FLdPrThis
  loc_B3D352: VCallAd Control_ID_Combo3
  loc_B3D355: FStAdFunc var_88
  loc_B3D358: FLdPr var_88
  loc_B3D35B:  = Me.Text
  loc_B3D360: LitVarI2 var_E4, 0
  loc_B3D365: PopAdLdVar
  loc_B3D366: LitI4 0
  loc_B3D36B: LitI4 -1
  loc_B3D370: LitVarStr var_BC, " "
  loc_B3D375: FStVarCopyObj var_9C
  loc_B3D378: FLdRfVar var_9C
  loc_B3D37B: ILdRf var_8C
  loc_B3D37E: FLdRfVar var_AC
  loc_B3D381: ImpAdCallFPR4  = Split(, , , )
  loc_B3D386: FLdRfVar var_AC
  loc_B3D389: VarIndexLdVar
  loc_B3D38F: PopAd
  loc_B3D391: FLdRfVar var_16C
  loc_B3D394: FLdRfVar var_D0
  loc_B3D397: LitI4 0
  loc_B3D39C: LitI2_Byte 0
  loc_B3D39E: LitI4 1
  loc_B3D3A3: ImpAdLdI4 MemVar_C0F044
  loc_B3D3A6: LitStr "privaterooms\"
  loc_B3D3A9: ConcatStr
  loc_B3D3AA: CVarStr var_CC
  loc_B3D3AD: FLdRfVar var_F4
  loc_B3D3B0: ConcatVar var_104
  loc_B3D3B4: LitVarStr var_124, "\owner.txt"
  loc_B3D3B9: ConcatVar var_144
  loc_B3D3BD: CStrVarVal var_D4
  loc_B3D3C1: ImpAdLdRf MemVar_C0F040
  loc_B3D3C4: NewIfNullPr IFileSystem3
  loc_B3D3C7: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B3D3CC: FLdPr var_D0
  loc_B3D3CF:  = Me.ReadAll
  loc_B3D3D4: ILdRf var_16C
  loc_B3D3D7: FLdPrThis
  loc_B3D3D8: VCallAd Control_ID_Text15
  loc_B3D3DB: FStAdFunc var_168
  loc_B3D3DE: FLdPr var_168
  loc_B3D3E1: Me.Text = from_stack_1
  loc_B3D3E6: FFreeStr var_8C = "": var_D4 = ""
  loc_B3D3EF: FFreeAd var_88 = "": var_D0 = ""
  loc_B3D3F8: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_F4 = "": var_104 = ""
  loc_B3D407: FLdRfVar var_8C
  loc_B3D40A: FLdPrThis
  loc_B3D40B: VCallAd Control_ID_Combo3
  loc_B3D40E: FStAdFunc var_88
  loc_B3D411: FLdPr var_88
  loc_B3D414:  = Me.Text
  loc_B3D419: LitVarI2 var_E4, 0
  loc_B3D41E: PopAdLdVar
  loc_B3D41F: LitI4 0
  loc_B3D424: LitI4 -1
  loc_B3D429: LitVarStr var_BC, " "
  loc_B3D42E: FStVarCopyObj var_9C
  loc_B3D431: FLdRfVar var_9C
  loc_B3D434: ILdRf var_8C
  loc_B3D437: FLdRfVar var_AC
  loc_B3D43A: ImpAdCallFPR4  = Split(, , , )
  loc_B3D43F: FLdRfVar var_AC
  loc_B3D442: VarIndexLdVar
  loc_B3D448: PopAd
  loc_B3D44A: FLdRfVar var_16C
  loc_B3D44D: FLdRfVar var_D0
  loc_B3D450: LitI4 0
  loc_B3D455: LitI2_Byte 0
  loc_B3D457: LitI4 1
  loc_B3D45C: ImpAdLdI4 MemVar_C0F044
  loc_B3D45F: LitStr "privaterooms\"
  loc_B3D462: ConcatStr
  loc_B3D463: CVarStr var_CC
  loc_B3D466: FLdRfVar var_F4
  loc_B3D469: ConcatVar var_104
  loc_B3D46D: LitVarStr var_124, "\name.txt"
  loc_B3D472: ConcatVar var_144
  loc_B3D476: CStrVarVal var_D4
  loc_B3D47A: ImpAdLdRf MemVar_C0F040
  loc_B3D47D: NewIfNullPr IFileSystem3
  loc_B3D480: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B3D485: FLdPr var_D0
  loc_B3D488:  = Me.ReadAll
  loc_B3D48D: ILdRf var_16C
  loc_B3D490: FLdPrThis
  loc_B3D491: VCallAd Control_ID_Text12
  loc_B3D494: FStAdFunc var_168
  loc_B3D497: FLdPr var_168
  loc_B3D49A: Me.Text = from_stack_1
  loc_B3D49F: FFreeStr var_8C = "": var_D4 = ""
  loc_B3D4A8: FFreeAd var_88 = "": var_D0 = ""
  loc_B3D4B1: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_F4 = "": var_104 = ""
  loc_B3D4C0: FLdRfVar var_8C
  loc_B3D4C3: FLdPrThis
  loc_B3D4C4: VCallAd Control_ID_Combo3
  loc_B3D4C7: FStAdFunc var_88
  loc_B3D4CA: FLdPr var_88
  loc_B3D4CD:  = Me.Text
  loc_B3D4D2: LitVarI2 var_E4, 0
  loc_B3D4D7: PopAdLdVar
  loc_B3D4D8: LitI4 0
  loc_B3D4DD: LitI4 -1
  loc_B3D4E2: LitVarStr var_BC, " "
  loc_B3D4E7: FStVarCopyObj var_9C
  loc_B3D4EA: FLdRfVar var_9C
  loc_B3D4ED: ILdRf var_8C
  loc_B3D4F0: FLdRfVar var_AC
  loc_B3D4F3: ImpAdCallFPR4  = Split(, , , )
  loc_B3D4F8: FLdRfVar var_AC
  loc_B3D4FB: VarIndexLdVar
  loc_B3D501: PopAd
  loc_B3D503: FLdRfVar var_16C
  loc_B3D506: FLdRfVar var_D0
  loc_B3D509: LitI4 0
  loc_B3D50E: LitI2_Byte 0
  loc_B3D510: LitI4 1
  loc_B3D515: ImpAdLdI4 MemVar_C0F044
  loc_B3D518: LitStr "privaterooms\"
  loc_B3D51B: ConcatStr
  loc_B3D51C: CVarStr var_CC
  loc_B3D51F: FLdRfVar var_F4
  loc_B3D522: ConcatVar var_104
  loc_B3D526: LitVarStr var_124, "\description.txt"
  loc_B3D52B: ConcatVar var_144
  loc_B3D52F: CStrVarVal var_D4
  loc_B3D533: ImpAdLdRf MemVar_C0F040
  loc_B3D536: NewIfNullPr IFileSystem3
  loc_B3D539: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B3D53E: FLdPr var_D0
  loc_B3D541:  = Me.ReadAll
  loc_B3D546: ILdRf var_16C
  loc_B3D549: FLdPrThis
  loc_B3D54A: VCallAd Control_ID_Text13
  loc_B3D54D: FStAdFunc var_168
  loc_B3D550: FLdPr var_168
  loc_B3D553: Me.Text = from_stack_1
  loc_B3D558: FFreeStr var_8C = "": var_D4 = ""
  loc_B3D561: FFreeAd var_88 = "": var_D0 = ""
  loc_B3D56A: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_F4 = "": var_104 = ""
  loc_B3D579: FLdRfVar var_8C
  loc_B3D57C: FLdPrThis
  loc_B3D57D: VCallAd Control_ID_Combo3
  loc_B3D580: FStAdFunc var_88
  loc_B3D583: FLdPr var_88
  loc_B3D586:  = Me.Text
  loc_B3D58B: LitVarI2 var_E4, 0
  loc_B3D590: PopAdLdVar
  loc_B3D591: LitI4 0
  loc_B3D596: LitI4 -1
  loc_B3D59B: LitVarStr var_BC, " "
  loc_B3D5A0: FStVarCopyObj var_9C
  loc_B3D5A3: FLdRfVar var_9C
  loc_B3D5A6: ILdRf var_8C
  loc_B3D5A9: FLdRfVar var_AC
  loc_B3D5AC: ImpAdCallFPR4  = Split(, , , )
  loc_B3D5B1: FLdRfVar var_AC
  loc_B3D5B4: VarIndexLdVar
  loc_B3D5BA: PopAd
  loc_B3D5BC: FLdRfVar var_16C
  loc_B3D5BF: FLdRfVar var_D0
  loc_B3D5C2: LitI4 0
  loc_B3D5C7: LitI2_Byte 0
  loc_B3D5C9: LitI4 1
  loc_B3D5CE: ImpAdLdI4 MemVar_C0F044
  loc_B3D5D1: LitStr "privaterooms\"
  loc_B3D5D4: ConcatStr
  loc_B3D5D5: CVarStr var_CC
  loc_B3D5D8: FLdRfVar var_F4
  loc_B3D5DB: ConcatVar var_104
  loc_B3D5DF: LitVarStr var_124, "\pass.txt"
  loc_B3D5E4: ConcatVar var_144
  loc_B3D5E8: CStrVarVal var_D4
  loc_B3D5EC: ImpAdLdRf MemVar_C0F040
  loc_B3D5EF: NewIfNullPr IFileSystem3
  loc_B3D5F2: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B3D5F7: FLdPr var_D0
  loc_B3D5FA:  = Me.ReadAll
  loc_B3D5FF: ILdRf var_16C
  loc_B3D602: FLdPrThis
  loc_B3D603: VCallAd Control_ID_Text14
  loc_B3D606: FStAdFunc var_168
  loc_B3D609: FLdPr var_168
  loc_B3D60C: Me.Text = from_stack_1
  loc_B3D611: FFreeStr var_8C = "": var_D4 = ""
  loc_B3D61A: FFreeAd var_88 = "": var_D0 = ""
  loc_B3D623: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_F4 = "": var_104 = ""
  loc_B3D632: FLdRfVar var_8C
  loc_B3D635: FLdPrThis
  loc_B3D636: VCallAd Control_ID_Combo3
  loc_B3D639: FStAdFunc var_88
  loc_B3D63C: FLdPr var_88
  loc_B3D63F:  = Me.Text
  loc_B3D644: LitVarI2 var_E4, 0
  loc_B3D649: PopAdLdVar
  loc_B3D64A: LitI4 0
  loc_B3D64F: LitI4 -1
  loc_B3D654: LitVarStr var_BC, " "
  loc_B3D659: FStVarCopyObj var_9C
  loc_B3D65C: FLdRfVar var_9C
  loc_B3D65F: ILdRf var_8C
  loc_B3D662: FLdRfVar var_AC
  loc_B3D665: ImpAdCallFPR4  = Split(, , , )
  loc_B3D66A: FLdRfVar var_AC
  loc_B3D66D: VarIndexLdVar
  loc_B3D673: CStrVarVal var_D4
  loc_B3D677: FLdPrThis
  loc_B3D678: VCallAd Control_ID_room_id
  loc_B3D67B: FStAdFunc var_D0
  loc_B3D67E: FLdPr var_D0
  loc_B3D681: Me.Caption = from_stack_1
  loc_B3D686: FFreeStr var_8C = ""
  loc_B3D68D: FFreeAd var_88 = ""
  loc_B3D694: FFreeVar var_9C = "": var_AC = ""
  loc_B3D69D: FLdRfVar var_8C
  loc_B3D6A0: FLdPrThis
  loc_B3D6A1: VCallAd Control_ID_Text14
  loc_B3D6A4: FStAdFunc var_88
  loc_B3D6A7: FLdPr var_88
  loc_B3D6AA:  = Me.Text
  loc_B3D6AF: ILdRf var_8C
  loc_B3D6B2: LitStr " "
  loc_B3D6B5: NeStr
  loc_B3D6B7: FLdRfVar var_D4
  loc_B3D6BA: FLdPrThis
  loc_B3D6BB: VCallAd Control_ID_Text14
  loc_B3D6BE: FStAdFunc var_D0
  loc_B3D6C1: FLdPr var_D0
  loc_B3D6C4:  = Me.Text
  loc_B3D6C9: ILdRf var_D4
  loc_B3D6CC: LitStr vbNullString
  loc_B3D6CF: NeStr
  loc_B3D6D1: AndI4
  loc_B3D6D2: FFreeStr var_8C = ""
  loc_B3D6D9: FFreeAd var_88 = ""
  loc_B3D6E0: BranchF loc_B3D6FA
  loc_B3D6E3: LitI2_Byte &HFF
  loc_B3D6E5: FLdPrThis
  loc_B3D6E6: VCallAd Control_ID_Text14
  loc_B3D6E9: FStAdFunc var_88
  loc_B3D6EC: FLdPr var_88
  loc_B3D6EF: Me.Enabled = from_stack_1b
  loc_B3D6F4: FFree1Ad var_88
  loc_B3D6F7: Branch loc_B3D70E
  loc_B3D6FA: LitI2_Byte 0
  loc_B3D6FC: FLdPrThis
  loc_B3D6FD: VCallAd Control_ID_Text14
  loc_B3D700: FStAdFunc var_88
  loc_B3D703: FLdPr var_88
  loc_B3D706: Me.Enabled = from_stack_1b
  loc_B3D70B: FFree1Ad var_88
  loc_B3D70E: LitI2_Byte &HFF
  loc_B3D710: FLdPrThis
  loc_B3D711: VCallAd Control_ID_Text12
  loc_B3D714: FStAdFunc var_88
  loc_B3D717: FLdPr var_88
  loc_B3D71A: Me.Enabled = from_stack_1b
  loc_B3D71F: FFree1Ad var_88
  loc_B3D722: LitI2_Byte &HFF
  loc_B3D724: FLdPrThis
  loc_B3D725: VCallAd Control_ID_Text13
  loc_B3D728: FStAdFunc var_88
  loc_B3D72B: FLdPr var_88
  loc_B3D72E: Me.Enabled = from_stack_1b
  loc_B3D733: FFree1Ad var_88
  loc_B3D736: ExitProcHresult
End Sub

Private Sub Command20_Click() 'B548A4
  'Data Table: 549FD0
  loc_B53FB8: FLdRfVar var_8C
  loc_B53FBB: FLdPrThis
  loc_B53FBC: VCallAd Control_ID_Combo5
  loc_B53FBF: FStAdFunc var_88
  loc_B53FC2: FLdPr var_88
  loc_B53FC5:  = Me.Text
  loc_B53FCA: LitVarI2 var_CC, 0
  loc_B53FCF: PopAdLdVar
  loc_B53FD0: LitI4 0
  loc_B53FD5: LitI4 -1
  loc_B53FDA: LitVarStr var_9C, " "
  loc_B53FDF: FStVarCopyObj var_AC
  loc_B53FE2: FLdRfVar var_AC
  loc_B53FE5: ILdRf var_8C
  loc_B53FE8: FLdRfVar var_BC
  loc_B53FEB: ImpAdCallFPR4  = Split(, , , )
  loc_B53FF0: FLdRfVar var_BC
  loc_B53FF3: VarIndexLdRfVarLock
  loc_B53FFB: ImpAdCallI2 IsNumeric()
  loc_B54000: FStI2 var_F2
  loc_B54003: AryUnlock
  loc_B54006: FLdI2 var_F2
  loc_B54009: LitI2_Byte &HFF
  loc_B5400B: EqI2
  loc_B5400C: FFree1Str var_8C
  loc_B5400F: FFree1Ad var_88
  loc_B54012: FFreeVar var_AC = "": var_BC = ""
  loc_B5401B: BranchF loc_B548A2
  loc_B5401E: FLdRfVar var_8C
  loc_B54021: FLdPrThis
  loc_B54022: VCallAd Control_ID_Combo5
  loc_B54025: FStAdFunc var_88
  loc_B54028: FLdPr var_88
  loc_B5402B:  = Me.Text
  loc_B54030: LitVarI2 var_CC, 0
  loc_B54035: PopAdLdVar
  loc_B54036: LitI4 0
  loc_B5403B: LitI4 -1
  loc_B54040: LitVarStr var_9C, " "
  loc_B54045: FStVarCopyObj var_AC
  loc_B54048: FLdRfVar var_AC
  loc_B5404B: ILdRf var_8C
  loc_B5404E: FLdRfVar var_BC
  loc_B54051: ImpAdCallFPR4  = Split(, , , )
  loc_B54056: FLdRfVar var_BC
  loc_B54059: VarIndexLdVar
  loc_B5405F: FStVar var_104
  loc_B54063: FFree1Str var_8C
  loc_B54066: FFree1Ad var_88
  loc_B54069: FFreeVar var_AC = ""
  loc_B54070: LitI2_Byte 0
  loc_B54072: ImpAdLdI4 MemVar_C0F044
  loc_B54075: LitStr "privaterooms\"
  loc_B54078: ConcatStr
  loc_B54079: CVarStr var_AC
  loc_B5407C: FLdRfVar var_104
  loc_B5407F: ConcatVar var_BC
  loc_B54083: LitVarStr var_9C, "\deleted.txt"
  loc_B54088: ConcatVar var_EC
  loc_B5408C: CStrVarVal var_8C
  loc_B54090: ImpAdLdRf MemVar_C0F040
  loc_B54093: NewIfNullPr IFileSystem3
  loc_B54096: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_B5409B: FFree1Str var_8C
  loc_B5409E: FFreeVar var_AC = "": var_BC = ""
  loc_B540A7: FLdRfVar var_108
  loc_B540AA: FLdRfVar var_88
  loc_B540AD: LitI4 0
  loc_B540B2: LitI2_Byte 0
  loc_B540B4: LitI4 1
  loc_B540B9: ImpAdLdI4 MemVar_C0F044
  loc_B540BC: LitStr "privaterooms\"
  loc_B540BF: ConcatStr
  loc_B540C0: CVarStr var_AC
  loc_B540C3: FLdRfVar var_104
  loc_B540C6: ConcatVar var_BC
  loc_B540CA: LitVarStr var_9C, "\owner.txt"
  loc_B540CF: ConcatVar var_EC
  loc_B540D3: CStrVarVal var_8C
  loc_B540D7: ImpAdLdRf MemVar_C0F040
  loc_B540DA: NewIfNullPr IFileSystem3
  loc_B540DD: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B540E2: FLdPr var_88
  loc_B540E5:  = Me.ReadAll
  loc_B540EA: FLdZeroAd var_108
  loc_B540ED: CVarStr var_128
  loc_B540F0: FStVar var_118
  loc_B540F4: FFree1Str var_8C
  loc_B540F7: FFree1Ad var_88
  loc_B540FA: FFreeVar var_AC = "": var_BC = ""
  loc_B54103: FLdRfVar var_F2
  loc_B54106: ImpAdLdI4 MemVar_C0F044
  loc_B54109: LitStr "habbos\"
  loc_B5410C: ConcatStr
  loc_B5410D: CVarStr var_BC
  loc_B54110: FLdRfVar var_118
  loc_B54113: FLdRfVar var_AC
  loc_B54116: ImpAdCallFPR4  = LCase()
  loc_B5411B: FLdRfVar var_AC
  loc_B5411E: ConcatVar var_EC
  loc_B54122: CStrVarVal var_8C
  loc_B54126: ImpAdLdRf MemVar_C0F040
  loc_B54129: NewIfNullPr IFileSystem3
  loc_B5412C: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B54131: FLdI2 var_F2
  loc_B54134: LitI2_Byte &HFF
  loc_B54136: EqI2
  loc_B54137: FFree1Str var_8C
  loc_B5413A: FFreeVar var_BC = "": var_AC = ""
  loc_B54143: BranchF loc_B54489
  loc_B54146: FLdRfVar var_118
  loc_B54149: FLdRfVar var_AC
  loc_B5414C: ImpAdCallFPR4  = LCase()
  loc_B54151: FLdRfVar var_F2
  loc_B54154: FLdRfVar var_88
  loc_B54157: LitI4 0
  loc_B5415C: LitI2_Byte 0
  loc_B5415E: LitI4 1
  loc_B54163: ImpAdLdI4 MemVar_C0F044
  loc_B54166: LitStr "habbos\"
  loc_B54169: ConcatStr
  loc_B5416A: CVarStr var_BC
  loc_B5416D: FLdRfVar var_AC
  loc_B54170: ConcatVar var_EC
  loc_B54174: LitVarStr var_9C, "\roomlist.txt"
  loc_B54179: ConcatVar var_128
  loc_B5417D: CStrVarVal var_8C
  loc_B54181: ImpAdLdRf MemVar_C0F040
  loc_B54184: NewIfNullPr IFileSystem3
  loc_B54187: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B5418C: FLdPr var_88
  loc_B5418F:  = Me.AtEndOfStream
  loc_B54194: FLdI2 var_F2
  loc_B54197: LitI2_Byte 0
  loc_B54199: EqI2
  loc_B5419A: FFree1Str var_8C
  loc_B5419D: FFree1Ad var_88
  loc_B541A0: FFreeVar var_BC = "": var_AC = "": var_EC = ""
  loc_B541AB: BranchF loc_B543AD
  loc_B541AE: FLdRfVar var_118
  loc_B541B1: FLdRfVar var_AC
  loc_B541B4: ImpAdCallFPR4  = LCase()
  loc_B541B9: LitI4 1
  loc_B541BE: FLdRfVar var_108
  loc_B541C1: FLdRfVar var_88
  loc_B541C4: LitI4 0
  loc_B541C9: LitI2_Byte 0
  loc_B541CB: LitI4 1
  loc_B541D0: ImpAdLdI4 MemVar_C0F044
  loc_B541D3: LitStr "habbos\"
  loc_B541D6: ConcatStr
  loc_B541D7: CVarStr var_BC
  loc_B541DA: FLdRfVar var_AC
  loc_B541DD: ConcatVar var_EC
  loc_B541E1: LitVarStr var_9C, "\roomlist.txt"
  loc_B541E6: ConcatVar var_128
  loc_B541EA: CStrVarVal var_8C
  loc_B541EE: ImpAdLdRf MemVar_C0F040
  loc_B541F1: NewIfNullPr IFileSystem3
  loc_B541F4: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B541F9: FLdPr var_88
  loc_B541FC:  = Me.ReadAll
  loc_B54201: FLdZeroAd var_108
  loc_B54204: CVarStr var_158
  loc_B54207: LitVarStr var_CC, "<"
  loc_B5420C: FLdRfVar var_104
  loc_B5420F: ConcatVar var_138
  loc_B54213: LitVarStr var_DC, ">"
  loc_B54218: ConcatVar var_148
  loc_B5421C: LitI4 0
  loc_B54221: FnInStr4Var
  loc_B54225: LitVarI2 var_178, 0
  loc_B5422A: HardType
  loc_B5422B: EqVarBool
  loc_B5422D: FFree1Str var_8C
  loc_B54230: FFree1Ad var_88
  loc_B54233: FFreeVar var_BC = "": var_AC = "": var_EC = "": var_128 = "": var_138 = "": var_148 = "": var_158 = ""
  loc_B54246: BranchF loc_B543AA
  loc_B54249: FLdRfVar var_118
  loc_B5424C: FLdRfVar var_EC
  loc_B5424F: ImpAdCallFPR4  = LCase()
  loc_B54254: LitVarStr var_9C, "<"
  loc_B54259: FLdRfVar var_104
  loc_B5425C: ConcatVar var_AC
  loc_B54260: LitVarStr var_CC, ">"
  loc_B54265: ConcatVar var_BC
  loc_B54269: CStrVarVal var_108
  loc_B5426D: FLdRfVar var_88
  loc_B54270: LitI4 0
  loc_B54275: LitI2_Byte 0
  loc_B54277: LitI4 8
  loc_B5427C: ImpAdLdI4 MemVar_C0F044
  loc_B5427F: LitStr "habbos\"
  loc_B54282: ConcatStr
  loc_B54283: CVarStr var_128
  loc_B54286: FLdRfVar var_EC
  loc_B54289: ConcatVar var_138
  loc_B5428D: LitVarStr var_DC, "\roomlist.txt"
  loc_B54292: ConcatVar var_148
  loc_B54296: CStrVarVal var_8C
  loc_B5429A: ImpAdLdRf MemVar_C0F040
  loc_B5429D: NewIfNullPr IFileSystem3
  loc_B542A0: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B542A5: FLdPr var_88
  loc_B542A8: from_stack_2 = Me.Write(from_stack_1v)
  loc_B542AD: FFreeStr var_8C = ""
  loc_B542B4: FFree1Ad var_88
  loc_B542B7: FFreeVar var_AC = "": var_128 = "": var_EC = "": var_138 = "": var_148 = ""
  loc_B542C6: FLdRfVar var_118
  loc_B542C9: FLdRfVar var_AC
  loc_B542CC: ImpAdCallFPR4  = LCase()
  loc_B542D1: FLdRfVar var_108
  loc_B542D4: FLdRfVar var_88
  loc_B542D7: LitI4 0
  loc_B542DC: LitI2_Byte 0
  loc_B542DE: LitI4 1
  loc_B542E3: ImpAdLdI4 MemVar_C0F044
  loc_B542E6: LitStr "habbos\"
  loc_B542E9: ConcatStr
  loc_B542EA: CVarStr var_BC
  loc_B542ED: FLdRfVar var_AC
  loc_B542F0: ConcatVar var_EC
  loc_B542F4: LitVarStr var_9C, "\rooms.txt"
  loc_B542F9: ConcatVar var_128
  loc_B542FD: CStrVarVal var_8C
  loc_B54301: ImpAdLdRf MemVar_C0F040
  loc_B54304: NewIfNullPr IFileSystem3
  loc_B54307: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B5430C: FLdPr var_88
  loc_B5430F:  = Me.ReadAll
  loc_B54314: ILdRf var_108
  loc_B54317: ImpAdCallFPR4 push push Val()
  loc_B5431C: FStFPR8 var_1A0
  loc_B5431F: LitI2_Byte 1
  loc_B54321: CR8I2
  loc_B54322: FLdFPR8 var_1A0
  loc_B54325: AddR8
  loc_B54326: CVarR8
  loc_B5432A: FStVar var_198
  loc_B5432E: FFreeStr var_8C = ""
  loc_B54335: FFree1Ad var_88
  loc_B54338: FFreeVar var_BC = "": var_AC = "": var_EC = ""
  loc_B54343: FLdRfVar var_118
  loc_B54346: FLdRfVar var_AC
  loc_B54349: ImpAdCallFPR4  = LCase()
  loc_B5434E: FLdRfVar var_198
  loc_B54351: CStrVarVal var_108
  loc_B54355: FLdRfVar var_88
  loc_B54358: LitI4 0
  loc_B5435D: LitI2_Byte 0
  loc_B5435F: LitI4 2
  loc_B54364: ImpAdLdI4 MemVar_C0F044
  loc_B54367: LitStr "habbos\"
  loc_B5436A: ConcatStr
  loc_B5436B: CVarStr var_BC
  loc_B5436E: FLdRfVar var_AC
  loc_B54371: ConcatVar var_EC
  loc_B54375: LitVarStr var_9C, "\rooms.txt"
  loc_B5437A: ConcatVar var_128
  loc_B5437E: CStrVarVal var_8C
  loc_B54382: ImpAdLdRf MemVar_C0F040
  loc_B54385: NewIfNullPr IFileSystem3
  loc_B54388: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B5438D: FLdPr var_88
  loc_B54390: from_stack_2 = Me.Write(from_stack_1v)
  loc_B54395: FFreeStr var_8C = ""
  loc_B5439C: FFree1Ad var_88
  loc_B5439F: FFreeVar var_BC = "": var_AC = "": var_EC = ""
  loc_B543AA: Branch loc_B54489
  loc_B543AD: FLdRfVar var_118
  loc_B543B0: FLdRfVar var_EC
  loc_B543B3: ImpAdCallFPR4  = LCase()
  loc_B543B8: LitVarStr var_9C, "<"
  loc_B543BD: FLdRfVar var_104
  loc_B543C0: ConcatVar var_AC
  loc_B543C4: LitVarStr var_CC, ">"
  loc_B543C9: ConcatVar var_BC
  loc_B543CD: CStrVarVal var_108
  loc_B543D1: FLdRfVar var_88
  loc_B543D4: LitI4 0
  loc_B543D9: LitI2_Byte 0
  loc_B543DB: LitI4 2
  loc_B543E0: ImpAdLdI4 MemVar_C0F044
  loc_B543E3: LitStr "habbos\"
  loc_B543E6: ConcatStr
  loc_B543E7: CVarStr var_128
  loc_B543EA: FLdRfVar var_EC
  loc_B543ED: ConcatVar var_138
  loc_B543F1: LitVarStr var_DC, "\roomlist.txt"
  loc_B543F6: ConcatVar var_148
  loc_B543FA: CStrVarVal var_8C
  loc_B543FE: ImpAdLdRf MemVar_C0F040
  loc_B54401: NewIfNullPr IFileSystem3
  loc_B54404: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B54409: FLdPr var_88
  loc_B5440C: from_stack_2 = Me.Write(from_stack_1v)
  loc_B54411: FFreeStr var_8C = ""
  loc_B54418: FFree1Ad var_88
  loc_B5441B: FFreeVar var_AC = "": var_128 = "": var_EC = "": var_138 = "": var_148 = ""
  loc_B5442A: FLdRfVar var_118
  loc_B5442D: FLdRfVar var_AC
  loc_B54430: ImpAdCallFPR4  = LCase()
  loc_B54435: LitStr "1"
  loc_B54438: FLdRfVar var_88
  loc_B5443B: LitI4 0
  loc_B54440: LitI2_Byte 0
  loc_B54442: LitI4 2
  loc_B54447: ImpAdLdI4 MemVar_C0F044
  loc_B5444A: LitStr "habbos\"
  loc_B5444D: ConcatStr
  loc_B5444E: CVarStr var_BC
  loc_B54451: FLdRfVar var_AC
  loc_B54454: ConcatVar var_EC
  loc_B54458: LitVarStr var_9C, "\rooms.txt"
  loc_B5445D: ConcatVar var_128
  loc_B54461: CStrVarVal var_8C
  loc_B54465: ImpAdLdRf MemVar_C0F040
  loc_B54468: NewIfNullPr IFileSystem3
  loc_B5446B: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B54470: FLdPr var_88
  loc_B54473: from_stack_2 = Me.Write(from_stack_1v)
  loc_B54478: FFree1Str var_8C
  loc_B5447B: FFree1Ad var_88
  loc_B5447E: FFreeVar var_BC = "": var_AC = "": var_EC = ""
  loc_B54489: FLdPrThis
  loc_B5448A: VCallAd Control_ID_Combo3
  loc_B5448D: FStAdFunc var_88
  loc_B54490: FLdPr var_88
  loc_B54493: Me.Clear
  loc_B54498: FFree1Ad var_88
  loc_B5449B: FLdPrThis
  loc_B5449C: VCallAd Control_ID_Combo5
  loc_B5449F: FStAdFunc var_88
  loc_B544A2: FLdPr var_88
  loc_B544A5: Me.Clear
  loc_B544AA: FFree1Ad var_88
  loc_B544AD: LitStr "0"
  loc_B544B0: FLdPrThis
  loc_B544B1: VCallAd Control_ID_room_id
  loc_B544B4: FStAdFunc var_88
  loc_B544B7: FLdPr var_88
  loc_B544BA: Me.Caption = from_stack_1
  loc_B544BF: FFree1Ad var_88
  loc_B544C2: LitStr vbNullString
  loc_B544C5: FLdPrThis
  loc_B544C6: VCallAd Control_ID_Text12
  loc_B544C9: FStAdFunc var_88
  loc_B544CC: FLdPr var_88
  loc_B544CF: Me.Text = from_stack_1
  loc_B544D4: FFree1Ad var_88
  loc_B544D7: LitStr vbNullString
  loc_B544DA: FLdPrThis
  loc_B544DB: VCallAd Control_ID_Text13
  loc_B544DE: FStAdFunc var_88
  loc_B544E1: FLdPr var_88
  loc_B544E4: Me.Text = from_stack_1
  loc_B544E9: FFree1Ad var_88
  loc_B544EC: LitStr vbNullString
  loc_B544EF: FLdPrThis
  loc_B544F0: VCallAd Control_ID_Text14
  loc_B544F3: FStAdFunc var_88
  loc_B544F6: FLdPr var_88
  loc_B544F9: Me.Text = from_stack_1
  loc_B544FE: FFree1Ad var_88
  loc_B54501: LitI2_Byte 0
  loc_B54503: FLdPrThis
  loc_B54504: VCallAd Control_ID_Command10
  loc_B54507: FStAdFunc var_88
  loc_B5450A: FLdPr var_88
  loc_B5450D: Me.Enabled = from_stack_1b
  loc_B54512: FFree1Ad var_88
  loc_B54515: LitI2_Byte 0
  loc_B54517: FLdPrThis
  loc_B54518: VCallAd Control_ID_Command11
  loc_B5451B: FStAdFunc var_88
  loc_B5451E: FLdPr var_88
  loc_B54521: Me.Enabled = from_stack_1b
  loc_B54526: FFree1Ad var_88
  loc_B54529: LitI2_Byte 0
  loc_B5452B: FLdPrThis
  loc_B5452C: VCallAd Control_ID_Command12
  loc_B5452F: FStAdFunc var_88
  loc_B54532: FLdPr var_88
  loc_B54535: Me.Enabled = from_stack_1b
  loc_B5453A: FFree1Ad var_88
  loc_B5453D: LitI2_Byte 0
  loc_B5453F: FLdPrThis
  loc_B54540: VCallAd Control_ID_Command20
  loc_B54543: FStAdFunc var_88
  loc_B54546: FLdPr var_88
  loc_B54549: Me.Enabled = from_stack_1b
  loc_B5454E: FFree1Ad var_88
  loc_B54551: LitStr " -- "
  loc_B54554: LitVarStr var_9C, "roomlist_combo"
  loc_B54559: PopAdLdVar
  loc_B5455A: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B5455F: FStStrNoPop var_8C
  loc_B54562: ConcatStr
  loc_B54563: FStStrNoPop var_108
  loc_B54566: LitStr " -- "
  loc_B54569: ConcatStr
  loc_B5456A: FStStrNoPop var_1A4
  loc_B5456D: FLdPrThis
  loc_B5456E: VCallAd Control_ID_Combo3
  loc_B54571: FStAdFunc var_88
  loc_B54574: FLdPr var_88
  loc_B54577: Me.Text = from_stack_1
  loc_B5457C: FFreeStr var_8C = "": var_108 = ""
  loc_B54585: FFree1Ad var_88
  loc_B54588: LitStr " -- "
  loc_B5458B: LitVarStr var_9C, "roomlist_combo"
  loc_B54590: PopAdLdVar
  loc_B54591: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B54596: FStStrNoPop var_8C
  loc_B54599: ConcatStr
  loc_B5459A: FStStrNoPop var_108
  loc_B5459D: LitStr " -- "
  loc_B545A0: ConcatStr
  loc_B545A1: FStStrNoPop var_1A4
  loc_B545A4: FLdPrThis
  loc_B545A5: VCallAd Control_ID_Combo5
  loc_B545A8: FStAdFunc var_88
  loc_B545AB: FLdPr var_88
  loc_B545AE: Me.Text = from_stack_1
  loc_B545B3: FFreeStr var_8C = "": var_108 = ""
  loc_B545BC: FFree1Ad var_88
  loc_B545BF: FLdRfVar var_1A8
  loc_B545C2: FLdRfVar var_88
  loc_B545C5: ImpAdLdI4 MemVar_C0F044
  loc_B545C8: LitStr "privaterooms"
  loc_B545CB: ConcatStr
  loc_B545CC: FStStrNoPop var_8C
  loc_B545CF: ImpAdLdRf MemVar_C0F040
  loc_B545D2: NewIfNullPr IFileSystem3
  loc_B545D5: from_stack_2 = IFileSystem3.IFileSystem.GetFolder(from_stack_1v)
  loc_B545DA: FLdPr var_88
  loc_B545DD:  = Me.SubFolders
  loc_B545E2: FLdZeroAd var_1A8
  loc_B545E5: FStAdFuncNoPop
  loc_B545E8: FLdPr Me
  loc_B545EB: MemLdRfVar from_stack_1.global_52
  loc_B545EE: FFree1Str var_8C
  loc_B545F1: FFree1Ad var_88
  loc_B545F4: ForEachCollObj
  loc_B545FC: FLdRfVar var_8C
  loc_B545FF: FLdPr Me
  loc_B54602: MemLdPr global_52
  loc_B54605:  = Me.Path
  loc_B5460A: LitI4 0
  loc_B5460F: LitI4 -1
  loc_B54614: LitVarStr var_9C, "\"
  loc_B54619: FStVarCopyObj var_AC
  loc_B5461C: FLdRfVar var_AC
  loc_B5461F: ILdRf var_8C
  loc_B54622: FLdRfVar var_BC
  loc_B54625: ImpAdCallFPR4  = Split(, , , )
  loc_B5462A: FLdRfVar var_BC
  loc_B5462D: FStVar var_1C4
  loc_B54631: FFree1Str var_8C
  loc_B54634: FFree1Var var_AC = ""
  loc_B54637: LitVarI2 var_DC, 1
  loc_B5463C: FLdRfVar var_1D4
  loc_B5463F: FLdRfVar var_1C4
  loc_B54642: CRefVarAry
  loc_B54644: PopAdLd4
  loc_B54645: LitI2_Byte 1
  loc_B54647: FnUBound
  loc_B54649: CVarI4
  loc_B5464D: ForVar var_1F4
  loc_B54653: FLdRfVar var_1D4
  loc_B54656: CDargRef
  loc_B5465A: FLdRfVar var_1C4
  loc_B5465D: VarIndexLdVar
  loc_B54663: CStrVarTmp
  loc_B54664: FStStr var_1B4
  loc_B54667: FFree1Var var_AC = ""
  loc_B5466A: FLdRfVar var_1D4
  loc_B5466D: NextStepVar var_1F4
  loc_B54673: FLdRfVar var_F2
  loc_B54676: FLdRfVar var_8C
  loc_B54679: FLdPr Me
  loc_B5467C: MemLdPr global_52
  loc_B5467F:  = Me.Path
  loc_B54684: ILdRf var_8C
  loc_B54687: LitStr "\deleted.txt"
  loc_B5468A: ConcatStr
  loc_B5468B: FStStrNoPop var_108
  loc_B5468E: ImpAdLdRf MemVar_C0F040
  loc_B54691: NewIfNullPr IFileSystem3
  loc_B54694: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B54699: FLdI2 var_F2
  loc_B5469C: LitI2_Byte 0
  loc_B5469E: EqI2
  loc_B5469F: FFreeStr var_8C = ""
  loc_B546A6: BranchF loc_B54778
  loc_B546A9: FLdRfVar var_8C
  loc_B546AC: FLdPr Me
  loc_B546AF: MemLdPr global_52
  loc_B546B2:  = Me.Path
  loc_B546B7: FLdRfVar var_1A4
  loc_B546BA: FLdRfVar var_88
  loc_B546BD: LitI4 0
  loc_B546C2: LitI2_Byte 0
  loc_B546C4: LitI4 1
  loc_B546C9: ILdRf var_8C
  loc_B546CC: LitStr "\name.txt"
  loc_B546CF: ConcatStr
  loc_B546D0: FStStrNoPop var_108
  loc_B546D3: ImpAdLdRf MemVar_C0F040
  loc_B546D6: NewIfNullPr IFileSystem3
  loc_B546D9: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B546DE: FLdPr var_88
  loc_B546E1:  = Me.ReadAll
  loc_B546E6: FLdRfVar var_200
  loc_B546E9: FLdPr Me
  loc_B546EC: MemLdPr global_52
  loc_B546EF:  = Me.Path
  loc_B546F4: FLdRfVar var_208
  loc_B546F7: FLdRfVar var_1A8
  loc_B546FA: LitI4 0
  loc_B546FF: LitI2_Byte 0
  loc_B54701: LitI4 1
  loc_B54706: ILdRf var_200
  loc_B54709: LitStr "\owner.txt"
  loc_B5470C: ConcatStr
  loc_B5470D: FStStrNoPop var_204
  loc_B54710: ImpAdLdRf MemVar_C0F040
  loc_B54713: NewIfNullPr IFileSystem3
  loc_B54716: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B5471B: FLdPr var_1A8
  loc_B5471E:  = Me.ReadAll
  loc_B54723: LitVar_Missing var_9C
  loc_B54726: PopAdLdVar
  loc_B54727: ILdRf var_1B4
  loc_B5472A: LitStr " Name: "
  loc_B5472D: ConcatStr
  loc_B5472E: FStStrNoPop var_1F8
  loc_B54731: ILdRf var_1A4
  loc_B54734: ConcatStr
  loc_B54735: FStStrNoPop var_1FC
  loc_B54738: LitStr " Besitzer: "
  loc_B5473B: ConcatStr
  loc_B5473C: FStStrNoPop var_20C
  loc_B5473F: ILdRf var_208
  loc_B54742: ConcatStr
  loc_B54743: FStStrNoPop var_210
  loc_B54746: FLdPrThis
  loc_B54747: VCallAd Control_ID_Combo3
  loc_B5474A: FStAdFunc var_214
  loc_B5474D: FLdPr var_214
  loc_B54750: Me.AddItem from_stack_1, from_stack_2
  loc_B54755: FFreeStr var_8C = "": var_108 = "": var_1F8 = "": var_1A4 = "": var_1FC = "": var_200 = "": var_204 = "": var_20C = "": var_208 = ""
  loc_B5476C: FFreeAd var_88 = "": var_1A8 = ""
  loc_B54775: Branch loc_B54844
  loc_B54778: FLdRfVar var_8C
  loc_B5477B: FLdPr Me
  loc_B5477E: MemLdPr global_52
  loc_B54781:  = Me.Path
  loc_B54786: FLdRfVar var_1A4
  loc_B54789: FLdRfVar var_88
  loc_B5478C: LitI4 0
  loc_B54791: LitI2_Byte 0
  loc_B54793: LitI4 1
  loc_B54798: ILdRf var_8C
  loc_B5479B: LitStr "\name.txt"
  loc_B5479E: ConcatStr
  loc_B5479F: FStStrNoPop var_108
  loc_B547A2: ImpAdLdRf MemVar_C0F040
  loc_B547A5: NewIfNullPr IFileSystem3
  loc_B547A8: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B547AD: FLdPr var_88
  loc_B547B0:  = Me.ReadAll
  loc_B547B5: FLdRfVar var_200
  loc_B547B8: FLdPr Me
  loc_B547BB: MemLdPr global_52
  loc_B547BE:  = Me.Path
  loc_B547C3: FLdRfVar var_208
  loc_B547C6: FLdRfVar var_1A8
  loc_B547C9: LitI4 0
  loc_B547CE: LitI2_Byte 0
  loc_B547D0: LitI4 1
  loc_B547D5: ILdRf var_200
  loc_B547D8: LitStr "\owner.txt"
  loc_B547DB: ConcatStr
  loc_B547DC: FStStrNoPop var_204
  loc_B547DF: ImpAdLdRf MemVar_C0F040
  loc_B547E2: NewIfNullPr IFileSystem3
  loc_B547E5: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B547EA: FLdPr var_1A8
  loc_B547ED:  = Me.ReadAll
  loc_B547F2: LitVar_Missing var_9C
  loc_B547F5: PopAdLdVar
  loc_B547F6: ILdRf var_1B4
  loc_B547F9: LitStr " Name: "
  loc_B547FC: ConcatStr
  loc_B547FD: FStStrNoPop var_1F8
  loc_B54800: ILdRf var_1A4
  loc_B54803: ConcatStr
  loc_B54804: FStStrNoPop var_1FC
  loc_B54807: LitStr " Besitzer: "
  loc_B5480A: ConcatStr
  loc_B5480B: FStStrNoPop var_20C
  loc_B5480E: ILdRf var_208
  loc_B54811: ConcatStr
  loc_B54812: FStStrNoPop var_210
  loc_B54815: FLdPrThis
  loc_B54816: VCallAd Control_ID_Combo5
  loc_B54819: FStAdFunc var_214
  loc_B5481C: FLdPr var_214
  loc_B5481F: Me.AddItem from_stack_1, from_stack_2
  loc_B54824: FFreeStr var_8C = "": var_108 = "": var_1F8 = "": var_1A4 = "": var_1FC = "": var_200 = "": var_204 = "": var_20C = "": var_208 = ""
  loc_B5483B: FFreeAd var_88 = "": var_1A8 = ""
  loc_B54844: FLdPr Me
  loc_B54847: MemLdRfVar from_stack_1.global_52
  loc_B5484A: NextEachCollObj
  loc_B54852: LitI2_Byte &HFF
  loc_B54854: FLdPrThis
  loc_B54855: VCallAd Control_ID_Command10
  loc_B54858: FStAdFunc var_88
  loc_B5485B: FLdPr var_88
  loc_B5485E: Me.Enabled = from_stack_1b
  loc_B54863: FFree1Ad var_88
  loc_B54866: LitI2_Byte &HFF
  loc_B54868: FLdPrThis
  loc_B54869: VCallAd Control_ID_Command11
  loc_B5486C: FStAdFunc var_88
  loc_B5486F: FLdPr var_88
  loc_B54872: Me.Enabled = from_stack_1b
  loc_B54877: FFree1Ad var_88
  loc_B5487A: LitI2_Byte &HFF
  loc_B5487C: FLdPrThis
  loc_B5487D: VCallAd Control_ID_Command12
  loc_B54880: FStAdFunc var_88
  loc_B54883: FLdPr var_88
  loc_B54886: Me.Enabled = from_stack_1b
  loc_B5488B: FFree1Ad var_88
  loc_B5488E: LitI2_Byte &HFF
  loc_B54890: FLdPrThis
  loc_B54891: VCallAd Control_ID_Command20
  loc_B54894: FStAdFunc var_88
  loc_B54897: FLdPr var_88
  loc_B5489A: Me.Enabled = from_stack_1b
  loc_B5489F: FFree1Ad var_88
  loc_B548A2: ExitProcHresult
End Sub

Private Sub Command8_Click() 'B43180
  'Data Table: 549FD0
  loc_B42B1C: FLdRfVar var_D2
  loc_B42B1F: ImpAdLdI4 MemVar_C0F044
  loc_B42B22: LitStr "habbos\"
  loc_B42B25: ConcatStr
  loc_B42B26: CVarStr var_BC
  loc_B42B29: FLdRfVar var_8C
  loc_B42B2C: FLdPrThis
  loc_B42B2D: VCallAd Control_ID_Text8
  loc_B42B30: FStAdFunc var_88
  loc_B42B33: FLdPr var_88
  loc_B42B36:  = Me.Text
  loc_B42B3B: FLdZeroAd var_8C
  loc_B42B3E: CVarStr var_9C
  loc_B42B41: FLdRfVar var_AC
  loc_B42B44: ImpAdCallFPR4  = LCase()
  loc_B42B49: FLdRfVar var_AC
  loc_B42B4C: ConcatVar var_CC
  loc_B42B50: CStrVarVal var_D0
  loc_B42B54: ImpAdLdRf MemVar_C0F040
  loc_B42B57: NewIfNullPr IFileSystem3
  loc_B42B5A: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B42B5F: FLdI2 var_D2
  loc_B42B62: LitI2_Byte &HFF
  loc_B42B64: EqI2
  loc_B42B65: FFree1Str var_D0
  loc_B42B68: FFree1Ad var_88
  loc_B42B6B: FFreeVar var_9C = "": var_BC = "": var_AC = ""
  loc_B42B76: BranchF loc_B43140
  loc_B42B79: FLdRfVar var_8C
  loc_B42B7C: FLdPrThis
  loc_B42B7D: VCallAd Control_ID_Text8
  loc_B42B80: FStAdFunc var_88
  loc_B42B83: FLdPr var_88
  loc_B42B86:  = Me.Text
  loc_B42B8B: FLdZeroAd var_8C
  loc_B42B8E: CVarStr var_9C
  loc_B42B91: FLdRfVar var_AC
  loc_B42B94: ImpAdCallFPR4  = LCase()
  loc_B42B99: FLdRfVar var_FC
  loc_B42B9C: FLdRfVar var_F8
  loc_B42B9F: LitI4 0
  loc_B42BA4: LitI2_Byte 0
  loc_B42BA6: LitI4 1
  loc_B42BAB: ImpAdLdI4 MemVar_C0F044
  loc_B42BAE: LitStr "habbos\"
  loc_B42BB1: ConcatStr
  loc_B42BB2: CVarStr var_BC
  loc_B42BB5: FLdRfVar var_AC
  loc_B42BB8: ConcatVar var_CC
  loc_B42BBC: LitVarStr var_E4, "\name.txt"
  loc_B42BC1: ConcatVar var_F4
  loc_B42BC5: CStrVarVal var_D0
  loc_B42BC9: ImpAdLdRf MemVar_C0F040
  loc_B42BCC: NewIfNullPr IFileSystem3
  loc_B42BCF: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B42BD4: FLdPr var_F8
  loc_B42BD7:  = Me.ReadAll
  loc_B42BDC: ILdRf var_FC
  loc_B42BDF: FLdPrThis
  loc_B42BE0: VCallAd Control_ID_Text8
  loc_B42BE3: FStAdFunc var_100
  loc_B42BE6: FLdPr var_100
  loc_B42BE9: Me.Text = from_stack_1
  loc_B42BEE: FFreeStr var_D0 = ""
  loc_B42BF5: FFreeAd var_88 = "": var_F8 = ""
  loc_B42BFE: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = ""
  loc_B42C0B: FLdRfVar var_8C
  loc_B42C0E: FLdPrThis
  loc_B42C0F: VCallAd Control_ID_Text8
  loc_B42C12: FStAdFunc var_88
  loc_B42C15: FLdPr var_88
  loc_B42C18:  = Me.Text
  loc_B42C1D: FLdZeroAd var_8C
  loc_B42C20: CVarStr var_9C
  loc_B42C23: FLdRfVar var_AC
  loc_B42C26: ImpAdCallFPR4  = LCase()
  loc_B42C2B: FLdRfVar var_FC
  loc_B42C2E: FLdRfVar var_F8
  loc_B42C31: LitI4 0
  loc_B42C36: LitI2_Byte 0
  loc_B42C38: LitI4 1
  loc_B42C3D: ImpAdLdI4 MemVar_C0F044
  loc_B42C40: LitStr "habbos\"
  loc_B42C43: ConcatStr
  loc_B42C44: CVarStr var_BC
  loc_B42C47: FLdRfVar var_AC
  loc_B42C4A: ConcatVar var_CC
  loc_B42C4E: LitVarStr var_E4, "\pass.txt"
  loc_B42C53: ConcatVar var_F4
  loc_B42C57: CStrVarVal var_D0
  loc_B42C5B: ImpAdLdRf MemVar_C0F040
  loc_B42C5E: NewIfNullPr IFileSystem3
  loc_B42C61: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B42C66: FLdPr var_F8
  loc_B42C69:  = Me.ReadAll
  loc_B42C6E: ILdRf var_FC
  loc_B42C71: FLdPrThis
  loc_B42C72: VCallAd Control_ID_Text9
  loc_B42C75: FStAdFunc var_100
  loc_B42C78: FLdPr var_100
  loc_B42C7B: Me.Text = from_stack_1
  loc_B42C80: FFreeStr var_D0 = ""
  loc_B42C87: FFreeAd var_88 = "": var_F8 = ""
  loc_B42C90: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = ""
  loc_B42C9D: FLdRfVar var_8C
  loc_B42CA0: FLdPrThis
  loc_B42CA1: VCallAd Control_ID_Text8
  loc_B42CA4: FStAdFunc var_88
  loc_B42CA7: FLdPr var_88
  loc_B42CAA:  = Me.Text
  loc_B42CAF: FLdZeroAd var_8C
  loc_B42CB2: CVarStr var_9C
  loc_B42CB5: FLdRfVar var_AC
  loc_B42CB8: ImpAdCallFPR4  = LCase()
  loc_B42CBD: FLdRfVar var_FC
  loc_B42CC0: FLdRfVar var_F8
  loc_B42CC3: LitI4 0
  loc_B42CC8: LitI2_Byte 0
  loc_B42CCA: LitI4 1
  loc_B42CCF: ImpAdLdI4 MemVar_C0F044
  loc_B42CD2: LitStr "habbos\"
  loc_B42CD5: ConcatStr
  loc_B42CD6: CVarStr var_BC
  loc_B42CD9: FLdRfVar var_AC
  loc_B42CDC: ConcatVar var_CC
  loc_B42CE0: LitVarStr var_E4, "\mission.txt"
  loc_B42CE5: ConcatVar var_F4
  loc_B42CE9: CStrVarVal var_D0
  loc_B42CED: ImpAdLdRf MemVar_C0F040
  loc_B42CF0: NewIfNullPr IFileSystem3
  loc_B42CF3: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B42CF8: FLdPr var_F8
  loc_B42CFB:  = Me.ReadAll
  loc_B42D00: ILdRf var_FC
  loc_B42D03: FLdPrThis
  loc_B42D04: VCallAd Control_ID_Text10
  loc_B42D07: FStAdFunc var_100
  loc_B42D0A: FLdPr var_100
  loc_B42D0D: Me.Text = from_stack_1
  loc_B42D12: FFreeStr var_D0 = ""
  loc_B42D19: FFreeAd var_88 = "": var_F8 = ""
  loc_B42D22: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = ""
  loc_B42D2F: FLdRfVar var_8C
  loc_B42D32: FLdPrThis
  loc_B42D33: VCallAd Control_ID_Text8
  loc_B42D36: FStAdFunc var_88
  loc_B42D39: FLdPr var_88
  loc_B42D3C:  = Me.Text
  loc_B42D41: FLdZeroAd var_8C
  loc_B42D44: CVarStr var_9C
  loc_B42D47: FLdRfVar var_AC
  loc_B42D4A: ImpAdCallFPR4  = LCase()
  loc_B42D4F: FLdRfVar var_FC
  loc_B42D52: FLdRfVar var_F8
  loc_B42D55: LitI4 0
  loc_B42D5A: LitI2_Byte 0
  loc_B42D5C: LitI4 1
  loc_B42D61: ImpAdLdI4 MemVar_C0F044
  loc_B42D64: LitStr "habbos\"
  loc_B42D67: ConcatStr
  loc_B42D68: CVarStr var_BC
  loc_B42D6B: FLdRfVar var_AC
  loc_B42D6E: ConcatVar var_CC
  loc_B42D72: LitVarStr var_E4, "\email.txt"
  loc_B42D77: ConcatVar var_F4
  loc_B42D7B: CStrVarVal var_D0
  loc_B42D7F: ImpAdLdRf MemVar_C0F040
  loc_B42D82: NewIfNullPr IFileSystem3
  loc_B42D85: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B42D8A: FLdPr var_F8
  loc_B42D8D:  = Me.ReadAll
  loc_B42D92: ILdRf var_FC
  loc_B42D95: FLdPrThis
  loc_B42D96: VCallAd Control_ID_Text25
  loc_B42D99: FStAdFunc var_100
  loc_B42D9C: FLdPr var_100
  loc_B42D9F: Me.Text = from_stack_1
  loc_B42DA4: FFreeStr var_D0 = ""
  loc_B42DAB: FFreeAd var_88 = "": var_F8 = ""
  loc_B42DB4: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = ""
  loc_B42DC1: FLdRfVar var_8C
  loc_B42DC4: FLdPrThis
  loc_B42DC5: VCallAd Control_ID_Text8
  loc_B42DC8: FStAdFunc var_88
  loc_B42DCB: FLdPr var_88
  loc_B42DCE:  = Me.Text
  loc_B42DD3: FLdZeroAd var_8C
  loc_B42DD6: CVarStr var_9C
  loc_B42DD9: FLdRfVar var_AC
  loc_B42DDC: ImpAdCallFPR4  = LCase()
  loc_B42DE1: FLdRfVar var_FC
  loc_B42DE4: FLdRfVar var_F8
  loc_B42DE7: LitI4 0
  loc_B42DEC: LitI2_Byte 0
  loc_B42DEE: LitI4 1
  loc_B42DF3: ImpAdLdI4 MemVar_C0F044
  loc_B42DF6: LitStr "habbos\"
  loc_B42DF9: ConcatStr
  loc_B42DFA: CVarStr var_BC
  loc_B42DFD: FLdRfVar var_AC
  loc_B42E00: ConcatVar var_CC
  loc_B42E04: LitVarStr var_E4, "\birth.txt"
  loc_B42E09: ConcatVar var_F4
  loc_B42E0D: CStrVarVal var_D0
  loc_B42E11: ImpAdLdRf MemVar_C0F040
  loc_B42E14: NewIfNullPr IFileSystem3
  loc_B42E17: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B42E1C: FLdPr var_F8
  loc_B42E1F:  = Me.ReadAll
  loc_B42E24: ILdRf var_FC
  loc_B42E27: FLdPrThis
  loc_B42E28: VCallAd Control_ID_Text26
  loc_B42E2B: FStAdFunc var_100
  loc_B42E2E: FLdPr var_100
  loc_B42E31: Me.Text = from_stack_1
  loc_B42E36: FFreeStr var_D0 = ""
  loc_B42E3D: FFreeAd var_88 = "": var_F8 = ""
  loc_B42E46: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = ""
  loc_B42E53: FLdRfVar var_8C
  loc_B42E56: FLdPrThis
  loc_B42E57: VCallAd Control_ID_Text8
  loc_B42E5A: FStAdFunc var_88
  loc_B42E5D: FLdPr var_88
  loc_B42E60:  = Me.Text
  loc_B42E65: FLdZeroAd var_8C
  loc_B42E68: CVarStr var_9C
  loc_B42E6B: FLdRfVar var_AC
  loc_B42E6E: ImpAdCallFPR4  = LCase()
  loc_B42E73: FLdRfVar var_FC
  loc_B42E76: FLdRfVar var_F8
  loc_B42E79: LitI4 0
  loc_B42E7E: LitI2_Byte 0
  loc_B42E80: LitI4 1
  loc_B42E85: ImpAdLdI4 MemVar_C0F044
  loc_B42E88: LitStr "habbos\"
  loc_B42E8B: ConcatStr
  loc_B42E8C: CVarStr var_BC
  loc_B42E8F: FLdRfVar var_AC
  loc_B42E92: ConcatVar var_CC
  loc_B42E96: LitVarStr var_E4, "\badges.txt"
  loc_B42E9B: ConcatVar var_F4
  loc_B42E9F: CStrVarVal var_D0
  loc_B42EA3: ImpAdLdRf MemVar_C0F040
  loc_B42EA6: NewIfNullPr IFileSystem3
  loc_B42EA9: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B42EAE: FLdPr var_F8
  loc_B42EB1:  = Me.ReadAll
  loc_B42EB6: ILdRf var_FC
  loc_B42EB9: FLdPrThis
  loc_B42EBA: VCallAd Control_ID_Text27
  loc_B42EBD: FStAdFunc var_100
  loc_B42EC0: FLdPr var_100
  loc_B42EC3: Me.Text = from_stack_1
  loc_B42EC8: FFreeStr var_D0 = ""
  loc_B42ECF: FFreeAd var_88 = "": var_F8 = ""
  loc_B42ED8: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = ""
  loc_B42EE5: FLdPrThis
  loc_B42EE6: VCallAd Control_ID_Combo2
  loc_B42EE9: FStAdFunc var_88
  loc_B42EEC: FLdPr var_88
  loc_B42EEF: Me.Clear
  loc_B42EF4: FFree1Ad var_88
  loc_B42EF7: LitVar_Missing var_E4
  loc_B42EFA: PopAdLdVar
  loc_B42EFB: LitStr "habbo"
  loc_B42EFE: FLdPrThis
  loc_B42EFF: VCallAd Control_ID_Combo2
  loc_B42F02: FStAdFunc var_88
  loc_B42F05: FLdPr var_88
  loc_B42F08: Me.AddItem from_stack_1, from_stack_2
  loc_B42F0D: FFree1Ad var_88
  loc_B42F10: LitVar_Missing var_E4
  loc_B42F13: PopAdLdVar
  loc_B42F14: LitStr "habbox"
  loc_B42F17: FLdPrThis
  loc_B42F18: VCallAd Control_ID_Combo2
  loc_B42F1B: FStAdFunc var_88
  loc_B42F1E: FLdPr var_88
  loc_B42F21: Me.AddItem from_stack_1, from_stack_2
  loc_B42F26: FFree1Ad var_88
  loc_B42F29: LitVar_Missing var_E4
  loc_B42F2C: PopAdLdVar
  loc_B42F2D: LitStr "silver"
  loc_B42F30: FLdPrThis
  loc_B42F31: VCallAd Control_ID_Combo2
  loc_B42F34: FStAdFunc var_88
  loc_B42F37: FLdPr var_88
  loc_B42F3A: Me.AddItem from_stack_1, from_stack_2
  loc_B42F3F: FFree1Ad var_88
  loc_B42F42: LitVar_Missing var_E4
  loc_B42F45: PopAdLdVar
  loc_B42F46: LitStr "gold"
  loc_B42F49: FLdPrThis
  loc_B42F4A: VCallAd Control_ID_Combo2
  loc_B42F4D: FStAdFunc var_88
  loc_B42F50: FLdPr var_88
  loc_B42F53: Me.AddItem from_stack_1, from_stack_2
  loc_B42F58: FFree1Ad var_88
  loc_B42F5B: LitVar_Missing var_E4
  loc_B42F5E: PopAdLdVar
  loc_B42F5F: LitStr "moderator"
  loc_B42F62: FLdPrThis
  loc_B42F63: VCallAd Control_ID_Combo2
  loc_B42F66: FStAdFunc var_88
  loc_B42F69: FLdPr var_88
  loc_B42F6C: Me.AddItem from_stack_1, from_stack_2
  loc_B42F71: FFree1Ad var_88
  loc_B42F74: LitVar_Missing var_E4
  loc_B42F77: PopAdLdVar
  loc_B42F78: LitStr "admin"
  loc_B42F7B: FLdPrThis
  loc_B42F7C: VCallAd Control_ID_Combo2
  loc_B42F7F: FStAdFunc var_88
  loc_B42F82: FLdPr var_88
  loc_B42F85: Me.AddItem from_stack_1, from_stack_2
  loc_B42F8A: FFree1Ad var_88
  loc_B42F8D: FLdRfVar var_8C
  loc_B42F90: FLdPrThis
  loc_B42F91: VCallAd Control_ID_Text8
  loc_B42F94: FStAdFunc var_88
  loc_B42F97: FLdPr var_88
  loc_B42F9A:  = Me.Text
  loc_B42F9F: FLdZeroAd var_8C
  loc_B42FA2: CVarStr var_9C
  loc_B42FA5: FLdRfVar var_AC
  loc_B42FA8: ImpAdCallFPR4  = LCase()
  loc_B42FAD: FLdRfVar var_FC
  loc_B42FB0: FLdRfVar var_F8
  loc_B42FB3: LitI4 0
  loc_B42FB8: LitI2_Byte 0
  loc_B42FBA: LitI4 1
  loc_B42FBF: ImpAdLdI4 MemVar_C0F044
  loc_B42FC2: LitStr "habbos\"
  loc_B42FC5: ConcatStr
  loc_B42FC6: CVarStr var_BC
  loc_B42FC9: FLdRfVar var_AC
  loc_B42FCC: ConcatVar var_CC
  loc_B42FD0: LitVarStr var_E4, "\rank.txt"
  loc_B42FD5: ConcatVar var_F4
  loc_B42FD9: CStrVarVal var_D0
  loc_B42FDD: ImpAdLdRf MemVar_C0F040
  loc_B42FE0: NewIfNullPr IFileSystem3
  loc_B42FE3: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B42FE8: FLdPr var_F8
  loc_B42FEB:  = Me.ReadAll
  loc_B42FF0: ILdRf var_FC
  loc_B42FF3: FLdPrThis
  loc_B42FF4: VCallAd Control_ID_Combo2
  loc_B42FF7: FStAdFunc var_100
  loc_B42FFA: FLdPr var_100
  loc_B42FFD: Me.Text = from_stack_1
  loc_B43002: FFreeStr var_D0 = ""
  loc_B43009: FFreeAd var_88 = "": var_F8 = ""
  loc_B43012: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = ""
  loc_B4301F: FLdRfVar var_8C
  loc_B43022: FLdPrThis
  loc_B43023: VCallAd Control_ID_Text8
  loc_B43026: FStAdFunc var_88
  loc_B43029: FLdPr var_88
  loc_B4302C:  = Me.Text
  loc_B43031: FLdZeroAd var_8C
  loc_B43034: CVarStr var_9C
  loc_B43037: FLdRfVar var_AC
  loc_B4303A: ImpAdCallFPR4  = LCase()
  loc_B4303F: FLdRfVar var_FC
  loc_B43042: FLdRfVar var_F8
  loc_B43045: LitI4 0
  loc_B4304A: LitI2_Byte 0
  loc_B4304C: LitI4 1
  loc_B43051: ImpAdLdI4 MemVar_C0F044
  loc_B43054: LitStr "habbos\"
  loc_B43057: ConcatStr
  loc_B43058: CVarStr var_BC
  loc_B4305B: FLdRfVar var_AC
  loc_B4305E: ConcatVar var_CC
  loc_B43062: LitVarStr var_E4, "\credits.txt"
  loc_B43067: ConcatVar var_F4
  loc_B4306B: CStrVarVal var_D0
  loc_B4306F: ImpAdLdRf MemVar_C0F040
  loc_B43072: NewIfNullPr IFileSystem3
  loc_B43075: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4307A: FLdPr var_F8
  loc_B4307D:  = Me.ReadAll
  loc_B43082: ILdRf var_FC
  loc_B43085: FLdPrThis
  loc_B43086: VCallAd Control_ID_Text11
  loc_B43089: FStAdFunc var_100
  loc_B4308C: FLdPr var_100
  loc_B4308F: Me.Text = from_stack_1
  loc_B43094: FFreeStr var_D0 = ""
  loc_B4309B: FFreeAd var_88 = "": var_F8 = ""
  loc_B430A4: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = ""
  loc_B430B1: LitI2_Byte &HFF
  loc_B430B3: FLdPrThis
  loc_B430B4: VCallAd Control_ID_Text9
  loc_B430B7: FStAdFunc var_88
  loc_B430BA: FLdPr var_88
  loc_B430BD: Me.Enabled = from_stack_1b
  loc_B430C2: FFree1Ad var_88
  loc_B430C5: LitI2_Byte &HFF
  loc_B430C7: FLdPrThis
  loc_B430C8: VCallAd Control_ID_Text10
  loc_B430CB: FStAdFunc var_88
  loc_B430CE: FLdPr var_88
  loc_B430D1: Me.Enabled = from_stack_1b
  loc_B430D6: FFree1Ad var_88
  loc_B430D9: LitI2_Byte &HFF
  loc_B430DB: FLdPrThis
  loc_B430DC: VCallAd Control_ID_Text25
  loc_B430DF: FStAdFunc var_88
  loc_B430E2: FLdPr var_88
  loc_B430E5: Me.Enabled = from_stack_1b
  loc_B430EA: FFree1Ad var_88
  loc_B430ED: LitI2_Byte &HFF
  loc_B430EF: FLdPrThis
  loc_B430F0: VCallAd Control_ID_Text26
  loc_B430F3: FStAdFunc var_88
  loc_B430F6: FLdPr var_88
  loc_B430F9: Me.Enabled = from_stack_1b
  loc_B430FE: FFree1Ad var_88
  loc_B43101: LitI2_Byte &HFF
  loc_B43103: FLdPrThis
  loc_B43104: VCallAd Control_ID_Text27
  loc_B43107: FStAdFunc var_88
  loc_B4310A: FLdPr var_88
  loc_B4310D: Me.Enabled = from_stack_1b
  loc_B43112: FFree1Ad var_88
  loc_B43115: LitI2_Byte &HFF
  loc_B43117: FLdPrThis
  loc_B43118: VCallAd Control_ID_Combo2
  loc_B4311B: FStAdFunc var_88
  loc_B4311E: FLdPr var_88
  loc_B43121: Me.Enabled = from_stack_1b
  loc_B43126: FFree1Ad var_88
  loc_B43129: LitI2_Byte &HFF
  loc_B4312B: FLdPrThis
  loc_B4312C: VCallAd Control_ID_Text11
  loc_B4312F: FStAdFunc var_88
  loc_B43132: FLdPr var_88
  loc_B43135: Me.Enabled = from_stack_1b
  loc_B4313A: FFree1Ad var_88
  loc_B4313D: Branch loc_B4317D
  loc_B43140: LitVarStr var_E4, "user_doesnt_exists"
  loc_B43145: PopAdLdVar
  loc_B43146: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4314B: FStStr var_8C
  loc_B4314E: LitVar_Missing var_CC
  loc_B43151: LitVar_Missing var_BC
  loc_B43154: LitVarStr var_110, "Server"
  loc_B43159: FStVarCopyObj var_AC
  loc_B4315C: FLdRfVar var_AC
  loc_B4315F: LitI4 &H10
  loc_B43164: FLdZeroAd var_8C
  loc_B43167: CVarStr var_9C
  loc_B4316A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B4316F: FFree1Str var_8C
  loc_B43172: FFreeVar var_9C = "": var_AC = "": var_BC = ""
  loc_B4317D: ExitProcHresult
End Sub

Private Sub Command9_Click() 'B7E63C
  'Data Table: 549FD0
  loc_B7C794: LitI2_Byte 0
  loc_B7C796: FLdPrThis
  loc_B7C797: VCallAd Control_ID_Command9
  loc_B7C79A: FStAdFunc var_88
  loc_B7C79D: FLdPr var_88
  loc_B7C7A0: Me.Enabled = from_stack_1b
  loc_B7C7A5: FFree1Ad var_88
  loc_B7C7A8: LitI2_Byte 0
  loc_B7C7AA: FLdPrThis
  loc_B7C7AB: VCallAd Control_ID_Command8
  loc_B7C7AE: FStAdFunc var_88
  loc_B7C7B1: FLdPr var_88
  loc_B7C7B4: Me.Enabled = from_stack_1b
  loc_B7C7B9: FFree1Ad var_88
  loc_B7C7BC: FLdRfVar var_8C
  loc_B7C7BF: FLdPrThis
  loc_B7C7C0: VCallAd Control_ID_Text8
  loc_B7C7C3: FStAdFunc var_88
  loc_B7C7C6: FLdPr var_88
  loc_B7C7C9:  = Me.Text
  loc_B7C7CE: ILdRf var_8C
  loc_B7C7D1: LitStr vbNullString
  loc_B7C7D4: EqStr
  loc_B7C7D6: FLdRfVar var_DA
  loc_B7C7D9: ImpAdLdI4 MemVar_C0F044
  loc_B7C7DC: LitStr "habbos\"
  loc_B7C7DF: ConcatStr
  loc_B7C7E0: CVarStr var_C4
  loc_B7C7E3: FLdRfVar var_94
  loc_B7C7E6: FLdPrThis
  loc_B7C7E7: VCallAd Control_ID_Text8
  loc_B7C7EA: FStAdFunc var_90
  loc_B7C7ED: FLdPr var_90
  loc_B7C7F0:  = Me.Text
  loc_B7C7F5: FLdZeroAd var_94
  loc_B7C7F8: CVarStr var_A4
  loc_B7C7FB: FLdRfVar var_B4
  loc_B7C7FE: ImpAdCallFPR4  = LCase()
  loc_B7C803: FLdRfVar var_B4
  loc_B7C806: ConcatVar var_D4
  loc_B7C80A: CStrVarVal var_D8
  loc_B7C80E: ImpAdLdRf MemVar_C0F040
  loc_B7C811: NewIfNullPr IFileSystem3
  loc_B7C814: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B7C819: FLdI2 var_DA
  loc_B7C81C: LitI2_Byte 0
  loc_B7C81E: EqI2
  loc_B7C81F: OrI4
  loc_B7C820: FFreeStr var_8C = ""
  loc_B7C827: FFreeAd var_88 = ""
  loc_B7C82E: FFreeVar var_A4 = "": var_C4 = "": var_B4 = ""
  loc_B7C839: BranchF loc_B7C87C
  loc_B7C83C: LitVarStr var_EC, "user_doesnt_exists"
  loc_B7C841: PopAdLdVar
  loc_B7C842: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7C847: FStStr var_8C
  loc_B7C84A: LitVar_Missing var_D4
  loc_B7C84D: LitVar_Missing var_C4
  loc_B7C850: LitVarStr var_FC, "Server"
  loc_B7C855: FStVarCopyObj var_B4
  loc_B7C858: FLdRfVar var_B4
  loc_B7C85B: LitI4 &H10
  loc_B7C860: FLdZeroAd var_8C
  loc_B7C863: CVarStr var_A4
  loc_B7C866: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B7C86B: FFree1Str var_8C
  loc_B7C86E: FFreeVar var_A4 = "": var_B4 = "": var_C4 = ""
  loc_B7C879: Branch loc_B7E612
  loc_B7C87C: FLdRfVar var_8C
  loc_B7C87F: FLdPrThis
  loc_B7C880: VCallAd Control_ID_Text9
  loc_B7C883: FStAdFunc var_88
  loc_B7C886: FLdPr var_88
  loc_B7C889:  = Me.Text
  loc_B7C88E: ILdRf var_8C
  loc_B7C891: LitStr vbNullString
  loc_B7C894: EqStr
  loc_B7C896: FFree1Str var_8C
  loc_B7C899: FFree1Ad var_88
  loc_B7C89C: BranchF loc_B7C8B4
  loc_B7C89F: LitStr " "
  loc_B7C8A2: FLdPrThis
  loc_B7C8A3: VCallAd Control_ID_Text9
  loc_B7C8A6: FStAdFunc var_88
  loc_B7C8A9: FLdPr var_88
  loc_B7C8AC: Me.Text = from_stack_1
  loc_B7C8B1: FFree1Ad var_88
  loc_B7C8B4: FLdRfVar var_8C
  loc_B7C8B7: FLdPrThis
  loc_B7C8B8: VCallAd Control_ID_Text10
  loc_B7C8BB: FStAdFunc var_88
  loc_B7C8BE: FLdPr var_88
  loc_B7C8C1:  = Me.Text
  loc_B7C8C6: ILdRf var_8C
  loc_B7C8C9: LitStr vbNullString
  loc_B7C8CC: EqStr
  loc_B7C8CE: FFree1Str var_8C
  loc_B7C8D1: FFree1Ad var_88
  loc_B7C8D4: BranchF loc_B7C8EC
  loc_B7C8D7: LitStr " "
  loc_B7C8DA: FLdPrThis
  loc_B7C8DB: VCallAd Control_ID_Text10
  loc_B7C8DE: FStAdFunc var_88
  loc_B7C8E1: FLdPr var_88
  loc_B7C8E4: Me.Text = from_stack_1
  loc_B7C8E9: FFree1Ad var_88
  loc_B7C8EC: FLdRfVar var_8C
  loc_B7C8EF: FLdPrThis
  loc_B7C8F0: VCallAd Control_ID_Combo2
  loc_B7C8F3: FStAdFunc var_88
  loc_B7C8F6: FLdPr var_88
  loc_B7C8F9:  = Me.Text
  loc_B7C8FE: ILdRf var_8C
  loc_B7C901: LitStr "habbo"
  loc_B7C904: NeStr
  loc_B7C906: FLdRfVar var_94
  loc_B7C909: FLdPrThis
  loc_B7C90A: VCallAd Control_ID_Combo2
  loc_B7C90D: FStAdFunc var_90
  loc_B7C910: FLdPr var_90
  loc_B7C913:  = Me.Text
  loc_B7C918: ILdRf var_94
  loc_B7C91B: LitStr "habbox"
  loc_B7C91E: NeStr
  loc_B7C920: AndI4
  loc_B7C921: FLdRfVar var_D8
  loc_B7C924: FLdPrThis
  loc_B7C925: VCallAd Control_ID_Combo2
  loc_B7C928: FStAdFunc var_120
  loc_B7C92B: FLdPr var_120
  loc_B7C92E:  = Me.Text
  loc_B7C933: ILdRf var_D8
  loc_B7C936: LitStr "silver"
  loc_B7C939: NeStr
  loc_B7C93B: AndI4
  loc_B7C93C: FLdRfVar var_128
  loc_B7C93F: FLdPrThis
  loc_B7C940: VCallAd Control_ID_Combo2
  loc_B7C943: FStAdFunc var_124
  loc_B7C946: FLdPr var_124
  loc_B7C949:  = Me.Text
  loc_B7C94E: ILdRf var_128
  loc_B7C951: LitStr "gold"
  loc_B7C954: NeStr
  loc_B7C956: AndI4
  loc_B7C957: FLdRfVar var_130
  loc_B7C95A: FLdPrThis
  loc_B7C95B: VCallAd Control_ID_Combo2
  loc_B7C95E: FStAdFunc var_12C
  loc_B7C961: FLdPr var_12C
  loc_B7C964:  = Me.Text
  loc_B7C969: ILdRf var_130
  loc_B7C96C: LitStr "moderator"
  loc_B7C96F: NeStr
  loc_B7C971: AndI4
  loc_B7C972: FLdRfVar var_138
  loc_B7C975: FLdPrThis
  loc_B7C976: VCallAd Control_ID_Combo2
  loc_B7C979: FStAdFunc var_134
  loc_B7C97C: FLdPr var_134
  loc_B7C97F:  = Me.Text
  loc_B7C984: ILdRf var_138
  loc_B7C987: LitStr "admin"
  loc_B7C98A: NeStr
  loc_B7C98C: AndI4
  loc_B7C98D: FFreeStr var_8C = "": var_94 = "": var_D8 = "": var_128 = "": var_130 = ""
  loc_B7C99C: FFreeAd var_88 = "": var_90 = "": var_120 = "": var_124 = "": var_12C = ""
  loc_B7C9AB: BranchF loc_B7C9C3
  loc_B7C9AE: LitStr "habbo"
  loc_B7C9B1: FLdPrThis
  loc_B7C9B2: VCallAd Control_ID_Combo2
  loc_B7C9B5: FStAdFunc var_88
  loc_B7C9B8: FLdPr var_88
  loc_B7C9BB: Me.Text = from_stack_1
  loc_B7C9C0: FFree1Ad var_88
  loc_B7C9C3: FLdRfVar var_8C
  loc_B7C9C6: FLdPrThis
  loc_B7C9C7: VCallAd Control_ID_Text11
  loc_B7C9CA: FStAdFunc var_88
  loc_B7C9CD: FLdPr var_88
  loc_B7C9D0:  = Me.Text
  loc_B7C9D5: FLdZeroAd var_8C
  loc_B7C9D8: CVarStr var_A4
  loc_B7C9DB: ImpAdCallI2 IsNumeric()
  loc_B7C9E0: LitI2_Byte 0
  loc_B7C9E2: EqI2
  loc_B7C9E3: FFree1Ad var_88
  loc_B7C9E6: FFree1Var var_A4 = ""
  loc_B7C9E9: BranchF loc_B7CA01
  loc_B7C9EC: LitStr "0"
  loc_B7C9EF: FLdPrThis
  loc_B7C9F0: VCallAd Control_ID_Text11
  loc_B7C9F3: FStAdFunc var_88
  loc_B7C9F6: FLdPr var_88
  loc_B7C9F9: Me.Text = from_stack_1
  loc_B7C9FE: FFree1Ad var_88
  loc_B7CA01: FLdRfVar var_8C
  loc_B7CA04: FLdPrThis
  loc_B7CA05: VCallAd Control_ID_Text8
  loc_B7CA08: FStAdFunc var_88
  loc_B7CA0B: FLdPr var_88
  loc_B7CA0E:  = Me.Text
  loc_B7CA13: FLdZeroAd var_8C
  loc_B7CA16: CVarStr var_A4
  loc_B7CA19: FLdRfVar var_B4
  loc_B7CA1C: ImpAdCallFPR4  = LCase()
  loc_B7CA21: FLdRfVar var_D8
  loc_B7CA24: FLdRfVar var_90
  loc_B7CA27: LitI4 0
  loc_B7CA2C: LitI2_Byte 0
  loc_B7CA2E: LitI4 1
  loc_B7CA33: ImpAdLdI4 MemVar_C0F044
  loc_B7CA36: LitStr "habbos\"
  loc_B7CA39: ConcatStr
  loc_B7CA3A: CVarStr var_C4
  loc_B7CA3D: FLdRfVar var_B4
  loc_B7CA40: ConcatVar var_D4
  loc_B7CA44: LitVarStr var_EC, "\rank.txt"
  loc_B7CA49: ConcatVar var_148
  loc_B7CA4D: CStrVarVal var_94
  loc_B7CA51: ImpAdLdRf MemVar_C0F040
  loc_B7CA54: NewIfNullPr IFileSystem3
  loc_B7CA57: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7CA5C: FLdPr var_90
  loc_B7CA5F:  = Me.ReadAll
  loc_B7CA64: ILdRf var_D8
  loc_B7CA67: LitStr "moderator"
  loc_B7CA6A: NeStr
  loc_B7CA6C: FLdRfVar var_128
  loc_B7CA6F: FLdPrThis
  loc_B7CA70: VCallAd Control_ID_Combo2
  loc_B7CA73: FStAdFunc var_120
  loc_B7CA76: FLdPr var_120
  loc_B7CA79:  = Me.Text
  loc_B7CA7E: ILdRf var_128
  loc_B7CA81: LitStr "moderator"
  loc_B7CA84: EqStr
  loc_B7CA86: AndI4
  loc_B7CA87: FFreeStr var_94 = "": var_D8 = ""
  loc_B7CA90: FFreeAd var_88 = "": var_90 = ""
  loc_B7CA99: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7CAA6: BranchF loc_B7D8BA
  loc_B7CAA9: LitVarStr var_EC, "user_to_mod_msg"
  loc_B7CAAE: PopAdLdVar
  loc_B7CAAF: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7CAB4: FStStr var_128
  loc_B7CAB7: FLdRfVar var_8C
  loc_B7CABA: FLdPrThis
  loc_B7CABB: VCallAd Control_ID_Text8
  loc_B7CABE: FStAdFunc var_88
  loc_B7CAC1: FLdPr var_88
  loc_B7CAC4:  = Me.Text
  loc_B7CAC9: LitI4 0
  loc_B7CACE: LitI4 -1
  loc_B7CAD3: LitI4 1
  loc_B7CAD8: LitStr "MOD-"
  loc_B7CADB: ILdRf var_8C
  loc_B7CADE: ConcatStr
  loc_B7CADF: FStStrNoPop var_D8
  loc_B7CAE2: LitStr Chr(37) & "name" & Chr(37)
  loc_B7CAE5: FLdZeroAd var_128
  loc_B7CAE8: FStStrNoPop var_94
  loc_B7CAEB: ImpAdCallI2 Replace(, , , , , )
  loc_B7CAF0: FStStr var_130
  loc_B7CAF3: LitVar_Missing var_D4
  loc_B7CAF6: LitVar_Missing var_C4
  loc_B7CAF9: LitVarStr var_FC, "Server"
  loc_B7CAFE: FStVarCopyObj var_B4
  loc_B7CB01: FLdRfVar var_B4
  loc_B7CB04: LitI4 &H24
  loc_B7CB09: FLdZeroAd var_130
  loc_B7CB0C: CVarStr var_A4
  loc_B7CB0F: ImpAdCallI2 MsgBox(, , , , )
  loc_B7CB14: LitI4 7
  loc_B7CB19: EqI4
  loc_B7CB1A: FFreeStr var_8C = "": var_94 = "": var_D8 = "": var_128 = ""
  loc_B7CB27: FFree1Ad var_88
  loc_B7CB2A: FFreeVar var_A4 = "": var_B4 = "": var_C4 = ""
  loc_B7CB35: BranchF loc_B7CB3B
  loc_B7CB38: Branch loc_B7E612
  loc_B7CB3B: FLdRfVar var_DA
  loc_B7CB3E: ImpAdLdI4 MemVar_C0F044
  loc_B7CB41: LitStr "habbos\"
  loc_B7CB44: ConcatStr
  loc_B7CB45: FStStrNoPop var_8C
  loc_B7CB48: LitStr "mod-"
  loc_B7CB4B: ConcatStr
  loc_B7CB4C: CVarStr var_C4
  loc_B7CB4F: FLdRfVar var_94
  loc_B7CB52: FLdPrThis
  loc_B7CB53: VCallAd Control_ID_Text8
  loc_B7CB56: FStAdFunc var_88
  loc_B7CB59: FLdPr var_88
  loc_B7CB5C:  = Me.Text
  loc_B7CB61: FLdZeroAd var_94
  loc_B7CB64: CVarStr var_A4
  loc_B7CB67: FLdRfVar var_B4
  loc_B7CB6A: ImpAdCallFPR4  = LCase()
  loc_B7CB6F: FLdRfVar var_B4
  loc_B7CB72: ConcatVar var_D4
  loc_B7CB76: CStrVarVal var_D8
  loc_B7CB7A: ImpAdLdRf MemVar_C0F040
  loc_B7CB7D: NewIfNullPr IFileSystem3
  loc_B7CB80: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B7CB85: FLdI2 var_DA
  loc_B7CB88: LitI2_Byte &HFF
  loc_B7CB8A: EqI2
  loc_B7CB8B: FFreeStr var_8C = ""
  loc_B7CB92: FFree1Ad var_88
  loc_B7CB95: FFreeVar var_A4 = "": var_C4 = "": var_B4 = ""
  loc_B7CBA0: BranchF loc_B7CC17
  loc_B7CBA3: FLdRfVar var_8C
  loc_B7CBA6: FLdPrThis
  loc_B7CBA7: VCallAd Control_ID_Text8
  loc_B7CBAA: FStAdFunc var_88
  loc_B7CBAD: FLdPr var_88
  loc_B7CBB0:  = Me.Text
  loc_B7CBB5: LitVarStr var_EC, "already_exists"
  loc_B7CBBA: PopAdLdVar
  loc_B7CBBB: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7CBC0: FStStr var_130
  loc_B7CBC3: LitVar_Missing var_D4
  loc_B7CBC6: LitVar_Missing var_C4
  loc_B7CBC9: LitVarStr var_FC, "Server"
  loc_B7CBCE: FStVarCopyObj var_B4
  loc_B7CBD1: FLdRfVar var_B4
  loc_B7CBD4: LitI4 &H10
  loc_B7CBD9: LitStr "MOD-"
  loc_B7CBDC: ILdRf var_8C
  loc_B7CBDF: ConcatStr
  loc_B7CBE0: FStStrNoPop var_94
  loc_B7CBE3: LitStr " "
  loc_B7CBE6: ConcatStr
  loc_B7CBE7: FStStrNoPop var_D8
  loc_B7CBEA: FLdZeroAd var_130
  loc_B7CBED: FStStrNoPop var_128
  loc_B7CBF0: ConcatStr
  loc_B7CBF1: CVarStr var_A4
  loc_B7CBF4: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B7CBF9: FFreeStr var_8C = "": var_94 = "": var_D8 = "": var_128 = ""
  loc_B7CC06: FFree1Ad var_88
  loc_B7CC09: FFreeVar var_A4 = "": var_B4 = "": var_C4 = ""
  loc_B7CC14: Branch loc_B7E612
  loc_B7CC17: FLdRfVar var_8C
  loc_B7CC1A: FLdPrThis
  loc_B7CC1B: VCallAd Control_ID_Text8
  loc_B7CC1E: FStAdFunc var_88
  loc_B7CC21: FLdPr var_88
  loc_B7CC24:  = Me.Text
  loc_B7CC29: FLdZeroAd var_8C
  loc_B7CC2C: CVarStr var_A4
  loc_B7CC2F: FLdRfVar var_B4
  loc_B7CC32: ImpAdCallFPR4  = LCase()
  loc_B7CC37: FLdRfVar var_D8
  loc_B7CC3A: FLdPrThis
  loc_B7CC3B: VCallAd Control_ID_Text8
  loc_B7CC3E: FStAdFunc var_90
  loc_B7CC41: FLdPr var_90
  loc_B7CC44:  = Me.Text
  loc_B7CC49: FLdZeroAd var_D8
  loc_B7CC4C: CVarStr var_148
  loc_B7CC4F: FLdRfVar var_158
  loc_B7CC52: ImpAdCallFPR4  = LCase()
  loc_B7CC57: LitI2_Byte &HFF
  loc_B7CC59: ImpAdLdI4 MemVar_C0F044
  loc_B7CC5C: LitStr "habbos\"
  loc_B7CC5F: ConcatStr
  loc_B7CC60: FStStrNoPop var_94
  loc_B7CC63: LitStr "MOD-"
  loc_B7CC66: ConcatStr
  loc_B7CC67: CVarStr var_168
  loc_B7CC6A: FLdRfVar var_158
  loc_B7CC6D: ConcatVar var_178
  loc_B7CC71: CStrVarVal var_130
  loc_B7CC75: ImpAdLdI4 MemVar_C0F044
  loc_B7CC78: LitStr "habbos\"
  loc_B7CC7B: ConcatStr
  loc_B7CC7C: CVarStr var_C4
  loc_B7CC7F: FLdRfVar var_B4
  loc_B7CC82: ConcatVar var_D4
  loc_B7CC86: CStrVarVal var_128
  loc_B7CC8A: ImpAdLdRf MemVar_C0F040
  loc_B7CC8D: NewIfNullPr IFileSystem3
  loc_B7CC90: from_stack_4 = IFileSystem3.IFileSystem.CopyFolder(from_stack_1v, from_stack_2v, from_stack_3b)
  loc_B7CC95: FFreeStr var_94 = "": var_128 = ""
  loc_B7CC9E: FFreeAd var_88 = ""
  loc_B7CCA5: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_148 = "": var_168 = "": var_158 = "": var_D4 = ""
  loc_B7CCB8: FLdRfVar var_94
  loc_B7CCBB: FLdPrThis
  loc_B7CCBC: VCallAd Control_ID_Text8
  loc_B7CCBF: FStAdFunc var_88
  loc_B7CCC2: FLdPr var_88
  loc_B7CCC5:  = Me.Text
  loc_B7CCCA: FLdZeroAd var_94
  loc_B7CCCD: CVarStr var_A4
  loc_B7CCD0: FLdRfVar var_B4
  loc_B7CCD3: ImpAdCallFPR4  = LCase()
  loc_B7CCD8: LitStr ";"
  loc_B7CCDB: FLdRfVar var_90
  loc_B7CCDE: LitI4 0
  loc_B7CCE3: LitI2_Byte 0
  loc_B7CCE5: LitI4 2
  loc_B7CCEA: ImpAdLdI4 MemVar_C0F044
  loc_B7CCED: LitStr "habbos\"
  loc_B7CCF0: ConcatStr
  loc_B7CCF1: FStStrNoPop var_8C
  loc_B7CCF4: LitStr "MOD-"
  loc_B7CCF7: ConcatStr
  loc_B7CCF8: CVarStr var_C4
  loc_B7CCFB: FLdRfVar var_B4
  loc_B7CCFE: ConcatVar var_D4
  loc_B7CD02: LitVarStr var_EC, "\hand.txt"
  loc_B7CD07: ConcatVar var_148
  loc_B7CD0B: CStrVarVal var_D8
  loc_B7CD0F: ImpAdLdRf MemVar_C0F040
  loc_B7CD12: NewIfNullPr IFileSystem3
  loc_B7CD15: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7CD1A: FLdPr var_90
  loc_B7CD1D: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7CD22: FFreeStr var_8C = ""
  loc_B7CD29: FFreeAd var_88 = ""
  loc_B7CD30: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7CD3D: FLdRfVar var_94
  loc_B7CD40: FLdPrThis
  loc_B7CD41: VCallAd Control_ID_Text8
  loc_B7CD44: FStAdFunc var_88
  loc_B7CD47: FLdPr var_88
  loc_B7CD4A:  = Me.Text
  loc_B7CD4F: FLdZeroAd var_94
  loc_B7CD52: CVarStr var_A4
  loc_B7CD55: FLdRfVar var_B4
  loc_B7CD58: ImpAdCallFPR4  = LCase()
  loc_B7CD5D: LitStr ";"
  loc_B7CD60: FLdRfVar var_90
  loc_B7CD63: LitI4 0
  loc_B7CD68: LitI2_Byte 0
  loc_B7CD6A: LitI4 2
  loc_B7CD6F: ImpAdLdI4 MemVar_C0F044
  loc_B7CD72: LitStr "habbos\"
  loc_B7CD75: ConcatStr
  loc_B7CD76: FStStrNoPop var_8C
  loc_B7CD79: LitStr "MOD-"
  loc_B7CD7C: ConcatStr
  loc_B7CD7D: CVarStr var_C4
  loc_B7CD80: FLdRfVar var_B4
  loc_B7CD83: ConcatVar var_D4
  loc_B7CD87: LitVarStr var_EC, "\badges.txt"
  loc_B7CD8C: ConcatVar var_148
  loc_B7CD90: CStrVarVal var_D8
  loc_B7CD94: ImpAdLdRf MemVar_C0F040
  loc_B7CD97: NewIfNullPr IFileSystem3
  loc_B7CD9A: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7CD9F: FLdPr var_90
  loc_B7CDA2: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7CDA7: FFreeStr var_8C = ""
  loc_B7CDAE: FFreeAd var_88 = ""
  loc_B7CDB5: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7CDC2: FLdRfVar var_94
  loc_B7CDC5: FLdPrThis
  loc_B7CDC6: VCallAd Control_ID_Text8
  loc_B7CDC9: FStAdFunc var_88
  loc_B7CDCC: FLdPr var_88
  loc_B7CDCF:  = Me.Text
  loc_B7CDD4: FLdZeroAd var_94
  loc_B7CDD7: CVarStr var_A4
  loc_B7CDDA: FLdRfVar var_B4
  loc_B7CDDD: ImpAdCallFPR4  = LCase()
  loc_B7CDE2: LitStr "0"
  loc_B7CDE5: FLdRfVar var_90
  loc_B7CDE8: LitI4 0
  loc_B7CDED: LitI2_Byte 0
  loc_B7CDEF: LitI4 2
  loc_B7CDF4: ImpAdLdI4 MemVar_C0F044
  loc_B7CDF7: LitStr "habbos\"
  loc_B7CDFA: ConcatStr
  loc_B7CDFB: FStStrNoPop var_8C
  loc_B7CDFE: LitStr "MOD-"
  loc_B7CE01: ConcatStr
  loc_B7CE02: CVarStr var_C4
  loc_B7CE05: FLdRfVar var_B4
  loc_B7CE08: ConcatVar var_D4
  loc_B7CE0C: LitVarStr var_EC, "\badgeonoff.txt"
  loc_B7CE11: ConcatVar var_148
  loc_B7CE15: CStrVarVal var_D8
  loc_B7CE19: ImpAdLdRf MemVar_C0F040
  loc_B7CE1C: NewIfNullPr IFileSystem3
  loc_B7CE1F: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7CE24: FLdPr var_90
  loc_B7CE27: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7CE2C: FFreeStr var_8C = ""
  loc_B7CE33: FFreeAd var_88 = ""
  loc_B7CE3A: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7CE47: FLdRfVar var_94
  loc_B7CE4A: FLdPrThis
  loc_B7CE4B: VCallAd Control_ID_Text8
  loc_B7CE4E: FStAdFunc var_88
  loc_B7CE51: FLdPr var_88
  loc_B7CE54:  = Me.Text
  loc_B7CE59: FLdZeroAd var_94
  loc_B7CE5C: CVarStr var_A4
  loc_B7CE5F: FLdRfVar var_B4
  loc_B7CE62: ImpAdCallFPR4  = LCase()
  loc_B7CE67: LitStr "ADM"
  loc_B7CE6A: FLdRfVar var_90
  loc_B7CE6D: LitI4 0
  loc_B7CE72: LitI2_Byte 0
  loc_B7CE74: LitI4 2
  loc_B7CE79: ImpAdLdI4 MemVar_C0F044
  loc_B7CE7C: LitStr "habbos\"
  loc_B7CE7F: ConcatStr
  loc_B7CE80: FStStrNoPop var_8C
  loc_B7CE83: LitStr "MOD-"
  loc_B7CE86: ConcatStr
  loc_B7CE87: CVarStr var_C4
  loc_B7CE8A: FLdRfVar var_B4
  loc_B7CE8D: ConcatVar var_D4
  loc_B7CE91: LitVarStr var_EC, "\curbadge.txt"
  loc_B7CE96: ConcatVar var_148
  loc_B7CE9A: CStrVarVal var_D8
  loc_B7CE9E: ImpAdLdRf MemVar_C0F040
  loc_B7CEA1: NewIfNullPr IFileSystem3
  loc_B7CEA4: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7CEA9: FLdPr var_90
  loc_B7CEAC: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7CEB1: FFreeStr var_8C = ""
  loc_B7CEB8: FFreeAd var_88 = ""
  loc_B7CEBF: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7CECC: FLdRfVar var_94
  loc_B7CECF: FLdPrThis
  loc_B7CED0: VCallAd Control_ID_Text8
  loc_B7CED3: FStAdFunc var_88
  loc_B7CED6: FLdPr var_88
  loc_B7CED9:  = Me.Text
  loc_B7CEDE: FLdZeroAd var_94
  loc_B7CEE1: CVarStr var_A4
  loc_B7CEE4: FLdRfVar var_B4
  loc_B7CEE7: ImpAdCallFPR4  = LCase()
  loc_B7CEEC: LitStr "0"
  loc_B7CEEF: FLdRfVar var_90
  loc_B7CEF2: LitI4 0
  loc_B7CEF7: LitI2_Byte 0
  loc_B7CEF9: LitI4 2
  loc_B7CEFE: ImpAdLdI4 MemVar_C0F044
  loc_B7CF01: LitStr "habbos\"
  loc_B7CF04: ConcatStr
  loc_B7CF05: FStStrNoPop var_8C
  loc_B7CF08: LitStr "MOD-"
  loc_B7CF0B: ConcatStr
  loc_B7CF0C: CVarStr var_C4
  loc_B7CF0F: FLdRfVar var_B4
  loc_B7CF12: ConcatVar var_D4
  loc_B7CF16: LitVarStr var_EC, "\credits.txt"
  loc_B7CF1B: ConcatVar var_148
  loc_B7CF1F: CStrVarVal var_D8
  loc_B7CF23: ImpAdLdRf MemVar_C0F040
  loc_B7CF26: NewIfNullPr IFileSystem3
  loc_B7CF29: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7CF2E: FLdPr var_90
  loc_B7CF31: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7CF36: FFreeStr var_8C = ""
  loc_B7CF3D: FFreeAd var_88 = ""
  loc_B7CF44: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7CF51: FLdRfVar var_D8
  loc_B7CF54: FLdPrThis
  loc_B7CF55: VCallAd Control_ID_Text8
  loc_B7CF58: FStAdFunc var_90
  loc_B7CF5B: FLdPr var_90
  loc_B7CF5E:  = Me.Text
  loc_B7CF63: FLdZeroAd var_D8
  loc_B7CF66: CVarStr var_A4
  loc_B7CF69: FLdRfVar var_B4
  loc_B7CF6C: ImpAdCallFPR4  = LCase()
  loc_B7CF71: LitStr "MOD-"
  loc_B7CF74: FLdRfVar var_8C
  loc_B7CF77: FLdPrThis
  loc_B7CF78: VCallAd Control_ID_Text8
  loc_B7CF7B: FStAdFunc var_88
  loc_B7CF7E: FLdPr var_88
  loc_B7CF81:  = Me.Text
  loc_B7CF86: ILdRf var_8C
  loc_B7CF89: ConcatStr
  loc_B7CF8A: FStStrNoPop var_130
  loc_B7CF8D: FLdRfVar var_120
  loc_B7CF90: LitI4 0
  loc_B7CF95: LitI2_Byte 0
  loc_B7CF97: LitI4 2
  loc_B7CF9C: ImpAdLdI4 MemVar_C0F044
  loc_B7CF9F: LitStr "habbos\"
  loc_B7CFA2: ConcatStr
  loc_B7CFA3: FStStrNoPop var_94
  loc_B7CFA6: LitStr "MOD-"
  loc_B7CFA9: ConcatStr
  loc_B7CFAA: CVarStr var_C4
  loc_B7CFAD: FLdRfVar var_B4
  loc_B7CFB0: ConcatVar var_D4
  loc_B7CFB4: LitVarStr var_EC, "\name.txt"
  loc_B7CFB9: ConcatVar var_148
  loc_B7CFBD: CStrVarVal var_128
  loc_B7CFC1: ImpAdLdRf MemVar_C0F040
  loc_B7CFC4: NewIfNullPr IFileSystem3
  loc_B7CFC7: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7CFCC: FLdPr var_120
  loc_B7CFCF: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7CFD4: FFreeStr var_8C = "": var_94 = "": var_128 = ""
  loc_B7CFDF: FFreeAd var_88 = "": var_90 = ""
  loc_B7CFE8: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7CFF5: FLdRfVar var_94
  loc_B7CFF8: FLdPrThis
  loc_B7CFF9: VCallAd Control_ID_Text8
  loc_B7CFFC: FStAdFunc var_88
  loc_B7CFFF: FLdPr var_88
  loc_B7D002:  = Me.Text
  loc_B7D007: FLdZeroAd var_94
  loc_B7D00A: CVarStr var_A4
  loc_B7D00D: FLdRfVar var_B4
  loc_B7D010: ImpAdCallFPR4  = LCase()
  loc_B7D015: LitStr "0"
  loc_B7D018: FLdRfVar var_90
  loc_B7D01B: LitI4 0
  loc_B7D020: LitI2_Byte 0
  loc_B7D022: LitI4 2
  loc_B7D027: ImpAdLdI4 MemVar_C0F044
  loc_B7D02A: LitStr "habbos\"
  loc_B7D02D: ConcatStr
  loc_B7D02E: FStStrNoPop var_8C
  loc_B7D031: LitStr "MOD-"
  loc_B7D034: ConcatStr
  loc_B7D035: CVarStr var_C4
  loc_B7D038: FLdRfVar var_B4
  loc_B7D03B: ConcatVar var_D4
  loc_B7D03F: LitVarStr var_EC, "\rooms.txt"
  loc_B7D044: ConcatVar var_148
  loc_B7D048: CStrVarVal var_D8
  loc_B7D04C: ImpAdLdRf MemVar_C0F040
  loc_B7D04F: NewIfNullPr IFileSystem3
  loc_B7D052: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7D057: FLdPr var_90
  loc_B7D05A: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7D05F: FFreeStr var_8C = ""
  loc_B7D066: FFreeAd var_88 = ""
  loc_B7D06D: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7D07A: FLdRfVar var_94
  loc_B7D07D: FLdPrThis
  loc_B7D07E: VCallAd Control_ID_Text8
  loc_B7D081: FStAdFunc var_88
  loc_B7D084: FLdPr var_88
  loc_B7D087:  = Me.Text
  loc_B7D08C: FLdZeroAd var_94
  loc_B7D08F: CVarStr var_A4
  loc_B7D092: FLdRfVar var_B4
  loc_B7D095: ImpAdCallFPR4  = LCase()
  loc_B7D09A: LitStr vbNullString
  loc_B7D09D: FLdRfVar var_90
  loc_B7D0A0: LitI4 0
  loc_B7D0A5: LitI2_Byte 0
  loc_B7D0A7: LitI4 2
  loc_B7D0AC: ImpAdLdI4 MemVar_C0F044
  loc_B7D0AF: LitStr "habbos\"
  loc_B7D0B2: ConcatStr
  loc_B7D0B3: FStStrNoPop var_8C
  loc_B7D0B6: LitStr "MOD-"
  loc_B7D0B9: ConcatStr
  loc_B7D0BA: CVarStr var_C4
  loc_B7D0BD: FLdRfVar var_B4
  loc_B7D0C0: ConcatVar var_D4
  loc_B7D0C4: LitVarStr var_EC, "\roomlist.txt"
  loc_B7D0C9: ConcatVar var_148
  loc_B7D0CD: CStrVarVal var_D8
  loc_B7D0D1: ImpAdLdRf MemVar_C0F040
  loc_B7D0D4: NewIfNullPr IFileSystem3
  loc_B7D0D7: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7D0DC: FLdPr var_90
  loc_B7D0DF: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7D0E4: FFreeStr var_8C = ""
  loc_B7D0EB: FFreeAd var_88 = ""
  loc_B7D0F2: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7D0FF: FLdRfVar var_94
  loc_B7D102: FLdPrThis
  loc_B7D103: VCallAd Control_ID_Text8
  loc_B7D106: FStAdFunc var_88
  loc_B7D109: FLdPr var_88
  loc_B7D10C:  = Me.Text
  loc_B7D111: FLdZeroAd var_94
  loc_B7D114: CVarStr var_A4
  loc_B7D117: FLdRfVar var_B4
  loc_B7D11A: ImpAdCallFPR4  = LCase()
  loc_B7D11F: LitStr vbNullString
  loc_B7D122: FLdRfVar var_90
  loc_B7D125: LitI4 0
  loc_B7D12A: LitI2_Byte 0
  loc_B7D12C: LitI4 2
  loc_B7D131: ImpAdLdI4 MemVar_C0F044
  loc_B7D134: LitStr "habbos\"
  loc_B7D137: ConcatStr
  loc_B7D138: FStStrNoPop var_8C
  loc_B7D13B: LitStr "MOD-"
  loc_B7D13E: ConcatStr
  loc_B7D13F: CVarStr var_C4
  loc_B7D142: FLdRfVar var_B4
  loc_B7D145: ConcatVar var_D4
  loc_B7D149: LitVarStr var_EC, "\inquiries.txt"
  loc_B7D14E: ConcatVar var_148
  loc_B7D152: CStrVarVal var_D8
  loc_B7D156: ImpAdLdRf MemVar_C0F040
  loc_B7D159: NewIfNullPr IFileSystem3
  loc_B7D15C: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7D161: FLdPr var_90
  loc_B7D164: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7D169: FFreeStr var_8C = ""
  loc_B7D170: FFreeAd var_88 = ""
  loc_B7D177: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7D184: FLdRfVar var_94
  loc_B7D187: FLdPrThis
  loc_B7D188: VCallAd Control_ID_Text8
  loc_B7D18B: FStAdFunc var_88
  loc_B7D18E: FLdPr var_88
  loc_B7D191:  = Me.Text
  loc_B7D196: FLdZeroAd var_94
  loc_B7D199: CVarStr var_A4
  loc_B7D19C: FLdRfVar var_B4
  loc_B7D19F: ImpAdCallFPR4  = LCase()
  loc_B7D1A4: LitStr vbNullString
  loc_B7D1A7: FLdRfVar var_90
  loc_B7D1AA: LitI4 0
  loc_B7D1AF: LitI2_Byte 0
  loc_B7D1B1: LitI4 2
  loc_B7D1B6: ImpAdLdI4 MemVar_C0F044
  loc_B7D1B9: LitStr "habbos\"
  loc_B7D1BC: ConcatStr
  loc_B7D1BD: FStStrNoPop var_8C
  loc_B7D1C0: LitStr "MOD-"
  loc_B7D1C3: ConcatStr
  loc_B7D1C4: CVarStr var_C4
  loc_B7D1C7: FLdRfVar var_B4
  loc_B7D1CA: ConcatVar var_D4
  loc_B7D1CE: LitVarStr var_EC, "\friendlist.txt"
  loc_B7D1D3: ConcatVar var_148
  loc_B7D1D7: CStrVarVal var_D8
  loc_B7D1DB: ImpAdLdRf MemVar_C0F040
  loc_B7D1DE: NewIfNullPr IFileSystem3
  loc_B7D1E1: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7D1E6: FLdPr var_90
  loc_B7D1E9: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7D1EE: FFreeStr var_8C = ""
  loc_B7D1F5: FFreeAd var_88 = ""
  loc_B7D1FC: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7D209: FLdRfVar var_94
  loc_B7D20C: FLdPrThis
  loc_B7D20D: VCallAd Control_ID_Text8
  loc_B7D210: FStAdFunc var_88
  loc_B7D213: FLdPr var_88
  loc_B7D216:  = Me.Text
  loc_B7D21B: FLdZeroAd var_94
  loc_B7D21E: CVarStr var_A4
  loc_B7D221: FLdRfVar var_B4
  loc_B7D224: ImpAdCallFPR4  = LCase()
  loc_B7D229: LitStr " "
  loc_B7D22C: FLdRfVar var_90
  loc_B7D22F: LitI4 0
  loc_B7D234: LitI2_Byte 0
  loc_B7D236: LitI4 2
  loc_B7D23B: ImpAdLdI4 MemVar_C0F044
  loc_B7D23E: LitStr "habbos\"
  loc_B7D241: ConcatStr
  loc_B7D242: FStStrNoPop var_8C
  loc_B7D245: LitStr "MOD-"
  loc_B7D248: ConcatStr
  loc_B7D249: CVarStr var_C4
  loc_B7D24C: FLdRfVar var_B4
  loc_B7D24F: ConcatVar var_D4
  loc_B7D253: LitVarStr var_EC, "\mission.txt"
  loc_B7D258: ConcatVar var_148
  loc_B7D25C: CStrVarVal var_D8
  loc_B7D260: ImpAdLdRf MemVar_C0F040
  loc_B7D263: NewIfNullPr IFileSystem3
  loc_B7D266: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7D26B: FLdPr var_90
  loc_B7D26E: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7D273: FFreeStr var_8C = ""
  loc_B7D27A: FFreeAd var_88 = ""
  loc_B7D281: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7D28E: FLdRfVar var_94
  loc_B7D291: FLdPrThis
  loc_B7D292: VCallAd Control_ID_Text8
  loc_B7D295: FStAdFunc var_88
  loc_B7D298: FLdPr var_88
  loc_B7D29B:  = Me.Text
  loc_B7D2A0: FLdZeroAd var_94
  loc_B7D2A3: CVarStr var_A4
  loc_B7D2A6: FLdRfVar var_B4
  loc_B7D2A9: ImpAdCallFPR4  = LCase()
  loc_B7D2AE: LitStr " "
  loc_B7D2B1: FLdRfVar var_90
  loc_B7D2B4: LitI4 0
  loc_B7D2B9: LitI2_Byte 0
  loc_B7D2BB: LitI4 2
  loc_B7D2C0: ImpAdLdI4 MemVar_C0F044
  loc_B7D2C3: LitStr "habbos\"
  loc_B7D2C6: ConcatStr
  loc_B7D2C7: FStStrNoPop var_8C
  loc_B7D2CA: LitStr "MOD-"
  loc_B7D2CD: ConcatStr
  loc_B7D2CE: CVarStr var_C4
  loc_B7D2D1: FLdRfVar var_B4
  loc_B7D2D4: ConcatVar var_D4
  loc_B7D2D8: LitVarStr var_EC, "\consolemission.txt"
  loc_B7D2DD: ConcatVar var_148
  loc_B7D2E1: CStrVarVal var_D8
  loc_B7D2E5: ImpAdLdRf MemVar_C0F040
  loc_B7D2E8: NewIfNullPr IFileSystem3
  loc_B7D2EB: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7D2F0: FLdPr var_90
  loc_B7D2F3: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7D2F8: FFreeStr var_8C = ""
  loc_B7D2FF: FFreeAd var_88 = ""
  loc_B7D306: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7D313: LitI2_Byte 0
  loc_B7D315: ImpAdLdI4 MemVar_C0F044
  loc_B7D318: LitStr "habbos\"
  loc_B7D31B: ConcatStr
  loc_B7D31C: FStStrNoPop var_8C
  loc_B7D31F: LitStr "MOD-"
  loc_B7D322: ConcatStr
  loc_B7D323: CVarStr var_C4
  loc_B7D326: FLdRfVar var_94
  loc_B7D329: FLdPrThis
  loc_B7D32A: VCallAd Control_ID_Text8
  loc_B7D32D: FStAdFunc var_88
  loc_B7D330: FLdPr var_88
  loc_B7D333:  = Me.Text
  loc_B7D338: FLdZeroAd var_94
  loc_B7D33B: CVarStr var_A4
  loc_B7D33E: FLdRfVar var_B4
  loc_B7D341: ImpAdCallFPR4  = LCase()
  loc_B7D346: FLdRfVar var_B4
  loc_B7D349: ConcatVar var_D4
  loc_B7D34D: LitVarStr var_EC, "\directmail"
  loc_B7D352: ConcatVar var_148
  loc_B7D356: CStrVarVal var_D8
  loc_B7D35A: ImpAdLdRf MemVar_C0F040
  loc_B7D35D: NewIfNullPr IFileSystem3
  loc_B7D360: from_stack_3 = IFileSystem3.IFileSystem.DeleteFolder(from_stack_1v, from_stack_2b)
  loc_B7D365: FFreeStr var_8C = ""
  loc_B7D36C: FFree1Ad var_88
  loc_B7D36F: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7D37C: FLdRfVar var_90
  loc_B7D37F: ImpAdLdI4 MemVar_C0F044
  loc_B7D382: LitStr "habbos\"
  loc_B7D385: ConcatStr
  loc_B7D386: FStStrNoPop var_8C
  loc_B7D389: LitStr "MOD-"
  loc_B7D38C: ConcatStr
  loc_B7D38D: CVarStr var_C4
  loc_B7D390: FLdRfVar var_94
  loc_B7D393: FLdPrThis
  loc_B7D394: VCallAd Control_ID_Text8
  loc_B7D397: FStAdFunc var_88
  loc_B7D39A: FLdPr var_88
  loc_B7D39D:  = Me.Text
  loc_B7D3A2: FLdZeroAd var_94
  loc_B7D3A5: CVarStr var_A4
  loc_B7D3A8: FLdRfVar var_B4
  loc_B7D3AB: ImpAdCallFPR4  = LCase()
  loc_B7D3B0: FLdRfVar var_B4
  loc_B7D3B3: ConcatVar var_D4
  loc_B7D3B7: LitVarStr var_EC, "\directmail"
  loc_B7D3BC: ConcatVar var_148
  loc_B7D3C0: CStrVarVal var_D8
  loc_B7D3C4: ImpAdLdRf MemVar_C0F040
  loc_B7D3C7: NewIfNullPr IFileSystem3
  loc_B7D3CA: from_stack_2 = IFileSystem3.IFileSystem.CreateFolder(from_stack_1v)
  loc_B7D3CF: FFreeStr var_8C = ""
  loc_B7D3D6: FFreeAd var_88 = ""
  loc_B7D3DD: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7D3EA: FLdRfVar var_94
  loc_B7D3ED: FLdPrThis
  loc_B7D3EE: VCallAd Control_ID_Text8
  loc_B7D3F1: FStAdFunc var_88
  loc_B7D3F4: FLdPr var_88
  loc_B7D3F7:  = Me.Text
  loc_B7D3FC: FLdZeroAd var_94
  loc_B7D3FF: CVarStr var_A4
  loc_B7D402: FLdRfVar var_B4
  loc_B7D405: ImpAdCallFPR4  = LCase()
  loc_B7D40A: LitStr "0"
  loc_B7D40D: FLdRfVar var_90
  loc_B7D410: LitI4 0
  loc_B7D415: LitI2_Byte &HFF
  loc_B7D417: LitI4 2
  loc_B7D41C: ImpAdLdI4 MemVar_C0F044
  loc_B7D41F: LitStr "habbos\"
  loc_B7D422: ConcatStr
  loc_B7D423: FStStrNoPop var_8C
  loc_B7D426: LitStr "MOD-"
  loc_B7D429: ConcatStr
  loc_B7D42A: CVarStr var_C4
  loc_B7D42D: FLdRfVar var_B4
  loc_B7D430: ConcatVar var_D4
  loc_B7D434: LitVarStr var_EC, "\directmail\count.txt"
  loc_B7D439: ConcatVar var_148
  loc_B7D43D: CStrVarVal var_D8
  loc_B7D441: ImpAdLdRf MemVar_C0F040
  loc_B7D444: NewIfNullPr IFileSystem3
  loc_B7D447: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7D44C: FLdPr var_90
  loc_B7D44F: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7D454: FFreeStr var_8C = ""
  loc_B7D45B: FFreeAd var_88 = ""
  loc_B7D462: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7D46F: FLdRfVar var_94
  loc_B7D472: FLdPrThis
  loc_B7D473: VCallAd Control_ID_Text8
  loc_B7D476: FStAdFunc var_88
  loc_B7D479: FLdPr var_88
  loc_B7D47C:  = Me.Text
  loc_B7D481: FLdZeroAd var_94
  loc_B7D484: CVarStr var_A4
  loc_B7D487: FLdRfVar var_B4
  loc_B7D48A: ImpAdCallFPR4  = LCase()
  loc_B7D48F: LitStr "moderator"
  loc_B7D492: FLdRfVar var_90
  loc_B7D495: LitI4 0
  loc_B7D49A: LitI2_Byte 0
  loc_B7D49C: LitI4 2
  loc_B7D4A1: ImpAdLdI4 MemVar_C0F044
  loc_B7D4A4: LitStr "habbos\"
  loc_B7D4A7: ConcatStr
  loc_B7D4A8: FStStrNoPop var_8C
  loc_B7D4AB: LitStr "MOD-"
  loc_B7D4AE: ConcatStr
  loc_B7D4AF: CVarStr var_C4
  loc_B7D4B2: FLdRfVar var_B4
  loc_B7D4B5: ConcatVar var_D4
  loc_B7D4B9: LitVarStr var_EC, "\rank.txt"
  loc_B7D4BE: ConcatVar var_148
  loc_B7D4C2: CStrVarVal var_D8
  loc_B7D4C6: ImpAdLdRf MemVar_C0F040
  loc_B7D4C9: NewIfNullPr IFileSystem3
  loc_B7D4CC: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7D4D1: FLdPr var_90
  loc_B7D4D4: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7D4D9: FFreeStr var_8C = ""
  loc_B7D4E0: FFreeAd var_88 = ""
  loc_B7D4E7: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7D4F4: FLdRfVar var_94
  loc_B7D4F7: FLdPrThis
  loc_B7D4F8: VCallAd Control_ID_Text8
  loc_B7D4FB: FStAdFunc var_88
  loc_B7D4FE: FLdPr var_88
  loc_B7D501:  = Me.Text
  loc_B7D506: FLdZeroAd var_94
  loc_B7D509: CVarStr var_A4
  loc_B7D50C: FLdRfVar var_B4
  loc_B7D50F: ImpAdCallFPR4  = LCase()
  loc_B7D514: LitStr "0"
  loc_B7D517: FLdRfVar var_90
  loc_B7D51A: LitI4 0
  loc_B7D51F: LitI2_Byte 0
  loc_B7D521: LitI4 2
  loc_B7D526: ImpAdLdI4 MemVar_C0F044
  loc_B7D529: LitStr "habbos\"
  loc_B7D52C: ConcatStr
  loc_B7D52D: FStStrNoPop var_8C
  loc_B7D530: LitStr "MOD-"
  loc_B7D533: ConcatStr
  loc_B7D534: CVarStr var_C4
  loc_B7D537: FLdRfVar var_B4
  loc_B7D53A: ConcatVar var_D4
  loc_B7D53E: LitVarStr var_EC, "\hcdays.txt"
  loc_B7D543: ConcatVar var_148
  loc_B7D547: CStrVarVal var_D8
  loc_B7D54B: ImpAdLdRf MemVar_C0F040
  loc_B7D54E: NewIfNullPr IFileSystem3
  loc_B7D551: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7D556: FLdPr var_90
  loc_B7D559: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7D55E: FFreeStr var_8C = ""
  loc_B7D565: FFreeAd var_88 = ""
  loc_B7D56C: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7D579: FLdRfVar var_94
  loc_B7D57C: FLdPrThis
  loc_B7D57D: VCallAd Control_ID_Text8
  loc_B7D580: FStAdFunc var_88
  loc_B7D583: FLdPr var_88
  loc_B7D586:  = Me.Text
  loc_B7D58B: FLdZeroAd var_94
  loc_B7D58E: CVarStr var_A4
  loc_B7D591: FLdRfVar var_B4
  loc_B7D594: ImpAdCallFPR4  = LCase()
  loc_B7D599: LitStr "0"
  loc_B7D59C: FLdRfVar var_90
  loc_B7D59F: LitI4 0
  loc_B7D5A4: LitI2_Byte 0
  loc_B7D5A6: LitI4 2
  loc_B7D5AB: ImpAdLdI4 MemVar_C0F044
  loc_B7D5AE: LitStr "habbos\"
  loc_B7D5B1: ConcatStr
  loc_B7D5B2: FStStrNoPop var_8C
  loc_B7D5B5: LitStr "MOD-"
  loc_B7D5B8: ConcatStr
  loc_B7D5B9: CVarStr var_C4
  loc_B7D5BC: FLdRfVar var_B4
  loc_B7D5BF: ConcatVar var_D4
  loc_B7D5C3: LitVarStr var_EC, "\periods.txt"
  loc_B7D5C8: ConcatVar var_148
  loc_B7D5CC: CStrVarVal var_D8
  loc_B7D5D0: ImpAdLdRf MemVar_C0F040
  loc_B7D5D3: NewIfNullPr IFileSystem3
  loc_B7D5D6: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7D5DB: FLdPr var_90
  loc_B7D5DE: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7D5E3: FFreeStr var_8C = ""
  loc_B7D5EA: FFreeAd var_88 = ""
  loc_B7D5F1: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7D5FE: FLdRfVar var_94
  loc_B7D601: FLdRfVar var_88
  loc_B7D604: LitI4 0
  loc_B7D609: LitI2_Byte 0
  loc_B7D60B: LitI4 1
  loc_B7D610: ImpAdLdI4 MemVar_C0F044
  loc_B7D613: LitStr "habbos\count.txt"
  loc_B7D616: ConcatStr
  loc_B7D617: FStStrNoPop var_8C
  loc_B7D61A: ImpAdLdRf MemVar_C0F040
  loc_B7D61D: NewIfNullPr IFileSystem3
  loc_B7D620: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7D625: FLdPr var_88
  loc_B7D628:  = Me.ReadAll
  loc_B7D62D: ILdRf var_94
  loc_B7D630: ImpAdCallFPR4 push push Val()
  loc_B7D635: LitI2_Byte 1
  loc_B7D637: CR8I2
  loc_B7D638: AddR8
  loc_B7D639: CVarR8
  loc_B7D63D: FStVar var_188
  loc_B7D641: FFreeStr var_8C = ""
  loc_B7D648: FFree1Ad var_88
  loc_B7D64B: FLdRfVar var_188
  loc_B7D64E: CStrVarVal var_94
  loc_B7D652: FLdRfVar var_88
  loc_B7D655: LitI4 0
  loc_B7D65A: LitI2_Byte 0
  loc_B7D65C: LitI4 2
  loc_B7D661: ImpAdLdI4 MemVar_C0F044
  loc_B7D664: LitStr "habbos\count.txt"
  loc_B7D667: ConcatStr
  loc_B7D668: FStStrNoPop var_8C
  loc_B7D66B: ImpAdLdRf MemVar_C0F040
  loc_B7D66E: NewIfNullPr IFileSystem3
  loc_B7D671: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7D676: FLdPr var_88
  loc_B7D679: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7D67E: FFreeStr var_8C = ""
  loc_B7D685: FFree1Ad var_88
  loc_B7D688: FLdRfVar var_94
  loc_B7D68B: FLdPrThis
  loc_B7D68C: VCallAd Control_ID_Text8
  loc_B7D68F: FStAdFunc var_88
  loc_B7D692: FLdPr var_88
  loc_B7D695:  = Me.Text
  loc_B7D69A: FLdZeroAd var_94
  loc_B7D69D: CVarStr var_A4
  loc_B7D6A0: FLdRfVar var_B4
  loc_B7D6A3: ImpAdCallFPR4  = LCase()
  loc_B7D6A8: FLdRfVar var_188
  loc_B7D6AB: CStrVarVal var_128
  loc_B7D6AF: FLdRfVar var_90
  loc_B7D6B2: LitI4 0
  loc_B7D6B7: LitI2_Byte 0
  loc_B7D6B9: LitI4 2
  loc_B7D6BE: ImpAdLdI4 MemVar_C0F044
  loc_B7D6C1: LitStr "habbos\"
  loc_B7D6C4: ConcatStr
  loc_B7D6C5: FStStrNoPop var_8C
  loc_B7D6C8: LitStr "MOD-"
  loc_B7D6CB: ConcatStr
  loc_B7D6CC: CVarStr var_C4
  loc_B7D6CF: FLdRfVar var_B4
  loc_B7D6D2: ConcatVar var_D4
  loc_B7D6D6: LitVarStr var_EC, "\num.txt"
  loc_B7D6DB: ConcatVar var_148
  loc_B7D6DF: CStrVarVal var_D8
  loc_B7D6E3: ImpAdLdRf MemVar_C0F040
  loc_B7D6E6: NewIfNullPr IFileSystem3
  loc_B7D6E9: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7D6EE: FLdPr var_90
  loc_B7D6F1: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7D6F6: FFreeStr var_8C = "": var_D8 = ""
  loc_B7D6FF: FFreeAd var_88 = ""
  loc_B7D706: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7D713: FLdPrThis
  loc_B7D714: VCallAd Control_ID_Combo1
  loc_B7D717: FStAdFunc var_88
  loc_B7D71A: FLdPr var_88
  loc_B7D71D: Me.Clear
  loc_B7D722: FFree1Ad var_88
  loc_B7D725: LitStr " -- "
  loc_B7D728: LitVarStr var_EC, "choose_a_user"
  loc_B7D72D: PopAdLdVar
  loc_B7D72E: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7D733: FStStrNoPop var_8C
  loc_B7D736: ConcatStr
  loc_B7D737: FStStrNoPop var_94
  loc_B7D73A: LitStr " -- "
  loc_B7D73D: ConcatStr
  loc_B7D73E: FStStrNoPop var_D8
  loc_B7D741: FLdPrThis
  loc_B7D742: VCallAd Control_ID_Combo1
  loc_B7D745: FStAdFunc var_88
  loc_B7D748: FLdPr var_88
  loc_B7D74B: Me.Text = from_stack_1
  loc_B7D750: FFreeStr var_8C = "": var_94 = ""
  loc_B7D759: FFree1Ad var_88
  loc_B7D75C: FLdRfVar var_90
  loc_B7D75F: FLdRfVar var_88
  loc_B7D762: ImpAdLdI4 MemVar_C0F044
  loc_B7D765: LitStr "habbos"
  loc_B7D768: ConcatStr
  loc_B7D769: FStStrNoPop var_8C
  loc_B7D76C: ImpAdLdRf MemVar_C0F040
  loc_B7D76F: NewIfNullPr IFileSystem3
  loc_B7D772: from_stack_2 = IFileSystem3.IFileSystem.GetFolder(from_stack_1v)
  loc_B7D777: FLdPr var_88
  loc_B7D77A:  = Me.SubFolders
  loc_B7D77F: FLdZeroAd var_90
  loc_B7D782: FStAdFuncNoPop
  loc_B7D785: FLdPr Me
  loc_B7D788: MemLdRfVar from_stack_1.global_52
  loc_B7D78B: FFree1Str var_8C
  loc_B7D78E: FFree1Ad var_88
  loc_B7D791: ForEachCollObj
  loc_B7D799: FLdRfVar var_DA
  loc_B7D79C: FLdRfVar var_8C
  loc_B7D79F: FLdPr Me
  loc_B7D7A2: MemLdPr global_52
  loc_B7D7A5:  = Me.Path
  loc_B7D7AA: ILdRf var_8C
  loc_B7D7AD: LitStr "\name.txt"
  loc_B7D7B0: ConcatStr
  loc_B7D7B1: FStStrNoPop var_94
  loc_B7D7B4: ImpAdLdRf MemVar_C0F040
  loc_B7D7B7: NewIfNullPr IFileSystem3
  loc_B7D7BA: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B7D7BF: FLdI2 var_DA
  loc_B7D7C2: LitI2_Byte &HFF
  loc_B7D7C4: EqI2
  loc_B7D7C5: FFreeStr var_8C = ""
  loc_B7D7CC: BranchF loc_B7D832
  loc_B7D7CF: FLdRfVar var_8C
  loc_B7D7D2: FLdPr Me
  loc_B7D7D5: MemLdPr global_52
  loc_B7D7D8:  = Me.Path
  loc_B7D7DD: FLdRfVar var_D8
  loc_B7D7E0: FLdRfVar var_88
  loc_B7D7E3: LitI4 0
  loc_B7D7E8: LitI2_Byte 0
  loc_B7D7EA: LitI4 1
  loc_B7D7EF: ILdRf var_8C
  loc_B7D7F2: LitStr "\name.txt"
  loc_B7D7F5: ConcatStr
  loc_B7D7F6: FStStrNoPop var_94
  loc_B7D7F9: ImpAdLdRf MemVar_C0F040
  loc_B7D7FC: NewIfNullPr IFileSystem3
  loc_B7D7FF: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7D804: FLdPr var_88
  loc_B7D807:  = Me.ReadAll
  loc_B7D80C: LitVar_Missing var_EC
  loc_B7D80F: PopAdLdVar
  loc_B7D810: ILdRf var_D8
  loc_B7D813: FLdPrThis
  loc_B7D814: VCallAd Control_ID_Combo1
  loc_B7D817: FStAdFunc var_90
  loc_B7D81A: FLdPr var_90
  loc_B7D81D: Me.AddItem from_stack_1, from_stack_2
  loc_B7D822: FFreeStr var_8C = "": var_94 = ""
  loc_B7D82B: FFreeAd var_88 = ""
  loc_B7D832: FLdPr Me
  loc_B7D835: MemLdRfVar from_stack_1.global_52
  loc_B7D838: NextEachCollObj
  loc_B7D840: LitStr vbNullString
  loc_B7D843: FLdPrThis
  loc_B7D844: VCallAd Control_ID_Text8
  loc_B7D847: FStAdFunc var_88
  loc_B7D84A: FLdPr var_88
  loc_B7D84D: Me.Text = from_stack_1
  loc_B7D852: FFree1Ad var_88
  loc_B7D855: LitStr vbNullString
  loc_B7D858: FLdPrThis
  loc_B7D859: VCallAd Control_ID_Text9
  loc_B7D85C: FStAdFunc var_88
  loc_B7D85F: FLdPr var_88
  loc_B7D862: Me.Text = from_stack_1
  loc_B7D867: FFree1Ad var_88
  loc_B7D86A: LitStr vbNullString
  loc_B7D86D: FLdPrThis
  loc_B7D86E: VCallAd Control_ID_Text10
  loc_B7D871: FStAdFunc var_88
  loc_B7D874: FLdPr var_88
  loc_B7D877: Me.Text = from_stack_1
  loc_B7D87C: FFree1Ad var_88
  loc_B7D87F: LitStr vbNullString
  loc_B7D882: FLdPrThis
  loc_B7D883: VCallAd Control_ID_Text11
  loc_B7D886: FStAdFunc var_88
  loc_B7D889: FLdPr var_88
  loc_B7D88C: Me.Text = from_stack_1
  loc_B7D891: FFree1Ad var_88
  loc_B7D894: LitVarStr var_EC, "ranks"
  loc_B7D899: PopAdLdVar
  loc_B7D89A: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7D89F: FStStrNoPop var_8C
  loc_B7D8A2: FLdPrThis
  loc_B7D8A3: VCallAd Control_ID_Combo2
  loc_B7D8A6: FStAdFunc var_88
  loc_B7D8A9: FLdPr var_88
  loc_B7D8AC: Me.Text = from_stack_1
  loc_B7D8B1: FFree1Str var_8C
  loc_B7D8B4: FFree1Ad var_88
  loc_B7D8B7: Branch loc_B7E612
  loc_B7D8BA: FLdRfVar var_8C
  loc_B7D8BD: FLdPrThis
  loc_B7D8BE: VCallAd Control_ID_Text8
  loc_B7D8C1: FStAdFunc var_88
  loc_B7D8C4: FLdPr var_88
  loc_B7D8C7:  = Me.Text
  loc_B7D8CC: FLdZeroAd var_8C
  loc_B7D8CF: CVarStr var_A4
  loc_B7D8D2: FLdRfVar var_B4
  loc_B7D8D5: ImpAdCallFPR4  = LCase()
  loc_B7D8DA: FLdRfVar var_D8
  loc_B7D8DD: FLdRfVar var_90
  loc_B7D8E0: LitI4 0
  loc_B7D8E5: LitI2_Byte 0
  loc_B7D8E7: LitI4 1
  loc_B7D8EC: ImpAdLdI4 MemVar_C0F044
  loc_B7D8EF: LitStr "habbos\"
  loc_B7D8F2: ConcatStr
  loc_B7D8F3: CVarStr var_C4
  loc_B7D8F6: FLdRfVar var_B4
  loc_B7D8F9: ConcatVar var_D4
  loc_B7D8FD: LitVarStr var_EC, "\rank.txt"
  loc_B7D902: ConcatVar var_148
  loc_B7D906: CStrVarVal var_94
  loc_B7D90A: ImpAdLdRf MemVar_C0F040
  loc_B7D90D: NewIfNullPr IFileSystem3
  loc_B7D910: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7D915: FLdPr var_90
  loc_B7D918:  = Me.ReadAll
  loc_B7D91D: ILdRf var_D8
  loc_B7D920: LitStr "moderator"
  loc_B7D923: EqStr
  loc_B7D925: FLdRfVar var_128
  loc_B7D928: FLdPrThis
  loc_B7D929: VCallAd Control_ID_Combo2
  loc_B7D92C: FStAdFunc var_120
  loc_B7D92F: FLdPr var_120
  loc_B7D932:  = Me.Text
  loc_B7D937: ILdRf var_128
  loc_B7D93A: LitStr "moderator"
  loc_B7D93D: NeStr
  loc_B7D93F: AndI4
  loc_B7D940: FFreeStr var_94 = "": var_D8 = ""
  loc_B7D949: FFreeAd var_88 = "": var_90 = ""
  loc_B7D952: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7D95F: BranchF loc_B7E09A
  loc_B7D962: LitVarStr var_EC, "mod_to_user_msg"
  loc_B7D967: PopAdLdVar
  loc_B7D968: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7D96D: FStStr var_D8
  loc_B7D970: FLdRfVar var_8C
  loc_B7D973: FLdPrThis
  loc_B7D974: VCallAd Control_ID_Text8
  loc_B7D977: FStAdFunc var_88
  loc_B7D97A: FLdPr var_88
  loc_B7D97D:  = Me.Text
  loc_B7D982: LitI4 0
  loc_B7D987: LitI4 -1
  loc_B7D98C: LitI4 1
  loc_B7D991: ILdRf var_8C
  loc_B7D994: LitStr Chr(37) & "name" & Chr(37)
  loc_B7D997: FLdZeroAd var_D8
  loc_B7D99A: FStStrNoPop var_94
  loc_B7D99D: ImpAdCallI2 Replace(, , , , , )
  loc_B7D9A2: FStStr var_128
  loc_B7D9A5: LitVar_Missing var_D4
  loc_B7D9A8: LitVar_Missing var_C4
  loc_B7D9AB: LitVarStr var_FC, "Server"
  loc_B7D9B0: FStVarCopyObj var_B4
  loc_B7D9B3: FLdRfVar var_B4
  loc_B7D9B6: LitI4 &H24
  loc_B7D9BB: FLdZeroAd var_128
  loc_B7D9BE: CVarStr var_A4
  loc_B7D9C1: ImpAdCallI2 MsgBox(, , , , )
  loc_B7D9C6: LitI4 7
  loc_B7D9CB: EqI4
  loc_B7D9CC: FFreeStr var_94 = "": var_8C = "": var_D8 = ""
  loc_B7D9D7: FFree1Ad var_88
  loc_B7D9DA: FFreeVar var_A4 = "": var_B4 = "": var_C4 = ""
  loc_B7D9E5: BranchF loc_B7D9EB
  loc_B7D9E8: Branch loc_B7E612
  loc_B7D9EB: LitVarI2 var_10C, 1
  loc_B7D9F0: FLdRfVar var_1A0
  loc_B7D9F3: FLdRfVar var_1A4
  loc_B7D9F6: ImpAdLdRf MemVar_C0F018
  loc_B7D9F9: NewIfNullPr frmMain
  loc_B7D9FC: from_stack_1v = frmMain.SockIGet()
  loc_B7DA01: ILdRf var_1A4
  loc_B7DA04: CVarI4
  loc_B7DA08: ForVar var_1C4
  loc_B7DA0E: FLdRfVar var_1A0
  loc_B7DA11: CI4Var
  loc_B7DA13: ImpAdLdI4 MemVar_C0F100
  loc_B7DA16: AryLock
  loc_B7DA19: Ary1LdPr
  loc_B7DA1A: MemLdRfVar from_stack_1.global_204
  loc_B7DA1D: CVarRef
  loc_B7DA22: FLdRfVar var_A4
  loc_B7DA25: ImpAdCallFPR4  = LCase()
  loc_B7DA2A: AryUnlock
  loc_B7DA2D: FLdRfVar var_A4
  loc_B7DA30: FLdRfVar var_8C
  loc_B7DA33: FLdPrThis
  loc_B7DA34: VCallAd Control_ID_pub_name_5
  loc_B7DA37: FStAdFunc var_88
  loc_B7DA3A: FLdPr var_88
  loc_B7DA3D:  = frmMain.TextBox.Text
  loc_B7DA42: FLdZeroAd var_8C
  loc_B7DA45: CVarStr var_B4
  loc_B7DA48: FLdRfVar var_C4
  loc_B7DA4B: ImpAdCallFPR4  = LCase()
  loc_B7DA50: FLdRfVar var_C4
  loc_B7DA53: EqVar var_D4
  loc_B7DA57: FLdRfVar var_120
  loc_B7DA5A: FLdRfVar var_1A0
  loc_B7DA5D: CI2Var
  loc_B7DA5E: ImpAdLdRf MemVar_C0F018
  loc_B7DA61: NewIfNullPr frmMain
  loc_B7DA64: VCallAd Control_ID_
  loc_B7DA67: FStAdFunc var_90
  loc_B7DA6A: FLdPr var_90
  loc_B7DA6D: Set from_stack_2 = frmMain(from_stack_1)
  loc_B7DA72: FLdPr var_120
  loc_B7DA75: LateIdLdVar var_148 DispID_8 0
  loc_B7DA7C: CI2Var
  loc_B7DA7D: CI4UI1
  loc_B7DA7E: LitI4 7
  loc_B7DA83: EqI4
  loc_B7DA84: CVarBoolI2 var_FC
  loc_B7DA88: AndVar var_158
  loc_B7DA8C: CBoolVarNull
  loc_B7DA8E: FFreeAd var_88 = "": var_90 = ""
  loc_B7DA97: FFreeVar var_B4 = "": var_A4 = "": var_C4 = "": var_148 = ""
  loc_B7DAA4: BranchF loc_B7DAD4
  loc_B7DAA7: FLdRfVar var_90
  loc_B7DAAA: FLdRfVar var_1A0
  loc_B7DAAD: CI2Var
  loc_B7DAAE: ImpAdLdRf MemVar_C0F018
  loc_B7DAB1: NewIfNullPr frmMain
  loc_B7DAB4: VCallAd Control_ID_
  loc_B7DAB7: FStAdFunc var_88
  loc_B7DABA: FLdPr var_88
  loc_B7DABD: Set from_stack_2 = frmMain(from_stack_1)
  loc_B7DAC2: FLdPr var_90
  loc_B7DAC5: LateIdCall
  loc_B7DACD: FFreeAd var_88 = ""
  loc_B7DAD4: FLdRfVar var_1A0
  loc_B7DAD7: NextStepVar var_1C4
  loc_B7DADD: LitI2_Byte 0
  loc_B7DADF: ImpAdLdI4 MemVar_C0F044
  loc_B7DAE2: LitStr "habbos\"
  loc_B7DAE5: ConcatStr
  loc_B7DAE6: CVarStr var_C4
  loc_B7DAE9: FLdRfVar var_8C
  loc_B7DAEC: FLdPrThis
  loc_B7DAED: VCallAd Control_ID_Text8
  loc_B7DAF0: FStAdFunc var_88
  loc_B7DAF3: FLdPr var_88
  loc_B7DAF6:  = Me.Text
  loc_B7DAFB: FLdZeroAd var_8C
  loc_B7DAFE: CVarStr var_A4
  loc_B7DB01: FLdRfVar var_B4
  loc_B7DB04: ImpAdCallFPR4  = LCase()
  loc_B7DB09: FLdRfVar var_B4
  loc_B7DB0C: ConcatVar var_D4
  loc_B7DB10: CStrVarVal var_94
  loc_B7DB14: ImpAdLdRf MemVar_C0F040
  loc_B7DB17: NewIfNullPr IFileSystem3
  loc_B7DB1A: from_stack_3 = IFileSystem3.IFileSystem.DeleteFolder(from_stack_1v, from_stack_2b)
  loc_B7DB1F: FFree1Str var_94
  loc_B7DB22: FFree1Ad var_88
  loc_B7DB25: FFreeVar var_A4 = "": var_C4 = "": var_B4 = ""
  loc_B7DB30: FLdPrThis
  loc_B7DB31: VCallAd Control_ID_Combo1
  loc_B7DB34: FStAdFunc var_88
  loc_B7DB37: FLdPr var_88
  loc_B7DB3A: Me.Clear
  loc_B7DB3F: FFree1Ad var_88
  loc_B7DB42: LitStr " -- "
  loc_B7DB45: LitVarStr var_EC, "choose_a_user"
  loc_B7DB4A: PopAdLdVar
  loc_B7DB4B: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7DB50: FStStrNoPop var_8C
  loc_B7DB53: ConcatStr
  loc_B7DB54: FStStrNoPop var_94
  loc_B7DB57: LitStr " -- "
  loc_B7DB5A: ConcatStr
  loc_B7DB5B: FStStrNoPop var_D8
  loc_B7DB5E: FLdPrThis
  loc_B7DB5F: VCallAd Control_ID_Combo1
  loc_B7DB62: FStAdFunc var_88
  loc_B7DB65: FLdPr var_88
  loc_B7DB68: Me.Text = from_stack_1
  loc_B7DB6D: FFreeStr var_8C = "": var_94 = ""
  loc_B7DB76: FFree1Ad var_88
  loc_B7DB79: FLdRfVar var_90
  loc_B7DB7C: FLdRfVar var_88
  loc_B7DB7F: ImpAdLdI4 MemVar_C0F044
  loc_B7DB82: LitStr "habbos"
  loc_B7DB85: ConcatStr
  loc_B7DB86: FStStrNoPop var_8C
  loc_B7DB89: ImpAdLdRf MemVar_C0F040
  loc_B7DB8C: NewIfNullPr IFileSystem3
  loc_B7DB8F: from_stack_2 = IFileSystem3.IFileSystem.GetFolder(from_stack_1v)
  loc_B7DB94: FLdPr var_88
  loc_B7DB97:  = Me.SubFolders
  loc_B7DB9C: FLdZeroAd var_90
  loc_B7DB9F: FStAdFuncNoPop
  loc_B7DBA2: FLdPr Me
  loc_B7DBA5: MemLdRfVar from_stack_1.global_52
  loc_B7DBA8: FFree1Str var_8C
  loc_B7DBAB: FFree1Ad var_88
  loc_B7DBAE: ForEachCollObj
  loc_B7DBB6: FLdRfVar var_DA
  loc_B7DBB9: FLdRfVar var_8C
  loc_B7DBBC: FLdPr Me
  loc_B7DBBF: MemLdPr global_52
  loc_B7DBC2:  = Me.Path
  loc_B7DBC7: ILdRf var_8C
  loc_B7DBCA: LitStr "\name.txt"
  loc_B7DBCD: ConcatStr
  loc_B7DBCE: FStStrNoPop var_94
  loc_B7DBD1: ImpAdLdRf MemVar_C0F040
  loc_B7DBD4: NewIfNullPr IFileSystem3
  loc_B7DBD7: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B7DBDC: FLdI2 var_DA
  loc_B7DBDF: LitI2_Byte &HFF
  loc_B7DBE1: EqI2
  loc_B7DBE2: FFreeStr var_8C = ""
  loc_B7DBE9: BranchF loc_B7DFD3
  loc_B7DBEC: FLdRfVar var_8C
  loc_B7DBEF: FLdPr Me
  loc_B7DBF2: MemLdPr global_52
  loc_B7DBF5:  = Me.Path
  loc_B7DBFA: FLdRfVar var_D8
  loc_B7DBFD: FLdRfVar var_88
  loc_B7DC00: LitI4 0
  loc_B7DC05: LitI2_Byte 0
  loc_B7DC07: LitI4 1
  loc_B7DC0C: ILdRf var_8C
  loc_B7DC0F: LitStr "\name.txt"
  loc_B7DC12: ConcatStr
  loc_B7DC13: FStStrNoPop var_94
  loc_B7DC16: ImpAdLdRf MemVar_C0F040
  loc_B7DC19: NewIfNullPr IFileSystem3
  loc_B7DC1C: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7DC21: FLdPr var_88
  loc_B7DC24:  = Me.ReadAll
  loc_B7DC29: LitVar_Missing var_EC
  loc_B7DC2C: PopAdLdVar
  loc_B7DC2D: ILdRf var_D8
  loc_B7DC30: FLdPrThis
  loc_B7DC31: VCallAd Control_ID_Combo1
  loc_B7DC34: FStAdFunc var_90
  loc_B7DC37: FLdPr var_90
  loc_B7DC3A: Me.AddItem from_stack_1, from_stack_2
  loc_B7DC3F: FFreeStr var_8C = "": var_94 = ""
  loc_B7DC48: FFreeAd var_88 = ""
  loc_B7DC4F: FLdRfVar var_8C
  loc_B7DC52: FLdPr Me
  loc_B7DC55: MemLdPr global_52
  loc_B7DC58:  = Me.Path
  loc_B7DC5D: FLdRfVar var_DA
  loc_B7DC60: FLdRfVar var_88
  loc_B7DC63: LitI4 0
  loc_B7DC68: LitI2_Byte 0
  loc_B7DC6A: LitI4 1
  loc_B7DC6F: ILdRf var_8C
  loc_B7DC72: LitStr "\friendlist.txt"
  loc_B7DC75: ConcatStr
  loc_B7DC76: FStStrNoPop var_94
  loc_B7DC79: ImpAdLdRf MemVar_C0F040
  loc_B7DC7C: NewIfNullPr IFileSystem3
  loc_B7DC7F: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7DC84: FLdPr var_88
  loc_B7DC87:  = Me.AtEndOfStream
  loc_B7DC8C: FLdI2 var_DA
  loc_B7DC8F: LitI2_Byte 0
  loc_B7DC91: EqI2
  loc_B7DC92: FFreeStr var_8C = ""
  loc_B7DC99: FFree1Ad var_88
  loc_B7DC9C: BranchF loc_B7DE11
  loc_B7DC9F: FLdRfVar var_8C
  loc_B7DCA2: FLdPr Me
  loc_B7DCA5: MemLdPr global_52
  loc_B7DCA8:  = Me.Path
  loc_B7DCAD: LitI4 1
  loc_B7DCB2: FLdRfVar var_D8
  loc_B7DCB5: FLdRfVar var_88
  loc_B7DCB8: LitI4 0
  loc_B7DCBD: LitI2_Byte 0
  loc_B7DCBF: LitI4 1
  loc_B7DCC4: ILdRf var_8C
  loc_B7DCC7: LitStr "\friendlist.txt"
  loc_B7DCCA: ConcatStr
  loc_B7DCCB: FStStrNoPop var_94
  loc_B7DCCE: ImpAdLdRf MemVar_C0F040
  loc_B7DCD1: NewIfNullPr IFileSystem3
  loc_B7DCD4: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7DCD9: FLdPr var_88
  loc_B7DCDC:  = Me.ReadAll
  loc_B7DCE1: ILdRf var_D8
  loc_B7DCE4: LitStr "<"
  loc_B7DCE7: FLdRfVar var_128
  loc_B7DCEA: FLdPrThis
  loc_B7DCEB: VCallAd Control_ID_Text8
  loc_B7DCEE: FStAdFunc var_90
  loc_B7DCF1: FLdPr var_90
  loc_B7DCF4:  = Me.Text
  loc_B7DCF9: ILdRf var_128
  loc_B7DCFC: ConcatStr
  loc_B7DCFD: FStStrNoPop var_130
  loc_B7DD00: LitStr ">"
  loc_B7DD03: ConcatStr
  loc_B7DD04: FStStrNoPop var_138
  loc_B7DD07: LitI4 0
  loc_B7DD0C: FnInStr4
  loc_B7DD0E: LitI4 0
  loc_B7DD13: NeI4
  loc_B7DD14: FFreeStr var_8C = "": var_94 = "": var_128 = "": var_130 = "": var_138 = ""
  loc_B7DD23: FFreeAd var_88 = ""
  loc_B7DD2A: BranchF loc_B7DE11
  loc_B7DD2D: FLdRfVar var_8C
  loc_B7DD30: FLdPr Me
  loc_B7DD33: MemLdPr global_52
  loc_B7DD36:  = Me.Path
  loc_B7DD3B: FLdRfVar var_D8
  loc_B7DD3E: FLdRfVar var_88
  loc_B7DD41: LitI4 0
  loc_B7DD46: LitI2_Byte 0
  loc_B7DD48: LitI4 1
  loc_B7DD4D: ILdRf var_8C
  loc_B7DD50: LitStr "\friendlist.txt"
  loc_B7DD53: ConcatStr
  loc_B7DD54: FStStrNoPop var_94
  loc_B7DD57: ImpAdLdRf MemVar_C0F040
  loc_B7DD5A: NewIfNullPr IFileSystem3
  loc_B7DD5D: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7DD62: FLdPr var_88
  loc_B7DD65:  = Me.ReadAll
  loc_B7DD6A: FLdRfVar var_128
  loc_B7DD6D: FLdPrThis
  loc_B7DD6E: VCallAd Control_ID_Text8
  loc_B7DD71: FStAdFunc var_90
  loc_B7DD74: FLdPr var_90
  loc_B7DD77:  = Me.Text
  loc_B7DD7C: LitI4 0
  loc_B7DD81: LitI4 -1
  loc_B7DD86: LitI4 1
  loc_B7DD8B: LitStr vbNullString
  loc_B7DD8E: LitStr "<"
  loc_B7DD91: ILdRf var_128
  loc_B7DD94: ConcatStr
  loc_B7DD95: FStStrNoPop var_130
  loc_B7DD98: LitStr ">"
  loc_B7DD9B: ConcatStr
  loc_B7DD9C: FStStrNoPop var_138
  loc_B7DD9F: ILdRf var_D8
  loc_B7DDA2: ImpAdCallI2 Replace(, , , , , )
  loc_B7DDA7: CVarStr var_A4
  loc_B7DDAA: FStVar var_1E0
  loc_B7DDAE: FFreeStr var_8C = "": var_94 = "": var_128 = "": var_130 = "": var_D8 = ""
  loc_B7DDBD: FFreeAd var_88 = ""
  loc_B7DDC4: FLdRfVar var_8C
  loc_B7DDC7: FLdPr Me
  loc_B7DDCA: MemLdPr global_52
  loc_B7DDCD:  = Me.Path
  loc_B7DDD2: FLdRfVar var_1E0
  loc_B7DDD5: CStrVarVal var_D8
  loc_B7DDD9: FLdRfVar var_88
  loc_B7DDDC: LitI4 0
  loc_B7DDE1: LitI2_Byte 0
  loc_B7DDE3: LitI4 2
  loc_B7DDE8: ILdRf var_8C
  loc_B7DDEB: LitStr "\friendlist.txt"
  loc_B7DDEE: ConcatStr
  loc_B7DDEF: FStStrNoPop var_94
  loc_B7DDF2: ImpAdLdRf MemVar_C0F040
  loc_B7DDF5: NewIfNullPr IFileSystem3
  loc_B7DDF8: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7DDFD: FLdPr var_88
  loc_B7DE00: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7DE05: FFreeStr var_8C = "": var_94 = ""
  loc_B7DE0E: FFree1Ad var_88
  loc_B7DE11: FLdRfVar var_8C
  loc_B7DE14: FLdPr Me
  loc_B7DE17: MemLdPr global_52
  loc_B7DE1A:  = Me.Path
  loc_B7DE1F: FLdRfVar var_DA
  loc_B7DE22: FLdRfVar var_88
  loc_B7DE25: LitI4 0
  loc_B7DE2A: LitI2_Byte 0
  loc_B7DE2C: LitI4 1
  loc_B7DE31: ILdRf var_8C
  loc_B7DE34: LitStr "\inquiries.txt"
  loc_B7DE37: ConcatStr
  loc_B7DE38: FStStrNoPop var_94
  loc_B7DE3B: ImpAdLdRf MemVar_C0F040
  loc_B7DE3E: NewIfNullPr IFileSystem3
  loc_B7DE41: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7DE46: FLdPr var_88
  loc_B7DE49:  = Me.AtEndOfStream
  loc_B7DE4E: FLdI2 var_DA
  loc_B7DE51: LitI2_Byte 0
  loc_B7DE53: EqI2
  loc_B7DE54: FFreeStr var_8C = ""
  loc_B7DE5B: FFree1Ad var_88
  loc_B7DE5E: BranchF loc_B7DFD3
  loc_B7DE61: FLdRfVar var_8C
  loc_B7DE64: FLdPr Me
  loc_B7DE67: MemLdPr global_52
  loc_B7DE6A:  = Me.Path
  loc_B7DE6F: LitI4 1
  loc_B7DE74: FLdRfVar var_D8
  loc_B7DE77: FLdRfVar var_88
  loc_B7DE7A: LitI4 0
  loc_B7DE7F: LitI2_Byte 0
  loc_B7DE81: LitI4 1
  loc_B7DE86: ILdRf var_8C
  loc_B7DE89: LitStr "\inquiries.txt"
  loc_B7DE8C: ConcatStr
  loc_B7DE8D: FStStrNoPop var_94
  loc_B7DE90: ImpAdLdRf MemVar_C0F040
  loc_B7DE93: NewIfNullPr IFileSystem3
  loc_B7DE96: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7DE9B: FLdPr var_88
  loc_B7DE9E:  = Me.ReadAll
  loc_B7DEA3: ILdRf var_D8
  loc_B7DEA6: LitStr "<"
  loc_B7DEA9: FLdRfVar var_128
  loc_B7DEAC: FLdPrThis
  loc_B7DEAD: VCallAd Control_ID_Text8
  loc_B7DEB0: FStAdFunc var_90
  loc_B7DEB3: FLdPr var_90
  loc_B7DEB6:  = Me.Text
  loc_B7DEBB: ILdRf var_128
  loc_B7DEBE: ConcatStr
  loc_B7DEBF: FStStrNoPop var_130
  loc_B7DEC2: LitStr ">"
  loc_B7DEC5: ConcatStr
  loc_B7DEC6: FStStrNoPop var_138
  loc_B7DEC9: LitI4 0
  loc_B7DECE: FnInStr4
  loc_B7DED0: LitI4 0
  loc_B7DED5: NeI4
  loc_B7DED6: FFreeStr var_8C = "": var_94 = "": var_128 = "": var_130 = "": var_138 = ""
  loc_B7DEE5: FFreeAd var_88 = ""
  loc_B7DEEC: BranchF loc_B7DFD3
  loc_B7DEEF: FLdRfVar var_8C
  loc_B7DEF2: FLdPr Me
  loc_B7DEF5: MemLdPr global_52
  loc_B7DEF8:  = Me.Path
  loc_B7DEFD: FLdRfVar var_D8
  loc_B7DF00: FLdRfVar var_88
  loc_B7DF03: LitI4 0
  loc_B7DF08: LitI2_Byte 0
  loc_B7DF0A: LitI4 1
  loc_B7DF0F: ILdRf var_8C
  loc_B7DF12: LitStr "\inquiries.txt"
  loc_B7DF15: ConcatStr
  loc_B7DF16: FStStrNoPop var_94
  loc_B7DF19: ImpAdLdRf MemVar_C0F040
  loc_B7DF1C: NewIfNullPr IFileSystem3
  loc_B7DF1F: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7DF24: FLdPr var_88
  loc_B7DF27:  = Me.ReadAll
  loc_B7DF2C: FLdRfVar var_128
  loc_B7DF2F: FLdPrThis
  loc_B7DF30: VCallAd Control_ID_Text8
  loc_B7DF33: FStAdFunc var_90
  loc_B7DF36: FLdPr var_90
  loc_B7DF39:  = Me.Text
  loc_B7DF3E: LitI4 0
  loc_B7DF43: LitI4 -1
  loc_B7DF48: LitI4 1
  loc_B7DF4D: LitStr vbNullString
  loc_B7DF50: LitStr "<"
  loc_B7DF53: ILdRf var_128
  loc_B7DF56: ConcatStr
  loc_B7DF57: FStStrNoPop var_130
  loc_B7DF5A: LitStr ">"
  loc_B7DF5D: ConcatStr
  loc_B7DF5E: FStStrNoPop var_138
  loc_B7DF61: ILdRf var_D8
  loc_B7DF64: ImpAdCallI2 Replace(, , , , , )
  loc_B7DF69: CVarStr var_A4
  loc_B7DF6C: FStVar var_1E0
  loc_B7DF70: FFreeStr var_8C = "": var_94 = "": var_128 = "": var_130 = "": var_D8 = ""
  loc_B7DF7F: FFreeAd var_88 = ""
  loc_B7DF86: FLdRfVar var_8C
  loc_B7DF89: FLdPr Me
  loc_B7DF8C: MemLdPr global_52
  loc_B7DF8F:  = Me.Path
  loc_B7DF94: FLdRfVar var_1E0
  loc_B7DF97: CStrVarVal var_D8
  loc_B7DF9B: FLdRfVar var_88
  loc_B7DF9E: LitI4 0
  loc_B7DFA3: LitI2_Byte 0
  loc_B7DFA5: LitI4 2
  loc_B7DFAA: ILdRf var_8C
  loc_B7DFAD: LitStr "\inquiries.txt"
  loc_B7DFB0: ConcatStr
  loc_B7DFB1: FStStrNoPop var_94
  loc_B7DFB4: ImpAdLdRf MemVar_C0F040
  loc_B7DFB7: NewIfNullPr IFileSystem3
  loc_B7DFBA: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7DFBF: FLdPr var_88
  loc_B7DFC2: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7DFC7: FFreeStr var_8C = "": var_94 = ""
  loc_B7DFD0: FFree1Ad var_88
  loc_B7DFD3: FLdPr Me
  loc_B7DFD6: MemLdRfVar from_stack_1.global_52
  loc_B7DFD9: NextEachCollObj
  loc_B7DFE1: LitStr vbNullString
  loc_B7DFE4: FLdPrThis
  loc_B7DFE5: VCallAd Control_ID_Text8
  loc_B7DFE8: FStAdFunc var_88
  loc_B7DFEB: FLdPr var_88
  loc_B7DFEE: Me.Text = from_stack_1
  loc_B7DFF3: FFree1Ad var_88
  loc_B7DFF6: LitStr vbNullString
  loc_B7DFF9: FLdPrThis
  loc_B7DFFA: VCallAd Control_ID_Text9
  loc_B7DFFD: FStAdFunc var_88
  loc_B7E000: FLdPr var_88
  loc_B7E003: Me.Text = from_stack_1
  loc_B7E008: FFree1Ad var_88
  loc_B7E00B: LitStr vbNullString
  loc_B7E00E: FLdPrThis
  loc_B7E00F: VCallAd Control_ID_Text10
  loc_B7E012: FStAdFunc var_88
  loc_B7E015: FLdPr var_88
  loc_B7E018: Me.Text = from_stack_1
  loc_B7E01D: FFree1Ad var_88
  loc_B7E020: LitStr vbNullString
  loc_B7E023: FLdPrThis
  loc_B7E024: VCallAd Control_ID_Text11
  loc_B7E027: FStAdFunc var_88
  loc_B7E02A: FLdPr var_88
  loc_B7E02D: Me.Text = from_stack_1
  loc_B7E032: FFree1Ad var_88
  loc_B7E035: LitStr vbNullString
  loc_B7E038: FLdPrThis
  loc_B7E039: VCallAd Control_ID_Text25
  loc_B7E03C: FStAdFunc var_88
  loc_B7E03F: FLdPr var_88
  loc_B7E042: Me.Text = from_stack_1
  loc_B7E047: FFree1Ad var_88
  loc_B7E04A: LitStr vbNullString
  loc_B7E04D: FLdPrThis
  loc_B7E04E: VCallAd Control_ID_Text26
  loc_B7E051: FStAdFunc var_88
  loc_B7E054: FLdPr var_88
  loc_B7E057: Me.Text = from_stack_1
  loc_B7E05C: FFree1Ad var_88
  loc_B7E05F: LitStr vbNullString
  loc_B7E062: FLdPrThis
  loc_B7E063: VCallAd Control_ID_Text27
  loc_B7E066: FStAdFunc var_88
  loc_B7E069: FLdPr var_88
  loc_B7E06C: Me.Text = from_stack_1
  loc_B7E071: FFree1Ad var_88
  loc_B7E074: LitVarStr var_EC, "ranks"
  loc_B7E079: PopAdLdVar
  loc_B7E07A: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7E07F: FStStrNoPop var_8C
  loc_B7E082: FLdPrThis
  loc_B7E083: VCallAd Control_ID_Combo2
  loc_B7E086: FStAdFunc var_88
  loc_B7E089: FLdPr var_88
  loc_B7E08C: Me.Text = from_stack_1
  loc_B7E091: FFree1Str var_8C
  loc_B7E094: FFree1Ad var_88
  loc_B7E097: Branch loc_B7E612
  loc_B7E09A: FLdRfVar var_94
  loc_B7E09D: FLdPrThis
  loc_B7E09E: VCallAd Control_ID_Text8
  loc_B7E0A1: FStAdFunc var_90
  loc_B7E0A4: FLdPr var_90
  loc_B7E0A7:  = Me.Text
  loc_B7E0AC: FLdZeroAd var_94
  loc_B7E0AF: CVarStr var_A4
  loc_B7E0B2: FLdRfVar var_B4
  loc_B7E0B5: ImpAdCallFPR4  = LCase()
  loc_B7E0BA: FLdRfVar var_8C
  loc_B7E0BD: FLdPrThis
  loc_B7E0BE: VCallAd Control_ID_Text9
  loc_B7E0C1: FStAdFunc var_88
  loc_B7E0C4: FLdPr var_88
  loc_B7E0C7:  = Me.Text
  loc_B7E0CC: ILdRf var_8C
  loc_B7E0CF: FLdRfVar var_120
  loc_B7E0D2: LitI4 0
  loc_B7E0D7: LitI2_Byte 0
  loc_B7E0D9: LitI4 2
  loc_B7E0DE: ImpAdLdI4 MemVar_C0F044
  loc_B7E0E1: LitStr "habbos\"
  loc_B7E0E4: ConcatStr
  loc_B7E0E5: CVarStr var_C4
  loc_B7E0E8: FLdRfVar var_B4
  loc_B7E0EB: ConcatVar var_D4
  loc_B7E0EF: LitVarStr var_EC, "\pass.txt"
  loc_B7E0F4: ConcatVar var_148
  loc_B7E0F8: CStrVarVal var_D8
  loc_B7E0FC: ImpAdLdRf MemVar_C0F040
  loc_B7E0FF: NewIfNullPr IFileSystem3
  loc_B7E102: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7E107: FLdPr var_120
  loc_B7E10A: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7E10F: FFreeStr var_D8 = ""
  loc_B7E116: FFreeAd var_88 = "": var_90 = ""
  loc_B7E11F: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7E12C: FLdRfVar var_94
  loc_B7E12F: FLdPrThis
  loc_B7E130: VCallAd Control_ID_Text8
  loc_B7E133: FStAdFunc var_90
  loc_B7E136: FLdPr var_90
  loc_B7E139:  = Me.Text
  loc_B7E13E: FLdZeroAd var_94
  loc_B7E141: CVarStr var_A4
  loc_B7E144: FLdRfVar var_B4
  loc_B7E147: ImpAdCallFPR4  = LCase()
  loc_B7E14C: FLdRfVar var_8C
  loc_B7E14F: FLdPrThis
  loc_B7E150: VCallAd Control_ID_Text10
  loc_B7E153: FStAdFunc var_88
  loc_B7E156: FLdPr var_88
  loc_B7E159:  = Me.Text
  loc_B7E15E: ILdRf var_8C
  loc_B7E161: FLdRfVar var_120
  loc_B7E164: LitI4 0
  loc_B7E169: LitI2_Byte 0
  loc_B7E16B: LitI4 2
  loc_B7E170: ImpAdLdI4 MemVar_C0F044
  loc_B7E173: LitStr "habbos\"
  loc_B7E176: ConcatStr
  loc_B7E177: CVarStr var_C4
  loc_B7E17A: FLdRfVar var_B4
  loc_B7E17D: ConcatVar var_D4
  loc_B7E181: LitVarStr var_EC, "\mission.txt"
  loc_B7E186: ConcatVar var_148
  loc_B7E18A: CStrVarVal var_D8
  loc_B7E18E: ImpAdLdRf MemVar_C0F040
  loc_B7E191: NewIfNullPr IFileSystem3
  loc_B7E194: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7E199: FLdPr var_120
  loc_B7E19C: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7E1A1: FFreeStr var_D8 = ""
  loc_B7E1A8: FFreeAd var_88 = "": var_90 = ""
  loc_B7E1B1: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7E1BE: FLdRfVar var_94
  loc_B7E1C1: FLdPrThis
  loc_B7E1C2: VCallAd Control_ID_Text8
  loc_B7E1C5: FStAdFunc var_90
  loc_B7E1C8: FLdPr var_90
  loc_B7E1CB:  = Me.Text
  loc_B7E1D0: FLdZeroAd var_94
  loc_B7E1D3: CVarStr var_A4
  loc_B7E1D6: FLdRfVar var_B4
  loc_B7E1D9: ImpAdCallFPR4  = LCase()
  loc_B7E1DE: FLdRfVar var_8C
  loc_B7E1E1: FLdPrThis
  loc_B7E1E2: VCallAd Control_ID_Combo2
  loc_B7E1E5: FStAdFunc var_88
  loc_B7E1E8: FLdPr var_88
  loc_B7E1EB:  = Me.Text
  loc_B7E1F0: ILdRf var_8C
  loc_B7E1F3: FLdRfVar var_120
  loc_B7E1F6: LitI4 0
  loc_B7E1FB: LitI2_Byte 0
  loc_B7E1FD: LitI4 2
  loc_B7E202: ImpAdLdI4 MemVar_C0F044
  loc_B7E205: LitStr "habbos\"
  loc_B7E208: ConcatStr
  loc_B7E209: CVarStr var_C4
  loc_B7E20C: FLdRfVar var_B4
  loc_B7E20F: ConcatVar var_D4
  loc_B7E213: LitVarStr var_EC, "\rank.txt"
  loc_B7E218: ConcatVar var_148
  loc_B7E21C: CStrVarVal var_D8
  loc_B7E220: ImpAdLdRf MemVar_C0F040
  loc_B7E223: NewIfNullPr IFileSystem3
  loc_B7E226: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7E22B: FLdPr var_120
  loc_B7E22E: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7E233: FFreeStr var_D8 = ""
  loc_B7E23A: FFreeAd var_88 = "": var_90 = ""
  loc_B7E243: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7E250: FLdRfVar var_94
  loc_B7E253: FLdPrThis
  loc_B7E254: VCallAd Control_ID_Text8
  loc_B7E257: FStAdFunc var_90
  loc_B7E25A: FLdPr var_90
  loc_B7E25D:  = Me.Text
  loc_B7E262: FLdZeroAd var_94
  loc_B7E265: CVarStr var_A4
  loc_B7E268: FLdRfVar var_B4
  loc_B7E26B: ImpAdCallFPR4  = LCase()
  loc_B7E270: FLdRfVar var_8C
  loc_B7E273: FLdPrThis
  loc_B7E274: VCallAd Control_ID_Text11
  loc_B7E277: FStAdFunc var_88
  loc_B7E27A: FLdPr var_88
  loc_B7E27D:  = Me.Text
  loc_B7E282: ILdRf var_8C
  loc_B7E285: FLdRfVar var_120
  loc_B7E288: LitI4 0
  loc_B7E28D: LitI2_Byte 0
  loc_B7E28F: LitI4 2
  loc_B7E294: ImpAdLdI4 MemVar_C0F044
  loc_B7E297: LitStr "habbos\"
  loc_B7E29A: ConcatStr
  loc_B7E29B: CVarStr var_C4
  loc_B7E29E: FLdRfVar var_B4
  loc_B7E2A1: ConcatVar var_D4
  loc_B7E2A5: LitVarStr var_EC, "\credits.txt"
  loc_B7E2AA: ConcatVar var_148
  loc_B7E2AE: CStrVarVal var_D8
  loc_B7E2B2: ImpAdLdRf MemVar_C0F040
  loc_B7E2B5: NewIfNullPr IFileSystem3
  loc_B7E2B8: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7E2BD: FLdPr var_120
  loc_B7E2C0: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7E2C5: FFreeStr var_D8 = ""
  loc_B7E2CC: FFreeAd var_88 = "": var_90 = ""
  loc_B7E2D5: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7E2E2: FLdRfVar var_94
  loc_B7E2E5: FLdPrThis
  loc_B7E2E6: VCallAd Control_ID_Text8
  loc_B7E2E9: FStAdFunc var_90
  loc_B7E2EC: FLdPr var_90
  loc_B7E2EF:  = Me.Text
  loc_B7E2F4: FLdZeroAd var_94
  loc_B7E2F7: CVarStr var_A4
  loc_B7E2FA: FLdRfVar var_B4
  loc_B7E2FD: ImpAdCallFPR4  = LCase()
  loc_B7E302: FLdRfVar var_8C
  loc_B7E305: FLdPrThis
  loc_B7E306: VCallAd Control_ID_Text25
  loc_B7E309: FStAdFunc var_88
  loc_B7E30C: FLdPr var_88
  loc_B7E30F:  = Me.Text
  loc_B7E314: ILdRf var_8C
  loc_B7E317: FLdRfVar var_120
  loc_B7E31A: LitI4 0
  loc_B7E31F: LitI2_Byte 0
  loc_B7E321: LitI4 2
  loc_B7E326: ImpAdLdI4 MemVar_C0F044
  loc_B7E329: LitStr "habbos\"
  loc_B7E32C: ConcatStr
  loc_B7E32D: CVarStr var_C4
  loc_B7E330: FLdRfVar var_B4
  loc_B7E333: ConcatVar var_D4
  loc_B7E337: LitVarStr var_EC, "\email.txt"
  loc_B7E33C: ConcatVar var_148
  loc_B7E340: CStrVarVal var_D8
  loc_B7E344: ImpAdLdRf MemVar_C0F040
  loc_B7E347: NewIfNullPr IFileSystem3
  loc_B7E34A: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7E34F: FLdPr var_120
  loc_B7E352: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7E357: FFreeStr var_D8 = ""
  loc_B7E35E: FFreeAd var_88 = "": var_90 = ""
  loc_B7E367: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7E374: FLdRfVar var_94
  loc_B7E377: FLdPrThis
  loc_B7E378: VCallAd Control_ID_Text8
  loc_B7E37B: FStAdFunc var_90
  loc_B7E37E: FLdPr var_90
  loc_B7E381:  = Me.Text
  loc_B7E386: FLdZeroAd var_94
  loc_B7E389: CVarStr var_A4
  loc_B7E38C: FLdRfVar var_B4
  loc_B7E38F: ImpAdCallFPR4  = LCase()
  loc_B7E394: FLdRfVar var_8C
  loc_B7E397: FLdPrThis
  loc_B7E398: VCallAd Control_ID_Text26
  loc_B7E39B: FStAdFunc var_88
  loc_B7E39E: FLdPr var_88
  loc_B7E3A1:  = Me.Text
  loc_B7E3A6: ILdRf var_8C
  loc_B7E3A9: FLdRfVar var_120
  loc_B7E3AC: LitI4 0
  loc_B7E3B1: LitI2_Byte 0
  loc_B7E3B3: LitI4 2
  loc_B7E3B8: ImpAdLdI4 MemVar_C0F044
  loc_B7E3BB: LitStr "habbos\"
  loc_B7E3BE: ConcatStr
  loc_B7E3BF: CVarStr var_C4
  loc_B7E3C2: FLdRfVar var_B4
  loc_B7E3C5: ConcatVar var_D4
  loc_B7E3C9: LitVarStr var_EC, "\birth.txt"
  loc_B7E3CE: ConcatVar var_148
  loc_B7E3D2: CStrVarVal var_D8
  loc_B7E3D6: ImpAdLdRf MemVar_C0F040
  loc_B7E3D9: NewIfNullPr IFileSystem3
  loc_B7E3DC: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7E3E1: FLdPr var_120
  loc_B7E3E4: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7E3E9: FFreeStr var_D8 = ""
  loc_B7E3F0: FFreeAd var_88 = "": var_90 = ""
  loc_B7E3F9: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7E406: FLdRfVar var_8C
  loc_B7E409: FLdPrThis
  loc_B7E40A: VCallAd Control_ID_Text8
  loc_B7E40D: FStAdFunc var_88
  loc_B7E410: FLdPr var_88
  loc_B7E413:  = Me.Text
  loc_B7E418: FLdZeroAd var_8C
  loc_B7E41B: CVarStr var_A4
  loc_B7E41E: FLdRfVar var_B4
  loc_B7E421: ImpAdCallFPR4  = LCase()
  loc_B7E426: FLdRfVar var_1F0
  loc_B7E429: VarLateMemLdVar var_158, .Text
  loc_B7E42F: CStrVarVal var_D8
  loc_B7E433: FLdRfVar var_90
  loc_B7E436: LitI4 0
  loc_B7E43B: LitI2_Byte 0
  loc_B7E43D: LitI4 2
  loc_B7E442: ImpAdLdI4 MemVar_C0F044
  loc_B7E445: LitStr "habbos\"
  loc_B7E448: ConcatStr
  loc_B7E449: CVarStr var_C4
  loc_B7E44C: FLdRfVar var_B4
  loc_B7E44F: ConcatVar var_D4
  loc_B7E453: LitVarStr var_EC, "\poolfigure.txt"
  loc_B7E458: ConcatVar var_148
  loc_B7E45C: CStrVarVal var_94
  loc_B7E460: ImpAdLdRf MemVar_C0F040
  loc_B7E463: NewIfNullPr IFileSystem3
  loc_B7E466: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7E46B: FLdPr var_90
  loc_B7E46E: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7E473: FFreeStr var_94 = ""
  loc_B7E47A: FFreeAd var_88 = ""
  loc_B7E481: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = "": var_148 = ""
  loc_B7E490: FLdRfVar var_94
  loc_B7E493: FLdPrThis
  loc_B7E494: VCallAd Control_ID_Text8
  loc_B7E497: FStAdFunc var_90
  loc_B7E49A: FLdPr var_90
  loc_B7E49D:  = Me.Text
  loc_B7E4A2: FLdZeroAd var_94
  loc_B7E4A5: CVarStr var_A4
  loc_B7E4A8: FLdRfVar var_B4
  loc_B7E4AB: ImpAdCallFPR4  = LCase()
  loc_B7E4B0: FLdRfVar var_8C
  loc_B7E4B3: FLdPrThis
  loc_B7E4B4: VCallAd Control_ID_Text27
  loc_B7E4B7: FStAdFunc var_88
  loc_B7E4BA: FLdPr var_88
  loc_B7E4BD:  = Me.Text
  loc_B7E4C2: ILdRf var_8C
  loc_B7E4C5: FLdRfVar var_120
  loc_B7E4C8: LitI4 0
  loc_B7E4CD: LitI2_Byte 0
  loc_B7E4CF: LitI4 2
  loc_B7E4D4: ImpAdLdI4 MemVar_C0F044
  loc_B7E4D7: LitStr "habbos\"
  loc_B7E4DA: ConcatStr
  loc_B7E4DB: CVarStr var_C4
  loc_B7E4DE: FLdRfVar var_B4
  loc_B7E4E1: ConcatVar var_D4
  loc_B7E4E5: LitVarStr var_EC, "\badges.txt"
  loc_B7E4EA: ConcatVar var_148
  loc_B7E4EE: CStrVarVal var_D8
  loc_B7E4F2: ImpAdLdRf MemVar_C0F040
  loc_B7E4F5: NewIfNullPr IFileSystem3
  loc_B7E4F8: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7E4FD: FLdPr var_120
  loc_B7E500: from_stack_2 = Me.Write(from_stack_1v)
  loc_B7E505: FFreeStr var_D8 = ""
  loc_B7E50C: FFreeAd var_88 = "": var_90 = ""
  loc_B7E515: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7E522: LitVarI2 var_10C, 1
  loc_B7E527: FLdRfVar var_1A0
  loc_B7E52A: FLdRfVar var_1A4
  loc_B7E52D: ImpAdLdRf MemVar_C0F018
  loc_B7E530: NewIfNullPr frmMain
  loc_B7E533: from_stack_1v = frmMain.SockIGet()
  loc_B7E538: ILdRf var_1A4
  loc_B7E53B: CVarI4
  loc_B7E53F: ForVar var_210
  loc_B7E545: FLdRfVar var_90
  loc_B7E548: FLdRfVar var_1A0
  loc_B7E54B: CI2Var
  loc_B7E54C: ImpAdLdRf MemVar_C0F018
  loc_B7E54F: NewIfNullPr frmMain
  loc_B7E552: VCallAd Control_ID_
  loc_B7E555: FStAdFunc var_88
  loc_B7E558: FLdPr var_88
  loc_B7E55B: Set from_stack_2 = frmMain(from_stack_1)
  loc_B7E560: FLdPr var_90
  loc_B7E563: LateIdLdVar var_A4 DispID_8 0
  loc_B7E56A: CI2Var
  loc_B7E56B: CI4UI1
  loc_B7E56C: LitI4 7
  loc_B7E571: EqI4
  loc_B7E572: CVarBoolI2 var_FC
  loc_B7E576: FLdRfVar var_1A0
  loc_B7E579: CI4Var
  loc_B7E57B: ImpAdLdI4 MemVar_C0F100
  loc_B7E57E: AryLock
  loc_B7E581: Ary1LdPr
  loc_B7E582: MemLdRfVar from_stack_1.global_204
  loc_B7E585: CVarRef
  loc_B7E58A: FLdRfVar var_B4
  loc_B7E58D: ImpAdCallFPR4  = LCase()
  loc_B7E592: AryUnlock
  loc_B7E595: FLdRfVar var_B4
  loc_B7E598: FLdRfVar var_8C
  loc_B7E59B: FLdPrThis
  loc_B7E59C: VCallAd Control_ID_Text8
  loc_B7E59F: FStAdFunc var_120
  loc_B7E5A2: FLdPr var_120
  loc_B7E5A5:  = Me.Text
  loc_B7E5AA: FLdZeroAd var_8C
  loc_B7E5AD: CVarStr var_C4
  loc_B7E5B0: FLdRfVar var_D4
  loc_B7E5B3: ImpAdCallFPR4  = LCase()
  loc_B7E5B8: FLdRfVar var_D4
  loc_B7E5BB: EqVar var_148
  loc_B7E5BF: AndVar var_158
  loc_B7E5C3: CBoolVarNull
  loc_B7E5C5: FFreeAd var_88 = "": var_90 = ""
  loc_B7E5CE: FFreeVar var_A4 = "": var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B7E5DB: BranchF loc_B7E609
  loc_B7E5DE: FLdRfVar var_8C
  loc_B7E5E1: FLdPrThis
  loc_B7E5E2: VCallAd Control_ID_Combo2
  loc_B7E5E5: FStAdFunc var_88
  loc_B7E5E8: FLdPr var_88
  loc_B7E5EB:  = Me.Text
  loc_B7E5F0: ILdRf var_8C
  loc_B7E5F3: FLdRfVar var_1A0
  loc_B7E5F6: CI4Var
  loc_B7E5F8: ImpAdLdI4 MemVar_C0F100
  loc_B7E5FB: Ary1LdPr
  loc_B7E5FC: MemStStrCopy
  loc_B7E600: FFree1Str var_8C
  loc_B7E603: FFree1Ad var_88
  loc_B7E606: Branch loc_B7E612
  loc_B7E609: FLdRfVar var_1A0
  loc_B7E60C: NextStepVar var_210
  loc_B7E612: LitI2_Byte &HFF
  loc_B7E614: FLdPrThis
  loc_B7E615: VCallAd Control_ID_Command9
  loc_B7E618: FStAdFunc var_88
  loc_B7E61B: FLdPr var_88
  loc_B7E61E: Me.Enabled = from_stack_1b
  loc_B7E623: FFree1Ad var_88
  loc_B7E626: LitI2_Byte &HFF
  loc_B7E628: FLdPrThis
  loc_B7E629: VCallAd Control_ID_Command8
  loc_B7E62C: FStAdFunc var_88
  loc_B7E62F: FLdPr var_88
  loc_B7E632: Me.Enabled = from_stack_1b
  loc_B7E637: FFree1Ad var_88
  loc_B7E63A: ExitProcHresult
End Sub

Private Sub Combo4_Click() 'B1FCEC
  'Data Table: 549FD0
  loc_B1FC50: FLdRfVar var_9A
  loc_B1FC53: ImpAdLdI4 MemVar_C0F044
  loc_B1FC56: LitStr "ranks\"
  loc_B1FC59: ConcatStr
  loc_B1FC5A: FStStrNoPop var_90
  loc_B1FC5D: FLdRfVar var_8C
  loc_B1FC60: FLdPrThis
  loc_B1FC61: VCallAd Control_ID_Combo4
  loc_B1FC64: FStAdFunc var_88
  loc_B1FC67: FLdPr var_88
  loc_B1FC6A:  = Me.Text
  loc_B1FC6F: ILdRf var_8C
  loc_B1FC72: ConcatStr
  loc_B1FC73: FStStrNoPop var_94
  loc_B1FC76: LitStr ".ini"
  loc_B1FC79: ConcatStr
  loc_B1FC7A: FStStrNoPop var_98
  loc_B1FC7D: ImpAdLdRf MemVar_C0F040
  loc_B1FC80: NewIfNullPr IFileSystem3
  loc_B1FC83: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B1FC88: FLdI2 var_9A
  loc_B1FC8B: LitI2_Byte &HFF
  loc_B1FC8D: EqI2
  loc_B1FC8E: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_B1FC99: FFree1Ad var_88
  loc_B1FC9C: BranchF loc_B1FCAD
  loc_B1FC9F: FLdRfVar var_AC
  loc_B1FCA2: Call Proc_31_31_B5AF9C()
  loc_B1FCA7: FFree1Var var_AC = ""
  loc_B1FCAA: Branch loc_B1FCEA
  loc_B1FCAD: LitVarStr var_BC, "rank_not_found"
  loc_B1FCB2: PopAdLdVar
  loc_B1FCB3: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B1FCB8: FStStr var_8C
  loc_B1FCBB: LitVar_Missing var_11C
  loc_B1FCBE: LitVar_Missing var_FC
  loc_B1FCC1: LitVarStr var_CC, "Server"
  loc_B1FCC6: FStVarCopyObj var_DC
  loc_B1FCC9: FLdRfVar var_DC
  loc_B1FCCC: LitI4 &H10
  loc_B1FCD1: FLdZeroAd var_8C
  loc_B1FCD4: CVarStr var_AC
  loc_B1FCD7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B1FCDC: FFree1Str var_8C
  loc_B1FCDF: FFreeVar var_AC = "": var_DC = "": var_FC = ""
  loc_B1FCEA: ExitProcHresult
End Sub

Private Sub Combo3_Click() 'B3E84C
  'Data Table: 549FD0
  loc_B3E30C: FLdRfVar var_8C
  loc_B3E30F: FLdPrThis
  loc_B3E310: VCallAd Control_ID_Combo3
  loc_B3E313: FStAdFunc var_88
  loc_B3E316: FLdPr var_88
  loc_B3E319:  = Me.Text
  loc_B3E31E: FLdRfVar var_FC
  loc_B3E321: FLdPrThis
  loc_B3E322: VCallAd Control_ID_Combo3
  loc_B3E325: FStAdFunc var_F8
  loc_B3E328: FLdPr var_F8
  loc_B3E32B:  = Me.Text
  loc_B3E330: LitVarI2 var_13C, 0
  loc_B3E335: PopAdLdVar
  loc_B3E336: LitI4 0
  loc_B3E33B: LitI4 -1
  loc_B3E340: LitVarStr var_10C, " "
  loc_B3E345: FStVarCopyObj var_11C
  loc_B3E348: FLdRfVar var_11C
  loc_B3E34B: ILdRf var_FC
  loc_B3E34E: FLdRfVar var_12C
  loc_B3E351: ImpAdCallFPR4  = Split(, , , )
  loc_B3E356: FLdRfVar var_12C
  loc_B3E359: VarIndexLdVar
  loc_B3E35F: PopAd
  loc_B3E361: LitVarI2 var_CC, 0
  loc_B3E366: PopAdLdVar
  loc_B3E367: LitI4 0
  loc_B3E36C: LitI4 -1
  loc_B3E371: LitVarStr var_9C, " "
  loc_B3E376: FStVarCopyObj var_AC
  loc_B3E379: FLdRfVar var_AC
  loc_B3E37C: ILdRf var_8C
  loc_B3E37F: FLdRfVar var_BC
  loc_B3E382: ImpAdCallFPR4  = Split(, , , )
  loc_B3E387: FLdRfVar var_BC
  loc_B3E38A: VarIndexLdRfVarLock
  loc_B3E392: ImpAdCallI2 IsNumeric()
  loc_B3E397: FStI2 var_F2
  loc_B3E39A: AryUnlock
  loc_B3E39D: FLdI2 var_F2
  loc_B3E3A0: LitI2_Byte 0
  loc_B3E3A2: EqI2
  loc_B3E3A3: FLdRfVar var_182
  loc_B3E3A6: ImpAdLdI4 MemVar_C0F044
  loc_B3E3A9: LitStr "privaterooms\"
  loc_B3E3AC: ConcatStr
  loc_B3E3AD: CVarStr var_15C
  loc_B3E3B0: FLdRfVar var_16C
  loc_B3E3B3: ConcatVar var_17C
  loc_B3E3B7: CStrVarVal var_180
  loc_B3E3BB: ImpAdLdRf MemVar_C0F040
  loc_B3E3BE: NewIfNullPr IFileSystem3
  loc_B3E3C1: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B3E3C6: FLdI2 var_182
  loc_B3E3C9: LitI2_Byte 0
  loc_B3E3CB: EqI2
  loc_B3E3CC: OrI4
  loc_B3E3CD: FFreeStr var_8C = "": var_FC = ""
  loc_B3E3D6: FFreeAd var_88 = ""
  loc_B3E3DD: FFreeVar var_AC = "": var_BC = "": var_EC = "": var_11C = "": var_12C = "": var_15C = "": var_16C = ""
  loc_B3E3F0: BranchF loc_B3E3F4
  loc_B3E3F3: ExitProcHresult
  loc_B3E3F4: FLdRfVar var_8C
  loc_B3E3F7: FLdPrThis
  loc_B3E3F8: VCallAd Control_ID_Combo3
  loc_B3E3FB: FStAdFunc var_88
  loc_B3E3FE: FLdPr var_88
  loc_B3E401:  = Me.Text
  loc_B3E406: LitVarI2 var_CC, 0
  loc_B3E40B: PopAdLdVar
  loc_B3E40C: LitI4 0
  loc_B3E411: LitI4 -1
  loc_B3E416: LitVarStr var_9C, " "
  loc_B3E41B: FStVarCopyObj var_AC
  loc_B3E41E: FLdRfVar var_AC
  loc_B3E421: ILdRf var_8C
  loc_B3E424: FLdRfVar var_BC
  loc_B3E427: ImpAdCallFPR4  = Split(, , , )
  loc_B3E42C: FLdRfVar var_BC
  loc_B3E42F: VarIndexLdVar
  loc_B3E435: PopAd
  loc_B3E437: FLdRfVar var_180
  loc_B3E43A: FLdRfVar var_F8
  loc_B3E43D: LitI4 0
  loc_B3E442: LitI2_Byte 0
  loc_B3E444: LitI4 1
  loc_B3E449: ImpAdLdI4 MemVar_C0F044
  loc_B3E44C: LitStr "privaterooms\"
  loc_B3E44F: ConcatStr
  loc_B3E450: CVarStr var_EC
  loc_B3E453: FLdRfVar var_11C
  loc_B3E456: ConcatVar var_12C
  loc_B3E45A: LitVarStr var_10C, "\owner.txt"
  loc_B3E45F: ConcatVar var_15C
  loc_B3E463: CStrVarVal var_FC
  loc_B3E467: ImpAdLdRf MemVar_C0F040
  loc_B3E46A: NewIfNullPr IFileSystem3
  loc_B3E46D: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B3E472: FLdPr var_F8
  loc_B3E475:  = Me.ReadAll
  loc_B3E47A: ILdRf var_180
  loc_B3E47D: FLdPrThis
  loc_B3E47E: VCallAd Control_ID_Text15
  loc_B3E481: FStAdFunc var_188
  loc_B3E484: FLdPr var_188
  loc_B3E487: Me.Text = from_stack_1
  loc_B3E48C: FFreeStr var_8C = "": var_FC = ""
  loc_B3E495: FFreeAd var_88 = "": var_F8 = ""
  loc_B3E49E: FFreeVar var_AC = "": var_BC = "": var_EC = "": var_11C = "": var_12C = ""
  loc_B3E4AD: FLdRfVar var_8C
  loc_B3E4B0: FLdPrThis
  loc_B3E4B1: VCallAd Control_ID_Combo3
  loc_B3E4B4: FStAdFunc var_88
  loc_B3E4B7: FLdPr var_88
  loc_B3E4BA:  = Me.Text
  loc_B3E4BF: LitVarI2 var_CC, 0
  loc_B3E4C4: PopAdLdVar
  loc_B3E4C5: LitI4 0
  loc_B3E4CA: LitI4 -1
  loc_B3E4CF: LitVarStr var_9C, " "
  loc_B3E4D4: FStVarCopyObj var_AC
  loc_B3E4D7: FLdRfVar var_AC
  loc_B3E4DA: ILdRf var_8C
  loc_B3E4DD: FLdRfVar var_BC
  loc_B3E4E0: ImpAdCallFPR4  = Split(, , , )
  loc_B3E4E5: FLdRfVar var_BC
  loc_B3E4E8: VarIndexLdVar
  loc_B3E4EE: PopAd
  loc_B3E4F0: FLdRfVar var_180
  loc_B3E4F3: FLdRfVar var_F8
  loc_B3E4F6: LitI4 0
  loc_B3E4FB: LitI2_Byte 0
  loc_B3E4FD: LitI4 1
  loc_B3E502: ImpAdLdI4 MemVar_C0F044
  loc_B3E505: LitStr "privaterooms\"
  loc_B3E508: ConcatStr
  loc_B3E509: CVarStr var_EC
  loc_B3E50C: FLdRfVar var_11C
  loc_B3E50F: ConcatVar var_12C
  loc_B3E513: LitVarStr var_10C, "\name.txt"
  loc_B3E518: ConcatVar var_15C
  loc_B3E51C: CStrVarVal var_FC
  loc_B3E520: ImpAdLdRf MemVar_C0F040
  loc_B3E523: NewIfNullPr IFileSystem3
  loc_B3E526: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B3E52B: FLdPr var_F8
  loc_B3E52E:  = Me.ReadAll
  loc_B3E533: ILdRf var_180
  loc_B3E536: FLdPrThis
  loc_B3E537: VCallAd Control_ID_Text12
  loc_B3E53A: FStAdFunc var_188
  loc_B3E53D: FLdPr var_188
  loc_B3E540: Me.Text = from_stack_1
  loc_B3E545: FFreeStr var_8C = "": var_FC = ""
  loc_B3E54E: FFreeAd var_88 = "": var_F8 = ""
  loc_B3E557: FFreeVar var_AC = "": var_BC = "": var_EC = "": var_11C = "": var_12C = ""
  loc_B3E566: FLdRfVar var_8C
  loc_B3E569: FLdPrThis
  loc_B3E56A: VCallAd Control_ID_Combo3
  loc_B3E56D: FStAdFunc var_88
  loc_B3E570: FLdPr var_88
  loc_B3E573:  = Me.Text
  loc_B3E578: LitVarI2 var_CC, 0
  loc_B3E57D: PopAdLdVar
  loc_B3E57E: LitI4 0
  loc_B3E583: LitI4 -1
  loc_B3E588: LitVarStr var_9C, " "
  loc_B3E58D: FStVarCopyObj var_AC
  loc_B3E590: FLdRfVar var_AC
  loc_B3E593: ILdRf var_8C
  loc_B3E596: FLdRfVar var_BC
  loc_B3E599: ImpAdCallFPR4  = Split(, , , )
  loc_B3E59E: FLdRfVar var_BC
  loc_B3E5A1: VarIndexLdVar
  loc_B3E5A7: PopAd
  loc_B3E5A9: FLdRfVar var_180
  loc_B3E5AC: FLdRfVar var_F8
  loc_B3E5AF: LitI4 0
  loc_B3E5B4: LitI2_Byte 0
  loc_B3E5B6: LitI4 1
  loc_B3E5BB: ImpAdLdI4 MemVar_C0F044
  loc_B3E5BE: LitStr "privaterooms\"
  loc_B3E5C1: ConcatStr
  loc_B3E5C2: CVarStr var_EC
  loc_B3E5C5: FLdRfVar var_11C
  loc_B3E5C8: ConcatVar var_12C
  loc_B3E5CC: LitVarStr var_10C, "\description.txt"
  loc_B3E5D1: ConcatVar var_15C
  loc_B3E5D5: CStrVarVal var_FC
  loc_B3E5D9: ImpAdLdRf MemVar_C0F040
  loc_B3E5DC: NewIfNullPr IFileSystem3
  loc_B3E5DF: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B3E5E4: FLdPr var_F8
  loc_B3E5E7:  = Me.ReadAll
  loc_B3E5EC: ILdRf var_180
  loc_B3E5EF: FLdPrThis
  loc_B3E5F0: VCallAd Control_ID_Text13
  loc_B3E5F3: FStAdFunc var_188
  loc_B3E5F6: FLdPr var_188
  loc_B3E5F9: Me.Text = from_stack_1
  loc_B3E5FE: FFreeStr var_8C = "": var_FC = ""
  loc_B3E607: FFreeAd var_88 = "": var_F8 = ""
  loc_B3E610: FFreeVar var_AC = "": var_BC = "": var_EC = "": var_11C = "": var_12C = ""
  loc_B3E61F: FLdRfVar var_8C
  loc_B3E622: FLdPrThis
  loc_B3E623: VCallAd Control_ID_Combo3
  loc_B3E626: FStAdFunc var_88
  loc_B3E629: FLdPr var_88
  loc_B3E62C:  = Me.Text
  loc_B3E631: LitVarI2 var_CC, 0
  loc_B3E636: PopAdLdVar
  loc_B3E637: LitI4 0
  loc_B3E63C: LitI4 -1
  loc_B3E641: LitVarStr var_9C, " "
  loc_B3E646: FStVarCopyObj var_AC
  loc_B3E649: FLdRfVar var_AC
  loc_B3E64C: ILdRf var_8C
  loc_B3E64F: FLdRfVar var_BC
  loc_B3E652: ImpAdCallFPR4  = Split(, , , )
  loc_B3E657: FLdRfVar var_BC
  loc_B3E65A: VarIndexLdVar
  loc_B3E660: PopAd
  loc_B3E662: FLdRfVar var_180
  loc_B3E665: FLdRfVar var_F8
  loc_B3E668: LitI4 0
  loc_B3E66D: LitI2_Byte 0
  loc_B3E66F: LitI4 1
  loc_B3E674: ImpAdLdI4 MemVar_C0F044
  loc_B3E677: LitStr "privaterooms\"
  loc_B3E67A: ConcatStr
  loc_B3E67B: CVarStr var_EC
  loc_B3E67E: FLdRfVar var_11C
  loc_B3E681: ConcatVar var_12C
  loc_B3E685: LitVarStr var_10C, "\pass.txt"
  loc_B3E68A: ConcatVar var_15C
  loc_B3E68E: CStrVarVal var_FC
  loc_B3E692: ImpAdLdRf MemVar_C0F040
  loc_B3E695: NewIfNullPr IFileSystem3
  loc_B3E698: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B3E69D: FLdPr var_F8
  loc_B3E6A0:  = Me.ReadAll
  loc_B3E6A5: ILdRf var_180
  loc_B3E6A8: FLdPrThis
  loc_B3E6A9: VCallAd Control_ID_Text14
  loc_B3E6AC: FStAdFunc var_188
  loc_B3E6AF: FLdPr var_188
  loc_B3E6B2: Me.Text = from_stack_1
  loc_B3E6B7: FFreeStr var_8C = "": var_FC = ""
  loc_B3E6C0: FFreeAd var_88 = "": var_F8 = ""
  loc_B3E6C9: FFreeVar var_AC = "": var_BC = "": var_EC = "": var_11C = "": var_12C = ""
  loc_B3E6D8: FLdRfVar var_8C
  loc_B3E6DB: FLdPrThis
  loc_B3E6DC: VCallAd Control_ID_Combo3
  loc_B3E6DF: FStAdFunc var_88
  loc_B3E6E2: FLdPr var_88
  loc_B3E6E5:  = Me.Text
  loc_B3E6EA: LitVarI2 var_CC, 0
  loc_B3E6EF: PopAdLdVar
  loc_B3E6F0: LitI4 0
  loc_B3E6F5: LitI4 -1
  loc_B3E6FA: LitVarStr var_9C, " "
  loc_B3E6FF: FStVarCopyObj var_AC
  loc_B3E702: FLdRfVar var_AC
  loc_B3E705: ILdRf var_8C
  loc_B3E708: FLdRfVar var_BC
  loc_B3E70B: ImpAdCallFPR4  = Split(, , , )
  loc_B3E710: FLdRfVar var_BC
  loc_B3E713: VarIndexLdVar
  loc_B3E719: CStrVarVal var_FC
  loc_B3E71D: FLdPrThis
  loc_B3E71E: VCallAd Control_ID_room_id
  loc_B3E721: FStAdFunc var_F8
  loc_B3E724: FLdPr var_F8
  loc_B3E727: Me.Caption = from_stack_1
  loc_B3E72C: FFreeStr var_8C = ""
  loc_B3E733: FFreeAd var_88 = ""
  loc_B3E73A: FFreeVar var_AC = "": var_BC = ""
  loc_B3E743: FLdRfVar var_8C
  loc_B3E746: FLdPrThis
  loc_B3E747: VCallAd Control_ID_Text14
  loc_B3E74A: FStAdFunc var_88
  loc_B3E74D: FLdPr var_88
  loc_B3E750:  = Me.Text
  loc_B3E755: ILdRf var_8C
  loc_B3E758: LitStr " "
  loc_B3E75B: NeStr
  loc_B3E75D: FLdRfVar var_FC
  loc_B3E760: FLdPrThis
  loc_B3E761: VCallAd Control_ID_Text14
  loc_B3E764: FStAdFunc var_F8
  loc_B3E767: FLdPr var_F8
  loc_B3E76A:  = Me.Text
  loc_B3E76F: ILdRf var_FC
  loc_B3E772: LitStr vbNullString
  loc_B3E775: NeStr
  loc_B3E777: AndI4
  loc_B3E778: FLdRfVar var_180
  loc_B3E77B: FLdPrThis
  loc_B3E77C: VCallAd Control_ID_Text14
  loc_B3E77F: FStAdFunc var_188
  loc_B3E782: FLdPr var_188
  loc_B3E785:  = Me.Text
  loc_B3E78A: ILdRf var_180
  loc_B3E78D: LitStr "null"
  loc_B3E790: NeStr
  loc_B3E792: AndI4
  loc_B3E793: FFreeStr var_8C = "": var_FC = ""
  loc_B3E79C: FFreeAd var_88 = "": var_F8 = ""
  loc_B3E7A5: BranchF loc_B3E7BF
  loc_B3E7A8: LitI2_Byte &HFF
  loc_B3E7AA: FLdPrThis
  loc_B3E7AB: VCallAd Control_ID_Text14
  loc_B3E7AE: FStAdFunc var_88
  loc_B3E7B1: FLdPr var_88
  loc_B3E7B4: Me.Enabled = from_stack_1b
  loc_B3E7B9: FFree1Ad var_88
  loc_B3E7BC: Branch loc_B3E7D3
  loc_B3E7BF: LitI2_Byte 0
  loc_B3E7C1: FLdPrThis
  loc_B3E7C2: VCallAd Control_ID_Text14
  loc_B3E7C5: FStAdFunc var_88
  loc_B3E7C8: FLdPr var_88
  loc_B3E7CB: Me.Enabled = from_stack_1b
  loc_B3E7D0: FFree1Ad var_88
  loc_B3E7D3: LitI2_Byte &HFF
  loc_B3E7D5: FLdPrThis
  loc_B3E7D6: VCallAd Control_ID_Command10
  loc_B3E7D9: FStAdFunc var_88
  loc_B3E7DC: FLdPr var_88
  loc_B3E7DF: Me.Enabled = from_stack_1b
  loc_B3E7E4: FFree1Ad var_88
  loc_B3E7E7: LitI2_Byte &HFF
  loc_B3E7E9: FLdPrThis
  loc_B3E7EA: VCallAd Control_ID_Command11
  loc_B3E7ED: FStAdFunc var_88
  loc_B3E7F0: FLdPr var_88
  loc_B3E7F3: Me.Enabled = from_stack_1b
  loc_B3E7F8: FFree1Ad var_88
  loc_B3E7FB: LitI2_Byte &HFF
  loc_B3E7FD: FLdPrThis
  loc_B3E7FE: VCallAd Control_ID_Command12
  loc_B3E801: FStAdFunc var_88
  loc_B3E804: FLdPr var_88
  loc_B3E807: Me.Enabled = from_stack_1b
  loc_B3E80C: FFree1Ad var_88
  loc_B3E80F: LitI2_Byte &HFF
  loc_B3E811: FLdPrThis
  loc_B3E812: VCallAd Control_ID_Command20
  loc_B3E815: FStAdFunc var_88
  loc_B3E818: FLdPr var_88
  loc_B3E81B: Me.Enabled = from_stack_1b
  loc_B3E820: FFree1Ad var_88
  loc_B3E823: LitI2_Byte &HFF
  loc_B3E825: FLdPrThis
  loc_B3E826: VCallAd Control_ID_Text12
  loc_B3E829: FStAdFunc var_88
  loc_B3E82C: FLdPr var_88
  loc_B3E82F: Me.Enabled = from_stack_1b
  loc_B3E834: FFree1Ad var_88
  loc_B3E837: LitI2_Byte &HFF
  loc_B3E839: FLdPrThis
  loc_B3E83A: VCallAd Control_ID_Text13
  loc_B3E83D: FStAdFunc var_88
  loc_B3E840: FLdPr var_88
  loc_B3E843: Me.Enabled = from_stack_1b
  loc_B3E848: FFree1Ad var_88
  loc_B3E84B: ExitProcHresult
End Sub

Private Sub Command13_Click() 'B2D238
  'Data Table: 549FD0
  loc_B2CFBC: LitStr "SL"
  loc_B2CFBF: LitI4 0
  loc_B2CFC4: FLdRfVar var_9C
  loc_B2CFC7: Ary1StStrCopy
  loc_B2CFC8: LitStr "RL"
  loc_B2CFCB: LitI4 1
  loc_B2CFD0: FLdRfVar var_9C
  loc_B2CFD3: Ary1StStrCopy
  loc_B2CFD4: LitStr "PR"
  loc_B2CFD7: LitI4 2
  loc_B2CFDC: FLdRfVar var_9C
  loc_B2CFDF: Ary1StStrCopy
  loc_B2CFE0: LitStr "RQ"
  loc_B2CFE3: LitI4 3
  loc_B2CFE8: FLdRfVar var_9C
  loc_B2CFEB: Ary1StStrCopy
  loc_B2CFEC: LitStr "SV"
  loc_B2CFEF: LitI4 4
  loc_B2CFF4: FLdRfVar var_9C
  loc_B2CFF7: Ary1StStrCopy
  loc_B2CFF8: LitStr "Q]"
  loc_B2CFFB: LitI4 5
  loc_B2D000: FLdRfVar var_9C
  loc_B2D003: Ary1StStrCopy
  loc_B2D004: LitStr "R]"
  loc_B2D007: LitI4 6
  loc_B2D00C: FLdRfVar var_9C
  loc_B2D00F: Ary1StStrCopy
  loc_B2D010: LitStr "PL"
  loc_B2D013: LitI4 7
  loc_B2D018: FLdRfVar var_9C
  loc_B2D01B: Ary1StStrCopy
  loc_B2D01C: LitStr "RN"
  loc_B2D01F: LitI4 8
  loc_B2D024: FLdRfVar var_9C
  loc_B2D027: Ary1StStrCopy
  loc_B2D028: LitStr "RR"
  loc_B2D02B: LitI4 9
  loc_B2D030: FLdRfVar var_9C
  loc_B2D033: Ary1StStrCopy
  loc_B2D034: LitVarI2 var_E0, 0
  loc_B2D039: FLdRfVar var_B0
  loc_B2D03C: LitVarI2 var_D0, 9
  loc_B2D041: ForVar var_100
  loc_B2D047: FLdRfVar var_108
  loc_B2D04A: FLdRfVar var_B0
  loc_B2D04D: CI2Var
  loc_B2D04E: FLdPrThis
  loc_B2D04F: VCallAd Control_ID_catprop
  loc_B2D052: FStAdFunc var_104
  loc_B2D055: FLdPr var_104
  loc_B2D058: Set from_stack_2 = Me(from_stack_1)
  loc_B2D05D: FLdPr var_108
  loc_B2D060: Me.Clear
  loc_B2D065: FFreeAd var_104 = ""
  loc_B2D06C: LitVar_Missing var_C0
  loc_B2D06F: PopAdLdVar
  loc_B2D070: LitStr "0"
  loc_B2D073: FLdRfVar var_108
  loc_B2D076: FLdRfVar var_B0
  loc_B2D079: CI2Var
  loc_B2D07A: FLdPrThis
  loc_B2D07B: VCallAd Control_ID_catprop
  loc_B2D07E: FStAdFunc var_104
  loc_B2D081: FLdPr var_104
  loc_B2D084: Set from_stack_2 = Me(from_stack_1)
  loc_B2D089: FLdPr var_108
  loc_B2D08C: Me.AddItem from_stack_1, from_stack_2
  loc_B2D091: FFreeAd var_104 = ""
  loc_B2D098: LitVar_Missing var_C0
  loc_B2D09B: PopAdLdVar
  loc_B2D09C: LitStr "1"
  loc_B2D09F: FLdRfVar var_108
  loc_B2D0A2: FLdRfVar var_B0
  loc_B2D0A5: CI2Var
  loc_B2D0A6: FLdPrThis
  loc_B2D0A7: VCallAd Control_ID_catprop
  loc_B2D0AA: FStAdFunc var_104
  loc_B2D0AD: FLdPr var_104
  loc_B2D0B0: Set from_stack_2 = Me(from_stack_1)
  loc_B2D0B5: FLdPr var_108
  loc_B2D0B8: Me.AddItem from_stack_1, from_stack_2
  loc_B2D0BD: FFreeAd var_104 = ""
  loc_B2D0C4: LitVar_Missing var_C0
  loc_B2D0C7: PopAdLdVar
  loc_B2D0C8: LitStr "2"
  loc_B2D0CB: FLdRfVar var_108
  loc_B2D0CE: FLdRfVar var_B0
  loc_B2D0D1: CI2Var
  loc_B2D0D2: FLdPrThis
  loc_B2D0D3: VCallAd Control_ID_catprop
  loc_B2D0D6: FStAdFunc var_104
  loc_B2D0D9: FLdPr var_104
  loc_B2D0DC: Set from_stack_2 = Me(from_stack_1)
  loc_B2D0E1: FLdPr var_108
  loc_B2D0E4: Me.AddItem from_stack_1, from_stack_2
  loc_B2D0E9: FFreeAd var_104 = ""
  loc_B2D0F0: LitI4 0
  loc_B2D0F5: FStStrCopy var_11C
  loc_B2D0F8: FLdRfVar var_11C
  loc_B2D0FB: ImpAdLdI4 MemVar_C0F044
  loc_B2D0FE: LitStr "room_categories\categories.ini"
  loc_B2D101: ConcatStr
  loc_B2D102: CVarStr var_118
  loc_B2D105: FLdRfVar var_B0
  loc_B2D108: CI4Var
  loc_B2D10A: FLdRfVar var_9C
  loc_B2D10D: Ary1LdRf
  loc_B2D10E: CVarRef
  loc_B2D113: LitVarStr var_C0, "categories"
  loc_B2D118: PopAdLdVar
  loc_B2D119: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B2D11E: FStStrNoPop var_120
  loc_B2D121: FLdRfVar var_108
  loc_B2D124: FLdRfVar var_B0
  loc_B2D127: CI2Var
  loc_B2D128: FLdPrThis
  loc_B2D129: VCallAd Control_ID_catprop
  loc_B2D12C: FStAdFunc var_104
  loc_B2D12F: FLdPr var_104
  loc_B2D132: Set from_stack_2 = Me(from_stack_1)
  loc_B2D137: FLdPr var_108
  loc_B2D13A: Me.Text = from_stack_1
  loc_B2D13F: FFreeStr var_11C = ""
  loc_B2D146: FFreeAd var_104 = ""
  loc_B2D14D: FFree1Var var_118 = ""
  loc_B2D150: LitVarStr var_D0, "categorie_"
  loc_B2D155: FLdRfVar var_B0
  loc_B2D158: LitVarI2 var_C0, 1
  loc_B2D15D: AddVar var_118
  loc_B2D161: ConcatVar var_130
  loc_B2D165: PopAdLdVar
  loc_B2D166: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B2D16B: FStStrNoPop var_11C
  loc_B2D16E: FLdRfVar var_108
  loc_B2D171: FLdRfVar var_B0
  loc_B2D174: CI2Var
  loc_B2D175: FLdPrThis
  loc_B2D176: VCallAd Control_ID_catname
  loc_B2D179: FStAdFunc var_104
  loc_B2D17C: FLdPr var_104
  loc_B2D17F: Set from_stack_2 = Me(from_stack_1)
  loc_B2D184: FLdPr var_108
  loc_B2D187: Me.Text = from_stack_1
  loc_B2D18C: FFree1Str var_11C
  loc_B2D18F: FFreeAd var_104 = ""
  loc_B2D196: FFreeVar var_118 = ""
  loc_B2D19D: FLdRfVar var_136
  loc_B2D1A0: ImpAdLdI4 MemVar_C0F044
  loc_B2D1A3: LitStr "room_categories\allowtrade_"
  loc_B2D1A6: ConcatStr
  loc_B2D1A7: FStStrNoPop var_11C
  loc_B2D1AA: FLdRfVar var_B0
  loc_B2D1AD: CI4Var
  loc_B2D1AF: FLdRfVar var_9C
  loc_B2D1B2: Ary1LdI4
  loc_B2D1B3: ConcatStr
  loc_B2D1B4: FStStrNoPop var_120
  loc_B2D1B7: LitStr ".txt"
  loc_B2D1BA: ConcatStr
  loc_B2D1BB: FStStrNoPop var_134
  loc_B2D1BE: ImpAdLdRf MemVar_C0F040
  loc_B2D1C1: NewIfNullPr IFileSystem3
  loc_B2D1C4: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B2D1C9: FLdI2 var_136
  loc_B2D1CC: LitI2_Byte &HFF
  loc_B2D1CE: EqI2
  loc_B2D1CF: FFreeStr var_11C = "": var_120 = ""
  loc_B2D1D8: BranchF loc_B2D205
  loc_B2D1DB: LitI2_Byte 1
  loc_B2D1DD: FLdRfVar var_108
  loc_B2D1E0: FLdRfVar var_B0
  loc_B2D1E3: CI2Var
  loc_B2D1E4: FLdPrThis
  loc_B2D1E5: VCallAd Control_ID_allowtraden
  loc_B2D1E8: FStAdFunc var_104
  loc_B2D1EB: FLdPr var_104
  loc_B2D1EE: Set from_stack_2 = Me(from_stack_1)
  loc_B2D1F3: FLdPr var_108
  loc_B2D1F6: Me.Value = from_stack_1
  loc_B2D1FB: FFreeAd var_104 = ""
  loc_B2D202: Branch loc_B2D22C
  loc_B2D205: LitI2_Byte 0
  loc_B2D207: FLdRfVar var_108
  loc_B2D20A: FLdRfVar var_B0
  loc_B2D20D: CI2Var
  loc_B2D20E: FLdPrThis
  loc_B2D20F: VCallAd Control_ID_allowtraden
  loc_B2D212: FStAdFunc var_104
  loc_B2D215: FLdPr var_104
  loc_B2D218: Set from_stack_2 = Me(from_stack_1)
  loc_B2D21D: FLdPr var_108
  loc_B2D220: Me.Value = from_stack_1
  loc_B2D225: FFreeAd var_104 = ""
  loc_B2D22C: FLdRfVar var_B0
  loc_B2D22F: NextStepVar var_100
  loc_B2D235: ExitProcHresult
End Sub

Private Sub Command14_Click() 'B33FB8
  'Data Table: 549FD0
  loc_B33C40: LitI2_Byte 0
  loc_B33C42: FLdPrThis
  loc_B33C43: VCallAd Control_ID_Command13
  loc_B33C46: FStAdFunc var_88
  loc_B33C49: FLdPr var_88
  loc_B33C4C: Me.Enabled = from_stack_1b
  loc_B33C51: FFree1Ad var_88
  loc_B33C56: LitI2_Byte 0
  loc_B33C58: FLdPrThis
  loc_B33C59: VCallAd Control_ID_Command14
  loc_B33C5C: FStAdFunc var_88
  loc_B33C5F: FLdPr var_88
  loc_B33C62: Me.Enabled = from_stack_1b
  loc_B33C67: FFree1Ad var_88
  loc_B33C6C: LitStr "SL"
  loc_B33C6F: LitI4 0
  loc_B33C74: FLdRfVar var_A0
  loc_B33C77: Ary1StStrCopy
  loc_B33C7A: LitStr "RL"
  loc_B33C7D: LitI4 1
  loc_B33C82: FLdRfVar var_A0
  loc_B33C85: Ary1StStrCopy
  loc_B33C88: LitStr "PR"
  loc_B33C8B: LitI4 2
  loc_B33C90: FLdRfVar var_A0
  loc_B33C93: Ary1StStrCopy
  loc_B33C96: LitStr "RQ"
  loc_B33C99: LitI4 3
  loc_B33C9E: FLdRfVar var_A0
  loc_B33CA1: Ary1StStrCopy
  loc_B33CA4: LitStr "SV"
  loc_B33CA7: LitI4 4
  loc_B33CAC: FLdRfVar var_A0
  loc_B33CAF: Ary1StStrCopy
  loc_B33CB2: LitStr "Q]"
  loc_B33CB5: LitI4 5
  loc_B33CBA: FLdRfVar var_A0
  loc_B33CBD: Ary1StStrCopy
  loc_B33CC0: LitStr "R]"
  loc_B33CC3: LitI4 6
  loc_B33CC8: FLdRfVar var_A0
  loc_B33CCB: Ary1StStrCopy
  loc_B33CCE: LitStr "PL"
  loc_B33CD1: LitI4 7
  loc_B33CD6: FLdRfVar var_A0
  loc_B33CD9: Ary1StStrCopy
  loc_B33CDC: LitStr "RN"
  loc_B33CDF: LitI4 8
  loc_B33CE4: FLdRfVar var_A0
  loc_B33CE7: Ary1StStrCopy
  loc_B33CEA: LitStr "RR"
  loc_B33CED: LitI4 9
  loc_B33CF2: FLdRfVar var_A0
  loc_B33CF5: Ary1StStrCopy
  loc_B33CF8: LitVarI2 var_E4, 0
  loc_B33CFD: FLdRfVar var_B4
  loc_B33D00: LitVarI2 var_D4, 9
  loc_B33D05: ForVar var_104
  loc_B33D0D: On Error Resume Next
  loc_B33D12: FLdRfVar var_10C
  loc_B33D15: FLdRfVar var_108
  loc_B33D18: FLdRfVar var_B4
  loc_B33D1B: CI2Var
  loc_B33D1C: FLdPrThis
  loc_B33D1D: VCallAd Control_ID_catprop
  loc_B33D20: FStAdFunc var_88
  loc_B33D23: FLdPr var_88
  loc_B33D26: Set from_stack_2 = Me(from_stack_1)
  loc_B33D2B: FLdPr var_108
  loc_B33D2E:  = Me.Text
  loc_B33D33: ImpAdLdI4 MemVar_C0F044
  loc_B33D36: LitStr "room_categories\categories.ini"
  loc_B33D39: ConcatStr
  loc_B33D3A: FStStrNoPop var_110
  loc_B33D3D: ILdRf var_10C
  loc_B33D40: FLdRfVar var_B4
  loc_B33D43: CI4Var
  loc_B33D45: FLdRfVar var_A0
  loc_B33D48: Ary1LdI4
  loc_B33D49: LitStr "categories"
  loc_B33D4C: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B33D51: FFreeStr var_10C = ""
  loc_B33D58: FFreeAd var_88 = ""
  loc_B33D61: FLdRfVar var_10C
  loc_B33D64: FLdRfVar var_108
  loc_B33D67: FLdRfVar var_B4
  loc_B33D6A: CI2Var
  loc_B33D6B: FLdPrThis
  loc_B33D6C: VCallAd Control_ID_catname
  loc_B33D6F: FStAdFunc var_88
  loc_B33D72: FLdPr var_88
  loc_B33D75: Set from_stack_2 = Me(from_stack_1)
  loc_B33D7A: FLdPr var_108
  loc_B33D7D:  = Me.Text
  loc_B33D82: FLdRfVar var_110
  loc_B33D85: FLdRfVar var_134
  loc_B33D88: ImpAdLdRf MemVar_C10514
  loc_B33D8B: NewIfNullPr Global
  loc_B33D8E:  = Global.App
  loc_B33D93: FLdPr var_134
  loc_B33D96:  = App.Path
  loc_B33D9B: ILdRf var_110
  loc_B33D9E: LitStr "\locale\"
  loc_B33DA1: ConcatStr
  loc_B33DA2: FStStrNoPop var_16C
  loc_B33DA5: LitI4 0
  loc_B33DAA: FStStrCopy var_168
  loc_B33DAD: FLdRfVar var_168
  loc_B33DB0: ImpAdLdRf MemVar_C0F03C
  loc_B33DB3: CVarRef
  loc_B33DB8: LitVarStr var_144, "lang"
  loc_B33DBD: FStVarCopyObj var_154
  loc_B33DC0: FLdRfVar var_154
  loc_B33DC3: LitVarStr var_E4, "server"
  loc_B33DC8: PopAdLdVar
  loc_B33DC9: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B33DCE: FStStrNoPop var_170
  loc_B33DD1: ConcatStr
  loc_B33DD2: FStStrNoPop var_174
  loc_B33DD5: LitStr "\locale.txt"
  loc_B33DD8: ConcatStr
  loc_B33DD9: FStStrNoPop var_17C
  loc_B33DDC: ILdRf var_10C
  loc_B33DDF: LitVarStr var_D4, "categorie_"
  loc_B33DE4: FLdRfVar var_B4
  loc_B33DE7: LitVarI2 var_C4, 1
  loc_B33DEC: AddVar var_120
  loc_B33DF0: ConcatVar var_130
  loc_B33DF4: CStrVarVal var_178
  loc_B33DF8: LitStr "locale"
  loc_B33DFB: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B33E00: FFreeStr var_110 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_10C = ""
  loc_B33E13: FFreeAd var_88 = "": var_108 = ""
  loc_B33E1C: FFreeVar var_120 = "": var_154 = ""
  loc_B33E27: FLdRfVar var_17E
  loc_B33E2A: FLdRfVar var_108
  loc_B33E2D: FLdRfVar var_B4
  loc_B33E30: CI2Var
  loc_B33E31: FLdPrThis
  loc_B33E32: VCallAd Control_ID_allowtraden
  loc_B33E35: FStAdFunc var_88
  loc_B33E38: FLdPr var_88
  loc_B33E3B: Set from_stack_2 = Me(from_stack_1)
  loc_B33E40: FLdPr var_108
  loc_B33E43:  = Me.Value
  loc_B33E48: FLdI2 var_17E
  loc_B33E4B: LitI2_Byte 1
  loc_B33E4D: EqI2
  loc_B33E4E: FLdRfVar var_180
  loc_B33E51: ImpAdLdI4 MemVar_C0F044
  loc_B33E54: LitStr "room_categories\allowtrade_"
  loc_B33E57: ConcatStr
  loc_B33E58: FStStrNoPop var_10C
  loc_B33E5B: FLdRfVar var_B4
  loc_B33E5E: CI4Var
  loc_B33E60: FLdRfVar var_A0
  loc_B33E63: Ary1LdI4
  loc_B33E64: ConcatStr
  loc_B33E65: FStStrNoPop var_110
  loc_B33E68: LitStr ".txt"
  loc_B33E6B: ConcatStr
  loc_B33E6C: FStStrNoPop var_168
  loc_B33E6F: ImpAdLdRf MemVar_C0F040
  loc_B33E72: NewIfNullPr IFileSystem3
  loc_B33E75: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B33E7A: FLdI2 var_180
  loc_B33E7D: LitI2_Byte 0
  loc_B33E7F: EqI2
  loc_B33E80: AndI4
  loc_B33E81: FFreeStr var_10C = "": var_110 = ""
  loc_B33E8A: FFreeAd var_88 = ""
  loc_B33E91: BranchF loc_B33ED5
  loc_B33E96: FLdRfVar var_88
  loc_B33E99: LitI2_Byte 0
  loc_B33E9B: LitI2_Byte &HFF
  loc_B33E9D: ImpAdLdI4 MemVar_C0F044
  loc_B33EA0: LitStr "room_categories\allowtrade_"
  loc_B33EA3: ConcatStr
  loc_B33EA4: FStStrNoPop var_10C
  loc_B33EA7: FLdRfVar var_B4
  loc_B33EAA: CI4Var
  loc_B33EAC: FLdRfVar var_A0
  loc_B33EAF: Ary1LdI4
  loc_B33EB0: ConcatStr
  loc_B33EB1: FStStrNoPop var_110
  loc_B33EB4: LitStr ".txt"
  loc_B33EB7: ConcatStr
  loc_B33EB8: FStStrNoPop var_168
  loc_B33EBB: ImpAdLdRf MemVar_C0F040
  loc_B33EBE: NewIfNullPr IFileSystem3
  loc_B33EC1: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B33EC6: FFreeStr var_10C = "": var_110 = ""
  loc_B33ECF: FFree1Ad var_88
  loc_B33ED2: Branch loc_B33F7A
  loc_B33ED7: FLdRfVar var_17E
  loc_B33EDA: FLdRfVar var_108
  loc_B33EDD: FLdRfVar var_B4
  loc_B33EE0: CI2Var
  loc_B33EE1: FLdPrThis
  loc_B33EE2: VCallAd Control_ID_allowtraden
  loc_B33EE5: FStAdFunc var_88
  loc_B33EE8: FLdPr var_88
  loc_B33EEB: Set from_stack_2 = Me(from_stack_1)
  loc_B33EF0: FLdPr var_108
  loc_B33EF3:  = Me.Value
  loc_B33EF8: FLdI2 var_17E
  loc_B33EFB: LitI2_Byte 0
  loc_B33EFD: EqI2
  loc_B33EFE: FLdRfVar var_180
  loc_B33F01: ImpAdLdI4 MemVar_C0F044
  loc_B33F04: LitStr "room_categories\allowtrade_"
  loc_B33F07: ConcatStr
  loc_B33F08: FStStrNoPop var_10C
  loc_B33F0B: FLdRfVar var_B4
  loc_B33F0E: CI4Var
  loc_B33F10: FLdRfVar var_A0
  loc_B33F13: Ary1LdI4
  loc_B33F14: ConcatStr
  loc_B33F15: FStStrNoPop var_110
  loc_B33F18: LitStr ".txt"
  loc_B33F1B: ConcatStr
  loc_B33F1C: FStStrNoPop var_168
  loc_B33F1F: ImpAdLdRf MemVar_C0F040
  loc_B33F22: NewIfNullPr IFileSystem3
  loc_B33F25: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B33F2A: FLdI2 var_180
  loc_B33F2D: LitI2_Byte &HFF
  loc_B33F2F: EqI2
  loc_B33F30: AndI4
  loc_B33F31: FFreeStr var_10C = "": var_110 = ""
  loc_B33F3A: FFreeAd var_88 = ""
  loc_B33F41: BranchF loc_B33F7A
  loc_B33F46: LitI2_Byte 0
  loc_B33F48: ImpAdLdI4 MemVar_C0F044
  loc_B33F4B: LitStr "room_categories\allowtrade_"
  loc_B33F4E: ConcatStr
  loc_B33F4F: FStStrNoPop var_10C
  loc_B33F52: FLdRfVar var_B4
  loc_B33F55: CI4Var
  loc_B33F57: FLdRfVar var_A0
  loc_B33F5A: Ary1LdI4
  loc_B33F5B: ConcatStr
  loc_B33F5C: FStStrNoPop var_110
  loc_B33F5F: LitStr ".txt"
  loc_B33F62: ConcatStr
  loc_B33F63: FStStrNoPop var_168
  loc_B33F66: ImpAdLdRf MemVar_C0F040
  loc_B33F69: NewIfNullPr IFileSystem3
  loc_B33F6C: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_B33F71: FFreeStr var_10C = "": var_110 = ""
  loc_B33F7E: FLdRfVar var_B4
  loc_B33F81: NextStepVar var_104
  loc_B33F89: LitI2_Byte &HFF
  loc_B33F8B: FLdPrThis
  loc_B33F8C: VCallAd Control_ID_Command14
  loc_B33F8F: FStAdFunc var_88
  loc_B33F92: FLdPr var_88
  loc_B33F95: Me.Enabled = from_stack_1b
  loc_B33F9A: FFree1Ad var_88
  loc_B33F9F: LitI2_Byte &HFF
  loc_B33FA1: FLdPrThis
  loc_B33FA2: VCallAd Control_ID_Command13
  loc_B33FA5: FStAdFunc var_88
  loc_B33FA8: FLdPr var_88
  loc_B33FAB: Me.Enabled = from_stack_1b
  loc_B33FB0: FFree1Ad var_88
  loc_B33FB5: ExitProcHresult
End Sub

Private Sub Command15_Click() 'B25FAC
  'Data Table: 549FD0
  loc_B25E5C: LitI2_Byte 0
  loc_B25E5E: FLdPrThis
  loc_B25E5F: VCallAd Control_ID_Command15
  loc_B25E62: FStAdFunc var_88
  loc_B25E65: FLdPr var_88
  loc_B25E68: Me.Enabled = from_stack_1b
  loc_B25E6D: FFree1Ad var_88
  loc_B25E70: FLdRfVar var_8C
  loc_B25E73: FLdPrThis
  loc_B25E74: VCallAd Control_ID_Text16
  loc_B25E77: FStAdFunc var_88
  loc_B25E7A: FLdPr var_88
  loc_B25E7D:  = Me.Text
  loc_B25E82: ImpAdLdI4 MemVar_C0F044
  loc_B25E85: LitStr "configuration\settings.ini"
  loc_B25E88: ConcatStr
  loc_B25E89: FStStrNoPop var_90
  loc_B25E8C: ILdRf var_8C
  loc_B25E8F: LitStr "replacement"
  loc_B25E92: LitStr "config"
  loc_B25E95: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B25E9A: FFreeStr var_8C = ""
  loc_B25EA1: FFree1Ad var_88
  loc_B25EA4: FLdRfVar var_92
  loc_B25EA7: FLdRfVar var_88
  loc_B25EAA: LitI4 0
  loc_B25EAF: LitI2_Byte 0
  loc_B25EB1: LitI4 1
  loc_B25EB6: ImpAdLdI4 MemVar_C0F044
  loc_B25EB9: LitStr "configuration\bobbafilter.ini"
  loc_B25EBC: ConcatStr
  loc_B25EBD: FStStrNoPop var_8C
  loc_B25EC0: ImpAdLdRf MemVar_C0F040
  loc_B25EC3: NewIfNullPr IFileSystem3
  loc_B25EC6: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B25ECB: FLdPr var_88
  loc_B25ECE:  = Me.AtEndOfStream
  loc_B25ED3: FLdI2 var_92
  loc_B25ED6: LitI2_Byte 0
  loc_B25ED8: EqI2
  loc_B25ED9: FFree1Str var_8C
  loc_B25EDC: FFree1Ad var_88
  loc_B25EDF: BranchF loc_B25F96
  loc_B25EE2: LitI4 0
  loc_B25EE7: FStStrCopy var_8C
  loc_B25EEA: FLdRfVar var_8C
  loc_B25EED: ImpAdLdI4 MemVar_C0F044
  loc_B25EF0: LitStr "configuration\settings.ini"
  loc_B25EF3: ConcatStr
  loc_B25EF4: CVarStr var_D4
  loc_B25EF7: LitVarStr var_B4, "replacement"
  loc_B25EFC: FStVarCopyObj var_C4
  loc_B25EFF: FLdRfVar var_C4
  loc_B25F02: LitVarStr var_A4, "config"
  loc_B25F07: PopAdLdVar
  loc_B25F08: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B25F0D: CVarStr var_F4
  loc_B25F10: LitI4 1
  loc_B25F15: FLdRfVar var_E4
  loc_B25F18: ImpAdCallFPR4  = Chr()
  loc_B25F1D: FLdRfVar var_E4
  loc_B25F20: ConcatVar var_104
  loc_B25F24: FLdRfVar var_108
  loc_B25F27: FLdRfVar var_88
  loc_B25F2A: LitI4 0
  loc_B25F2F: LitI2_Byte 0
  loc_B25F31: LitI4 1
  loc_B25F36: ImpAdLdI4 MemVar_C0F044
  loc_B25F39: LitStr "configuration\bobbafilter.ini"
  loc_B25F3C: ConcatStr
  loc_B25F3D: FStStrNoPop var_90
  loc_B25F40: ImpAdLdRf MemVar_C0F040
  loc_B25F43: NewIfNullPr IFileSystem3
  loc_B25F46: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B25F4B: FLdPr var_88
  loc_B25F4E:  = Me.ReadAll
  loc_B25F53: FLdZeroAd var_108
  loc_B25F56: CVarStr var_118
  loc_B25F59: ConcatVar var_128
  loc_B25F5D: CStrVarVal var_12C
  loc_B25F61: ImpAdLdRf MemVar_C0F018
  loc_B25F64: NewIfNullPr frmMain
  loc_B25F67: VCallAd Control_ID_
  loc_B25F6A: FStAdFunc var_130
  loc_B25F6D: FLdPr var_130
  loc_B25F70: frmMain.TextBox.Text = from_stack_1
  loc_B25F75: FFreeStr var_8C = "": var_90 = ""
  loc_B25F7E: FFreeAd var_88 = ""
  loc_B25F85: FFreeVar var_C4 = "": var_D4 = "": var_F4 = "": var_E4 = "": var_104 = "": var_118 = ""
  loc_B25F96: LitI2_Byte &HFF
  loc_B25F98: FLdPrThis
  loc_B25F99: VCallAd Control_ID_Command15
  loc_B25F9C: FStAdFunc var_88
  loc_B25F9F: FLdPr var_88
  loc_B25FA2: Me.Enabled = from_stack_1b
  loc_B25FA7: FFree1Ad var_88
  loc_B25FAA: ExitProcHresult
End Sub

Private Sub Text16_Change() 'B19884
  'Data Table: 549FD0
  loc_B1986C: LitI2_Byte &HFF
  loc_B1986E: FLdPrThis
  loc_B1986F: VCallAd Control_ID_Command15
  loc_B19872: FStAdFunc var_88
  loc_B19875: FLdPr var_88
  loc_B19878: Me.Enabled = from_stack_1b
  loc_B1987D: FFree1Ad var_88
  loc_B19880: ExitProcHresult
End Sub

Private Sub Command16_Click() 'B1FDDC
  'Data Table: 549FD0
  loc_B1FD40: FLdRfVar var_9A
  loc_B1FD43: ImpAdLdI4 MemVar_C0F044
  loc_B1FD46: LitStr "ranks\"
  loc_B1FD49: ConcatStr
  loc_B1FD4A: FStStrNoPop var_90
  loc_B1FD4D: FLdRfVar var_8C
  loc_B1FD50: FLdPrThis
  loc_B1FD51: VCallAd Control_ID_Combo4
  loc_B1FD54: FStAdFunc var_88
  loc_B1FD57: FLdPr var_88
  loc_B1FD5A:  = Me.Text
  loc_B1FD5F: ILdRf var_8C
  loc_B1FD62: ConcatStr
  loc_B1FD63: FStStrNoPop var_94
  loc_B1FD66: LitStr ".ini"
  loc_B1FD69: ConcatStr
  loc_B1FD6A: FStStrNoPop var_98
  loc_B1FD6D: ImpAdLdRf MemVar_C0F040
  loc_B1FD70: NewIfNullPr IFileSystem3
  loc_B1FD73: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B1FD78: FLdI2 var_9A
  loc_B1FD7B: LitI2_Byte &HFF
  loc_B1FD7D: EqI2
  loc_B1FD7E: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_B1FD89: FFree1Ad var_88
  loc_B1FD8C: BranchF loc_B1FD9D
  loc_B1FD8F: FLdRfVar var_AC
  loc_B1FD92: Call Proc_31_31_B5AF9C()
  loc_B1FD97: FFree1Var var_AC = ""
  loc_B1FD9A: Branch loc_B1FDDA
  loc_B1FD9D: LitVarStr var_BC, "rank_not_found"
  loc_B1FDA2: PopAdLdVar
  loc_B1FDA3: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B1FDA8: FStStr var_8C
  loc_B1FDAB: LitVar_Missing var_11C
  loc_B1FDAE: LitVar_Missing var_FC
  loc_B1FDB1: LitVarStr var_CC, "Server"
  loc_B1FDB6: FStVarCopyObj var_DC
  loc_B1FDB9: FLdRfVar var_DC
  loc_B1FDBC: LitI4 &H10
  loc_B1FDC1: FLdZeroAd var_8C
  loc_B1FDC4: CVarStr var_AC
  loc_B1FDC7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B1FDCC: FFree1Str var_8C
  loc_B1FDCF: FFreeVar var_AC = "": var_DC = "": var_FC = ""
  loc_B1FDDA: ExitProcHresult
End Sub

Private Sub Command17_Click() 'B4D5EC
  'Data Table: 549FD0
  loc_B4CE64: FLdRfVar var_9A
  loc_B4CE67: ImpAdLdI4 MemVar_C0F044
  loc_B4CE6A: LitStr "ranks\"
  loc_B4CE6D: ConcatStr
  loc_B4CE6E: FStStrNoPop var_90
  loc_B4CE71: FLdRfVar var_8C
  loc_B4CE74: FLdPrThis
  loc_B4CE75: VCallAd Control_ID_Combo4
  loc_B4CE78: FStAdFunc var_88
  loc_B4CE7B: FLdPr var_88
  loc_B4CE7E:  = Me.Text
  loc_B4CE83: ILdRf var_8C
  loc_B4CE86: ConcatStr
  loc_B4CE87: FStStrNoPop var_94
  loc_B4CE8A: LitStr ".ini"
  loc_B4CE8D: ConcatStr
  loc_B4CE8E: FStStrNoPop var_98
  loc_B4CE91: ImpAdLdRf MemVar_C0F040
  loc_B4CE94: NewIfNullPr IFileSystem3
  loc_B4CE97: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B4CE9C: FLdI2 var_9A
  loc_B4CE9F: LitI2_Byte &HFF
  loc_B4CEA1: EqI2
  loc_B4CEA2: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_B4CEAD: FFree1Ad var_88
  loc_B4CEB0: BranchF loc_B4D5AC
  loc_B4CEB3: LitI2_Byte 0
  loc_B4CEB5: FLdPrThis
  loc_B4CEB6: VCallAd Control_ID_Command16
  loc_B4CEB9: FStAdFunc var_88
  loc_B4CEBC: FLdPr var_88
  loc_B4CEBF: Me.Enabled = from_stack_1b
  loc_B4CEC4: FFree1Ad var_88
  loc_B4CEC7: LitI2_Byte 0
  loc_B4CEC9: FLdPrThis
  loc_B4CECA: VCallAd Control_ID_Command17
  loc_B4CECD: FStAdFunc var_88
  loc_B4CED0: FLdPr var_88
  loc_B4CED3: Me.Enabled = from_stack_1b
  loc_B4CED8: FFree1Ad var_88
  loc_B4CEDB: LitI2_Byte 0
  loc_B4CEDD: FLdPrThis
  loc_B4CEDE: VCallAd Control_ID_Combo4
  loc_B4CEE1: FStAdFunc var_88
  loc_B4CEE4: FLdPr var_88
  loc_B4CEE7: Me.Enabled = from_stack_1b
  loc_B4CEEC: FFree1Ad var_88
  loc_B4CEEF: LitVarStr var_BC, ","
  loc_B4CEF4: FStVarCopy
  loc_B4CEF8: LitVarI2 var_EC, 0
  loc_B4CEFD: FLdRfVar var_CC
  loc_B4CF00: LitVarI2 var_DC, 20
  loc_B4CF05: ForVar var_10C
  loc_B4CF0B: FLdRfVar var_9A
  loc_B4CF0E: FLdRfVar var_110
  loc_B4CF11: FLdRfVar var_CC
  loc_B4CF14: CI2Var
  loc_B4CF15: FLdPrThis
  loc_B4CF16: VCallAd Control_ID_rights
  loc_B4CF19: FStAdFunc var_88
  loc_B4CF1C: FLdPr var_88
  loc_B4CF1F: Set from_stack_2 = Me(from_stack_1)
  loc_B4CF24: FLdPr var_110
  loc_B4CF27:  = Me.Value
  loc_B4CF2C: FLdI2 var_9A
  loc_B4CF2F: LitI2_Byte 1
  loc_B4CF31: EqI2
  loc_B4CF32: FFreeAd var_88 = ""
  loc_B4CF39: BranchF loc_B4CF95
  loc_B4CF3C: FLdRfVar var_8C
  loc_B4CF3F: FLdRfVar var_110
  loc_B4CF42: FLdRfVar var_CC
  loc_B4CF45: CI2Var
  loc_B4CF46: FLdPrThis
  loc_B4CF47: VCallAd Control_ID_rights
  loc_B4CF4A: FStAdFunc var_88
  loc_B4CF4D: FLdPr var_88
  loc_B4CF50: Set from_stack_2 = Me(from_stack_1)
  loc_B4CF55: FLdPr var_110
  loc_B4CF58:  = Me.Caption
  loc_B4CF5D: FLdRfVar var_AC
  loc_B4CF60: LitI4 0
  loc_B4CF65: LitI4 -1
  loc_B4CF6A: LitI4 1
  loc_B4CF6F: LitStr ","
  loc_B4CF72: LitStr ":"
  loc_B4CF75: ILdRf var_8C
  loc_B4CF78: ImpAdCallI2 Replace(, , , , , )
  loc_B4CF7D: CVarStr var_120
  loc_B4CF80: ConcatVar var_130
  loc_B4CF84: FStVar var_AC
  loc_B4CF88: FFree1Str var_8C
  loc_B4CF8B: FFreeAd var_88 = ""
  loc_B4CF92: FFree1Var var_120 = ""
  loc_B4CF95: FLdRfVar var_CC
  loc_B4CF98: NextStepVar var_10C
  loc_B4CF9E: LitI4 0
  loc_B4CFA3: LitI4 -1
  loc_B4CFA8: LitI4 1
  loc_B4CFAD: LitStr ","
  loc_B4CFB0: LitStr ",,"
  loc_B4CFB3: FLdRfVar var_AC
  loc_B4CFB6: CStrVarVal var_8C
  loc_B4CFBA: ImpAdCallI2 Replace(, , , , , )
  loc_B4CFBF: CVarStr var_120
  loc_B4CFC2: FStVar var_AC
  loc_B4CFC6: FFree1Str var_8C
  loc_B4CFC9: ImpAdLdI4 MemVar_C0F044
  loc_B4CFCC: LitStr "ranks\"
  loc_B4CFCF: ConcatStr
  loc_B4CFD0: FStStrNoPop var_90
  loc_B4CFD3: FLdRfVar var_8C
  loc_B4CFD6: FLdPrThis
  loc_B4CFD7: VCallAd Control_ID_Combo4
  loc_B4CFDA: FStAdFunc var_88
  loc_B4CFDD: FLdPr var_88
  loc_B4CFE0:  = Me.Text
  loc_B4CFE5: ILdRf var_8C
  loc_B4CFE8: ConcatStr
  loc_B4CFE9: FStStrNoPop var_94
  loc_B4CFEC: LitStr ".ini"
  loc_B4CFEF: ConcatStr
  loc_B4CFF0: FStStrNoPop var_134
  loc_B4CFF3: FLdRfVar var_AC
  loc_B4CFF6: CStrVarVal var_98
  loc_B4CFFA: LitStr "speech_cmd"
  loc_B4CFFD: LitStr "rank"
  loc_B4D000: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B4D005: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B4D012: FFree1Ad var_88
  loc_B4D015: FLdRfVar var_9A
  loc_B4D018: FLdRfVar var_110
  loc_B4D01B: LitI2_Byte 0
  loc_B4D01D: FLdPrThis
  loc_B4D01E: VCallAd Control_ID_mtool
  loc_B4D021: FStAdFunc var_88
  loc_B4D024: FLdPr var_88
  loc_B4D027: Set from_stack_2 = Me(from_stack_1)
  loc_B4D02C: FLdPr var_110
  loc_B4D02F:  = Me.Value
  loc_B4D034: FLdI2 var_9A
  loc_B4D037: LitI2_Byte 1
  loc_B4D039: EqI2
  loc_B4D03A: FFreeAd var_88 = ""
  loc_B4D041: BranchF loc_B4D050
  loc_B4D044: LitVarStr var_BC, ",kick"
  loc_B4D049: FStVarCopy
  loc_B4D04D: Branch loc_B4D059
  loc_B4D050: LitVarStr var_BC, vbNullString
  loc_B4D055: FStVarCopy
  loc_B4D059: FLdRfVar var_9A
  loc_B4D05C: FLdRfVar var_110
  loc_B4D05F: LitI2_Byte 1
  loc_B4D061: FLdPrThis
  loc_B4D062: VCallAd Control_ID_mtool
  loc_B4D065: FStAdFunc var_88
  loc_B4D068: FLdPr var_88
  loc_B4D06B: Set from_stack_2 = Me(from_stack_1)
  loc_B4D070: FLdPr var_110
  loc_B4D073:  = Me.Value
  loc_B4D078: FLdI2 var_9A
  loc_B4D07B: LitI2_Byte 1
  loc_B4D07D: EqI2
  loc_B4D07E: FFreeAd var_88 = ""
  loc_B4D085: BranchF loc_B4D098
  loc_B4D088: FLdRfVar var_144
  loc_B4D08B: LitVarStr var_BC, ",alert"
  loc_B4D090: ConcatVar var_120
  loc_B4D094: FStVar var_144
  loc_B4D098: FLdRfVar var_9A
  loc_B4D09B: FLdRfVar var_110
  loc_B4D09E: LitI2_Byte 2
  loc_B4D0A0: FLdPrThis
  loc_B4D0A1: VCallAd Control_ID_mtool
  loc_B4D0A4: FStAdFunc var_88
  loc_B4D0A7: FLdPr var_88
  loc_B4D0AA: Set from_stack_2 = Me(from_stack_1)
  loc_B4D0AF: FLdPr var_110
  loc_B4D0B2:  = Me.Value
  loc_B4D0B7: FLdI2 var_9A
  loc_B4D0BA: LitI2_Byte 1
  loc_B4D0BC: EqI2
  loc_B4D0BD: FFreeAd var_88 = ""
  loc_B4D0C4: BranchF loc_B4D0D7
  loc_B4D0C7: FLdRfVar var_144
  loc_B4D0CA: LitVarStr var_BC, ",ban"
  loc_B4D0CF: ConcatVar var_120
  loc_B4D0D3: FStVar var_144
  loc_B4D0D7: FLdRfVar var_9A
  loc_B4D0DA: FLdRfVar var_110
  loc_B4D0DD: LitI2_Byte 3
  loc_B4D0DF: FLdPrThis
  loc_B4D0E0: VCallAd Control_ID_mtool
  loc_B4D0E3: FStAdFunc var_88
  loc_B4D0E6: FLdPr var_88
  loc_B4D0E9: Set from_stack_2 = Me(from_stack_1)
  loc_B4D0EE: FLdPr var_110
  loc_B4D0F1:  = Me.Value
  loc_B4D0F6: FLdI2 var_9A
  loc_B4D0F9: LitI2_Byte 1
  loc_B4D0FB: EqI2
  loc_B4D0FC: FFreeAd var_88 = ""
  loc_B4D103: BranchF loc_B4D116
  loc_B4D106: FLdRfVar var_144
  loc_B4D109: LitVarStr var_BC, ",roomalert"
  loc_B4D10E: ConcatVar var_120
  loc_B4D112: FStVar var_144
  loc_B4D116: FLdRfVar var_9A
  loc_B4D119: FLdRfVar var_110
  loc_B4D11C: LitI2_Byte 4
  loc_B4D11E: FLdPrThis
  loc_B4D11F: VCallAd Control_ID_mtool
  loc_B4D122: FStAdFunc var_88
  loc_B4D125: FLdPr var_88
  loc_B4D128: Set from_stack_2 = Me(from_stack_1)
  loc_B4D12D: FLdPr var_110
  loc_B4D130:  = Me.Value
  loc_B4D135: FLdI2 var_9A
  loc_B4D138: LitI2_Byte 1
  loc_B4D13A: EqI2
  loc_B4D13B: FFreeAd var_88 = ""
  loc_B4D142: BranchF loc_B4D155
  loc_B4D145: FLdRfVar var_144
  loc_B4D148: LitVarStr var_BC, ",roomkick"
  loc_B4D14D: ConcatVar var_120
  loc_B4D151: FStVar var_144
  loc_B4D155: ImpAdLdI4 MemVar_C0F044
  loc_B4D158: LitStr "ranks\"
  loc_B4D15B: ConcatStr
  loc_B4D15C: FStStrNoPop var_90
  loc_B4D15F: FLdRfVar var_8C
  loc_B4D162: FLdPrThis
  loc_B4D163: VCallAd Control_ID_Combo4
  loc_B4D166: FStAdFunc var_88
  loc_B4D169: FLdPr var_88
  loc_B4D16C:  = Me.Text
  loc_B4D171: ILdRf var_8C
  loc_B4D174: ConcatStr
  loc_B4D175: FStStrNoPop var_94
  loc_B4D178: LitStr ".ini"
  loc_B4D17B: ConcatStr
  loc_B4D17C: FStStrNoPop var_134
  loc_B4D17F: FLdRfVar var_144
  loc_B4D182: CStrVarVal var_98
  loc_B4D186: LitStr "mod_tool"
  loc_B4D189: LitStr "rank"
  loc_B4D18C: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B4D191: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B4D19E: FFree1Ad var_88
  loc_B4D1A1: FLdRfVar var_8C
  loc_B4D1A4: FLdPrThis
  loc_B4D1A5: VCallAd Control_ID_Text17
  loc_B4D1A8: FStAdFunc var_88
  loc_B4D1AB: FLdPr var_88
  loc_B4D1AE:  = Me.Text
  loc_B4D1B3: LitI4 0
  loc_B4D1B8: LitI4 -1
  loc_B4D1BD: LitI4 1
  loc_B4D1C2: LitStr ";"
  loc_B4D1C5: LitStr vbCrLf
  loc_B4D1C8: ILdRf var_8C
  loc_B4D1CB: ImpAdCallI2 Replace(, , , , , )
  loc_B4D1D0: CVarStr var_120
  loc_B4D1D3: FStVar var_154
  loc_B4D1D7: FFree1Str var_8C
  loc_B4D1DA: FFree1Ad var_88
  loc_B4D1DD: LitI4 0
  loc_B4D1E2: LitI4 -1
  loc_B4D1E7: LitI4 1
  loc_B4D1EC: LitStr ";"
  loc_B4D1EF: LitStr ";;"
  loc_B4D1F2: FLdRfVar var_154
  loc_B4D1F5: CStrVarVal var_8C
  loc_B4D1F9: ImpAdCallI2 Replace(, , , , , )
  loc_B4D1FE: CVarStr var_120
  loc_B4D201: FStVar var_154
  loc_B4D205: FFree1Str var_8C
  loc_B4D208: LitI4 0
  loc_B4D20D: LitI4 -1
  loc_B4D212: LitI4 1
  loc_B4D217: LitStr ";"
  loc_B4D21A: LitStr ";;"
  loc_B4D21D: FLdRfVar var_154
  loc_B4D220: CStrVarVal var_8C
  loc_B4D224: ImpAdCallI2 Replace(, , , , , )
  loc_B4D229: CVarStr var_120
  loc_B4D22C: FStVar var_154
  loc_B4D230: FFree1Str var_8C
  loc_B4D233: LitI4 0
  loc_B4D238: LitI4 -1
  loc_B4D23D: LitI4 1
  loc_B4D242: LitStr ";"
  loc_B4D245: LitStr ";;"
  loc_B4D248: FLdRfVar var_154
  loc_B4D24B: CStrVarVal var_8C
  loc_B4D24F: ImpAdCallI2 Replace(, , , , , )
  loc_B4D254: CVarStr var_120
  loc_B4D257: FStVar var_154
  loc_B4D25B: FFree1Str var_8C
  loc_B4D25E: LitI4 1
  loc_B4D263: FLdRfVar var_154
  loc_B4D266: FLdRfVar var_120
  loc_B4D269: ImpAdCallFPR4  = Left(, )
  loc_B4D26E: FLdRfVar var_120
  loc_B4D271: LitVarStr var_BC, ";"
  loc_B4D276: HardType
  loc_B4D277: NeVarBool
  loc_B4D279: FFree1Var var_120 = ""
  loc_B4D27C: BranchF loc_B4D28F
  loc_B4D27F: LitVarStr var_BC, ";"
  loc_B4D284: FLdRfVar var_154
  loc_B4D287: ConcatVar var_120
  loc_B4D28B: FStVar var_154
  loc_B4D28F: LitI4 1
  loc_B4D294: FLdRfVar var_154
  loc_B4D297: FLdRfVar var_120
  loc_B4D29A: ImpAdCallFPR4  = Right(, )
  loc_B4D29F: FLdRfVar var_120
  loc_B4D2A2: LitVarStr var_BC, ";"
  loc_B4D2A7: HardType
  loc_B4D2A8: EqVarBool
  loc_B4D2AA: FFree1Var var_120 = ""
  loc_B4D2AD: BranchF loc_B4D2D4
  loc_B4D2B0: FLdRfVar var_154
  loc_B4D2B3: FnLenVar var_120
  loc_B4D2B7: LitVarI2 var_BC, 1
  loc_B4D2BC: SubVar var_130
  loc_B4D2C0: CI4Var
  loc_B4D2C2: FLdRfVar var_154
  loc_B4D2C5: FLdRfVar var_164
  loc_B4D2C8: ImpAdCallFPR4  = Left(, )
  loc_B4D2CD: FLdRfVar var_164
  loc_B4D2D0: FStVar var_154
  loc_B4D2D4: ImpAdLdI4 MemVar_C0F044
  loc_B4D2D7: LitStr "ranks\"
  loc_B4D2DA: ConcatStr
  loc_B4D2DB: FStStrNoPop var_90
  loc_B4D2DE: FLdRfVar var_8C
  loc_B4D2E1: FLdPrThis
  loc_B4D2E2: VCallAd Control_ID_Combo4
  loc_B4D2E5: FStAdFunc var_88
  loc_B4D2E8: FLdPr var_88
  loc_B4D2EB:  = Me.Text
  loc_B4D2F0: ILdRf var_8C
  loc_B4D2F3: ConcatStr
  loc_B4D2F4: FStStrNoPop var_94
  loc_B4D2F7: LitStr ".ini"
  loc_B4D2FA: ConcatStr
  loc_B4D2FB: FStStrNoPop var_134
  loc_B4D2FE: FLdRfVar var_154
  loc_B4D301: CStrVarVal var_98
  loc_B4D305: LitStr "badges"
  loc_B4D308: LitStr "rank"
  loc_B4D30B: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B4D310: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B4D31D: FFree1Ad var_88
  loc_B4D320: FLdRfVar var_9A
  loc_B4D323: FLdPrThis
  loc_B4D324: VCallAd Control_ID_Check4
  loc_B4D327: FStAdFunc var_88
  loc_B4D32A: FLdPr var_88
  loc_B4D32D:  = Me.Value
  loc_B4D332: ImpAdLdI4 MemVar_C0F044
  loc_B4D335: LitStr "ranks\"
  loc_B4D338: ConcatStr
  loc_B4D339: FStStrNoPop var_90
  loc_B4D33C: FLdRfVar var_8C
  loc_B4D33F: FLdPrThis
  loc_B4D340: VCallAd Control_ID_Combo4
  loc_B4D343: FStAdFunc var_110
  loc_B4D346: FLdPr var_110
  loc_B4D349:  = Me.Text
  loc_B4D34E: ILdRf var_8C
  loc_B4D351: ConcatStr
  loc_B4D352: FStStrNoPop var_94
  loc_B4D355: LitStr ".ini"
  loc_B4D358: ConcatStr
  loc_B4D359: FStStrNoPop var_134
  loc_B4D35C: FLdI2 var_9A
  loc_B4D35F: CStrUI1
  loc_B4D361: FStStrNoPop var_98
  loc_B4D364: LitStr "admin_catalogue"
  loc_B4D367: LitStr "rank"
  loc_B4D36A: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B4D36F: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B4D37C: FFreeAd var_88 = ""
  loc_B4D383: FLdRfVar var_9A
  loc_B4D386: FLdPrThis
  loc_B4D387: VCallAd Control_ID_Check5
  loc_B4D38A: FStAdFunc var_88
  loc_B4D38D: FLdPr var_88
  loc_B4D390:  = Me.Value
  loc_B4D395: ImpAdLdI4 MemVar_C0F044
  loc_B4D398: LitStr "ranks\"
  loc_B4D39B: ConcatStr
  loc_B4D39C: FStStrNoPop var_90
  loc_B4D39F: FLdRfVar var_8C
  loc_B4D3A2: FLdPrThis
  loc_B4D3A3: VCallAd Control_ID_Combo4
  loc_B4D3A6: FStAdFunc var_110
  loc_B4D3A9: FLdPr var_110
  loc_B4D3AC:  = Me.Text
  loc_B4D3B1: ILdRf var_8C
  loc_B4D3B4: ConcatStr
  loc_B4D3B5: FStStrNoPop var_94
  loc_B4D3B8: LitStr ".ini"
  loc_B4D3BB: ConcatStr
  loc_B4D3BC: FStStrNoPop var_134
  loc_B4D3BF: FLdI2 var_9A
  loc_B4D3C2: CStrUI1
  loc_B4D3C4: FStStrNoPop var_98
  loc_B4D3C7: LitStr "see_room_owner"
  loc_B4D3CA: LitStr "rank"
  loc_B4D3CD: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B4D3D2: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B4D3DF: FFreeAd var_88 = ""
  loc_B4D3E6: FLdRfVar var_9A
  loc_B4D3E9: FLdPrThis
  loc_B4D3EA: VCallAd Control_ID_Check6
  loc_B4D3ED: FStAdFunc var_88
  loc_B4D3F0: FLdPr var_88
  loc_B4D3F3:  = Me.Value
  loc_B4D3F8: ImpAdLdI4 MemVar_C0F044
  loc_B4D3FB: LitStr "ranks\"
  loc_B4D3FE: ConcatStr
  loc_B4D3FF: FStStrNoPop var_90
  loc_B4D402: FLdRfVar var_8C
  loc_B4D405: FLdPrThis
  loc_B4D406: VCallAd Control_ID_Combo4
  loc_B4D409: FStAdFunc var_110
  loc_B4D40C: FLdPr var_110
  loc_B4D40F:  = Me.Text
  loc_B4D414: ILdRf var_8C
  loc_B4D417: ConcatStr
  loc_B4D418: FStStrNoPop var_94
  loc_B4D41B: LitStr ".ini"
  loc_B4D41E: ConcatStr
  loc_B4D41F: FStStrNoPop var_134
  loc_B4D422: FLdI2 var_9A
  loc_B4D425: CStrUI1
  loc_B4D427: FStStrNoPop var_98
  loc_B4D42A: LitStr "enter_any_room"
  loc_B4D42D: LitStr "rank"
  loc_B4D430: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B4D435: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B4D442: FFreeAd var_88 = ""
  loc_B4D449: FLdRfVar var_9A
  loc_B4D44C: FLdPrThis
  loc_B4D44D: VCallAd Control_ID_Check7
  loc_B4D450: FStAdFunc var_88
  loc_B4D453: FLdPr var_88
  loc_B4D456:  = Me.Value
  loc_B4D45B: ImpAdLdI4 MemVar_C0F044
  loc_B4D45E: LitStr "ranks\"
  loc_B4D461: ConcatStr
  loc_B4D462: FStStrNoPop var_90
  loc_B4D465: FLdRfVar var_8C
  loc_B4D468: FLdPrThis
  loc_B4D469: VCallAd Control_ID_Combo4
  loc_B4D46C: FStAdFunc var_110
  loc_B4D46F: FLdPr var_110
  loc_B4D472:  = Me.Text
  loc_B4D477: ILdRf var_8C
  loc_B4D47A: ConcatStr
  loc_B4D47B: FStStrNoPop var_94
  loc_B4D47E: LitStr ".ini"
  loc_B4D481: ConcatStr
  loc_B4D482: FStStrNoPop var_134
  loc_B4D485: FLdI2 var_9A
  loc_B4D488: CStrUI1
  loc_B4D48A: FStStrNoPop var_98
  loc_B4D48D: LitStr "recrieve_cfh"
  loc_B4D490: LitStr "rank"
  loc_B4D493: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B4D498: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B4D4A5: FFreeAd var_88 = ""
  loc_B4D4AC: FLdRfVar var_9A
  loc_B4D4AF: FLdPrThis
  loc_B4D4B0: VCallAd Control_ID_Check8
  loc_B4D4B3: FStAdFunc var_88
  loc_B4D4B6: FLdPr var_88
  loc_B4D4B9:  = Me.Value
  loc_B4D4BE: ImpAdLdI4 MemVar_C0F044
  loc_B4D4C1: LitStr "ranks\"
  loc_B4D4C4: ConcatStr
  loc_B4D4C5: FStStrNoPop var_90
  loc_B4D4C8: FLdRfVar var_8C
  loc_B4D4CB: FLdPrThis
  loc_B4D4CC: VCallAd Control_ID_Combo4
  loc_B4D4CF: FStAdFunc var_110
  loc_B4D4D2: FLdPr var_110
  loc_B4D4D5:  = Me.Text
  loc_B4D4DA: ILdRf var_8C
  loc_B4D4DD: ConcatStr
  loc_B4D4DE: FStStrNoPop var_94
  loc_B4D4E1: LitStr ".ini"
  loc_B4D4E4: ConcatStr
  loc_B4D4E5: FStStrNoPop var_134
  loc_B4D4E8: FLdI2 var_9A
  loc_B4D4EB: CStrUI1
  loc_B4D4ED: FStStrNoPop var_98
  loc_B4D4F0: LitStr "rights_in_any_room"
  loc_B4D4F3: LitStr "rank"
  loc_B4D4F6: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B4D4FB: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B4D508: FFreeAd var_88 = ""
  loc_B4D50F: FLdRfVar var_8C
  loc_B4D512: FLdPrThis
  loc_B4D513: VCallAd Control_ID_Text18
  loc_B4D516: FStAdFunc var_88
  loc_B4D519: FLdPr var_88
  loc_B4D51C:  = Me.Text
  loc_B4D521: ImpAdLdI4 MemVar_C0F044
  loc_B4D524: LitStr "ranks\"
  loc_B4D527: ConcatStr
  loc_B4D528: FStStrNoPop var_94
  loc_B4D52B: FLdRfVar var_90
  loc_B4D52E: FLdPrThis
  loc_B4D52F: VCallAd Control_ID_Combo4
  loc_B4D532: FStAdFunc var_110
  loc_B4D535: FLdPr var_110
  loc_B4D538:  = Me.Text
  loc_B4D53D: ILdRf var_90
  loc_B4D540: ConcatStr
  loc_B4D541: FStStrNoPop var_98
  loc_B4D544: LitStr ".ini"
  loc_B4D547: ConcatStr
  loc_B4D548: FStStrNoPop var_134
  loc_B4D54B: ILdRf var_8C
  loc_B4D54E: LitStr "fuse_rights"
  loc_B4D551: LitStr "rank"
  loc_B4D554: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B4D559: FFreeStr var_94 = "": var_90 = "": var_98 = "": var_8C = ""
  loc_B4D566: FFreeAd var_88 = ""
  loc_B4D56D: LitI2_Byte &HFF
  loc_B4D56F: FLdPrThis
  loc_B4D570: VCallAd Control_ID_Command17
  loc_B4D573: FStAdFunc var_88
  loc_B4D576: FLdPr var_88
  loc_B4D579: Me.Enabled = from_stack_1b
  loc_B4D57E: FFree1Ad var_88
  loc_B4D581: LitI2_Byte &HFF
  loc_B4D583: FLdPrThis
  loc_B4D584: VCallAd Control_ID_Command16
  loc_B4D587: FStAdFunc var_88
  loc_B4D58A: FLdPr var_88
  loc_B4D58D: Me.Enabled = from_stack_1b
  loc_B4D592: FFree1Ad var_88
  loc_B4D595: LitI2_Byte &HFF
  loc_B4D597: FLdPrThis
  loc_B4D598: VCallAd Control_ID_Combo4
  loc_B4D59B: FStAdFunc var_88
  loc_B4D59E: FLdPr var_88
  loc_B4D5A1: Me.Enabled = from_stack_1b
  loc_B4D5A6: FFree1Ad var_88
  loc_B4D5A9: Branch loc_B4D5E9
  loc_B4D5AC: LitVarStr var_BC, "rank_not_found"
  loc_B4D5B1: PopAdLdVar
  loc_B4D5B2: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4D5B7: FStStr var_8C
  loc_B4D5BA: LitVar_Missing var_184
  loc_B4D5BD: LitVar_Missing var_164
  loc_B4D5C0: LitVarStr var_DC, "Server"
  loc_B4D5C5: FStVarCopyObj var_130
  loc_B4D5C8: FLdRfVar var_130
  loc_B4D5CB: LitI4 &H10
  loc_B4D5D0: FLdZeroAd var_8C
  loc_B4D5D3: CVarStr var_120
  loc_B4D5D6: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B4D5DB: FFree1Str var_8C
  loc_B4D5DE: FFreeVar var_120 = "": var_130 = "": var_164 = ""
  loc_B4D5E9: ExitProcHresult
  loc_B4D5EA: LargeBos
End Sub

Private Sub Command18_Click() 'B18C48
  'Data Table: 549FD0
  loc_B18C3C: FLdRfVar var_94
  loc_B18C3F: Call Proc_31_32_B27178()
  loc_B18C44: FFree1Var var_94 = ""
  loc_B18C47: ExitProcHresult
End Sub

Private Sub Command19_Click() 'B58514
  'Data Table: 549FD0
  loc_B57B50: LitI2_Byte 0
  loc_B57B52: FLdPrThis
  loc_B57B53: VCallAd Control_ID_Command18
  loc_B57B56: FStAdFunc var_88
  loc_B57B59: FLdPr var_88
  loc_B57B5C: Me.Enabled = from_stack_1b
  loc_B57B61: FFree1Ad var_88
  loc_B57B64: LitI2_Byte 0
  loc_B57B66: FLdPrThis
  loc_B57B67: VCallAd Control_ID_Command19
  loc_B57B6A: FStAdFunc var_88
  loc_B57B6D: FLdPr var_88
  loc_B57B70: Me.Enabled = from_stack_1b
  loc_B57B75: FFree1Ad var_88
  loc_B57B78: LitVarI2 var_C8, 0
  loc_B57B7D: FLdRfVar var_98
  loc_B57B80: LitVarI2 var_B8, 10
  loc_B57B85: ForVar var_E8
  loc_B57B8B: FLdRfVar var_F0
  loc_B57B8E: FLdRfVar var_EC
  loc_B57B91: FLdRfVar var_98
  loc_B57B94: CI2Var
  loc_B57B95: FLdPrThis
  loc_B57B96: VCallAd Control_ID_hcpresent
  loc_B57B99: FStAdFunc var_88
  loc_B57B9C: FLdPr var_88
  loc_B57B9F: Set from_stack_2 = Me(from_stack_1)
  loc_B57BA4: FLdPr var_EC
  loc_B57BA7:  = Me.Text
  loc_B57BAC: LitI4 1
  loc_B57BB1: FLdZeroAd var_F0
  loc_B57BB4: CVarStr var_100
  loc_B57BB7: FLdRfVar var_110
  loc_B57BBA: ImpAdCallFPR4  = Left(, )
  loc_B57BBF: FLdRfVar var_110
  loc_B57BC2: LitVarStr var_A8, ";"
  loc_B57BC7: HardType
  loc_B57BC8: NeVarBool
  loc_B57BCA: FFreeAd var_88 = ""
  loc_B57BD1: FFreeVar var_100 = ""
  loc_B57BD8: BranchF loc_B57C36
  loc_B57BDB: LitStr ";"
  loc_B57BDE: FLdRfVar var_F0
  loc_B57BE1: FLdRfVar var_EC
  loc_B57BE4: FLdRfVar var_98
  loc_B57BE7: CI2Var
  loc_B57BE8: FLdPrThis
  loc_B57BE9: VCallAd Control_ID_hcpresent
  loc_B57BEC: FStAdFunc var_88
  loc_B57BEF: FLdPr var_88
  loc_B57BF2: Set from_stack_2 = Me(from_stack_1)
  loc_B57BF7: FLdPr var_EC
  loc_B57BFA:  = Me.Text
  loc_B57BFF: ILdRf var_F0
  loc_B57C02: ConcatStr
  loc_B57C03: FStStrNoPop var_12C
  loc_B57C06: FLdRfVar var_128
  loc_B57C09: FLdRfVar var_98
  loc_B57C0C: CI2Var
  loc_B57C0D: FLdPrThis
  loc_B57C0E: VCallAd Control_ID_hcpresent
  loc_B57C11: FStAdFunc var_124
  loc_B57C14: FLdPr var_124
  loc_B57C17: Set from_stack_2 = Me(from_stack_1)
  loc_B57C1C: FLdPr var_128
  loc_B57C1F: Me.Text = from_stack_1
  loc_B57C24: FFreeStr var_F0 = ""
  loc_B57C2B: FFreeAd var_88 = "": var_EC = "": var_124 = ""
  loc_B57C36: FLdRfVar var_F0
  loc_B57C39: FLdRfVar var_EC
  loc_B57C3C: FLdRfVar var_98
  loc_B57C3F: CI2Var
  loc_B57C40: FLdPrThis
  loc_B57C41: VCallAd Control_ID_hcpresent
  loc_B57C44: FStAdFunc var_88
  loc_B57C47: FLdPr var_88
  loc_B57C4A: Set from_stack_2 = Me(from_stack_1)
  loc_B57C4F: FLdPr var_EC
  loc_B57C52:  = Me.Text
  loc_B57C57: LitI4 1
  loc_B57C5C: FLdZeroAd var_F0
  loc_B57C5F: CVarStr var_100
  loc_B57C62: FLdRfVar var_110
  loc_B57C65: ImpAdCallFPR4  = Right(, )
  loc_B57C6A: FLdRfVar var_110
  loc_B57C6D: LitVarStr var_A8, ";"
  loc_B57C72: HardType
  loc_B57C73: EqVarBool
  loc_B57C75: FFreeAd var_88 = ""
  loc_B57C7C: FFreeVar var_100 = ""
  loc_B57C83: BranchF loc_B57D22
  loc_B57C86: FLdRfVar var_F0
  loc_B57C89: FLdRfVar var_EC
  loc_B57C8C: FLdRfVar var_98
  loc_B57C8F: CI2Var
  loc_B57C90: FLdPrThis
  loc_B57C91: VCallAd Control_ID_hcpresent
  loc_B57C94: FStAdFunc var_88
  loc_B57C97: FLdPr var_88
  loc_B57C9A: Set from_stack_2 = Me(from_stack_1)
  loc_B57C9F: FLdPr var_EC
  loc_B57CA2:  = Me.Text
  loc_B57CA7: FLdRfVar var_12C
  loc_B57CAA: FLdRfVar var_128
  loc_B57CAD: FLdRfVar var_98
  loc_B57CB0: CI2Var
  loc_B57CB1: FLdPrThis
  loc_B57CB2: VCallAd Control_ID_hcpresent
  loc_B57CB5: FStAdFunc var_124
  loc_B57CB8: FLdPr var_124
  loc_B57CBB: Set from_stack_2 = Me(from_stack_1)
  loc_B57CC0: FLdPr var_128
  loc_B57CC3:  = Me.Text
  loc_B57CC8: ILdRf var_12C
  loc_B57CCB: FnLenStr
  loc_B57CCC: LitI4 1
  loc_B57CD1: SubI4
  loc_B57CD2: FLdZeroAd var_F0
  loc_B57CD5: CVarStr var_100
  loc_B57CD8: FLdRfVar var_110
  loc_B57CDB: ImpAdCallFPR4  = Left(, )
  loc_B57CE0: FLdRfVar var_110
  loc_B57CE3: CStrVarVal var_138
  loc_B57CE7: FLdRfVar var_134
  loc_B57CEA: FLdRfVar var_98
  loc_B57CED: CI2Var
  loc_B57CEE: FLdPrThis
  loc_B57CEF: VCallAd Control_ID_hcpresent
  loc_B57CF2: FStAdFunc var_130
  loc_B57CF5: FLdPr var_130
  loc_B57CF8: Set from_stack_2 = Me(from_stack_1)
  loc_B57CFD: FLdPr var_134
  loc_B57D00: Me.Text = from_stack_1
  loc_B57D05: FFreeStr var_12C = ""
  loc_B57D0C: FFreeAd var_88 = "": var_EC = "": var_124 = "": var_128 = "": var_130 = ""
  loc_B57D1B: FFreeVar var_100 = ""
  loc_B57D22: FLdRfVar var_F0
  loc_B57D25: FLdRfVar var_EC
  loc_B57D28: FLdRfVar var_98
  loc_B57D2B: CI2Var
  loc_B57D2C: FLdPrThis
  loc_B57D2D: VCallAd Control_ID_hcpresent
  loc_B57D30: FStAdFunc var_88
  loc_B57D33: FLdPr var_88
  loc_B57D36: Set from_stack_2 = Me(from_stack_1)
  loc_B57D3B: FLdPr var_EC
  loc_B57D3E:  = Me.Text
  loc_B57D43: LitI4 0
  loc_B57D48: LitI4 -1
  loc_B57D4D: LitI4 1
  loc_B57D52: LitStr ";"
  loc_B57D55: LitStr ";;"
  loc_B57D58: ILdRf var_F0
  loc_B57D5B: ImpAdCallI2 Replace(, , , , , )
  loc_B57D60: FStStrNoPop var_12C
  loc_B57D63: FLdRfVar var_128
  loc_B57D66: FLdRfVar var_98
  loc_B57D69: CI2Var
  loc_B57D6A: FLdPrThis
  loc_B57D6B: VCallAd Control_ID_hcpresent
  loc_B57D6E: FStAdFunc var_124
  loc_B57D71: FLdPr var_124
  loc_B57D74: Set from_stack_2 = Me(from_stack_1)
  loc_B57D79: FLdPr var_128
  loc_B57D7C: Me.Text = from_stack_1
  loc_B57D81: FFreeStr var_F0 = ""
  loc_B57D88: FFreeAd var_88 = "": var_EC = "": var_124 = ""
  loc_B57D93: FLdRfVar var_F0
  loc_B57D96: FLdRfVar var_EC
  loc_B57D99: FLdRfVar var_98
  loc_B57D9C: CI2Var
  loc_B57D9D: FLdPrThis
  loc_B57D9E: VCallAd Control_ID_hcpresent
  loc_B57DA1: FStAdFunc var_88
  loc_B57DA4: FLdPr var_88
  loc_B57DA7: Set from_stack_2 = Me(from_stack_1)
  loc_B57DAC: FLdPr var_EC
  loc_B57DAF:  = Me.Text
  loc_B57DB4: LitI4 0
  loc_B57DB9: LitI4 -1
  loc_B57DBE: LitI4 1
  loc_B57DC3: LitStr ";"
  loc_B57DC6: LitStr ";;"
  loc_B57DC9: ILdRf var_F0
  loc_B57DCC: ImpAdCallI2 Replace(, , , , , )
  loc_B57DD1: FStStrNoPop var_12C
  loc_B57DD4: FLdRfVar var_128
  loc_B57DD7: FLdRfVar var_98
  loc_B57DDA: CI2Var
  loc_B57DDB: FLdPrThis
  loc_B57DDC: VCallAd Control_ID_hcpresent
  loc_B57DDF: FStAdFunc var_124
  loc_B57DE2: FLdPr var_124
  loc_B57DE5: Set from_stack_2 = Me(from_stack_1)
  loc_B57DEA: FLdPr var_128
  loc_B57DED: Me.Text = from_stack_1
  loc_B57DF2: FFreeStr var_F0 = ""
  loc_B57DF9: FFreeAd var_88 = "": var_EC = "": var_124 = ""
  loc_B57E04: FLdRfVar var_F0
  loc_B57E07: FLdRfVar var_EC
  loc_B57E0A: FLdRfVar var_98
  loc_B57E0D: CI2Var
  loc_B57E0E: FLdPrThis
  loc_B57E0F: VCallAd Control_ID_hcpresent
  loc_B57E12: FStAdFunc var_88
  loc_B57E15: FLdPr var_88
  loc_B57E18: Set from_stack_2 = Me(from_stack_1)
  loc_B57E1D: FLdPr var_EC
  loc_B57E20:  = Me.Text
  loc_B57E25: LitI4 0
  loc_B57E2A: LitI4 -1
  loc_B57E2F: LitI4 1
  loc_B57E34: LitStr ";"
  loc_B57E37: LitStr ";;"
  loc_B57E3A: ILdRf var_F0
  loc_B57E3D: ImpAdCallI2 Replace(, , , , , )
  loc_B57E42: FStStrNoPop var_12C
  loc_B57E45: FLdRfVar var_128
  loc_B57E48: FLdRfVar var_98
  loc_B57E4B: CI2Var
  loc_B57E4C: FLdPrThis
  loc_B57E4D: VCallAd Control_ID_hcpresent
  loc_B57E50: FStAdFunc var_124
  loc_B57E53: FLdPr var_124
  loc_B57E56: Set from_stack_2 = Me(from_stack_1)
  loc_B57E5B: FLdPr var_128
  loc_B57E5E: Me.Text = from_stack_1
  loc_B57E63: FFreeStr var_F0 = ""
  loc_B57E6A: FFreeAd var_88 = "": var_EC = "": var_124 = ""
  loc_B57E75: FLdRfVar var_F0
  loc_B57E78: FLdRfVar var_EC
  loc_B57E7B: FLdRfVar var_98
  loc_B57E7E: CI2Var
  loc_B57E7F: FLdPrThis
  loc_B57E80: VCallAd Control_ID_hcpresent
  loc_B57E83: FStAdFunc var_88
  loc_B57E86: FLdPr var_88
  loc_B57E89: Set from_stack_2 = Me(from_stack_1)
  loc_B57E8E: FLdPr var_EC
  loc_B57E91:  = Me.Text
  loc_B57E96: LitI4 0
  loc_B57E9B: LitI4 -1
  loc_B57EA0: LitVarStr var_A8, ";"
  loc_B57EA5: FStVarCopyObj var_100
  loc_B57EA8: FLdRfVar var_100
  loc_B57EAB: ILdRf var_F0
  loc_B57EAE: FLdRfVar var_110
  loc_B57EB1: ImpAdCallFPR4  = Split(, , , )
  loc_B57EB6: FLdRfVar var_110
  loc_B57EB9: FStVar var_148
  loc_B57EBD: FFree1Str var_F0
  loc_B57EC0: FFreeAd var_88 = ""
  loc_B57EC7: FFree1Var var_100 = ""
  loc_B57ECA: LitVarI2 var_C8, 1
  loc_B57ECF: FLdRfVar var_158
  loc_B57ED2: FLdRfVar var_148
  loc_B57ED5: CRefVarAry
  loc_B57ED7: PopAdLd4
  loc_B57ED8: LitI2_Byte 1
  loc_B57EDA: FnUBound
  loc_B57EDC: CVarI4
  loc_B57EE0: ForVar var_178
  loc_B57EE6: FLdRfVar var_158
  loc_B57EE9: CDargRef
  loc_B57EED: FLdRfVar var_148
  loc_B57EF0: VarIndexLdVar
  loc_B57EF6: LitVarStr var_B8, vbNullString
  loc_B57EFB: HardType
  loc_B57EFC: NeVarBool
  loc_B57EFE: FFree1Var var_100 = ""
  loc_B57F01: BranchF loc_B57FF6
  loc_B57F04: FLdRfVar var_17A
  loc_B57F07: ImpAdLdI4 MemVar_C0F044
  loc_B57F0A: LitStr "buy_furni\club_furni\"
  loc_B57F0D: ConcatStr
  loc_B57F0E: CVarStr var_100
  loc_B57F11: FLdRfVar var_158
  loc_B57F14: CDargRef
  loc_B57F18: FLdRfVar var_148
  loc_B57F1B: VarIndexLdVar
  loc_B57F21: ConcatVar var_120
  loc_B57F25: CStrVarVal var_F0
  loc_B57F29: ImpAdLdRf MemVar_C0F040
  loc_B57F2C: NewIfNullPr IFileSystem3
  loc_B57F2F: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B57F34: FLdI2 var_17A
  loc_B57F37: LitI2_Byte 0
  loc_B57F39: EqI2
  loc_B57F3A: FFree1Str var_F0
  loc_B57F3D: FFreeVar var_100 = "": var_110 = ""
  loc_B57F46: BranchF loc_B57FF6
  loc_B57F49: LitI4 &H8080FF
  loc_B57F4E: FLdRfVar var_EC
  loc_B57F51: FLdRfVar var_98
  loc_B57F54: CI2Var
  loc_B57F55: FLdPrThis
  loc_B57F56: VCallAd Control_ID_hcpresent
  loc_B57F59: FStAdFunc var_88
  loc_B57F5C: FLdPr var_88
  loc_B57F5F: Set from_stack_2 = Me(from_stack_1)
  loc_B57F64: FLdPr var_EC
  loc_B57F67: Me.BackColor = from_stack_1
  loc_B57F6C: FFreeAd var_88 = ""
  loc_B57F73: LitVarStr var_A8, "folder_doesnt_exists"
  loc_B57F78: PopAdLdVar
  loc_B57F79: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B57F7E: FStStr var_138
  loc_B57F81: FLdRfVar var_158
  loc_B57F84: CDargRef
  loc_B57F88: FLdRfVar var_148
  loc_B57F8B: VarIndexLdVar
  loc_B57F91: PopAd
  loc_B57F93: LitI4 0
  loc_B57F98: LitI4 -1
  loc_B57F9D: LitI4 1
  loc_B57FA2: FLdRfVar var_100
  loc_B57FA5: CStrVarVal var_12C
  loc_B57FA9: LitStr Chr(37) & "foldername" & Chr(37)
  loc_B57FAC: FLdZeroAd var_138
  loc_B57FAF: FStStrNoPop var_F0
  loc_B57FB2: ImpAdCallI2 Replace(, , , , , )
  loc_B57FB7: FStStr var_1C0
  loc_B57FBA: LitVar_Missing var_1BC
  loc_B57FBD: LitVar_Missing var_19C
  loc_B57FC0: LitVarStr var_C8, "Server"
  loc_B57FC5: FStVarCopyObj var_120
  loc_B57FC8: FLdRfVar var_120
  loc_B57FCB: LitI4 &H10
  loc_B57FD0: FLdZeroAd var_1C0
  loc_B57FD3: CVarStr var_110
  loc_B57FD6: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B57FDB: FFreeStr var_F0 = "": var_12C = "": var_138 = ""
  loc_B57FE6: FFreeVar var_100 = "": var_110 = "": var_120 = "": var_19C = ""
  loc_B57FF3: Branch loc_B58065
  loc_B57FF6: FLdRfVar var_158
  loc_B57FF9: NextStepVar var_178
  loc_B57FFF: FLdRfVar var_F0
  loc_B58002: FLdRfVar var_EC
  loc_B58005: FLdRfVar var_98
  loc_B58008: CI2Var
  loc_B58009: FLdPrThis
  loc_B5800A: VCallAd Control_ID_hcpresent
  loc_B5800D: FStAdFunc var_88
  loc_B58010: FLdPr var_88
  loc_B58013: Set from_stack_2 = Me(from_stack_1)
  loc_B58018: FLdPr var_EC
  loc_B5801B:  = Me.Text
  loc_B58020: ImpAdLdI4 MemVar_C0F044
  loc_B58023: LitStr "configuration\settings.ini"
  loc_B58026: ConcatStr
  loc_B58027: FStStrNoPop var_138
  loc_B5802A: ILdRf var_F0
  loc_B5802D: LitVarStr var_B8, "present"
  loc_B58032: FLdRfVar var_98
  loc_B58035: LitVarI2 var_A8, 1
  loc_B5803A: AddVar var_100
  loc_B5803E: ConcatVar var_110
  loc_B58042: CStrVarVal var_12C
  loc_B58046: LitStr "HC"
  loc_B58049: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B5804E: FFreeStr var_12C = "": var_F0 = ""
  loc_B58057: FFreeAd var_88 = ""
  loc_B5805E: FFreeVar var_100 = ""
  loc_B58065: FLdRfVar var_98
  loc_B58068: NextStepVar var_E8
  loc_B5806E: FLdRfVar var_F0
  loc_B58071: FLdPrThis
  loc_B58072: VCallAd Control_ID_Text19
  loc_B58075: FStAdFunc var_88
  loc_B58078: FLdPr var_88
  loc_B5807B:  = Me.Text
  loc_B58080: LitI4 1
  loc_B58085: FLdZeroAd var_F0
  loc_B58088: CVarStr var_100
  loc_B5808B: FLdRfVar var_110
  loc_B5808E: ImpAdCallFPR4  = Left(, )
  loc_B58093: FLdRfVar var_110
  loc_B58096: LitVarStr var_A8, ";"
  loc_B5809B: HardType
  loc_B5809C: NeVarBool
  loc_B5809E: FFree1Ad var_88
  loc_B580A1: FFreeVar var_100 = ""
  loc_B580A8: BranchF loc_B580E4
  loc_B580AB: LitStr ";"
  loc_B580AE: FLdRfVar var_F0
  loc_B580B1: FLdPrThis
  loc_B580B2: VCallAd Control_ID_Text19
  loc_B580B5: FStAdFunc var_88
  loc_B580B8: FLdPr var_88
  loc_B580BB:  = Me.Text
  loc_B580C0: ILdRf var_F0
  loc_B580C3: ConcatStr
  loc_B580C4: FStStrNoPop var_12C
  loc_B580C7: FLdPrThis
  loc_B580C8: VCallAd Control_ID_Text19
  loc_B580CB: FStAdFunc var_EC
  loc_B580CE: FLdPr var_EC
  loc_B580D1: Me.Text = from_stack_1
  loc_B580D6: FFreeStr var_F0 = ""
  loc_B580DD: FFreeAd var_88 = ""
  loc_B580E4: FLdRfVar var_F0
  loc_B580E7: FLdPrThis
  loc_B580E8: VCallAd Control_ID_Text19
  loc_B580EB: FStAdFunc var_88
  loc_B580EE: FLdPr var_88
  loc_B580F1:  = Me.Text
  loc_B580F6: LitI4 1
  loc_B580FB: FLdZeroAd var_F0
  loc_B580FE: CVarStr var_100
  loc_B58101: FLdRfVar var_110
  loc_B58104: ImpAdCallFPR4  = Right(, )
  loc_B58109: FLdRfVar var_110
  loc_B5810C: LitVarStr var_A8, ";"
  loc_B58111: HardType
  loc_B58112: EqVarBool
  loc_B58114: FFree1Ad var_88
  loc_B58117: FFreeVar var_100 = ""
  loc_B5811E: BranchF loc_B5818A
  loc_B58121: FLdRfVar var_F0
  loc_B58124: FLdPrThis
  loc_B58125: VCallAd Control_ID_Text19
  loc_B58128: FStAdFunc var_88
  loc_B5812B: FLdPr var_88
  loc_B5812E:  = Me.Text
  loc_B58133: FLdRfVar var_12C
  loc_B58136: FLdPrThis
  loc_B58137: VCallAd Control_ID_Text19
  loc_B5813A: FStAdFunc var_EC
  loc_B5813D: FLdPr var_EC
  loc_B58140:  = Me.Text
  loc_B58145: ILdRf var_12C
  loc_B58148: FnLenStr
  loc_B58149: LitI4 1
  loc_B5814E: SubI4
  loc_B5814F: FLdZeroAd var_F0
  loc_B58152: CVarStr var_100
  loc_B58155: FLdRfVar var_110
  loc_B58158: ImpAdCallFPR4  = Left(, )
  loc_B5815D: FLdRfVar var_110
  loc_B58160: CStrVarVal var_138
  loc_B58164: FLdPrThis
  loc_B58165: VCallAd Control_ID_Text19
  loc_B58168: FStAdFunc var_124
  loc_B5816B: FLdPr var_124
  loc_B5816E: Me.Text = from_stack_1
  loc_B58173: FFreeStr var_12C = ""
  loc_B5817A: FFreeAd var_88 = "": var_EC = ""
  loc_B58183: FFreeVar var_100 = ""
  loc_B5818A: FLdRfVar var_F0
  loc_B5818D: FLdPrThis
  loc_B5818E: VCallAd Control_ID_Text19
  loc_B58191: FStAdFunc var_88
  loc_B58194: FLdPr var_88
  loc_B58197:  = Me.Text
  loc_B5819C: LitI4 0
  loc_B581A1: LitI4 -1
  loc_B581A6: LitI4 1
  loc_B581AB: LitStr ";"
  loc_B581AE: LitStr ";;"
  loc_B581B1: ILdRf var_F0
  loc_B581B4: ImpAdCallI2 Replace(, , , , , )
  loc_B581B9: FStStrNoPop var_12C
  loc_B581BC: FLdPrThis
  loc_B581BD: VCallAd Control_ID_Text19
  loc_B581C0: FStAdFunc var_EC
  loc_B581C3: FLdPr var_EC
  loc_B581C6: Me.Text = from_stack_1
  loc_B581CB: FFreeStr var_F0 = ""
  loc_B581D2: FFreeAd var_88 = ""
  loc_B581D9: FLdRfVar var_F0
  loc_B581DC: FLdPrThis
  loc_B581DD: VCallAd Control_ID_Text19
  loc_B581E0: FStAdFunc var_88
  loc_B581E3: FLdPr var_88
  loc_B581E6:  = Me.Text
  loc_B581EB: LitI4 0
  loc_B581F0: LitI4 -1
  loc_B581F5: LitI4 1
  loc_B581FA: LitStr ";"
  loc_B581FD: LitStr ";;"
  loc_B58200: ILdRf var_F0
  loc_B58203: ImpAdCallI2 Replace(, , , , , )
  loc_B58208: FStStrNoPop var_12C
  loc_B5820B: FLdPrThis
  loc_B5820C: VCallAd Control_ID_Text19
  loc_B5820F: FStAdFunc var_EC
  loc_B58212: FLdPr var_EC
  loc_B58215: Me.Text = from_stack_1
  loc_B5821A: FFreeStr var_F0 = ""
  loc_B58221: FFreeAd var_88 = ""
  loc_B58228: FLdRfVar var_F0
  loc_B5822B: FLdPrThis
  loc_B5822C: VCallAd Control_ID_Text19
  loc_B5822F: FStAdFunc var_88
  loc_B58232: FLdPr var_88
  loc_B58235:  = Me.Text
  loc_B5823A: LitI4 0
  loc_B5823F: LitI4 -1
  loc_B58244: LitI4 1
  loc_B58249: LitStr ";"
  loc_B5824C: LitStr ";;"
  loc_B5824F: ILdRf var_F0
  loc_B58252: ImpAdCallI2 Replace(, , , , , )
  loc_B58257: FStStrNoPop var_12C
  loc_B5825A: FLdPrThis
  loc_B5825B: VCallAd Control_ID_Text19
  loc_B5825E: FStAdFunc var_EC
  loc_B58261: FLdPr var_EC
  loc_B58264: Me.Text = from_stack_1
  loc_B58269: FFreeStr var_F0 = ""
  loc_B58270: FFreeAd var_88 = ""
  loc_B58277: FLdRfVar var_F0
  loc_B5827A: FLdPrThis
  loc_B5827B: VCallAd Control_ID_Text19
  loc_B5827E: FStAdFunc var_88
  loc_B58281: FLdPr var_88
  loc_B58284:  = Me.Text
  loc_B58289: ImpAdLdI4 MemVar_C0F044
  loc_B5828C: LitStr "configuration\settings.ini"
  loc_B5828F: ConcatStr
  loc_B58290: FStStrNoPop var_12C
  loc_B58293: ILdRf var_F0
  loc_B58296: LitStr "hcbadge"
  loc_B58299: LitStr "HC"
  loc_B5829C: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B582A1: FFreeStr var_F0 = ""
  loc_B582A8: FFree1Ad var_88
  loc_B582AB: FLdRfVar var_F0
  loc_B582AE: FLdPrThis
  loc_B582AF: VCallAd Control_ID_Text20
  loc_B582B2: FStAdFunc var_88
  loc_B582B5: FLdPr var_88
  loc_B582B8:  = Me.Text
  loc_B582BD: LitI4 1
  loc_B582C2: FLdZeroAd var_F0
  loc_B582C5: CVarStr var_100
  loc_B582C8: FLdRfVar var_110
  loc_B582CB: ImpAdCallFPR4  = Left(, )
  loc_B582D0: FLdRfVar var_110
  loc_B582D3: LitVarStr var_A8, ";"
  loc_B582D8: HardType
  loc_B582D9: NeVarBool
  loc_B582DB: FFree1Ad var_88
  loc_B582DE: FFreeVar var_100 = ""
  loc_B582E5: BranchF loc_B58321
  loc_B582E8: LitStr ";"
  loc_B582EB: FLdRfVar var_F0
  loc_B582EE: FLdPrThis
  loc_B582EF: VCallAd Control_ID_Text20
  loc_B582F2: FStAdFunc var_88
  loc_B582F5: FLdPr var_88
  loc_B582F8:  = Me.Text
  loc_B582FD: ILdRf var_F0
  loc_B58300: ConcatStr
  loc_B58301: FStStrNoPop var_12C
  loc_B58304: FLdPrThis
  loc_B58305: VCallAd Control_ID_Text20
  loc_B58308: FStAdFunc var_EC
  loc_B5830B: FLdPr var_EC
  loc_B5830E: Me.Text = from_stack_1
  loc_B58313: FFreeStr var_F0 = ""
  loc_B5831A: FFreeAd var_88 = ""
  loc_B58321: FLdRfVar var_F0
  loc_B58324: FLdPrThis
  loc_B58325: VCallAd Control_ID_Text20
  loc_B58328: FStAdFunc var_88
  loc_B5832B: FLdPr var_88
  loc_B5832E:  = Me.Text
  loc_B58333: LitI4 1
  loc_B58338: FLdZeroAd var_F0
  loc_B5833B: CVarStr var_100
  loc_B5833E: FLdRfVar var_110
  loc_B58341: ImpAdCallFPR4  = Right(, )
  loc_B58346: FLdRfVar var_110
  loc_B58349: LitVarStr var_A8, ";"
  loc_B5834E: HardType
  loc_B5834F: EqVarBool
  loc_B58351: FFree1Ad var_88
  loc_B58354: FFreeVar var_100 = ""
  loc_B5835B: BranchF loc_B583C7
  loc_B5835E: FLdRfVar var_F0
  loc_B58361: FLdPrThis
  loc_B58362: VCallAd Control_ID_Text20
  loc_B58365: FStAdFunc var_88
  loc_B58368: FLdPr var_88
  loc_B5836B:  = Me.Text
  loc_B58370: FLdRfVar var_12C
  loc_B58373: FLdPrThis
  loc_B58374: VCallAd Control_ID_Text20
  loc_B58377: FStAdFunc var_EC
  loc_B5837A: FLdPr var_EC
  loc_B5837D:  = Me.Text
  loc_B58382: ILdRf var_12C
  loc_B58385: FnLenStr
  loc_B58386: LitI4 1
  loc_B5838B: SubI4
  loc_B5838C: FLdZeroAd var_F0
  loc_B5838F: CVarStr var_100
  loc_B58392: FLdRfVar var_110
  loc_B58395: ImpAdCallFPR4  = Left(, )
  loc_B5839A: FLdRfVar var_110
  loc_B5839D: CStrVarVal var_138
  loc_B583A1: FLdPrThis
  loc_B583A2: VCallAd Control_ID_Text20
  loc_B583A5: FStAdFunc var_124
  loc_B583A8: FLdPr var_124
  loc_B583AB: Me.Text = from_stack_1
  loc_B583B0: FFreeStr var_12C = ""
  loc_B583B7: FFreeAd var_88 = "": var_EC = ""
  loc_B583C0: FFreeVar var_100 = ""
  loc_B583C7: FLdRfVar var_F0
  loc_B583CA: FLdPrThis
  loc_B583CB: VCallAd Control_ID_Text20
  loc_B583CE: FStAdFunc var_88
  loc_B583D1: FLdPr var_88
  loc_B583D4:  = Me.Text
  loc_B583D9: LitI4 0
  loc_B583DE: LitI4 -1
  loc_B583E3: LitI4 1
  loc_B583E8: LitStr ";"
  loc_B583EB: LitStr ";;"
  loc_B583EE: ILdRf var_F0
  loc_B583F1: ImpAdCallI2 Replace(, , , , , )
  loc_B583F6: FStStrNoPop var_12C
  loc_B583F9: FLdPrThis
  loc_B583FA: VCallAd Control_ID_Text20
  loc_B583FD: FStAdFunc var_EC
  loc_B58400: FLdPr var_EC
  loc_B58403: Me.Text = from_stack_1
  loc_B58408: FFreeStr var_F0 = ""
  loc_B5840F: FFreeAd var_88 = ""
  loc_B58416: FLdRfVar var_F0
  loc_B58419: FLdPrThis
  loc_B5841A: VCallAd Control_ID_Text20
  loc_B5841D: FStAdFunc var_88
  loc_B58420: FLdPr var_88
  loc_B58423:  = Me.Text
  loc_B58428: LitI4 0
  loc_B5842D: LitI4 -1
  loc_B58432: LitI4 1
  loc_B58437: LitStr ";"
  loc_B5843A: LitStr ";;"
  loc_B5843D: ILdRf var_F0
  loc_B58440: ImpAdCallI2 Replace(, , , , , )
  loc_B58445: FStStrNoPop var_12C
  loc_B58448: FLdPrThis
  loc_B58449: VCallAd Control_ID_Text20
  loc_B5844C: FStAdFunc var_EC
  loc_B5844F: FLdPr var_EC
  loc_B58452: Me.Text = from_stack_1
  loc_B58457: FFreeStr var_F0 = ""
  loc_B5845E: FFreeAd var_88 = ""
  loc_B58465: FLdRfVar var_F0
  loc_B58468: FLdPrThis
  loc_B58469: VCallAd Control_ID_Text20
  loc_B5846C: FStAdFunc var_88
  loc_B5846F: FLdPr var_88
  loc_B58472:  = Me.Text
  loc_B58477: LitI4 0
  loc_B5847C: LitI4 -1
  loc_B58481: LitI4 1
  loc_B58486: LitStr ";"
  loc_B58489: LitStr ";;"
  loc_B5848C: ILdRf var_F0
  loc_B5848F: ImpAdCallI2 Replace(, , , , , )
  loc_B58494: FStStrNoPop var_12C
  loc_B58497: FLdPrThis
  loc_B58498: VCallAd Control_ID_Text20
  loc_B5849B: FStAdFunc var_EC
  loc_B5849E: FLdPr var_EC
  loc_B584A1: Me.Text = from_stack_1
  loc_B584A6: FFreeStr var_F0 = ""
  loc_B584AD: FFreeAd var_88 = ""
  loc_B584B4: FLdRfVar var_F0
  loc_B584B7: FLdPrThis
  loc_B584B8: VCallAd Control_ID_Text20
  loc_B584BB: FStAdFunc var_88
  loc_B584BE: FLdPr var_88
  loc_B584C1:  = Me.Text
  loc_B584C6: ImpAdLdI4 MemVar_C0F044
  loc_B584C9: LitStr "configuration\settings.ini"
  loc_B584CC: ConcatStr
  loc_B584CD: FStStrNoPop var_12C
  loc_B584D0: ILdRf var_F0
  loc_B584D3: LitStr "hcbadge2"
  loc_B584D6: LitStr "HC"
  loc_B584D9: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B584DE: FFreeStr var_F0 = ""
  loc_B584E5: FFree1Ad var_88
  loc_B584E8: LitI2_Byte &HFF
  loc_B584EA: FLdPrThis
  loc_B584EB: VCallAd Control_ID_Command19
  loc_B584EE: FStAdFunc var_88
  loc_B584F1: FLdPr var_88
  loc_B584F4: Me.Enabled = from_stack_1b
  loc_B584F9: FFree1Ad var_88
  loc_B584FC: LitI2_Byte &HFF
  loc_B584FE: FLdPrThis
  loc_B584FF: VCallAd Control_ID_Command18
  loc_B58502: FStAdFunc var_88
  loc_B58505: FLdPr var_88
  loc_B58508: Me.Enabled = from_stack_1b
  loc_B5850D: FFree1Ad var_88
  loc_B58510: ExitProcHresult
End Sub

Private Sub Command2_Click() 'B255C0
  'Data Table: 549FD0
  loc_B25458: LitI2_Byte 0
  loc_B2545A: FLdPrThis
  loc_B2545B: VCallAd Control_ID_Command2
  loc_B2545E: FStAdFunc var_88
  loc_B25461: FLdPr var_88
  loc_B25464: Me.Enabled = from_stack_1b
  loc_B25469: FFree1Ad var_88
  loc_B2546C: LitI2_Byte 0
  loc_B2546E: FLdPrThis
  loc_B2546F: VCallAd Control_ID_Command1
  loc_B25472: FStAdFunc var_88
  loc_B25475: FLdPr var_88
  loc_B25478: Me.Enabled = from_stack_1b
  loc_B2547D: FFree1Ad var_88
  loc_B25480: FLdRfVar var_8C
  loc_B25483: FLdPrThis
  loc_B25484: VCallAd Control_ID_Text1
  loc_B25487: FStAdFunc var_88
  loc_B2548A: FLdPr var_88
  loc_B2548D:  = Me.Text
  loc_B25492: ImpAdLdI4 MemVar_C0F03C
  loc_B25495: ILdRf var_8C
  loc_B25498: LitStr "maxroomsperuser"
  loc_B2549B: LitStr "server"
  loc_B2549E: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B254A3: FFree1Str var_8C
  loc_B254A6: FFree1Ad var_88
  loc_B254A9: FLdRfVar var_8C
  loc_B254AC: FLdPrThis
  loc_B254AD: VCallAd Control_ID_Text2
  loc_B254B0: FStAdFunc var_88
  loc_B254B3: FLdPr var_88
  loc_B254B6:  = Me.Text
  loc_B254BB: ImpAdLdI4 MemVar_C0F03C
  loc_B254BE: ILdRf var_8C
  loc_B254C1: LitStr "maxguestroomsinlist"
  loc_B254C4: LitStr "server"
  loc_B254C7: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B254CC: FFree1Str var_8C
  loc_B254CF: FFree1Ad var_88
  loc_B254D2: FLdRfVar var_8C
  loc_B254D5: FLdPrThis
  loc_B254D6: VCallAd Control_ID_Text3
  loc_B254D9: FStAdFunc var_88
  loc_B254DC: FLdPr var_88
  loc_B254DF:  = Me.Text
  loc_B254E4: ImpAdLdI4 MemVar_C0F03C
  loc_B254E7: ILdRf var_8C
  loc_B254EA: LitStr "maxfavouriterooms"
  loc_B254ED: LitStr "server"
  loc_B254F0: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B254F5: FFree1Str var_8C
  loc_B254F8: FFree1Ad var_88
  loc_B254FB: FLdRfVar var_8C
  loc_B254FE: FLdPrThis
  loc_B254FF: VCallAd Control_ID_Text4
  loc_B25502: FStAdFunc var_88
  loc_B25505: FLdPr var_88
  loc_B25508:  = Me.Text
  loc_B2550D: ImpAdLdI4 MemVar_C0F044
  loc_B25510: LitStr "configuration\settings.ini"
  loc_B25513: ConcatStr
  loc_B25514: FStStrNoPop var_90
  loc_B25517: ILdRf var_8C
  loc_B2551A: LitStr "maxrollersinroom"
  loc_B2551D: LitStr "config"
  loc_B25520: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B25525: FFreeStr var_8C = ""
  loc_B2552C: FFree1Ad var_88
  loc_B2552F: FLdRfVar var_8C
  loc_B25532: FLdPrThis
  loc_B25533: VCallAd Control_ID_Text5
  loc_B25536: FStAdFunc var_88
  loc_B25539: FLdPr var_88
  loc_B2553C:  = Me.Text
  loc_B25541: ImpAdLdI4 MemVar_C0F044
  loc_B25544: LitStr "configuration\settings.ini"
  loc_B25547: ConcatStr
  loc_B25548: FStStrNoPop var_90
  loc_B2554B: ILdRf var_8C
  loc_B2554E: LitStr "maxpetsinroom"
  loc_B25551: LitStr "config"
  loc_B25554: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B25559: FFreeStr var_8C = ""
  loc_B25560: FFree1Ad var_88
  loc_B25563: FLdRfVar var_8C
  loc_B25566: FLdPrThis
  loc_B25567: VCallAd Control_ID_Text24
  loc_B2556A: FStAdFunc var_88
  loc_B2556D: FLdPr var_88
  loc_B25570:  = Me.Text
  loc_B25575: ImpAdLdI4 MemVar_C0F044
  loc_B25578: LitStr "configuration\settings.ini"
  loc_B2557B: ConcatStr
  loc_B2557C: FStStrNoPop var_90
  loc_B2557F: ILdRf var_8C
  loc_B25582: LitStr "maxfriends"
  loc_B25585: LitStr "config"
  loc_B25588: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2558D: FFreeStr var_8C = ""
  loc_B25594: FFree1Ad var_88
  loc_B25597: LitI2_Byte &HFF
  loc_B25599: FLdPrThis
  loc_B2559A: VCallAd Control_ID_Command2
  loc_B2559D: FStAdFunc var_88
  loc_B255A0: FLdPr var_88
  loc_B255A3: Me.Enabled = from_stack_1b
  loc_B255A8: FFree1Ad var_88
  loc_B255AB: LitI2_Byte &HFF
  loc_B255AD: FLdPrThis
  loc_B255AE: VCallAd Control_ID_Command1
  loc_B255B1: FStAdFunc var_88
  loc_B255B4: FLdPr var_88
  loc_B255B7: Me.Enabled = from_stack_1b
  loc_B255BC: FFree1Ad var_88
  loc_B255BF: ExitProcHresult
End Sub

Private Sub Command1_Click() 'B27B5C
  'Data Table: 549FD0
  loc_B27998: LitI4 0
  loc_B2799D: FStStrCopy var_C8
  loc_B279A0: FLdRfVar var_C8
  loc_B279A3: ImpAdLdRf MemVar_C0F03C
  loc_B279A6: CVarRef
  loc_B279AB: LitVarStr var_A4, "maxroomsperuser"
  loc_B279B0: FStVarCopyObj var_B4
  loc_B279B3: FLdRfVar var_B4
  loc_B279B6: LitVarStr var_94, "server"
  loc_B279BB: PopAdLdVar
  loc_B279BC: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B279C1: FStStrNoPop var_CC
  loc_B279C4: FLdPrThis
  loc_B279C5: VCallAd Control_ID_Text1
  loc_B279C8: FStAdFunc var_D0
  loc_B279CB: FLdPr var_D0
  loc_B279CE: Me.Text = from_stack_1
  loc_B279D3: FFreeStr var_C8 = ""
  loc_B279DA: FFree1Ad var_D0
  loc_B279DD: FFree1Var var_B4 = ""
  loc_B279E0: LitI4 0
  loc_B279E5: FStStrCopy var_C8
  loc_B279E8: FLdRfVar var_C8
  loc_B279EB: ImpAdLdRf MemVar_C0F03C
  loc_B279EE: CVarRef
  loc_B279F3: LitVarStr var_A4, "maxguestroomsinlist"
  loc_B279F8: FStVarCopyObj var_B4
  loc_B279FB: FLdRfVar var_B4
  loc_B279FE: LitVarStr var_94, "server"
  loc_B27A03: PopAdLdVar
  loc_B27A04: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B27A09: FStStrNoPop var_CC
  loc_B27A0C: FLdPrThis
  loc_B27A0D: VCallAd Control_ID_Text2
  loc_B27A10: FStAdFunc var_D0
  loc_B27A13: FLdPr var_D0
  loc_B27A16: Me.Text = from_stack_1
  loc_B27A1B: FFreeStr var_C8 = ""
  loc_B27A22: FFree1Ad var_D0
  loc_B27A25: FFree1Var var_B4 = ""
  loc_B27A28: LitI4 0
  loc_B27A2D: FStStrCopy var_C8
  loc_B27A30: FLdRfVar var_C8
  loc_B27A33: ImpAdLdRf MemVar_C0F03C
  loc_B27A36: CVarRef
  loc_B27A3B: LitVarStr var_A4, "maxfavouriterooms"
  loc_B27A40: FStVarCopyObj var_B4
  loc_B27A43: FLdRfVar var_B4
  loc_B27A46: LitVarStr var_94, "server"
  loc_B27A4B: PopAdLdVar
  loc_B27A4C: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B27A51: FStStrNoPop var_CC
  loc_B27A54: FLdPrThis
  loc_B27A55: VCallAd Control_ID_Text3
  loc_B27A58: FStAdFunc var_D0
  loc_B27A5B: FLdPr var_D0
  loc_B27A5E: Me.Text = from_stack_1
  loc_B27A63: FFreeStr var_C8 = ""
  loc_B27A6A: FFree1Ad var_D0
  loc_B27A6D: FFree1Var var_B4 = ""
  loc_B27A70: LitI4 0
  loc_B27A75: FStStrCopy var_C8
  loc_B27A78: FLdRfVar var_C8
  loc_B27A7B: ImpAdLdI4 MemVar_C0F044
  loc_B27A7E: LitStr "configuration\settings.ini"
  loc_B27A81: ConcatStr
  loc_B27A82: CVarStr var_E0
  loc_B27A85: LitVarStr var_A4, "maxrollersinroom"
  loc_B27A8A: FStVarCopyObj var_B4
  loc_B27A8D: FLdRfVar var_B4
  loc_B27A90: LitVarStr var_94, "config"
  loc_B27A95: PopAdLdVar
  loc_B27A96: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B27A9B: FStStrNoPop var_CC
  loc_B27A9E: FLdPrThis
  loc_B27A9F: VCallAd Control_ID_Text4
  loc_B27AA2: FStAdFunc var_D0
  loc_B27AA5: FLdPr var_D0
  loc_B27AA8: Me.Text = from_stack_1
  loc_B27AAD: FFreeStr var_C8 = ""
  loc_B27AB4: FFree1Ad var_D0
  loc_B27AB7: FFreeVar var_B4 = ""
  loc_B27ABE: LitI4 0
  loc_B27AC3: FStStrCopy var_C8
  loc_B27AC6: FLdRfVar var_C8
  loc_B27AC9: ImpAdLdI4 MemVar_C0F044
  loc_B27ACC: LitStr "configuration\settings.ini"
  loc_B27ACF: ConcatStr
  loc_B27AD0: CVarStr var_E0
  loc_B27AD3: LitVarStr var_A4, "maxpetsinroom"
  loc_B27AD8: FStVarCopyObj var_B4
  loc_B27ADB: FLdRfVar var_B4
  loc_B27ADE: LitVarStr var_94, "config"
  loc_B27AE3: PopAdLdVar
  loc_B27AE4: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B27AE9: FStStrNoPop var_CC
  loc_B27AEC: FLdPrThis
  loc_B27AED: VCallAd Control_ID_Text5
  loc_B27AF0: FStAdFunc var_D0
  loc_B27AF3: FLdPr var_D0
  loc_B27AF6: Me.Text = from_stack_1
  loc_B27AFB: FFreeStr var_C8 = ""
  loc_B27B02: FFree1Ad var_D0
  loc_B27B05: FFreeVar var_B4 = ""
  loc_B27B0C: LitI4 0
  loc_B27B11: FStStrCopy var_C8
  loc_B27B14: FLdRfVar var_C8
  loc_B27B17: ImpAdLdI4 MemVar_C0F044
  loc_B27B1A: LitStr "configuration\settings.ini"
  loc_B27B1D: ConcatStr
  loc_B27B1E: CVarStr var_E0
  loc_B27B21: LitVarStr var_A4, "maxfriends"
  loc_B27B26: FStVarCopyObj var_B4
  loc_B27B29: FLdRfVar var_B4
  loc_B27B2C: LitVarStr var_94, "config"
  loc_B27B31: PopAdLdVar
  loc_B27B32: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B27B37: FStStrNoPop var_CC
  loc_B27B3A: FLdPrThis
  loc_B27B3B: VCallAd Control_ID_Text24
  loc_B27B3E: FStAdFunc var_D0
  loc_B27B41: FLdPr var_D0
  loc_B27B44: Me.Text = from_stack_1
  loc_B27B49: FFreeStr var_C8 = ""
  loc_B27B50: FFree1Ad var_D0
  loc_B27B53: FFreeVar var_B4 = ""
  loc_B27B5A: ExitProcHresult
End Sub

Private Sub Command4_Click() 'B2FE68
  'Data Table: 549FD0
  loc_B2FB80: LitI2_Byte 0
  loc_B2FB82: FLdPrThis
  loc_B2FB83: VCallAd Control_ID_Command3
  loc_B2FB86: FStAdFunc var_8C
  loc_B2FB89: FLdPr var_8C
  loc_B2FB8C: Me.Enabled = from_stack_1b
  loc_B2FB91: FFree1Ad var_8C
  loc_B2FB94: LitI2_Byte 0
  loc_B2FB96: FLdPrThis
  loc_B2FB97: VCallAd Control_ID_Command4
  loc_B2FB9A: FStAdFunc var_8C
  loc_B2FB9D: FLdPr var_8C
  loc_B2FBA0: Me.Enabled = from_stack_1b
  loc_B2FBA5: FFree1Ad var_8C
  loc_B2FBA8: FLdRfVar var_94
  loc_B2FBAB: FLdRfVar var_8C
  loc_B2FBAE: LitI4 0
  loc_B2FBB3: LitI2_Byte 0
  loc_B2FBB5: LitI4 1
  loc_B2FBBA: ImpAdLdI4 MemVar_C0F044
  loc_B2FBBD: LitStr "configuration\bobbafilter.ini"
  loc_B2FBC0: ConcatStr
  loc_B2FBC1: FStStrNoPop var_90
  loc_B2FBC4: ImpAdLdRf MemVar_C0F040
  loc_B2FBC7: NewIfNullPr IFileSystem3
  loc_B2FBCA: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2FBCF: FLdPr var_8C
  loc_B2FBD2:  = Me.ReadAll
  loc_B2FBD7: FLdZeroAd var_94
  loc_B2FBDA: FStStr var_88
  loc_B2FBDD: FFree1Str var_90
  loc_B2FBE0: FFree1Ad var_8C
  loc_B2FBE3: LitI4 0
  loc_B2FBE8: LitI4 -1
  loc_B2FBED: LitI4 1
  loc_B2FBF2: LitStr vbCrLf
  loc_B2FBF5: LitStr vbCrLf
  loc_B2FBF8: LitStr vbCrLf
  loc_B2FBFB: ConcatStr
  loc_B2FBFC: FStStrNoPop var_90
  loc_B2FBFF: ILdRf var_88
  loc_B2FC02: ImpAdCallI2 Replace(, , , , , )
  loc_B2FC07: FStStr var_88
  loc_B2FC0A: FFree1Str var_90
  loc_B2FC0D: LitI4 0
  loc_B2FC12: LitI4 -1
  loc_B2FC17: LitI4 1
  loc_B2FC1C: LitStr vbCrLf
  loc_B2FC1F: LitStr vbCrLf
  loc_B2FC22: LitStr vbCrLf
  loc_B2FC25: ConcatStr
  loc_B2FC26: FStStrNoPop var_90
  loc_B2FC29: ILdRf var_88
  loc_B2FC2C: ImpAdCallI2 Replace(, , , , , )
  loc_B2FC31: FStStr var_88
  loc_B2FC34: FFree1Str var_90
  loc_B2FC37: LitI4 0
  loc_B2FC3C: LitI4 -1
  loc_B2FC41: LitI4 1
  loc_B2FC46: LitStr vbCrLf
  loc_B2FC49: LitStr vbCrLf
  loc_B2FC4C: LitStr vbCrLf
  loc_B2FC4F: ConcatStr
  loc_B2FC50: FStStrNoPop var_90
  loc_B2FC53: ILdRf var_88
  loc_B2FC56: ImpAdCallI2 Replace(, , , , , )
  loc_B2FC5B: FStStr var_88
  loc_B2FC5E: FFree1Str var_90
  loc_B2FC61: LitI4 1
  loc_B2FC66: FLdRfVar var_88
  loc_B2FC69: CVarRef
  loc_B2FC6E: FLdRfVar var_B4
  loc_B2FC71: ImpAdCallFPR4  = Left(, )
  loc_B2FC76: FLdRfVar var_B4
  loc_B2FC79: LitVarStr var_C4, vbCrLf
  loc_B2FC7E: HardType
  loc_B2FC7F: EqVarBool
  loc_B2FC81: FFree1Var var_B4 = ""
  loc_B2FC84: BranchF loc_B2FCAD
  loc_B2FC87: LitVar_Missing var_B4
  loc_B2FC8A: LitI4 2
  loc_B2FC8F: FLdRfVar var_88
  loc_B2FC92: CVarRef
  loc_B2FC97: FLdRfVar var_D4
  loc_B2FC9A: ImpAdCallFPR4  = Mid(, , )
  loc_B2FC9F: FLdRfVar var_D4
  loc_B2FCA2: CStrVarTmp
  loc_B2FCA3: FStStr var_88
  loc_B2FCA6: FFreeVar var_B4 = ""
  loc_B2FCAD: LitI4 1
  loc_B2FCB2: FLdRfVar var_88
  loc_B2FCB5: CVarRef
  loc_B2FCBA: FLdRfVar var_B4
  loc_B2FCBD: ImpAdCallFPR4  = Right(, )
  loc_B2FCC2: FLdRfVar var_B4
  loc_B2FCC5: LitVarStr var_C4, vbCrLf
  loc_B2FCCA: HardType
  loc_B2FCCB: NeVarBool
  loc_B2FCCD: FFree1Var var_B4 = ""
  loc_B2FCD0: BranchF loc_B2FCDD
  loc_B2FCD3: ILdRf var_88
  loc_B2FCD6: LitStr vbCrLf
  loc_B2FCD9: ConcatStr
  loc_B2FCDA: FStStr var_88
  loc_B2FCDD: FLdRfVar var_90
  loc_B2FCE0: FLdPrThis
  loc_B2FCE1: VCallAd Control_ID_List1
  loc_B2FCE4: FStAdFunc var_8C
  loc_B2FCE7: FLdPr var_8C
  loc_B2FCEA:  = Me.Text
  loc_B2FCEF: LitI4 0
  loc_B2FCF4: LitI4 -1
  loc_B2FCF9: LitI4 1
  loc_B2FCFE: LitStr vbNullString
  loc_B2FD01: ILdRf var_90
  loc_B2FD04: LitStr vbCrLf
  loc_B2FD07: ConcatStr
  loc_B2FD08: FStStrNoPop var_94
  loc_B2FD0B: ILdRf var_88
  loc_B2FD0E: ImpAdCallI2 Replace(, , , , , )
  loc_B2FD13: FStStr var_88
  loc_B2FD16: FFreeStr var_90 = ""
  loc_B2FD1D: FFree1Ad var_8C
  loc_B2FD20: ILdRf var_88
  loc_B2FD23: FLdRfVar var_8C
  loc_B2FD26: LitI4 0
  loc_B2FD2B: LitI2_Byte 0
  loc_B2FD2D: LitI4 2
  loc_B2FD32: ImpAdLdI4 MemVar_C0F044
  loc_B2FD35: LitStr "configuration\bobbafilter.ini"
  loc_B2FD38: ConcatStr
  loc_B2FD39: FStStrNoPop var_90
  loc_B2FD3C: ImpAdLdRf MemVar_C0F040
  loc_B2FD3F: NewIfNullPr IFileSystem3
  loc_B2FD42: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2FD47: FLdPr var_8C
  loc_B2FD4A: from_stack_2 = Me.Write(from_stack_1v)
  loc_B2FD4F: FFree1Str var_90
  loc_B2FD52: FFree1Ad var_8C
  loc_B2FD55: FLdRfVar var_94
  loc_B2FD58: FLdRfVar var_8C
  loc_B2FD5B: LitI4 0
  loc_B2FD60: LitI2_Byte 0
  loc_B2FD62: LitI4 1
  loc_B2FD67: ImpAdLdI4 MemVar_C0F044
  loc_B2FD6A: LitStr "configuration\bobbafilter.ini"
  loc_B2FD6D: ConcatStr
  loc_B2FD6E: FStStrNoPop var_90
  loc_B2FD71: ImpAdLdRf MemVar_C0F040
  loc_B2FD74: NewIfNullPr IFileSystem3
  loc_B2FD77: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2FD7C: FLdPr var_8C
  loc_B2FD7F:  = Me.ReadAll
  loc_B2FD84: LitI4 0
  loc_B2FD89: LitI4 -1
  loc_B2FD8E: LitVarStr var_A4, vbCrLf
  loc_B2FD93: FStVarCopyObj var_B4
  loc_B2FD96: FLdRfVar var_B4
  loc_B2FD99: ILdRf var_94
  loc_B2FD9C: FLdRfVar var_D4
  loc_B2FD9F: ImpAdCallFPR4  = Split(, , , )
  loc_B2FDA4: FLdRfVar var_D4
  loc_B2FDA7: FStVar var_E4
  loc_B2FDAB: FFreeStr var_90 = ""
  loc_B2FDB2: FFree1Ad var_8C
  loc_B2FDB5: FFree1Var var_B4 = ""
  loc_B2FDB8: FLdPrThis
  loc_B2FDB9: VCallAd Control_ID_List1
  loc_B2FDBC: FStAdFunc var_8C
  loc_B2FDBF: FLdPr var_8C
  loc_B2FDC2: Me.Clear
  loc_B2FDC7: FFree1Ad var_8C
  loc_B2FDCA: LitVarI2 var_104, 0
  loc_B2FDCF: FLdRfVar var_F4
  loc_B2FDD2: FLdRfVar var_E4
  loc_B2FDD5: CRefVarAry
  loc_B2FDD7: PopAdLd4
  loc_B2FDD8: LitI2_Byte 1
  loc_B2FDDA: FnUBound
  loc_B2FDDC: CVarI4
  loc_B2FDE0: ForVar var_124
  loc_B2FDE6: FLdRfVar var_F4
  loc_B2FDE9: CDargRef
  loc_B2FDED: FLdRfVar var_E4
  loc_B2FDF0: VarIndexLdVar
  loc_B2FDF6: LitVarStr var_C4, vbNullString
  loc_B2FDFB: HardType
  loc_B2FDFC: NeVarBool
  loc_B2FDFE: FFree1Var var_B4 = ""
  loc_B2FE01: BranchF loc_B2FE34
  loc_B2FE04: LitVar_Missing var_C4
  loc_B2FE07: PopAdLdVar
  loc_B2FE08: FLdRfVar var_F4
  loc_B2FE0B: CDargRef
  loc_B2FE0F: FLdRfVar var_E4
  loc_B2FE12: VarIndexLdVar
  loc_B2FE18: CStrVarVal var_90
  loc_B2FE1C: FLdPrThis
  loc_B2FE1D: VCallAd Control_ID_List1
  loc_B2FE20: FStAdFunc var_8C
  loc_B2FE23: FLdPr var_8C
  loc_B2FE26: Me.AddItem from_stack_1, from_stack_2
  loc_B2FE2B: FFree1Str var_90
  loc_B2FE2E: FFree1Ad var_8C
  loc_B2FE31: FFree1Var var_B4 = ""
  loc_B2FE34: FLdRfVar var_F4
  loc_B2FE37: NextStepVar var_124
  loc_B2FE3D: LitI2_Byte &HFF
  loc_B2FE3F: FLdPrThis
  loc_B2FE40: VCallAd Control_ID_Command3
  loc_B2FE43: FStAdFunc var_8C
  loc_B2FE46: FLdPr var_8C
  loc_B2FE49: Me.Enabled = from_stack_1b
  loc_B2FE4E: FFree1Ad var_8C
  loc_B2FE51: LitI2_Byte &HFF
  loc_B2FE53: FLdPrThis
  loc_B2FE54: VCallAd Control_ID_Command4
  loc_B2FE57: FStAdFunc var_8C
  loc_B2FE5A: FLdPr var_8C
  loc_B2FE5D: Me.Enabled = from_stack_1b
  loc_B2FE62: FFree1Ad var_8C
  loc_B2FE65: ExitProcHresult
End Sub

Private Sub Command3_Click() 'B40B70
  'Data Table: 549FD0
  loc_B405E4: LitI2_Byte 0
  loc_B405E6: FLdPrThis
  loc_B405E7: VCallAd Control_ID_Command3
  loc_B405EA: FStAdFunc var_8C
  loc_B405ED: FLdPr var_8C
  loc_B405F0: Me.Enabled = from_stack_1b
  loc_B405F5: FFree1Ad var_8C
  loc_B405F8: LitI2_Byte 0
  loc_B405FA: FLdPrThis
  loc_B405FB: VCallAd Control_ID_Command4
  loc_B405FE: FStAdFunc var_8C
  loc_B40601: FLdPr var_8C
  loc_B40604: Me.Enabled = from_stack_1b
  loc_B40609: FFree1Ad var_8C
  loc_B4060C: LitVarStr var_9C, "enter_bobba_word"
  loc_B40611: PopAdLdVar
  loc_B40612: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B40617: FStStr var_190
  loc_B4061A: LitVarStr var_AC, "title_bobba_word_win"
  loc_B4061F: PopAdLdVar
  loc_B40620: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B40625: FStStr var_194
  loc_B40628: LitVar_Missing var_16C
  loc_B4062B: LitVar_Missing var_14C
  loc_B4062E: LitVar_Missing var_12C
  loc_B40631: LitVar_Missing var_10C
  loc_B40634: LitVar_Missing var_EC
  loc_B40637: FLdZeroAd var_194
  loc_B4063A: CVarStr var_CC
  loc_B4063D: FLdZeroAd var_190
  loc_B40640: CVarStr var_BC
  loc_B40643: ImpAdCallI2 InputBox(, , , , , , )
  loc_B40648: CVarStr var_18C
  loc_B4064B: FStVar var_17C
  loc_B4064F: FFreeStr var_190 = ""
  loc_B40656: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_10C = "": var_12C = "": var_14C = ""
  loc_B40667: FLdRfVar var_194
  loc_B4066A: FLdRfVar var_8C
  loc_B4066D: LitI4 0
  loc_B40672: LitI2_Byte 0
  loc_B40674: LitI4 1
  loc_B40679: ImpAdLdI4 MemVar_C0F044
  loc_B4067C: LitStr "configuration\bobbafilter.ini"
  loc_B4067F: ConcatStr
  loc_B40680: FStStrNoPop var_190
  loc_B40683: ImpAdLdRf MemVar_C0F040
  loc_B40686: NewIfNullPr IFileSystem3
  loc_B40689: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4068E: FLdPr var_8C
  loc_B40691:  = Me.ReadAll
  loc_B40696: FLdZeroAd var_194
  loc_B40699: FStStr var_88
  loc_B4069C: FFree1Str var_190
  loc_B4069F: FFree1Ad var_8C
  loc_B406A2: LitI4 0
  loc_B406A7: LitI4 -1
  loc_B406AC: LitI4 1
  loc_B406B1: LitStr vbCrLf
  loc_B406B4: LitStr vbCrLf
  loc_B406B7: LitStr vbCrLf
  loc_B406BA: ConcatStr
  loc_B406BB: FStStrNoPop var_190
  loc_B406BE: ILdRf var_88
  loc_B406C1: ImpAdCallI2 Replace(, , , , , )
  loc_B406C6: FStStr var_88
  loc_B406C9: FFree1Str var_190
  loc_B406CC: LitI4 0
  loc_B406D1: LitI4 -1
  loc_B406D6: LitI4 1
  loc_B406DB: LitStr vbCrLf
  loc_B406DE: LitStr vbCrLf
  loc_B406E1: LitStr vbCrLf
  loc_B406E4: ConcatStr
  loc_B406E5: FStStrNoPop var_190
  loc_B406E8: ILdRf var_88
  loc_B406EB: ImpAdCallI2 Replace(, , , , , )
  loc_B406F0: FStStr var_88
  loc_B406F3: FFree1Str var_190
  loc_B406F6: LitI4 0
  loc_B406FB: LitI4 -1
  loc_B40700: LitI4 1
  loc_B40705: LitStr vbCrLf
  loc_B40708: LitStr vbCrLf
  loc_B4070B: LitStr vbCrLf
  loc_B4070E: ConcatStr
  loc_B4070F: FStStrNoPop var_190
  loc_B40712: ILdRf var_88
  loc_B40715: ImpAdCallI2 Replace(, , , , , )
  loc_B4071A: FStStr var_88
  loc_B4071D: FFree1Str var_190
  loc_B40720: LitI4 1
  loc_B40725: FLdRfVar var_88
  loc_B40728: CVarRef
  loc_B4072D: FLdRfVar var_BC
  loc_B40730: ImpAdCallFPR4  = Left(, )
  loc_B40735: FLdRfVar var_BC
  loc_B40738: LitVarStr var_AC, vbCrLf
  loc_B4073D: HardType
  loc_B4073E: EqVarBool
  loc_B40740: FFree1Var var_BC = ""
  loc_B40743: BranchF loc_B4076C
  loc_B40746: LitVar_Missing var_BC
  loc_B40749: LitI4 2
  loc_B4074E: FLdRfVar var_88
  loc_B40751: CVarRef
  loc_B40756: FLdRfVar var_CC
  loc_B40759: ImpAdCallFPR4  = Mid(, , )
  loc_B4075E: FLdRfVar var_CC
  loc_B40761: CStrVarTmp
  loc_B40762: FStStr var_88
  loc_B40765: FFreeVar var_BC = ""
  loc_B4076C: LitI4 1
  loc_B40771: FLdRfVar var_88
  loc_B40774: CVarRef
  loc_B40779: FLdRfVar var_BC
  loc_B4077C: ImpAdCallFPR4  = Right(, )
  loc_B40781: FLdRfVar var_BC
  loc_B40784: LitVarStr var_AC, vbCrLf
  loc_B40789: HardType
  loc_B4078A: NeVarBool
  loc_B4078C: FFree1Var var_BC = ""
  loc_B4078F: BranchF loc_B4079C
  loc_B40792: ILdRf var_88
  loc_B40795: LitStr vbCrLf
  loc_B40798: ConcatStr
  loc_B40799: FStStr var_88
  loc_B4079C: FLdRfVar var_17C
  loc_B4079F: FnLenVar var_BC
  loc_B407A3: LitVarI2 var_9C, 1
  loc_B407A8: AddVar var_CC
  loc_B407AC: CI4Var
  loc_B407AE: FLdRfVar var_88
  loc_B407B1: CVarRef
  loc_B407B6: FLdRfVar var_EC
  loc_B407B9: ImpAdCallFPR4  = Left(, )
  loc_B407BE: FLdRfVar var_EC
  loc_B407C1: FLdRfVar var_17C
  loc_B407C4: FLdRfVar var_10C
  loc_B407C7: ImpAdCallFPR4  = LCase()
  loc_B407CC: FLdRfVar var_10C
  loc_B407CF: LitVarStr var_DC, vbCrLf
  loc_B407D4: ConcatVar var_12C
  loc_B407D8: EqVar var_14C
  loc_B407DC: LitI4 1
  loc_B407E1: ILdRf var_88
  loc_B407E4: CVarStr var_13C
  loc_B407E7: LitVarStr var_FC, vbCrLf
  loc_B407EC: FLdRfVar var_17C
  loc_B407EF: FLdRfVar var_16C
  loc_B407F2: ImpAdCallFPR4  = LCase()
  loc_B407F7: FLdRfVar var_16C
  loc_B407FA: ConcatVar var_18C
  loc_B407FE: LitVarStr var_11C, vbCrLf
  loc_B40803: ConcatVar var_1A4
  loc_B40807: LitI4 0
  loc_B4080C: FnInStr4Var
  loc_B40810: OrVar var_1C4
  loc_B40814: CBoolVarNull
  loc_B40816: FFreeVar var_CC = "": var_10C = "": var_EC = "": var_12C = "": var_16C = "": var_18C = "": var_1A4 = ""
  loc_B40829: BranchF loc_B40892
  loc_B4082C: LitVarStr var_9C, "word_already_on_list_msg"
  loc_B40831: PopAdLdVar
  loc_B40832: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B40837: FStStr var_190
  loc_B4083A: LitVar_Missing var_10C
  loc_B4083D: LitVar_Missing var_EC
  loc_B40840: LitVarStr var_AC, "Server"
  loc_B40845: FStVarCopyObj var_CC
  loc_B40848: FLdRfVar var_CC
  loc_B4084B: LitI4 &H10
  loc_B40850: FLdZeroAd var_190
  loc_B40853: CVarStr var_BC
  loc_B40856: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B4085B: FFree1Str var_190
  loc_B4085E: FFreeVar var_BC = "": var_CC = "": var_EC = ""
  loc_B40869: LitI2_Byte &HFF
  loc_B4086B: FLdPrThis
  loc_B4086C: VCallAd Control_ID_Command3
  loc_B4086F: FStAdFunc var_8C
  loc_B40872: FLdPr var_8C
  loc_B40875: Me.Enabled = from_stack_1b
  loc_B4087A: FFree1Ad var_8C
  loc_B4087D: LitI2_Byte &HFF
  loc_B4087F: FLdPrThis
  loc_B40880: VCallAd Control_ID_Command4
  loc_B40883: FStAdFunc var_8C
  loc_B40886: FLdPr var_8C
  loc_B40889: Me.Enabled = from_stack_1b
  loc_B4088E: FFree1Ad var_8C
  loc_B40891: ExitProcHresult
  loc_B40892: FLdRfVar var_17C
  loc_B40895: FnLenVar var_BC
  loc_B40899: LitVarI2 var_9C, 1
  loc_B4089E: HardType
  loc_B4089F: LeVarBool
  loc_B408A1: BranchF loc_B4090A
  loc_B408A4: LitVarStr var_9C, "word_inacceptable"
  loc_B408A9: PopAdLdVar
  loc_B408AA: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B408AF: FStStr var_190
  loc_B408B2: LitVar_Missing var_10C
  loc_B408B5: LitVar_Missing var_EC
  loc_B408B8: LitVarStr var_AC, "Server"
  loc_B408BD: FStVarCopyObj var_CC
  loc_B408C0: FLdRfVar var_CC
  loc_B408C3: LitI4 &H10
  loc_B408C8: FLdZeroAd var_190
  loc_B408CB: CVarStr var_BC
  loc_B408CE: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B408D3: FFree1Str var_190
  loc_B408D6: FFreeVar var_BC = "": var_CC = "": var_EC = ""
  loc_B408E1: LitI2_Byte &HFF
  loc_B408E3: FLdPrThis
  loc_B408E4: VCallAd Control_ID_Command3
  loc_B408E7: FStAdFunc var_8C
  loc_B408EA: FLdPr var_8C
  loc_B408ED: Me.Enabled = from_stack_1b
  loc_B408F2: FFree1Ad var_8C
  loc_B408F5: LitI2_Byte &HFF
  loc_B408F7: FLdPrThis
  loc_B408F8: VCallAd Control_ID_Command4
  loc_B408FB: FStAdFunc var_8C
  loc_B408FE: FLdPr var_8C
  loc_B40901: Me.Enabled = from_stack_1b
  loc_B40906: FFree1Ad var_8C
  loc_B40909: ExitProcHresult
  loc_B4090A: ILdRf var_88
  loc_B4090D: CVarStr var_9C
  loc_B40910: FLdRfVar var_17C
  loc_B40913: FLdRfVar var_BC
  loc_B40916: ImpAdCallFPR4  = LCase()
  loc_B4091B: FLdRfVar var_BC
  loc_B4091E: ConcatVar var_CC
  loc_B40922: LitVarStr var_AC, vbCrLf
  loc_B40927: ConcatVar var_EC
  loc_B4092B: CStrVarTmp
  loc_B4092C: FStStr var_88
  loc_B4092F: FFreeVar var_BC = "": var_CC = ""
  loc_B40938: ILdRf var_88
  loc_B4093B: FLdRfVar var_8C
  loc_B4093E: LitI4 0
  loc_B40943: LitI2_Byte 0
  loc_B40945: LitI4 2
  loc_B4094A: ImpAdLdI4 MemVar_C0F044
  loc_B4094D: LitStr "configuration\bobbafilter.ini"
  loc_B40950: ConcatStr
  loc_B40951: FStStrNoPop var_190
  loc_B40954: ImpAdLdRf MemVar_C0F040
  loc_B40957: NewIfNullPr IFileSystem3
  loc_B4095A: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4095F: FLdPr var_8C
  loc_B40962: from_stack_2 = Me.Write(from_stack_1v)
  loc_B40967: FFree1Str var_190
  loc_B4096A: FFree1Ad var_8C
  loc_B4096D: FLdRfVar var_1C6
  loc_B40970: FLdRfVar var_8C
  loc_B40973: LitI4 0
  loc_B40978: LitI2_Byte 0
  loc_B4097A: LitI4 1
  loc_B4097F: ImpAdLdI4 MemVar_C0F044
  loc_B40982: LitStr "configuration\bobbafilter.ini"
  loc_B40985: ConcatStr
  loc_B40986: FStStrNoPop var_190
  loc_B40989: ImpAdLdRf MemVar_C0F040
  loc_B4098C: NewIfNullPr IFileSystem3
  loc_B4098F: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B40994: FLdPr var_8C
  loc_B40997:  = Me.AtEndOfStream
  loc_B4099C: FLdI2 var_1C6
  loc_B4099F: LitI2_Byte 0
  loc_B409A1: EqI2
  loc_B409A2: FFree1Str var_190
  loc_B409A5: FFree1Ad var_8C
  loc_B409A8: BranchF loc_B40A5F
  loc_B409AB: LitI4 0
  loc_B409B0: FStStrCopy var_190
  loc_B409B3: FLdRfVar var_190
  loc_B409B6: ImpAdLdI4 MemVar_C0F044
  loc_B409B9: LitStr "configuration\settings.ini"
  loc_B409BC: ConcatStr
  loc_B409BD: CVarStr var_CC
  loc_B409C0: LitVarStr var_AC, "replacement"
  loc_B409C5: FStVarCopyObj var_BC
  loc_B409C8: FLdRfVar var_BC
  loc_B409CB: LitVarStr var_9C, "config"
  loc_B409D0: PopAdLdVar
  loc_B409D1: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B409D6: CVarStr var_10C
  loc_B409D9: LitI4 1
  loc_B409DE: FLdRfVar var_EC
  loc_B409E1: ImpAdCallFPR4  = Chr()
  loc_B409E6: FLdRfVar var_EC
  loc_B409E9: ConcatVar var_12C
  loc_B409ED: FLdRfVar var_1CC
  loc_B409F0: FLdRfVar var_8C
  loc_B409F3: LitI4 0
  loc_B409F8: LitI2_Byte 0
  loc_B409FA: LitI4 1
  loc_B409FF: ImpAdLdI4 MemVar_C0F044
  loc_B40A02: LitStr "configuration\bobbafilter.ini"
  loc_B40A05: ConcatStr
  loc_B40A06: FStStrNoPop var_194
  loc_B40A09: ImpAdLdRf MemVar_C0F040
  loc_B40A0C: NewIfNullPr IFileSystem3
  loc_B40A0F: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B40A14: FLdPr var_8C
  loc_B40A17:  = Me.ReadAll
  loc_B40A1C: FLdZeroAd var_1CC
  loc_B40A1F: CVarStr var_14C
  loc_B40A22: ConcatVar var_16C
  loc_B40A26: CStrVarVal var_1D0
  loc_B40A2A: ImpAdLdRf MemVar_C0F018
  loc_B40A2D: NewIfNullPr frmMain
  loc_B40A30: VCallAd Control_ID_
  loc_B40A33: FStAdFunc var_1D4
  loc_B40A36: FLdPr var_1D4
  loc_B40A39: frmMain.TextBox.Text = from_stack_1
  loc_B40A3E: FFreeStr var_190 = "": var_194 = ""
  loc_B40A47: FFreeAd var_8C = ""
  loc_B40A4E: FFreeVar var_BC = "": var_CC = "": var_10C = "": var_EC = "": var_12C = "": var_14C = ""
  loc_B40A5F: FLdRfVar var_194
  loc_B40A62: FLdRfVar var_8C
  loc_B40A65: LitI4 0
  loc_B40A6A: LitI2_Byte 0
  loc_B40A6C: LitI4 1
  loc_B40A71: ImpAdLdI4 MemVar_C0F044
  loc_B40A74: LitStr "configuration\bobbafilter.ini"
  loc_B40A77: ConcatStr
  loc_B40A78: FStStrNoPop var_190
  loc_B40A7B: ImpAdLdRf MemVar_C0F040
  loc_B40A7E: NewIfNullPr IFileSystem3
  loc_B40A81: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B40A86: FLdPr var_8C
  loc_B40A89:  = Me.ReadAll
  loc_B40A8E: LitI4 0
  loc_B40A93: LitI4 -1
  loc_B40A98: LitVarStr var_9C, vbCrLf
  loc_B40A9D: FStVarCopyObj var_BC
  loc_B40AA0: FLdRfVar var_BC
  loc_B40AA3: ILdRf var_194
  loc_B40AA6: FLdRfVar var_CC
  loc_B40AA9: ImpAdCallFPR4  = Split(, , , )
  loc_B40AAE: FLdRfVar var_CC
  loc_B40AB1: FStVar var_1E4
  loc_B40AB5: FFreeStr var_190 = ""
  loc_B40ABC: FFree1Ad var_8C
  loc_B40ABF: FFree1Var var_BC = ""
  loc_B40AC2: FLdPrThis
  loc_B40AC3: VCallAd Control_ID_List1
  loc_B40AC6: FStAdFunc var_8C
  loc_B40AC9: FLdPr var_8C
  loc_B40ACC: Me.Clear
  loc_B40AD1: FFree1Ad var_8C
  loc_B40AD4: LitVarI2 var_DC, 0
  loc_B40AD9: FLdRfVar var_1F4
  loc_B40ADC: FLdRfVar var_1E4
  loc_B40ADF: CRefVarAry
  loc_B40AE1: PopAdLd4
  loc_B40AE2: LitI2_Byte 1
  loc_B40AE4: FnUBound
  loc_B40AE6: CVarI4
  loc_B40AEA: ForVar var_214
  loc_B40AF0: FLdRfVar var_1F4
  loc_B40AF3: CDargRef
  loc_B40AF7: FLdRfVar var_1E4
  loc_B40AFA: VarIndexLdVar
  loc_B40B00: LitVarStr var_AC, vbNullString
  loc_B40B05: HardType
  loc_B40B06: NeVarBool
  loc_B40B08: FFree1Var var_BC = ""
  loc_B40B0B: BranchF loc_B40B3E
  loc_B40B0E: LitVar_Missing var_AC
  loc_B40B11: PopAdLdVar
  loc_B40B12: FLdRfVar var_1F4
  loc_B40B15: CDargRef
  loc_B40B19: FLdRfVar var_1E4
  loc_B40B1C: VarIndexLdVar
  loc_B40B22: CStrVarVal var_190
  loc_B40B26: FLdPrThis
  loc_B40B27: VCallAd Control_ID_List1
  loc_B40B2A: FStAdFunc var_8C
  loc_B40B2D: FLdPr var_8C
  loc_B40B30: Me.AddItem from_stack_1, from_stack_2
  loc_B40B35: FFree1Str var_190
  loc_B40B38: FFree1Ad var_8C
  loc_B40B3B: FFree1Var var_BC = ""
  loc_B40B3E: FLdRfVar var_1F4
  loc_B40B41: NextStepVar var_214
  loc_B40B47: LitI2_Byte &HFF
  loc_B40B49: FLdPrThis
  loc_B40B4A: VCallAd Control_ID_Command3
  loc_B40B4D: FStAdFunc var_8C
  loc_B40B50: FLdPr var_8C
  loc_B40B53: Me.Enabled = from_stack_1b
  loc_B40B58: FFree1Ad var_8C
  loc_B40B5B: LitI2_Byte &HFF
  loc_B40B5D: FLdPrThis
  loc_B40B5E: VCallAd Control_ID_Command4
  loc_B40B61: FStAdFunc var_8C
  loc_B40B64: FLdPr var_8C
  loc_B40B67: Me.Enabled = from_stack_1b
  loc_B40B6C: FFree1Ad var_8C
  loc_B40B6F: ExitProcHresult
End Sub

Private Sub Command6_Click() 'B354A8
  'Data Table: 549FD0
  loc_B35108: LitI2_Byte 0
  loc_B3510A: FLdPrThis
  loc_B3510B: VCallAd Control_ID_Command6
  loc_B3510E: FStAdFunc var_88
  loc_B35111: FLdPr var_88
  loc_B35114: Me.Enabled = from_stack_1b
  loc_B35119: FFree1Ad var_88
  loc_B3511C: LitI2_Byte 0
  loc_B3511E: FLdPrThis
  loc_B3511F: VCallAd Control_ID_Command5
  loc_B35122: FStAdFunc var_88
  loc_B35125: FLdPr var_88
  loc_B35128: Me.Enabled = from_stack_1b
  loc_B3512D: FFree1Ad var_88
  loc_B35130: FLdRfVar var_8C
  loc_B35133: FLdPrThis
  loc_B35134: VCallAd Control_ID_Text6
  loc_B35137: FStAdFunc var_88
  loc_B3513A: FLdPr var_88
  loc_B3513D:  = Me.Text
  loc_B35142: ImpAdLdI4 MemVar_C0F03C
  loc_B35145: ILdRf var_8C
  loc_B35148: LitStr "port"
  loc_B3514B: LitStr "server"
  loc_B3514E: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B35153: FFree1Str var_8C
  loc_B35156: FFree1Ad var_88
  loc_B35159: FLdRfVar var_8E
  loc_B3515C: FLdPrThis
  loc_B3515D: VCallAd Control_ID_Check1
  loc_B35160: FStAdFunc var_88
  loc_B35163: FLdPr var_88
  loc_B35166:  = Me.Value
  loc_B3516B: ImpAdLdI4 MemVar_C0F044
  loc_B3516E: LitStr "configuration\settings.ini"
  loc_B35171: ConcatStr
  loc_B35172: FStStrNoPop var_94
  loc_B35175: FLdI2 var_8E
  loc_B35178: CStrUI1
  loc_B3517A: FStStrNoPop var_8C
  loc_B3517D: LitStr "bobba_filter"
  loc_B35180: LitStr "config"
  loc_B35183: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B35188: FFreeStr var_8C = ""
  loc_B3518F: FFree1Ad var_88
  loc_B35192: FLdRfVar var_8E
  loc_B35195: FLdPrThis
  loc_B35196: VCallAd Control_ID_Check3
  loc_B35199: FStAdFunc var_88
  loc_B3519C: FLdPr var_88
  loc_B3519F:  = Me.Value
  loc_B351A4: ImpAdLdI4 MemVar_C0F044
  loc_B351A7: LitStr "configuration\settings.ini"
  loc_B351AA: ConcatStr
  loc_B351AB: FStStrNoPop var_94
  loc_B351AE: FLdI2 var_8E
  loc_B351B1: CStrUI1
  loc_B351B3: FStStrNoPop var_8C
  loc_B351B6: LitStr "console"
  loc_B351B9: LitStr "config"
  loc_B351BC: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B351C1: FFreeStr var_8C = ""
  loc_B351C8: FFree1Ad var_88
  loc_B351CB: FLdRfVar var_8E
  loc_B351CE: FLdPrThis
  loc_B351CF: VCallAd Control_ID_Check2
  loc_B351D2: FStAdFunc var_88
  loc_B351D5: FLdPr var_88
  loc_B351D8:  = Me.Value
  loc_B351DD: FLdRfVar var_94
  loc_B351E0: FLdPrThis
  loc_B351E1: VCallAd Control_ID_Text7
  loc_B351E4: FStAdFunc var_98
  loc_B351E7: FLdPr var_98
  loc_B351EA:  = Me.Text
  loc_B351EF: ImpAdLdI4 MemVar_C0F044
  loc_B351F2: LitStr "configuration\settings.ini"
  loc_B351F5: ConcatStr
  loc_B351F6: FStStrNoPop var_A4
  loc_B351F9: FLdI2 var_8E
  loc_B351FC: CStrUI1
  loc_B351FE: FStStrNoPop var_8C
  loc_B35201: LitStr ","
  loc_B35204: ConcatStr
  loc_B35205: FStStrNoPop var_9C
  loc_B35208: ILdRf var_94
  loc_B3520B: ConcatStr
  loc_B3520C: FStStrNoPop var_A0
  loc_B3520F: LitStr "welcome_message"
  loc_B35212: LitStr "config"
  loc_B35215: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B3521A: FFreeStr var_8C = "": var_9C = "": var_94 = "": var_A0 = ""
  loc_B35227: FFreeAd var_88 = ""
  loc_B3522E: FLdRfVar var_8E
  loc_B35231: FLdPrThis
  loc_B35232: VCallAd Control_ID_Check10
  loc_B35235: FStAdFunc var_88
  loc_B35238: FLdPr var_88
  loc_B3523B:  = Me.Value
  loc_B35240: FLdI2 var_8E
  loc_B35243: LitI2_Byte 0
  loc_B35245: EqI2
  loc_B35246: FFree1Ad var_88
  loc_B35249: BranchF loc_B352C2
  loc_B3524C: FLdRfVar var_8E
  loc_B3524F: ImpAdLdI4 MemVar_C0F044
  loc_B35252: LitStr "new_habbo\directmail\welcome.message"
  loc_B35255: ConcatStr
  loc_B35256: FStStrNoPop var_8C
  loc_B35259: ImpAdLdRf MemVar_C0F040
  loc_B3525C: NewIfNullPr IFileSystem3
  loc_B3525F: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B35264: FLdI2 var_8E
  loc_B35267: LitI2_Byte &HFF
  loc_B35269: EqI2
  loc_B3526A: FFree1Str var_8C
  loc_B3526D: BranchF loc_B352BF
  loc_B35270: LitI2_Byte 0
  loc_B35272: ImpAdLdI4 MemVar_C0F044
  loc_B35275: LitStr "new_habbo\directmail\welcome.message"
  loc_B35278: ConcatStr
  loc_B35279: FStStrNoPop var_8C
  loc_B3527C: ImpAdLdRf MemVar_C0F040
  loc_B3527F: NewIfNullPr IFileSystem3
  loc_B35282: from_stack_3 = IFileSystem3.IFileSystem.DeleteFile(from_stack_1v, from_stack_2b)
  loc_B35287: FFree1Str var_8C
  loc_B3528A: LitStr "0"
  loc_B3528D: FLdRfVar var_88
  loc_B35290: LitI4 0
  loc_B35295: LitI2_Byte 0
  loc_B35297: LitI4 2
  loc_B3529C: ImpAdLdI4 MemVar_C0F044
  loc_B3529F: LitStr "new_habbo\directmail\count.txt"
  loc_B352A2: ConcatStr
  loc_B352A3: FStStrNoPop var_8C
  loc_B352A6: ImpAdLdRf MemVar_C0F040
  loc_B352A9: NewIfNullPr IFileSystem3
  loc_B352AC: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B352B1: FLdPr var_88
  loc_B352B4: from_stack_2 = Me.Write(from_stack_1v)
  loc_B352B9: FFree1Str var_8C
  loc_B352BC: FFree1Ad var_88
  loc_B352BF: Branch loc_B3547E
  loc_B352C2: FLdRfVar var_8E
  loc_B352C5: FLdPrThis
  loc_B352C6: VCallAd Control_ID_Check10
  loc_B352C9: FStAdFunc var_88
  loc_B352CC: FLdPr var_88
  loc_B352CF:  = Me.Value
  loc_B352D4: FLdI2 var_8E
  loc_B352D7: LitI2_Byte 1
  loc_B352D9: EqI2
  loc_B352DA: FFree1Ad var_88
  loc_B352DD: BranchF loc_B3547E
  loc_B352E0: FLdRfVar var_9C
  loc_B352E3: FLdPrThis
  loc_B352E4: VCallAd Control_ID_Text23
  loc_B352E7: FStAdFunc var_178
  loc_B352EA: FLdPr var_178
  loc_B352ED:  = Me.Text
  loc_B352F2: LitI4 &HD
  loc_B352F7: FLdRfVar var_188
  loc_B352FA: ImpAdCallFPR4  = Chr()
  loc_B352FF: LitVarStr var_C4, "staff$"
  loc_B35304: LitI4 1
  loc_B35309: FLdRfVar var_B4
  loc_B3530C: ImpAdCallFPR4  = Chr()
  loc_B35311: FLdRfVar var_B4
  loc_B35314: ConcatVar var_D4
  loc_B35318: LitVarStr var_E4, "BEI"
  loc_B3531D: ConcatVar var_F4
  loc_B35321: FLdRfVar var_8C
  loc_B35324: FLdPrThis
  loc_B35325: VCallAd Control_ID_Text21
  loc_B35328: FStAdFunc var_88
  loc_B3532B: FLdPr var_88
  loc_B3532E:  = Me.Text
  loc_B35333: FLdZeroAd var_8C
  loc_B35336: CVarStr var_104
  loc_B35339: ConcatVar var_114
  loc_B3533D: LitI4 2
  loc_B35342: FLdRfVar var_124
  loc_B35345: ImpAdCallFPR4  = Chr()
  loc_B3534A: FLdRfVar var_124
  loc_B3534D: ConcatVar var_134
  loc_B35351: FLdRfVar var_94
  loc_B35354: FLdPrThis
  loc_B35355: VCallAd Control_ID_Text22
  loc_B35358: FStAdFunc var_98
  loc_B3535B: FLdPr var_98
  loc_B3535E:  = Me.Text
  loc_B35363: FLdZeroAd var_94
  loc_B35366: CVarStr var_144
  loc_B35369: ConcatVar var_154
  loc_B3536D: LitI4 2
  loc_B35372: FLdRfVar var_164
  loc_B35375: ImpAdCallFPR4  = Chr()
  loc_B3537A: FLdRfVar var_164
  loc_B3537D: ConcatVar var_174
  loc_B35381: LitI4 0
  loc_B35386: LitI4 -1
  loc_B3538B: LitI4 1
  loc_B35390: FLdRfVar var_188
  loc_B35393: CStrVarVal var_A0
  loc_B35397: LitStr vbCrLf
  loc_B3539A: ILdRf var_9C
  loc_B3539D: ImpAdCallI2 Replace(, , , , , )
  loc_B353A2: CVarStr var_198
  loc_B353A5: ConcatVar var_1A8
  loc_B353A9: LitI4 2
  loc_B353AE: FLdRfVar var_1B8
  loc_B353B1: ImpAdCallFPR4  = Chr()
  loc_B353B6: FLdRfVar var_1B8
  loc_B353B9: ConcatVar var_1C8
  loc_B353BD: LitVarStr var_1D8, "H"
  loc_B353C2: ConcatVar var_1E8
  loc_B353C6: LitI4 1
  loc_B353CB: FLdRfVar var_1F8
  loc_B353CE: ImpAdCallFPR4  = Chr()
  loc_B353D3: FLdRfVar var_1F8
  loc_B353D6: ConcatVar var_208
  loc_B353DA: CStrVarVal var_210
  loc_B353DE: FLdRfVar var_20C
  loc_B353E1: LitI4 0
  loc_B353E6: LitI2_Byte &HFF
  loc_B353E8: LitI4 2
  loc_B353ED: ImpAdLdI4 MemVar_C0F044
  loc_B353F0: LitStr "new_habbo\directmail\welcome.message"
  loc_B353F3: ConcatStr
  loc_B353F4: FStStrNoPop var_A4
  loc_B353F7: ImpAdLdRf MemVar_C0F040
  loc_B353FA: NewIfNullPr IFileSystem3
  loc_B353FD: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B35402: FLdPr var_20C
  loc_B35405: from_stack_2 = Me.Write(from_stack_1v)
  loc_B3540A: FFreeStr var_9C = "": var_A0 = "": var_A4 = ""
  loc_B35415: FFreeAd var_88 = "": var_98 = "": var_178 = ""
  loc_B35420: FFreeVar var_B4 = "": var_D4 = "": var_F4 = "": var_104 = "": var_114 = "": var_124 = "": var_134 = "": var_144 = "": var_154 = "": var_164 = "": var_188 = "": var_174 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1E8 = "": var_1F8 = ""
  loc_B35449: LitStr "1"
  loc_B3544C: FLdRfVar var_88
  loc_B3544F: LitI4 0
  loc_B35454: LitI2_Byte &HFF
  loc_B35456: LitI4 2
  loc_B3545B: ImpAdLdI4 MemVar_C0F044
  loc_B3545E: LitStr "new_habbo\directmail\count.txt"
  loc_B35461: ConcatStr
  loc_B35462: FStStrNoPop var_8C
  loc_B35465: ImpAdLdRf MemVar_C0F040
  loc_B35468: NewIfNullPr IFileSystem3
  loc_B3546B: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B35470: FLdPr var_88
  loc_B35473: from_stack_2 = Me.Write(from_stack_1v)
  loc_B35478: FFree1Str var_8C
  loc_B3547B: FFree1Ad var_88
  loc_B3547E: LitI2_Byte &HFF
  loc_B35480: FLdPrThis
  loc_B35481: VCallAd Control_ID_Command6
  loc_B35484: FStAdFunc var_88
  loc_B35487: FLdPr var_88
  loc_B3548A: Me.Enabled = from_stack_1b
  loc_B3548F: FFree1Ad var_88
  loc_B35492: LitI2_Byte &HFF
  loc_B35494: FLdPrThis
  loc_B35495: VCallAd Control_ID_Command5
  loc_B35498: FStAdFunc var_88
  loc_B3549B: FLdPr var_88
  loc_B3549E: Me.Enabled = from_stack_1b
  loc_B354A3: FFree1Ad var_88
  loc_B354A6: ExitProcHresult
End Sub

Private Sub Command5_Click() 'B3FF84
  'Data Table: 549FD0
  loc_B3FA0C: FLdRfVar var_8A
  loc_B3FA0F: ImpAdLdI4 MemVar_C0F044
  loc_B3FA12: LitStr "new_habbo\directmail\welcome.message"
  loc_B3FA15: ConcatStr
  loc_B3FA16: FStStrNoPop var_88
  loc_B3FA19: ImpAdLdRf MemVar_C0F040
  loc_B3FA1C: NewIfNullPr IFileSystem3
  loc_B3FA1F: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B3FA24: FLdI2 var_8A
  loc_B3FA27: LitI2_Byte &HFF
  loc_B3FA29: EqI2
  loc_B3FA2A: FFree1Str var_88
  loc_B3FA2D: BranchF loc_B3FC52
  loc_B3FA30: LitI2_Byte 1
  loc_B3FA32: FLdPrThis
  loc_B3FA33: VCallAd Control_ID_Check10
  loc_B3FA36: FStAdFunc var_90
  loc_B3FA39: FLdPr var_90
  loc_B3FA3C: Me.Value = from_stack_1
  loc_B3FA41: FFree1Ad var_90
  loc_B3FA44: FLdRfVar var_94
  loc_B3FA47: FLdRfVar var_90
  loc_B3FA4A: LitI4 0
  loc_B3FA4F: LitI2_Byte 0
  loc_B3FA51: LitI4 1
  loc_B3FA56: ImpAdLdI4 MemVar_C0F044
  loc_B3FA59: LitStr "new_habbo\directmail\welcome.message"
  loc_B3FA5C: ConcatStr
  loc_B3FA5D: FStStrNoPop var_88
  loc_B3FA60: ImpAdLdRf MemVar_C0F040
  loc_B3FA63: NewIfNullPr IFileSystem3
  loc_B3FA66: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B3FA6B: FLdPr var_90
  loc_B3FA6E:  = Me.ReadAll
  loc_B3FA73: FLdZeroAd var_94
  loc_B3FA76: CVarStr var_B4
  loc_B3FA79: FStVar var_A4
  loc_B3FA7D: FFree1Str var_88
  loc_B3FA80: FFree1Ad var_90
  loc_B3FA83: LitI4 2
  loc_B3FA88: FLdRfVar var_B4
  loc_B3FA8B: ImpAdCallFPR4  = Chr()
  loc_B3FA90: LitVarI2 var_D4, 0
  loc_B3FA95: PopAdLdVar
  loc_B3FA96: LitI4 0
  loc_B3FA9B: LitI4 -1
  loc_B3FAA0: FLdRfVar var_B4
  loc_B3FAA3: FLdRfVar var_A4
  loc_B3FAA6: CStrVarVal var_88
  loc_B3FAAA: FLdRfVar var_C4
  loc_B3FAAD: ImpAdCallFPR4  = Split(, , , )
  loc_B3FAB2: FLdRfVar var_C4
  loc_B3FAB5: VarIndexLdVar
  loc_B3FABB: PopAd
  loc_B3FABD: LitVarI2 var_134, 1
  loc_B3FAC2: PopAdLdVar
  loc_B3FAC3: LitI4 0
  loc_B3FAC8: LitI4 -1
  loc_B3FACD: LitVarStr var_104, "BEI"
  loc_B3FAD2: FStVarCopyObj var_114
  loc_B3FAD5: FLdRfVar var_114
  loc_B3FAD8: FLdRfVar var_F4
  loc_B3FADB: CStrVarVal var_94
  loc_B3FADF: FLdRfVar var_124
  loc_B3FAE2: ImpAdCallFPR4  = Split(, , , )
  loc_B3FAE7: FLdRfVar var_124
  loc_B3FAEA: VarIndexLdVar
  loc_B3FAF0: CStrVarVal var_158
  loc_B3FAF4: FLdPrThis
  loc_B3FAF5: VCallAd Control_ID_Text21
  loc_B3FAF8: FStAdFunc var_90
  loc_B3FAFB: FLdPr var_90
  loc_B3FAFE: Me.Text = from_stack_1
  loc_B3FB03: FFreeStr var_88 = "": var_94 = ""
  loc_B3FB0C: FFree1Ad var_90
  loc_B3FB0F: FFreeVar var_B4 = "": var_C4 = "": var_F4 = "": var_114 = "": var_124 = ""
  loc_B3FB1E: LitI4 2
  loc_B3FB23: FLdRfVar var_B4
  loc_B3FB26: ImpAdCallFPR4  = Chr()
  loc_B3FB2B: LitVarI2 var_D4, 1
  loc_B3FB30: PopAdLdVar
  loc_B3FB31: LitI4 0
  loc_B3FB36: LitI4 -1
  loc_B3FB3B: FLdRfVar var_B4
  loc_B3FB3E: FLdRfVar var_A4
  loc_B3FB41: CStrVarVal var_88
  loc_B3FB45: FLdRfVar var_C4
  loc_B3FB48: ImpAdCallFPR4  = Split(, , , )
  loc_B3FB4D: FLdRfVar var_C4
  loc_B3FB50: VarIndexLdVar
  loc_B3FB56: CStrVarVal var_94
  loc_B3FB5A: FLdPrThis
  loc_B3FB5B: VCallAd Control_ID_Text22
  loc_B3FB5E: FStAdFunc var_90
  loc_B3FB61: FLdPr var_90
  loc_B3FB64: Me.Text = from_stack_1
  loc_B3FB69: FFreeStr var_88 = ""
  loc_B3FB70: FFree1Ad var_90
  loc_B3FB73: FFreeVar var_B4 = "": var_C4 = ""
  loc_B3FB7C: LitI4 2
  loc_B3FB81: FLdRfVar var_B4
  loc_B3FB84: ImpAdCallFPR4  = Chr()
  loc_B3FB89: LitVarI2 var_D4, 2
  loc_B3FB8E: PopAdLdVar
  loc_B3FB8F: LitI4 0
  loc_B3FB94: LitI4 -1
  loc_B3FB99: FLdRfVar var_B4
  loc_B3FB9C: FLdRfVar var_A4
  loc_B3FB9F: CStrVarVal var_88
  loc_B3FBA3: FLdRfVar var_C4
  loc_B3FBA6: ImpAdCallFPR4  = Split(, , , )
  loc_B3FBAB: FLdRfVar var_C4
  loc_B3FBAE: VarIndexLdVar
  loc_B3FBB4: PopAd
  loc_B3FBB6: LitI4 &HD
  loc_B3FBBB: FLdRfVar var_F4
  loc_B3FBBE: ImpAdCallFPR4  = Chr()
  loc_B3FBC3: LitI4 0
  loc_B3FBC8: LitI4 -1
  loc_B3FBCD: LitI4 1
  loc_B3FBD2: LitStr vbCrLf
  loc_B3FBD5: FLdRfVar var_F4
  loc_B3FBD8: CStrVarVal var_158
  loc_B3FBDC: FLdRfVar var_114
  loc_B3FBDF: CStrVarVal var_94
  loc_B3FBE3: ImpAdCallI2 Replace(, , , , , )
  loc_B3FBE8: FStStrNoPop var_15C
  loc_B3FBEB: FLdPrThis
  loc_B3FBEC: VCallAd Control_ID_Text23
  loc_B3FBEF: FStAdFunc var_90
  loc_B3FBF2: FLdPr var_90
  loc_B3FBF5: Me.Text = from_stack_1
  loc_B3FBFA: FFreeStr var_88 = "": var_94 = "": var_158 = ""
  loc_B3FC05: FFree1Ad var_90
  loc_B3FC08: FFreeVar var_B4 = "": var_C4 = "": var_114 = ""
  loc_B3FC13: LitI2_Byte &HFF
  loc_B3FC15: FLdPrThis
  loc_B3FC16: VCallAd Control_ID_Text21
  loc_B3FC19: FStAdFunc var_90
  loc_B3FC1C: FLdPr var_90
  loc_B3FC1F: Me.Enabled = from_stack_1b
  loc_B3FC24: FFree1Ad var_90
  loc_B3FC27: LitI2_Byte &HFF
  loc_B3FC29: FLdPrThis
  loc_B3FC2A: VCallAd Control_ID_Text22
  loc_B3FC2D: FStAdFunc var_90
  loc_B3FC30: FLdPr var_90
  loc_B3FC33: Me.Enabled = from_stack_1b
  loc_B3FC38: FFree1Ad var_90
  loc_B3FC3B: LitI2_Byte &HFF
  loc_B3FC3D: FLdPrThis
  loc_B3FC3E: VCallAd Control_ID_Text23
  loc_B3FC41: FStAdFunc var_90
  loc_B3FC44: FLdPr var_90
  loc_B3FC47: Me.Enabled = from_stack_1b
  loc_B3FC4C: FFree1Ad var_90
  loc_B3FC4F: Branch loc_B3FCA2
  loc_B3FC52: LitI2_Byte 0
  loc_B3FC54: FLdPrThis
  loc_B3FC55: VCallAd Control_ID_Check10
  loc_B3FC58: FStAdFunc var_90
  loc_B3FC5B: FLdPr var_90
  loc_B3FC5E: Me.Value = from_stack_1
  loc_B3FC63: FFree1Ad var_90
  loc_B3FC66: LitI2_Byte 0
  loc_B3FC68: FLdPrThis
  loc_B3FC69: VCallAd Control_ID_Text21
  loc_B3FC6C: FStAdFunc var_90
  loc_B3FC6F: FLdPr var_90
  loc_B3FC72: Me.Enabled = from_stack_1b
  loc_B3FC77: FFree1Ad var_90
  loc_B3FC7A: LitI2_Byte 0
  loc_B3FC7C: FLdPrThis
  loc_B3FC7D: VCallAd Control_ID_Text22
  loc_B3FC80: FStAdFunc var_90
  loc_B3FC83: FLdPr var_90
  loc_B3FC86: Me.Enabled = from_stack_1b
  loc_B3FC8B: FFree1Ad var_90
  loc_B3FC8E: LitI2_Byte 0
  loc_B3FC90: FLdPrThis
  loc_B3FC91: VCallAd Control_ID_Text23
  loc_B3FC94: FStAdFunc var_90
  loc_B3FC97: FLdPr var_90
  loc_B3FC9A: Me.Enabled = from_stack_1b
  loc_B3FC9F: FFree1Ad var_90
  loc_B3FCA2: LitI4 0
  loc_B3FCA7: FStStrCopy var_88
  loc_B3FCAA: FLdRfVar var_88
  loc_B3FCAD: ImpAdLdI4 MemVar_C0F044
  loc_B3FCB0: LitStr "configuration\settings.ini"
  loc_B3FCB3: ConcatStr
  loc_B3FCB4: CVarStr var_C4
  loc_B3FCB7: LitVarStr var_E4, "welcome_message"
  loc_B3FCBC: FStVarCopyObj var_B4
  loc_B3FCBF: FLdRfVar var_B4
  loc_B3FCC2: LitVarStr var_D4, "config"
  loc_B3FCC7: PopAdLdVar
  loc_B3FCC8: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B3FCCD: FStStr var_158
  loc_B3FCD0: LitVarI2 var_134, 0
  loc_B3FCD5: PopAdLdVar
  loc_B3FCD6: LitI4 0
  loc_B3FCDB: LitI4 -1
  loc_B3FCE0: LitVarStr var_104, ","
  loc_B3FCE5: FStVarCopyObj var_F4
  loc_B3FCE8: FLdRfVar var_F4
  loc_B3FCEB: FLdZeroAd var_158
  loc_B3FCEE: FStStrNoPop var_94
  loc_B3FCF1: FLdRfVar var_114
  loc_B3FCF4: ImpAdCallFPR4  = Split(, , , )
  loc_B3FCF9: FLdRfVar var_114
  loc_B3FCFC: VarIndexLdVar
  loc_B3FD02: LitVarStr var_16C, "1"
  loc_B3FD07: HardType
  loc_B3FD08: EqVarBool
  loc_B3FD0A: FFreeStr var_88 = "": var_94 = ""
  loc_B3FD13: FFreeVar var_B4 = "": var_C4 = "": var_F4 = "": var_114 = ""
  loc_B3FD20: BranchF loc_B3FDDC
  loc_B3FD23: LitI4 0
  loc_B3FD28: FStStrCopy var_88
  loc_B3FD2B: FLdRfVar var_88
  loc_B3FD2E: ImpAdLdI4 MemVar_C0F044
  loc_B3FD31: LitStr "configuration\settings.ini"
  loc_B3FD34: ConcatStr
  loc_B3FD35: CVarStr var_C4
  loc_B3FD38: LitVarStr var_E4, "welcome_message"
  loc_B3FD3D: FStVarCopyObj var_B4
  loc_B3FD40: FLdRfVar var_B4
  loc_B3FD43: LitVarStr var_D4, "config"
  loc_B3FD48: PopAdLdVar
  loc_B3FD49: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B3FD4E: FStStr var_15C
  loc_B3FD51: LitVarI2 var_134, 1
  loc_B3FD56: PopAdLdVar
  loc_B3FD57: LitI4 0
  loc_B3FD5C: LitI4 2
  loc_B3FD61: LitVarStr var_104, ","
  loc_B3FD66: FStVarCopyObj var_F4
  loc_B3FD69: FLdRfVar var_F4
  loc_B3FD6C: FLdZeroAd var_15C
  loc_B3FD6F: FStStrNoPop var_94
  loc_B3FD72: FLdRfVar var_114
  loc_B3FD75: ImpAdCallFPR4  = Split(, , , )
  loc_B3FD7A: FLdRfVar var_114
  loc_B3FD7D: VarIndexLdVar
  loc_B3FD83: CStrVarVal var_158
  loc_B3FD87: FLdPrThis
  loc_B3FD88: VCallAd Control_ID_Text7
  loc_B3FD8B: FStAdFunc var_90
  loc_B3FD8E: FLdPr var_90
  loc_B3FD91: Me.Text = from_stack_1
  loc_B3FD96: FFreeStr var_88 = "": var_94 = "": var_158 = ""
  loc_B3FDA1: FFree1Ad var_90
  loc_B3FDA4: FFreeVar var_B4 = "": var_C4 = "": var_F4 = "": var_114 = ""
  loc_B3FDB1: LitI2_Byte &HFF
  loc_B3FDB3: FLdPrThis
  loc_B3FDB4: VCallAd Control_ID_Text7
  loc_B3FDB7: FStAdFunc var_90
  loc_B3FDBA: FLdPr var_90
  loc_B3FDBD: Me.Enabled = from_stack_1b
  loc_B3FDC2: FFree1Ad var_90
  loc_B3FDC5: LitI2_Byte 1
  loc_B3FDC7: FLdPrThis
  loc_B3FDC8: VCallAd Control_ID_Check2
  loc_B3FDCB: FStAdFunc var_90
  loc_B3FDCE: FLdPr var_90
  loc_B3FDD1: Me.Value = from_stack_1
  loc_B3FDD6: FFree1Ad var_90
  loc_B3FDD9: Branch loc_B3FE92
  loc_B3FDDC: LitI4 0
  loc_B3FDE1: FStStrCopy var_88
  loc_B3FDE4: FLdRfVar var_88
  loc_B3FDE7: ImpAdLdI4 MemVar_C0F044
  loc_B3FDEA: LitStr "configuration\settings.ini"
  loc_B3FDED: ConcatStr
  loc_B3FDEE: CVarStr var_C4
  loc_B3FDF1: LitVarStr var_E4, "welcome_message"
  loc_B3FDF6: FStVarCopyObj var_B4
  loc_B3FDF9: FLdRfVar var_B4
  loc_B3FDFC: LitVarStr var_D4, "config"
  loc_B3FE01: PopAdLdVar
  loc_B3FE02: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B3FE07: FStStr var_15C
  loc_B3FE0A: LitVarI2 var_134, 1
  loc_B3FE0F: PopAdLdVar
  loc_B3FE10: LitI4 0
  loc_B3FE15: LitI4 2
  loc_B3FE1A: LitVarStr var_104, ","
  loc_B3FE1F: FStVarCopyObj var_F4
  loc_B3FE22: FLdRfVar var_F4
  loc_B3FE25: FLdZeroAd var_15C
  loc_B3FE28: FStStrNoPop var_94
  loc_B3FE2B: FLdRfVar var_114
  loc_B3FE2E: ImpAdCallFPR4  = Split(, , , )
  loc_B3FE33: FLdRfVar var_114
  loc_B3FE36: VarIndexLdVar
  loc_B3FE3C: CStrVarVal var_158
  loc_B3FE40: FLdPrThis
  loc_B3FE41: VCallAd Control_ID_Text7
  loc_B3FE44: FStAdFunc var_90
  loc_B3FE47: FLdPr var_90
  loc_B3FE4A: Me.Text = from_stack_1
  loc_B3FE4F: FFreeStr var_88 = "": var_94 = "": var_158 = ""
  loc_B3FE5A: FFree1Ad var_90
  loc_B3FE5D: FFreeVar var_B4 = "": var_C4 = "": var_F4 = "": var_114 = ""
  loc_B3FE6A: LitI2_Byte 0
  loc_B3FE6C: FLdPrThis
  loc_B3FE6D: VCallAd Control_ID_Text7
  loc_B3FE70: FStAdFunc var_90
  loc_B3FE73: FLdPr var_90
  loc_B3FE76: Me.Enabled = from_stack_1b
  loc_B3FE7B: FFree1Ad var_90
  loc_B3FE7E: LitI2_Byte 0
  loc_B3FE80: FLdPrThis
  loc_B3FE81: VCallAd Control_ID_Check2
  loc_B3FE84: FStAdFunc var_90
  loc_B3FE87: FLdPr var_90
  loc_B3FE8A: Me.Value = from_stack_1
  loc_B3FE8F: FFree1Ad var_90
  loc_B3FE92: LitI4 0
  loc_B3FE97: FStStrCopy var_88
  loc_B3FE9A: FLdRfVar var_88
  loc_B3FE9D: ImpAdLdRf MemVar_C0F03C
  loc_B3FEA0: CVarRef
  loc_B3FEA5: LitVarStr var_E4, "port"
  loc_B3FEAA: FStVarCopyObj var_B4
  loc_B3FEAD: FLdRfVar var_B4
  loc_B3FEB0: LitVarStr var_D4, "server"
  loc_B3FEB5: PopAdLdVar
  loc_B3FEB6: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B3FEBB: FStStrNoPop var_94
  loc_B3FEBE: FLdPrThis
  loc_B3FEBF: VCallAd Control_ID_Text6
  loc_B3FEC2: FStAdFunc var_90
  loc_B3FEC5: FLdPr var_90
  loc_B3FEC8: Me.Text = from_stack_1
  loc_B3FECD: FFreeStr var_88 = ""
  loc_B3FED4: FFree1Ad var_90
  loc_B3FED7: FFree1Var var_B4 = ""
  loc_B3FEDA: LitI4 0
  loc_B3FEDF: FStStrCopy var_88
  loc_B3FEE2: FLdRfVar var_88
  loc_B3FEE5: ImpAdLdI4 MemVar_C0F044
  loc_B3FEE8: LitStr "configuration\settings.ini"
  loc_B3FEEB: ConcatStr
  loc_B3FEEC: CVarStr var_C4
  loc_B3FEEF: LitVarStr var_E4, "bobba_filter"
  loc_B3FEF4: FStVarCopyObj var_B4
  loc_B3FEF7: FLdRfVar var_B4
  loc_B3FEFA: LitVarStr var_D4, "config"
  loc_B3FEFF: PopAdLdVar
  loc_B3FF00: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B3FF05: FStStrNoPop var_94
  loc_B3FF08: ImpAdCallFPR4 push push Val()
  loc_B3FF0D: CI2R8
  loc_B3FF0E: FLdPrThis
  loc_B3FF0F: VCallAd Control_ID_Check1
  loc_B3FF12: FStAdFunc var_90
  loc_B3FF15: FLdPr var_90
  loc_B3FF18: Me.Value = from_stack_1
  loc_B3FF1D: FFreeStr var_88 = ""
  loc_B3FF24: FFree1Ad var_90
  loc_B3FF27: FFreeVar var_B4 = ""
  loc_B3FF2E: LitI4 0
  loc_B3FF33: FStStrCopy var_88
  loc_B3FF36: FLdRfVar var_88
  loc_B3FF39: ImpAdLdI4 MemVar_C0F044
  loc_B3FF3C: LitStr "configuration\settings.ini"
  loc_B3FF3F: ConcatStr
  loc_B3FF40: CVarStr var_C4
  loc_B3FF43: LitVarStr var_E4, "console"
  loc_B3FF48: FStVarCopyObj var_B4
  loc_B3FF4B: FLdRfVar var_B4
  loc_B3FF4E: LitVarStr var_D4, "config"
  loc_B3FF53: PopAdLdVar
  loc_B3FF54: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B3FF59: FStStrNoPop var_94
  loc_B3FF5C: ImpAdCallFPR4 push push Val()
  loc_B3FF61: CI2R8
  loc_B3FF62: FLdPrThis
  loc_B3FF63: VCallAd Control_ID_Check3
  loc_B3FF66: FStAdFunc var_90
  loc_B3FF69: FLdPr var_90
  loc_B3FF6C: Me.Value = from_stack_1
  loc_B3FF71: FFreeStr var_88 = ""
  loc_B3FF78: FFree1Ad var_90
  loc_B3FF7B: FFreeVar var_B4 = ""
  loc_B3FF82: ExitProcHresult
End Sub

Private Sub Command7_Click() 'B488BC
  'Data Table: 549FD0
  loc_B4818C: LitI2_Byte 0
  loc_B4818E: FLdPrThis
  loc_B4818F: VCallAd Control_ID_Command7
  loc_B48192: FStAdFunc var_88
  loc_B48195: FLdPr var_88
  loc_B48198: Me.Enabled = from_stack_1b
  loc_B4819D: FFree1Ad var_88
  loc_B481A0: FLdRfVar var_8C
  loc_B481A3: FLdPrThis
  loc_B481A4: VCallAd Control_ID_Combo1
  loc_B481A7: FStAdFunc var_88
  loc_B481AA: FLdPr var_88
  loc_B481AD:  = Me.Text
  loc_B481B2: LitI4 1
  loc_B481B7: FLdZeroAd var_8C
  loc_B481BA: CVarStr var_9C
  loc_B481BD: FLdRfVar var_AC
  loc_B481C0: ImpAdCallFPR4  = Left(, )
  loc_B481C5: FLdRfVar var_AC
  loc_B481C8: LitVarStr var_BC, " "
  loc_B481CD: HardType
  loc_B481CE: NeVarBool
  loc_B481D0: FFree1Ad var_88
  loc_B481D3: FFreeVar var_9C = ""
  loc_B481DA: BranchF loc_B48869
  loc_B481DD: FLdRfVar var_E2
  loc_B481E0: ImpAdLdI4 MemVar_C0F044
  loc_B481E3: LitStr "habbos\"
  loc_B481E6: ConcatStr
  loc_B481E7: CVarStr var_CC
  loc_B481EA: FLdRfVar var_8C
  loc_B481ED: FLdPrThis
  loc_B481EE: VCallAd Control_ID_Combo1
  loc_B481F1: FStAdFunc var_88
  loc_B481F4: FLdPr var_88
  loc_B481F7:  = Me.Text
  loc_B481FC: FLdZeroAd var_8C
  loc_B481FF: CVarStr var_9C
  loc_B48202: FLdRfVar var_AC
  loc_B48205: ImpAdCallFPR4  = LCase()
  loc_B4820A: FLdRfVar var_AC
  loc_B4820D: ConcatVar var_DC
  loc_B48211: CStrVarVal var_E0
  loc_B48215: ImpAdLdRf MemVar_C0F040
  loc_B48218: NewIfNullPr IFileSystem3
  loc_B4821B: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B48220: FLdI2 var_E2
  loc_B48223: LitI2_Byte &HFF
  loc_B48225: EqI2
  loc_B48226: FFree1Str var_E0
  loc_B48229: FFree1Ad var_88
  loc_B4822C: FFreeVar var_9C = "": var_CC = "": var_AC = ""
  loc_B48237: BranchF loc_B48829
  loc_B4823A: FLdRfVar var_8C
  loc_B4823D: FLdPrThis
  loc_B4823E: VCallAd Control_ID_Combo1
  loc_B48241: FStAdFunc var_88
  loc_B48244: FLdPr var_88
  loc_B48247:  = Me.Text
  loc_B4824C: FLdZeroAd var_8C
  loc_B4824F: CVarStr var_9C
  loc_B48252: FLdRfVar var_AC
  loc_B48255: ImpAdCallFPR4  = LCase()
  loc_B4825A: FLdRfVar var_FC
  loc_B4825D: FLdRfVar var_F8
  loc_B48260: LitI4 0
  loc_B48265: LitI2_Byte 0
  loc_B48267: LitI4 1
  loc_B4826C: ImpAdLdI4 MemVar_C0F044
  loc_B4826F: LitStr "habbos\"
  loc_B48272: ConcatStr
  loc_B48273: CVarStr var_CC
  loc_B48276: FLdRfVar var_AC
  loc_B48279: ConcatVar var_DC
  loc_B4827D: LitVarStr var_BC, "\name.txt"
  loc_B48282: ConcatVar var_F4
  loc_B48286: CStrVarVal var_E0
  loc_B4828A: ImpAdLdRf MemVar_C0F040
  loc_B4828D: NewIfNullPr IFileSystem3
  loc_B48290: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B48295: FLdPr var_F8
  loc_B48298:  = Me.ReadAll
  loc_B4829D: ILdRf var_FC
  loc_B482A0: FLdPrThis
  loc_B482A1: VCallAd Control_ID_Text8
  loc_B482A4: FStAdFunc var_100
  loc_B482A7: FLdPr var_100
  loc_B482AA: Me.Text = from_stack_1
  loc_B482AF: FFreeStr var_E0 = ""
  loc_B482B6: FFreeAd var_88 = "": var_F8 = ""
  loc_B482BF: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B482CC: FLdRfVar var_8C
  loc_B482CF: FLdPrThis
  loc_B482D0: VCallAd Control_ID_Combo1
  loc_B482D3: FStAdFunc var_88
  loc_B482D6: FLdPr var_88
  loc_B482D9:  = Me.Text
  loc_B482DE: FLdZeroAd var_8C
  loc_B482E1: CVarStr var_9C
  loc_B482E4: FLdRfVar var_AC
  loc_B482E7: ImpAdCallFPR4  = LCase()
  loc_B482EC: FLdRfVar var_FC
  loc_B482EF: FLdRfVar var_F8
  loc_B482F2: LitI4 0
  loc_B482F7: LitI2_Byte 0
  loc_B482F9: LitI4 1
  loc_B482FE: ImpAdLdI4 MemVar_C0F044
  loc_B48301: LitStr "habbos\"
  loc_B48304: ConcatStr
  loc_B48305: CVarStr var_CC
  loc_B48308: FLdRfVar var_AC
  loc_B4830B: ConcatVar var_DC
  loc_B4830F: LitVarStr var_BC, "\pass.txt"
  loc_B48314: ConcatVar var_F4
  loc_B48318: CStrVarVal var_E0
  loc_B4831C: ImpAdLdRf MemVar_C0F040
  loc_B4831F: NewIfNullPr IFileSystem3
  loc_B48322: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B48327: FLdPr var_F8
  loc_B4832A:  = Me.ReadAll
  loc_B4832F: ILdRf var_FC
  loc_B48332: FLdPrThis
  loc_B48333: VCallAd Control_ID_Text9
  loc_B48336: FStAdFunc var_100
  loc_B48339: FLdPr var_100
  loc_B4833C: Me.Text = from_stack_1
  loc_B48341: FFreeStr var_E0 = ""
  loc_B48348: FFreeAd var_88 = "": var_F8 = ""
  loc_B48351: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B4835E: FLdRfVar var_8C
  loc_B48361: FLdPrThis
  loc_B48362: VCallAd Control_ID_Combo1
  loc_B48365: FStAdFunc var_88
  loc_B48368: FLdPr var_88
  loc_B4836B:  = Me.Text
  loc_B48370: FLdZeroAd var_8C
  loc_B48373: CVarStr var_9C
  loc_B48376: FLdRfVar var_AC
  loc_B48379: ImpAdCallFPR4  = LCase()
  loc_B4837E: FLdRfVar var_FC
  loc_B48381: FLdRfVar var_F8
  loc_B48384: LitI4 0
  loc_B48389: LitI2_Byte 0
  loc_B4838B: LitI4 1
  loc_B48390: ImpAdLdI4 MemVar_C0F044
  loc_B48393: LitStr "habbos\"
  loc_B48396: ConcatStr
  loc_B48397: CVarStr var_CC
  loc_B4839A: FLdRfVar var_AC
  loc_B4839D: ConcatVar var_DC
  loc_B483A1: LitVarStr var_BC, "\mission.txt"
  loc_B483A6: ConcatVar var_F4
  loc_B483AA: CStrVarVal var_E0
  loc_B483AE: ImpAdLdRf MemVar_C0F040
  loc_B483B1: NewIfNullPr IFileSystem3
  loc_B483B4: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B483B9: FLdPr var_F8
  loc_B483BC:  = Me.ReadAll
  loc_B483C1: ILdRf var_FC
  loc_B483C4: FLdPrThis
  loc_B483C5: VCallAd Control_ID_Text10
  loc_B483C8: FStAdFunc var_100
  loc_B483CB: FLdPr var_100
  loc_B483CE: Me.Text = from_stack_1
  loc_B483D3: FFreeStr var_E0 = ""
  loc_B483DA: FFreeAd var_88 = "": var_F8 = ""
  loc_B483E3: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B483F0: FLdRfVar var_8C
  loc_B483F3: FLdPrThis
  loc_B483F4: VCallAd Control_ID_Combo1
  loc_B483F7: FStAdFunc var_88
  loc_B483FA: FLdPr var_88
  loc_B483FD:  = Me.Text
  loc_B48402: FLdZeroAd var_8C
  loc_B48405: CVarStr var_9C
  loc_B48408: FLdRfVar var_AC
  loc_B4840B: ImpAdCallFPR4  = LCase()
  loc_B48410: FLdRfVar var_FC
  loc_B48413: FLdRfVar var_F8
  loc_B48416: LitI4 0
  loc_B4841B: LitI2_Byte 0
  loc_B4841D: LitI4 1
  loc_B48422: ImpAdLdI4 MemVar_C0F044
  loc_B48425: LitStr "habbos\"
  loc_B48428: ConcatStr
  loc_B48429: CVarStr var_CC
  loc_B4842C: FLdRfVar var_AC
  loc_B4842F: ConcatVar var_DC
  loc_B48433: LitVarStr var_BC, "\email.txt"
  loc_B48438: ConcatVar var_F4
  loc_B4843C: CStrVarVal var_E0
  loc_B48440: ImpAdLdRf MemVar_C0F040
  loc_B48443: NewIfNullPr IFileSystem3
  loc_B48446: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4844B: FLdPr var_F8
  loc_B4844E:  = Me.ReadAll
  loc_B48453: ILdRf var_FC
  loc_B48456: FLdPrThis
  loc_B48457: VCallAd Control_ID_Text25
  loc_B4845A: FStAdFunc var_100
  loc_B4845D: FLdPr var_100
  loc_B48460: Me.Text = from_stack_1
  loc_B48465: FFreeStr var_E0 = ""
  loc_B4846C: FFreeAd var_88 = "": var_F8 = ""
  loc_B48475: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B48482: FLdRfVar var_8C
  loc_B48485: FLdPrThis
  loc_B48486: VCallAd Control_ID_Combo1
  loc_B48489: FStAdFunc var_88
  loc_B4848C: FLdPr var_88
  loc_B4848F:  = Me.Text
  loc_B48494: FLdZeroAd var_8C
  loc_B48497: CVarStr var_9C
  loc_B4849A: FLdRfVar var_AC
  loc_B4849D: ImpAdCallFPR4  = LCase()
  loc_B484A2: FLdRfVar var_FC
  loc_B484A5: FLdRfVar var_F8
  loc_B484A8: LitI4 0
  loc_B484AD: LitI2_Byte 0
  loc_B484AF: LitI4 1
  loc_B484B4: ImpAdLdI4 MemVar_C0F044
  loc_B484B7: LitStr "habbos\"
  loc_B484BA: ConcatStr
  loc_B484BB: CVarStr var_CC
  loc_B484BE: FLdRfVar var_AC
  loc_B484C1: ConcatVar var_DC
  loc_B484C5: LitVarStr var_BC, "\birth.txt"
  loc_B484CA: ConcatVar var_F4
  loc_B484CE: CStrVarVal var_E0
  loc_B484D2: ImpAdLdRf MemVar_C0F040
  loc_B484D5: NewIfNullPr IFileSystem3
  loc_B484D8: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B484DD: FLdPr var_F8
  loc_B484E0:  = Me.ReadAll
  loc_B484E5: ILdRf var_FC
  loc_B484E8: FLdPrThis
  loc_B484E9: VCallAd Control_ID_Text26
  loc_B484EC: FStAdFunc var_100
  loc_B484EF: FLdPr var_100
  loc_B484F2: Me.Text = from_stack_1
  loc_B484F7: FFreeStr var_E0 = ""
  loc_B484FE: FFreeAd var_88 = "": var_F8 = ""
  loc_B48507: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B48514: FLdRfVar var_8C
  loc_B48517: FLdPrThis
  loc_B48518: VCallAd Control_ID_Combo1
  loc_B4851B: FStAdFunc var_88
  loc_B4851E: FLdPr var_88
  loc_B48521:  = Me.Text
  loc_B48526: FLdZeroAd var_8C
  loc_B48529: CVarStr var_9C
  loc_B4852C: FLdRfVar var_AC
  loc_B4852F: ImpAdCallFPR4  = LCase()
  loc_B48534: FLdRfVar var_FC
  loc_B48537: FLdRfVar var_F8
  loc_B4853A: LitI4 0
  loc_B4853F: LitI2_Byte 0
  loc_B48541: LitI4 1
  loc_B48546: ImpAdLdI4 MemVar_C0F044
  loc_B48549: LitStr "habbos\"
  loc_B4854C: ConcatStr
  loc_B4854D: CVarStr var_CC
  loc_B48550: FLdRfVar var_AC
  loc_B48553: ConcatVar var_DC
  loc_B48557: LitVarStr var_BC, "\badges.txt"
  loc_B4855C: ConcatVar var_F4
  loc_B48560: CStrVarVal var_E0
  loc_B48564: ImpAdLdRf MemVar_C0F040
  loc_B48567: NewIfNullPr IFileSystem3
  loc_B4856A: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4856F: FLdPr var_F8
  loc_B48572:  = Me.ReadAll
  loc_B48577: ILdRf var_FC
  loc_B4857A: FLdPrThis
  loc_B4857B: VCallAd Control_ID_Text27
  loc_B4857E: FStAdFunc var_100
  loc_B48581: FLdPr var_100
  loc_B48584: Me.Text = from_stack_1
  loc_B48589: FFreeStr var_E0 = ""
  loc_B48590: FFreeAd var_88 = "": var_F8 = ""
  loc_B48599: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B485A6: FLdPrThis
  loc_B485A7: VCallAd Control_ID_Combo2
  loc_B485AA: FStAdFunc var_88
  loc_B485AD: FLdPr var_88
  loc_B485B0: Me.Clear
  loc_B485B5: FFree1Ad var_88
  loc_B485B8: LitVar_Missing var_BC
  loc_B485BB: PopAdLdVar
  loc_B485BC: LitStr "habbo"
  loc_B485BF: FLdPrThis
  loc_B485C0: VCallAd Control_ID_Combo2
  loc_B485C3: FStAdFunc var_88
  loc_B485C6: FLdPr var_88
  loc_B485C9: Me.AddItem from_stack_1, from_stack_2
  loc_B485CE: FFree1Ad var_88
  loc_B485D1: LitVar_Missing var_BC
  loc_B485D4: PopAdLdVar
  loc_B485D5: LitStr "habbox"
  loc_B485D8: FLdPrThis
  loc_B485D9: VCallAd Control_ID_Combo2
  loc_B485DC: FStAdFunc var_88
  loc_B485DF: FLdPr var_88
  loc_B485E2: Me.AddItem from_stack_1, from_stack_2
  loc_B485E7: FFree1Ad var_88
  loc_B485EA: LitVar_Missing var_BC
  loc_B485ED: PopAdLdVar
  loc_B485EE: LitStr "silver"
  loc_B485F1: FLdPrThis
  loc_B485F2: VCallAd Control_ID_Combo2
  loc_B485F5: FStAdFunc var_88
  loc_B485F8: FLdPr var_88
  loc_B485FB: Me.AddItem from_stack_1, from_stack_2
  loc_B48600: FFree1Ad var_88
  loc_B48603: LitVar_Missing var_BC
  loc_B48606: PopAdLdVar
  loc_B48607: LitStr "gold"
  loc_B4860A: FLdPrThis
  loc_B4860B: VCallAd Control_ID_Combo2
  loc_B4860E: FStAdFunc var_88
  loc_B48611: FLdPr var_88
  loc_B48614: Me.AddItem from_stack_1, from_stack_2
  loc_B48619: FFree1Ad var_88
  loc_B4861C: LitVar_Missing var_BC
  loc_B4861F: PopAdLdVar
  loc_B48620: LitStr "moderator"
  loc_B48623: FLdPrThis
  loc_B48624: VCallAd Control_ID_Combo2
  loc_B48627: FStAdFunc var_88
  loc_B4862A: FLdPr var_88
  loc_B4862D: Me.AddItem from_stack_1, from_stack_2
  loc_B48632: FFree1Ad var_88
  loc_B48635: LitVar_Missing var_BC
  loc_B48638: PopAdLdVar
  loc_B48639: LitStr "admin"
  loc_B4863C: FLdPrThis
  loc_B4863D: VCallAd Control_ID_Combo2
  loc_B48640: FStAdFunc var_88
  loc_B48643: FLdPr var_88
  loc_B48646: Me.AddItem from_stack_1, from_stack_2
  loc_B4864B: FFree1Ad var_88
  loc_B4864E: FLdRfVar var_8C
  loc_B48651: FLdPrThis
  loc_B48652: VCallAd Control_ID_Combo1
  loc_B48655: FStAdFunc var_88
  loc_B48658: FLdPr var_88
  loc_B4865B:  = Me.Text
  loc_B48660: FLdZeroAd var_8C
  loc_B48663: CVarStr var_9C
  loc_B48666: FLdRfVar var_AC
  loc_B48669: ImpAdCallFPR4  = LCase()
  loc_B4866E: FLdRfVar var_FC
  loc_B48671: FLdRfVar var_F8
  loc_B48674: LitI4 0
  loc_B48679: LitI2_Byte 0
  loc_B4867B: LitI4 1
  loc_B48680: ImpAdLdI4 MemVar_C0F044
  loc_B48683: LitStr "habbos\"
  loc_B48686: ConcatStr
  loc_B48687: CVarStr var_CC
  loc_B4868A: FLdRfVar var_AC
  loc_B4868D: ConcatVar var_DC
  loc_B48691: LitVarStr var_BC, "\rank.txt"
  loc_B48696: ConcatVar var_F4
  loc_B4869A: CStrVarVal var_E0
  loc_B4869E: ImpAdLdRf MemVar_C0F040
  loc_B486A1: NewIfNullPr IFileSystem3
  loc_B486A4: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B486A9: FLdPr var_F8
  loc_B486AC:  = Me.ReadAll
  loc_B486B1: ILdRf var_FC
  loc_B486B4: FLdPrThis
  loc_B486B5: VCallAd Control_ID_Combo2
  loc_B486B8: FStAdFunc var_100
  loc_B486BB: FLdPr var_100
  loc_B486BE: Me.Text = from_stack_1
  loc_B486C3: FFreeStr var_E0 = ""
  loc_B486CA: FFreeAd var_88 = "": var_F8 = ""
  loc_B486D3: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B486E0: FLdRfVar var_8C
  loc_B486E3: FLdPrThis
  loc_B486E4: VCallAd Control_ID_Combo1
  loc_B486E7: FStAdFunc var_88
  loc_B486EA: FLdPr var_88
  loc_B486ED:  = Me.Text
  loc_B486F2: FLdZeroAd var_8C
  loc_B486F5: CVarStr var_9C
  loc_B486F8: FLdRfVar var_AC
  loc_B486FB: ImpAdCallFPR4  = LCase()
  loc_B48700: FLdRfVar var_FC
  loc_B48703: FLdRfVar var_F8
  loc_B48706: LitI4 0
  loc_B4870B: LitI2_Byte 0
  loc_B4870D: LitI4 1
  loc_B48712: ImpAdLdI4 MemVar_C0F044
  loc_B48715: LitStr "habbos\"
  loc_B48718: ConcatStr
  loc_B48719: CVarStr var_CC
  loc_B4871C: FLdRfVar var_AC
  loc_B4871F: ConcatVar var_DC
  loc_B48723: LitVarStr var_BC, "\credits.txt"
  loc_B48728: ConcatVar var_F4
  loc_B4872C: CStrVarVal var_E0
  loc_B48730: ImpAdLdRf MemVar_C0F040
  loc_B48733: NewIfNullPr IFileSystem3
  loc_B48736: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4873B: FLdPr var_F8
  loc_B4873E:  = Me.ReadAll
  loc_B48743: ILdRf var_FC
  loc_B48746: FLdPrThis
  loc_B48747: VCallAd Control_ID_Text11
  loc_B4874A: FStAdFunc var_100
  loc_B4874D: FLdPr var_100
  loc_B48750: Me.Text = from_stack_1
  loc_B48755: FFreeStr var_E0 = ""
  loc_B4875C: FFreeAd var_88 = "": var_F8 = ""
  loc_B48765: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B48772: LitI2_Byte &HFF
  loc_B48774: FLdPrThis
  loc_B48775: VCallAd Control_ID_Text9
  loc_B48778: FStAdFunc var_88
  loc_B4877B: FLdPr var_88
  loc_B4877E: Me.Enabled = from_stack_1b
  loc_B48783: FFree1Ad var_88
  loc_B48786: LitI2_Byte &HFF
  loc_B48788: FLdPrThis
  loc_B48789: VCallAd Control_ID_Text10
  loc_B4878C: FStAdFunc var_88
  loc_B4878F: FLdPr var_88
  loc_B48792: Me.Enabled = from_stack_1b
  loc_B48797: FFree1Ad var_88
  loc_B4879A: LitI2_Byte &HFF
  loc_B4879C: FLdPrThis
  loc_B4879D: VCallAd Control_ID_Combo2
  loc_B487A0: FStAdFunc var_88
  loc_B487A3: FLdPr var_88
  loc_B487A6: Me.Enabled = from_stack_1b
  loc_B487AB: FFree1Ad var_88
  loc_B487AE: LitI2_Byte &HFF
  loc_B487B0: FLdPrThis
  loc_B487B1: VCallAd Control_ID_Text11
  loc_B487B4: FStAdFunc var_88
  loc_B487B7: FLdPr var_88
  loc_B487BA: Me.Enabled = from_stack_1b
  loc_B487BF: FFree1Ad var_88
  loc_B487C2: LitI2_Byte &HFF
  loc_B487C4: FLdPrThis
  loc_B487C5: VCallAd Control_ID_Text25
  loc_B487C8: FStAdFunc var_88
  loc_B487CB: FLdPr var_88
  loc_B487CE: Me.Enabled = from_stack_1b
  loc_B487D3: FFree1Ad var_88
  loc_B487D6: LitI2_Byte &HFF
  loc_B487D8: FLdPrThis
  loc_B487D9: VCallAd Control_ID_Text26
  loc_B487DC: FStAdFunc var_88
  loc_B487DF: FLdPr var_88
  loc_B487E2: Me.Enabled = from_stack_1b
  loc_B487E7: FFree1Ad var_88
  loc_B487EA: LitI2_Byte &HFF
  loc_B487EC: FLdPrThis
  loc_B487ED: VCallAd Control_ID_Text27
  loc_B487F0: FStAdFunc var_88
  loc_B487F3: FLdPr var_88
  loc_B487F6: Me.Enabled = from_stack_1b
  loc_B487FB: FFree1Ad var_88
  loc_B487FE: LitI2_Byte &HFF
  loc_B48800: FLdPrThis
  loc_B48801: VCallAd Control_ID_Command8
  loc_B48804: FStAdFunc var_88
  loc_B48807: FLdPr var_88
  loc_B4880A: Me.Enabled = from_stack_1b
  loc_B4880F: FFree1Ad var_88
  loc_B48812: LitI2_Byte &HFF
  loc_B48814: FLdPrThis
  loc_B48815: VCallAd Control_ID_Command9
  loc_B48818: FStAdFunc var_88
  loc_B4881B: FLdPr var_88
  loc_B4881E: Me.Enabled = from_stack_1b
  loc_B48823: FFree1Ad var_88
  loc_B48826: Branch loc_B48866
  loc_B48829: LitVarStr var_BC, "user_doesnt_exists"
  loc_B4882E: PopAdLdVar
  loc_B4882F: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B48834: FStStr var_8C
  loc_B48837: LitVar_Missing var_DC
  loc_B4883A: LitVar_Missing var_CC
  loc_B4883D: LitVarStr var_110, "Server"
  loc_B48842: FStVarCopyObj var_AC
  loc_B48845: FLdRfVar var_AC
  loc_B48848: LitI4 &H10
  loc_B4884D: FLdZeroAd var_8C
  loc_B48850: CVarStr var_9C
  loc_B48853: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B48858: FFree1Str var_8C
  loc_B4885B: FFreeVar var_9C = "": var_AC = "": var_CC = ""
  loc_B48866: Branch loc_B488A6
  loc_B48869: LitVarStr var_BC, "name_invalid"
  loc_B4886E: PopAdLdVar
  loc_B4886F: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B48874: FStStr var_8C
  loc_B48877: LitVar_Missing var_DC
  loc_B4887A: LitVar_Missing var_CC
  loc_B4887D: LitVarStr var_110, "Server"
  loc_B48882: FStVarCopyObj var_AC
  loc_B48885: FLdRfVar var_AC
  loc_B48888: LitI4 &H10
  loc_B4888D: FLdZeroAd var_8C
  loc_B48890: CVarStr var_9C
  loc_B48893: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B48898: FFree1Str var_8C
  loc_B4889B: FFreeVar var_9C = "": var_AC = "": var_CC = ""
  loc_B488A6: LitI2_Byte &HFF
  loc_B488A8: FLdPrThis
  loc_B488A9: VCallAd Control_ID_Command7
  loc_B488AC: FStAdFunc var_88
  loc_B488AF: FLdPr var_88
  loc_B488B2: Me.Enabled = from_stack_1b
  loc_B488B7: FFree1Ad var_88
  loc_B488BA: ExitProcHresult
End Sub

Private Sub hcpresent_Change(Index As Integer) 'B1AADC
  'Data Table: 549FD0
  loc_B1AAB0: LitI4 -2147483643
  loc_B1AAB5: FLdRfVar var_8C
  loc_B1AAB8: ILdI2 Index
  loc_B1AABB: FLdPrThis
  loc_B1AABC: VCallAd Control_ID_hcpresent
  loc_B1AABF: FStAdFunc var_88
  loc_B1AAC2: FLdPr var_88
  loc_B1AAC5: Set from_stack_2 = Me(from_stack_1)
  loc_B1AACA: FLdPr var_8C
  loc_B1AACD: Me.BackColor = from_stack_1
  loc_B1AAD2: FFreeAd var_88 = ""
  loc_B1AAD9: ExitProcHresult
  loc_B1AADA: CStr2Ansi
End Sub

Private Sub Picture2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1CC7C
  'Data Table: 549FD0
  loc_B1CC1C: ILdI2 Button
  loc_B1CC1F: LitI2_Byte 1
  loc_B1CC21: EqI2
  loc_B1CC22: BranchF loc_B1CC65
  loc_B1CC25: ImpAdCallI2 ReleaseCapture()
  loc_B1CC2A: FStR4 var_8C
  loc_B1CC2D: SetLastSystemError
  loc_B1CC2E: ILdRf var_8C
  loc_B1CC31: CR8I4
  loc_B1CC32: IStFPR4 X
  loc_B1CC35: FLdRfVar var_8C
  loc_B1CC38: FLdPrThis
  loc_B1CC39:  = Me.hWnd
  loc_B1CC3E: LitI4 0
  loc_B1CC43: PopTmpLdAdStr var_90
  loc_B1CC46: LitI4 2
  loc_B1CC4B: LitI4 &HA1
  loc_B1CC50: ILdRf var_8C
  loc_B1CC53: ImpAdCallI2 SendMessage(, , , )
  loc_B1CC58: FStR4 var_94
  loc_B1CC5B: SetLastSystemError
  loc_B1CC5C: ILdRf var_94
  loc_B1CC5F: FStR4 var_88
  loc_B1CC62: Branch loc_B1CC7A
  loc_B1CC65: ILdRf Me
  loc_B1CC68: FStAdNoPop
  loc_B1CC6C: ImpAdLdRf MemVar_C10514
  loc_B1CC6F: NewIfNullPr Global
  loc_B1CC72: Global.Unload from_stack_1
  loc_B1CC77: FFree1Ad var_98
  loc_B1CC7A: ExitProcHresult
End Sub

Private Sub SSTab1_DblClick() 'B1FECC
  'Data Table: 549FD0
  loc_B1FE30: FLdRfVar var_9A
  loc_B1FE33: ImpAdLdI4 MemVar_C0F044
  loc_B1FE36: LitStr "ranks\"
  loc_B1FE39: ConcatStr
  loc_B1FE3A: FStStrNoPop var_90
  loc_B1FE3D: FLdRfVar var_8C
  loc_B1FE40: FLdPrThis
  loc_B1FE41: VCallAd Control_ID_Combo4
  loc_B1FE44: FStAdFunc var_88
  loc_B1FE47: FLdPr var_88
  loc_B1FE4A:  = Me.Text
  loc_B1FE4F: ILdRf var_8C
  loc_B1FE52: ConcatStr
  loc_B1FE53: FStStrNoPop var_94
  loc_B1FE56: LitStr ".ini"
  loc_B1FE59: ConcatStr
  loc_B1FE5A: FStStrNoPop var_98
  loc_B1FE5D: ImpAdLdRf MemVar_C0F040
  loc_B1FE60: NewIfNullPr IFileSystem3
  loc_B1FE63: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B1FE68: FLdI2 var_9A
  loc_B1FE6B: LitI2_Byte &HFF
  loc_B1FE6D: EqI2
  loc_B1FE6E: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_B1FE79: FFree1Ad var_88
  loc_B1FE7C: BranchF loc_B1FE8D
  loc_B1FE7F: FLdRfVar var_AC
  loc_B1FE82: Call Proc_31_31_B5AF9C()
  loc_B1FE87: FFree1Var var_AC = ""
  loc_B1FE8A: Branch loc_B1FECA
  loc_B1FE8D: LitVarStr var_BC, "rank_not_found"
  loc_B1FE92: PopAdLdVar
  loc_B1FE93: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B1FE98: FStStr var_8C
  loc_B1FE9B: LitVar_Missing var_11C
  loc_B1FE9E: LitVar_Missing var_FC
  loc_B1FEA1: LitVarStr var_CC, "Server"
  loc_B1FEA6: FStVarCopyObj var_DC
  loc_B1FEA9: FLdRfVar var_DC
  loc_B1FEAC: LitI4 &H10
  loc_B1FEB1: FLdZeroAd var_8C
  loc_B1FEB4: CVarStr var_AC
  loc_B1FEB7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B1FEBC: FFree1Str var_8C
  loc_B1FEBF: FFreeVar var_AC = "": var_DC = "": var_FC = ""
  loc_B1FECA: ExitProcHresult
End Sub

Private Sub Image1_Click() 'B18640
  'Data Table: 549FD0
  loc_B18634: FLdPr Me
  loc_B18637: Me.Hide
  loc_B1863C: ExitProcHresult
End Sub

Private Sub Form_Load() 'B7A7EC
  'Data Table: 549FD0
  loc_B78DE4: LitI4 0
  loc_B78DE9: FStStrCopy var_C8
  loc_B78DEC: FLdRfVar var_C8
  loc_B78DEF: ImpAdLdRf MemVar_C0F03C
  loc_B78DF2: CVarRef
  loc_B78DF7: LitVarStr var_A4, "foreground"
  loc_B78DFC: FStVarCopyObj var_B4
  loc_B78DFF: FLdRfVar var_B4
  loc_B78E02: LitVarStr var_94, "server"
  loc_B78E07: PopAdLdVar
  loc_B78E08: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B78E0D: FStStrNoPop var_CC
  loc_B78E10: LitStr "Y"
  loc_B78E13: EqStr
  loc_B78E15: FFreeStr var_C8 = ""
  loc_B78E1C: FFree1Var var_B4 = ""
  loc_B78E1F: BranchF loc_B78E57
  loc_B78E22: FLdRfVar var_D0
  loc_B78E25: FLdPr Me
  loc_B78E28:  = Me.hWnd
  loc_B78E2D: LitI4 3
  loc_B78E32: LitI4 0
  loc_B78E37: LitI4 0
  loc_B78E3C: LitI4 0
  loc_B78E41: LitI4 0
  loc_B78E46: LitI4 -1
  loc_B78E4B: ILdRf var_D0
  loc_B78E4E: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B78E53: SetLastSystemError
  loc_B78E54: Branch loc_B78E89
  loc_B78E57: FLdRfVar var_D0
  loc_B78E5A: FLdPr Me
  loc_B78E5D:  = Me.hWnd
  loc_B78E62: LitI4 3
  loc_B78E67: LitI4 0
  loc_B78E6C: LitI4 0
  loc_B78E71: LitI4 0
  loc_B78E76: LitI4 0
  loc_B78E7B: LitI4 -2
  loc_B78E80: ILdRf var_D0
  loc_B78E83: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B78E88: SetLastSystemError
  loc_B78E89: LitVarStr var_94, "settings_welcometext"
  loc_B78E8E: PopAdLdVar
  loc_B78E8F: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B78E94: FStStrNoPop var_C8
  loc_B78E97: FLdPrThis
  loc_B78E98: VCallAd Control_ID_Label7
  loc_B78E9B: FStAdFunc var_D4
  loc_B78E9E: FLdPr var_D4
  loc_B78EA1: Me.Caption = from_stack_1
  loc_B78EA6: FFree1Str var_C8
  loc_B78EA9: FFree1Ad var_D4
  loc_B78EAC: LitVarStr var_94, "settings_connectionframe"
  loc_B78EB1: PopAdLdVar
  loc_B78EB2: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B78EB7: FStStrNoPop var_C8
  loc_B78EBA: FLdPrThis
  loc_B78EBB: VCallAd Control_ID_Frame3
  loc_B78EBE: FStAdFunc var_D4
  loc_B78EC1: FLdPr var_D4
  loc_B78EC4: Me.Caption = from_stack_1
  loc_B78EC9: FFree1Str var_C8
  loc_B78ECC: FFree1Ad var_D4
  loc_B78ECF: LitVarStr var_94, "settings_mainsettingsframe"
  loc_B78ED4: PopAdLdVar
  loc_B78ED5: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B78EDA: FStStrNoPop var_C8
  loc_B78EDD: FLdPrThis
  loc_B78EDE: VCallAd Control_ID_Frame4
  loc_B78EE1: FStAdFunc var_D4
  loc_B78EE4: FLdPr var_D4
  loc_B78EE7: Me.Caption = from_stack_1
  loc_B78EEC: FFree1Str var_C8
  loc_B78EEF: FFree1Ad var_D4
  loc_B78EF2: LitVarStr var_94, "settings_other_rightsframe"
  loc_B78EF7: PopAdLdVar
  loc_B78EF8: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B78EFD: FStStrNoPop var_C8
  loc_B78F00: FLdPrThis
  loc_B78F01: VCallAd Control_ID_Frame11
  loc_B78F04: FStAdFunc var_D4
  loc_B78F07: FLdPr var_D4
  loc_B78F0A: Me.Caption = from_stack_1
  loc_B78F0F: FFree1Str var_C8
  loc_B78F12: FFree1Ad var_D4
  loc_B78F15: LitVarStr var_94, "settings_bobba_check"
  loc_B78F1A: PopAdLdVar
  loc_B78F1B: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B78F20: FStStrNoPop var_C8
  loc_B78F23: FLdPrThis
  loc_B78F24: VCallAd Control_ID_Check1
  loc_B78F27: FStAdFunc var_D4
  loc_B78F2A: FLdPr var_D4
  loc_B78F2D: Me.Caption = from_stack_1
  loc_B78F32: FFree1Str var_C8
  loc_B78F35: FFree1Ad var_D4
  loc_B78F38: LitVarStr var_94, "settings_welcome_message_check"
  loc_B78F3D: PopAdLdVar
  loc_B78F3E: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B78F43: FStStrNoPop var_C8
  loc_B78F46: FLdPrThis
  loc_B78F47: VCallAd Control_ID_Check2
  loc_B78F4A: FStAdFunc var_D4
  loc_B78F4D: FLdPr var_D4
  loc_B78F50: Me.Caption = from_stack_1
  loc_B78F55: FFree1Str var_C8
  loc_B78F58: FFree1Ad var_D4
  loc_B78F5B: LitVarStr var_94, "settings_console_check"
  loc_B78F60: PopAdLdVar
  loc_B78F61: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B78F66: FStStrNoPop var_C8
  loc_B78F69: FLdPrThis
  loc_B78F6A: VCallAd Control_ID_Check3
  loc_B78F6D: FStAdFunc var_D4
  loc_B78F70: FLdPr var_D4
  loc_B78F73: Me.Caption = from_stack_1
  loc_B78F78: FFree1Str var_C8
  loc_B78F7B: FFree1Ad var_D4
  loc_B78F7E: LitVarStr var_94, "chancelbutton"
  loc_B78F83: PopAdLdVar
  loc_B78F84: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B78F89: FStStrNoPop var_C8
  loc_B78F8C: FLdPrThis
  loc_B78F8D: VCallAd Control_ID_Command5
  loc_B78F90: FStAdFunc var_D4
  loc_B78F93: FLdPr var_D4
  loc_B78F96: Me.Caption = from_stack_1
  loc_B78F9B: FFree1Str var_C8
  loc_B78F9E: FFree1Ad var_D4
  loc_B78FA1: LitVarStr var_94, "savebutton"
  loc_B78FA6: PopAdLdVar
  loc_B78FA7: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B78FAC: FStStrNoPop var_C8
  loc_B78FAF: FLdPrThis
  loc_B78FB0: VCallAd Control_ID_Command6
  loc_B78FB3: FStAdFunc var_D4
  loc_B78FB6: FLdPr var_D4
  loc_B78FB9: Me.Caption = from_stack_1
  loc_B78FBE: FFree1Str var_C8
  loc_B78FC1: FFree1Ad var_D4
  loc_B78FC4: LitVarStr var_94, "chancelbutton"
  loc_B78FC9: PopAdLdVar
  loc_B78FCA: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B78FCF: FStStrNoPop var_C8
  loc_B78FD2: FLdPrThis
  loc_B78FD3: VCallAd Control_ID_Command1
  loc_B78FD6: FStAdFunc var_D4
  loc_B78FD9: FLdPr var_D4
  loc_B78FDC: Me.Caption = from_stack_1
  loc_B78FE1: FFree1Str var_C8
  loc_B78FE4: FFree1Ad var_D4
  loc_B78FE7: LitVarStr var_94, "savebutton"
  loc_B78FEC: PopAdLdVar
  loc_B78FED: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B78FF2: FStStrNoPop var_C8
  loc_B78FF5: FLdPrThis
  loc_B78FF6: VCallAd Control_ID_Command2
  loc_B78FF9: FStAdFunc var_D4
  loc_B78FFC: FLdPr var_D4
  loc_B78FFF: Me.Caption = from_stack_1
  loc_B79004: FFree1Str var_C8
  loc_B79007: FFree1Ad var_D4
  loc_B7900A: LitVarStr var_94, "settings_roomsframe"
  loc_B7900F: PopAdLdVar
  loc_B79010: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79015: FStStrNoPop var_C8
  loc_B79018: FLdPrThis
  loc_B79019: VCallAd Control_ID_Frame1
  loc_B7901C: FStAdFunc var_D4
  loc_B7901F: FLdPr var_D4
  loc_B79022: Me.Caption = from_stack_1
  loc_B79027: FFree1Str var_C8
  loc_B7902A: FFree1Ad var_D4
  loc_B7902D: LitVarStr var_94, "settings_maxroomsperuser"
  loc_B79032: PopAdLdVar
  loc_B79033: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79038: FStStrNoPop var_C8
  loc_B7903B: FLdPrThis
  loc_B7903C: VCallAd Control_ID_Label1
  loc_B7903F: FStAdFunc var_D4
  loc_B79042: FLdPr var_D4
  loc_B79045: Me.Caption = from_stack_1
  loc_B7904A: FFree1Str var_C8
  loc_B7904D: FFree1Ad var_D4
  loc_B79050: LitVarStr var_94, "settings_maxroomsinlist"
  loc_B79055: PopAdLdVar
  loc_B79056: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7905B: FStStrNoPop var_C8
  loc_B7905E: FLdPrThis
  loc_B7905F: VCallAd Control_ID_Label2
  loc_B79062: FStAdFunc var_D4
  loc_B79065: FLdPr var_D4
  loc_B79068: Me.Caption = from_stack_1
  loc_B7906D: FFree1Str var_C8
  loc_B79070: FFree1Ad var_D4
  loc_B79073: LitVarStr var_94, "hcchange_info"
  loc_B79078: PopAdLdVar
  loc_B79079: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7907E: FStStrNoPop var_C8
  loc_B79081: FLdPrThis
  loc_B79082: VCallAd Control_ID_Label22
  loc_B79085: FStAdFunc var_D4
  loc_B79088: FLdPr var_D4
  loc_B7908B: Me.Caption = from_stack_1
  loc_B79090: FFree1Str var_C8
  loc_B79093: FFree1Ad var_D4
  loc_B79096: LitVarStr var_94, "extrabadges_1_11"
  loc_B7909B: PopAdLdVar
  loc_B7909C: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B790A1: FStStrNoPop var_C8
  loc_B790A4: FLdPrThis
  loc_B790A5: VCallAd Control_ID_Label24
  loc_B790A8: FStAdFunc var_D4
  loc_B790AB: FLdPr var_D4
  loc_B790AE: Me.Caption = from_stack_1
  loc_B790B3: FFree1Str var_C8
  loc_B790B6: FFree1Ad var_D4
  loc_B790B9: LitVarStr var_94, "extrabadges_11"
  loc_B790BE: PopAdLdVar
  loc_B790BF: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B790C4: FStStrNoPop var_C8
  loc_B790C7: FLdPrThis
  loc_B790C8: VCallAd Control_ID_Label25
  loc_B790CB: FStAdFunc var_D4
  loc_B790CE: FLdPr var_D4
  loc_B790D1: Me.Caption = from_stack_1
  loc_B790D6: FFree1Str var_C8
  loc_B790D9: FFree1Ad var_D4
  loc_B790DC: LitVarStr var_94, "hc_presentsframe"
  loc_B790E1: PopAdLdVar
  loc_B790E2: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B790E7: FStStrNoPop var_C8
  loc_B790EA: FLdPrThis
  loc_B790EB: VCallAd Control_ID_Frame12
  loc_B790EE: FStAdFunc var_D4
  loc_B790F1: FLdPr var_D4
  loc_B790F4: Me.Caption = from_stack_1
  loc_B790F9: FFree1Str var_C8
  loc_B790FC: FFree1Ad var_D4
  loc_B790FF: LitVarStr var_94, "trading"
  loc_B79104: PopAdLdVar
  loc_B79105: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7910A: FStStrNoPop var_C8
  loc_B7910D: FLdPrThis
  loc_B7910E: VCallAd Control_ID_Label21
  loc_B79111: FStAdFunc var_D4
  loc_B79114: FLdPr var_D4
  loc_B79117: Me.Caption = from_stack_1
  loc_B7911C: FFree1Str var_C8
  loc_B7911F: FFree1Ad var_D4
  loc_B79122: LitVarStr var_94, "settings_maxfavouritedrooms"
  loc_B79127: PopAdLdVar
  loc_B79128: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7912D: FStStrNoPop var_C8
  loc_B79130: FLdPrThis
  loc_B79131: VCallAd Control_ID_Label3
  loc_B79134: FStAdFunc var_D4
  loc_B79137: FLdPr var_D4
  loc_B7913A: Me.Caption = from_stack_1
  loc_B7913F: FFree1Str var_C8
  loc_B79142: FFree1Ad var_D4
  loc_B79145: LitVarStr var_94, "settings_furniframe"
  loc_B7914A: PopAdLdVar
  loc_B7914B: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79150: FStStrNoPop var_C8
  loc_B79153: FLdPrThis
  loc_B79154: VCallAd Control_ID_Frame2
  loc_B79157: FStAdFunc var_D4
  loc_B7915A: FLdPr var_D4
  loc_B7915D: Me.Caption = from_stack_1
  loc_B79162: FFree1Str var_C8
  loc_B79165: FFree1Ad var_D4
  loc_B79168: LitVarStr var_94, "settings_maxrollersinroom"
  loc_B7916D: PopAdLdVar
  loc_B7916E: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79173: FStStrNoPop var_C8
  loc_B79176: FLdPrThis
  loc_B79177: VCallAd Control_ID_Label4
  loc_B7917A: FStAdFunc var_D4
  loc_B7917D: FLdPr var_D4
  loc_B79180: Me.Caption = from_stack_1
  loc_B79185: FFree1Str var_C8
  loc_B79188: FFree1Ad var_D4
  loc_B7918B: LitVarStr var_94, "settings_maxpetsinroom"
  loc_B79190: PopAdLdVar
  loc_B79191: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79196: FStStrNoPop var_C8
  loc_B79199: FLdPrThis
  loc_B7919A: VCallAd Control_ID_Label5
  loc_B7919D: FStAdFunc var_D4
  loc_B791A0: FLdPr var_D4
  loc_B791A3: Me.Caption = from_stack_1
  loc_B791A8: FFree1Str var_C8
  loc_B791AB: FFree1Ad var_D4
  loc_B791AE: LitVarStr var_94, "username"
  loc_B791B3: PopAdLdVar
  loc_B791B4: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B791B9: FStStrNoPop var_C8
  loc_B791BC: FLdPrThis
  loc_B791BD: VCallAd Control_ID_Label9
  loc_B791C0: FStAdFunc var_D4
  loc_B791C3: FLdPr var_D4
  loc_B791C6: Me.Caption = from_stack_1
  loc_B791CB: FFree1Str var_C8
  loc_B791CE: FFree1Ad var_D4
  loc_B791D1: LitVarStr var_94, "password"
  loc_B791D6: PopAdLdVar
  loc_B791D7: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B791DC: FStStrNoPop var_C8
  loc_B791DF: FLdPrThis
  loc_B791E0: VCallAd Control_ID_Label10
  loc_B791E3: FStAdFunc var_D4
  loc_B791E6: FLdPr var_D4
  loc_B791E9: Me.Caption = from_stack_1
  loc_B791EE: FFree1Str var_C8
  loc_B791F1: FFree1Ad var_D4
  loc_B791F4: LitVarStr var_94, "mission"
  loc_B791F9: PopAdLdVar
  loc_B791FA: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B791FF: FStStrNoPop var_C8
  loc_B79202: FLdPrThis
  loc_B79203: VCallAd Control_ID_Label11
  loc_B79206: FStAdFunc var_D4
  loc_B79209: FLdPr var_D4
  loc_B7920C: Me.Caption = from_stack_1
  loc_B79211: FFree1Str var_C8
  loc_B79214: FFree1Ad var_D4
  loc_B79217: LitVarStr var_94, "rank"
  loc_B7921C: PopAdLdVar
  loc_B7921D: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79222: FStStrNoPop var_C8
  loc_B79225: FLdPrThis
  loc_B79226: VCallAd Control_ID_Label12
  loc_B79229: FStAdFunc var_D4
  loc_B7922C: FLdPr var_D4
  loc_B7922F: Me.Caption = from_stack_1
  loc_B79234: FFree1Str var_C8
  loc_B79237: FFree1Ad var_D4
  loc_B7923A: LitVarStr var_94, "credits"
  loc_B7923F: PopAdLdVar
  loc_B79240: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79245: FStStrNoPop var_C8
  loc_B79248: FLdPrThis
  loc_B79249: VCallAd Control_ID_Label13
  loc_B7924C: FStAdFunc var_D4
  loc_B7924F: FLdPr var_D4
  loc_B79252: Me.Caption = from_stack_1
  loc_B79257: FFree1Str var_C8
  loc_B7925A: FFree1Ad var_D4
  loc_B7925D: LitVarStr var_94, "addbutton"
  loc_B79262: PopAdLdVar
  loc_B79263: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79268: FStStrNoPop var_C8
  loc_B7926B: FLdPrThis
  loc_B7926C: VCallAd Control_ID_Command3
  loc_B7926F: FStAdFunc var_D4
  loc_B79272: FLdPr var_D4
  loc_B79275: Me.Caption = from_stack_1
  loc_B7927A: FFree1Str var_C8
  loc_B7927D: FFree1Ad var_D4
  loc_B79280: LitVarStr var_94, "removebutton"
  loc_B79285: PopAdLdVar
  loc_B79286: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7928B: FStStrNoPop var_C8
  loc_B7928E: FLdPrThis
  loc_B7928F: VCallAd Control_ID_Command4
  loc_B79292: FStAdFunc var_D4
  loc_B79295: FLdPr var_D4
  loc_B79298: Me.Caption = from_stack_1
  loc_B7929D: FFree1Str var_C8
  loc_B792A0: FFree1Ad var_D4
  loc_B792A3: LitStr " -- "
  loc_B792A6: LitVarStr var_94, "choose_a_user"
  loc_B792AB: PopAdLdVar
  loc_B792AC: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B792B1: FStStrNoPop var_C8
  loc_B792B4: ConcatStr
  loc_B792B5: FStStrNoPop var_CC
  loc_B792B8: LitStr " -- "
  loc_B792BB: ConcatStr
  loc_B792BC: FStStrNoPop var_D8
  loc_B792BF: FLdPrThis
  loc_B792C0: VCallAd Control_ID_Combo1
  loc_B792C3: FStAdFunc var_D4
  loc_B792C6: FLdPr var_D4
  loc_B792C9: Me.Text = from_stack_1
  loc_B792CE: FFreeStr var_C8 = "": var_CC = ""
  loc_B792D7: FFree1Ad var_D4
  loc_B792DA: LitStr " -- "
  loc_B792DD: LitVarStr var_94, "roomlist_combo"
  loc_B792E2: PopAdLdVar
  loc_B792E3: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B792E8: FStStrNoPop var_C8
  loc_B792EB: ConcatStr
  loc_B792EC: FStStrNoPop var_CC
  loc_B792EF: LitStr " -- "
  loc_B792F2: ConcatStr
  loc_B792F3: FStStrNoPop var_D8
  loc_B792F6: FLdPrThis
  loc_B792F7: VCallAd Control_ID_Combo3
  loc_B792FA: FStAdFunc var_D4
  loc_B792FD: FLdPr var_D4
  loc_B79300: Me.Text = from_stack_1
  loc_B79305: FFreeStr var_C8 = "": var_CC = ""
  loc_B7930E: FFree1Ad var_D4
  loc_B79311: LitVarStr var_94, "speach_commands"
  loc_B79316: PopAdLdVar
  loc_B79317: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7931C: FStStrNoPop var_C8
  loc_B7931F: FLdPrThis
  loc_B79320: VCallAd Control_ID_Frame5
  loc_B79323: FStAdFunc var_D4
  loc_B79326: FLdPr var_D4
  loc_B79329: Me.Caption = from_stack_1
  loc_B7932E: FFree1Str var_C8
  loc_B79331: FFree1Ad var_D4
  loc_B79334: LitVarStr var_94, "badges"
  loc_B79339: PopAdLdVar
  loc_B7933A: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7933F: FStStrNoPop var_C8
  loc_B79342: FLdPrThis
  loc_B79343: VCallAd Control_ID_Frame9
  loc_B79346: FStAdFunc var_D4
  loc_B79349: FLdPr var_D4
  loc_B7934C: Me.Caption = from_stack_1
  loc_B79351: FFree1Str var_C8
  loc_B79354: FFree1Ad var_D4
  loc_B79357: LitVarStr var_94, "modtool"
  loc_B7935C: PopAdLdVar
  loc_B7935D: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79362: FStStrNoPop var_C8
  loc_B79365: FLdPrThis
  loc_B79366: VCallAd Control_ID_Frame10
  loc_B79369: FStAdFunc var_D4
  loc_B7936C: FLdPr var_D4
  loc_B7936F: Me.Caption = from_stack_1
  loc_B79374: FFree1Str var_C8
  loc_B79377: FFree1Ad var_D4
  loc_B7937A: LitVarStr var_94, "edit_room"
  loc_B7937F: PopAdLdVar
  loc_B79380: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79385: FStStrNoPop var_C8
  loc_B79388: FLdPrThis
  loc_B79389: VCallAd Control_ID_Frame7
  loc_B7938C: FStAdFunc var_D4
  loc_B7938F: FLdPr var_D4
  loc_B79392: Me.Caption = from_stack_1
  loc_B79397: FFree1Str var_C8
  loc_B7939A: FFree1Ad var_D4
  loc_B7939D: LitVarStr var_94, "categorie_editor_frame"
  loc_B793A2: PopAdLdVar
  loc_B793A3: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B793A8: FStStrNoPop var_C8
  loc_B793AB: FLdPrThis
  loc_B793AC: VCallAd Control_ID_Frame8
  loc_B793AF: FStAdFunc var_D4
  loc_B793B2: FLdPr var_D4
  loc_B793B5: Me.Caption = from_stack_1
  loc_B793BA: FFree1Str var_C8
  loc_B793BD: FFree1Ad var_D4
  loc_B793C0: LitVarStr var_94, "chancelbutton"
  loc_B793C5: PopAdLdVar
  loc_B793C6: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B793CB: FStStrNoPop var_C8
  loc_B793CE: FLdPrThis
  loc_B793CF: VCallAd Control_ID_Command18
  loc_B793D2: FStAdFunc var_D4
  loc_B793D5: FLdPr var_D4
  loc_B793D8: Me.Caption = from_stack_1
  loc_B793DD: FFree1Str var_C8
  loc_B793E0: FFree1Ad var_D4
  loc_B793E3: LitVarStr var_94, "savebutton"
  loc_B793E8: PopAdLdVar
  loc_B793E9: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B793EE: FStStrNoPop var_C8
  loc_B793F1: FLdPrThis
  loc_B793F2: VCallAd Control_ID_Command19
  loc_B793F5: FStAdFunc var_D4
  loc_B793F8: FLdPr var_D4
  loc_B793FB: Me.Caption = from_stack_1
  loc_B79400: FFree1Str var_C8
  loc_B79403: FFree1Ad var_D4
  loc_B79406: LitVarStr var_94, "enable"
  loc_B7940B: PopAdLdVar
  loc_B7940C: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79411: FStStrNoPop var_C8
  loc_B79414: FLdPrThis
  loc_B79415: VCallAd Control_ID_Label18
  loc_B79418: FStAdFunc var_D4
  loc_B7941B: FLdPr var_D4
  loc_B7941E: Me.Caption = from_stack_1
  loc_B79423: FFree1Str var_C8
  loc_B79426: FFree1Ad var_D4
  loc_B79429: LitVarStr var_94, "change_name"
  loc_B7942E: PopAdLdVar
  loc_B7942F: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79434: FStStrNoPop var_C8
  loc_B79437: FLdPrThis
  loc_B79438: VCallAd Control_ID_Label19
  loc_B7943B: FStAdFunc var_D4
  loc_B7943E: FLdPr var_D4
  loc_B79441: Me.Caption = from_stack_1
  loc_B79446: FFree1Str var_C8
  loc_B79449: FFree1Ad var_D4
  loc_B7944C: LitVarStr var_94, "categorie_info"
  loc_B79451: PopAdLdVar
  loc_B79452: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79457: FStStrNoPop var_C8
  loc_B7945A: FLdPrThis
  loc_B7945B: VCallAd Control_ID_Label20
  loc_B7945E: FStAdFunc var_D4
  loc_B79461: FLdPr var_D4
  loc_B79464: Me.Caption = from_stack_1
  loc_B79469: FFree1Str var_C8
  loc_B7946C: FFree1Ad var_D4
  loc_B7946F: LitVarStr var_94, "room_name"
  loc_B79474: PopAdLdVar
  loc_B79475: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7947A: FStStrNoPop var_C8
  loc_B7947D: FLdPrThis
  loc_B7947E: VCallAd Control_ID_Label14
  loc_B79481: FStAdFunc var_D4
  loc_B79484: FLdPr var_D4
  loc_B79487: Me.Caption = from_stack_1
  loc_B7948C: FFree1Str var_C8
  loc_B7948F: FFree1Ad var_D4
  loc_B79492: LitVarStr var_94, "room_desc"
  loc_B79497: PopAdLdVar
  loc_B79498: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7949D: FStStrNoPop var_C8
  loc_B794A0: FLdPrThis
  loc_B794A1: VCallAd Control_ID_Label15
  loc_B794A4: FStAdFunc var_D4
  loc_B794A7: FLdPr var_D4
  loc_B794AA: Me.Caption = from_stack_1
  loc_B794AF: FFree1Str var_C8
  loc_B794B2: FFree1Ad var_D4
  loc_B794B5: LitVarStr var_94, "password"
  loc_B794BA: PopAdLdVar
  loc_B794BB: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B794C0: FStStrNoPop var_C8
  loc_B794C3: FLdPrThis
  loc_B794C4: VCallAd Control_ID_Label16
  loc_B794C7: FStAdFunc var_D4
  loc_B794CA: FLdPr var_D4
  loc_B794CD: Me.Caption = from_stack_1
  loc_B794D2: FFree1Str var_C8
  loc_B794D5: FFree1Ad var_D4
  loc_B794D8: LitVarStr var_94, "owner"
  loc_B794DD: PopAdLdVar
  loc_B794DE: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B794E3: FStStrNoPop var_C8
  loc_B794E6: FLdPrThis
  loc_B794E7: VCallAd Control_ID_Label17
  loc_B794EA: FStAdFunc var_D4
  loc_B794ED: FLdPr var_D4
  loc_B794F0: Me.Caption = from_stack_1
  loc_B794F5: FFree1Str var_C8
  loc_B794F8: FFree1Ad var_D4
  loc_B794FB: LitVarStr var_94, "chancelbutton"
  loc_B79500: PopAdLdVar
  loc_B79501: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79506: FStStrNoPop var_C8
  loc_B79509: FLdPrThis
  loc_B7950A: VCallAd Control_ID_Command16
  loc_B7950D: FStAdFunc var_D4
  loc_B79510: FLdPr var_D4
  loc_B79513: Me.Caption = from_stack_1
  loc_B79518: FFree1Str var_C8
  loc_B7951B: FFree1Ad var_D4
  loc_B7951E: LitVarStr var_94, "savebutton"
  loc_B79523: PopAdLdVar
  loc_B79524: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79529: FStStrNoPop var_C8
  loc_B7952C: FLdPrThis
  loc_B7952D: VCallAd Control_ID_Command17
  loc_B79530: FStAdFunc var_D4
  loc_B79533: FLdPr var_D4
  loc_B79536: Me.Caption = from_stack_1
  loc_B7953B: FFree1Str var_C8
  loc_B7953E: FFree1Ad var_D4
  loc_B79541: LitVar_Missing var_94
  loc_B79544: PopAdLdVar
  loc_B79545: LitStr "habbo"
  loc_B79548: FLdPrThis
  loc_B79549: VCallAd Control_ID_Combo4
  loc_B7954C: FStAdFunc var_D4
  loc_B7954F: FLdPr var_D4
  loc_B79552: Me.AddItem from_stack_1, from_stack_2
  loc_B79557: FFree1Ad var_D4
  loc_B7955A: LitVar_Missing var_94
  loc_B7955D: PopAdLdVar
  loc_B7955E: LitStr "habbox"
  loc_B79561: FLdPrThis
  loc_B79562: VCallAd Control_ID_Combo4
  loc_B79565: FStAdFunc var_D4
  loc_B79568: FLdPr var_D4
  loc_B7956B: Me.AddItem from_stack_1, from_stack_2
  loc_B79570: FFree1Ad var_D4
  loc_B79573: LitVar_Missing var_94
  loc_B79576: PopAdLdVar
  loc_B79577: LitStr "silver"
  loc_B7957A: FLdPrThis
  loc_B7957B: VCallAd Control_ID_Combo4
  loc_B7957E: FStAdFunc var_D4
  loc_B79581: FLdPr var_D4
  loc_B79584: Me.AddItem from_stack_1, from_stack_2
  loc_B79589: FFree1Ad var_D4
  loc_B7958C: LitVar_Missing var_94
  loc_B7958F: PopAdLdVar
  loc_B79590: LitStr "gold"
  loc_B79593: FLdPrThis
  loc_B79594: VCallAd Control_ID_Combo4
  loc_B79597: FStAdFunc var_D4
  loc_B7959A: FLdPr var_D4
  loc_B7959D: Me.AddItem from_stack_1, from_stack_2
  loc_B795A2: FFree1Ad var_D4
  loc_B795A5: LitVar_Missing var_94
  loc_B795A8: PopAdLdVar
  loc_B795A9: LitStr "moderator"
  loc_B795AC: FLdPrThis
  loc_B795AD: VCallAd Control_ID_Combo4
  loc_B795B0: FStAdFunc var_D4
  loc_B795B3: FLdPr var_D4
  loc_B795B6: Me.AddItem from_stack_1, from_stack_2
  loc_B795BB: FFree1Ad var_D4
  loc_B795BE: LitVar_Missing var_94
  loc_B795C1: PopAdLdVar
  loc_B795C2: LitStr "admin"
  loc_B795C5: FLdPrThis
  loc_B795C6: VCallAd Control_ID_Combo4
  loc_B795C9: FStAdFunc var_D4
  loc_B795CC: FLdPr var_D4
  loc_B795CF: Me.AddItem from_stack_1, from_stack_2
  loc_B795D4: FFree1Ad var_D4
  loc_B795D7: LitVarStr var_94, "ranks"
  loc_B795DC: PopAdLdVar
  loc_B795DD: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B795E2: FStStrNoPop var_C8
  loc_B795E5: FLdPrThis
  loc_B795E6: VCallAd Control_ID_Combo4
  loc_B795E9: FStAdFunc var_D4
  loc_B795EC: FLdPr var_D4
  loc_B795EF: Me.Text = from_stack_1
  loc_B795F4: FFree1Str var_C8
  loc_B795F7: FFree1Ad var_D4
  loc_B795FA: LitVarStr var_94, "delete_room"
  loc_B795FF: PopAdLdVar
  loc_B79600: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79605: FStStrNoPop var_C8
  loc_B79608: FLdPrThis
  loc_B79609: VCallAd Control_ID_Command10
  loc_B7960C: FStAdFunc var_D4
  loc_B7960F: FLdPr var_D4
  loc_B79612: Me.Caption = from_stack_1
  loc_B79617: FFree1Str var_C8
  loc_B7961A: FFree1Ad var_D4
  loc_B7961D: LitVarStr var_94, "savebutton"
  loc_B79622: PopAdLdVar
  loc_B79623: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79628: FStStrNoPop var_C8
  loc_B7962B: FLdPrThis
  loc_B7962C: VCallAd Control_ID_Command11
  loc_B7962F: FStAdFunc var_D4
  loc_B79632: FLdPr var_D4
  loc_B79635: Me.Caption = from_stack_1
  loc_B7963A: FFree1Str var_C8
  loc_B7963D: FFree1Ad var_D4
  loc_B79640: LitVarStr var_94, "chancelbutton"
  loc_B79645: PopAdLdVar
  loc_B79646: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7964B: FStStrNoPop var_C8
  loc_B7964E: FLdPrThis
  loc_B7964F: VCallAd Control_ID_Command12
  loc_B79652: FStAdFunc var_D4
  loc_B79655: FLdPr var_D4
  loc_B79658: Me.Caption = from_stack_1
  loc_B7965D: FFree1Str var_C8
  loc_B79660: FFree1Ad var_D4
  loc_B79663: LitI4 0
  loc_B79668: FStStrCopy var_C8
  loc_B7966B: FLdRfVar var_C8
  loc_B7966E: ImpAdLdRf MemVar_C0F03C
  loc_B79671: CVarRef
  loc_B79676: LitVarStr var_A4, "port"
  loc_B7967B: FStVarCopyObj var_B4
  loc_B7967E: FLdRfVar var_B4
  loc_B79681: LitVarStr var_94, "server"
  loc_B79686: PopAdLdVar
  loc_B79687: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B7968C: FStStrNoPop var_CC
  loc_B7968F: FLdPrThis
  loc_B79690: VCallAd Control_ID_Text6
  loc_B79693: FStAdFunc var_D4
  loc_B79696: FLdPr var_D4
  loc_B79699: Me.Text = from_stack_1
  loc_B7969E: FFreeStr var_C8 = ""
  loc_B796A5: FFree1Ad var_D4
  loc_B796A8: FFree1Var var_B4 = ""
  loc_B796AB: LitI4 0
  loc_B796B0: FStStrCopy var_C8
  loc_B796B3: FLdRfVar var_C8
  loc_B796B6: ImpAdLdI4 MemVar_C0F044
  loc_B796B9: LitStr "configuration\settings.ini"
  loc_B796BC: ConcatStr
  loc_B796BD: CVarStr var_E8
  loc_B796C0: LitVarStr var_A4, "bobba_filter"
  loc_B796C5: FStVarCopyObj var_B4
  loc_B796C8: FLdRfVar var_B4
  loc_B796CB: LitVarStr var_94, "config"
  loc_B796D0: PopAdLdVar
  loc_B796D1: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B796D6: FStStrNoPop var_CC
  loc_B796D9: ImpAdCallFPR4 push push Val()
  loc_B796DE: CI2R8
  loc_B796DF: FLdPrThis
  loc_B796E0: VCallAd Control_ID_Check1
  loc_B796E3: FStAdFunc var_D4
  loc_B796E6: FLdPr var_D4
  loc_B796E9: Me.Value = from_stack_1
  loc_B796EE: FFreeStr var_C8 = ""
  loc_B796F5: FFree1Ad var_D4
  loc_B796F8: FFreeVar var_B4 = ""
  loc_B796FF: LitI4 0
  loc_B79704: FStStrCopy var_C8
  loc_B79707: FLdRfVar var_C8
  loc_B7970A: ImpAdLdI4 MemVar_C0F044
  loc_B7970D: LitStr "configuration\settings.ini"
  loc_B79710: ConcatStr
  loc_B79711: CVarStr var_E8
  loc_B79714: LitVarStr var_A4, "welcome_message"
  loc_B79719: FStVarCopyObj var_B4
  loc_B7971C: FLdRfVar var_B4
  loc_B7971F: LitVarStr var_94, "config"
  loc_B79724: PopAdLdVar
  loc_B79725: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B7972A: FStStrNoPop var_CC
  loc_B7972D: ImpAdCallFPR4 push push Val()
  loc_B79732: CI2R8
  loc_B79733: FLdPrThis
  loc_B79734: VCallAd Control_ID_Check2
  loc_B79737: FStAdFunc var_D4
  loc_B7973A: FLdPr var_D4
  loc_B7973D: Me.Value = from_stack_1
  loc_B79742: FFreeStr var_C8 = ""
  loc_B79749: FFree1Ad var_D4
  loc_B7974C: FFreeVar var_B4 = ""
  loc_B79753: LitI4 0
  loc_B79758: FStStrCopy var_C8
  loc_B7975B: FLdRfVar var_C8
  loc_B7975E: ImpAdLdI4 MemVar_C0F044
  loc_B79761: LitStr "configuration\settings.ini"
  loc_B79764: ConcatStr
  loc_B79765: CVarStr var_E8
  loc_B79768: LitVarStr var_A4, "console"
  loc_B7976D: FStVarCopyObj var_B4
  loc_B79770: FLdRfVar var_B4
  loc_B79773: LitVarStr var_94, "config"
  loc_B79778: PopAdLdVar
  loc_B79779: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B7977E: FStStrNoPop var_CC
  loc_B79781: ImpAdCallFPR4 push push Val()
  loc_B79786: CI2R8
  loc_B79787: FLdPrThis
  loc_B79788: VCallAd Control_ID_Check3
  loc_B7978B: FStAdFunc var_D4
  loc_B7978E: FLdPr var_D4
  loc_B79791: Me.Value = from_stack_1
  loc_B79796: FFreeStr var_C8 = ""
  loc_B7979D: FFree1Ad var_D4
  loc_B797A0: FFreeVar var_B4 = ""
  loc_B797A7: LitI4 0
  loc_B797AC: FStStrCopy var_C8
  loc_B797AF: FLdRfVar var_C8
  loc_B797B2: ImpAdLdI4 MemVar_C0F044
  loc_B797B5: LitStr "configuration\settings.ini"
  loc_B797B8: ConcatStr
  loc_B797B9: CVarStr var_E8
  loc_B797BC: LitVarStr var_A4, "maxroomsperuser"
  loc_B797C1: FStVarCopyObj var_B4
  loc_B797C4: FLdRfVar var_B4
  loc_B797C7: LitVarStr var_94, "config"
  loc_B797CC: PopAdLdVar
  loc_B797CD: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B797D2: FStStrNoPop var_CC
  loc_B797D5: ImpAdCallFPR4 push push Val()
  loc_B797DA: CStrR8
  loc_B797DC: FStStrNoPop var_D8
  loc_B797DF: FLdPrThis
  loc_B797E0: VCallAd Control_ID_Text1
  loc_B797E3: FStAdFunc var_D4
  loc_B797E6: FLdPr var_D4
  loc_B797E9: Me.Text = from_stack_1
  loc_B797EE: FFreeStr var_C8 = "": var_CC = ""
  loc_B797F7: FFree1Ad var_D4
  loc_B797FA: FFreeVar var_B4 = ""
  loc_B79801: LitI4 0
  loc_B79806: FStStrCopy var_C8
  loc_B79809: FLdRfVar var_C8
  loc_B7980C: ImpAdLdI4 MemVar_C0F044
  loc_B7980F: LitStr "configuration\settings.ini"
  loc_B79812: ConcatStr
  loc_B79813: CVarStr var_E8
  loc_B79816: LitVarStr var_A4, "maxguestroomsinlist"
  loc_B7981B: FStVarCopyObj var_B4
  loc_B7981E: FLdRfVar var_B4
  loc_B79821: LitVarStr var_94, "config"
  loc_B79826: PopAdLdVar
  loc_B79827: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B7982C: FStStrNoPop var_CC
  loc_B7982F: ImpAdCallFPR4 push push Val()
  loc_B79834: CStrR8
  loc_B79836: FStStrNoPop var_D8
  loc_B79839: FLdPrThis
  loc_B7983A: VCallAd Control_ID_Text2
  loc_B7983D: FStAdFunc var_D4
  loc_B79840: FLdPr var_D4
  loc_B79843: Me.Text = from_stack_1
  loc_B79848: FFreeStr var_C8 = "": var_CC = ""
  loc_B79851: FFree1Ad var_D4
  loc_B79854: FFreeVar var_B4 = ""
  loc_B7985B: LitI4 0
  loc_B79860: FStStrCopy var_C8
  loc_B79863: FLdRfVar var_C8
  loc_B79866: ImpAdLdI4 MemVar_C0F044
  loc_B79869: LitStr "configuration\settings.ini"
  loc_B7986C: ConcatStr
  loc_B7986D: CVarStr var_E8
  loc_B79870: LitVarStr var_A4, "maxfavouriterooms"
  loc_B79875: FStVarCopyObj var_B4
  loc_B79878: FLdRfVar var_B4
  loc_B7987B: LitVarStr var_94, "config"
  loc_B79880: PopAdLdVar
  loc_B79881: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B79886: FStStrNoPop var_CC
  loc_B79889: ImpAdCallFPR4 push push Val()
  loc_B7988E: CStrR8
  loc_B79890: FStStrNoPop var_D8
  loc_B79893: FLdPrThis
  loc_B79894: VCallAd Control_ID_Text3
  loc_B79897: FStAdFunc var_D4
  loc_B7989A: FLdPr var_D4
  loc_B7989D: Me.Text = from_stack_1
  loc_B798A2: FFreeStr var_C8 = "": var_CC = ""
  loc_B798AB: FFree1Ad var_D4
  loc_B798AE: FFreeVar var_B4 = ""
  loc_B798B5: LitI4 0
  loc_B798BA: FStStrCopy var_C8
  loc_B798BD: FLdRfVar var_C8
  loc_B798C0: ImpAdLdI4 MemVar_C0F044
  loc_B798C3: LitStr "configuration\settings.ini"
  loc_B798C6: ConcatStr
  loc_B798C7: CVarStr var_E8
  loc_B798CA: LitVarStr var_A4, "maxrollersinroom"
  loc_B798CF: FStVarCopyObj var_B4
  loc_B798D2: FLdRfVar var_B4
  loc_B798D5: LitVarStr var_94, "config"
  loc_B798DA: PopAdLdVar
  loc_B798DB: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B798E0: FStStrNoPop var_CC
  loc_B798E3: ImpAdCallFPR4 push push Val()
  loc_B798E8: CStrR8
  loc_B798EA: FStStrNoPop var_D8
  loc_B798ED: FLdPrThis
  loc_B798EE: VCallAd Control_ID_Text4
  loc_B798F1: FStAdFunc var_D4
  loc_B798F4: FLdPr var_D4
  loc_B798F7: Me.Text = from_stack_1
  loc_B798FC: FFreeStr var_C8 = "": var_CC = ""
  loc_B79905: FFree1Ad var_D4
  loc_B79908: FFreeVar var_B4 = ""
  loc_B7990F: LitI4 0
  loc_B79914: FStStrCopy var_C8
  loc_B79917: FLdRfVar var_C8
  loc_B7991A: ImpAdLdI4 MemVar_C0F044
  loc_B7991D: LitStr "configuration\settings.ini"
  loc_B79920: ConcatStr
  loc_B79921: CVarStr var_E8
  loc_B79924: LitVarStr var_A4, "maxpetsinroom"
  loc_B79929: FStVarCopyObj var_B4
  loc_B7992C: FLdRfVar var_B4
  loc_B7992F: LitVarStr var_94, "config"
  loc_B79934: PopAdLdVar
  loc_B79935: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B7993A: FStStrNoPop var_CC
  loc_B7993D: ImpAdCallFPR4 push push Val()
  loc_B79942: CStrR8
  loc_B79944: FStStrNoPop var_D8
  loc_B79947: FLdPrThis
  loc_B79948: VCallAd Control_ID_Text5
  loc_B7994B: FStAdFunc var_D4
  loc_B7994E: FLdPr var_D4
  loc_B79951: Me.Text = from_stack_1
  loc_B79956: FFreeStr var_C8 = "": var_CC = ""
  loc_B7995F: FFree1Ad var_D4
  loc_B79962: FFreeVar var_B4 = ""
  loc_B79969: LitI4 0
  loc_B7996E: FStStrCopy var_C8
  loc_B79971: FLdRfVar var_C8
  loc_B79974: ImpAdLdI4 MemVar_C0F044
  loc_B79977: LitStr "configuration\settings.ini"
  loc_B7997A: ConcatStr
  loc_B7997B: CVarStr var_E8
  loc_B7997E: LitVarStr var_A4, "maxfriends"
  loc_B79983: FStVarCopyObj var_B4
  loc_B79986: FLdRfVar var_B4
  loc_B79989: LitVarStr var_94, "config"
  loc_B7998E: PopAdLdVar
  loc_B7998F: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B79994: FStStrNoPop var_CC
  loc_B79997: ImpAdCallFPR4 push push Val()
  loc_B7999C: CStrR8
  loc_B7999E: FStStrNoPop var_D8
  loc_B799A1: FLdPrThis
  loc_B799A2: VCallAd Control_ID_Text24
  loc_B799A5: FStAdFunc var_D4
  loc_B799A8: FLdPr var_D4
  loc_B799AB: Me.Text = from_stack_1
  loc_B799B0: FFreeStr var_C8 = "": var_CC = ""
  loc_B799B9: FFree1Ad var_D4
  loc_B799BC: FFreeVar var_B4 = ""
  loc_B799C3: LitVarStr var_94, "chancelbutton"
  loc_B799C8: PopAdLdVar
  loc_B799C9: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B799CE: FStStrNoPop var_C8
  loc_B799D1: FLdPrThis
  loc_B799D2: VCallAd Control_ID_Command13
  loc_B799D5: FStAdFunc var_D4
  loc_B799D8: FLdPr var_D4
  loc_B799DB: Me.Caption = from_stack_1
  loc_B799E0: FFree1Str var_C8
  loc_B799E3: FFree1Ad var_D4
  loc_B799E6: LitVarStr var_94, "savebutton"
  loc_B799EB: PopAdLdVar
  loc_B799EC: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B799F1: FStStrNoPop var_C8
  loc_B799F4: FLdPrThis
  loc_B799F5: VCallAd Control_ID_Command14
  loc_B799F8: FStAdFunc var_D4
  loc_B799FB: FLdPr var_D4
  loc_B799FE: Me.Caption = from_stack_1
  loc_B79A03: FFree1Str var_C8
  loc_B79A06: FFree1Ad var_D4
  loc_B79A09: LitI4 0
  loc_B79A0E: FStStrCopy var_C8
  loc_B79A11: FLdRfVar var_C8
  loc_B79A14: ImpAdLdI4 MemVar_C0F044
  loc_B79A17: LitStr "configuration\settings.ini"
  loc_B79A1A: ConcatStr
  loc_B79A1B: CVarStr var_E8
  loc_B79A1E: LitVarStr var_A4, "replacement"
  loc_B79A23: FStVarCopyObj var_B4
  loc_B79A26: FLdRfVar var_B4
  loc_B79A29: LitVarStr var_94, "config"
  loc_B79A2E: PopAdLdVar
  loc_B79A2F: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B79A34: FStStrNoPop var_CC
  loc_B79A37: FLdPrThis
  loc_B79A38: VCallAd Control_ID_Text16
  loc_B79A3B: FStAdFunc var_D4
  loc_B79A3E: FLdPr var_D4
  loc_B79A41: Me.Text = from_stack_1
  loc_B79A46: FFreeStr var_C8 = ""
  loc_B79A4D: FFree1Ad var_D4
  loc_B79A50: FFreeVar var_B4 = ""
  loc_B79A57: LitVarStr var_94, "save_filterword"
  loc_B79A5C: PopAdLdVar
  loc_B79A5D: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79A62: FStStrNoPop var_C8
  loc_B79A65: FLdPrThis
  loc_B79A66: VCallAd Control_ID_Command15
  loc_B79A69: FStAdFunc var_D4
  loc_B79A6C: FLdPr var_D4
  loc_B79A6F: Me.Caption = from_stack_1
  loc_B79A74: FFree1Str var_C8
  loc_B79A77: FFree1Ad var_D4
  loc_B79A7A: LitVarStr var_94, "replacement"
  loc_B79A7F: PopAdLdVar
  loc_B79A80: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B79A85: FStStrNoPop var_C8
  loc_B79A88: FLdPrThis
  loc_B79A89: VCallAd Control_ID_Label8
  loc_B79A8C: FStAdFunc var_D4
  loc_B79A8F: FLdPr var_D4
  loc_B79A92: Me.Caption = from_stack_1
  loc_B79A97: FFree1Str var_C8
  loc_B79A9A: FFree1Ad var_D4
  loc_B79A9D: LitVarI2 var_C4, 0
  loc_B79AA2: FLdRfVar var_F8
  loc_B79AA5: LitVarI2 var_A4, 10
  loc_B79AAA: ForVar var_118
  loc_B79AB0: LitI4 0
  loc_B79AB5: FStStrCopy var_C8
  loc_B79AB8: FLdRfVar var_C8
  loc_B79ABB: ImpAdLdI4 MemVar_C0F044
  loc_B79ABE: LitStr "configuration\settings.ini"
  loc_B79AC1: ConcatStr
  loc_B79AC2: CVarStr var_128
  loc_B79AC5: LitVarStr var_A4, "present"
  loc_B79ACA: FLdRfVar var_F8
  loc_B79ACD: LitVarI2 var_94, 1
  loc_B79AD2: AddVar var_B4
  loc_B79AD6: ConcatVar var_E8
  loc_B79ADA: LitVarStr var_C4, "HC"
  loc_B79ADF: PopAdLdVar
  loc_B79AE0: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B79AE5: FStStrNoPop var_CC
  loc_B79AE8: FLdRfVar var_12C
  loc_B79AEB: FLdRfVar var_F8
  loc_B79AEE: CI2Var
  loc_B79AEF: FLdPrThis
  loc_B79AF0: VCallAd Control_ID_hcpresent
  loc_B79AF3: FStAdFunc var_D4
  loc_B79AF6: FLdPr var_D4
  loc_B79AF9: Set from_stack_2 = Me(from_stack_1)
  loc_B79AFE: FLdPr var_12C
  loc_B79B01: Me.Text = from_stack_1
  loc_B79B06: FFreeStr var_C8 = ""
  loc_B79B0D: FFreeAd var_D4 = ""
  loc_B79B14: FFreeVar var_B4 = "": var_E8 = ""
  loc_B79B1D: FLdRfVar var_F8
  loc_B79B20: NextStepVar var_118
  loc_B79B26: LitI4 0
  loc_B79B2B: FStStrCopy var_C8
  loc_B79B2E: FLdRfVar var_C8
  loc_B79B31: ImpAdLdI4 MemVar_C0F044
  loc_B79B34: LitStr "configuration\settings.ini"
  loc_B79B37: ConcatStr
  loc_B79B38: CVarStr var_E8
  loc_B79B3B: LitVarStr var_A4, "welcome_message"
  loc_B79B40: FStVarCopyObj var_B4
  loc_B79B43: FLdRfVar var_B4
  loc_B79B46: LitVarStr var_94, "config"
  loc_B79B4B: PopAdLdVar
  loc_B79B4C: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B79B51: FStStr var_D8
  loc_B79B54: LitVarI2 var_14C, 0
  loc_B79B59: PopAdLdVar
  loc_B79B5A: LitI4 0
  loc_B79B5F: LitI4 -1
  loc_B79B64: LitVarStr var_C4, ","
  loc_B79B69: FStVarCopyObj var_128
  loc_B79B6C: FLdRfVar var_128
  loc_B79B6F: FLdZeroAd var_D8
  loc_B79B72: FStStrNoPop var_CC
  loc_B79B75: FLdRfVar var_13C
  loc_B79B78: ImpAdCallFPR4  = Split(, , , )
  loc_B79B7D: FLdRfVar var_13C
  loc_B79B80: VarIndexLdVar
  loc_B79B86: LitVarStr var_16C, "1"
  loc_B79B8B: HardType
  loc_B79B8C: EqVarBool
  loc_B79B8E: FFreeStr var_C8 = "": var_CC = ""
  loc_B79B97: FFreeVar var_B4 = "": var_E8 = "": var_128 = "": var_13C = ""
  loc_B79BA4: BranchF loc_B79CB4
  loc_B79BA7: LitI4 1
  loc_B79BAC: LitI4 0
  loc_B79BB1: FStStrCopy var_C8
  loc_B79BB4: FLdRfVar var_C8
  loc_B79BB7: ImpAdLdI4 MemVar_C0F044
  loc_B79BBA: LitStr "configuration\settings.ini"
  loc_B79BBD: ConcatStr
  loc_B79BBE: CVarStr var_E8
  loc_B79BC1: LitVarStr var_A4, "welcome_message"
  loc_B79BC6: FStVarCopyObj var_B4
  loc_B79BC9: FLdRfVar var_B4
  loc_B79BCC: LitVarStr var_94, "config"
  loc_B79BD1: PopAdLdVar
  loc_B79BD2: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B79BD7: FStStrNoPop var_CC
  loc_B79BDA: LitStr ","
  loc_B79BDD: LitI4 0
  loc_B79BE2: FnInStr4
  loc_B79BE4: LitI4 0
  loc_B79BE9: NeI4
  loc_B79BEA: FFreeStr var_C8 = ""
  loc_B79BF1: FFreeVar var_B4 = ""
  loc_B79BF8: BranchF loc_B79C89
  loc_B79BFB: LitI4 0
  loc_B79C00: FStStrCopy var_C8
  loc_B79C03: FLdRfVar var_C8
  loc_B79C06: ImpAdLdI4 MemVar_C0F044
  loc_B79C09: LitStr "configuration\settings.ini"
  loc_B79C0C: ConcatStr
  loc_B79C0D: CVarStr var_E8
  loc_B79C10: LitVarStr var_A4, "welcome_message"
  loc_B79C15: FStVarCopyObj var_B4
  loc_B79C18: FLdRfVar var_B4
  loc_B79C1B: LitVarStr var_94, "config"
  loc_B79C20: PopAdLdVar
  loc_B79C21: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B79C26: FStStr var_190
  loc_B79C29: LitVarI2 var_14C, 1
  loc_B79C2E: PopAdLdVar
  loc_B79C2F: LitI4 0
  loc_B79C34: LitI4 2
  loc_B79C39: LitVarStr var_C4, ","
  loc_B79C3E: FStVarCopyObj var_128
  loc_B79C41: FLdRfVar var_128
  loc_B79C44: FLdZeroAd var_190
  loc_B79C47: FStStrNoPop var_CC
  loc_B79C4A: FLdRfVar var_13C
  loc_B79C4D: ImpAdCallFPR4  = Split(, , , )
  loc_B79C52: FLdRfVar var_13C
  loc_B79C55: VarIndexLdVar
  loc_B79C5B: CStrVarVal var_D8
  loc_B79C5F: FLdPrThis
  loc_B79C60: VCallAd Control_ID_Text7
  loc_B79C63: FStAdFunc var_D4
  loc_B79C66: FLdPr var_D4
  loc_B79C69: Me.Text = from_stack_1
  loc_B79C6E: FFreeStr var_C8 = "": var_CC = "": var_D8 = ""
  loc_B79C79: FFree1Ad var_D4
  loc_B79C7C: FFreeVar var_B4 = "": var_E8 = "": var_128 = "": var_13C = ""
  loc_B79C89: LitI2_Byte &HFF
  loc_B79C8B: FLdPrThis
  loc_B79C8C: VCallAd Control_ID_Text7
  loc_B79C8F: FStAdFunc var_D4
  loc_B79C92: FLdPr var_D4
  loc_B79C95: Me.Enabled = from_stack_1b
  loc_B79C9A: FFree1Ad var_D4
  loc_B79C9D: LitI2_Byte 1
  loc_B79C9F: FLdPrThis
  loc_B79CA0: VCallAd Control_ID_Check2
  loc_B79CA3: FStAdFunc var_D4
  loc_B79CA6: FLdPr var_D4
  loc_B79CA9: Me.Value = from_stack_1
  loc_B79CAE: FFree1Ad var_D4
  loc_B79CB1: Branch loc_B79DBE
  loc_B79CB4: LitI4 1
  loc_B79CB9: LitI4 0
  loc_B79CBE: FStStrCopy var_C8
  loc_B79CC1: FLdRfVar var_C8
  loc_B79CC4: ImpAdLdI4 MemVar_C0F044
  loc_B79CC7: LitStr "configuration\settings.ini"
  loc_B79CCA: ConcatStr
  loc_B79CCB: CVarStr var_E8
  loc_B79CCE: LitVarStr var_A4, "welcome_message"
  loc_B79CD3: FStVarCopyObj var_B4
  loc_B79CD6: FLdRfVar var_B4
  loc_B79CD9: LitVarStr var_94, "config"
  loc_B79CDE: PopAdLdVar
  loc_B79CDF: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B79CE4: FStStrNoPop var_CC
  loc_B79CE7: LitStr ","
  loc_B79CEA: LitI4 0
  loc_B79CEF: FnInStr4
  loc_B79CF1: LitI4 0
  loc_B79CF6: NeI4
  loc_B79CF7: FFreeStr var_C8 = ""
  loc_B79CFE: FFreeVar var_B4 = ""
  loc_B79D05: BranchF loc_B79D96
  loc_B79D08: LitI4 0
  loc_B79D0D: FStStrCopy var_C8
  loc_B79D10: FLdRfVar var_C8
  loc_B79D13: ImpAdLdI4 MemVar_C0F044
  loc_B79D16: LitStr "configuration\settings.ini"
  loc_B79D19: ConcatStr
  loc_B79D1A: CVarStr var_E8
  loc_B79D1D: LitVarStr var_A4, "welcome_message"
  loc_B79D22: FStVarCopyObj var_B4
  loc_B79D25: FLdRfVar var_B4
  loc_B79D28: LitVarStr var_94, "config"
  loc_B79D2D: PopAdLdVar
  loc_B79D2E: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B79D33: FStStr var_190
  loc_B79D36: LitVarI2 var_14C, 1
  loc_B79D3B: PopAdLdVar
  loc_B79D3C: LitI4 0
  loc_B79D41: LitI4 2
  loc_B79D46: LitVarStr var_C4, ","
  loc_B79D4B: FStVarCopyObj var_128
  loc_B79D4E: FLdRfVar var_128
  loc_B79D51: FLdZeroAd var_190
  loc_B79D54: FStStrNoPop var_CC
  loc_B79D57: FLdRfVar var_13C
  loc_B79D5A: ImpAdCallFPR4  = Split(, , , )
  loc_B79D5F: FLdRfVar var_13C
  loc_B79D62: VarIndexLdVar
  loc_B79D68: CStrVarVal var_D8
  loc_B79D6C: FLdPrThis
  loc_B79D6D: VCallAd Control_ID_Text7
  loc_B79D70: FStAdFunc var_D4
  loc_B79D73: FLdPr var_D4
  loc_B79D76: Me.Text = from_stack_1
  loc_B79D7B: FFreeStr var_C8 = "": var_CC = "": var_D8 = ""
  loc_B79D86: FFree1Ad var_D4
  loc_B79D89: FFreeVar var_B4 = "": var_E8 = "": var_128 = "": var_13C = ""
  loc_B79D96: LitI2_Byte 0
  loc_B79D98: FLdPrThis
  loc_B79D99: VCallAd Control_ID_Text7
  loc_B79D9C: FStAdFunc var_D4
  loc_B79D9F: FLdPr var_D4
  loc_B79DA2: Me.Enabled = from_stack_1b
  loc_B79DA7: FFree1Ad var_D4
  loc_B79DAA: LitI2_Byte 0
  loc_B79DAC: FLdPrThis
  loc_B79DAD: VCallAd Control_ID_Check2
  loc_B79DB0: FStAdFunc var_D4
  loc_B79DB3: FLdPr var_D4
  loc_B79DB6: Me.Value = from_stack_1
  loc_B79DBB: FFree1Ad var_D4
  loc_B79DBE: LitI4 0
  loc_B79DC3: FStStrCopy var_C8
  loc_B79DC6: FLdRfVar var_C8
  loc_B79DC9: ImpAdLdI4 MemVar_C0F044
  loc_B79DCC: LitStr "configuration\settings.ini"
  loc_B79DCF: ConcatStr
  loc_B79DD0: CVarStr var_E8
  loc_B79DD3: LitVarStr var_A4, "hcbadge"
  loc_B79DD8: FStVarCopyObj var_B4
  loc_B79DDB: FLdRfVar var_B4
  loc_B79DDE: LitVarStr var_94, "HC"
  loc_B79DE3: PopAdLdVar
  loc_B79DE4: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B79DE9: FStStr var_D8
  loc_B79DEC: LitVar_Missing var_13C
  loc_B79DEF: LitI4 2
  loc_B79DF4: FLdZeroAd var_D8
  loc_B79DF7: CVarStr var_128
  loc_B79DFA: FLdRfVar var_17C
  loc_B79DFD: ImpAdCallFPR4  = Mid(, , )
  loc_B79E02: FLdRfVar var_17C
  loc_B79E05: CStrVarVal var_CC
  loc_B79E09: FLdPrThis
  loc_B79E0A: VCallAd Control_ID_Text19
  loc_B79E0D: FStAdFunc var_D4
  loc_B79E10: FLdPr var_D4
  loc_B79E13: Me.Text = from_stack_1
  loc_B79E18: FFreeStr var_C8 = "": var_CC = ""
  loc_B79E21: FFree1Ad var_D4
  loc_B79E24: FFreeVar var_B4 = "": var_E8 = "": var_128 = "": var_13C = ""
  loc_B79E31: LitI4 0
  loc_B79E36: FStStrCopy var_C8
  loc_B79E39: FLdRfVar var_C8
  loc_B79E3C: ImpAdLdI4 MemVar_C0F044
  loc_B79E3F: LitStr "configuration\settings.ini"
  loc_B79E42: ConcatStr
  loc_B79E43: CVarStr var_E8
  loc_B79E46: LitVarStr var_A4, "hcbadge2"
  loc_B79E4B: FStVarCopyObj var_B4
  loc_B79E4E: FLdRfVar var_B4
  loc_B79E51: LitVarStr var_94, "HC"
  loc_B79E56: PopAdLdVar
  loc_B79E57: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B79E5C: FStStr var_D8
  loc_B79E5F: LitVar_Missing var_13C
  loc_B79E62: LitI4 2
  loc_B79E67: FLdZeroAd var_D8
  loc_B79E6A: CVarStr var_128
  loc_B79E6D: FLdRfVar var_17C
  loc_B79E70: ImpAdCallFPR4  = Mid(, , )
  loc_B79E75: FLdRfVar var_17C
  loc_B79E78: CStrVarVal var_CC
  loc_B79E7C: FLdPrThis
  loc_B79E7D: VCallAd Control_ID_Text20
  loc_B79E80: FStAdFunc var_D4
  loc_B79E83: FLdPr var_D4
  loc_B79E86: Me.Text = from_stack_1
  loc_B79E8B: FFreeStr var_C8 = "": var_CC = ""
  loc_B79E94: FFree1Ad var_D4
  loc_B79E97: FFreeVar var_B4 = "": var_E8 = "": var_128 = "": var_13C = ""
  loc_B79EA4: FLdRfVar var_192
  loc_B79EA7: ImpAdLdI4 MemVar_C0F044
  loc_B79EAA: LitStr "new_habbo\directmail\welcome.message"
  loc_B79EAD: ConcatStr
  loc_B79EAE: FStStrNoPop var_C8
  loc_B79EB1: ImpAdLdRf MemVar_C0F040
  loc_B79EB4: NewIfNullPr IFileSystem3
  loc_B79EB7: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B79EBC: FLdI2 var_192
  loc_B79EBF: LitI2_Byte &HFF
  loc_B79EC1: EqI2
  loc_B79EC2: FFree1Str var_C8
  loc_B79EC5: BranchF loc_B7A0EA
  loc_B79EC8: LitI2_Byte 1
  loc_B79ECA: FLdPrThis
  loc_B79ECB: VCallAd Control_ID_Check10
  loc_B79ECE: FStAdFunc var_D4
  loc_B79ED1: FLdPr var_D4
  loc_B79ED4: Me.Value = from_stack_1
  loc_B79ED9: FFree1Ad var_D4
  loc_B79EDC: FLdRfVar var_CC
  loc_B79EDF: FLdRfVar var_D4
  loc_B79EE2: LitI4 0
  loc_B79EE7: LitI2_Byte 0
  loc_B79EE9: LitI4 1
  loc_B79EEE: ImpAdLdI4 MemVar_C0F044
  loc_B79EF1: LitStr "new_habbo\directmail\welcome.message"
  loc_B79EF4: ConcatStr
  loc_B79EF5: FStStrNoPop var_C8
  loc_B79EF8: ImpAdLdRf MemVar_C0F040
  loc_B79EFB: NewIfNullPr IFileSystem3
  loc_B79EFE: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B79F03: FLdPr var_D4
  loc_B79F06:  = Me.ReadAll
  loc_B79F0B: FLdZeroAd var_CC
  loc_B79F0E: CVarStr var_B4
  loc_B79F11: FStVar var_1A4
  loc_B79F15: FFree1Str var_C8
  loc_B79F18: FFree1Ad var_D4
  loc_B79F1B: LitI4 2
  loc_B79F20: FLdRfVar var_B4
  loc_B79F23: ImpAdCallFPR4  = Chr()
  loc_B79F28: LitVarI2 var_94, 0
  loc_B79F2D: PopAdLdVar
  loc_B79F2E: LitI4 0
  loc_B79F33: LitI4 -1
  loc_B79F38: FLdRfVar var_B4
  loc_B79F3B: FLdRfVar var_1A4
  loc_B79F3E: CStrVarVal var_C8
  loc_B79F42: FLdRfVar var_E8
  loc_B79F45: ImpAdCallFPR4  = Split(, , , )
  loc_B79F4A: FLdRfVar var_E8
  loc_B79F4D: VarIndexLdVar
  loc_B79F53: PopAd
  loc_B79F55: LitVarI2 var_14C, 1
  loc_B79F5A: PopAdLdVar
  loc_B79F5B: LitI4 0
  loc_B79F60: LitI4 -1
  loc_B79F65: LitVarStr var_C4, "BEI"
  loc_B79F6A: FStVarCopyObj var_13C
  loc_B79F6D: FLdRfVar var_13C
  loc_B79F70: FLdRfVar var_128
  loc_B79F73: CStrVarVal var_CC
  loc_B79F77: FLdRfVar var_17C
  loc_B79F7A: ImpAdCallFPR4  = Split(, , , )
  loc_B79F7F: FLdRfVar var_17C
  loc_B79F82: VarIndexLdVar
  loc_B79F88: CStrVarVal var_D8
  loc_B79F8C: FLdPrThis
  loc_B79F8D: VCallAd Control_ID_Text21
  loc_B79F90: FStAdFunc var_D4
  loc_B79F93: FLdPr var_D4
  loc_B79F96: Me.Text = from_stack_1
  loc_B79F9B: FFreeStr var_C8 = "": var_CC = ""
  loc_B79FA4: FFree1Ad var_D4
  loc_B79FA7: FFreeVar var_B4 = "": var_E8 = "": var_128 = "": var_13C = "": var_17C = ""
  loc_B79FB6: LitI4 2
  loc_B79FBB: FLdRfVar var_B4
  loc_B79FBE: ImpAdCallFPR4  = Chr()
  loc_B79FC3: LitVarI2 var_94, 1
  loc_B79FC8: PopAdLdVar
  loc_B79FC9: LitI4 0
  loc_B79FCE: LitI4 -1
  loc_B79FD3: FLdRfVar var_B4
  loc_B79FD6: FLdRfVar var_1A4
  loc_B79FD9: CStrVarVal var_C8
  loc_B79FDD: FLdRfVar var_E8
  loc_B79FE0: ImpAdCallFPR4  = Split(, , , )
  loc_B79FE5: FLdRfVar var_E8
  loc_B79FE8: VarIndexLdVar
  loc_B79FEE: CStrVarVal var_CC
  loc_B79FF2: FLdPrThis
  loc_B79FF3: VCallAd Control_ID_Text22
  loc_B79FF6: FStAdFunc var_D4
  loc_B79FF9: FLdPr var_D4
  loc_B79FFC: Me.Text = from_stack_1
  loc_B7A001: FFreeStr var_C8 = ""
  loc_B7A008: FFree1Ad var_D4
  loc_B7A00B: FFreeVar var_B4 = "": var_E8 = ""
  loc_B7A014: LitI4 2
  loc_B7A019: FLdRfVar var_B4
  loc_B7A01C: ImpAdCallFPR4  = Chr()
  loc_B7A021: LitVarI2 var_94, 2
  loc_B7A026: PopAdLdVar
  loc_B7A027: LitI4 0
  loc_B7A02C: LitI4 -1
  loc_B7A031: FLdRfVar var_B4
  loc_B7A034: FLdRfVar var_1A4
  loc_B7A037: CStrVarVal var_C8
  loc_B7A03B: FLdRfVar var_E8
  loc_B7A03E: ImpAdCallFPR4  = Split(, , , )
  loc_B7A043: FLdRfVar var_E8
  loc_B7A046: VarIndexLdVar
  loc_B7A04C: PopAd
  loc_B7A04E: LitI4 &HD
  loc_B7A053: FLdRfVar var_128
  loc_B7A056: ImpAdCallFPR4  = Chr()
  loc_B7A05B: LitI4 0
  loc_B7A060: LitI4 -1
  loc_B7A065: LitI4 1
  loc_B7A06A: LitStr vbCrLf
  loc_B7A06D: FLdRfVar var_128
  loc_B7A070: CStrVarVal var_D8
  loc_B7A074: FLdRfVar var_13C
  loc_B7A077: CStrVarVal var_CC
  loc_B7A07B: ImpAdCallI2 Replace(, , , , , )
  loc_B7A080: FStStrNoPop var_190
  loc_B7A083: FLdPrThis
  loc_B7A084: VCallAd Control_ID_Text23
  loc_B7A087: FStAdFunc var_D4
  loc_B7A08A: FLdPr var_D4
  loc_B7A08D: Me.Text = from_stack_1
  loc_B7A092: FFreeStr var_C8 = "": var_CC = "": var_D8 = ""
  loc_B7A09D: FFree1Ad var_D4
  loc_B7A0A0: FFreeVar var_B4 = "": var_E8 = "": var_13C = ""
  loc_B7A0AB: LitI2_Byte &HFF
  loc_B7A0AD: FLdPrThis
  loc_B7A0AE: VCallAd Control_ID_Text21
  loc_B7A0B1: FStAdFunc var_D4
  loc_B7A0B4: FLdPr var_D4
  loc_B7A0B7: Me.Enabled = from_stack_1b
  loc_B7A0BC: FFree1Ad var_D4
  loc_B7A0BF: LitI2_Byte &HFF
  loc_B7A0C1: FLdPrThis
  loc_B7A0C2: VCallAd Control_ID_Text22
  loc_B7A0C5: FStAdFunc var_D4
  loc_B7A0C8: FLdPr var_D4
  loc_B7A0CB: Me.Enabled = from_stack_1b
  loc_B7A0D0: FFree1Ad var_D4
  loc_B7A0D3: LitI2_Byte &HFF
  loc_B7A0D5: FLdPrThis
  loc_B7A0D6: VCallAd Control_ID_Text23
  loc_B7A0D9: FStAdFunc var_D4
  loc_B7A0DC: FLdPr var_D4
  loc_B7A0DF: Me.Enabled = from_stack_1b
  loc_B7A0E4: FFree1Ad var_D4
  loc_B7A0E7: Branch loc_B7A13A
  loc_B7A0EA: LitI2_Byte 0
  loc_B7A0EC: FLdPrThis
  loc_B7A0ED: VCallAd Control_ID_Check10
  loc_B7A0F0: FStAdFunc var_D4
  loc_B7A0F3: FLdPr var_D4
  loc_B7A0F6: Me.Value = from_stack_1
  loc_B7A0FB: FFree1Ad var_D4
  loc_B7A0FE: LitI2_Byte 0
  loc_B7A100: FLdPrThis
  loc_B7A101: VCallAd Control_ID_Text21
  loc_B7A104: FStAdFunc var_D4
  loc_B7A107: FLdPr var_D4
  loc_B7A10A: Me.Enabled = from_stack_1b
  loc_B7A10F: FFree1Ad var_D4
  loc_B7A112: LitI2_Byte 0
  loc_B7A114: FLdPrThis
  loc_B7A115: VCallAd Control_ID_Text22
  loc_B7A118: FStAdFunc var_D4
  loc_B7A11B: FLdPr var_D4
  loc_B7A11E: Me.Enabled = from_stack_1b
  loc_B7A123: FFree1Ad var_D4
  loc_B7A126: LitI2_Byte 0
  loc_B7A128: FLdPrThis
  loc_B7A129: VCallAd Control_ID_Text23
  loc_B7A12C: FStAdFunc var_D4
  loc_B7A12F: FLdPr var_D4
  loc_B7A132: Me.Enabled = from_stack_1b
  loc_B7A137: FFree1Ad var_D4
  loc_B7A13A: LitStr "SL"
  loc_B7A13D: LitI4 0
  loc_B7A142: FLdRfVar var_1BC
  loc_B7A145: Ary1StStrCopy
  loc_B7A146: LitStr "RL"
  loc_B7A149: LitI4 1
  loc_B7A14E: FLdRfVar var_1BC
  loc_B7A151: Ary1StStrCopy
  loc_B7A152: LitStr "PR"
  loc_B7A155: LitI4 2
  loc_B7A15A: FLdRfVar var_1BC
  loc_B7A15D: Ary1StStrCopy
  loc_B7A15E: LitStr "RQ"
  loc_B7A161: LitI4 3
  loc_B7A166: FLdRfVar var_1BC
  loc_B7A169: Ary1StStrCopy
  loc_B7A16A: LitStr "SV"
  loc_B7A16D: LitI4 4
  loc_B7A172: FLdRfVar var_1BC
  loc_B7A175: Ary1StStrCopy
  loc_B7A176: LitStr "Q]"
  loc_B7A179: LitI4 5
  loc_B7A17E: FLdRfVar var_1BC
  loc_B7A181: Ary1StStrCopy
  loc_B7A182: LitStr "R]"
  loc_B7A185: LitI4 6
  loc_B7A18A: FLdRfVar var_1BC
  loc_B7A18D: Ary1StStrCopy
  loc_B7A18E: LitStr "PL"
  loc_B7A191: LitI4 7
  loc_B7A196: FLdRfVar var_1BC
  loc_B7A199: Ary1StStrCopy
  loc_B7A19A: LitStr "RN"
  loc_B7A19D: LitI4 8
  loc_B7A1A2: FLdRfVar var_1BC
  loc_B7A1A5: Ary1StStrCopy
  loc_B7A1A6: LitStr "RR"
  loc_B7A1A9: LitI4 9
  loc_B7A1AE: FLdRfVar var_1BC
  loc_B7A1B1: Ary1StStrCopy
  loc_B7A1B2: LitVarI2 var_C4, 0
  loc_B7A1B7: FLdRfVar var_F8
  loc_B7A1BA: LitVarI2 var_A4, 9
  loc_B7A1BF: ForVar var_1E0
  loc_B7A1C5: FLdRfVar var_12C
  loc_B7A1C8: FLdRfVar var_F8
  loc_B7A1CB: CI2Var
  loc_B7A1CC: FLdPrThis
  loc_B7A1CD: VCallAd Control_ID_catprop
  loc_B7A1D0: FStAdFunc var_D4
  loc_B7A1D3: FLdPr var_D4
  loc_B7A1D6: Set from_stack_2 = Me(from_stack_1)
  loc_B7A1DB: FLdPr var_12C
  loc_B7A1DE: Me.Clear
  loc_B7A1E3: FFreeAd var_D4 = ""
  loc_B7A1EA: LitVar_Missing var_94
  loc_B7A1ED: PopAdLdVar
  loc_B7A1EE: LitStr "0"
  loc_B7A1F1: FLdRfVar var_12C
  loc_B7A1F4: FLdRfVar var_F8
  loc_B7A1F7: CI2Var
  loc_B7A1F8: FLdPrThis
  loc_B7A1F9: VCallAd Control_ID_catprop
  loc_B7A1FC: FStAdFunc var_D4
  loc_B7A1FF: FLdPr var_D4
  loc_B7A202: Set from_stack_2 = Me(from_stack_1)
  loc_B7A207: FLdPr var_12C
  loc_B7A20A: Me.AddItem from_stack_1, from_stack_2
  loc_B7A20F: FFreeAd var_D4 = ""
  loc_B7A216: LitVar_Missing var_94
  loc_B7A219: PopAdLdVar
  loc_B7A21A: LitStr "1"
  loc_B7A21D: FLdRfVar var_12C
  loc_B7A220: FLdRfVar var_F8
  loc_B7A223: CI2Var
  loc_B7A224: FLdPrThis
  loc_B7A225: VCallAd Control_ID_catprop
  loc_B7A228: FStAdFunc var_D4
  loc_B7A22B: FLdPr var_D4
  loc_B7A22E: Set from_stack_2 = Me(from_stack_1)
  loc_B7A233: FLdPr var_12C
  loc_B7A236: Me.AddItem from_stack_1, from_stack_2
  loc_B7A23B: FFreeAd var_D4 = ""
  loc_B7A242: LitVar_Missing var_94
  loc_B7A245: PopAdLdVar
  loc_B7A246: LitStr "2"
  loc_B7A249: FLdRfVar var_12C
  loc_B7A24C: FLdRfVar var_F8
  loc_B7A24F: CI2Var
  loc_B7A250: FLdPrThis
  loc_B7A251: VCallAd Control_ID_catprop
  loc_B7A254: FStAdFunc var_D4
  loc_B7A257: FLdPr var_D4
  loc_B7A25A: Set from_stack_2 = Me(from_stack_1)
  loc_B7A25F: FLdPr var_12C
  loc_B7A262: Me.AddItem from_stack_1, from_stack_2
  loc_B7A267: FFreeAd var_D4 = ""
  loc_B7A26E: LitI4 0
  loc_B7A273: FStStrCopy var_C8
  loc_B7A276: FLdRfVar var_C8
  loc_B7A279: ImpAdLdI4 MemVar_C0F044
  loc_B7A27C: LitStr "room_categories\categories.ini"
  loc_B7A27F: ConcatStr
  loc_B7A280: CVarStr var_B4
  loc_B7A283: FLdRfVar var_F8
  loc_B7A286: CI4Var
  loc_B7A288: FLdRfVar var_1BC
  loc_B7A28B: Ary1LdRf
  loc_B7A28C: CVarRef
  loc_B7A291: LitVarStr var_94, "categories"
  loc_B7A296: PopAdLdVar
  loc_B7A297: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B7A29C: FStStrNoPop var_CC
  loc_B7A29F: FLdRfVar var_12C
  loc_B7A2A2: FLdRfVar var_F8
  loc_B7A2A5: CI2Var
  loc_B7A2A6: FLdPrThis
  loc_B7A2A7: VCallAd Control_ID_catprop
  loc_B7A2AA: FStAdFunc var_D4
  loc_B7A2AD: FLdPr var_D4
  loc_B7A2B0: Set from_stack_2 = Me(from_stack_1)
  loc_B7A2B5: FLdPr var_12C
  loc_B7A2B8: Me.Text = from_stack_1
  loc_B7A2BD: FFreeStr var_C8 = ""
  loc_B7A2C4: FFreeAd var_D4 = ""
  loc_B7A2CB: FFree1Var var_B4 = ""
  loc_B7A2CE: LitVarStr var_A4, "categorie_"
  loc_B7A2D3: FLdRfVar var_F8
  loc_B7A2D6: LitVarI2 var_94, 1
  loc_B7A2DB: AddVar var_B4
  loc_B7A2DF: ConcatVar var_E8
  loc_B7A2E3: PopAdLdVar
  loc_B7A2E4: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B7A2E9: FStStrNoPop var_C8
  loc_B7A2EC: FLdRfVar var_12C
  loc_B7A2EF: FLdRfVar var_F8
  loc_B7A2F2: CI2Var
  loc_B7A2F3: FLdPrThis
  loc_B7A2F4: VCallAd Control_ID_catname
  loc_B7A2F7: FStAdFunc var_D4
  loc_B7A2FA: FLdPr var_D4
  loc_B7A2FD: Set from_stack_2 = Me(from_stack_1)
  loc_B7A302: FLdPr var_12C
  loc_B7A305: Me.Text = from_stack_1
  loc_B7A30A: FFree1Str var_C8
  loc_B7A30D: FFreeAd var_D4 = ""
  loc_B7A314: FFreeVar var_B4 = ""
  loc_B7A31B: FLdRfVar var_192
  loc_B7A31E: ImpAdLdI4 MemVar_C0F044
  loc_B7A321: LitStr "room_categories\allowtrade_"
  loc_B7A324: ConcatStr
  loc_B7A325: FStStrNoPop var_C8
  loc_B7A328: FLdRfVar var_F8
  loc_B7A32B: CI4Var
  loc_B7A32D: FLdRfVar var_1BC
  loc_B7A330: Ary1LdI4
  loc_B7A331: ConcatStr
  loc_B7A332: FStStrNoPop var_CC
  loc_B7A335: LitStr ".txt"
  loc_B7A338: ConcatStr
  loc_B7A339: FStStrNoPop var_D8
  loc_B7A33C: ImpAdLdRf MemVar_C0F040
  loc_B7A33F: NewIfNullPr IFileSystem3
  loc_B7A342: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B7A347: FLdI2 var_192
  loc_B7A34A: LitI2_Byte &HFF
  loc_B7A34C: EqI2
  loc_B7A34D: FFreeStr var_C8 = "": var_CC = ""
  loc_B7A356: BranchF loc_B7A380
  loc_B7A359: LitI2_Byte 1
  loc_B7A35B: FLdRfVar var_12C
  loc_B7A35E: FLdRfVar var_F8
  loc_B7A361: CI2Var
  loc_B7A362: FLdPrThis
  loc_B7A363: VCallAd Control_ID_allowtraden
  loc_B7A366: FStAdFunc var_D4
  loc_B7A369: FLdPr var_D4
  loc_B7A36C: Set from_stack_2 = Me(from_stack_1)
  loc_B7A371: FLdPr var_12C
  loc_B7A374: Me.Value = from_stack_1
  loc_B7A379: FFreeAd var_D4 = ""
  loc_B7A380: FLdRfVar var_F8
  loc_B7A383: NextStepVar var_1E0
  loc_B7A389: FLdRfVar var_12C
  loc_B7A38C: FLdRfVar var_D4
  loc_B7A38F: ImpAdLdI4 MemVar_C0F044
  loc_B7A392: LitStr "habbos"
  loc_B7A395: ConcatStr
  loc_B7A396: FStStrNoPop var_C8
  loc_B7A399: ImpAdLdRf MemVar_C0F040
  loc_B7A39C: NewIfNullPr IFileSystem3
  loc_B7A39F: from_stack_2 = IFileSystem3.IFileSystem.GetFolder(from_stack_1v)
  loc_B7A3A4: FLdPr var_D4
  loc_B7A3A7:  = Me.SubFolders
  loc_B7A3AC: FLdZeroAd var_12C
  loc_B7A3AF: FStAdFuncNoPop
  loc_B7A3B2: FLdPr Me
  loc_B7A3B5: MemLdRfVar from_stack_1.global_52
  loc_B7A3B8: FFree1Str var_C8
  loc_B7A3BB: FFree1Ad var_D4
  loc_B7A3BE: ForEachCollObj
  loc_B7A3C6: FLdRfVar var_192
  loc_B7A3C9: FLdRfVar var_C8
  loc_B7A3CC: FLdPr Me
  loc_B7A3CF: MemLdPr global_52
  loc_B7A3D2:  = Me.Path
  loc_B7A3D7: ILdRf var_C8
  loc_B7A3DA: LitStr "\name.txt"
  loc_B7A3DD: ConcatStr
  loc_B7A3DE: FStStrNoPop var_CC
  loc_B7A3E1: ImpAdLdRf MemVar_C0F040
  loc_B7A3E4: NewIfNullPr IFileSystem3
  loc_B7A3E7: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B7A3EC: FLdI2 var_192
  loc_B7A3EF: LitI2_Byte &HFF
  loc_B7A3F1: EqI2
  loc_B7A3F2: FFreeStr var_C8 = ""
  loc_B7A3F9: BranchF loc_B7A45F
  loc_B7A3FC: FLdRfVar var_C8
  loc_B7A3FF: FLdPr Me
  loc_B7A402: MemLdPr global_52
  loc_B7A405:  = Me.Path
  loc_B7A40A: FLdRfVar var_D8
  loc_B7A40D: FLdRfVar var_D4
  loc_B7A410: LitI4 0
  loc_B7A415: LitI2_Byte 0
  loc_B7A417: LitI4 1
  loc_B7A41C: ILdRf var_C8
  loc_B7A41F: LitStr "\name.txt"
  loc_B7A422: ConcatStr
  loc_B7A423: FStStrNoPop var_CC
  loc_B7A426: ImpAdLdRf MemVar_C0F040
  loc_B7A429: NewIfNullPr IFileSystem3
  loc_B7A42C: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7A431: FLdPr var_D4
  loc_B7A434:  = Me.ReadAll
  loc_B7A439: LitVar_Missing var_94
  loc_B7A43C: PopAdLdVar
  loc_B7A43D: ILdRf var_D8
  loc_B7A440: FLdPrThis
  loc_B7A441: VCallAd Control_ID_Combo1
  loc_B7A444: FStAdFunc var_12C
  loc_B7A447: FLdPr var_12C
  loc_B7A44A: Me.AddItem from_stack_1, from_stack_2
  loc_B7A44F: FFreeStr var_C8 = "": var_CC = ""
  loc_B7A458: FFreeAd var_D4 = ""
  loc_B7A45F: FLdPr Me
  loc_B7A462: MemLdRfVar from_stack_1.global_52
  loc_B7A465: NextEachCollObj
  loc_B7A46D: FLdRfVar var_12C
  loc_B7A470: FLdRfVar var_D4
  loc_B7A473: ImpAdLdI4 MemVar_C0F044
  loc_B7A476: LitStr "privaterooms"
  loc_B7A479: ConcatStr
  loc_B7A47A: FStStrNoPop var_C8
  loc_B7A47D: ImpAdLdRf MemVar_C0F040
  loc_B7A480: NewIfNullPr IFileSystem3
  loc_B7A483: from_stack_2 = IFileSystem3.IFileSystem.GetFolder(from_stack_1v)
  loc_B7A488: FLdPr var_D4
  loc_B7A48B:  = Me.SubFolders
  loc_B7A490: FLdZeroAd var_12C
  loc_B7A493: FStAdFuncNoPop
  loc_B7A496: FLdPr Me
  loc_B7A499: MemLdRfVar from_stack_1.global_52
  loc_B7A49C: FFree1Str var_C8
  loc_B7A49F: FFree1Ad var_D4
  loc_B7A4A2: ForEachCollObj
  loc_B7A4AA: FLdRfVar var_C8
  loc_B7A4AD: FLdPr Me
  loc_B7A4B0: MemLdPr global_52
  loc_B7A4B3:  = Me.Path
  loc_B7A4B8: LitI4 0
  loc_B7A4BD: LitI4 -1
  loc_B7A4C2: LitVarStr var_94, "\"
  loc_B7A4C7: FStVarCopyObj var_B4
  loc_B7A4CA: FLdRfVar var_B4
  loc_B7A4CD: ILdRf var_C8
  loc_B7A4D0: FLdRfVar var_E8
  loc_B7A4D3: ImpAdCallFPR4  = Split(, , , )
  loc_B7A4D8: FLdRfVar var_E8
  loc_B7A4DB: FStVar var_204
  loc_B7A4DF: FFree1Str var_C8
  loc_B7A4E2: FFree1Var var_B4 = ""
  loc_B7A4E5: LitVarI2 var_C4, 1
  loc_B7A4EA: FLdRfVar var_F8
  loc_B7A4ED: FLdRfVar var_204
  loc_B7A4F0: CRefVarAry
  loc_B7A4F2: PopAdLd4
  loc_B7A4F3: LitI2_Byte 1
  loc_B7A4F5: FnUBound
  loc_B7A4F7: CVarI4
  loc_B7A4FB: ForVar var_224
  loc_B7A501: FLdRfVar var_F8
  loc_B7A504: CDargRef
  loc_B7A508: FLdRfVar var_204
  loc_B7A50B: VarIndexLdVar
  loc_B7A511: CStrVarTmp
  loc_B7A512: FStStr var_1F4
  loc_B7A515: FFree1Var var_B4 = ""
  loc_B7A518: FLdRfVar var_F8
  loc_B7A51B: NextStepVar var_224
  loc_B7A521: FLdRfVar var_192
  loc_B7A524: FLdRfVar var_C8
  loc_B7A527: FLdPr Me
  loc_B7A52A: MemLdPr global_52
  loc_B7A52D:  = Me.Path
  loc_B7A532: ILdRf var_C8
  loc_B7A535: LitStr "\deleted.txt"
  loc_B7A538: ConcatStr
  loc_B7A539: FStStrNoPop var_CC
  loc_B7A53C: ImpAdLdRf MemVar_C0F040
  loc_B7A53F: NewIfNullPr IFileSystem3
  loc_B7A542: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B7A547: FLdI2 var_192
  loc_B7A54A: LitI2_Byte 0
  loc_B7A54C: EqI2
  loc_B7A54D: FFreeStr var_C8 = ""
  loc_B7A554: BranchF loc_B7A626
  loc_B7A557: FLdRfVar var_C8
  loc_B7A55A: FLdPr Me
  loc_B7A55D: MemLdPr global_52
  loc_B7A560:  = Me.Path
  loc_B7A565: FLdRfVar var_D8
  loc_B7A568: FLdRfVar var_D4
  loc_B7A56B: LitI4 0
  loc_B7A570: LitI2_Byte 0
  loc_B7A572: LitI4 1
  loc_B7A577: ILdRf var_C8
  loc_B7A57A: LitStr "\name.txt"
  loc_B7A57D: ConcatStr
  loc_B7A57E: FStStrNoPop var_CC
  loc_B7A581: ImpAdLdRf MemVar_C0F040
  loc_B7A584: NewIfNullPr IFileSystem3
  loc_B7A587: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7A58C: FLdPr var_D4
  loc_B7A58F:  = Me.ReadAll
  loc_B7A594: FLdRfVar var_22C
  loc_B7A597: FLdPr Me
  loc_B7A59A: MemLdPr global_52
  loc_B7A59D:  = Me.Path
  loc_B7A5A2: FLdRfVar var_234
  loc_B7A5A5: FLdRfVar var_12C
  loc_B7A5A8: LitI4 0
  loc_B7A5AD: LitI2_Byte 0
  loc_B7A5AF: LitI4 1
  loc_B7A5B4: ILdRf var_22C
  loc_B7A5B7: LitStr "\owner.txt"
  loc_B7A5BA: ConcatStr
  loc_B7A5BB: FStStrNoPop var_230
  loc_B7A5BE: ImpAdLdRf MemVar_C0F040
  loc_B7A5C1: NewIfNullPr IFileSystem3
  loc_B7A5C4: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7A5C9: FLdPr var_12C
  loc_B7A5CC:  = Me.ReadAll
  loc_B7A5D1: LitVar_Missing var_94
  loc_B7A5D4: PopAdLdVar
  loc_B7A5D5: ILdRf var_1F4
  loc_B7A5D8: LitStr " Name: "
  loc_B7A5DB: ConcatStr
  loc_B7A5DC: FStStrNoPop var_190
  loc_B7A5DF: ILdRf var_D8
  loc_B7A5E2: ConcatStr
  loc_B7A5E3: FStStrNoPop var_228
  loc_B7A5E6: LitStr " Besitzer: "
  loc_B7A5E9: ConcatStr
  loc_B7A5EA: FStStrNoPop var_238
  loc_B7A5ED: ILdRf var_234
  loc_B7A5F0: ConcatStr
  loc_B7A5F1: FStStrNoPop var_23C
  loc_B7A5F4: FLdPrThis
  loc_B7A5F5: VCallAd Control_ID_Combo3
  loc_B7A5F8: FStAdFunc var_240
  loc_B7A5FB: FLdPr var_240
  loc_B7A5FE: Me.AddItem from_stack_1, from_stack_2
  loc_B7A603: FFreeStr var_C8 = "": var_CC = "": var_190 = "": var_D8 = "": var_228 = "": var_22C = "": var_230 = "": var_238 = "": var_234 = ""
  loc_B7A61A: FFreeAd var_D4 = "": var_12C = ""
  loc_B7A623: Branch loc_B7A6F2
  loc_B7A626: FLdRfVar var_C8
  loc_B7A629: FLdPr Me
  loc_B7A62C: MemLdPr global_52
  loc_B7A62F:  = Me.Path
  loc_B7A634: FLdRfVar var_D8
  loc_B7A637: FLdRfVar var_D4
  loc_B7A63A: LitI4 0
  loc_B7A63F: LitI2_Byte 0
  loc_B7A641: LitI4 1
  loc_B7A646: ILdRf var_C8
  loc_B7A649: LitStr "\name.txt"
  loc_B7A64C: ConcatStr
  loc_B7A64D: FStStrNoPop var_CC
  loc_B7A650: ImpAdLdRf MemVar_C0F040
  loc_B7A653: NewIfNullPr IFileSystem3
  loc_B7A656: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7A65B: FLdPr var_D4
  loc_B7A65E:  = Me.ReadAll
  loc_B7A663: FLdRfVar var_22C
  loc_B7A666: FLdPr Me
  loc_B7A669: MemLdPr global_52
  loc_B7A66C:  = Me.Path
  loc_B7A671: FLdRfVar var_234
  loc_B7A674: FLdRfVar var_12C
  loc_B7A677: LitI4 0
  loc_B7A67C: LitI2_Byte 0
  loc_B7A67E: LitI4 1
  loc_B7A683: ILdRf var_22C
  loc_B7A686: LitStr "\owner.txt"
  loc_B7A689: ConcatStr
  loc_B7A68A: FStStrNoPop var_230
  loc_B7A68D: ImpAdLdRf MemVar_C0F040
  loc_B7A690: NewIfNullPr IFileSystem3
  loc_B7A693: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7A698: FLdPr var_12C
  loc_B7A69B:  = Me.ReadAll
  loc_B7A6A0: LitVar_Missing var_94
  loc_B7A6A3: PopAdLdVar
  loc_B7A6A4: ILdRf var_1F4
  loc_B7A6A7: LitStr " Name: "
  loc_B7A6AA: ConcatStr
  loc_B7A6AB: FStStrNoPop var_190
  loc_B7A6AE: ILdRf var_D8
  loc_B7A6B1: ConcatStr
  loc_B7A6B2: FStStrNoPop var_228
  loc_B7A6B5: LitStr " Besitzer: "
  loc_B7A6B8: ConcatStr
  loc_B7A6B9: FStStrNoPop var_238
  loc_B7A6BC: ILdRf var_234
  loc_B7A6BF: ConcatStr
  loc_B7A6C0: FStStrNoPop var_23C
  loc_B7A6C3: FLdPrThis
  loc_B7A6C4: VCallAd Control_ID_Combo5
  loc_B7A6C7: FStAdFunc var_240
  loc_B7A6CA: FLdPr var_240
  loc_B7A6CD: Me.AddItem from_stack_1, from_stack_2
  loc_B7A6D2: FFreeStr var_C8 = "": var_CC = "": var_190 = "": var_D8 = "": var_228 = "": var_22C = "": var_230 = "": var_238 = "": var_234 = ""
  loc_B7A6E9: FFreeAd var_D4 = "": var_12C = ""
  loc_B7A6F2: FLdPr Me
  loc_B7A6F5: MemLdRfVar from_stack_1.global_52
  loc_B7A6F8: NextEachCollObj
  loc_B7A700: FLdRfVar var_CC
  loc_B7A703: FLdRfVar var_D4
  loc_B7A706: LitI4 0
  loc_B7A70B: LitI2_Byte 0
  loc_B7A70D: LitI4 1
  loc_B7A712: ImpAdLdI4 MemVar_C0F044
  loc_B7A715: LitStr "configuration\bobbafilter.ini"
  loc_B7A718: ConcatStr
  loc_B7A719: FStStrNoPop var_C8
  loc_B7A71C: ImpAdLdRf MemVar_C0F040
  loc_B7A71F: NewIfNullPr IFileSystem3
  loc_B7A722: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B7A727: FLdPr var_D4
  loc_B7A72A:  = Me.ReadAll
  loc_B7A72F: LitI4 0
  loc_B7A734: LitI4 -1
  loc_B7A739: LitVarStr var_94, vbCrLf
  loc_B7A73E: FStVarCopyObj var_B4
  loc_B7A741: FLdRfVar var_B4
  loc_B7A744: ILdRf var_CC
  loc_B7A747: FLdRfVar var_E8
  loc_B7A74A: ImpAdCallFPR4  = Split(, , , )
  loc_B7A74F: FLdRfVar var_E8
  loc_B7A752: FStVar var_250
  loc_B7A756: FFreeStr var_C8 = ""
  loc_B7A75D: FFree1Ad var_D4
  loc_B7A760: FFree1Var var_B4 = ""
  loc_B7A763: FLdPrThis
  loc_B7A764: VCallAd Control_ID_List1
  loc_B7A767: FStAdFunc var_D4
  loc_B7A76A: FLdPr var_D4
  loc_B7A76D: Me.Clear
  loc_B7A772: FFree1Ad var_D4
  loc_B7A775: LitVarI2 var_C4, 0
  loc_B7A77A: FLdRfVar var_F8
  loc_B7A77D: FLdRfVar var_250
  loc_B7A780: CRefVarAry
  loc_B7A782: PopAdLd4
  loc_B7A783: LitI2_Byte 1
  loc_B7A785: FnUBound
  loc_B7A787: CVarI4
  loc_B7A78B: ForVar var_270
  loc_B7A791: FLdRfVar var_F8
  loc_B7A794: CDargRef
  loc_B7A798: FLdRfVar var_250
  loc_B7A79B: VarIndexLdVar
  loc_B7A7A1: LitVarStr var_A4, vbNullString
  loc_B7A7A6: HardType
  loc_B7A7A7: NeVarBool
  loc_B7A7A9: FFree1Var var_B4 = ""
  loc_B7A7AC: BranchF loc_B7A7DF
  loc_B7A7AF: LitVar_Missing var_A4
  loc_B7A7B2: PopAdLdVar
  loc_B7A7B3: FLdRfVar var_F8
  loc_B7A7B6: CDargRef
  loc_B7A7BA: FLdRfVar var_250
  loc_B7A7BD: VarIndexLdVar
  loc_B7A7C3: CStrVarVal var_C8
  loc_B7A7C7: FLdPrThis
  loc_B7A7C8: VCallAd Control_ID_List1
  loc_B7A7CB: FStAdFunc var_D4
  loc_B7A7CE: FLdPr var_D4
  loc_B7A7D1: Me.AddItem from_stack_1, from_stack_2
  loc_B7A7D6: FFree1Str var_C8
  loc_B7A7D9: FFree1Ad var_D4
  loc_B7A7DC: FFree1Var var_B4 = ""
  loc_B7A7DF: FLdRfVar var_F8
  loc_B7A7E2: NextStepVar var_270
  loc_B7A7E8: ExitProcHresult
End Sub

Private Sub Combo1_Click() 'B4DE10
  'Data Table: 549FD0
  loc_B4D660: FLdRfVar var_8C
  loc_B4D663: FLdPrThis
  loc_B4D664: VCallAd Control_ID_Combo1
  loc_B4D667: FStAdFunc var_88
  loc_B4D66A: FLdPr var_88
  loc_B4D66D:  = Me.Text
  loc_B4D672: LitI4 1
  loc_B4D677: FLdZeroAd var_8C
  loc_B4D67A: CVarStr var_9C
  loc_B4D67D: FLdRfVar var_AC
  loc_B4D680: ImpAdCallFPR4  = Left(, )
  loc_B4D685: FLdRfVar var_AC
  loc_B4D688: LitVarStr var_BC, " "
  loc_B4D68D: HardType
  loc_B4D68E: NeVarBool
  loc_B4D690: FFree1Ad var_88
  loc_B4D693: FFreeVar var_9C = ""
  loc_B4D69A: BranchF loc_B4DDCF
  loc_B4D69D: FLdRfVar var_E2
  loc_B4D6A0: ImpAdLdI4 MemVar_C0F044
  loc_B4D6A3: LitStr "habbos\"
  loc_B4D6A6: ConcatStr
  loc_B4D6A7: CVarStr var_CC
  loc_B4D6AA: FLdRfVar var_8C
  loc_B4D6AD: FLdPrThis
  loc_B4D6AE: VCallAd Control_ID_Combo1
  loc_B4D6B1: FStAdFunc var_88
  loc_B4D6B4: FLdPr var_88
  loc_B4D6B7:  = Me.Text
  loc_B4D6BC: FLdZeroAd var_8C
  loc_B4D6BF: CVarStr var_9C
  loc_B4D6C2: FLdRfVar var_AC
  loc_B4D6C5: ImpAdCallFPR4  = LCase()
  loc_B4D6CA: FLdRfVar var_AC
  loc_B4D6CD: ConcatVar var_DC
  loc_B4D6D1: CStrVarVal var_E0
  loc_B4D6D5: ImpAdLdRf MemVar_C0F040
  loc_B4D6D8: NewIfNullPr IFileSystem3
  loc_B4D6DB: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B4D6E0: FLdI2 var_E2
  loc_B4D6E3: LitI2_Byte &HFF
  loc_B4D6E5: EqI2
  loc_B4D6E6: FFree1Str var_E0
  loc_B4D6E9: FFree1Ad var_88
  loc_B4D6EC: FFreeVar var_9C = "": var_CC = "": var_AC = ""
  loc_B4D6F7: BranchF loc_B4DD8F
  loc_B4D6FA: FLdRfVar var_8C
  loc_B4D6FD: FLdPrThis
  loc_B4D6FE: VCallAd Control_ID_Combo1
  loc_B4D701: FStAdFunc var_88
  loc_B4D704: FLdPr var_88
  loc_B4D707:  = Me.Text
  loc_B4D70C: FLdZeroAd var_8C
  loc_B4D70F: CVarStr var_9C
  loc_B4D712: FLdRfVar var_AC
  loc_B4D715: ImpAdCallFPR4  = LCase()
  loc_B4D71A: FLdRfVar var_FC
  loc_B4D71D: FLdRfVar var_F8
  loc_B4D720: LitI4 0
  loc_B4D725: LitI2_Byte 0
  loc_B4D727: LitI4 1
  loc_B4D72C: ImpAdLdI4 MemVar_C0F044
  loc_B4D72F: LitStr "habbos\"
  loc_B4D732: ConcatStr
  loc_B4D733: CVarStr var_CC
  loc_B4D736: FLdRfVar var_AC
  loc_B4D739: ConcatVar var_DC
  loc_B4D73D: LitVarStr var_BC, "\name.txt"
  loc_B4D742: ConcatVar var_F4
  loc_B4D746: CStrVarVal var_E0
  loc_B4D74A: ImpAdLdRf MemVar_C0F040
  loc_B4D74D: NewIfNullPr IFileSystem3
  loc_B4D750: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4D755: FLdPr var_F8
  loc_B4D758:  = Me.ReadAll
  loc_B4D75D: ILdRf var_FC
  loc_B4D760: FLdPrThis
  loc_B4D761: VCallAd Control_ID_Text8
  loc_B4D764: FStAdFunc var_100
  loc_B4D767: FLdPr var_100
  loc_B4D76A: Me.Text = from_stack_1
  loc_B4D76F: FFreeStr var_E0 = ""
  loc_B4D776: FFreeAd var_88 = "": var_F8 = ""
  loc_B4D77F: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B4D78C: FLdRfVar var_8C
  loc_B4D78F: FLdPrThis
  loc_B4D790: VCallAd Control_ID_Combo1
  loc_B4D793: FStAdFunc var_88
  loc_B4D796: FLdPr var_88
  loc_B4D799:  = Me.Text
  loc_B4D79E: FLdZeroAd var_8C
  loc_B4D7A1: CVarStr var_9C
  loc_B4D7A4: FLdRfVar var_AC
  loc_B4D7A7: ImpAdCallFPR4  = LCase()
  loc_B4D7AC: FLdRfVar var_FC
  loc_B4D7AF: FLdRfVar var_F8
  loc_B4D7B2: LitI4 0
  loc_B4D7B7: LitI2_Byte 0
  loc_B4D7B9: LitI4 1
  loc_B4D7BE: ImpAdLdI4 MemVar_C0F044
  loc_B4D7C1: LitStr "habbos\"
  loc_B4D7C4: ConcatStr
  loc_B4D7C5: CVarStr var_CC
  loc_B4D7C8: FLdRfVar var_AC
  loc_B4D7CB: ConcatVar var_DC
  loc_B4D7CF: LitVarStr var_BC, "\pass.txt"
  loc_B4D7D4: ConcatVar var_F4
  loc_B4D7D8: CStrVarVal var_E0
  loc_B4D7DC: ImpAdLdRf MemVar_C0F040
  loc_B4D7DF: NewIfNullPr IFileSystem3
  loc_B4D7E2: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4D7E7: FLdPr var_F8
  loc_B4D7EA:  = Me.ReadAll
  loc_B4D7EF: ILdRf var_FC
  loc_B4D7F2: FLdPrThis
  loc_B4D7F3: VCallAd Control_ID_Text9
  loc_B4D7F6: FStAdFunc var_100
  loc_B4D7F9: FLdPr var_100
  loc_B4D7FC: Me.Text = from_stack_1
  loc_B4D801: FFreeStr var_E0 = ""
  loc_B4D808: FFreeAd var_88 = "": var_F8 = ""
  loc_B4D811: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B4D81E: FLdRfVar var_8C
  loc_B4D821: FLdPrThis
  loc_B4D822: VCallAd Control_ID_Combo1
  loc_B4D825: FStAdFunc var_88
  loc_B4D828: FLdPr var_88
  loc_B4D82B:  = Me.Text
  loc_B4D830: FLdZeroAd var_8C
  loc_B4D833: CVarStr var_9C
  loc_B4D836: FLdRfVar var_AC
  loc_B4D839: ImpAdCallFPR4  = LCase()
  loc_B4D83E: FLdRfVar var_FC
  loc_B4D841: FLdRfVar var_F8
  loc_B4D844: LitI4 0
  loc_B4D849: LitI2_Byte 0
  loc_B4D84B: LitI4 1
  loc_B4D850: ImpAdLdI4 MemVar_C0F044
  loc_B4D853: LitStr "habbos\"
  loc_B4D856: ConcatStr
  loc_B4D857: CVarStr var_CC
  loc_B4D85A: FLdRfVar var_AC
  loc_B4D85D: ConcatVar var_DC
  loc_B4D861: LitVarStr var_BC, "\mission.txt"
  loc_B4D866: ConcatVar var_F4
  loc_B4D86A: CStrVarVal var_E0
  loc_B4D86E: ImpAdLdRf MemVar_C0F040
  loc_B4D871: NewIfNullPr IFileSystem3
  loc_B4D874: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4D879: FLdPr var_F8
  loc_B4D87C:  = Me.ReadAll
  loc_B4D881: ILdRf var_FC
  loc_B4D884: FLdPrThis
  loc_B4D885: VCallAd Control_ID_Text10
  loc_B4D888: FStAdFunc var_100
  loc_B4D88B: FLdPr var_100
  loc_B4D88E: Me.Text = from_stack_1
  loc_B4D893: FFreeStr var_E0 = ""
  loc_B4D89A: FFreeAd var_88 = "": var_F8 = ""
  loc_B4D8A3: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B4D8B0: FLdRfVar var_8C
  loc_B4D8B3: FLdPrThis
  loc_B4D8B4: VCallAd Control_ID_Combo1
  loc_B4D8B7: FStAdFunc var_88
  loc_B4D8BA: FLdPr var_88
  loc_B4D8BD:  = Me.Text
  loc_B4D8C2: FLdZeroAd var_8C
  loc_B4D8C5: CVarStr var_9C
  loc_B4D8C8: FLdRfVar var_AC
  loc_B4D8CB: ImpAdCallFPR4  = LCase()
  loc_B4D8D0: FLdRfVar var_FC
  loc_B4D8D3: FLdRfVar var_F8
  loc_B4D8D6: LitI4 0
  loc_B4D8DB: LitI2_Byte 0
  loc_B4D8DD: LitI4 1
  loc_B4D8E2: ImpAdLdI4 MemVar_C0F044
  loc_B4D8E5: LitStr "habbos\"
  loc_B4D8E8: ConcatStr
  loc_B4D8E9: CVarStr var_CC
  loc_B4D8EC: FLdRfVar var_AC
  loc_B4D8EF: ConcatVar var_DC
  loc_B4D8F3: LitVarStr var_BC, "\email.txt"
  loc_B4D8F8: ConcatVar var_F4
  loc_B4D8FC: CStrVarVal var_E0
  loc_B4D900: ImpAdLdRf MemVar_C0F040
  loc_B4D903: NewIfNullPr IFileSystem3
  loc_B4D906: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4D90B: FLdPr var_F8
  loc_B4D90E:  = Me.ReadAll
  loc_B4D913: ILdRf var_FC
  loc_B4D916: FLdPrThis
  loc_B4D917: VCallAd Control_ID_Text25
  loc_B4D91A: FStAdFunc var_100
  loc_B4D91D: FLdPr var_100
  loc_B4D920: Me.Text = from_stack_1
  loc_B4D925: FFreeStr var_E0 = ""
  loc_B4D92C: FFreeAd var_88 = "": var_F8 = ""
  loc_B4D935: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B4D942: FLdRfVar var_8C
  loc_B4D945: FLdPrThis
  loc_B4D946: VCallAd Control_ID_Combo1
  loc_B4D949: FStAdFunc var_88
  loc_B4D94C: FLdPr var_88
  loc_B4D94F:  = Me.Text
  loc_B4D954: FLdZeroAd var_8C
  loc_B4D957: CVarStr var_9C
  loc_B4D95A: FLdRfVar var_AC
  loc_B4D95D: ImpAdCallFPR4  = LCase()
  loc_B4D962: FLdRfVar var_FC
  loc_B4D965: FLdRfVar var_F8
  loc_B4D968: LitI4 0
  loc_B4D96D: LitI2_Byte 0
  loc_B4D96F: LitI4 1
  loc_B4D974: ImpAdLdI4 MemVar_C0F044
  loc_B4D977: LitStr "habbos\"
  loc_B4D97A: ConcatStr
  loc_B4D97B: CVarStr var_CC
  loc_B4D97E: FLdRfVar var_AC
  loc_B4D981: ConcatVar var_DC
  loc_B4D985: LitVarStr var_BC, "\birth.txt"
  loc_B4D98A: ConcatVar var_F4
  loc_B4D98E: CStrVarVal var_E0
  loc_B4D992: ImpAdLdRf MemVar_C0F040
  loc_B4D995: NewIfNullPr IFileSystem3
  loc_B4D998: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4D99D: FLdPr var_F8
  loc_B4D9A0:  = Me.ReadAll
  loc_B4D9A5: ILdRf var_FC
  loc_B4D9A8: FLdPrThis
  loc_B4D9A9: VCallAd Control_ID_Text26
  loc_B4D9AC: FStAdFunc var_100
  loc_B4D9AF: FLdPr var_100
  loc_B4D9B2: Me.Text = from_stack_1
  loc_B4D9B7: FFreeStr var_E0 = ""
  loc_B4D9BE: FFreeAd var_88 = "": var_F8 = ""
  loc_B4D9C7: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B4D9D4: FLdRfVar var_8C
  loc_B4D9D7: FLdPrThis
  loc_B4D9D8: VCallAd Control_ID_Combo1
  loc_B4D9DB: FStAdFunc var_88
  loc_B4D9DE: FLdPr var_88
  loc_B4D9E1:  = Me.Text
  loc_B4D9E6: FLdZeroAd var_8C
  loc_B4D9E9: CVarStr var_9C
  loc_B4D9EC: FLdRfVar var_AC
  loc_B4D9EF: ImpAdCallFPR4  = LCase()
  loc_B4D9F4: FLdRfVar var_FC
  loc_B4D9F7: FLdRfVar var_F8
  loc_B4D9FA: LitI4 0
  loc_B4D9FF: LitI2_Byte 0
  loc_B4DA01: LitI4 1
  loc_B4DA06: ImpAdLdI4 MemVar_C0F044
  loc_B4DA09: LitStr "habbos\"
  loc_B4DA0C: ConcatStr
  loc_B4DA0D: CVarStr var_CC
  loc_B4DA10: FLdRfVar var_AC
  loc_B4DA13: ConcatVar var_DC
  loc_B4DA17: LitVarStr var_BC, "\badges.txt"
  loc_B4DA1C: ConcatVar var_F4
  loc_B4DA20: CStrVarVal var_E0
  loc_B4DA24: ImpAdLdRf MemVar_C0F040
  loc_B4DA27: NewIfNullPr IFileSystem3
  loc_B4DA2A: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4DA2F: FLdPr var_F8
  loc_B4DA32:  = Me.ReadAll
  loc_B4DA37: ILdRf var_FC
  loc_B4DA3A: FLdPrThis
  loc_B4DA3B: VCallAd Control_ID_Text27
  loc_B4DA3E: FStAdFunc var_100
  loc_B4DA41: FLdPr var_100
  loc_B4DA44: Me.Text = from_stack_1
  loc_B4DA49: FFreeStr var_E0 = ""
  loc_B4DA50: FFreeAd var_88 = "": var_F8 = ""
  loc_B4DA59: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B4DA66: FLdRfVar var_8C
  loc_B4DA69: FLdPrThis
  loc_B4DA6A: VCallAd Control_ID_Combo1
  loc_B4DA6D: FStAdFunc var_88
  loc_B4DA70: FLdPr var_88
  loc_B4DA73:  = Me.Text
  loc_B4DA78: FLdZeroAd var_8C
  loc_B4DA7B: CVarStr var_9C
  loc_B4DA7E: FLdRfVar var_AC
  loc_B4DA81: ImpAdCallFPR4  = LCase()
  loc_B4DA86: FLdRfVar var_FC
  loc_B4DA89: FLdRfVar var_F8
  loc_B4DA8C: LitI4 0
  loc_B4DA91: LitI2_Byte 0
  loc_B4DA93: LitI4 1
  loc_B4DA98: ImpAdLdI4 MemVar_C0F044
  loc_B4DA9B: LitStr "habbos\"
  loc_B4DA9E: ConcatStr
  loc_B4DA9F: CVarStr var_CC
  loc_B4DAA2: FLdRfVar var_AC
  loc_B4DAA5: ConcatVar var_DC
  loc_B4DAA9: LitVarStr var_BC, "\poolfigure.txt"
  loc_B4DAAE: ConcatVar var_F4
  loc_B4DAB2: CStrVarVal var_E0
  loc_B4DAB6: ImpAdLdRf MemVar_C0F040
  loc_B4DAB9: NewIfNullPr IFileSystem3
  loc_B4DABC: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4DAC1: FLdPr var_F8
  loc_B4DAC4:  = Me.ReadAll
  loc_B4DAC9: ILdRf var_FC
  loc_B4DACC: FLdPrThis
  loc_B4DACD: VCallAd Control_ID_Text28
  loc_B4DAD0: FStAdFunc var_100
  loc_B4DAD3: FLdPr var_100
  loc_B4DAD6: Me.Text = from_stack_1
  loc_B4DADB: FFreeStr var_E0 = ""
  loc_B4DAE2: FFreeAd var_88 = "": var_F8 = ""
  loc_B4DAEB: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B4DAF8: FLdPrThis
  loc_B4DAF9: VCallAd Control_ID_Combo2
  loc_B4DAFC: FStAdFunc var_88
  loc_B4DAFF: FLdPr var_88
  loc_B4DB02: Me.Clear
  loc_B4DB07: FFree1Ad var_88
  loc_B4DB0A: LitVar_Missing var_BC
  loc_B4DB0D: PopAdLdVar
  loc_B4DB0E: LitStr "habbo"
  loc_B4DB11: FLdPrThis
  loc_B4DB12: VCallAd Control_ID_Combo2
  loc_B4DB15: FStAdFunc var_88
  loc_B4DB18: FLdPr var_88
  loc_B4DB1B: Me.AddItem from_stack_1, from_stack_2
  loc_B4DB20: FFree1Ad var_88
  loc_B4DB23: LitVar_Missing var_BC
  loc_B4DB26: PopAdLdVar
  loc_B4DB27: LitStr "habbox"
  loc_B4DB2A: FLdPrThis
  loc_B4DB2B: VCallAd Control_ID_Combo2
  loc_B4DB2E: FStAdFunc var_88
  loc_B4DB31: FLdPr var_88
  loc_B4DB34: Me.AddItem from_stack_1, from_stack_2
  loc_B4DB39: FFree1Ad var_88
  loc_B4DB3C: LitVar_Missing var_BC
  loc_B4DB3F: PopAdLdVar
  loc_B4DB40: LitStr "silver"
  loc_B4DB43: FLdPrThis
  loc_B4DB44: VCallAd Control_ID_Combo2
  loc_B4DB47: FStAdFunc var_88
  loc_B4DB4A: FLdPr var_88
  loc_B4DB4D: Me.AddItem from_stack_1, from_stack_2
  loc_B4DB52: FFree1Ad var_88
  loc_B4DB55: LitVar_Missing var_BC
  loc_B4DB58: PopAdLdVar
  loc_B4DB59: LitStr "gold"
  loc_B4DB5C: FLdPrThis
  loc_B4DB5D: VCallAd Control_ID_Combo2
  loc_B4DB60: FStAdFunc var_88
  loc_B4DB63: FLdPr var_88
  loc_B4DB66: Me.AddItem from_stack_1, from_stack_2
  loc_B4DB6B: FFree1Ad var_88
  loc_B4DB6E: LitVar_Missing var_BC
  loc_B4DB71: PopAdLdVar
  loc_B4DB72: LitStr "moderator"
  loc_B4DB75: FLdPrThis
  loc_B4DB76: VCallAd Control_ID_Combo2
  loc_B4DB79: FStAdFunc var_88
  loc_B4DB7C: FLdPr var_88
  loc_B4DB7F: Me.AddItem from_stack_1, from_stack_2
  loc_B4DB84: FFree1Ad var_88
  loc_B4DB87: LitVar_Missing var_BC
  loc_B4DB8A: PopAdLdVar
  loc_B4DB8B: LitStr "admin"
  loc_B4DB8E: FLdPrThis
  loc_B4DB8F: VCallAd Control_ID_Combo2
  loc_B4DB92: FStAdFunc var_88
  loc_B4DB95: FLdPr var_88
  loc_B4DB98: Me.AddItem from_stack_1, from_stack_2
  loc_B4DB9D: FFree1Ad var_88
  loc_B4DBA0: FLdRfVar var_8C
  loc_B4DBA3: FLdPrThis
  loc_B4DBA4: VCallAd Control_ID_Combo1
  loc_B4DBA7: FStAdFunc var_88
  loc_B4DBAA: FLdPr var_88
  loc_B4DBAD:  = Me.Text
  loc_B4DBB2: FLdZeroAd var_8C
  loc_B4DBB5: CVarStr var_9C
  loc_B4DBB8: FLdRfVar var_AC
  loc_B4DBBB: ImpAdCallFPR4  = LCase()
  loc_B4DBC0: FLdRfVar var_FC
  loc_B4DBC3: FLdRfVar var_F8
  loc_B4DBC6: LitI4 0
  loc_B4DBCB: LitI2_Byte 0
  loc_B4DBCD: LitI4 1
  loc_B4DBD2: ImpAdLdI4 MemVar_C0F044
  loc_B4DBD5: LitStr "habbos\"
  loc_B4DBD8: ConcatStr
  loc_B4DBD9: CVarStr var_CC
  loc_B4DBDC: FLdRfVar var_AC
  loc_B4DBDF: ConcatVar var_DC
  loc_B4DBE3: LitVarStr var_BC, "\rank.txt"
  loc_B4DBE8: ConcatVar var_F4
  loc_B4DBEC: CStrVarVal var_E0
  loc_B4DBF0: ImpAdLdRf MemVar_C0F040
  loc_B4DBF3: NewIfNullPr IFileSystem3
  loc_B4DBF6: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4DBFB: FLdPr var_F8
  loc_B4DBFE:  = Me.ReadAll
  loc_B4DC03: ILdRf var_FC
  loc_B4DC06: FLdPrThis
  loc_B4DC07: VCallAd Control_ID_Combo2
  loc_B4DC0A: FStAdFunc var_100
  loc_B4DC0D: FLdPr var_100
  loc_B4DC10: Me.Text = from_stack_1
  loc_B4DC15: FFreeStr var_E0 = ""
  loc_B4DC1C: FFreeAd var_88 = "": var_F8 = ""
  loc_B4DC25: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B4DC32: FLdRfVar var_8C
  loc_B4DC35: FLdPrThis
  loc_B4DC36: VCallAd Control_ID_Combo1
  loc_B4DC39: FStAdFunc var_88
  loc_B4DC3C: FLdPr var_88
  loc_B4DC3F:  = Me.Text
  loc_B4DC44: FLdZeroAd var_8C
  loc_B4DC47: CVarStr var_9C
  loc_B4DC4A: FLdRfVar var_AC
  loc_B4DC4D: ImpAdCallFPR4  = LCase()
  loc_B4DC52: FLdRfVar var_FC
  loc_B4DC55: FLdRfVar var_F8
  loc_B4DC58: LitI4 0
  loc_B4DC5D: LitI2_Byte 0
  loc_B4DC5F: LitI4 1
  loc_B4DC64: ImpAdLdI4 MemVar_C0F044
  loc_B4DC67: LitStr "habbos\"
  loc_B4DC6A: ConcatStr
  loc_B4DC6B: CVarStr var_CC
  loc_B4DC6E: FLdRfVar var_AC
  loc_B4DC71: ConcatVar var_DC
  loc_B4DC75: LitVarStr var_BC, "\credits.txt"
  loc_B4DC7A: ConcatVar var_F4
  loc_B4DC7E: CStrVarVal var_E0
  loc_B4DC82: ImpAdLdRf MemVar_C0F040
  loc_B4DC85: NewIfNullPr IFileSystem3
  loc_B4DC88: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4DC8D: FLdPr var_F8
  loc_B4DC90:  = Me.ReadAll
  loc_B4DC95: ILdRf var_FC
  loc_B4DC98: FLdPrThis
  loc_B4DC99: VCallAd Control_ID_Text11
  loc_B4DC9C: FStAdFunc var_100
  loc_B4DC9F: FLdPr var_100
  loc_B4DCA2: Me.Text = from_stack_1
  loc_B4DCA7: FFreeStr var_E0 = ""
  loc_B4DCAE: FFreeAd var_88 = "": var_F8 = ""
  loc_B4DCB7: FFreeVar var_9C = "": var_CC = "": var_AC = "": var_DC = ""
  loc_B4DCC4: LitI2_Byte &HFF
  loc_B4DCC6: FLdPrThis
  loc_B4DCC7: VCallAd Control_ID_Text9
  loc_B4DCCA: FStAdFunc var_88
  loc_B4DCCD: FLdPr var_88
  loc_B4DCD0: Me.Enabled = from_stack_1b
  loc_B4DCD5: FFree1Ad var_88
  loc_B4DCD8: LitI2_Byte &HFF
  loc_B4DCDA: FLdPrThis
  loc_B4DCDB: VCallAd Control_ID_Text10
  loc_B4DCDE: FStAdFunc var_88
  loc_B4DCE1: FLdPr var_88
  loc_B4DCE4: Me.Enabled = from_stack_1b
  loc_B4DCE9: FFree1Ad var_88
  loc_B4DCEC: LitI2_Byte &HFF
  loc_B4DCEE: FLdPrThis
  loc_B4DCEF: VCallAd Control_ID_Combo2
  loc_B4DCF2: FStAdFunc var_88
  loc_B4DCF5: FLdPr var_88
  loc_B4DCF8: Me.Enabled = from_stack_1b
  loc_B4DCFD: FFree1Ad var_88
  loc_B4DD00: LitI2_Byte &HFF
  loc_B4DD02: FLdPrThis
  loc_B4DD03: VCallAd Control_ID_Text11
  loc_B4DD06: FStAdFunc var_88
  loc_B4DD09: FLdPr var_88
  loc_B4DD0C: Me.Enabled = from_stack_1b
  loc_B4DD11: FFree1Ad var_88
  loc_B4DD14: LitI2_Byte &HFF
  loc_B4DD16: FLdPrThis
  loc_B4DD17: VCallAd Control_ID_Text28
  loc_B4DD1A: FStAdFunc var_88
  loc_B4DD1D: FLdPr var_88
  loc_B4DD20: Me.Enabled = from_stack_1b
  loc_B4DD25: FFree1Ad var_88
  loc_B4DD28: LitI2_Byte &HFF
  loc_B4DD2A: FLdPrThis
  loc_B4DD2B: VCallAd Control_ID_Text25
  loc_B4DD2E: FStAdFunc var_88
  loc_B4DD31: FLdPr var_88
  loc_B4DD34: Me.Enabled = from_stack_1b
  loc_B4DD39: FFree1Ad var_88
  loc_B4DD3C: LitI2_Byte &HFF
  loc_B4DD3E: FLdPrThis
  loc_B4DD3F: VCallAd Control_ID_Text26
  loc_B4DD42: FStAdFunc var_88
  loc_B4DD45: FLdPr var_88
  loc_B4DD48: Me.Enabled = from_stack_1b
  loc_B4DD4D: FFree1Ad var_88
  loc_B4DD50: LitI2_Byte &HFF
  loc_B4DD52: FLdPrThis
  loc_B4DD53: VCallAd Control_ID_Text27
  loc_B4DD56: FStAdFunc var_88
  loc_B4DD59: FLdPr var_88
  loc_B4DD5C: Me.Enabled = from_stack_1b
  loc_B4DD61: FFree1Ad var_88
  loc_B4DD64: LitI2_Byte &HFF
  loc_B4DD66: FLdPrThis
  loc_B4DD67: VCallAd Control_ID_Command8
  loc_B4DD6A: FStAdFunc var_88
  loc_B4DD6D: FLdPr var_88
  loc_B4DD70: Me.Enabled = from_stack_1b
  loc_B4DD75: FFree1Ad var_88
  loc_B4DD78: LitI2_Byte &HFF
  loc_B4DD7A: FLdPrThis
  loc_B4DD7B: VCallAd Control_ID_Command9
  loc_B4DD7E: FStAdFunc var_88
  loc_B4DD81: FLdPr var_88
  loc_B4DD84: Me.Enabled = from_stack_1b
  loc_B4DD89: FFree1Ad var_88
  loc_B4DD8C: Branch loc_B4DDCC
  loc_B4DD8F: LitVarStr var_BC, "user_doesnt_exists"
  loc_B4DD94: PopAdLdVar
  loc_B4DD95: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4DD9A: FStStr var_8C
  loc_B4DD9D: LitVar_Missing var_DC
  loc_B4DDA0: LitVar_Missing var_CC
  loc_B4DDA3: LitVarStr var_110, "Server"
  loc_B4DDA8: FStVarCopyObj var_AC
  loc_B4DDAB: FLdRfVar var_AC
  loc_B4DDAE: LitI4 &H10
  loc_B4DDB3: FLdZeroAd var_8C
  loc_B4DDB6: CVarStr var_9C
  loc_B4DDB9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B4DDBE: FFree1Str var_8C
  loc_B4DDC1: FFreeVar var_9C = "": var_AC = "": var_CC = ""
  loc_B4DDCC: Branch loc_B4DE0C
  loc_B4DDCF: LitVarStr var_BC, "name_invalid"
  loc_B4DDD4: PopAdLdVar
  loc_B4DDD5: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4DDDA: FStStr var_8C
  loc_B4DDDD: LitVar_Missing var_DC
  loc_B4DDE0: LitVar_Missing var_CC
  loc_B4DDE3: LitVarStr var_110, "Server"
  loc_B4DDE8: FStVarCopyObj var_AC
  loc_B4DDEB: FLdRfVar var_AC
  loc_B4DDEE: LitI4 &H10
  loc_B4DDF3: FLdZeroAd var_8C
  loc_B4DDF6: CVarStr var_9C
  loc_B4DDF9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B4DDFE: FFree1Str var_8C
  loc_B4DE01: FFreeVar var_9C = "": var_AC = "": var_CC = ""
  loc_B4DE0C: ExitProcHresult
End Sub

Private Function Proc_31_31_B5AF9C() 'B5AF9C
  'Data Table: 549FD0
  loc_B5A530: ZeroRetValVar
  loc_B5A532: LitVarI2 var_D4, 0
  loc_B5A537: FLdRfVar var_A4
  loc_B5A53A: LitVarI2 var_C4, 20
  loc_B5A53F: ForVar var_F4
  loc_B5A545: FLdRfVar var_134
  loc_B5A548: FLdRfVar var_130
  loc_B5A54B: FLdRfVar var_A4
  loc_B5A54E: CI2Var
  loc_B5A54F: FLdPrThis
  loc_B5A550: VCallAd Control_ID_rights
  loc_B5A553: FStAdFunc var_12C
  loc_B5A556: FLdPr var_12C
  loc_B5A559: Set from_stack_2 = Me(from_stack_1)
  loc_B5A55E: FLdPr var_130
  loc_B5A561:  = Me.Caption
  loc_B5A566: FLdRfVar var_FC
  loc_B5A569: FLdPrThis
  loc_B5A56A: VCallAd Control_ID_Combo4
  loc_B5A56D: FStAdFunc var_F8
  loc_B5A570: FLdPr var_F8
  loc_B5A573:  = Me.Text
  loc_B5A578: LitI4 1
  loc_B5A57D: LitI4 0
  loc_B5A582: FStStrCopy var_128
  loc_B5A585: FLdRfVar var_128
  loc_B5A588: ImpAdLdI4 MemVar_C0F044
  loc_B5A58B: LitStr "ranks\"
  loc_B5A58E: ConcatStr
  loc_B5A58F: FStStrNoPop var_100
  loc_B5A592: ILdRf var_FC
  loc_B5A595: ConcatStr
  loc_B5A596: FStStrNoPop var_104
  loc_B5A599: LitStr ".ini"
  loc_B5A59C: ConcatStr
  loc_B5A59D: CVarStr var_124
  loc_B5A5A0: LitVarStr var_C4, "speech_cmd"
  loc_B5A5A5: FStVarCopyObj var_114
  loc_B5A5A8: FLdRfVar var_114
  loc_B5A5AB: LitVarStr var_B4, "rank"
  loc_B5A5B0: PopAdLdVar
  loc_B5A5B1: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5A5B6: FStStrNoPop var_13C
  loc_B5A5B9: LitI4 0
  loc_B5A5BE: LitI4 -1
  loc_B5A5C3: LitI4 1
  loc_B5A5C8: LitStr ","
  loc_B5A5CB: LitStr ":"
  loc_B5A5CE: ILdRf var_134
  loc_B5A5D1: ImpAdCallI2 Replace(, , , , , )
  loc_B5A5D6: FStStrNoPop var_138
  loc_B5A5D9: LitI4 0
  loc_B5A5DE: FnInStr4
  loc_B5A5E0: CBoolI4
  loc_B5A5E2: FFreeStr var_100 = "": var_FC = "": var_104 = "": var_128 = "": var_134 = "": var_138 = ""
  loc_B5A5F3: FFreeAd var_F8 = "": var_12C = ""
  loc_B5A5FC: FFreeVar var_114 = ""
  loc_B5A603: BranchF loc_B5A630
  loc_B5A606: LitI2_Byte 1
  loc_B5A608: FLdRfVar var_12C
  loc_B5A60B: FLdRfVar var_A4
  loc_B5A60E: CI2Var
  loc_B5A60F: FLdPrThis
  loc_B5A610: VCallAd Control_ID_rights
  loc_B5A613: FStAdFunc var_F8
  loc_B5A616: FLdPr var_F8
  loc_B5A619: Set from_stack_2 = Me(from_stack_1)
  loc_B5A61E: FLdPr var_12C
  loc_B5A621: Me.Value = from_stack_1
  loc_B5A626: FFreeAd var_F8 = ""
  loc_B5A62D: Branch loc_B5A657
  loc_B5A630: LitI2_Byte 0
  loc_B5A632: FLdRfVar var_12C
  loc_B5A635: FLdRfVar var_A4
  loc_B5A638: CI2Var
  loc_B5A639: FLdPrThis
  loc_B5A63A: VCallAd Control_ID_rights
  loc_B5A63D: FStAdFunc var_F8
  loc_B5A640: FLdPr var_F8
  loc_B5A643: Set from_stack_2 = Me(from_stack_1)
  loc_B5A648: FLdPr var_12C
  loc_B5A64B: Me.Value = from_stack_1
  loc_B5A650: FFreeAd var_F8 = ""
  loc_B5A657: FLdRfVar var_A4
  loc_B5A65A: NextStepVar var_F4
  loc_B5A660: FLdRfVar var_FC
  loc_B5A663: FLdPrThis
  loc_B5A664: VCallAd Control_ID_Combo4
  loc_B5A667: FStAdFunc var_F8
  loc_B5A66A: FLdPr var_F8
  loc_B5A66D:  = Me.Text
  loc_B5A672: LitI4 1
  loc_B5A677: LitI4 0
  loc_B5A67C: FStStrCopy var_128
  loc_B5A67F: FLdRfVar var_128
  loc_B5A682: ImpAdLdI4 MemVar_C0F044
  loc_B5A685: LitStr "ranks\"
  loc_B5A688: ConcatStr
  loc_B5A689: FStStrNoPop var_100
  loc_B5A68C: ILdRf var_FC
  loc_B5A68F: ConcatStr
  loc_B5A690: FStStrNoPop var_104
  loc_B5A693: LitStr ".ini"
  loc_B5A696: ConcatStr
  loc_B5A697: CVarStr var_124
  loc_B5A69A: LitVarStr var_C4, "mod_tool"
  loc_B5A69F: FStVarCopyObj var_114
  loc_B5A6A2: FLdRfVar var_114
  loc_B5A6A5: LitVarStr var_B4, "rank"
  loc_B5A6AA: PopAdLdVar
  loc_B5A6AB: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5A6B0: FStStrNoPop var_134
  loc_B5A6B3: LitStr ",kick"
  loc_B5A6B6: LitI4 0
  loc_B5A6BB: FnInStr4
  loc_B5A6BD: CBoolI4
  loc_B5A6BF: FFreeStr var_100 = "": var_FC = "": var_104 = "": var_128 = ""
  loc_B5A6CC: FFree1Ad var_F8
  loc_B5A6CF: FFreeVar var_114 = ""
  loc_B5A6D6: BranchF loc_B5A701
  loc_B5A6D9: LitI2_Byte 1
  loc_B5A6DB: FLdRfVar var_12C
  loc_B5A6DE: LitI2_Byte 0
  loc_B5A6E0: FLdPrThis
  loc_B5A6E1: VCallAd Control_ID_mtool
  loc_B5A6E4: FStAdFunc var_F8
  loc_B5A6E7: FLdPr var_F8
  loc_B5A6EA: Set from_stack_2 = Me(from_stack_1)
  loc_B5A6EF: FLdPr var_12C
  loc_B5A6F2: Me.Value = from_stack_1
  loc_B5A6F7: FFreeAd var_F8 = ""
  loc_B5A6FE: Branch loc_B5A726
  loc_B5A701: LitI2_Byte 0
  loc_B5A703: FLdRfVar var_12C
  loc_B5A706: LitI2_Byte 0
  loc_B5A708: FLdPrThis
  loc_B5A709: VCallAd Control_ID_mtool
  loc_B5A70C: FStAdFunc var_F8
  loc_B5A70F: FLdPr var_F8
  loc_B5A712: Set from_stack_2 = Me(from_stack_1)
  loc_B5A717: FLdPr var_12C
  loc_B5A71A: Me.Value = from_stack_1
  loc_B5A71F: FFreeAd var_F8 = ""
  loc_B5A726: FLdRfVar var_FC
  loc_B5A729: FLdPrThis
  loc_B5A72A: VCallAd Control_ID_Combo4
  loc_B5A72D: FStAdFunc var_F8
  loc_B5A730: FLdPr var_F8
  loc_B5A733:  = Me.Text
  loc_B5A738: LitI4 1
  loc_B5A73D: LitI4 0
  loc_B5A742: FStStrCopy var_128
  loc_B5A745: FLdRfVar var_128
  loc_B5A748: ImpAdLdI4 MemVar_C0F044
  loc_B5A74B: LitStr "ranks\"
  loc_B5A74E: ConcatStr
  loc_B5A74F: FStStrNoPop var_100
  loc_B5A752: ILdRf var_FC
  loc_B5A755: ConcatStr
  loc_B5A756: FStStrNoPop var_104
  loc_B5A759: LitStr ".ini"
  loc_B5A75C: ConcatStr
  loc_B5A75D: CVarStr var_124
  loc_B5A760: LitVarStr var_C4, "mod_tool"
  loc_B5A765: FStVarCopyObj var_114
  loc_B5A768: FLdRfVar var_114
  loc_B5A76B: LitVarStr var_B4, "rank"
  loc_B5A770: PopAdLdVar
  loc_B5A771: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5A776: FStStrNoPop var_134
  loc_B5A779: LitStr ",alert"
  loc_B5A77C: LitI4 0
  loc_B5A781: FnInStr4
  loc_B5A783: CBoolI4
  loc_B5A785: FFreeStr var_100 = "": var_FC = "": var_104 = "": var_128 = ""
  loc_B5A792: FFree1Ad var_F8
  loc_B5A795: FFreeVar var_114 = ""
  loc_B5A79C: BranchF loc_B5A7C7
  loc_B5A79F: LitI2_Byte 1
  loc_B5A7A1: FLdRfVar var_12C
  loc_B5A7A4: LitI2_Byte 1
  loc_B5A7A6: FLdPrThis
  loc_B5A7A7: VCallAd Control_ID_mtool
  loc_B5A7AA: FStAdFunc var_F8
  loc_B5A7AD: FLdPr var_F8
  loc_B5A7B0: Set from_stack_2 = Me(from_stack_1)
  loc_B5A7B5: FLdPr var_12C
  loc_B5A7B8: Me.Value = from_stack_1
  loc_B5A7BD: FFreeAd var_F8 = ""
  loc_B5A7C4: Branch loc_B5A7EC
  loc_B5A7C7: LitI2_Byte 0
  loc_B5A7C9: FLdRfVar var_12C
  loc_B5A7CC: LitI2_Byte 1
  loc_B5A7CE: FLdPrThis
  loc_B5A7CF: VCallAd Control_ID_mtool
  loc_B5A7D2: FStAdFunc var_F8
  loc_B5A7D5: FLdPr var_F8
  loc_B5A7D8: Set from_stack_2 = Me(from_stack_1)
  loc_B5A7DD: FLdPr var_12C
  loc_B5A7E0: Me.Value = from_stack_1
  loc_B5A7E5: FFreeAd var_F8 = ""
  loc_B5A7EC: FLdRfVar var_FC
  loc_B5A7EF: FLdPrThis
  loc_B5A7F0: VCallAd Control_ID_Combo4
  loc_B5A7F3: FStAdFunc var_F8
  loc_B5A7F6: FLdPr var_F8
  loc_B5A7F9:  = Me.Text
  loc_B5A7FE: LitI4 1
  loc_B5A803: LitI4 0
  loc_B5A808: FStStrCopy var_128
  loc_B5A80B: FLdRfVar var_128
  loc_B5A80E: ImpAdLdI4 MemVar_C0F044
  loc_B5A811: LitStr "ranks\"
  loc_B5A814: ConcatStr
  loc_B5A815: FStStrNoPop var_100
  loc_B5A818: ILdRf var_FC
  loc_B5A81B: ConcatStr
  loc_B5A81C: FStStrNoPop var_104
  loc_B5A81F: LitStr ".ini"
  loc_B5A822: ConcatStr
  loc_B5A823: CVarStr var_124
  loc_B5A826: LitVarStr var_C4, "mod_tool"
  loc_B5A82B: FStVarCopyObj var_114
  loc_B5A82E: FLdRfVar var_114
  loc_B5A831: LitVarStr var_B4, "rank"
  loc_B5A836: PopAdLdVar
  loc_B5A837: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5A83C: FStStrNoPop var_134
  loc_B5A83F: LitStr ",ban"
  loc_B5A842: LitI4 0
  loc_B5A847: FnInStr4
  loc_B5A849: CBoolI4
  loc_B5A84B: FFreeStr var_100 = "": var_FC = "": var_104 = "": var_128 = ""
  loc_B5A858: FFree1Ad var_F8
  loc_B5A85B: FFreeVar var_114 = ""
  loc_B5A862: BranchF loc_B5A88D
  loc_B5A865: LitI2_Byte 1
  loc_B5A867: FLdRfVar var_12C
  loc_B5A86A: LitI2_Byte 2
  loc_B5A86C: FLdPrThis
  loc_B5A86D: VCallAd Control_ID_mtool
  loc_B5A870: FStAdFunc var_F8
  loc_B5A873: FLdPr var_F8
  loc_B5A876: Set from_stack_2 = Me(from_stack_1)
  loc_B5A87B: FLdPr var_12C
  loc_B5A87E: Me.Value = from_stack_1
  loc_B5A883: FFreeAd var_F8 = ""
  loc_B5A88A: Branch loc_B5A8B2
  loc_B5A88D: LitI2_Byte 0
  loc_B5A88F: FLdRfVar var_12C
  loc_B5A892: LitI2_Byte 2
  loc_B5A894: FLdPrThis
  loc_B5A895: VCallAd Control_ID_mtool
  loc_B5A898: FStAdFunc var_F8
  loc_B5A89B: FLdPr var_F8
  loc_B5A89E: Set from_stack_2 = Me(from_stack_1)
  loc_B5A8A3: FLdPr var_12C
  loc_B5A8A6: Me.Value = from_stack_1
  loc_B5A8AB: FFreeAd var_F8 = ""
  loc_B5A8B2: FLdRfVar var_FC
  loc_B5A8B5: FLdPrThis
  loc_B5A8B6: VCallAd Control_ID_Combo4
  loc_B5A8B9: FStAdFunc var_F8
  loc_B5A8BC: FLdPr var_F8
  loc_B5A8BF:  = Me.Text
  loc_B5A8C4: LitI4 1
  loc_B5A8C9: LitI4 0
  loc_B5A8CE: FStStrCopy var_128
  loc_B5A8D1: FLdRfVar var_128
  loc_B5A8D4: ImpAdLdI4 MemVar_C0F044
  loc_B5A8D7: LitStr "ranks\"
  loc_B5A8DA: ConcatStr
  loc_B5A8DB: FStStrNoPop var_100
  loc_B5A8DE: ILdRf var_FC
  loc_B5A8E1: ConcatStr
  loc_B5A8E2: FStStrNoPop var_104
  loc_B5A8E5: LitStr ".ini"
  loc_B5A8E8: ConcatStr
  loc_B5A8E9: CVarStr var_124
  loc_B5A8EC: LitVarStr var_C4, "mod_tool"
  loc_B5A8F1: FStVarCopyObj var_114
  loc_B5A8F4: FLdRfVar var_114
  loc_B5A8F7: LitVarStr var_B4, "rank"
  loc_B5A8FC: PopAdLdVar
  loc_B5A8FD: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5A902: FStStrNoPop var_134
  loc_B5A905: LitStr ",roomalert"
  loc_B5A908: LitI4 0
  loc_B5A90D: FnInStr4
  loc_B5A90F: CBoolI4
  loc_B5A911: FFreeStr var_100 = "": var_FC = "": var_104 = "": var_128 = ""
  loc_B5A91E: FFree1Ad var_F8
  loc_B5A921: FFreeVar var_114 = ""
  loc_B5A928: BranchF loc_B5A953
  loc_B5A92B: LitI2_Byte 1
  loc_B5A92D: FLdRfVar var_12C
  loc_B5A930: LitI2_Byte 3
  loc_B5A932: FLdPrThis
  loc_B5A933: VCallAd Control_ID_mtool
  loc_B5A936: FStAdFunc var_F8
  loc_B5A939: FLdPr var_F8
  loc_B5A93C: Set from_stack_2 = Me(from_stack_1)
  loc_B5A941: FLdPr var_12C
  loc_B5A944: Me.Value = from_stack_1
  loc_B5A949: FFreeAd var_F8 = ""
  loc_B5A950: Branch loc_B5A978
  loc_B5A953: LitI2_Byte 0
  loc_B5A955: FLdRfVar var_12C
  loc_B5A958: LitI2_Byte 3
  loc_B5A95A: FLdPrThis
  loc_B5A95B: VCallAd Control_ID_mtool
  loc_B5A95E: FStAdFunc var_F8
  loc_B5A961: FLdPr var_F8
  loc_B5A964: Set from_stack_2 = Me(from_stack_1)
  loc_B5A969: FLdPr var_12C
  loc_B5A96C: Me.Value = from_stack_1
  loc_B5A971: FFreeAd var_F8 = ""
  loc_B5A978: FLdRfVar var_FC
  loc_B5A97B: FLdPrThis
  loc_B5A97C: VCallAd Control_ID_Combo4
  loc_B5A97F: FStAdFunc var_F8
  loc_B5A982: FLdPr var_F8
  loc_B5A985:  = Me.Text
  loc_B5A98A: LitI4 1
  loc_B5A98F: LitI4 0
  loc_B5A994: FStStrCopy var_128
  loc_B5A997: FLdRfVar var_128
  loc_B5A99A: ImpAdLdI4 MemVar_C0F044
  loc_B5A99D: LitStr "ranks\"
  loc_B5A9A0: ConcatStr
  loc_B5A9A1: FStStrNoPop var_100
  loc_B5A9A4: ILdRf var_FC
  loc_B5A9A7: ConcatStr
  loc_B5A9A8: FStStrNoPop var_104
  loc_B5A9AB: LitStr ".ini"
  loc_B5A9AE: ConcatStr
  loc_B5A9AF: CVarStr var_124
  loc_B5A9B2: LitVarStr var_C4, "mod_tool"
  loc_B5A9B7: FStVarCopyObj var_114
  loc_B5A9BA: FLdRfVar var_114
  loc_B5A9BD: LitVarStr var_B4, "rank"
  loc_B5A9C2: PopAdLdVar
  loc_B5A9C3: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5A9C8: FStStrNoPop var_134
  loc_B5A9CB: LitStr ",roomkick"
  loc_B5A9CE: LitI4 0
  loc_B5A9D3: FnInStr4
  loc_B5A9D5: CBoolI4
  loc_B5A9D7: FFreeStr var_100 = "": var_FC = "": var_104 = "": var_128 = ""
  loc_B5A9E4: FFree1Ad var_F8
  loc_B5A9E7: FFreeVar var_114 = ""
  loc_B5A9EE: BranchF loc_B5AA19
  loc_B5A9F1: LitI2_Byte 1
  loc_B5A9F3: FLdRfVar var_12C
  loc_B5A9F6: LitI2_Byte 4
  loc_B5A9F8: FLdPrThis
  loc_B5A9F9: VCallAd Control_ID_mtool
  loc_B5A9FC: FStAdFunc var_F8
  loc_B5A9FF: FLdPr var_F8
  loc_B5AA02: Set from_stack_2 = Me(from_stack_1)
  loc_B5AA07: FLdPr var_12C
  loc_B5AA0A: Me.Value = from_stack_1
  loc_B5AA0F: FFreeAd var_F8 = ""
  loc_B5AA16: Branch loc_B5AA3E
  loc_B5AA19: LitI2_Byte 0
  loc_B5AA1B: FLdRfVar var_12C
  loc_B5AA1E: LitI2_Byte 4
  loc_B5AA20: FLdPrThis
  loc_B5AA21: VCallAd Control_ID_mtool
  loc_B5AA24: FStAdFunc var_F8
  loc_B5AA27: FLdPr var_F8
  loc_B5AA2A: Set from_stack_2 = Me(from_stack_1)
  loc_B5AA2F: FLdPr var_12C
  loc_B5AA32: Me.Value = from_stack_1
  loc_B5AA37: FFreeAd var_F8 = ""
  loc_B5AA3E: FLdRfVar var_FC
  loc_B5AA41: FLdPrThis
  loc_B5AA42: VCallAd Control_ID_Combo4
  loc_B5AA45: FStAdFunc var_F8
  loc_B5AA48: FLdPr var_F8
  loc_B5AA4B:  = Me.Text
  loc_B5AA50: LitI4 0
  loc_B5AA55: FStStrCopy var_128
  loc_B5AA58: FLdRfVar var_128
  loc_B5AA5B: ImpAdLdI4 MemVar_C0F044
  loc_B5AA5E: LitStr "ranks\"
  loc_B5AA61: ConcatStr
  loc_B5AA62: FStStrNoPop var_100
  loc_B5AA65: ILdRf var_FC
  loc_B5AA68: ConcatStr
  loc_B5AA69: FStStrNoPop var_104
  loc_B5AA6C: LitStr ".ini"
  loc_B5AA6F: ConcatStr
  loc_B5AA70: CVarStr var_124
  loc_B5AA73: LitVarStr var_C4, "badges"
  loc_B5AA78: FStVarCopyObj var_114
  loc_B5AA7B: FLdRfVar var_114
  loc_B5AA7E: LitVarStr var_B4, "rank"
  loc_B5AA83: PopAdLdVar
  loc_B5AA84: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5AA89: CVarStr var_15C
  loc_B5AA8C: FStVar var_14C
  loc_B5AA90: FFreeStr var_100 = "": var_FC = "": var_104 = ""
  loc_B5AA9B: FFree1Ad var_F8
  loc_B5AA9E: FFreeVar var_114 = ""
  loc_B5AAA5: LitI4 0
  loc_B5AAAA: LitI4 -1
  loc_B5AAAF: LitI4 1
  loc_B5AAB4: LitStr ";"
  loc_B5AAB7: LitStr ";;"
  loc_B5AABA: FLdRfVar var_14C
  loc_B5AABD: CStrVarVal var_FC
  loc_B5AAC1: ImpAdCallI2 Replace(, , , , , )
  loc_B5AAC6: CVarStr var_114
  loc_B5AAC9: FStVar var_14C
  loc_B5AACD: FFree1Str var_FC
  loc_B5AAD0: LitI4 0
  loc_B5AAD5: LitI4 -1
  loc_B5AADA: LitI4 1
  loc_B5AADF: LitStr ";"
  loc_B5AAE2: LitStr ";;"
  loc_B5AAE5: FLdRfVar var_14C
  loc_B5AAE8: CStrVarVal var_FC
  loc_B5AAEC: ImpAdCallI2 Replace(, , , , , )
  loc_B5AAF1: CVarStr var_114
  loc_B5AAF4: FStVar var_14C
  loc_B5AAF8: FFree1Str var_FC
  loc_B5AAFB: LitI4 0
  loc_B5AB00: LitI4 -1
  loc_B5AB05: LitI4 1
  loc_B5AB0A: LitStr ";"
  loc_B5AB0D: LitStr ";;"
  loc_B5AB10: FLdRfVar var_14C
  loc_B5AB13: CStrVarVal var_FC
  loc_B5AB17: ImpAdCallI2 Replace(, , , , , )
  loc_B5AB1C: CVarStr var_114
  loc_B5AB1F: FStVar var_14C
  loc_B5AB23: FFree1Str var_FC
  loc_B5AB26: LitI4 1
  loc_B5AB2B: FLdRfVar var_14C
  loc_B5AB2E: FLdRfVar var_114
  loc_B5AB31: ImpAdCallFPR4  = Left(, )
  loc_B5AB36: FLdRfVar var_114
  loc_B5AB39: LitVarStr var_B4, ";"
  loc_B5AB3E: HardType
  loc_B5AB3F: NeVarBool
  loc_B5AB41: FFree1Var var_114 = ""
  loc_B5AB44: BranchF loc_B5AB57
  loc_B5AB47: LitVarStr var_B4, ";"
  loc_B5AB4C: FLdRfVar var_14C
  loc_B5AB4F: ConcatVar var_114
  loc_B5AB53: FStVar var_14C
  loc_B5AB57: LitI4 1
  loc_B5AB5C: FLdRfVar var_14C
  loc_B5AB5F: FLdRfVar var_114
  loc_B5AB62: ImpAdCallFPR4  = Right(, )
  loc_B5AB67: FLdRfVar var_114
  loc_B5AB6A: LitVarStr var_B4, ";"
  loc_B5AB6F: HardType
  loc_B5AB70: EqVarBool
  loc_B5AB72: FFree1Var var_114 = ""
  loc_B5AB75: BranchF loc_B5AB9C
  loc_B5AB78: FLdRfVar var_14C
  loc_B5AB7B: FnLenVar var_114
  loc_B5AB7F: LitVarI2 var_B4, 1
  loc_B5AB84: SubVar var_124
  loc_B5AB88: CI4Var
  loc_B5AB8A: FLdRfVar var_14C
  loc_B5AB8D: FLdRfVar var_15C
  loc_B5AB90: ImpAdCallFPR4  = Left(, )
  loc_B5AB95: FLdRfVar var_15C
  loc_B5AB98: FStVar var_14C
  loc_B5AB9C: ImpAdLdI4 MemVar_C0F044
  loc_B5AB9F: LitStr "ranks\"
  loc_B5ABA2: ConcatStr
  loc_B5ABA3: FStStrNoPop var_100
  loc_B5ABA6: FLdRfVar var_FC
  loc_B5ABA9: FLdPrThis
  loc_B5ABAA: VCallAd Control_ID_Combo4
  loc_B5ABAD: FStAdFunc var_F8
  loc_B5ABB0: FLdPr var_F8
  loc_B5ABB3:  = Me.Text
  loc_B5ABB8: ILdRf var_FC
  loc_B5ABBB: ConcatStr
  loc_B5ABBC: FStStrNoPop var_104
  loc_B5ABBF: LitStr ".ini"
  loc_B5ABC2: ConcatStr
  loc_B5ABC3: FStStrNoPop var_134
  loc_B5ABC6: FLdRfVar var_14C
  loc_B5ABC9: CStrVarVal var_128
  loc_B5ABCD: LitStr "badges"
  loc_B5ABD0: LitStr "rank"
  loc_B5ABD3: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B5ABD8: FFreeStr var_100 = "": var_FC = "": var_104 = "": var_128 = ""
  loc_B5ABE5: FFree1Ad var_F8
  loc_B5ABE8: LitStr vbNullString
  loc_B5ABEB: FLdPrThis
  loc_B5ABEC: VCallAd Control_ID_Text17
  loc_B5ABEF: FStAdFunc var_F8
  loc_B5ABF2: FLdPr var_F8
  loc_B5ABF5: Me.Text = from_stack_1
  loc_B5ABFA: FFree1Ad var_F8
  loc_B5ABFD: FLdRfVar var_FC
  loc_B5AC00: FLdPrThis
  loc_B5AC01: VCallAd Control_ID_Combo4
  loc_B5AC04: FStAdFunc var_F8
  loc_B5AC07: FLdPr var_F8
  loc_B5AC0A:  = Me.Text
  loc_B5AC0F: LitI4 0
  loc_B5AC14: FStStrCopy var_128
  loc_B5AC17: FLdRfVar var_128
  loc_B5AC1A: ImpAdLdI4 MemVar_C0F044
  loc_B5AC1D: LitStr "ranks\"
  loc_B5AC20: ConcatStr
  loc_B5AC21: FStStrNoPop var_100
  loc_B5AC24: ILdRf var_FC
  loc_B5AC27: ConcatStr
  loc_B5AC28: FStStrNoPop var_104
  loc_B5AC2B: LitStr ".ini"
  loc_B5AC2E: ConcatStr
  loc_B5AC2F: CVarStr var_124
  loc_B5AC32: LitVarStr var_C4, "badges"
  loc_B5AC37: FStVarCopyObj var_114
  loc_B5AC3A: FLdRfVar var_114
  loc_B5AC3D: LitVarStr var_B4, "rank"
  loc_B5AC42: PopAdLdVar
  loc_B5AC43: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5AC48: FStStr var_13C
  loc_B5AC4B: LitVar_Missing var_16C
  loc_B5AC4E: LitI4 2
  loc_B5AC53: FLdZeroAd var_13C
  loc_B5AC56: CVarStr var_15C
  loc_B5AC59: FLdRfVar var_17C
  loc_B5AC5C: ImpAdCallFPR4  = Mid(, , )
  loc_B5AC61: LitI4 0
  loc_B5AC66: LitI4 -1
  loc_B5AC6B: LitI4 1
  loc_B5AC70: LitStr vbCrLf
  loc_B5AC73: LitStr ";"
  loc_B5AC76: FLdRfVar var_17C
  loc_B5AC79: CStrVarVal var_134
  loc_B5AC7D: ImpAdCallI2 Replace(, , , , , )
  loc_B5AC82: FStStrNoPop var_138
  loc_B5AC85: FLdPrThis
  loc_B5AC86: VCallAd Control_ID_Text17
  loc_B5AC89: FStAdFunc var_12C
  loc_B5AC8C: FLdPr var_12C
  loc_B5AC8F: Me.Text = from_stack_1
  loc_B5AC94: FFreeStr var_100 = "": var_FC = "": var_104 = "": var_128 = "": var_134 = "": var_138 = ""
  loc_B5ACA5: FFreeAd var_F8 = ""
  loc_B5ACAC: FFreeVar var_114 = "": var_124 = "": var_15C = "": var_16C = ""
  loc_B5ACB9: FLdRfVar var_FC
  loc_B5ACBC: FLdPrThis
  loc_B5ACBD: VCallAd Control_ID_Combo4
  loc_B5ACC0: FStAdFunc var_F8
  loc_B5ACC3: FLdPr var_F8
  loc_B5ACC6:  = Me.Text
  loc_B5ACCB: LitI4 0
  loc_B5ACD0: FStStrCopy var_128
  loc_B5ACD3: FLdRfVar var_128
  loc_B5ACD6: ImpAdLdI4 MemVar_C0F044
  loc_B5ACD9: LitStr "ranks\"
  loc_B5ACDC: ConcatStr
  loc_B5ACDD: FStStrNoPop var_100
  loc_B5ACE0: ILdRf var_FC
  loc_B5ACE3: ConcatStr
  loc_B5ACE4: FStStrNoPop var_104
  loc_B5ACE7: LitStr ".ini"
  loc_B5ACEA: ConcatStr
  loc_B5ACEB: CVarStr var_124
  loc_B5ACEE: LitVarStr var_C4, "admin_catalogue"
  loc_B5ACF3: FStVarCopyObj var_114
  loc_B5ACF6: FLdRfVar var_114
  loc_B5ACF9: LitVarStr var_B4, "rank"
  loc_B5ACFE: PopAdLdVar
  loc_B5ACFF: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5AD04: FStStrNoPop var_134
  loc_B5AD07: CI2Str
  loc_B5AD09: FLdPrThis
  loc_B5AD0A: VCallAd Control_ID_Check4
  loc_B5AD0D: FStAdFunc var_12C
  loc_B5AD10: FLdPr var_12C
  loc_B5AD13: Me.Value = from_stack_1
  loc_B5AD18: FFreeStr var_100 = "": var_FC = "": var_104 = "": var_128 = ""
  loc_B5AD25: FFreeAd var_F8 = ""
  loc_B5AD2C: FFreeVar var_114 = ""
  loc_B5AD33: FLdRfVar var_FC
  loc_B5AD36: FLdPrThis
  loc_B5AD37: VCallAd Control_ID_Combo4
  loc_B5AD3A: FStAdFunc var_F8
  loc_B5AD3D: FLdPr var_F8
  loc_B5AD40:  = Me.Text
  loc_B5AD45: LitI4 0
  loc_B5AD4A: FStStrCopy var_128
  loc_B5AD4D: FLdRfVar var_128
  loc_B5AD50: ImpAdLdI4 MemVar_C0F044
  loc_B5AD53: LitStr "ranks\"
  loc_B5AD56: ConcatStr
  loc_B5AD57: FStStrNoPop var_100
  loc_B5AD5A: ILdRf var_FC
  loc_B5AD5D: ConcatStr
  loc_B5AD5E: FStStrNoPop var_104
  loc_B5AD61: LitStr ".ini"
  loc_B5AD64: ConcatStr
  loc_B5AD65: CVarStr var_124
  loc_B5AD68: LitVarStr var_C4, "see_room_owner"
  loc_B5AD6D: FStVarCopyObj var_114
  loc_B5AD70: FLdRfVar var_114
  loc_B5AD73: LitVarStr var_B4, "rank"
  loc_B5AD78: PopAdLdVar
  loc_B5AD79: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5AD7E: FStStrNoPop var_134
  loc_B5AD81: CI2Str
  loc_B5AD83: FLdPrThis
  loc_B5AD84: VCallAd Control_ID_Check5
  loc_B5AD87: FStAdFunc var_12C
  loc_B5AD8A: FLdPr var_12C
  loc_B5AD8D: Me.Value = from_stack_1
  loc_B5AD92: FFreeStr var_100 = "": var_FC = "": var_104 = "": var_128 = ""
  loc_B5AD9F: FFreeAd var_F8 = ""
  loc_B5ADA6: FFreeVar var_114 = ""
  loc_B5ADAD: FLdRfVar var_FC
  loc_B5ADB0: FLdPrThis
  loc_B5ADB1: VCallAd Control_ID_Combo4
  loc_B5ADB4: FStAdFunc var_F8
  loc_B5ADB7: FLdPr var_F8
  loc_B5ADBA:  = Me.Text
  loc_B5ADBF: LitI4 0
  loc_B5ADC4: FStStrCopy var_128
  loc_B5ADC7: FLdRfVar var_128
  loc_B5ADCA: ImpAdLdI4 MemVar_C0F044
  loc_B5ADCD: LitStr "ranks\"
  loc_B5ADD0: ConcatStr
  loc_B5ADD1: FStStrNoPop var_100
  loc_B5ADD4: ILdRf var_FC
  loc_B5ADD7: ConcatStr
  loc_B5ADD8: FStStrNoPop var_104
  loc_B5ADDB: LitStr ".ini"
  loc_B5ADDE: ConcatStr
  loc_B5ADDF: CVarStr var_124
  loc_B5ADE2: LitVarStr var_C4, "enter_any_room"
  loc_B5ADE7: FStVarCopyObj var_114
  loc_B5ADEA: FLdRfVar var_114
  loc_B5ADED: LitVarStr var_B4, "rank"
  loc_B5ADF2: PopAdLdVar
  loc_B5ADF3: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5ADF8: FStStrNoPop var_134
  loc_B5ADFB: CI2Str
  loc_B5ADFD: FLdPrThis
  loc_B5ADFE: VCallAd Control_ID_Check6
  loc_B5AE01: FStAdFunc var_12C
  loc_B5AE04: FLdPr var_12C
  loc_B5AE07: Me.Value = from_stack_1
  loc_B5AE0C: FFreeStr var_100 = "": var_FC = "": var_104 = "": var_128 = ""
  loc_B5AE19: FFreeAd var_F8 = ""
  loc_B5AE20: FFreeVar var_114 = ""
  loc_B5AE27: FLdRfVar var_FC
  loc_B5AE2A: FLdPrThis
  loc_B5AE2B: VCallAd Control_ID_Combo4
  loc_B5AE2E: FStAdFunc var_F8
  loc_B5AE31: FLdPr var_F8
  loc_B5AE34:  = Me.Text
  loc_B5AE39: LitI4 0
  loc_B5AE3E: FStStrCopy var_128
  loc_B5AE41: FLdRfVar var_128
  loc_B5AE44: ImpAdLdI4 MemVar_C0F044
  loc_B5AE47: LitStr "ranks\"
  loc_B5AE4A: ConcatStr
  loc_B5AE4B: FStStrNoPop var_100
  loc_B5AE4E: ILdRf var_FC
  loc_B5AE51: ConcatStr
  loc_B5AE52: FStStrNoPop var_104
  loc_B5AE55: LitStr ".ini"
  loc_B5AE58: ConcatStr
  loc_B5AE59: CVarStr var_124
  loc_B5AE5C: LitVarStr var_C4, "recrieve_cfh"
  loc_B5AE61: FStVarCopyObj var_114
  loc_B5AE64: FLdRfVar var_114
  loc_B5AE67: LitVarStr var_B4, "rank"
  loc_B5AE6C: PopAdLdVar
  loc_B5AE6D: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5AE72: FStStrNoPop var_134
  loc_B5AE75: CI2Str
  loc_B5AE77: FLdPrThis
  loc_B5AE78: VCallAd Control_ID_Check7
  loc_B5AE7B: FStAdFunc var_12C
  loc_B5AE7E: FLdPr var_12C
  loc_B5AE81: Me.Value = from_stack_1
  loc_B5AE86: FFreeStr var_100 = "": var_FC = "": var_104 = "": var_128 = ""
  loc_B5AE93: FFreeAd var_F8 = ""
  loc_B5AE9A: FFreeVar var_114 = ""
  loc_B5AEA1: FLdRfVar var_FC
  loc_B5AEA4: FLdPrThis
  loc_B5AEA5: VCallAd Control_ID_Combo4
  loc_B5AEA8: FStAdFunc var_F8
  loc_B5AEAB: FLdPr var_F8
  loc_B5AEAE:  = Me.Text
  loc_B5AEB3: LitI4 0
  loc_B5AEB8: FStStrCopy var_128
  loc_B5AEBB: FLdRfVar var_128
  loc_B5AEBE: ImpAdLdI4 MemVar_C0F044
  loc_B5AEC1: LitStr "ranks\"
  loc_B5AEC4: ConcatStr
  loc_B5AEC5: FStStrNoPop var_100
  loc_B5AEC8: ILdRf var_FC
  loc_B5AECB: ConcatStr
  loc_B5AECC: FStStrNoPop var_104
  loc_B5AECF: LitStr ".ini"
  loc_B5AED2: ConcatStr
  loc_B5AED3: CVarStr var_124
  loc_B5AED6: LitVarStr var_C4, "rights_in_any_room"
  loc_B5AEDB: FStVarCopyObj var_114
  loc_B5AEDE: FLdRfVar var_114
  loc_B5AEE1: LitVarStr var_B4, "rank"
  loc_B5AEE6: PopAdLdVar
  loc_B5AEE7: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5AEEC: FStStrNoPop var_134
  loc_B5AEEF: CI2Str
  loc_B5AEF1: FLdPrThis
  loc_B5AEF2: VCallAd Control_ID_Check8
  loc_B5AEF5: FStAdFunc var_12C
  loc_B5AEF8: FLdPr var_12C
  loc_B5AEFB: Me.Value = from_stack_1
  loc_B5AF00: FFreeStr var_100 = "": var_FC = "": var_104 = "": var_128 = ""
  loc_B5AF0D: FFreeAd var_F8 = ""
  loc_B5AF14: FFreeVar var_114 = ""
  loc_B5AF1B: FLdRfVar var_FC
  loc_B5AF1E: FLdPrThis
  loc_B5AF1F: VCallAd Control_ID_Combo4
  loc_B5AF22: FStAdFunc var_F8
  loc_B5AF25: FLdPr var_F8
  loc_B5AF28:  = Me.Text
  loc_B5AF2D: LitI4 0
  loc_B5AF32: FStStrCopy var_128
  loc_B5AF35: FLdRfVar var_128
  loc_B5AF38: ImpAdLdI4 MemVar_C0F044
  loc_B5AF3B: LitStr "ranks\"
  loc_B5AF3E: ConcatStr
  loc_B5AF3F: FStStrNoPop var_100
  loc_B5AF42: ILdRf var_FC
  loc_B5AF45: ConcatStr
  loc_B5AF46: FStStrNoPop var_104
  loc_B5AF49: LitStr ".ini"
  loc_B5AF4C: ConcatStr
  loc_B5AF4D: CVarStr var_124
  loc_B5AF50: LitVarStr var_C4, "fuse_rights"
  loc_B5AF55: FStVarCopyObj var_114
  loc_B5AF58: FLdRfVar var_114
  loc_B5AF5B: LitVarStr var_B4, "rank"
  loc_B5AF60: PopAdLdVar
  loc_B5AF61: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5AF66: FStStrNoPop var_134
  loc_B5AF69: FLdPrThis
  loc_B5AF6A: VCallAd Control_ID_Text18
  loc_B5AF6D: FStAdFunc var_12C
  loc_B5AF70: FLdPr var_12C
  loc_B5AF73: Me.Text = from_stack_1
  loc_B5AF78: FFreeStr var_100 = "": var_FC = "": var_104 = "": var_128 = ""
  loc_B5AF85: FFreeAd var_F8 = ""
  loc_B5AF8C: FFreeVar var_114 = ""
  loc_B5AF93: ExitProcCbHresult
  loc_B5AF9B: UMiI4
End Function

Private Function Proc_31_32_B27178() 'B27178
  'Data Table: 549FD0
  loc_B27000: ZeroRetValVar
  loc_B27002: LitVarI2 var_D4, 0
  loc_B27007: FLdRfVar var_A4
  loc_B2700A: LitVarI2 var_C4, 10
  loc_B2700F: ForVar var_F4
  loc_B27015: LitI4 0
  loc_B2701A: FStStrCopy var_128
  loc_B2701D: FLdRfVar var_128
  loc_B27020: ImpAdLdI4 MemVar_C0F044
  loc_B27023: LitStr "configuration\settings.ini"
  loc_B27026: ConcatStr
  loc_B27027: CVarStr var_124
  loc_B2702A: LitVarStr var_C4, "present"
  loc_B2702F: FLdRfVar var_A4
  loc_B27032: LitVarI2 var_B4, 1
  loc_B27037: AddVar var_104
  loc_B2703B: ConcatVar var_114
  loc_B2703F: LitVarStr var_D4, "HC"
  loc_B27044: PopAdLdVar
  loc_B27045: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B2704A: FStStrNoPop var_134
  loc_B2704D: FLdRfVar var_130
  loc_B27050: FLdRfVar var_A4
  loc_B27053: CI2Var
  loc_B27054: FLdPrThis
  loc_B27055: VCallAd Control_ID_hcpresent
  loc_B27058: FStAdFunc var_12C
  loc_B2705B: FLdPr var_12C
  loc_B2705E: Set from_stack_2 = Me(from_stack_1)
  loc_B27063: FLdPr var_130
  loc_B27066: Me.Text = from_stack_1
  loc_B2706B: FFreeStr var_128 = ""
  loc_B27072: FFreeAd var_12C = ""
  loc_B27079: FFreeVar var_104 = "": var_114 = ""
  loc_B27082: FLdRfVar var_A4
  loc_B27085: NextStepVar var_F4
  loc_B2708B: LitI4 0
  loc_B27090: FStStrCopy var_128
  loc_B27093: FLdRfVar var_128
  loc_B27096: ImpAdLdI4 MemVar_C0F044
  loc_B27099: LitStr "configuration\settings.ini"
  loc_B2709C: ConcatStr
  loc_B2709D: CVarStr var_114
  loc_B270A0: LitVarStr var_C4, "hcbadge"
  loc_B270A5: FStVarCopyObj var_104
  loc_B270A8: FLdRfVar var_104
  loc_B270AB: LitVarStr var_B4, "HC"
  loc_B270B0: PopAdLdVar
  loc_B270B1: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B270B6: FStStr var_158
  loc_B270B9: LitVar_Missing var_144
  loc_B270BC: LitI4 2
  loc_B270C1: FLdZeroAd var_158
  loc_B270C4: CVarStr var_124
  loc_B270C7: FLdRfVar var_154
  loc_B270CA: ImpAdCallFPR4  = Mid(, , )
  loc_B270CF: FLdRfVar var_154
  loc_B270D2: CStrVarVal var_134
  loc_B270D6: FLdPrThis
  loc_B270D7: VCallAd Control_ID_Text19
  loc_B270DA: FStAdFunc var_12C
  loc_B270DD: FLdPr var_12C
  loc_B270E0: Me.Text = from_stack_1
  loc_B270E5: FFreeStr var_128 = "": var_134 = ""
  loc_B270EE: FFree1Ad var_12C
  loc_B270F1: FFreeVar var_104 = "": var_114 = "": var_124 = "": var_144 = ""
  loc_B270FE: LitI4 0
  loc_B27103: FStStrCopy var_128
  loc_B27106: FLdRfVar var_128
  loc_B27109: ImpAdLdI4 MemVar_C0F044
  loc_B2710C: LitStr "configuration\settings.ini"
  loc_B2710F: ConcatStr
  loc_B27110: CVarStr var_114
  loc_B27113: LitVarStr var_C4, "hcbadge2"
  loc_B27118: FStVarCopyObj var_104
  loc_B2711B: FLdRfVar var_104
  loc_B2711E: LitVarStr var_B4, "HC"
  loc_B27123: PopAdLdVar
  loc_B27124: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B27129: FStStr var_158
  loc_B2712C: LitVar_Missing var_144
  loc_B2712F: LitI4 2
  loc_B27134: FLdZeroAd var_158
  loc_B27137: CVarStr var_124
  loc_B2713A: FLdRfVar var_154
  loc_B2713D: ImpAdCallFPR4  = Mid(, , )
  loc_B27142: FLdRfVar var_154
  loc_B27145: CStrVarVal var_134
  loc_B27149: FLdPrThis
  loc_B2714A: VCallAd Control_ID_Text20
  loc_B2714D: FStAdFunc var_12C
  loc_B27150: FLdPr var_12C
  loc_B27153: Me.Text = from_stack_1
  loc_B27158: FFreeStr var_128 = "": var_134 = ""
  loc_B27161: FFree1Ad var_12C
  loc_B27164: FFreeVar var_104 = "": var_114 = "": var_124 = "": var_144 = ""
  loc_B27171: ExitProcCbHresult
End Function

Private Function Proc_31_33_B2CC80() 'B2CC80
  'Data Table: 549FD0
  loc_B2C9FC: ZeroRetValVar
  loc_B2C9FE: FLdRfVar var_A0
  loc_B2CA01: FLdRfVar var_9C
  loc_B2CA04: LitI4 0
  loc_B2CA09: LitI2_Byte 0
  loc_B2CA0B: LitI4 1
  loc_B2CA10: ImpAdLdI4 MemVar_C0F044
  loc_B2CA13: LitStr "configuration\bobbafilter.ini"
  loc_B2CA16: ConcatStr
  loc_B2CA17: FStStrNoPop var_98
  loc_B2CA1A: ImpAdLdRf MemVar_C0F040
  loc_B2CA1D: NewIfNullPr IFileSystem3
  loc_B2CA20: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2CA25: FLdPr var_9C
  loc_B2CA28:  = Me.ReadAll
  loc_B2CA2D: FLdZeroAd var_A0
  loc_B2CA30: CVarStr var_C0
  loc_B2CA33: FStVar var_B0
  loc_B2CA37: FFree1Str var_98
  loc_B2CA3A: FFree1Ad var_9C
  loc_B2CA3D: LitI4 0
  loc_B2CA42: LitI4 -1
  loc_B2CA47: LitI4 1
  loc_B2CA4C: LitStr vbCrLf
  loc_B2CA4F: LitStr vbCrLf
  loc_B2CA52: LitStr vbCrLf
  loc_B2CA55: ConcatStr
  loc_B2CA56: FStStrNoPop var_A0
  loc_B2CA59: FLdRfVar var_B0
  loc_B2CA5C: CStrVarVal var_98
  loc_B2CA60: ImpAdCallI2 Replace(, , , , , )
  loc_B2CA65: CVarStr var_C0
  loc_B2CA68: FStVar var_B0
  loc_B2CA6C: FFreeStr var_98 = ""
  loc_B2CA73: LitI4 0
  loc_B2CA78: LitI4 -1
  loc_B2CA7D: LitI4 1
  loc_B2CA82: LitStr vbCrLf
  loc_B2CA85: LitStr vbCrLf
  loc_B2CA88: LitStr vbCrLf
  loc_B2CA8B: ConcatStr
  loc_B2CA8C: FStStrNoPop var_A0
  loc_B2CA8F: FLdRfVar var_B0
  loc_B2CA92: CStrVarVal var_98
  loc_B2CA96: ImpAdCallI2 Replace(, , , , , )
  loc_B2CA9B: CVarStr var_C0
  loc_B2CA9E: FStVar var_B0
  loc_B2CAA2: FFreeStr var_98 = ""
  loc_B2CAA9: LitI4 0
  loc_B2CAAE: LitI4 -1
  loc_B2CAB3: LitI4 1
  loc_B2CAB8: LitStr vbCrLf
  loc_B2CABB: LitStr vbCrLf
  loc_B2CABE: LitStr vbCrLf
  loc_B2CAC1: ConcatStr
  loc_B2CAC2: FStStrNoPop var_A0
  loc_B2CAC5: FLdRfVar var_B0
  loc_B2CAC8: CStrVarVal var_98
  loc_B2CACC: ImpAdCallI2 Replace(, , , , , )
  loc_B2CAD1: CVarStr var_C0
  loc_B2CAD4: FStVar var_B0
  loc_B2CAD8: FFreeStr var_98 = ""
  loc_B2CADF: LitI4 0
  loc_B2CAE4: LitI4 -1
  loc_B2CAE9: LitI4 1
  loc_B2CAEE: LitStr vbCrLf
  loc_B2CAF1: LitStr vbCrLf
  loc_B2CAF4: LitStr vbCrLf
  loc_B2CAF7: ConcatStr
  loc_B2CAF8: FStStrNoPop var_A0
  loc_B2CAFB: FLdRfVar var_B0
  loc_B2CAFE: CStrVarVal var_98
  loc_B2CB02: ImpAdCallI2 Replace(, , , , , )
  loc_B2CB07: CVarStr var_C0
  loc_B2CB0A: FStVar var_B0
  loc_B2CB0E: FFreeStr var_98 = ""
  loc_B2CB15: LitI4 0
  loc_B2CB1A: LitI4 -1
  loc_B2CB1F: LitI4 1
  loc_B2CB24: LitStr vbCrLf
  loc_B2CB27: LitStr vbCrLf
  loc_B2CB2A: LitStr vbCrLf
  loc_B2CB2D: ConcatStr
  loc_B2CB2E: FStStrNoPop var_A0
  loc_B2CB31: FLdRfVar var_B0
  loc_B2CB34: CStrVarVal var_98
  loc_B2CB38: ImpAdCallI2 Replace(, , , , , )
  loc_B2CB3D: CVarStr var_C0
  loc_B2CB40: FStVar var_B0
  loc_B2CB44: FFreeStr var_98 = ""
  loc_B2CB4B: LitI4 0
  loc_B2CB50: LitI4 -1
  loc_B2CB55: LitI4 1
  loc_B2CB5A: LitStr vbCrLf
  loc_B2CB5D: LitStr vbCrLf
  loc_B2CB60: LitStr vbCrLf
  loc_B2CB63: ConcatStr
  loc_B2CB64: FStStrNoPop var_A0
  loc_B2CB67: FLdRfVar var_B0
  loc_B2CB6A: CStrVarVal var_98
  loc_B2CB6E: ImpAdCallI2 Replace(, , , , , )
  loc_B2CB73: CVarStr var_C0
  loc_B2CB76: FStVar var_B0
  loc_B2CB7A: FFreeStr var_98 = ""
  loc_B2CB81: LitI4 0
  loc_B2CB86: LitI4 -1
  loc_B2CB8B: LitI4 1
  loc_B2CB90: LitStr vbCrLf
  loc_B2CB93: LitStr vbCrLf
  loc_B2CB96: LitStr vbCrLf
  loc_B2CB99: ConcatStr
  loc_B2CB9A: FStStrNoPop var_A0
  loc_B2CB9D: FLdRfVar var_B0
  loc_B2CBA0: CStrVarVal var_98
  loc_B2CBA4: ImpAdCallI2 Replace(, , , , , )
  loc_B2CBA9: CVarStr var_C0
  loc_B2CBAC: FStVar var_B0
  loc_B2CBB0: FFreeStr var_98 = ""
  loc_B2CBB7: LitI4 1
  loc_B2CBBC: FLdRfVar var_B0
  loc_B2CBBF: FLdRfVar var_C0
  loc_B2CBC2: ImpAdCallFPR4  = Left(, )
  loc_B2CBC7: FLdRfVar var_C0
  loc_B2CBCA: LitVarStr var_D0, vbCrLf
  loc_B2CBCF: HardType
  loc_B2CBD0: EqVarBool
  loc_B2CBD2: FFree1Var var_C0 = ""
  loc_B2CBD5: BranchF loc_B2CBF5
  loc_B2CBD8: LitVar_Missing var_C0
  loc_B2CBDB: LitI4 2
  loc_B2CBE0: FLdRfVar var_B0
  loc_B2CBE3: FLdRfVar var_E0
  loc_B2CBE6: ImpAdCallFPR4  = Mid(, , )
  loc_B2CBEB: FLdRfVar var_E0
  loc_B2CBEE: FStVar var_B0
  loc_B2CBF2: FFree1Var var_C0 = ""
  loc_B2CBF5: LitI4 1
  loc_B2CBFA: FLdRfVar var_B0
  loc_B2CBFD: FLdRfVar var_C0
  loc_B2CC00: ImpAdCallFPR4  = Right(, )
  loc_B2CC05: FLdRfVar var_C0
  loc_B2CC08: LitVarStr var_D0, vbCrLf
  loc_B2CC0D: HardType
  loc_B2CC0E: EqVarBool
  loc_B2CC10: FFree1Var var_C0 = ""
  loc_B2CC13: BranchF loc_B2CC3A
  loc_B2CC16: FLdRfVar var_B0
  loc_B2CC19: FnLenVar var_C0
  loc_B2CC1D: LitVarI2 var_D0, 1
  loc_B2CC22: SubVar var_E0
  loc_B2CC26: CI4Var
  loc_B2CC28: FLdRfVar var_B0
  loc_B2CC2B: FLdRfVar var_F0
  loc_B2CC2E: ImpAdCallFPR4  = Left(, )
  loc_B2CC33: FLdRfVar var_F0
  loc_B2CC36: FStVar var_B0
  loc_B2CC3A: FLdRfVar var_B0
  loc_B2CC3D: CStrVarVal var_A0
  loc_B2CC41: FLdRfVar var_9C
  loc_B2CC44: LitI4 0
  loc_B2CC49: LitI2_Byte 0
  loc_B2CC4B: LitI4 2
  loc_B2CC50: ImpAdLdI4 MemVar_C0F044
  loc_B2CC53: LitStr "configuration\bobbafilter.ini"
  loc_B2CC56: ConcatStr
  loc_B2CC57: FStStrNoPop var_98
  loc_B2CC5A: ImpAdLdRf MemVar_C0F040
  loc_B2CC5D: NewIfNullPr IFileSystem3
  loc_B2CC60: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2CC65: FLdPr var_9C
  loc_B2CC68: from_stack_2 = Me.Write(from_stack_1v)
  loc_B2CC6D: FFreeStr var_98 = ""
  loc_B2CC74: FFree1Ad var_9C
  loc_B2CC77: ExitProcCbHresult
  loc_B2CC7D: UMiI4
End Function

Private Function Proc_31_34_B18264() 'B18264
  'Data Table: 549FD0
  loc_B18260: ExitProcHresult
  loc_B18261: LitI2_Byte
End Function
