VERSION 5.00
Begin VB.Form frmWelcomes
  Caption = "HabLog ›› Informations"
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


Private Sub cmdCreate_Click() 'B4549C
  'Data Table: 5448E8
  loc_B44DC4: FLdRfVar var_8C
  loc_B44DC7: FLdPrThis
  loc_B44DC8: VCallAd Control_ID_txtHotelName
  loc_B44DCB: FStAdFunc var_88
  loc_B44DCE: FLdPr var_88
  loc_B44DD1:  = Me.Text
  loc_B44DD6: ILdRf var_8C
  loc_B44DD9: LitStr vbNullString
  loc_B44DDC: EqStr
  loc_B44DDE: LitI2_Byte 0
  loc_B44DE0: EqI2
  loc_B44DE1: FFree1Str var_8C
  loc_B44DE4: FFree1Ad var_88
  loc_B44DE7: BranchF loc_B44E0C
  loc_B44DEA: FLdRfVar var_8C
  loc_B44DED: FLdPrThis
  loc_B44DEE: VCallAd Control_ID_txtHotelName
  loc_B44DF1: FStAdFunc var_88
  loc_B44DF4: FLdPr var_88
  loc_B44DF7:  = Me.Text
  loc_B44DFC: FLdZeroAd var_8C
  loc_B44DFF: CVarStr var_AC
  loc_B44E02: FStVar var_9C
  loc_B44E06: FFree1Ad var_88
  loc_B44E09: Branch loc_B44E64
  loc_B44E0C: FLdRfVar var_8C
  loc_B44E0F: FLdPrThis
  loc_B44E10: VCallAd Control_ID_txtHotelName
  loc_B44E13: FStAdFunc var_88
  loc_B44E16: FLdPr var_88
  loc_B44E19:  = Me.Text
  loc_B44E1E: ILdRf var_8C
  loc_B44E21: LitStr vbNullString
  loc_B44E24: EqStr
  loc_B44E26: LitI2_Byte &HFF
  loc_B44E28: EqI2
  loc_B44E29: FFree1Str var_8C
  loc_B44E2C: FFree1Ad var_88
  loc_B44E2F: BranchF loc_B44E64
  loc_B44E32: LitVar_Missing var_11C
  loc_B44E35: LitVar_Missing var_FC
  loc_B44E38: LitVarStr var_CC, "DebboProject :: Your own Hotel!"
  loc_B44E3D: FStVarCopyObj var_DC
  loc_B44E40: FLdRfVar var_DC
  loc_B44E43: LitI4 0
  loc_B44E48: LitVarStr var_BC, "Sorry, but you need to give your Hotel a name!"
  loc_B44E4D: FStVarCopyObj var_AC
  loc_B44E50: FLdRfVar var_AC
  loc_B44E53: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B44E58: FFreeVar var_AC = "": var_DC = "": var_FC = ""
  loc_B44E63: ExitProcHresult
  loc_B44E64: FLdRfVar var_8C
  loc_B44E67: FLdPrThis
  loc_B44E68: VCallAd Control_ID_txtHotelPort
  loc_B44E6B: FStAdFunc var_88
  loc_B44E6E: FLdPr var_88
  loc_B44E71:  = Me.Text
  loc_B44E76: FLdZeroAd var_8C
  loc_B44E79: CVarStr var_AC
  loc_B44E7C: ImpAdCallI2 IsNumeric()
  loc_B44E81: LitI2_Byte &HFF
  loc_B44E83: EqI2
  loc_B44E84: FLdRfVar var_124
  loc_B44E87: FLdPrThis
  loc_B44E88: VCallAd Control_ID_txtHotelPort
  loc_B44E8B: FStAdFunc var_120
  loc_B44E8E: FLdPr var_120
  loc_B44E91:  = Me.Text
  loc_B44E96: ILdRf var_124
  loc_B44E99: LitStr "0"
  loc_B44E9C: EqStr
  loc_B44E9E: LitI2_Byte 0
  loc_B44EA0: EqI2
  loc_B44EA1: AndI4
  loc_B44EA2: FFree1Str var_124
  loc_B44EA5: FFreeAd var_88 = ""
  loc_B44EAC: FFree1Var var_AC = ""
  loc_B44EAF: BranchF loc_B44ED4
  loc_B44EB2: FLdRfVar var_8C
  loc_B44EB5: FLdPrThis
  loc_B44EB6: VCallAd Control_ID_txtHotelPort
  loc_B44EB9: FStAdFunc var_88
  loc_B44EBC: FLdPr var_88
  loc_B44EBF:  = Me.Text
  loc_B44EC4: FLdZeroAd var_8C
  loc_B44EC7: CVarStr var_AC
  loc_B44ECA: FStVar var_134
  loc_B44ECE: FFree1Ad var_88
  loc_B44ED1: Branch loc_B44F75
  loc_B44ED4: FLdRfVar var_8C
  loc_B44ED7: FLdPrThis
  loc_B44ED8: VCallAd Control_ID_txtHotelPort
  loc_B44EDB: FStAdFunc var_88
  loc_B44EDE: FLdPr var_88
  loc_B44EE1:  = Me.Text
  loc_B44EE6: ILdRf var_8C
  loc_B44EE9: LitStr vbNullString
  loc_B44EEC: EqStr
  loc_B44EEE: LitI2_Byte &HFF
  loc_B44EF0: EqI2
  loc_B44EF1: FLdRfVar var_124
  loc_B44EF4: FLdPrThis
  loc_B44EF5: VCallAd Control_ID_txtHotelPort
  loc_B44EF8: FStAdFunc var_120
  loc_B44EFB: FLdPr var_120
  loc_B44EFE:  = Me.Text
  loc_B44F03: FLdZeroAd var_124
  loc_B44F06: CVarStr var_AC
  loc_B44F09: ImpAdCallI2 IsNumeric()
  loc_B44F0E: LitI2_Byte 0
  loc_B44F10: EqI2
  loc_B44F11: OrI4
  loc_B44F12: FLdRfVar var_13C
  loc_B44F15: FLdPrThis
  loc_B44F16: VCallAd Control_ID_txtHotelPort
  loc_B44F19: FStAdFunc var_138
  loc_B44F1C: FLdPr var_138
  loc_B44F1F:  = Me.Text
  loc_B44F24: ILdRf var_13C
  loc_B44F27: LitStr "0"
  loc_B44F2A: EqStr
  loc_B44F2C: OrI4
  loc_B44F2D: FFreeStr var_8C = ""
  loc_B44F34: FFreeAd var_88 = "": var_120 = ""
  loc_B44F3D: FFree1Var var_AC = ""
  loc_B44F40: BranchF loc_B44F75
  loc_B44F43: LitVar_Missing var_11C
  loc_B44F46: LitVar_Missing var_FC
  loc_B44F49: LitVarStr var_CC, "DebboProject :: Your own Hotel!"
  loc_B44F4E: FStVarCopyObj var_DC
  loc_B44F51: FLdRfVar var_DC
  loc_B44F54: LitI4 0
  loc_B44F59: LitVarStr var_BC, "Sorry, but you need to fill out a valid port!"
  loc_B44F5E: FStVarCopyObj var_AC
  loc_B44F61: FLdRfVar var_AC
  loc_B44F64: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B44F69: FFreeVar var_AC = "": var_DC = "": var_FC = ""
  loc_B44F74: ExitProcHresult
  loc_B44F75: FLdRfVar var_8C
  loc_B44F78: FLdPrThis
  loc_B44F79: VCallAd Control_ID_lstHotelLanguage
  loc_B44F7C: FStAdFunc var_88
  loc_B44F7F: FLdPr var_88
  loc_B44F82:  = Me.Text
  loc_B44F87: ILdRf var_8C
  loc_B44F8A: LitStr "English"
  loc_B44F8D: EqStr
  loc_B44F8F: FFree1Str var_8C
  loc_B44F92: FFree1Ad var_88
  loc_B44F95: BranchF loc_B44FA1
  loc_B44F98: LitVarStr var_BC, "US"
  loc_B44F9D: FStVarCopy
  loc_B44FA1: FLdRfVar var_8C
  loc_B44FA4: FLdPrThis
  loc_B44FA5: VCallAd Control_ID_lstHotelLanguage
  loc_B44FA8: FStAdFunc var_88
  loc_B44FAB: FLdPr var_88
  loc_B44FAE:  = Me.Text
  loc_B44FB3: ILdRf var_8C
  loc_B44FB6: LitStr "German"
  loc_B44FB9: EqStr
  loc_B44FBB: FFree1Str var_8C
  loc_B44FBE: FFree1Ad var_88
  loc_B44FC1: BranchF loc_B44FCD
  loc_B44FC4: LitVarStr var_BC, "DE"
  loc_B44FC9: FStVarCopy
  loc_B44FCD: FLdRfVar var_8C
  loc_B44FD0: FLdPrThis
  loc_B44FD1: VCallAd Control_ID_lstHotelLanguage
  loc_B44FD4: FStAdFunc var_88
  loc_B44FD7: FLdPr var_88
  loc_B44FDA:  = Me.Text
  loc_B44FDF: ILdRf var_8C
  loc_B44FE2: LitStr "Dutch"
  loc_B44FE5: EqStr
  loc_B44FE7: FFree1Str var_8C
  loc_B44FEA: FFree1Ad var_88
  loc_B44FED: BranchF loc_B44FF9
  loc_B44FF0: LitVarStr var_BC, "NL"
  loc_B44FF5: FStVarCopy
  loc_B44FF9: FLdRfVar var_8C
  loc_B44FFC: FLdPrThis
  loc_B44FFD: VCallAd Control_ID_lstHotelLanguage
  loc_B45000: FStAdFunc var_88
  loc_B45003: FLdPr var_88
  loc_B45006:  = Me.Text
  loc_B4500B: ILdRf var_8C
  loc_B4500E: LitStr "French"
  loc_B45011: EqStr
  loc_B45013: FFree1Str var_8C
  loc_B45016: FFree1Ad var_88
  loc_B45019: BranchF loc_B45025
  loc_B4501C: LitVarStr var_BC, "FR"
  loc_B45021: FStVarCopy
  loc_B45025: FLdRfVar var_8C
  loc_B45028: FLdPrThis
  loc_B45029: VCallAd Control_ID_lstHotelLanguage
  loc_B4502C: FStAdFunc var_88
  loc_B4502F: FLdPr var_88
  loc_B45032:  = Me.Text
  loc_B45037: ILdRf var_8C
  loc_B4503A: LitStr "Italian"
  loc_B4503D: EqStr
  loc_B4503F: FFree1Str var_8C
  loc_B45042: FFree1Ad var_88
  loc_B45045: BranchF loc_B45051
  loc_B45048: LitVarStr var_BC, "IT"
  loc_B4504D: FStVarCopy
  loc_B45051: FLdRfVar var_8C
  loc_B45054: FLdPrThis
  loc_B45055: VCallAd Control_ID_lstHotelLanguage
  loc_B45058: FStAdFunc var_88
  loc_B4505B: FLdPr var_88
  loc_B4505E:  = Me.Text
  loc_B45063: ILdRf var_8C
  loc_B45066: LitStr "Spanish"
  loc_B45069: EqStr
  loc_B4506B: FFree1Str var_8C
  loc_B4506E: FFree1Ad var_88
  loc_B45071: BranchF loc_B4507D
  loc_B45074: LitVarStr var_BC, "ES"
  loc_B45079: FStVarCopy
  loc_B4507D: FLdRfVar var_8C
  loc_B45080: FLdPrThis
  loc_B45081: VCallAd Control_ID_lstHotelLanguage
  loc_B45084: FStAdFunc var_88
  loc_B45087: FLdPr var_88
  loc_B4508A:  = Me.Text
  loc_B4508F: ILdRf var_8C
  loc_B45092: LitStr "Danish"
  loc_B45095: EqStr
  loc_B45097: FFree1Str var_8C
  loc_B4509A: FFree1Ad var_88
  loc_B4509D: BranchF loc_B450A9
  loc_B450A0: LitVarStr var_BC, "DK"
  loc_B450A5: FStVarCopy
  loc_B450A9: FLdRfVar var_8C
  loc_B450AC: FLdPrThis
  loc_B450AD: VCallAd Control_ID_lstHotelLanguage
  loc_B450B0: FStAdFunc var_88
  loc_B450B3: FLdPr var_88
  loc_B450B6:  = Me.Text
  loc_B450BB: ILdRf var_8C
  loc_B450BE: LitStr "Choose your language"
  loc_B450C1: EqStr
  loc_B450C3: FFree1Str var_8C
  loc_B450C6: FFree1Ad var_88
  loc_B450C9: BranchF loc_B450FE
  loc_B450CC: LitVar_Missing var_11C
  loc_B450CF: LitVar_Missing var_FC
  loc_B450D2: LitVarStr var_CC, "DebboProject :: Your own Hotel!"
  loc_B450D7: FStVarCopyObj var_DC
  loc_B450DA: FLdRfVar var_DC
  loc_B450DD: LitI4 0
  loc_B450E2: LitVarStr var_BC, "Sorry, but you need to choose a language from the list. Using custom languages isn't supported!"
  loc_B450E7: FStVarCopyObj var_AC
  loc_B450EA: FLdRfVar var_AC
  loc_B450ED: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B450F2: FFreeVar var_AC = "": var_DC = "": var_FC = ""
  loc_B450FD: ExitProcHresult
  loc_B450FE: FLdRfVar var_8C
  loc_B45101: FLdPrThis
  loc_B45102: VCallAd Control_ID_txtStartingCreds
  loc_B45105: FStAdFunc var_88
  loc_B45108: FLdPr var_88
  loc_B4510B:  = Me.Text
  loc_B45110: FLdZeroAd var_8C
  loc_B45113: CVarStr var_AC
  loc_B45116: ImpAdCallI2 IsNumeric()
  loc_B4511B: LitI2_Byte &HFF
  loc_B4511D: EqI2
  loc_B4511E: FFree1Ad var_88
  loc_B45121: FFree1Var var_AC = ""
  loc_B45124: BranchF loc_B45149
  loc_B45127: FLdRfVar var_8C
  loc_B4512A: FLdPrThis
  loc_B4512B: VCallAd Control_ID_txtStartingCreds
  loc_B4512E: FStAdFunc var_88
  loc_B45131: FLdPr var_88
  loc_B45134:  = Me.Text
  loc_B45139: FLdZeroAd var_8C
  loc_B4513C: CVarStr var_AC
  loc_B4513F: FStVar var_15C
  loc_B45143: FFree1Ad var_88
  loc_B45146: Branch loc_B451C9
  loc_B45149: FLdRfVar var_8C
  loc_B4514C: FLdPrThis
  loc_B4514D: VCallAd Control_ID_txtStartingCreds
  loc_B45150: FStAdFunc var_88
  loc_B45153: FLdPr var_88
  loc_B45156:  = Me.Text
  loc_B4515B: ILdRf var_8C
  loc_B4515E: LitStr vbNullString
  loc_B45161: EqStr
  loc_B45163: LitI2_Byte &HFF
  loc_B45165: EqI2
  loc_B45166: FLdRfVar var_124
  loc_B45169: FLdPrThis
  loc_B4516A: VCallAd Control_ID_txtStartingCreds
  loc_B4516D: FStAdFunc var_120
  loc_B45170: FLdPr var_120
  loc_B45173:  = Me.Text
  loc_B45178: FLdZeroAd var_124
  loc_B4517B: CVarStr var_AC
  loc_B4517E: ImpAdCallI2 IsNumeric()
  loc_B45183: LitI2_Byte 0
  loc_B45185: EqI2
  loc_B45186: OrI4
  loc_B45187: FFree1Str var_8C
  loc_B4518A: FFreeAd var_88 = ""
  loc_B45191: FFree1Var var_AC = ""
  loc_B45194: BranchF loc_B451C9
  loc_B45197: LitVar_Missing var_11C
  loc_B4519A: LitVar_Missing var_FC
  loc_B4519D: LitVarStr var_CC, "DebboProject :: Your own Hotel!"
  loc_B451A2: FStVarCopyObj var_DC
  loc_B451A5: FLdRfVar var_DC
  loc_B451A8: LitI4 0
  loc_B451AD: LitVarStr var_BC, "Sorry, but you need to fill out a valid amount of starting Credits!"
  loc_B451B2: FStVarCopyObj var_AC
  loc_B451B5: FLdRfVar var_AC
  loc_B451B8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B451BD: FFreeVar var_AC = "": var_DC = "": var_FC = ""
  loc_B451C8: ExitProcHresult
  loc_B451C9: FLdRfVar var_8C
  loc_B451CC: FLdPrThis
  loc_B451CD: VCallAd Control_ID_txtMaxOnline
  loc_B451D0: FStAdFunc var_88
  loc_B451D3: FLdPr var_88
  loc_B451D6:  = Me.Text
  loc_B451DB: FLdZeroAd var_8C
  loc_B451DE: CVarStr var_AC
  loc_B451E1: ImpAdCallI2 IsNumeric()
  loc_B451E6: LitI2_Byte &HFF
  loc_B451E8: EqI2
  loc_B451E9: FLdRfVar var_124
  loc_B451EC: FLdPrThis
  loc_B451ED: VCallAd Control_ID_txtMaxOnline
  loc_B451F0: FStAdFunc var_120
  loc_B451F3: FLdPr var_120
  loc_B451F6:  = Me.Text
  loc_B451FB: ILdRf var_124
  loc_B451FE: LitStr "0"
  loc_B45201: EqStr
  loc_B45203: LitI2_Byte 0
  loc_B45205: EqI2
  loc_B45206: AndI4
  loc_B45207: FFree1Str var_124
  loc_B4520A: FFreeAd var_88 = ""
  loc_B45211: FFree1Var var_AC = ""
  loc_B45214: BranchF loc_B45239
  loc_B45217: FLdRfVar var_8C
  loc_B4521A: FLdPrThis
  loc_B4521B: VCallAd Control_ID_txtMaxOnline
  loc_B4521E: FStAdFunc var_88
  loc_B45221: FLdPr var_88
  loc_B45224:  = Me.Text
  loc_B45229: FLdZeroAd var_8C
  loc_B4522C: CVarStr var_AC
  loc_B4522F: FStVar var_16C
  loc_B45233: FFree1Ad var_88
  loc_B45236: Branch loc_B452DD
  loc_B45239: FLdRfVar var_8C
  loc_B4523C: FLdPrThis
  loc_B4523D: VCallAd Control_ID_txtMaxOnline
  loc_B45240: FStAdFunc var_88
  loc_B45243: FLdPr var_88
  loc_B45246:  = Me.Text
  loc_B4524B: ILdRf var_8C
  loc_B4524E: LitStr vbNullString
  loc_B45251: EqStr
  loc_B45253: LitI2_Byte &HFF
  loc_B45255: EqI2
  loc_B45256: FLdRfVar var_124
  loc_B45259: FLdPrThis
  loc_B4525A: VCallAd Control_ID_txtMaxOnline
  loc_B4525D: FStAdFunc var_120
  loc_B45260: FLdPr var_120
  loc_B45263:  = Me.Text
  loc_B45268: ILdRf var_124
  loc_B4526B: LitStr "0"
  loc_B4526E: EqStr
  loc_B45270: LitI2_Byte &HFF
  loc_B45272: EqI2
  loc_B45273: OrI4
  loc_B45274: FLdRfVar var_13C
  loc_B45277: FLdPrThis
  loc_B45278: VCallAd Control_ID_txtMaxOnline
  loc_B4527B: FStAdFunc var_138
  loc_B4527E: FLdPr var_138
  loc_B45281:  = Me.Text
  loc_B45286: FLdZeroAd var_13C
  loc_B45289: CVarStr var_AC
  loc_B4528C: ImpAdCallI2 IsNumeric()
  loc_B45291: LitI2_Byte 0
  loc_B45293: EqI2
  loc_B45294: OrI4
  loc_B45295: FFreeStr var_8C = ""
  loc_B4529C: FFreeAd var_88 = "": var_120 = ""
  loc_B452A5: FFree1Var var_AC = ""
  loc_B452A8: BranchF loc_B452DD
  loc_B452AB: LitVar_Missing var_11C
  loc_B452AE: LitVar_Missing var_FC
  loc_B452B1: LitVarStr var_CC, "DebboProject :: Your own Hotel!"
  loc_B452B6: FStVarCopyObj var_DC
  loc_B452B9: FLdRfVar var_DC
  loc_B452BC: LitI4 0
  loc_B452C1: LitVarStr var_BC, "Sorry, but you need to fill out a valid max online limit!"
  loc_B452C6: FStVarCopyObj var_AC
  loc_B452C9: FLdRfVar var_AC
  loc_B452CC: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B452D1: FFreeVar var_AC = "": var_DC = "": var_FC = ""
  loc_B452DC: ExitProcHresult
  loc_B452DD: FLdRfVar var_16E
  loc_B452E0: FLdPrThis
  loc_B452E1: VCallAd Control_ID_chkWelcBobba
  loc_B452E4: FStAdFunc var_88
  loc_B452E7: FLdPr var_88
  loc_B452EA:  = Me.Value
  loc_B452EF: FLdI2 var_16E
  loc_B452F2: CR8I2
  loc_B452F3: LitStr "1"
  loc_B452F6: CR8Str
  loc_B452F8: EqR4
  loc_B452F9: FFree1Ad var_88
  loc_B452FC: BranchF loc_B45308
  loc_B452FF: LitVarStr var_BC, "1"
  loc_B45304: FStVarCopy
  loc_B45308: FLdRfVar var_16E
  loc_B4530B: FLdPrThis
  loc_B4530C: VCallAd Control_ID_chkWelcBobba
  loc_B4530F: FStAdFunc var_88
  loc_B45312: FLdPr var_88
  loc_B45315:  = Me.Value
  loc_B4531A: FLdI2 var_16E
  loc_B4531D: CR8I2
  loc_B4531E: LitStr "0"
  loc_B45321: CR8Str
  loc_B45323: EqR4
  loc_B45324: FFree1Ad var_88
  loc_B45327: BranchF loc_B45333
  loc_B4532A: LitVarStr var_BC, "0"
  loc_B4532F: FStVarCopy
  loc_B45333: FLdRfVar var_16E
  loc_B45336: FLdPrThis
  loc_B45337: VCallAd Control_ID_chkFullCat
  loc_B4533A: FStAdFunc var_88
  loc_B4533D: FLdPr var_88
  loc_B45340:  = Me.Value
  loc_B45345: FLdI2 var_16E
  loc_B45348: CR8I2
  loc_B45349: LitStr "1"
  loc_B4534C: CR8Str
  loc_B4534E: EqR4
  loc_B4534F: FFree1Ad var_88
  loc_B45352: BranchF loc_B4535E
  loc_B45355: LitVarStr var_BC, "1"
  loc_B4535A: FStVarCopy
  loc_B4535E: FLdRfVar var_16E
  loc_B45361: FLdPrThis
  loc_B45362: VCallAd Control_ID_chkFullCat
  loc_B45365: FStAdFunc var_88
  loc_B45368: FLdPr var_88
  loc_B4536B:  = Me.Value
  loc_B45370: FLdI2 var_16E
  loc_B45373: CR8I2
  loc_B45374: LitStr "0"
  loc_B45377: CR8Str
  loc_B45379: EqR4
  loc_B4537A: FFree1Ad var_88
  loc_B4537D: BranchF loc_B45389
  loc_B45380: LitVarStr var_BC, "0"
  loc_B45385: FStVarCopy
  loc_B45389: ImpAdLdI4 MemVar_C0F03C
  loc_B4538C: FLdRfVar var_9C
  loc_B4538F: CStrVarVal var_8C
  loc_B45393: LitStr "hotel_name"
  loc_B45396: LitStr "config"
  loc_B45399: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B4539E: FFree1Str var_8C
  loc_B453A1: ImpAdLdI4 MemVar_C0F03C
  loc_B453A4: FLdRfVar var_134
  loc_B453A7: CStrVarVal var_8C
  loc_B453AB: LitStr "port"
  loc_B453AE: LitStr "server"
  loc_B453B1: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B453B6: FFree1Str var_8C
  loc_B453B9: ImpAdLdI4 MemVar_C0F03C
  loc_B453BC: FLdRfVar var_14C
  loc_B453BF: CStrVarVal var_8C
  loc_B453C3: LitStr "lang"
  loc_B453C6: LitStr "server"
  loc_B453C9: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B453CE: FFree1Str var_8C
  loc_B453D1: FLdRfVar var_15C
  loc_B453D4: CStrVarVal var_124
  loc_B453D8: FLdRfVar var_88
  loc_B453DB: LitI4 0
  loc_B453E0: LitI2_Byte 0
  loc_B453E2: LitI4 2
  loc_B453E7: ImpAdLdI4 MemVar_C0F044
  loc_B453EA: LitStr "new_habbo\credits.txt"
  loc_B453ED: ConcatStr
  loc_B453EE: FStStrNoPop var_8C
  loc_B453F1: ImpAdLdRf MemVar_C0F040
  loc_B453F4: NewIfNullPr IFileSystem3
  loc_B453F7: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B453FC: FLdPr var_88
  loc_B453FF: from_stack_2 = Me.Write(from_stack_1v)
  loc_B45404: FFreeStr var_8C = ""
  loc_B4540B: FFree1Ad var_88
  loc_B4540E: ImpAdLdI4 MemVar_C0F03C
  loc_B45411: FLdRfVar var_16C
  loc_B45414: CStrVarVal var_8C
  loc_B45418: LitStr "max_online"
  loc_B4541B: LitStr "server"
  loc_B4541E: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B45423: FFree1Str var_8C
  loc_B45426: ImpAdLdI4 MemVar_C0F03C
  loc_B45429: FLdRfVar var_180
  loc_B4542C: CStrVarVal var_8C
  loc_B45430: LitStr "bobba_filter"
  loc_B45433: LitStr "config"
  loc_B45436: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B4543B: FFree1Str var_8C
  loc_B4543E: ImpAdLdI4 MemVar_C0F03C
  loc_B45441: FLdRfVar var_190
  loc_B45444: CStrVarVal var_8C
  loc_B45448: LitStr "cata_all"
  loc_B4544B: LitStr "config"
  loc_B4544E: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B45453: FFree1Str var_8C
  loc_B45456: ImpAdLdI4 MemVar_C0F03C
  loc_B45459: LitStr "1"
  loc_B4545C: LitStr "wizard_done"
  loc_B4545F: LitStr "config"
  loc_B45462: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B45467: LitVar_Missing var_11C
  loc_B4546A: LitVar_Missing var_FC
  loc_B4546D: LitVar_Missing var_DC
  loc_B45470: LitI4 0
  loc_B45475: LitStr "Congratulations! Your hotel setup seems to have been successful! "
  loc_B45478: LitStr vbCrLf
  loc_B4547B: ConcatStr
  loc_B4547C: FStStrNoPop var_8C
  loc_B4547F: LitStr "The server shall now restart. When it reloads you will be able to use!"
  loc_B45482: ConcatStr
  loc_B45483: CVarStr var_AC
  loc_B45486: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B4548B: FFree1Str var_8C
  loc_B4548E: FFreeVar var_AC = "": var_DC = "": var_FC = ""
  loc_B45499: ExitProcHresult
  loc_B4549A: PopTmpLdAd8 arg_7000
End Sub

Private Sub Image2_Click() 'B1D1D4
  'Data Table: 5448E8
  loc_B1D16C: LitStr "HabLog Project has an Server log to log Packets. That you find at the frontpage. We're coded lots of Scripter walls but if a scripter founds a method to script you find the log there."
  loc_B1D16F: FLdPrThis
  loc_B1D170: VCallAd Control_ID_Label1
  loc_B1D173: FStAdFunc var_88
  loc_B1D176: FLdPr var_88
  loc_B1D179: Me.Caption = from_stack_1
  loc_B1D17E: FFree1Ad var_88
  loc_B1D181: LitI2_Byte &HFF
  loc_B1D183: FLdPrThis
  loc_B1D184: VCallAd Control_ID_Image4
  loc_B1D187: FStAdFunc var_88
  loc_B1D18A: FLdPr var_88
  loc_B1D18D: Me.Visible = from_stack_1b
  loc_B1D192: FFree1Ad var_88
  loc_B1D195: LitI2_Byte 0
  loc_B1D197: FLdPrThis
  loc_B1D198: VCallAd Control_ID_Image2
  loc_B1D19B: FStAdFunc var_88
  loc_B1D19E: FLdPr var_88
  loc_B1D1A1: Me.Visible = from_stack_1b
  loc_B1D1A6: FFree1Ad var_88
  loc_B1D1A9: LitI2_Byte &HFF
  loc_B1D1AB: FLdPrThis
  loc_B1D1AC: VCallAd Control_ID_Image3
  loc_B1D1AF: FStAdFunc var_88
  loc_B1D1B2: FLdPr var_88
  loc_B1D1B5: Me.Visible = from_stack_1b
  loc_B1D1BA: FFree1Ad var_88
  loc_B1D1BD: LitI2_Byte &HFF
  loc_B1D1BF: FLdPrThis
  loc_B1D1C0: VCallAd Control_ID_Image1
  loc_B1D1C3: FStAdFunc var_88
  loc_B1D1C6: FLdPr var_88
  loc_B1D1C9: Me.Visible = from_stack_1b
  loc_B1D1CE: FFree1Ad var_88
  loc_B1D1D1: ExitProcHresult
  loc_B1D1D2: FLdRfVar arg_7000
End Sub

Private Sub Image4_Click() 'B201B4
  'Data Table: 5448E8
  loc_B20108: LitStr "HabLog Project needs lots of PHP Files. "
  loc_B2010B: FLdRfVar var_8C
  loc_B2010E: LitI2_Byte 0
  loc_B20110: ImpAdLdRf MemVar_C0F018
  loc_B20113: NewIfNullPr frmMain
  loc_B20116: VCallAd Control_ID_
  loc_B20119: FStAdFunc var_88
  loc_B2011C: FLdPr var_88
  loc_B2011F: Set from_stack_2 = frmMain(from_stack_1)
  loc_B20124: FLdPr var_8C
  loc_B20127: LateIdLdVar var_9C DispID_6 0
  loc_B2012E: CStrVarTmp
  loc_B2012F: FStStrNoPop var_A0
  loc_B20132: ConcatStr
  loc_B20133: FStStrNoPop var_A4
  loc_B20136: LitStr " is your IP you need this IP to host your Hotel. If you use Hamachi you need the Peoples who want join in your or another Network."
  loc_B20139: ConcatStr
  loc_B2013A: FStStrNoPop var_A8
  loc_B2013D: FLdPrThis
  loc_B2013E: VCallAd Control_ID_Label1
  loc_B20141: FStAdFunc var_AC
  loc_B20144: FLdPr var_AC
  loc_B20147: Me.Caption = from_stack_1
  loc_B2014C: FFreeStr var_A0 = "": var_A4 = ""
  loc_B20155: FFreeAd var_88 = "": var_8C = ""
  loc_B2015E: FFree1Var var_9C = ""
  loc_B20161: LitI2_Byte 0
  loc_B20163: FLdPrThis
  loc_B20164: VCallAd Control_ID_Image4
  loc_B20167: FStAdFunc var_88
  loc_B2016A: FLdPr var_88
  loc_B2016D: Me.Visible = from_stack_1b
  loc_B20172: FFree1Ad var_88
  loc_B20175: LitI2_Byte &HFF
  loc_B20177: FLdPrThis
  loc_B20178: VCallAd Control_ID_Image2
  loc_B2017B: FStAdFunc var_88
  loc_B2017E: FLdPr var_88
  loc_B20181: Me.Visible = from_stack_1b
  loc_B20186: FFree1Ad var_88
  loc_B20189: LitI2_Byte &HFF
  loc_B2018B: FLdPrThis
  loc_B2018C: VCallAd Control_ID_Image3
  loc_B2018F: FStAdFunc var_88
  loc_B20192: FLdPr var_88
  loc_B20195: Me.Visible = from_stack_1b
  loc_B2019A: FFree1Ad var_88
  loc_B2019D: LitI2_Byte &HFF
  loc_B2019F: FLdPrThis
  loc_B201A0: VCallAd Control_ID_Image1
  loc_B201A3: FStAdFunc var_88
  loc_B201A6: FLdPr var_88
  loc_B201A9: Me.Visible = from_stack_1b
  loc_B201AE: FFree1Ad var_88
  loc_B201B1: ExitProcHresult
End Sub

Private Sub Image3_Click() 'B1D138
  'Data Table: 5448E8
  loc_B1D0D0: LitStr "HabLog Project has a big Security wall to block many Scripters, we've patched many Injections and many scripts. You found a unblocked Script? Report it at Ragezone."
  loc_B1D0D3: FLdPrThis
  loc_B1D0D4: VCallAd Control_ID_Label1
  loc_B1D0D7: FStAdFunc var_88
  loc_B1D0DA: FLdPr var_88
  loc_B1D0DD: Me.Caption = from_stack_1
  loc_B1D0E2: FFree1Ad var_88
  loc_B1D0E5: LitI2_Byte &HFF
  loc_B1D0E7: FLdPrThis
  loc_B1D0E8: VCallAd Control_ID_Image4
  loc_B1D0EB: FStAdFunc var_88
  loc_B1D0EE: FLdPr var_88
  loc_B1D0F1: Me.Visible = from_stack_1b
  loc_B1D0F6: FFree1Ad var_88
  loc_B1D0F9: LitI2_Byte &HFF
  loc_B1D0FB: FLdPrThis
  loc_B1D0FC: VCallAd Control_ID_Image2
  loc_B1D0FF: FStAdFunc var_88
  loc_B1D102: FLdPr var_88
  loc_B1D105: Me.Visible = from_stack_1b
  loc_B1D10A: FFree1Ad var_88
  loc_B1D10D: LitI2_Byte 0
  loc_B1D10F: FLdPrThis
  loc_B1D110: VCallAd Control_ID_Image3
  loc_B1D113: FStAdFunc var_88
  loc_B1D116: FLdPr var_88
  loc_B1D119: Me.Visible = from_stack_1b
  loc_B1D11E: FFree1Ad var_88
  loc_B1D121: LitI2_Byte &HFF
  loc_B1D123: FLdPrThis
  loc_B1D124: VCallAd Control_ID_Image1
  loc_B1D127: FStAdFunc var_88
  loc_B1D12A: FLdPr var_88
  loc_B1D12D: Me.Visible = from_stack_1b
  loc_B1D132: FFree1Ad var_88
  loc_B1D135: ExitProcHresult
End Sub

Private Sub Image1_Click() 'B1D09C
  'Data Table: 5448E8
  loc_B1D034: LitStr "HabLog Project is an Project who beginned to coding one month ago. We're made some features and we thanks to DebboProject, Carlos, Orakel, Rekordi and Myrax! Our Project is one of the biggest Retro Projects. We're search Peoples who could Help us. Fuck SngForum!"
  loc_B1D037: FLdPrThis
  loc_B1D038: VCallAd Control_ID_Label1
  loc_B1D03B: FStAdFunc var_88
  loc_B1D03E: FLdPr var_88
  loc_B1D041: Me.Caption = from_stack_1
  loc_B1D046: FFree1Ad var_88
  loc_B1D049: LitI2_Byte &HFF
  loc_B1D04B: FLdPrThis
  loc_B1D04C: VCallAd Control_ID_Image4
  loc_B1D04F: FStAdFunc var_88
  loc_B1D052: FLdPr var_88
  loc_B1D055: Me.Visible = from_stack_1b
  loc_B1D05A: FFree1Ad var_88
  loc_B1D05D: LitI2_Byte &HFF
  loc_B1D05F: FLdPrThis
  loc_B1D060: VCallAd Control_ID_Image2
  loc_B1D063: FStAdFunc var_88
  loc_B1D066: FLdPr var_88
  loc_B1D069: Me.Visible = from_stack_1b
  loc_B1D06E: FFree1Ad var_88
  loc_B1D071: LitI2_Byte &HFF
  loc_B1D073: FLdPrThis
  loc_B1D074: VCallAd Control_ID_Image3
  loc_B1D077: FStAdFunc var_88
  loc_B1D07A: FLdPr var_88
  loc_B1D07D: Me.Visible = from_stack_1b
  loc_B1D082: FFree1Ad var_88
  loc_B1D085: LitI2_Byte 0
  loc_B1D087: FLdPrThis
  loc_B1D088: VCallAd Control_ID_Image1
  loc_B1D08B: FStAdFunc var_88
  loc_B1D08E: FLdPr var_88
  loc_B1D091: Me.Visible = from_stack_1b
  loc_B1D096: FFree1Ad var_88
  loc_B1D099: ExitProcHresult
  loc_B1D09A: CCyI2
End Sub

Private Sub closefrmAutoClose_Click() 'B18334
  'Data Table: 5448E8
  loc_B18330: End
  loc_B18332: ExitProcHresult
End Sub

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1CBE8
  'Data Table: 5448E8
  loc_B1CB88: ILdI2 Button
  loc_B1CB8B: LitI2_Byte 1
  loc_B1CB8D: EqI2
  loc_B1CB8E: BranchF loc_B1CBD1
  loc_B1CB91: ImpAdCallI2 ReleaseCapture()
  loc_B1CB96: FStR4 var_8C
  loc_B1CB99: SetLastSystemError
  loc_B1CB9A: ILdRf var_8C
  loc_B1CB9D: CR8I4
  loc_B1CB9E: IStFPR4 X
  loc_B1CBA1: FLdRfVar var_8C
  loc_B1CBA4: FLdPrThis
  loc_B1CBA5:  = Me.hWnd
  loc_B1CBAA: LitI4 0
  loc_B1CBAF: PopTmpLdAdStr var_90
  loc_B1CBB2: LitI4 2
  loc_B1CBB7: LitI4 &HA1
  loc_B1CBBC: ILdRf var_8C
  loc_B1CBBF: ImpAdCallI2 SendMessage(, , , )
  loc_B1CBC4: FStR4 var_94
  loc_B1CBC7: SetLastSystemError
  loc_B1CBC8: ILdRf var_94
  loc_B1CBCB: FStR4 var_88
  loc_B1CBCE: Branch loc_B1CBE6
  loc_B1CBD1: ILdRf Me
  loc_B1CBD4: FStAdNoPop
  loc_B1CBD8: ImpAdLdRf MemVar_C10514
  loc_B1CBDB: NewIfNullPr Global
  loc_B1CBDE: Global.Unload from_stack_1
  loc_B1CBE3: FFree1Ad var_98
  loc_B1CBE6: ExitProcHresult
  loc_B1CBE7: CStrVarTmp
End Sub

Private Sub Form_Load() 'B2756C
  'Data Table: 5448E8
  loc_B273C4: FLdRfVar var_8C
  loc_B273C7: FLdRfVar var_88
  loc_B273CA: ImpAdLdRf MemVar_C10514
  loc_B273CD: NewIfNullPr Global
  loc_B273D0:  = Global.App
  loc_B273D5: FLdPr var_88
  loc_B273D8:  = App.Path
  loc_B273DD: LitI4 0
  loc_B273E2: LitI4 -1
  loc_B273E7: LitI4 1
  loc_B273EC: LitStr "\"
  loc_B273EF: LitStr "\\"
  loc_B273F2: ILdRf var_8C
  loc_B273F5: LitStr "\database\"
  loc_B273F8: ConcatStr
  loc_B273F9: FStStrNoPop var_90
  loc_B273FC: ImpAdCallI2 Replace(, , , , , )
  loc_B27401: ImpAdStStr MemVar_C0F044
  loc_B27405: FFreeStr var_8C = ""
  loc_B2740C: FFree1Ad var_88
  loc_B2740F: LitVar_Missing var_A0
  loc_B27412: PopAdLdVar
  loc_B27413: LitStr "English"
  loc_B27416: FLdPrThis
  loc_B27417: VCallAd Control_ID_lstHotelLanguage
  loc_B2741A: FStAdFunc var_88
  loc_B2741D: FLdPr var_88
  loc_B27420: Me.AddItem from_stack_1, from_stack_2
  loc_B27425: FFree1Ad var_88
  loc_B27428: LitVar_Missing var_A0
  loc_B2742B: PopAdLdVar
  loc_B2742C: LitStr "German"
  loc_B2742F: FLdPrThis
  loc_B27430: VCallAd Control_ID_lstHotelLanguage
  loc_B27433: FStAdFunc var_88
  loc_B27436: FLdPr var_88
  loc_B27439: Me.AddItem from_stack_1, from_stack_2
  loc_B2743E: FFree1Ad var_88
  loc_B27441: LitVar_Missing var_A0
  loc_B27444: PopAdLdVar
  loc_B27445: LitStr "Dutch"
  loc_B27448: FLdPrThis
  loc_B27449: VCallAd Control_ID_lstHotelLanguage
  loc_B2744C: FStAdFunc var_88
  loc_B2744F: FLdPr var_88
  loc_B27452: Me.AddItem from_stack_1, from_stack_2
  loc_B27457: FFree1Ad var_88
  loc_B2745A: LitVar_Missing var_A0
  loc_B2745D: PopAdLdVar
  loc_B2745E: LitStr "French"
  loc_B27461: FLdPrThis
  loc_B27462: VCallAd Control_ID_lstHotelLanguage
  loc_B27465: FStAdFunc var_88
  loc_B27468: FLdPr var_88
  loc_B2746B: Me.AddItem from_stack_1, from_stack_2
  loc_B27470: FFree1Ad var_88
  loc_B27473: LitVar_Missing var_A0
  loc_B27476: PopAdLdVar
  loc_B27477: LitStr "Italian"
  loc_B2747A: FLdPrThis
  loc_B2747B: VCallAd Control_ID_lstHotelLanguage
  loc_B2747E: FStAdFunc var_88
  loc_B27481: FLdPr var_88
  loc_B27484: Me.AddItem from_stack_1, from_stack_2
  loc_B27489: FFree1Ad var_88
  loc_B2748C: LitVar_Missing var_A0
  loc_B2748F: PopAdLdVar
  loc_B27490: LitStr "Spanish"
  loc_B27493: FLdPrThis
  loc_B27494: VCallAd Control_ID_lstHotelLanguage
  loc_B27497: FStAdFunc var_88
  loc_B2749A: FLdPr var_88
  loc_B2749D: Me.AddItem from_stack_1, from_stack_2
  loc_B274A2: FFree1Ad var_88
  loc_B274A5: LitVar_Missing var_A0
  loc_B274A8: PopAdLdVar
  loc_B274A9: LitStr "Danish"
  loc_B274AC: FLdPrThis
  loc_B274AD: VCallAd Control_ID_lstHotelLanguage
  loc_B274B0: FStAdFunc var_88
  loc_B274B3: FLdPr var_88
  loc_B274B6: Me.AddItem from_stack_1, from_stack_2
  loc_B274BB: FFree1Ad var_88
  loc_B274BE: FLdRfVar var_A2
  loc_B274C1: ImpAdLdRf MemVar_C0F018
  loc_B274C4: NewIfNullPr frmMain
  loc_B274C7: VCallAd Control_ID_
  loc_B274CA: FStAdFunc var_88
  loc_B274CD: FLdPr var_88
  loc_B274D0:  = frmMain.CheckBox.Value
  loc_B274D5: FLdI2 var_A2
  loc_B274D8: LitI2_Byte 1
  loc_B274DA: EqI2
  loc_B274DB: FFree1Ad var_88
  loc_B274DE: BranchF loc_B27527
  loc_B274E1: FLdRfVar var_A8
  loc_B274E4: FLdPr Me
  loc_B274E7:  = Me.hWnd
  loc_B274EC: LitI4 3
  loc_B274F1: LitI4 0
  loc_B274F6: LitI4 0
  loc_B274FB: LitI4 0
  loc_B27500: LitI4 0
  loc_B27505: LitI4 -1
  loc_B2750A: ILdRf var_A8
  loc_B2750D: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B27512: SetLastSystemError
  loc_B27513: ImpAdLdI4 MemVar_C0F03C
  loc_B27516: LitStr "Y"
  loc_B27519: LitStr "foreground"
  loc_B2751C: LitStr "server"
  loc_B2751F: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B27524: Branch loc_B2756A
  loc_B27527: FLdRfVar var_A8
  loc_B2752A: FLdPr Me
  loc_B2752D:  = Me.hWnd
  loc_B27532: LitI4 3
  loc_B27537: LitI4 0
  loc_B2753C: LitI4 0
  loc_B27541: LitI4 0
  loc_B27546: LitI4 0
  loc_B2754B: LitI4 -2
  loc_B27550: ILdRf var_A8
  loc_B27553: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B27558: SetLastSystemError
  loc_B27559: ImpAdLdI4 MemVar_C0F03C
  loc_B2755C: LitStr "N"
  loc_B2755F: LitStr "foreground"
  loc_B27562: LitStr "server"
  loc_B27565: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2756A: ExitProcHresult
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1C904
  'Data Table: 5448E8
  loc_B1C8A4: ILdI2 Button
  loc_B1C8A7: LitI2_Byte 1
  loc_B1C8A9: EqI2
  loc_B1C8AA: BranchF loc_B1C8ED
  loc_B1C8AD: ImpAdCallI2 ReleaseCapture()
  loc_B1C8B2: FStR4 var_8C
  loc_B1C8B5: SetLastSystemError
  loc_B1C8B6: ILdRf var_8C
  loc_B1C8B9: CR8I4
  loc_B1C8BA: IStFPR4 X
  loc_B1C8BD: FLdRfVar var_8C
  loc_B1C8C0: FLdPrThis
  loc_B1C8C1:  = Me.hWnd
  loc_B1C8C6: LitI4 0
  loc_B1C8CB: PopTmpLdAdStr var_90
  loc_B1C8CE: LitI4 2
  loc_B1C8D3: LitI4 &HA1
  loc_B1C8D8: ILdRf var_8C
  loc_B1C8DB: ImpAdCallI2 SendMessage(, , , )
  loc_B1C8E0: FStR4 var_94
  loc_B1C8E3: SetLastSystemError
  loc_B1C8E4: ILdRf var_94
  loc_B1C8E7: FStR4 var_88
  loc_B1C8EA: Branch loc_B1C902
  loc_B1C8ED: ILdRf Me
  loc_B1C8F0: FStAdNoPop
  loc_B1C8F4: ImpAdLdRf MemVar_C10514
  loc_B1C8F7: NewIfNullPr Global
  loc_B1C8FA: Global.Unload from_stack_1
  loc_B1C8FF: FFree1Ad var_98
  loc_B1C902: ExitProcHresult
  loc_B1C903: CI2Var
End Sub
