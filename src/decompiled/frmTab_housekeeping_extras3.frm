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

Option Explicit

' frmTab_housekeeping_extras3 - Housekeeping Admin Panel (Extras 3)
' Provides administrative functions for managing:
' - User profiles (Hebbos)
' - Room settings
' - Rank permissions
' - HC presents configuration
' - Server settings

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

Private Sub Form_Load()
    Dim oFolder As Object
    Dim oSubFolder As Object
    Dim oTextStream As Object
    Dim sSettingsPath As String
    Dim sWelcomeMsg As String
    Dim vParts As Variant
    Dim vMsgParts As Variant
    Dim sMsgContent As String
    Dim sHCBadge As String
    Dim sPath As String
    Dim sRoomId As String
    Dim sRoomName As String
    Dim sOwnerName As String
    Dim sBobbaList As String
    Dim vBobbaLines As Variant
    Dim i As Variant
    Dim j As Variant
    Dim sCatCodes(0 To 9) As String

    ' Set window position based on foreground setting
    If GetINI("server", "foreground", gSettingsFile) = "Y" Then
        SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_FLAGS
    Else
        SetWindowPos Me.hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_FLAGS
    End If

    sSettingsPath = gAppPath & "configuration\settings.ini"

    ' Load localized captions for all UI elements
    Me.Label7.Caption = GetLocaleString("settings_welcometext")
    Me.Frame3.Caption = GetLocaleString("settings_connectionframe")
    Me.Frame4.Caption = GetLocaleString("settings_mainsettingsframe")
    Me.Frame11.Caption = GetLocaleString("settings_other_rightsframe")
    Me.Check1.Caption = GetLocaleString("settings_bobba_check")
    Me.Check2.Caption = GetLocaleString("settings_welcome_message_check")
    Me.Check3.Caption = GetLocaleString("settings_console_check")
    Me.Command5.Caption = GetLocaleString("chancelbutton")
    Me.Command6.Caption = GetLocaleString("savebutton")
    Me.Command1.Caption = GetLocaleString("chancelbutton")
    Me.Command2.Caption = GetLocaleString("savebutton")
    Me.Frame1.Caption = GetLocaleString("settings_roomsframe")
    Me.Label1.Caption = GetLocaleString("settings_maxroomsperuser")
    Me.Label2.Caption = GetLocaleString("settings_maxroomsinlist")
    Me.Label22.Caption = GetLocaleString("hcchange_info")
    Me.Label24.Caption = GetLocaleString("extrabadges_1_11")
    Me.Label25.Caption = GetLocaleString("extrabadges_11")
    Me.Frame12.Caption = GetLocaleString("hc_presentsframe")
    Me.Label21.Caption = GetLocaleString("trading")
    Me.Label3.Caption = GetLocaleString("settings_maxfavouritedrooms")
    Me.Frame2.Caption = GetLocaleString("settings_furniframe")
    Me.Label4.Caption = GetLocaleString("settings_maxrollersinroom")
    Me.Label5.Caption = GetLocaleString("settings_maxpetsinroom")
    Me.Label9.Caption = GetLocaleString("username")
    Me.Label10.Caption = GetLocaleString("password")
    Me.Label11.Caption = GetLocaleString("mission")
    Me.Label12.Caption = GetLocaleString("rank")
    Me.Label13.Caption = GetLocaleString("credits")
    Me.Command3.Caption = GetLocaleString("addbutton")
    Me.Command4.Caption = GetLocaleString("removebutton")
    Me.Combo1.Text = " -- " & GetLocaleString("choose_a_user") & " -- "
    Me.Combo3.Text = " -- " & GetLocaleString("roomlist_combo") & " -- "
    Me.Frame5.Caption = GetLocaleString("speach_commands")
    Me.Frame9.Caption = GetLocaleString("badges")
    Me.Frame10.Caption = GetLocaleString("modtool")
    Me.Frame7.Caption = GetLocaleString("edit_room")
    Me.Frame8.Caption = GetLocaleString("categorie_editor_frame")
    Me.Command18.Caption = GetLocaleString("chancelbutton")
    Me.Command19.Caption = GetLocaleString("savebutton")
    Me.Label18.Caption = GetLocaleString("enable")
    Me.Label19.Caption = GetLocaleString("change_name")
    Me.Label20.Caption = GetLocaleString("categorie_info")
    Me.Label14.Caption = GetLocaleString("room_name")
    Me.Label15.Caption = GetLocaleString("room_desc")
    Me.Label16.Caption = GetLocaleString("password")
    Me.Label17.Caption = GetLocaleString("owner")
    Me.Command16.Caption = GetLocaleString("chancelbutton")
    Me.Command17.Caption = GetLocaleString("savebutton")

    ' Populate rank combo with predefined ranks
    Me.Combo4.AddItem "habbo"
    Me.Combo4.AddItem "habbox"
    Me.Combo4.AddItem "silver"
    Me.Combo4.AddItem "gold"
    Me.Combo4.AddItem "moderator"
    Me.Combo4.AddItem "admin"
    Me.Combo4.Text = GetLocaleString("ranks")

    Me.Command10.Caption = GetLocaleString("delete_room")
    Me.Command11.Caption = GetLocaleString("savebutton")
    Me.Command12.Caption = GetLocaleString("chancelbutton")

    ' Load server port
    Me.Text6.Text = GetINI("server", "port", gSettingsFile)

    ' Load bobba filter setting
    Me.Check1.Value = CInt(Val(GetINI("config", "bobba_filter", sSettingsPath)))

    ' Load welcome message setting
    Me.Check2.Value = CInt(Val(GetINI("config", "welcome_message", sSettingsPath)))

    ' Load console setting
    Me.Check3.Value = CInt(Val(GetINI("config", "console", sSettingsPath)))

    ' Load room limit settings
    Me.Text1.Text = CStr(Val(GetINI("config", "maxroomsperuser", sSettingsPath)))
    Me.Text2.Text = CStr(Val(GetINI("config", "maxguestroomsinlist", sSettingsPath)))
    Me.Text3.Text = CStr(Val(GetINI("config", "maxfavouriterooms", sSettingsPath)))
    Me.Text4.Text = CStr(Val(GetINI("config", "maxrollersinroom", sSettingsPath)))
    Me.Text5.Text = CStr(Val(GetINI("config", "maxpetsinroom", sSettingsPath)))
    Me.Text24.Text = CStr(Val(GetINI("config", "maxfriends", sSettingsPath)))

    Me.Command13.Caption = GetLocaleString("chancelbutton")
    Me.Command14.Caption = GetLocaleString("savebutton")

    ' Load bobba replacement word
    Me.Text16.Text = GetINI("config", "replacement", sSettingsPath)
    Me.Command15.Caption = GetLocaleString("save_filterword")
    Me.Label8.Caption = GetLocaleString("replacement")

    ' Load HC present settings
    For i = 0 To 10
        Me.hcpresent(CInt(i)).Text = GetINI("HC", "present" & CStr(CInt(i) + 1), sSettingsPath)
    Next i

    ' Load and parse welcome message setting
    sWelcomeMsg = GetINI("config", "welcome_message", sSettingsPath)
    If InStr(1, sWelcomeMsg, ",") <> 0 Then
        vParts = Split(sWelcomeMsg, ",", -1, 0)
        If vParts(0) = "1" Then
            Me.Text7.Text = CStr(vParts(1))
            Me.Text7.Enabled = True
            Me.Check2.Value = 1
        Else
            Me.Text7.Text = CStr(vParts(1))
            Me.Text7.Enabled = False
            Me.Check2.Value = 0
        End If
    Else
        Me.Text7.Enabled = False
        Me.Check2.Value = 0
    End If

    ' Load HC badge settings
    sHCBadge = GetINI("HC", "hcbadge", sSettingsPath)
    Me.Text19.Text = Mid(sHCBadge, 2)

    sHCBadge = GetINI("HC", "hcbadge2", sSettingsPath)
    Me.Text20.Text = Mid(sHCBadge, 2)

    ' Load register console message if file exists
    sPath = gAppPath & "new_habbo\directmail\welcome.message"
    If gFSO.FileExists(sPath) Then
        Me.Check10.Value = 1
        Set oTextStream = gFSO.OpenTextFile(sPath, 1, False, 0)
        sMsgContent = oTextStream.ReadAll

        ' Parse message content - split by Chr(2)
        vMsgParts = Split(sMsgContent, Chr(2), -1, 0)

        ' First part after BEI prefix contains sender/subject info
        vParts = Split(CStr(vMsgParts(0)), "BEI", -1, 0)
        Me.Text21.Text = CStr(vParts(1))

        ' Second part is the subject
        Me.Text22.Text = CStr(vMsgParts(1))

        ' Third part is the message body - replace Chr(13) with vbCrLf
        Me.Text23.Text = Replace(CStr(vMsgParts(2)), Chr(13), vbCrLf, 1, -1, 1)

        Me.Text21.Enabled = True
        Me.Text22.Enabled = True
        Me.Text23.Enabled = True
    Else
        Me.Check10.Value = 0
        Me.Text21.Enabled = False
        Me.Text22.Enabled = False
        Me.Text23.Enabled = False
    End If

    ' Initialize category codes array
    sCatCodes(0) = "SL"
    sCatCodes(1) = "RL"
    sCatCodes(2) = "PR"
    sCatCodes(3) = "RQ"
    sCatCodes(4) = "SV"
    sCatCodes(5) = "Q]"
    sCatCodes(6) = "R]"
    sCatCodes(7) = "PL"
    sCatCodes(8) = "RN"
    sCatCodes(9) = "RR"

    ' Load category settings
    For i = 0 To 9
        Me.catprop(CInt(i)).Clear
        Me.catprop(CInt(i)).AddItem "0"
        Me.catprop(CInt(i)).AddItem "1"
        Me.catprop(CInt(i)).AddItem "2"
        Me.catprop(CInt(i)).Text = GetINI("categories", sCatCodes(CInt(i)), gAppPath & "room_categories\categories.ini")
        Me.catname(CInt(i)).Text = GetLocaleString("categorie_" & CStr(CInt(i) + 1))

        ' Check for trading allowed file
        If gFSO.FileExists(gAppPath & "room_categories\allowtrade_" & sCatCodes(CInt(i)) & ".txt") Then
            Me.allowtraden(CInt(i)).Value = 1
        End If
    Next i

    ' Populate user list from habbos folder
    Set oFolder = gFSO.GetFolder(gAppPath & "habbos")
    For Each oSubFolder In oFolder.SubFolders
        sPath = oSubFolder.Path
        If gFSO.FileExists(sPath & "\name.txt") Then
            Set oTextStream = gFSO.OpenTextFile(sPath & "\name.txt", 1, False, 0)
            Me.Combo1.AddItem oTextStream.ReadAll
        End If
    Next oSubFolder

    ' Populate room lists from privaterooms folder
    Set oFolder = gFSO.GetFolder(gAppPath & "privaterooms")
    For Each oSubFolder In oFolder.SubFolders
        sPath = oSubFolder.Path

        ' Extract room ID from path
        vParts = Split(sPath, "\", -1, 0)
        For j = 1 To UBound(vParts)
            sRoomId = vParts(j)
        Next j

        ' Check if room is deleted
        If gFSO.FileExists(sPath & "\deleted.txt") = False Then
            ' Active room - load name and owner
            Set oTextStream = gFSO.OpenTextFile(sPath & "\name.txt", 1, False, 0)
            sRoomName = oTextStream.ReadAll

            Set oTextStream = gFSO.OpenTextFile(sPath & "\owner.txt", 1, False, 0)
            sOwnerName = oTextStream.ReadAll

            Me.Combo3.AddItem sRoomId & " Name: " & sRoomName & " Besitzer: " & sOwnerName
        Else
            ' Deleted room - add to restore combo
            Set oTextStream = gFSO.OpenTextFile(sPath & "\name.txt", 1, False, 0)
            sRoomName = oTextStream.ReadAll

            Set oTextStream = gFSO.OpenTextFile(sPath & "\owner.txt", 1, False, 0)
            sOwnerName = oTextStream.ReadAll

            Me.Combo5.AddItem sRoomId & " Name: " & sRoomName & " Besitzer: " & sOwnerName
        End If
    Next oSubFolder

    ' Load bobba filter word list
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "configuration\bobbafilter.ini", 1, False, 0)
    sBobbaList = oTextStream.ReadAll
    vBobbaLines = Split(sBobbaList, vbCrLf, -1, 0)

    Me.List1.Clear
    For i = 0 To UBound(vBobbaLines)
        If vBobbaLines(i) <> vbNullString Then
            Me.List1.AddItem CStr(vBobbaLines(i))
        End If
    Next i
End Sub

Private Sub Check10_Click()
    ' Toggle register console message fields
    If Me.Check10.Value = 0 Then
        Me.Text21.Enabled = False
        Me.Text22.Enabled = False
        Me.Text23.Enabled = False
    Else
        Me.Text21.Enabled = True
        Me.Text22.Enabled = True
        Me.Text23.Enabled = True
    End If
End Sub

Private Sub Check2_Click()
    ' Toggle welcome message text field
    Me.Text7.Enabled = (Me.Check2.Value = 1)
End Sub

Private Sub Combo1_Click()
    ' User selected from combo - load user data
    Dim sUsername As String
    Dim sUserPath As String
    Dim oTextStream As Object

    sUsername = Me.Combo1.Text

    ' Check if valid selection (not placeholder)
    If Left(sUsername, 1) <> " " Then
        sUserPath = gAppPath & "habbos\" & LCase(sUsername)

        ' Check if user folder exists
        If gFSO.FolderExists(sUserPath) Then
            ' Load name.txt
            Set oTextStream = gFSO.OpenTextFile(sUserPath & "\name.txt", 1, False, 0)
            Me.Text8.Text = oTextStream.ReadAll

            ' Load pass.txt
            Set oTextStream = gFSO.OpenTextFile(sUserPath & "\pass.txt", 1, False, 0)
            Me.Text9.Text = oTextStream.ReadAll

            ' Load mission.txt
            Set oTextStream = gFSO.OpenTextFile(sUserPath & "\mission.txt", 1, False, 0)
            Me.Text10.Text = oTextStream.ReadAll

            ' Load email.txt
            Set oTextStream = gFSO.OpenTextFile(sUserPath & "\email.txt", 1, False, 0)
            Me.Text25.Text = oTextStream.ReadAll

            ' Load birth.txt
            Set oTextStream = gFSO.OpenTextFile(sUserPath & "\birth.txt", 1, False, 0)
            Me.Text26.Text = oTextStream.ReadAll

            ' Load badges.txt
            Set oTextStream = gFSO.OpenTextFile(sUserPath & "\badges.txt", 1, False, 0)
            Me.Text27.Text = oTextStream.ReadAll

            ' Load poolfigure.txt
            Set oTextStream = gFSO.OpenTextFile(sUserPath & "\poolfigure.txt", 1, False, 0)
            Me.Text28.Text = oTextStream.ReadAll

            ' Populate rank combo
            Me.Combo2.Clear
            Me.Combo2.AddItem "habbo"
            Me.Combo2.AddItem "habbox"
            Me.Combo2.AddItem "silver"
            Me.Combo2.AddItem "gold"
            Me.Combo2.AddItem "moderator"
            Me.Combo2.AddItem "admin"

            ' Load rank.txt into combo
            Set oTextStream = gFSO.OpenTextFile(sUserPath & "\rank.txt", 1, False, 0)
            Me.Combo2.Text = oTextStream.ReadAll

            ' Load credits.txt
            Set oTextStream = gFSO.OpenTextFile(sUserPath & "\credits.txt", 1, False, 0)
            Me.Text11.Text = oTextStream.ReadAll

            ' Enable user fields
            Me.Text9.Enabled = True
            Me.Text10.Enabled = True
            Me.Combo2.Enabled = True
            Me.Text11.Enabled = True
            Me.Text28.Enabled = True
            Me.Text25.Enabled = True
            Me.Text26.Enabled = True
            Me.Text27.Enabled = True
            Me.Command8.Enabled = True
            Me.Command9.Enabled = True
        Else
            MsgBox GetLocaleString("user_doesnt_exists"), vbExclamation, "Server"
        End If
    Else
        MsgBox GetLocaleString("name_invalid"), vbExclamation, "Server"
    End If
End Sub

Private Sub Combo3_Click()
    ' Room selected from combo - load room data
    Dim sComboText As String
    Dim vParts As Variant
    Dim sRoomId As String
    Dim sRoomPath As String
    Dim oTextStream As Object

    sComboText = Me.Combo3.Text

    ' Extract room ID from combo text (first part before space)
    vParts = Split(sComboText, " ", -1, 0)

    ' Check if room ID is numeric (valid selection)
    If IsNumeric(vParts(0)) = False Then Exit Sub

    sRoomId = CStr(vParts(0))
    sRoomPath = gAppPath & "privaterooms\" & sRoomId

    ' Check if room folder exists
    If gFSO.FolderExists(sRoomPath) = False Then Exit Sub

    ' Load owner.txt
    vParts = Split(Me.Combo3.Text, " ", -1, 0)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vParts(0)) & "\owner.txt", 1, False, 0)
    Me.Text15.Text = oTextStream.ReadAll

    ' Load name.txt
    vParts = Split(Me.Combo3.Text, " ", -1, 0)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vParts(0)) & "\name.txt", 1, False, 0)
    Me.Text12.Text = oTextStream.ReadAll

    ' Load description.txt
    vParts = Split(Me.Combo3.Text, " ", -1, 0)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vParts(0)) & "\description.txt", 1, False, 0)
    Me.Text13.Text = oTextStream.ReadAll

    ' Load pass.txt (room password)
    vParts = Split(Me.Combo3.Text, " ", -1, 0)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vParts(0)) & "\pass.txt", 1, False, 0)
    Me.Text14.Text = oTextStream.ReadAll

    ' Store room ID
    vParts = Split(Me.Combo3.Text, " ", -1, 0)
    Me.room_id.Caption = CStr(vParts(0))

    ' Enable password field only if it has content (not blank or "null")
    If Me.Text14.Text <> " " And Me.Text14.Text <> vbNullString And Me.Text14.Text <> "null" Then
        Me.Text14.Enabled = True
    Else
        Me.Text14.Enabled = False
    End If

    ' Enable room editing controls
    Me.Command10.Enabled = True
    Me.Command11.Enabled = True
    Me.Command12.Enabled = True
    Me.Command20.Enabled = True
    Me.Text12.Enabled = True
    Me.Text13.Enabled = True
End Sub

Private Sub Combo4_Click()
    ' Rank selected - load rank settings
    Dim sRankName As String
    Dim sRankFile As String
    Dim i As Integer

    sRankName = Me.Combo4.Text
    sRankFile = gAppPath & "ranks\" & sRankName & ".ini"

    ' Load speech command rights
    For i = 0 To 20
        Me.rights(i).Value = CInt(GetINI("rank", "speech_cmd" & CStr(i), sRankFile))
    Next i

    ' Load mod-tool rights
    For i = 0 To 4
        Me.mtool(i).Value = CInt(GetINI("rank", "mod_tool" & CStr(i), sRankFile))
    Next i

    ' Load badges
    Me.Text17.Text = GetINI("rank", "badges", sRankFile)

    ' Load other rights
    Me.Check4.Value = CInt(GetINI("rank", "admin_catalogue", sRankFile))
    Me.Check5.Value = CInt(GetINI("rank", "see_room_owner", sRankFile))
    Me.Check6.Value = CInt(GetINI("rank", "enter_any_room", sRankFile))
    Me.Check7.Value = CInt(GetINI("rank", "receive_cfh", sRankFile))
    Me.Check8.Value = CInt(GetINI("rank", "rights_any_room", sRankFile))
    Me.Text18.Text = GetINI("rank", "other_rights", sRankFile)
End Sub

Private Sub Combo5_Click()
    ' Deleted room selected for potential restore
End Sub

Private Sub Command1_Click()
    ' Cancel button on Limits tab - reloads settings from INI files
    Dim sSettingsPath As String

    sSettingsPath = gAppPath & "configuration\settings.ini"

    ' Reload room settings from server settings file
    Me.Text1.Text = GetINI("server", "maxroomsperuser", gSettingsFile)
    Me.Text2.Text = GetINI("server", "maxguestroomsinlist", gSettingsFile)
    Me.Text3.Text = GetINI("server", "maxfavouriterooms", gSettingsFile)

    ' Reload config settings from settings.ini
    Me.Text4.Text = GetINI("config", "maxrollersinroom", sSettingsPath)
    Me.Text5.Text = GetINI("config", "maxpetsinroom", sSettingsPath)
    Me.Text24.Text = GetINI("config", "maxfriends", sSettingsPath)
End Sub

Private Sub Command2_Click()
    ' Save button on Limits tab - saves settings to INI files
    Dim sSettingsPath As String

    sSettingsPath = gAppPath & "configuration\settings.ini"

    ' Save room settings to server settings file
    WriteINI "server", "maxroomsperuser", Me.Text1.Text, gSettingsFile
    WriteINI "server", "maxguestroomsinlist", Me.Text2.Text, gSettingsFile
    WriteINI "server", "maxfavouriterooms", Me.Text3.Text, gSettingsFile

    ' Save config settings to settings.ini
    WriteINI "config", "maxrollersinroom", Me.Text4.Text, sSettingsPath
    WriteINI "config", "maxpetsinroom", Me.Text5.Text, sSettingsPath
    WriteINI "config", "maxfriends", Me.Text24.Text, sSettingsPath
End Sub

Private Sub Command3_Click()
    ' Add user button
    Dim sUsername As String
    sUsername = InputBox(GetLocaleString("enter_username"), GetLocaleString("add_user"))

    If sUsername <> vbNullString Then
        CreateNewUser sUsername
        PopulateUserList
    End If
End Sub

Private Sub Command4_Click()
    ' Remove user button
    Dim sUsername As String
    sUsername = Me.Combo1.Text

    If Left(sUsername, 1) <> " " Then
        If MsgBox(GetLocaleString("confirm_delete_user") & " " & sUsername & "?", vbYesNo + vbQuestion) = vbYes Then
            DeleteUser sUsername
            PopulateUserList
            ClearUserFields
        End If
    End If
End Sub

Private Sub Command5_Click()
    ' Cancel button on Settings tab - reload
    LoadServerSettings
End Sub

Private Sub Command6_Click()
    ' Save button on Settings tab
    WriteINI "config", "bobba_filter", CStr(Me.Check1.Value), gSettingsFile
    WriteINI "config", "console", CStr(Me.Check3.Value), gSettingsFile
    WriteINI "config", "welcome_message", CStr(Me.Check2.Value) & "," & Me.Text7.Text, gSettingsFile
    WriteINI "config", "register_message", CStr(Me.Check10.Value) & "," & Me.Text21.Text & "," & Me.Text22.Text, gSettingsFile
    WriteFile gAppPath & "register_message.txt", Me.Text23.Text
End Sub

Private Sub Command7_Click()
    ' Load user into editor button
    Dim sUsername As String
    sUsername = Me.Combo1.Text

    If Left(sUsername, 1) <> " " Then
        LoadUserEditor sUsername
    End If
End Sub

Private Sub Command8_Click()
    ' Cancel button on User editor - reload user data
    Combo1_Click
End Sub

Private Sub Command9_Click()
    ' Save user changes button - handles user data saving and moderator promotion
    Dim sUsername As String
    Dim sUserPath As String
    Dim sOldRank As String
    Dim sNewRank As String
    Dim oTextStream As Object
    Dim sModPath As String
    Dim nResponse As Integer

    ' Disable buttons during save
    Me.Command9.Enabled = False
    Me.Command8.Enabled = False

    sUsername = Me.Text8.Text

    ' Check if username is empty or user doesn't exist
    If sUsername = vbNullString Then
        MsgBox GetLocaleString("user_doesnt_exists"), vbExclamation, "Server"
        GoTo ExitSub
    End If

    sUserPath = gAppPath & "habbos\" & LCase(sUsername)

    If gFSO.FolderExists(sUserPath) = False Then
        MsgBox GetLocaleString("user_doesnt_exists"), vbExclamation, "Server"
        GoTo ExitSub
    End If

    ' Ensure fields have at least a space if empty
    If Me.Text9.Text = vbNullString Then
        Me.Text9.Text = " "
    End If
    If Me.Text10.Text = vbNullString Then
        Me.Text10.Text = " "
    End If

    ' Validate rank selection
    sNewRank = Me.Combo2.Text
    If sNewRank <> "habbo" And sNewRank <> "habbox" And sNewRank <> "silver" And sNewRank <> "gold" And sNewRank <> "moderator" And sNewRank <> "admin" Then
        Me.Combo2.Text = "habbo"
        sNewRank = "habbo"
    End If

    ' Validate credits is numeric
    If IsNumeric(Me.Text11.Text) = False Then
        Me.Text11.Text = "0"
    End If

    ' Read old rank from file
    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\rank.txt", 1, False, 0)
    sOldRank = oTextStream.ReadAll

    ' Check if user is being promoted to moderator
    If sOldRank <> "moderator" And sNewRank = "moderator" Then
        ' Show confirmation dialog for moderator promotion
        nResponse = MsgBox(Replace(GetLocaleString("user_to_mod_msg"), "%name%", "MOD-" & sUsername, 1, -1, 1), vbYesNo + vbQuestion, "Server")

        If nResponse = vbNo Then
            GoTo ExitSub
        End If

        ' Check if MOD- account already exists
        sModPath = gAppPath & "habbos\mod-" & LCase(sUsername)
        If gFSO.FolderExists(sModPath) Then
            MsgBox "MOD-" & sUsername & " " & GetLocaleString("already_exists"), vbExclamation, "Server"
            GoTo ExitSub
        End If

        ' Copy user folder to MOD- folder
        gFSO.CopyFolder sUserPath, sModPath, True

        ' Create empty files for new MOD account
        Set oTextStream = gFSO.OpenTextFile(sModPath & "\hand.txt", 2, False, 0)
        oTextStream.Write ";"

        Set oTextStream = gFSO.OpenTextFile(sModPath & "\badges.txt", 2, False, 0)
        oTextStream.Write ";"

        Set oTextStream = gFSO.OpenTextFile(sModPath & "\badgeonoff.txt", 2, False, 0)
        oTextStream.Write "0"

        Set oTextStream = gFSO.OpenTextFile(sModPath & "\curbadge.txt", 2, False, 0)
        oTextStream.Write "ADM"

        Set oTextStream = gFSO.OpenTextFile(sModPath & "\credits.txt", 2, False, 0)
        oTextStream.Write "0"

        Set oTextStream = gFSO.OpenTextFile(sModPath & "\name.txt", 2, False, 0)
        oTextStream.Write "MOD-" & sUsername

        Set oTextStream = gFSO.OpenTextFile(sModPath & "\rooms.txt", 2, False, 0)
        oTextStream.Write "0"

        Set oTextStream = gFSO.OpenTextFile(sModPath & "\roomlist.txt", 2, False, 0)
        oTextStream.Write vbNullString

        Set oTextStream = gFSO.OpenTextFile(sModPath & "\inquiries.txt", 2, False, 0)
        oTextStream.Write vbNullString

        Set oTextStream = gFSO.OpenTextFile(sModPath & "\friendlist.txt", 2, False, 0)
        oTextStream.Write vbNullString

        Set oTextStream = gFSO.OpenTextFile(sModPath & "\mission.txt", 2, False, 0)
        oTextStream.Write " "

        Set oTextStream = gFSO.OpenTextFile(sModPath & "\figure.txt", 2, False, 0)
        oTextStream.Write " "

        Set oTextStream = gFSO.OpenTextFile(sModPath & "\poolfigure.txt", 2, False, 0)
        oTextStream.Write " "

        Set oTextStream = gFSO.OpenTextFile(sModPath & "\sex.txt", 2, False, 0)
        oTextStream.Write "M"

        Set oTextStream = gFSO.OpenTextFile(sModPath & "\rank.txt", 2, False, 0)
        oTextStream.Write "moderator"

        Set oTextStream = gFSO.OpenTextFile(sModPath & "\pass.txt", 2, False, 0)
        oTextStream.Write Me.Text9.Text
    Else
        ' Normal save - write all user data
        Set oTextStream = gFSO.OpenTextFile(sUserPath & "\pass.txt", 2, False, 0)
        oTextStream.Write Me.Text9.Text

        Set oTextStream = gFSO.OpenTextFile(sUserPath & "\mission.txt", 2, False, 0)
        oTextStream.Write Me.Text10.Text

        Set oTextStream = gFSO.OpenTextFile(sUserPath & "\credits.txt", 2, False, 0)
        oTextStream.Write Me.Text11.Text

        Set oTextStream = gFSO.OpenTextFile(sUserPath & "\email.txt", 2, False, 0)
        oTextStream.Write Me.Text25.Text

        Set oTextStream = gFSO.OpenTextFile(sUserPath & "\birth.txt", 2, False, 0)
        oTextStream.Write Me.Text26.Text

        Set oTextStream = gFSO.OpenTextFile(sUserPath & "\badges.txt", 2, False, 0)
        oTextStream.Write Me.Text27.Text

        Set oTextStream = gFSO.OpenTextFile(sUserPath & "\poolfigure.txt", 2, False, 0)
        oTextStream.Write Me.Text28.Text

        Set oTextStream = gFSO.OpenTextFile(sUserPath & "\rank.txt", 2, False, 0)
        oTextStream.Write sNewRank

        MsgBox GetLocaleString("user_saved"), vbInformation, "Server"
    End If

ExitSub:
    Me.Command9.Enabled = True
    Me.Command8.Enabled = True
End Sub

Private Sub Command10_Click()
    ' Delete room button - marks room as deleted and updates owner's room count
    Dim sRoomId As String
    Dim sRoomPath As String
    Dim sOwnerName As String
    Dim sOwnerPath As String
    Dim sRoomCount As String
    Dim lRoomCount As Long
    Dim sRoomList As String
    Dim oTextStream As Object
    Dim oFolder As Object
    Dim oSubFolder As Object
    Dim vPathParts As Variant
    Dim sSubFolderName As String
    Dim sPath As String
    Dim sRoomName As String
    Dim i As Variant

    sRoomId = Me.room_id.Caption
    sRoomPath = gAppPath & "privaterooms\" & sRoomId

    ' Check if room folder exists
    If gFSO.FolderExists(sRoomPath) = False Then Exit Sub

    ' Read owner name from owner.txt
    Set oTextStream = gFSO.OpenTextFile(sRoomPath & "\owner.txt", 1, False, 0)
    sOwnerName = oTextStream.ReadAll

    ' Check if owner's habbo folder exists
    sOwnerPath = gAppPath & "habbos\" & LCase(sOwnerName)
    If gFSO.FolderExists(sOwnerPath) = False Then Exit Sub

    ' Read current room count from owner's rooms.txt
    Set oTextStream = gFSO.OpenTextFile(sOwnerPath & "\rooms.txt", 1, False, 0)
    sRoomCount = oTextStream.ReadAll
    lRoomCount = Val(sRoomCount)

    ' Ensure room count doesn't go below 1
    If lRoomCount <= 0 Then
        lRoomCount = 1
    End If

    ' Decrement room count and save
    Set oTextStream = gFSO.OpenTextFile(sOwnerPath & "\rooms.txt", 2, False, 0)
    oTextStream.Write CStr(lRoomCount - 1)

    ' Update owner's roomlist.txt - check if it's empty
    Set oTextStream = gFSO.OpenTextFile(sOwnerPath & "\roomlist.txt", 1, False, 0)
    If oTextStream.AtEndOfStream Then
        ' File is empty, write empty string
        Set oTextStream = gFSO.OpenTextFile(sOwnerPath & "\roomlist.txt", 2, False, 0)
        oTextStream.Write vbNullString
    Else
        ' Read current list and remove this room
        Set oTextStream = gFSO.OpenTextFile(sOwnerPath & "\roomlist.txt", 1, False, 0)
        sRoomList = oTextStream.ReadAll
        sRoomList = Replace(sRoomList, "<" & sRoomId & ">", vbNullString, 1, -1, 1)

        Set oTextStream = gFSO.OpenTextFile(sOwnerPath & "\roomlist.txt", 2, False, 0)
        oTextStream.Write sRoomList
    End If

    ' Create deleted.txt marker file in room folder
    gFSO.CreateTextFile sRoomPath & "\deleted.txt", True, False

    ' Clear room editing fields
    Me.Combo3.Clear
    Me.Combo5.Clear
    Me.room_id.Caption = "0"
    Me.Text12.Text = vbNullString
    Me.Text13.Text = vbNullString
    Me.Text14.Text = vbNullString
    Me.Command10.Enabled = False
    Me.Command11.Enabled = False
    Me.Command12.Enabled = False
    Me.Command20.Enabled = False

    ' Set combo placeholder text
    Me.Combo3.Text = " -- " & GetLocaleString("roomlist_combo") & " -- "
    Me.Combo5.Text = " -- " & GetLocaleString("roomlist_combo") & " -- "

    ' Repopulate room combos from privaterooms folder
    Set oFolder = gFSO.GetFolder(gAppPath & "privaterooms")
    For Each oSubFolder In oFolder.SubFolders
        sPath = oSubFolder.Path

        ' Extract room ID from path
        vPathParts = Split(sPath, "\", -1, 0)
        For i = 1 To UBound(vPathParts)
            sSubFolderName = vPathParts(i)
        Next i

        ' Check if room is deleted
        If gFSO.FileExists(sPath & "\deleted.txt") = False Then
            ' Active room - add to Combo3
            Set oTextStream = gFSO.OpenTextFile(sPath & "\name.txt", 1, False, 0)
            sRoomName = oTextStream.ReadAll

            Set oTextStream = gFSO.OpenTextFile(sPath & "\owner.txt", 1, False, 0)
            sOwnerName = oTextStream.ReadAll

            Me.Combo3.AddItem sSubFolderName & " Name: " & sRoomName & " Besitzer: " & sOwnerName
        Else
            ' Deleted room - add to Combo5 for restore
            Set oTextStream = gFSO.OpenTextFile(sPath & "\name.txt", 1, False, 0)
            sRoomName = oTextStream.ReadAll

            Set oTextStream = gFSO.OpenTextFile(sPath & "\owner.txt", 1, False, 0)
            sOwnerName = oTextStream.ReadAll

            Me.Combo5.AddItem sSubFolderName & " Name: " & sRoomName & " Besitzer: " & sOwnerName
        End If
    Next oSubFolder

    ' Re-enable buttons
    Me.Command10.Enabled = True
    Me.Command11.Enabled = True
    Me.Command12.Enabled = True
    Me.Command20.Enabled = True
End Sub

Private Sub Command11_Click()
    ' Save room changes button - writes room data and repopulates lists
    Dim sRoomId As String
    Dim sRoomPath As String
    Dim oTextStream As Object
    Dim oFolder As Object
    Dim oSubFolder As Object
    Dim vPathParts As Variant
    Dim sSubFolderName As String
    Dim sPath As String
    Dim sRoomName As String
    Dim sOwnerName As String
    Dim i As Variant

    sRoomId = Me.room_id.Caption
    sRoomPath = gAppPath & "privaterooms\" & sRoomId

    ' Check if room folder exists
    If gFSO.FolderExists(sRoomPath) = False Then Exit Sub

    ' Ensure text fields have at least a space if empty
    If Me.Text12.Text = vbNullString Then
        Me.Text12.Text = " "
    End If
    If Me.Text13.Text = vbNullString Then
        Me.Text13.Text = " "
    End If
    If Me.Text14.Text = vbNullString Then
        Me.Text14.Text = " "
    End If

    ' Save room name
    Set oTextStream = gFSO.OpenTextFile(sRoomPath & "\name.txt", 2, False, 0)
    oTextStream.Write Me.Text12.Text

    ' Save room description
    Set oTextStream = gFSO.OpenTextFile(sRoomPath & "\description.txt", 2, False, 0)
    oTextStream.Write Me.Text13.Text

    ' Save room password
    Set oTextStream = gFSO.OpenTextFile(sRoomPath & "\pass.txt", 2, False, 0)
    oTextStream.Write Me.Text14.Text

    ' Clear and repopulate room combos
    Me.Combo3.Clear
    Me.Combo5.Clear
    Me.room_id.Caption = "0"
    Me.Text12.Text = vbNullString
    Me.Text13.Text = vbNullString
    Me.Text14.Text = vbNullString
    Me.Command10.Enabled = False
    Me.Command11.Enabled = False
    Me.Command12.Enabled = False
    Me.Command20.Enabled = False

    ' Set combo placeholder text
    Me.Combo3.Text = " -- " & GetLocaleString("roomlist_combo") & " -- "
    Me.Combo5.Text = " -- " & GetLocaleString("roomlist_combo") & " -- "

    ' Repopulate room combos from privaterooms folder
    Set oFolder = gFSO.GetFolder(gAppPath & "privaterooms")
    For Each oSubFolder In oFolder.SubFolders
        sPath = oSubFolder.Path

        ' Extract room ID from path
        vPathParts = Split(sPath, "\", -1, 0)
        For i = 1 To UBound(vPathParts)
            sSubFolderName = vPathParts(i)
        Next i

        ' Check if room is deleted
        If gFSO.FileExists(sPath & "\deleted.txt") = False Then
            ' Active room - add to Combo3
            Set oTextStream = gFSO.OpenTextFile(sPath & "\name.txt", 1, False, 0)
            sRoomName = oTextStream.ReadAll

            Set oTextStream = gFSO.OpenTextFile(sPath & "\owner.txt", 1, False, 0)
            sOwnerName = oTextStream.ReadAll

            Me.Combo3.AddItem sSubFolderName & " Name: " & sRoomName & " Besitzer: " & sOwnerName
        Else
            ' Deleted room - add to Combo5 for restore
            Set oTextStream = gFSO.OpenTextFile(sPath & "\name.txt", 1, False, 0)
            sRoomName = oTextStream.ReadAll

            Set oTextStream = gFSO.OpenTextFile(sPath & "\owner.txt", 1, False, 0)
            sOwnerName = oTextStream.ReadAll

            Me.Combo5.AddItem sSubFolderName & " Name: " & sRoomName & " Besitzer: " & sOwnerName
        End If
    Next oSubFolder
End Sub

Private Sub Command12_Click()
    ' Cancel room changes button - reloads room data from files
    Dim sRoomComboText As String
    Dim vParts As Variant
    Dim sRoomId As String
    Dim sRoomPath As String
    Dim oTextStream As Object

    sRoomComboText = Me.Combo3.Text

    ' Extract room ID from combo text (first part before space)
    vParts = Split(sRoomComboText, " ", -1, 0)
    sRoomId = CStr(vParts(0))
    sRoomPath = gAppPath & "privaterooms\" & sRoomId

    ' Reload room name
    Set oTextStream = gFSO.OpenTextFile(sRoomPath & "\name.txt", 1, False, 0)
    Me.Text12.Text = oTextStream.ReadAll

    ' Reload room description
    vParts = Split(Me.Combo3.Text, " ", -1, 0)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vParts(0)) & "\description.txt", 1, False, 0)
    Me.Text13.Text = oTextStream.ReadAll

    ' Reload room password
    vParts = Split(Me.Combo3.Text, " ", -1, 0)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vParts(0)) & "\pass.txt", 1, False, 0)
    Me.Text14.Text = oTextStream.ReadAll

    ' Store room ID
    vParts = Split(Me.Combo3.Text, " ", -1, 0)
    Me.room_id.Caption = CStr(vParts(0))

    ' Enable password field only if it has content
    If Me.Text14.Text <> " " And Me.Text14.Text <> vbNullString Then
        Me.Text14.Enabled = True
    Else
        Me.Text14.Enabled = False
    End If

    Me.Text12.Enabled = True
    Me.Text13.Enabled = True
End Sub

Private Sub Command13_Click()
    ' Cancel button on Categories tab - reloads category settings from files
    Dim i As Variant
    Dim sCatCodes(0 To 9) As String

    ' Initialize category codes array
    sCatCodes(0) = "SL"
    sCatCodes(1) = "RL"
    sCatCodes(2) = "PR"
    sCatCodes(3) = "RQ"
    sCatCodes(4) = "SV"
    sCatCodes(5) = "Q]"
    sCatCodes(6) = "R]"
    sCatCodes(7) = "PL"
    sCatCodes(8) = "RN"
    sCatCodes(9) = "RR"

    ' Reload category settings
    For i = 0 To 9
        Me.catprop(CInt(i)).Clear
        Me.catprop(CInt(i)).AddItem "0"
        Me.catprop(CInt(i)).AddItem "1"
        Me.catprop(CInt(i)).AddItem "2"
        Me.catprop(CInt(i)).Text = GetINI("categories", sCatCodes(CInt(i)), gAppPath & "room_categories\categories.ini")
        Me.catname(CInt(i)).Text = GetLocaleString("categorie_" & CStr(CInt(i) + 1))

        ' Check for trading allowed file
        If gFSO.FileExists(gAppPath & "room_categories\allowtrade_" & sCatCodes(CInt(i)) & ".txt") Then
            Me.allowtraden(CInt(i)).Value = 1
        Else
            Me.allowtraden(CInt(i)).Value = 0
        End If
    Next i
End Sub

Private Sub Command14_Click()
    ' Save button on Categories tab - saves category settings to files
    Dim i As Variant
    Dim sCatCodes(0 To 9) As String
    Dim sLocalePath As String

    ' Disable buttons during save
    Me.Command13.Enabled = False
    Me.Command14.Enabled = False

    ' Initialize category codes array
    sCatCodes(0) = "SL"
    sCatCodes(1) = "RL"
    sCatCodes(2) = "PR"
    sCatCodes(3) = "RQ"
    sCatCodes(4) = "SV"
    sCatCodes(5) = "Q]"
    sCatCodes(6) = "R]"
    sCatCodes(7) = "PL"
    sCatCodes(8) = "RN"
    sCatCodes(9) = "RR"

    On Error Resume Next

    ' Save category settings
    For i = 0 To 9
        ' Save category property (enabled state)
        WriteINI "categories", sCatCodes(CInt(i)), Me.catprop(CInt(i)).Text, gAppPath & "room_categories\categories.ini"

        ' Save category name to locale file
        sLocalePath = App.Path & "\locale\" & GetINI("server", "lang", gSettingsFile) & "\locale.txt"
        WriteINI "locale", "categorie_" & CStr(CInt(i) + 1), Me.catname(CInt(i)).Text, sLocalePath

        ' Handle trading allowed file
        If Me.allowtraden(CInt(i)).Value = 1 Then
            ' Create trading allowed file if it doesn't exist
            If gFSO.FileExists(gAppPath & "room_categories\allowtrade_" & sCatCodes(CInt(i)) & ".txt") = False Then
                gFSO.CreateTextFile gAppPath & "room_categories\allowtrade_" & sCatCodes(CInt(i)) & ".txt", False, False
            End If
        Else
            ' Delete trading allowed file if it exists
            If gFSO.FileExists(gAppPath & "room_categories\allowtrade_" & sCatCodes(CInt(i)) & ".txt") Then
                gFSO.DeleteFile gAppPath & "room_categories\allowtrade_" & sCatCodes(CInt(i)) & ".txt", False
            End If
        End If
    Next i

    ' Re-enable buttons
    Me.Command14.Enabled = True
    Me.Command13.Enabled = True
End Sub

Private Sub Command15_Click()
    ' Save bobba replacement button - saves replacement word and updates frmMain textbox
    Dim oTextStream As Object
    Dim sBobbaContent As String

    Me.Command15.Enabled = False

    ' Save replacement word to settings
    WriteINI "config", "replacement", Me.Text16.Text, gAppPath & "configuration\settings.ini"

    ' Check if bobbafilter.ini has content
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "configuration\bobbafilter.ini", 1, False, 0)
    If oTextStream.AtEndOfStream = False Then
        ' Read bobba filter content and update frmMain textbox
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "configuration\bobbafilter.ini", 1, False, 0)
        sBobbaContent = oTextStream.ReadAll
        frmMain.Text1.Text = GetINI("config", "replacement", gAppPath & "configuration\settings.ini") & Chr(1) & sBobbaContent
    End If

    Me.Command15.Enabled = True
End Sub

Private Sub Command16_Click()
    ' Cancel button on Ranks tab - reloads rank settings from INI file
    Dim sRankName As String
    Dim sRankFile As String
    Dim i As Integer

    sRankName = Me.Combo4.Text

    ' Check if rank name is valid (not placeholder)
    If sRankName = vbNullString Or sRankName = GetLocaleString("ranks") Then Exit Sub

    sRankFile = gAppPath & "ranks\" & sRankName & ".ini"

    ' Check if rank file exists
    If gFSO.FileExists(sRankFile) = False Then Exit Sub

    ' Load speech command rights
    For i = 0 To 20
        Me.rights(i).Value = CInt(Val(GetINI("rank", "speech_cmd" & CStr(i), sRankFile)))
    Next i

    ' Load mod-tool rights
    For i = 0 To 4
        Me.mtool(i).Value = CInt(Val(GetINI("rank", "mod_tool" & CStr(i), sRankFile)))
    Next i

    ' Load badges
    Me.Text17.Text = GetINI("rank", "badges", sRankFile)

    ' Load other rights
    Me.Check4.Value = CInt(Val(GetINI("rank", "admin_catalogue", sRankFile)))
    Me.Check5.Value = CInt(Val(GetINI("rank", "see_room_owner", sRankFile)))
    Me.Check6.Value = CInt(Val(GetINI("rank", "enter_any_room", sRankFile)))
    Me.Check7.Value = CInt(Val(GetINI("rank", "receive_cfh", sRankFile)))
    Me.Check8.Value = CInt(Val(GetINI("rank", "rights_any_room", sRankFile)))
    Me.Text18.Text = GetINI("rank", "other_rights", sRankFile)
End Sub

Private Sub Command17_Click()
    ' Save button on Ranks tab - saves rank settings to INI file
    Dim sRankName As String
    Dim sRankFile As String
    Dim i As Integer

    sRankName = Me.Combo4.Text

    ' Check if rank name is valid (not placeholder)
    If sRankName = vbNullString Or sRankName = GetLocaleString("ranks") Then Exit Sub

    sRankFile = gAppPath & "ranks\" & sRankName & ".ini"

    ' Save speech command rights
    For i = 0 To 20
        WriteINI "rank", "speech_cmd" & CStr(i), CStr(Me.rights(i).Value), sRankFile
    Next i

    ' Save mod-tool rights
    For i = 0 To 4
        WriteINI "rank", "mod_tool" & CStr(i), CStr(Me.mtool(i).Value), sRankFile
    Next i

    ' Save badges
    WriteINI "rank", "badges", Me.Text17.Text, sRankFile

    ' Save other rights
    WriteINI "rank", "admin_catalogue", CStr(Me.Check4.Value), sRankFile
    WriteINI "rank", "see_room_owner", CStr(Me.Check5.Value), sRankFile
    WriteINI "rank", "enter_any_room", CStr(Me.Check6.Value), sRankFile
    WriteINI "rank", "receive_cfh", CStr(Me.Check7.Value), sRankFile
    WriteINI "rank", "rights_any_room", CStr(Me.Check8.Value), sRankFile
    WriteINI "rank", "other_rights", Me.Text18.Text, sRankFile
End Sub

Private Sub Command18_Click()
    ' Cancel button on HC Presents tab - reloads HC present settings from INI
    Dim i As Integer
    Dim sSettingsPath As String

    sSettingsPath = gAppPath & "configuration\settings.ini"

    ' Load HC present settings
    For i = 0 To 10
        Me.hcpresent(i).Text = GetINI("HC", "present" & CStr(i + 1), sSettingsPath)
    Next i

    ' Load extra badges settings
    Me.Text19.Text = Mid(GetINI("HC", "hcbadge", sSettingsPath), 2)
    Me.Text20.Text = Mid(GetINI("HC", "hcbadge2", sSettingsPath), 2)
End Sub

Private Sub Command19_Click()
    ' Save button on HC Presents tab - saves HC present settings to INI
    Dim i As Integer
    Dim sSettingsPath As String

    sSettingsPath = gAppPath & "configuration\settings.ini"

    ' Save HC present settings
    For i = 0 To 10
        WriteINI "HC", "present" & CStr(i + 1), Me.hcpresent(i).Text, sSettingsPath
    Next i

    ' Save extra badges settings (with X prefix)
    WriteINI "HC", "hcbadge", "X" & Me.Text19.Text, sSettingsPath
    WriteINI "HC", "hcbadge2", "X" & Me.Text20.Text, sSettingsPath
End Sub

Private Sub Command20_Click()
    ' Restore deleted room button - removes deleted.txt marker and updates owner's room count
    Dim sComboText As String
    Dim vParts As Variant
    Dim sRoomId As String
    Dim sRoomPath As String
    Dim sOwnerName As String
    Dim sOwnerPath As String
    Dim sRoomCount As String
    Dim lRoomCount As Long
    Dim sRoomList As String
    Dim oTextStream As Object
    Dim oFolder As Object
    Dim oSubFolder As Object
    Dim vPathParts As Variant
    Dim sSubFolderName As String
    Dim sPath As String
    Dim sRoomName As String
    Dim i As Variant

    sComboText = Me.Combo5.Text

    ' Extract room ID from combo text (first part before space)
    vParts = Split(sComboText, " ", -1, 0)

    ' Check if room ID is numeric (valid selection)
    If IsNumeric(vParts(0)) = False Then Exit Sub

    sRoomId = CStr(vParts(0))
    sRoomPath = gAppPath & "privaterooms\" & sRoomId

    ' Delete the deleted.txt marker file
    gFSO.DeleteFile sRoomPath & "\deleted.txt", False

    ' Read owner name from owner.txt
    Set oTextStream = gFSO.OpenTextFile(sRoomPath & "\owner.txt", 1, False, 0)
    sOwnerName = oTextStream.ReadAll

    ' Check if owner's habbo folder exists
    sOwnerPath = gAppPath & "habbos\" & LCase(sOwnerName)
    If gFSO.FolderExists(sOwnerPath) = False Then
        ' Owner doesn't exist - just continue
    Else
        ' Read current room count from owner's rooms.txt
        Set oTextStream = gFSO.OpenTextFile(sOwnerPath & "\rooms.txt", 1, False, 0)
        sRoomCount = oTextStream.ReadAll
        lRoomCount = Val(sRoomCount)

        ' Increment room count and save
        Set oTextStream = gFSO.OpenTextFile(sOwnerPath & "\rooms.txt", 2, False, 0)
        oTextStream.Write CStr(lRoomCount + 1)

        ' Update owner's roomlist.txt - add room ID
        Set oTextStream = gFSO.OpenTextFile(sOwnerPath & "\roomlist.txt", 1, False, 0)
        sRoomList = oTextStream.ReadAll
        sRoomList = sRoomList & "<" & sRoomId & ">"

        Set oTextStream = gFSO.OpenTextFile(sOwnerPath & "\roomlist.txt", 2, False, 0)
        oTextStream.Write sRoomList
    End If

    ' Clear room editing fields
    Me.Combo3.Clear
    Me.Combo5.Clear
    Me.room_id.Caption = "0"
    Me.Text12.Text = vbNullString
    Me.Text13.Text = vbNullString
    Me.Text14.Text = vbNullString
    Me.Command10.Enabled = False
    Me.Command11.Enabled = False
    Me.Command12.Enabled = False
    Me.Command20.Enabled = False

    ' Set combo placeholder text
    Me.Combo3.Text = " -- " & GetLocaleString("roomlist_combo") & " -- "
    Me.Combo5.Text = " -- " & GetLocaleString("roomlist_combo") & " -- "

    ' Repopulate room combos from privaterooms folder
    Set oFolder = gFSO.GetFolder(gAppPath & "privaterooms")
    For Each oSubFolder In oFolder.SubFolders
        sPath = oSubFolder.Path

        ' Extract room ID from path
        vPathParts = Split(sPath, "\", -1, 0)
        For i = 1 To UBound(vPathParts)
            sSubFolderName = vPathParts(i)
        Next i

        ' Check if room is deleted
        If gFSO.FileExists(sPath & "\deleted.txt") = False Then
            ' Active room - add to Combo3
            Set oTextStream = gFSO.OpenTextFile(sPath & "\name.txt", 1, False, 0)
            sRoomName = oTextStream.ReadAll

            Set oTextStream = gFSO.OpenTextFile(sPath & "\owner.txt", 1, False, 0)
            sOwnerName = oTextStream.ReadAll

            Me.Combo3.AddItem sSubFolderName & " Name: " & sRoomName & " Besitzer: " & sOwnerName
        Else
            ' Deleted room - add to Combo5 for restore
            Set oTextStream = gFSO.OpenTextFile(sPath & "\name.txt", 1, False, 0)
            sRoomName = oTextStream.ReadAll

            Set oTextStream = gFSO.OpenTextFile(sPath & "\owner.txt", 1, False, 0)
            sOwnerName = oTextStream.ReadAll

            Me.Combo5.AddItem sSubFolderName & " Name: " & sRoomName & " Besitzer: " & sOwnerName
        End If
    Next oSubFolder

    ' Re-enable buttons
    Me.Command10.Enabled = True
    Me.Command11.Enabled = True
    Me.Command12.Enabled = True
    Me.Command20.Enabled = True
End Sub

Private Sub Image1_Click(Index As Integer)
    ' Close button - hide form
    Me.Hide
End Sub

Private Sub Picture2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ' Allow dragging the form, or hide on right-click
    If Button = 1 Then
        ReleaseCapture
        SendMessage Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
    Else
        Me.Hide
    End If
End Sub

Private Sub Text16_Change()
    ' Enable save replacement button when text changes
    Me.Command15.Enabled = True
End Sub

Private Sub hcpresent_Change(Index As Integer)
    ' HC present text changed - no immediate action needed
End Sub

Private Sub PopulateUserList()
    Dim oFolder As Object
    Dim oSubFolder As Object
    Dim sHabbosPath As String

    Me.Combo1.Clear

    sHabbosPath = gAppPath & "habbos"

    If gFSO.FolderExists(sHabbosPath) Then
        Set oFolder = gFSO.GetFolder(sHabbosPath)
        For Each oSubFolder In oFolder.SubFolders
            Me.Combo1.AddItem oSubFolder.Name
        Next oSubFolder
    End If
End Sub

Private Sub PopulateRankList()
    Dim oFolder As Object
    Dim oFile As Object
    Dim sRanksPath As String
    Dim sRankName As String

    Me.Combo4.Clear

    sRanksPath = gAppPath & "ranks"

    If gFSO.FolderExists(sRanksPath) Then
        Set oFolder = gFSO.GetFolder(sRanksPath)
        For Each oFile In oFolder.Files
            If LCase(Right(oFile.Name, 4)) = ".ini" Then
                sRankName = Left(oFile.Name, Len(oFile.Name) - 4)
                Me.Combo4.AddItem sRankName
            End If
        Next oFile
    End If
End Sub

Private Sub PopulateRoomList()
    Dim oFolder As Object
    Dim oSubFolder As Object
    Dim sRoomsPath As String

    Me.Combo3.Clear

    sRoomsPath = gAppPath & "privaterooms"

    If gFSO.FolderExists(sRoomsPath) Then
        Set oFolder = gFSO.GetFolder(sRoomsPath)
        For Each oSubFolder In oFolder.SubFolders
            Me.Combo3.AddItem oSubFolder.Name
        Next oSubFolder
    End If
End Sub

Private Sub PopulateDeletedRooms()
    Dim oFolder As Object
    Dim oSubFolder As Object
    Dim sDeletedPath As String

    Me.Combo5.Clear

    sDeletedPath = gAppPath & "privaterooms_deleted"

    If gFSO.FolderExists(sDeletedPath) Then
        Set oFolder = gFSO.GetFolder(sDeletedPath)
        For Each oSubFolder In oFolder.SubFolders
            Me.Combo5.AddItem oSubFolder.Name
        Next oSubFolder
    End If
End Sub

Private Sub LoadServerSettings()
    ' Load server port
    Me.Text6.Text = GetINI("server", "port", gSettingsFile)

    ' Load bobba filter setting
    Me.Check1.Value = CInt(GetINI("config", "bobba_filter", gSettingsFile))

    ' Load console setting
    Me.Check3.Value = CInt(GetINI("config", "console", gSettingsFile))

    ' Load welcome message setting
    Dim vParts As Variant
    Dim sWelcome As String
    sWelcome = GetINI("config", "welcome_message", gSettingsFile)
    If InStr(sWelcome, ",") > 0 Then
        vParts = Split(sWelcome, ",")
        Me.Check2.Value = CInt(vParts(0))
        Me.Text7.Text = CStr(vParts(1))
        Me.Text7.Enabled = (Me.Check2.Value = 1)
    End If

    ' Load register message setting
    Dim sRegister As String
    sRegister = GetINI("config", "register_message", gSettingsFile)
    If InStr(sRegister, ",") > 0 Then
        vParts = Split(sRegister, ",")
        Me.Check10.Value = CInt(vParts(0))
        Me.Text21.Text = CStr(vParts(1))
        If UBound(vParts) >= 2 Then Me.Text22.Text = CStr(vParts(2))
        Check10_Click
    End If

    ' Load register message text
    If gFSO.FileExists(gAppPath & "register_message.txt") Then
        Dim oTextStream As Object
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "register_message.txt", 1, False, 0)
        Me.Text23.Text = oTextStream.ReadAll
    End If

    ' Load room limits
    Me.Text1.Text = GetINI("limits", "max_rooms_per_user", gSettingsFile)
    Me.Text2.Text = GetINI("limits", "max_rooms_in_list", gSettingsFile)
    Me.Text3.Text = GetINI("limits", "max_favourited_rooms", gSettingsFile)
    Me.Text4.Text = GetINI("limits", "max_rollers_in_room", gSettingsFile)
    Me.Text5.Text = GetINI("limits", "max_pets_in_room", gSettingsFile)
    Me.Text24.Text = GetINI("limits", "max_friends_in_list", gSettingsFile)
End Sub

Private Sub LoadHCPresents()
    Dim i As Integer

    ' Load HC present settings
    For i = 0 To 10
        Me.hcpresent(i).Text = GetINI("HC", "present" & CStr(i + 1), gSettingsFile)
    Next i

    ' Load extra badges settings
    Me.Text19.Text = GetINI("HC", "extrabadge_1_11", gSettingsFile)
    Me.Text20.Text = GetINI("HC", "extrabadge_12", gSettingsFile)
End Sub

Private Sub SaveHCPresents()
    Dim i As Integer

    ' Save HC present settings
    For i = 0 To 10
        WriteINI "HC", "present" & CStr(i + 1), Me.hcpresent(i).Text, gSettingsFile
    Next i

    ' Save extra badges settings
    WriteINI "HC", "extrabadge_1_11", Me.Text19.Text, gSettingsFile
    WriteINI "HC", "extrabadge_12", Me.Text20.Text, gSettingsFile
End Sub

Private Sub LoadCategorySettings()
    Dim i As Integer

    For i = 0 To 9
        Me.catname(i).Text = GetINI("categories", "name" & CStr(i), gSettingsFile)
        Me.catprop(i).Clear
        Me.catprop(i).AddItem "0"
        Me.catprop(i).AddItem "1"
        Me.catprop(i).AddItem "2"
        Me.catprop(i).ListIndex = CInt(GetINI("categories", "enabled" & CStr(i), gSettingsFile))
        Me.allowtraden(i).Value = CInt(GetINI("categories", "trading" & CStr(i), gSettingsFile))
    Next i
End Sub

Private Sub SaveCategorySettings()
    Dim i As Integer

    For i = 0 To 9
        WriteINI "categories", "name" & CStr(i), Me.catname(i).Text, gSettingsFile
        WriteINI "categories", "enabled" & CStr(i), CStr(Me.catprop(i).ListIndex), gSettingsFile
        WriteINI "categories", "trading" & CStr(i), CStr(Me.allowtraden(i).Value), gSettingsFile
    Next i
End Sub

Private Sub SaveRankSettings(ByVal sRankName As String)
    Dim sRankFile As String
    Dim i As Integer

    sRankFile = gAppPath & "ranks\" & sRankName & ".ini"

    ' Save speech command rights
    For i = 0 To 20
        WriteINI "rank", "speech_cmd" & CStr(i), CStr(Me.rights(i).Value), sRankFile
    Next i

    ' Save mod-tool rights
    For i = 0 To 4
        WriteINI "rank", "mod_tool" & CStr(i), CStr(Me.mtool(i).Value), sRankFile
    Next i

    ' Save badges
    WriteINI "rank", "badges", Me.Text17.Text, sRankFile

    ' Save other rights
    WriteINI "rank", "admin_catalogue", CStr(Me.Check4.Value), sRankFile
    WriteINI "rank", "see_room_owner", CStr(Me.Check5.Value), sRankFile
    WriteINI "rank", "enter_any_room", CStr(Me.Check6.Value), sRankFile
    WriteINI "rank", "receive_cfh", CStr(Me.Check7.Value), sRankFile
    WriteINI "rank", "rights_any_room", CStr(Me.Check8.Value), sRankFile
    WriteINI "rank", "other_rights", Me.Text18.Text, sRankFile
End Sub

Private Sub ClearUserFields()
    Me.Text8.Text = vbNullString
    Me.Text9.Text = vbNullString
    Me.Text10.Text = vbNullString
    Me.Text11.Text = vbNullString
    Me.Text25.Text = vbNullString
    Me.Text26.Text = vbNullString
    Me.Text27.Text = vbNullString
    Me.Text28.Text = vbNullString
    Me.Combo2.Text = "-- Choose --"
    Me.Text9.Enabled = False
    Me.Text10.Enabled = False
    Me.Combo2.Enabled = False
    Me.Text11.Enabled = False
    Me.Text25.Enabled = False
    Me.Text26.Enabled = False
    Me.Text27.Enabled = False
    Me.Text28.Enabled = False
    Me.Command8.Enabled = False
    Me.Command9.Enabled = False
End Sub

Private Sub ClearRoomFields()
    Me.room_id.Caption = "0"
    Me.Text12.Text = vbNullString
    Me.Text13.Text = vbNullString
    Me.Text14.Text = vbNullString
    Me.Text15.Text = vbNullString
    Me.Text12.Enabled = False
    Me.Text13.Enabled = False
    Me.Text14.Enabled = False
    Me.Command10.Enabled = False
    Me.Command11.Enabled = False
    Me.Command12.Enabled = False
End Sub

Private Sub SaveUserData()
    Dim sUsername As String
    Dim sUserPath As String
    Dim oTextStream As Object

    sUsername = Me.Text8.Text

    If sUsername = vbNullString Then Exit Sub

    sUserPath = gAppPath & "habbos\" & LCase(sUsername)

    ' Save pass.txt
    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\pass.txt", 2, True, 0)
    oTextStream.Write Me.Text9.Text

    ' Save mission.txt
    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\mission.txt", 2, True, 0)
    oTextStream.Write Me.Text10.Text

    ' Save credits.txt
    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\credits.txt", 2, True, 0)
    oTextStream.Write Me.Text11.Text

    ' Save email.txt
    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\email.txt", 2, True, 0)
    oTextStream.Write Me.Text25.Text

    ' Save birth.txt
    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\birth.txt", 2, True, 0)
    oTextStream.Write Me.Text26.Text

    ' Save badges.txt
    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\badges.txt", 2, True, 0)
    oTextStream.Write Me.Text27.Text

    ' Save poolfigure.txt
    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\poolfigure.txt", 2, True, 0)
    oTextStream.Write Me.Text28.Text

    ' Save rank.txt
    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\rank.txt", 2, True, 0)
    oTextStream.Write Me.Combo2.Text

    MsgBox GetLocaleString("user_saved"), vbInformation, "Server"
End Sub

Private Sub SaveRoomData()
    Dim sRoomId As String
    Dim sRoomPath As String
    Dim oTextStream As Object

    sRoomId = Me.room_id.Caption

    If sRoomId = "0" Or sRoomId = vbNullString Then Exit Sub

    sRoomPath = gAppPath & "privaterooms\" & sRoomId

    ' Save name.txt
    Set oTextStream = gFSO.OpenTextFile(sRoomPath & "\name.txt", 2, True, 0)
    oTextStream.Write Me.Text12.Text

    ' Save description.txt
    Set oTextStream = gFSO.OpenTextFile(sRoomPath & "\description.txt", 2, True, 0)
    oTextStream.Write Me.Text13.Text

    ' Save password.txt
    Set oTextStream = gFSO.OpenTextFile(sRoomPath & "\password.txt", 2, True, 0)
    oTextStream.Write Me.Text14.Text

    MsgBox GetLocaleString("room_saved"), vbInformation, "Server"
End Sub

Private Sub CreateNewUser(ByVal sUsername As String)
    Dim sUserPath As String
    Dim oTextStream As Object

    sUserPath = gAppPath & "habbos\" & LCase(sUsername)

    If gFSO.FolderExists(sUserPath) Then
        MsgBox GetLocaleString("user_already_exists"), vbExclamation, "Server"
        Exit Sub
    End If

    gFSO.CreateFolder sUserPath

    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\name.txt", 2, True, 0)
    oTextStream.Write sUsername

    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\pass.txt", 2, True, 0)
    oTextStream.Write "password"

    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\mission.txt", 2, True, 0)
    oTextStream.Write ""

    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\credits.txt", 2, True, 0)
    oTextStream.Write "0"

    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\rank.txt", 2, True, 0)
    oTextStream.Write "habbo"

    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\email.txt", 2, True, 0)
    oTextStream.Write ""

    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\birth.txt", 2, True, 0)
    oTextStream.Write ""

    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\badges.txt", 2, True, 0)
    oTextStream.Write ""

    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\poolfigure.txt", 2, True, 0)
    oTextStream.Write ""

    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\rooms.txt", 2, True, 0)
    oTextStream.Write "0"

    gFSO.CreateFolder sUserPath & "\directmail"

    MsgBox GetLocaleString("user_created"), vbInformation, "Server"
End Sub

Private Sub DeleteUser(ByVal sUsername As String)
    Dim sUserPath As String
    sUserPath = gAppPath & "habbos\" & LCase(sUsername)

    If gFSO.FolderExists(sUserPath) Then
        gFSO.DeleteFolder sUserPath, True
    End If
End Sub

Private Sub LoadUserEditor(ByVal sUsername As String)
    ' Load user data for editing in Frame6
    ' This is handled by Combo1_Click already
End Sub

Private Sub WriteFile(ByVal sPath As String, ByVal sContent As String)
    Dim oTextStream As Object

    Set oTextStream = gFSO.OpenTextFile(sPath, 2, True, 0)
    oTextStream.Write sContent
    oTextStream.Close
End Sub
