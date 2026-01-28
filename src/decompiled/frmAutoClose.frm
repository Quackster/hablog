VERSION 5.00
Begin VB.Form frmAutoClose
  Caption = "Auto PowerOff"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 2595
  ClientHeight = 2775
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmAutoClose.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 2655
    Height = 3120
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.CheckBox auto_message
      Caption = "auto_message"
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 240
      Top = 1680
      Width = 2010
      Height = 195
      TabIndex = 6
      Appearance = 0 'Flat
    End
    Begin VB.TextBox Text1
      Left = 240
      Top = 1920
      Width = 2025
      Height = 285
      TabIndex = 5
      ScrollBars = 1
      Appearance = 0 'Flat
    End
    Begin VB.ComboBox Combo1
      Left = 1560
      Top = 840
      Width = 735
      Height = 315
      TabIndex = 4
    End
    Begin VB.ComboBox Combo2
      Left = 1560
      Top = 1200
      Width = 735
      Height = 315
      TabIndex = 3
    End
    Begin VB.CheckBox auto_poweroff_pc
      Caption = "auto_poweroff_pc"
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 240
      Top = 2280
      Width = 2025
      Height = 195
      TabIndex = 2
      Appearance = 0 'Flat
    End
    Begin VB.CommandButton iconfrmAutoClose
      Caption = "-"
      BackColor = &H80000013&
      Left = 4560
      Top = 3240
      Width = 240
      Height = 210
      TabIndex = 1
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
    Begin VB.Label Label1
      Caption = "Auto Close"
      ForeColor = &HFFFFFF&
      Left = 480
      Top = 240
      Width = 1455
      Height = 255
      TabIndex = 9
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
    Begin VB.Label Hour
      Caption = "Hour:"
      Left = 240
      Top = 870
      Width = 1215
      Height = 255
      TabIndex = 8
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Minutes
      Caption = "Minutes:"
      Left = 240
      Top = 1245
      Width = 1215
      Height = 255
      TabIndex = 7
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Image1
      Picture = "frmAutoClose.frx":0001B082
      Left = 2040
      Top = 180
      Width = 360
      Height = 330
    End
  End
  Begin VB.Label timeselected
    Caption = "timeselected"
    Left = 240
    Top = 2640
    Width = 1815
    Height = 255
    TabIndex = 11
  End
  Begin VB.Label timemessage
    Caption = "timemessage"
    Left = 240
    Top = 3000
    Width = 1935
    Height = 255
    TabIndex = 10
  End
End

Attribute VB_Name = "frmAutoClose"


Private Sub Form_Load() 'B2F170
  'Data Table: 5400AC
  loc_B2EEB8: FLdRfVar var_8A
  loc_B2EEBB: ImpAdLdRf MemVar_C0F018
  loc_B2EEBE: NewIfNullPr frmMain
  loc_B2EEC1: VCallAd Control_ID_
  loc_B2EEC4: FStAdFunc var_88
  loc_B2EEC7: FLdPr var_88
  loc_B2EECA:  = frmMain.CheckBox.Value
  loc_B2EECF: FLdI2 var_8A
  loc_B2EED2: LitI2_Byte 1
  loc_B2EED4: EqI2
  loc_B2EED5: FFree1Ad var_88
  loc_B2EED8: BranchF loc_B2EF10
  loc_B2EEDB: FLdRfVar var_90
  loc_B2EEDE: FLdPr Me
  loc_B2EEE1:  = Me.hWnd
  loc_B2EEE6: LitI4 3
  loc_B2EEEB: LitI4 0
  loc_B2EEF0: LitI4 0
  loc_B2EEF5: LitI4 0
  loc_B2EEFA: LitI4 0
  loc_B2EEFF: LitI4 -1
  loc_B2EF04: ILdRf var_90
  loc_B2EF07: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B2EF0C: SetLastSystemError
  loc_B2EF0D: Branch loc_B2EF42
  loc_B2EF10: FLdRfVar var_90
  loc_B2EF13: FLdPr Me
  loc_B2EF16:  = Me.hWnd
  loc_B2EF1B: LitI4 3
  loc_B2EF20: LitI4 0
  loc_B2EF25: LitI4 0
  loc_B2EF2A: LitI4 0
  loc_B2EF2F: LitI4 0
  loc_B2EF34: LitI4 -2
  loc_B2EF39: ILdRf var_90
  loc_B2EF3C: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B2EF41: SetLastSystemError
  loc_B2EF42: LitVarI2 var_D0, 0
  loc_B2EF47: FLdRfVar var_A0
  loc_B2EF4A: LitVarI2 var_C0, 9
  loc_B2EF4F: ForVar var_F0
  loc_B2EF55: LitVarStr var_B0, "0"
  loc_B2EF5A: FLdRfVar var_A0
  loc_B2EF5D: ConcatVar var_100
  loc_B2EF61: FStVar var_A0
  loc_B2EF65: LitVar_Missing var_B0
  loc_B2EF68: PopAdLdVar
  loc_B2EF69: FLdRfVar var_A0
  loc_B2EF6C: CStrVarVal var_104
  loc_B2EF70: FLdPrThis
  loc_B2EF71: VCallAd Control_ID_Combo1
  loc_B2EF74: FStAdFunc var_88
  loc_B2EF77: FLdPr var_88
  loc_B2EF7A: Me.AddItem from_stack_1, from_stack_2
  loc_B2EF7F: FFree1Str var_104
  loc_B2EF82: FFree1Ad var_88
  loc_B2EF85: FLdRfVar var_A0
  loc_B2EF88: NextStepVar var_F0
  loc_B2EF8E: LitVarI2 var_D0, 10
  loc_B2EF93: FLdRfVar var_A0
  loc_B2EF96: LitVarI2 var_C0, 23
  loc_B2EF9B: ForVar var_124
  loc_B2EFA1: LitVar_Missing var_B0
  loc_B2EFA4: PopAdLdVar
  loc_B2EFA5: FLdRfVar var_A0
  loc_B2EFA8: CStrVarVal var_104
  loc_B2EFAC: FLdPrThis
  loc_B2EFAD: VCallAd Control_ID_Combo1
  loc_B2EFB0: FStAdFunc var_88
  loc_B2EFB3: FLdPr var_88
  loc_B2EFB6: Me.AddItem from_stack_1, from_stack_2
  loc_B2EFBB: FFree1Str var_104
  loc_B2EFBE: FFree1Ad var_88
  loc_B2EFC1: LitStr "HH"
  loc_B2EFC4: FLdPrThis
  loc_B2EFC5: VCallAd Control_ID_Combo1
  loc_B2EFC8: FStAdFunc var_88
  loc_B2EFCB: FLdPr var_88
  loc_B2EFCE: Me.Text = from_stack_1
  loc_B2EFD3: FFree1Ad var_88
  loc_B2EFD6: FLdRfVar var_A0
  loc_B2EFD9: NextStepVar var_124
  loc_B2EFDF: LitVarI2 var_D0, 0
  loc_B2EFE4: FLdRfVar var_A0
  loc_B2EFE7: LitVarI2 var_C0, 9
  loc_B2EFEC: ForVar var_144
  loc_B2EFF2: LitVarStr var_B0, "0"
  loc_B2EFF7: FLdRfVar var_A0
  loc_B2EFFA: ConcatVar var_100
  loc_B2EFFE: FStVar var_A0
  loc_B2F002: LitVar_Missing var_B0
  loc_B2F005: PopAdLdVar
  loc_B2F006: FLdRfVar var_A0
  loc_B2F009: CStrVarVal var_104
  loc_B2F00D: FLdPrThis
  loc_B2F00E: VCallAd Control_ID_Combo2
  loc_B2F011: FStAdFunc var_88
  loc_B2F014: FLdPr var_88
  loc_B2F017: Me.AddItem from_stack_1, from_stack_2
  loc_B2F01C: FFree1Str var_104
  loc_B2F01F: FFree1Ad var_88
  loc_B2F022: FLdRfVar var_A0
  loc_B2F025: NextStepVar var_144
  loc_B2F02B: LitVarI2 var_D0, 10
  loc_B2F030: FLdRfVar var_A0
  loc_B2F033: LitVarI2 var_C0, 59
  loc_B2F038: ForVar var_164
  loc_B2F03E: LitVar_Missing var_B0
  loc_B2F041: PopAdLdVar
  loc_B2F042: FLdRfVar var_A0
  loc_B2F045: CStrVarVal var_104
  loc_B2F049: FLdPrThis
  loc_B2F04A: VCallAd Control_ID_Combo2
  loc_B2F04D: FStAdFunc var_88
  loc_B2F050: FLdPr var_88
  loc_B2F053: Me.AddItem from_stack_1, from_stack_2
  loc_B2F058: FFree1Str var_104
  loc_B2F05B: FFree1Ad var_88
  loc_B2F05E: LitStr "MM"
  loc_B2F061: FLdPrThis
  loc_B2F062: VCallAd Control_ID_Combo2
  loc_B2F065: FStAdFunc var_88
  loc_B2F068: FLdPr var_88
  loc_B2F06B: Me.Text = from_stack_1
  loc_B2F070: FFree1Ad var_88
  loc_B2F073: FLdRfVar var_A0
  loc_B2F076: NextStepVar var_164
  loc_B2F07C: LitVarStr var_B0, "auto_close"
  loc_B2F081: PopAdLdVar
  loc_B2F082: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B2F087: FStStrNoPop var_104
  loc_B2F08A: FLdPrThis
  loc_B2F08B: VCallAd Control_ID_Label1
  loc_B2F08E: FStAdFunc var_88
  loc_B2F091: FLdPr var_88
  loc_B2F094: Me.Caption = from_stack_1
  loc_B2F099: FFree1Str var_104
  loc_B2F09C: FFree1Ad var_88
  loc_B2F09F: LitVarStr var_B0, "Hour"
  loc_B2F0A4: PopAdLdVar
  loc_B2F0A5: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B2F0AA: FStStrNoPop var_104
  loc_B2F0AD: FLdPrThis
  loc_B2F0AE: VCallAd Control_ID_Hour
  loc_B2F0B1: FStAdFunc var_88
  loc_B2F0B4: FLdPr var_88
  loc_B2F0B7: Me.Caption = from_stack_1
  loc_B2F0BC: FFree1Str var_104
  loc_B2F0BF: FFree1Ad var_88
  loc_B2F0C2: LitVarStr var_B0, "Minutes"
  loc_B2F0C7: PopAdLdVar
  loc_B2F0C8: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B2F0CD: FStStrNoPop var_104
  loc_B2F0D0: FLdPrThis
  loc_B2F0D1: VCallAd Control_ID_Minutes
  loc_B2F0D4: FStAdFunc var_88
  loc_B2F0D7: FLdPr var_88
  loc_B2F0DA: Me.Caption = from_stack_1
  loc_B2F0DF: FFree1Str var_104
  loc_B2F0E2: FFree1Ad var_88
  loc_B2F0E5: LitVarStr var_B0, "auto_message"
  loc_B2F0EA: PopAdLdVar
  loc_B2F0EB: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B2F0F0: FStStrNoPop var_104
  loc_B2F0F3: FLdPrThis
  loc_B2F0F4: VCallAd Control_ID_auto_message
  loc_B2F0F7: FStAdFunc var_88
  loc_B2F0FA: FLdPr var_88
  loc_B2F0FD: Me.Caption = from_stack_1
  loc_B2F102: FFree1Str var_104
  loc_B2F105: FFree1Ad var_88
  loc_B2F108: FLdRfVar var_104
  loc_B2F10B: FLdPrThis
  loc_B2F10C: VCallAd Control_ID_Combo1
  loc_B2F10F: FStAdFunc var_88
  loc_B2F112: FLdPr var_88
  loc_B2F115:  = Me.Text
  loc_B2F11A: ILdRf var_104
  loc_B2F11D: LitStr "."
  loc_B2F120: ConcatStr
  loc_B2F121: FStStrNoPop var_170
  loc_B2F124: FLdRfVar var_16C
  loc_B2F127: FLdPrThis
  loc_B2F128: VCallAd Control_ID_Combo2
  loc_B2F12B: FStAdFunc var_168
  loc_B2F12E: FLdPr var_168
  loc_B2F131:  = Me.Text
  loc_B2F136: ILdRf var_16C
  loc_B2F139: ConcatStr
  loc_B2F13A: FStStrNoPop var_174
  loc_B2F13D: LitStr ".00"
  loc_B2F140: ConcatStr
  loc_B2F141: FStStrNoPop var_178
  loc_B2F144: FLdPrThis
  loc_B2F145: VCallAd Control_ID_timeselected
  loc_B2F148: FStAdFunc var_17C
  loc_B2F14B: FLdPr var_17C
  loc_B2F14E: Me.Caption = from_stack_1
  loc_B2F153: FFreeStr var_104 = "": var_170 = "": var_16C = "": var_174 = ""
  loc_B2F160: FFreeAd var_88 = "": var_168 = ""
  loc_B2F169: Call autoclose()
  loc_B2F16E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) 'B1E34C
  'Data Table: 5400AC
  loc_B1E2E8: FLdRfVar var_8A
  loc_B1E2EB: FLdPrThis
  loc_B1E2EC: VCallAd Control_ID_auto_message
  loc_B1E2EF: FStAdFunc var_88
  loc_B1E2F2: FLdPr var_88
  loc_B1E2F5:  = Me.Value
  loc_B1E2FA: FLdRfVar var_98
  loc_B1E2FD: FLdPrThis
  loc_B1E2FE: VCallAd Control_ID_Text1
  loc_B1E301: FStAdFunc var_94
  loc_B1E304: FLdPr var_94
  loc_B1E307:  = Me.Text
  loc_B1E30C: ImpAdLdI4 MemVar_C0F044
  loc_B1E30F: LitStr "configuration\settings.ini"
  loc_B1E312: ConcatStr
  loc_B1E313: FStStrNoPop var_A4
  loc_B1E316: FLdI2 var_8A
  loc_B1E319: CStrUI1
  loc_B1E31B: FStStrNoPop var_90
  loc_B1E31E: LitStr ","
  loc_B1E321: ConcatStr
  loc_B1E322: FStStrNoPop var_9C
  loc_B1E325: ILdRf var_98
  loc_B1E328: ConcatStr
  loc_B1E329: FStStrNoPop var_A0
  loc_B1E32C: LitStr "auto_close_message"
  loc_B1E32F: LitStr "server"
  loc_B1E332: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B1E337: FFreeStr var_90 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_B1E344: FFreeAd var_88 = ""
  loc_B1E34B: ExitProcHresult
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1C58C
  'Data Table: 5400AC
  loc_B1C52C: ILdI2 Button
  loc_B1C52F: LitI2_Byte 1
  loc_B1C531: EqI2
  loc_B1C532: BranchF loc_B1C575
  loc_B1C535: ImpAdCallI2 ReleaseCapture()
  loc_B1C53A: FStR4 var_8C
  loc_B1C53D: SetLastSystemError
  loc_B1C53E: ILdRf var_8C
  loc_B1C541: CR8I4
  loc_B1C542: IStFPR4 X
  loc_B1C545: FLdRfVar var_8C
  loc_B1C548: FLdPrThis
  loc_B1C549:  = Me.hWnd
  loc_B1C54E: LitI4 0
  loc_B1C553: PopTmpLdAdStr var_90
  loc_B1C556: LitI4 2
  loc_B1C55B: LitI4 &HA1
  loc_B1C560: ILdRf var_8C
  loc_B1C563: ImpAdCallI2 SendMessage(, , , )
  loc_B1C568: FStR4 var_94
  loc_B1C56B: SetLastSystemError
  loc_B1C56C: ILdRf var_94
  loc_B1C56F: FStR4 var_88
  loc_B1C572: Branch loc_B1C58A
  loc_B1C575: ILdRf Me
  loc_B1C578: FStAdNoPop
  loc_B1C57C: ImpAdLdRf MemVar_C10514
  loc_B1C57F: NewIfNullPr Global
  loc_B1C582: Global.Unload from_stack_1
  loc_B1C587: FFree1Ad var_98
  loc_B1C58A: ExitProcHresult
  loc_B1C58B: Erase
End Sub

Private Sub auto_message_Click() 'B24750
  'Data Table: 5400AC
  loc_B2460C: FLdRfVar var_8A
  loc_B2460F: FLdPrThis
  loc_B24610: VCallAd Control_ID_auto_message
  loc_B24613: FStAdFunc var_88
  loc_B24616: FLdPr var_88
  loc_B24619:  = Me.Value
  loc_B2461E: FLdI2 var_8A
  loc_B24621: LitI2_Byte 1
  loc_B24623: EqI2
  loc_B24624: FFree1Ad var_88
  loc_B24627: BranchF loc_B246BD
  loc_B2462A: LitI2_Byte &HFF
  loc_B2462C: FLdPrThis
  loc_B2462D: VCallAd Control_ID_Text1
  loc_B24630: FStAdFunc var_88
  loc_B24633: FLdPr var_88
  loc_B24636: Me.Enabled = from_stack_1b
  loc_B2463B: FFree1Ad var_88
  loc_B2463E: FLdRfVar var_8A
  loc_B24641: FLdPrThis
  loc_B24642: VCallAd Control_ID_auto_message
  loc_B24645: FStAdFunc var_88
  loc_B24648: FLdPr var_88
  loc_B2464B:  = Me.Value
  loc_B24650: FLdRfVar var_98
  loc_B24653: FLdPrThis
  loc_B24654: VCallAd Control_ID_Text1
  loc_B24657: FStAdFunc var_94
  loc_B2465A: FLdPr var_94
  loc_B2465D:  = Me.Text
  loc_B24662: ImpAdLdI4 MemVar_C0F044
  loc_B24665: LitStr "configuration\settings.ini"
  loc_B24668: ConcatStr
  loc_B24669: FStStrNoPop var_A4
  loc_B2466C: FLdI2 var_8A
  loc_B2466F: CStrUI1
  loc_B24671: FStStrNoPop var_90
  loc_B24674: LitStr ","
  loc_B24677: ConcatStr
  loc_B24678: FStStrNoPop var_9C
  loc_B2467B: ILdRf var_98
  loc_B2467E: ConcatStr
  loc_B2467F: FStStrNoPop var_A0
  loc_B24682: LitStr "auto_close_message"
  loc_B24685: LitStr "server"
  loc_B24688: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2468D: FFreeStr var_90 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_B2469A: FFreeAd var_88 = ""
  loc_B246A1: LitI2_Byte &HFF
  loc_B246A3: ImpAdLdRf MemVar_C0F018
  loc_B246A6: NewIfNullPr frmMain
  loc_B246A9: VCallAd Control_ID_
  loc_B246AC: FStAdFunc var_88
  loc_B246AF: FLdPr var_88
  loc_B246B2: frmMain.Timer.Enabled = from_stack_1b
  loc_B246B7: FFree1Ad var_88
  loc_B246BA: Branch loc_B2474D
  loc_B246BD: LitI2_Byte 0
  loc_B246BF: FLdPrThis
  loc_B246C0: VCallAd Control_ID_Text1
  loc_B246C3: FStAdFunc var_88
  loc_B246C6: FLdPr var_88
  loc_B246C9: Me.Enabled = from_stack_1b
  loc_B246CE: FFree1Ad var_88
  loc_B246D1: FLdRfVar var_8A
  loc_B246D4: FLdPrThis
  loc_B246D5: VCallAd Control_ID_auto_message
  loc_B246D8: FStAdFunc var_88
  loc_B246DB: FLdPr var_88
  loc_B246DE:  = Me.Value
  loc_B246E3: FLdRfVar var_98
  loc_B246E6: FLdPrThis
  loc_B246E7: VCallAd Control_ID_Text1
  loc_B246EA: FStAdFunc var_94
  loc_B246ED: FLdPr var_94
  loc_B246F0:  = Me.Text
  loc_B246F5: ImpAdLdI4 MemVar_C0F044
  loc_B246F8: LitStr "configuration\settings.ini"
  loc_B246FB: ConcatStr
  loc_B246FC: FStStrNoPop var_A4
  loc_B246FF: FLdI2 var_8A
  loc_B24702: CStrUI1
  loc_B24704: FStStrNoPop var_90
  loc_B24707: LitStr ","
  loc_B2470A: ConcatStr
  loc_B2470B: FStStrNoPop var_9C
  loc_B2470E: ILdRf var_98
  loc_B24711: ConcatStr
  loc_B24712: FStStrNoPop var_A0
  loc_B24715: LitStr "auto_close_message"
  loc_B24718: LitStr "server"
  loc_B2471B: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B24720: FFreeStr var_90 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_B2472D: FFreeAd var_88 = ""
  loc_B24734: LitI2_Byte 0
  loc_B24736: ImpAdLdRf MemVar_C0F018
  loc_B24739: NewIfNullPr frmMain
  loc_B2473C: VCallAd Control_ID_
  loc_B2473F: FStAdFunc var_88
  loc_B24742: FLdPr var_88
  loc_B24745: frmMain.Timer.Enabled = from_stack_1b
  loc_B2474A: FFree1Ad var_88
  loc_B2474D: ExitProcHresult
  loc_B2474E: CI4UI1
End Sub

Private Sub Text1_Change() 'B1E1EC
  'Data Table: 5400AC
  loc_B1E188: FLdRfVar var_8A
  loc_B1E18B: FLdPrThis
  loc_B1E18C: VCallAd Control_ID_auto_message
  loc_B1E18F: FStAdFunc var_88
  loc_B1E192: FLdPr var_88
  loc_B1E195:  = Me.Value
  loc_B1E19A: FLdRfVar var_98
  loc_B1E19D: FLdPrThis
  loc_B1E19E: VCallAd Control_ID_Text1
  loc_B1E1A1: FStAdFunc var_94
  loc_B1E1A4: FLdPr var_94
  loc_B1E1A7:  = Me.Text
  loc_B1E1AC: ImpAdLdI4 MemVar_C0F044
  loc_B1E1AF: LitStr "configuration\settings.ini"
  loc_B1E1B2: ConcatStr
  loc_B1E1B3: FStStrNoPop var_A4
  loc_B1E1B6: FLdI2 var_8A
  loc_B1E1B9: CStrUI1
  loc_B1E1BB: FStStrNoPop var_90
  loc_B1E1BE: LitStr ","
  loc_B1E1C1: ConcatStr
  loc_B1E1C2: FStStrNoPop var_9C
  loc_B1E1C5: ILdRf var_98
  loc_B1E1C8: ConcatStr
  loc_B1E1C9: FStStrNoPop var_A0
  loc_B1E1CC: LitStr "auto_close_message"
  loc_B1E1CF: LitStr "server"
  loc_B1E1D2: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B1E1D7: FFreeStr var_90 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_B1E1E4: FFreeAd var_88 = ""
  loc_B1E1EB: ExitProcHresult
End Sub

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1C620
  'Data Table: 5400AC
  loc_B1C5C0: ILdI2 Button
  loc_B1C5C3: LitI2_Byte 1
  loc_B1C5C5: EqI2
  loc_B1C5C6: BranchF loc_B1C609
  loc_B1C5C9: ImpAdCallI2 ReleaseCapture()
  loc_B1C5CE: FStR4 var_8C
  loc_B1C5D1: SetLastSystemError
  loc_B1C5D2: ILdRf var_8C
  loc_B1C5D5: CR8I4
  loc_B1C5D6: IStFPR4 X
  loc_B1C5D9: FLdRfVar var_8C
  loc_B1C5DC: FLdPrThis
  loc_B1C5DD:  = Me.hWnd
  loc_B1C5E2: LitI4 0
  loc_B1C5E7: PopTmpLdAdStr var_90
  loc_B1C5EA: LitI4 2
  loc_B1C5EF: LitI4 &HA1
  loc_B1C5F4: ILdRf var_8C
  loc_B1C5F7: ImpAdCallI2 SendMessage(, , , )
  loc_B1C5FC: FStR4 var_94
  loc_B1C5FF: SetLastSystemError
  loc_B1C600: ILdRf var_94
  loc_B1C603: FStR4 var_88
  loc_B1C606: Branch loc_B1C61E
  loc_B1C609: ILdRf Me
  loc_B1C60C: FStAdNoPop
  loc_B1C610: ImpAdLdRf MemVar_C10514
  loc_B1C613: NewIfNullPr Global
  loc_B1C616: Global.Unload from_stack_1
  loc_B1C61B: FFree1Ad var_98
  loc_B1C61E: ExitProcHresult
End Sub

Private Sub auto_poweroff_pc_Click() 'B26164
  'Data Table: 5400AC
  loc_B26010: FLdRfVar var_8A
  loc_B26013: FLdPrThis
  loc_B26014: VCallAd Control_ID_auto_poweroff_pc
  loc_B26017: FStAdFunc var_88
  loc_B2601A: FLdPr var_88
  loc_B2601D:  = Me.Value
  loc_B26022: FLdI2 var_8A
  loc_B26025: LitI2_Byte 1
  loc_B26027: EqI2
  loc_B26028: FFree1Ad var_88
  loc_B2602B: BranchF loc_B260CA
  loc_B2602E: FLdRfVar var_8A
  loc_B26031: ImpAdLdRf MemVar_C0F018
  loc_B26034: NewIfNullPr frmMain
  loc_B26037: VCallAd Control_ID_
  loc_B2603A: FStAdFunc var_88
  loc_B2603D: FLdPr var_88
  loc_B26040:  = frmMain.CheckBox.Value
  loc_B26045: FLdRfVar var_98
  loc_B26048: FLdPrThis
  loc_B26049: VCallAd Control_ID_Combo1
  loc_B2604C: FStAdFunc var_94
  loc_B2604F: FLdPr var_94
  loc_B26052:  = Me.Text
  loc_B26057: FLdRfVar var_A8
  loc_B2605A: FLdPrThis
  loc_B2605B: VCallAd Control_ID_Combo2
  loc_B2605E: FStAdFunc var_A4
  loc_B26061: FLdPr var_A4
  loc_B26064:  = Me.Text
  loc_B26069: ImpAdLdI4 MemVar_C0F044
  loc_B2606C: LitStr "configuration\settings.ini"
  loc_B2606F: ConcatStr
  loc_B26070: FStStrNoPop var_B8
  loc_B26073: FLdI2 var_8A
  loc_B26076: CStrUI1
  loc_B26078: FStStrNoPop var_90
  loc_B2607B: LitStr ","
  loc_B2607E: ConcatStr
  loc_B2607F: FStStrNoPop var_9C
  loc_B26082: ILdRf var_98
  loc_B26085: ConcatStr
  loc_B26086: FStStrNoPop var_A0
  loc_B26089: LitStr ","
  loc_B2608C: ConcatStr
  loc_B2608D: FStStrNoPop var_AC
  loc_B26090: ILdRf var_A8
  loc_B26093: ConcatStr
  loc_B26094: FStStrNoPop var_B0
  loc_B26097: LitStr ",1"
  loc_B2609A: ConcatStr
  loc_B2609B: FStStrNoPop var_B4
  loc_B2609E: LitStr "auto_close"
  loc_B260A1: LitStr "server"
  loc_B260A4: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B260A9: FFreeStr var_90 = "": var_9C = "": var_98 = "": var_A0 = "": var_AC = "": var_A8 = "": var_B0 = "": var_B4 = ""
  loc_B260BE: FFreeAd var_88 = "": var_94 = ""
  loc_B260C7: Branch loc_B26163
  loc_B260CA: FLdRfVar var_8A
  loc_B260CD: ImpAdLdRf MemVar_C0F018
  loc_B260D0: NewIfNullPr frmMain
  loc_B260D3: VCallAd Control_ID_
  loc_B260D6: FStAdFunc var_88
  loc_B260D9: FLdPr var_88
  loc_B260DC:  = frmMain.CheckBox.Value
  loc_B260E1: FLdRfVar var_98
  loc_B260E4: FLdPrThis
  loc_B260E5: VCallAd Control_ID_Combo1
  loc_B260E8: FStAdFunc var_94
  loc_B260EB: FLdPr var_94
  loc_B260EE:  = Me.Text
  loc_B260F3: FLdRfVar var_A8
  loc_B260F6: FLdPrThis
  loc_B260F7: VCallAd Control_ID_Combo2
  loc_B260FA: FStAdFunc var_A4
  loc_B260FD: FLdPr var_A4
  loc_B26100:  = Me.Text
  loc_B26105: ImpAdLdI4 MemVar_C0F044
  loc_B26108: LitStr "configuration\settings.ini"
  loc_B2610B: ConcatStr
  loc_B2610C: FStStrNoPop var_B8
  loc_B2610F: FLdI2 var_8A
  loc_B26112: CStrUI1
  loc_B26114: FStStrNoPop var_90
  loc_B26117: LitStr ","
  loc_B2611A: ConcatStr
  loc_B2611B: FStStrNoPop var_9C
  loc_B2611E: ILdRf var_98
  loc_B26121: ConcatStr
  loc_B26122: FStStrNoPop var_A0
  loc_B26125: LitStr ","
  loc_B26128: ConcatStr
  loc_B26129: FStStrNoPop var_AC
  loc_B2612C: ILdRf var_A8
  loc_B2612F: ConcatStr
  loc_B26130: FStStrNoPop var_B0
  loc_B26133: LitStr ",0"
  loc_B26136: ConcatStr
  loc_B26137: FStStrNoPop var_B4
  loc_B2613A: LitStr "auto_close"
  loc_B2613D: LitStr "server"
  loc_B26140: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B26145: FFreeStr var_90 = "": var_9C = "": var_98 = "": var_A0 = "": var_AC = "": var_A8 = "": var_B0 = "": var_B4 = ""
  loc_B2615A: FFreeAd var_88 = "": var_94 = ""
  loc_B26163: ExitProcHresult
End Sub

Private Sub Combo1_Click() 'B24F14
  'Data Table: 5400AC
  loc_B24DE8: FLdRfVar var_8C
  loc_B24DEB: FLdPrThis
  loc_B24DEC: VCallAd Control_ID_Combo1
  loc_B24DEF: FStAdFunc var_88
  loc_B24DF2: FLdPr var_88
  loc_B24DF5:  = Me.Text
  loc_B24DFA: ILdRf var_8C
  loc_B24DFD: LitStr "/"
  loc_B24E00: ConcatStr
  loc_B24E01: FStStrNoPop var_98
  loc_B24E04: FLdRfVar var_94
  loc_B24E07: FLdPrThis
  loc_B24E08: VCallAd Control_ID_Combo2
  loc_B24E0B: FStAdFunc var_90
  loc_B24E0E: FLdPr var_90
  loc_B24E11:  = Me.Text
  loc_B24E16: ILdRf var_94
  loc_B24E19: ConcatStr
  loc_B24E1A: FStStrNoPop var_9C
  loc_B24E1D: LitStr "/00"
  loc_B24E20: ConcatStr
  loc_B24E21: FStStrNoPop var_A0
  loc_B24E24: FLdPrThis
  loc_B24E25: VCallAd Control_ID_timeselected
  loc_B24E28: FStAdFunc var_A4
  loc_B24E2B: FLdPr var_A4
  loc_B24E2E: Me.Caption = from_stack_1
  loc_B24E33: FFreeStr var_8C = "": var_98 = "": var_94 = "": var_9C = ""
  loc_B24E40: FFreeAd var_88 = "": var_90 = ""
  loc_B24E49: FLdRfVar var_A6
  loc_B24E4C: ImpAdLdRf MemVar_C0F018
  loc_B24E4F: NewIfNullPr frmMain
  loc_B24E52: VCallAd Control_ID_
  loc_B24E55: FStAdFunc var_88
  loc_B24E58: FLdPr var_88
  loc_B24E5B:  = frmMain.CheckBox.Value
  loc_B24E60: FLdRfVar var_94
  loc_B24E63: FLdPrThis
  loc_B24E64: VCallAd Control_ID_Combo1
  loc_B24E67: FStAdFunc var_90
  loc_B24E6A: FLdPr var_90
  loc_B24E6D:  = Me.Text
  loc_B24E72: FLdRfVar var_A0
  loc_B24E75: FLdPrThis
  loc_B24E76: VCallAd Control_ID_Combo2
  loc_B24E79: FStAdFunc var_A4
  loc_B24E7C: FLdPr var_A4
  loc_B24E7F:  = Me.Text
  loc_B24E84: FLdRfVar var_B6
  loc_B24E87: ImpAdLdRf MemVar_C0F2B4
  loc_B24E8A: NewIfNullPr frmAutoClose
  loc_B24E8D: VCallAd Control_ID_auto_poweroff_pc
  loc_B24E90: FStAdFunc var_B4
  loc_B24E93: FLdPr var_B4
  loc_B24E96:  = frmAutoClose.CheckBox.Value
  loc_B24E9B: ImpAdLdI4 MemVar_C0F044
  loc_B24E9E: LitStr "configuration\settings.ini"
  loc_B24EA1: ConcatStr
  loc_B24EA2: FStStrNoPop var_C8
  loc_B24EA5: FLdI2 var_A6
  loc_B24EA8: CStrUI1
  loc_B24EAA: FStStrNoPop var_8C
  loc_B24EAD: LitStr ","
  loc_B24EB0: ConcatStr
  loc_B24EB1: FStStrNoPop var_98
  loc_B24EB4: ILdRf var_94
  loc_B24EB7: ConcatStr
  loc_B24EB8: FStStrNoPop var_9C
  loc_B24EBB: LitStr ","
  loc_B24EBE: ConcatStr
  loc_B24EBF: FStStrNoPop var_AC
  loc_B24EC2: ILdRf var_A0
  loc_B24EC5: ConcatStr
  loc_B24EC6: FStStrNoPop var_B0
  loc_B24EC9: LitStr ","
  loc_B24ECC: ConcatStr
  loc_B24ECD: FStStrNoPop var_BC
  loc_B24ED0: FLdI2 var_B6
  loc_B24ED3: CStrUI1
  loc_B24ED5: FStStrNoPop var_C0
  loc_B24ED8: ConcatStr
  loc_B24ED9: FStStrNoPop var_C4
  loc_B24EDC: LitStr "auto_close"
  loc_B24EDF: LitStr "server"
  loc_B24EE2: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B24EE7: FFreeStr var_8C = "": var_98 = "": var_94 = "": var_9C = "": var_AC = "": var_A0 = "": var_B0 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B24F00: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B24F0B: Call auto_message_sel()
  loc_B24F10: ExitProcHresult
End Sub

Private Sub Combo2_Click() 'B250AC
  'Data Table: 5400AC
  loc_B24F80: FLdRfVar var_8C
  loc_B24F83: FLdPrThis
  loc_B24F84: VCallAd Control_ID_Combo1
  loc_B24F87: FStAdFunc var_88
  loc_B24F8A: FLdPr var_88
  loc_B24F8D:  = Me.Text
  loc_B24F92: ILdRf var_8C
  loc_B24F95: LitStr "/"
  loc_B24F98: ConcatStr
  loc_B24F99: FStStrNoPop var_98
  loc_B24F9C: FLdRfVar var_94
  loc_B24F9F: FLdPrThis
  loc_B24FA0: VCallAd Control_ID_Combo2
  loc_B24FA3: FStAdFunc var_90
  loc_B24FA6: FLdPr var_90
  loc_B24FA9:  = Me.Text
  loc_B24FAE: ILdRf var_94
  loc_B24FB1: ConcatStr
  loc_B24FB2: FStStrNoPop var_9C
  loc_B24FB5: LitStr "/00"
  loc_B24FB8: ConcatStr
  loc_B24FB9: FStStrNoPop var_A0
  loc_B24FBC: FLdPrThis
  loc_B24FBD: VCallAd Control_ID_timeselected
  loc_B24FC0: FStAdFunc var_A4
  loc_B24FC3: FLdPr var_A4
  loc_B24FC6: Me.Caption = from_stack_1
  loc_B24FCB: FFreeStr var_8C = "": var_98 = "": var_94 = "": var_9C = ""
  loc_B24FD8: FFreeAd var_88 = "": var_90 = ""
  loc_B24FE1: FLdRfVar var_A6
  loc_B24FE4: ImpAdLdRf MemVar_C0F018
  loc_B24FE7: NewIfNullPr frmMain
  loc_B24FEA: VCallAd Control_ID_
  loc_B24FED: FStAdFunc var_88
  loc_B24FF0: FLdPr var_88
  loc_B24FF3:  = frmMain.CheckBox.Value
  loc_B24FF8: FLdRfVar var_94
  loc_B24FFB: FLdPrThis
  loc_B24FFC: VCallAd Control_ID_Combo1
  loc_B24FFF: FStAdFunc var_90
  loc_B25002: FLdPr var_90
  loc_B25005:  = Me.Text
  loc_B2500A: FLdRfVar var_A0
  loc_B2500D: FLdPrThis
  loc_B2500E: VCallAd Control_ID_Combo2
  loc_B25011: FStAdFunc var_A4
  loc_B25014: FLdPr var_A4
  loc_B25017:  = Me.Text
  loc_B2501C: FLdRfVar var_B6
  loc_B2501F: ImpAdLdRf MemVar_C0F2B4
  loc_B25022: NewIfNullPr frmAutoClose
  loc_B25025: VCallAd Control_ID_auto_poweroff_pc
  loc_B25028: FStAdFunc var_B4
  loc_B2502B: FLdPr var_B4
  loc_B2502E:  = frmAutoClose.CheckBox.Value
  loc_B25033: ImpAdLdI4 MemVar_C0F044
  loc_B25036: LitStr "configuration\settings.ini"
  loc_B25039: ConcatStr
  loc_B2503A: FStStrNoPop var_C8
  loc_B2503D: FLdI2 var_A6
  loc_B25040: CStrUI1
  loc_B25042: FStStrNoPop var_8C
  loc_B25045: LitStr ","
  loc_B25048: ConcatStr
  loc_B25049: FStStrNoPop var_98
  loc_B2504C: ILdRf var_94
  loc_B2504F: ConcatStr
  loc_B25050: FStStrNoPop var_9C
  loc_B25053: LitStr ","
  loc_B25056: ConcatStr
  loc_B25057: FStStrNoPop var_AC
  loc_B2505A: ILdRf var_A0
  loc_B2505D: ConcatStr
  loc_B2505E: FStStrNoPop var_B0
  loc_B25061: LitStr ","
  loc_B25064: ConcatStr
  loc_B25065: FStStrNoPop var_BC
  loc_B25068: FLdI2 var_B6
  loc_B2506B: CStrUI1
  loc_B2506D: FStStrNoPop var_C0
  loc_B25070: ConcatStr
  loc_B25071: FStStrNoPop var_C4
  loc_B25074: LitStr "auto_close"
  loc_B25077: LitStr "server"
  loc_B2507A: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2507F: FFreeStr var_8C = "": var_98 = "": var_94 = "": var_9C = "": var_AC = "": var_A0 = "": var_B0 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B25098: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B250A3: Call auto_message_sel()
  loc_B250A8: ExitProcHresult
End Sub

Private Sub iconfrmAutoClose_Click() 'B18820
  'Data Table: 5400AC
  loc_B18814: LitI2_Byte 1
  loc_B18816: FLdPr Me
  loc_B18819: Me.WindowState = from_stack_1
  loc_B1881E: ExitProcHresult
End Sub

Public Sub auto_message_sel() 'B25E0C
  'Data Table: 5400AC
  loc_B25CA8: FLdRfVar var_8C
  loc_B25CAB: FLdPrThis
  loc_B25CAC: VCallAd Control_ID_Combo1
  loc_B25CAF: FStAdFunc var_88
  loc_B25CB2: FLdPr var_88
  loc_B25CB5:  = Me.Text
  loc_B25CBA: FLdZeroAd var_8C
  loc_B25CBD: CVarStr var_AC
  loc_B25CC0: FStVar var_9C
  loc_B25CC4: FFree1Ad var_88
  loc_B25CC7: FLdRfVar var_8C
  loc_B25CCA: FLdPrThis
  loc_B25CCB: VCallAd Control_ID_Combo2
  loc_B25CCE: FStAdFunc var_88
  loc_B25CD1: FLdPr var_88
  loc_B25CD4:  = Me.Text
  loc_B25CD9: FLdZeroAd var_8C
  loc_B25CDC: CVarStr var_AC
  loc_B25CDF: FStVar var_BC
  loc_B25CE3: FFree1Ad var_88
  loc_B25CE6: FLdRfVar var_BC
  loc_B25CE9: LitVarStr var_CC, "05"
  loc_B25CEE: HardType
  loc_B25CEF: LtVarBool
  loc_B25CF1: BranchF loc_B25D91
  loc_B25CF4: FLdRfVar var_9C
  loc_B25CF7: LitVarStr var_CC, "HH"
  loc_B25CFC: HardType
  loc_B25CFD: NeVarBool
  loc_B25CFF: BranchF loc_B25D8E
  loc_B25D02: FLdRfVar var_9C
  loc_B25D05: LitVarI2 var_CC, 1
  loc_B25D0A: SubVar var_AC
  loc_B25D0E: FStVar var_9C
  loc_B25D12: LitVarI2 var_CC, 5
  loc_B25D17: FLdRfVar var_BC
  loc_B25D1A: SubVar var_AC
  loc_B25D1E: FStVar var_DC
  loc_B25D22: LitVarI2 var_CC, 60
  loc_B25D27: FLdRfVar var_DC
  loc_B25D2A: SubVar var_AC
  loc_B25D2E: FStVar var_BC
  loc_B25D32: FLdRfVar var_9C
  loc_B25D35: LitVarI2 var_CC, 10
  loc_B25D3A: HardType
  loc_B25D3B: LtVarBool
  loc_B25D3D: BranchF loc_B25D50
  loc_B25D40: LitVarStr var_CC, "0"
  loc_B25D45: FLdRfVar var_9C
  loc_B25D48: ConcatVar var_AC
  loc_B25D4C: FStVar var_9C
  loc_B25D50: FLdRfVar var_9C
  loc_B25D53: LitVarStr var_CC, "/"
  loc_B25D58: ConcatVar var_AC
  loc_B25D5C: FLdRfVar var_BC
  loc_B25D5F: ConcatVar var_EC
  loc_B25D63: LitVarStr var_FC, "/00"
  loc_B25D68: ConcatVar var_10C
  loc_B25D6C: CStrVarVal var_8C
  loc_B25D70: FLdPrThis
  loc_B25D71: VCallAd Control_ID_timemessage
  loc_B25D74: FStAdFunc var_88
  loc_B25D77: FLdPr var_88
  loc_B25D7A: Me.Caption = from_stack_1
  loc_B25D7F: FFree1Str var_8C
  loc_B25D82: FFree1Ad var_88
  loc_B25D85: FFreeVar var_AC = "": var_EC = ""
  loc_B25D8E: Branch loc_B25E0B
  loc_B25D91: FLdRfVar var_BC
  loc_B25D94: LitVarStr var_CC, "MM"
  loc_B25D99: HardType
  loc_B25D9A: NeVarBool
  loc_B25D9C: BranchF loc_B25E0B
  loc_B25D9F: FLdRfVar var_BC
  loc_B25DA2: LitVarI2 var_CC, 5
  loc_B25DA7: SubVar var_AC
  loc_B25DAB: FStVar var_BC
  loc_B25DAF: FLdRfVar var_BC
  loc_B25DB2: LitVarI2 var_CC, 10
  loc_B25DB7: HardType
  loc_B25DB8: LtVarBool
  loc_B25DBA: BranchF loc_B25DCD
  loc_B25DBD: LitVarStr var_CC, "0"
  loc_B25DC2: FLdRfVar var_BC
  loc_B25DC5: ConcatVar var_AC
  loc_B25DC9: FStVar var_BC
  loc_B25DCD: FLdRfVar var_9C
  loc_B25DD0: LitVarStr var_CC, "/"
  loc_B25DD5: ConcatVar var_AC
  loc_B25DD9: FLdRfVar var_BC
  loc_B25DDC: ConcatVar var_EC
  loc_B25DE0: LitVarStr var_FC, "/00"
  loc_B25DE5: ConcatVar var_10C
  loc_B25DE9: CStrVarVal var_8C
  loc_B25DED: FLdPrThis
  loc_B25DEE: VCallAd Control_ID_timemessage
  loc_B25DF1: FStAdFunc var_88
  loc_B25DF4: FLdPr var_88
  loc_B25DF7: Me.Caption = from_stack_1
  loc_B25DFC: FFree1Str var_8C
  loc_B25DFF: FFree1Ad var_88
  loc_B25E02: FFreeVar var_AC = "": var_EC = ""
  loc_B25E0B: ExitProcHresult
End Sub

Public Sub autoclose() 'B523B4
  'Data Table: 5400AC
  loc_B51B08: FLdRfVar var_8A
  loc_B51B0B: ImpAdLdRf MemVar_C0F018
  loc_B51B0E: NewIfNullPr frmMain
  loc_B51B11: VCallAd Control_ID_
  loc_B51B14: FStAdFunc var_88
  loc_B51B17: FLdPr var_88
  loc_B51B1A:  = frmMain.CheckBox.Value
  loc_B51B1F: FLdI2 var_8A
  loc_B51B22: LitI2_Byte 1
  loc_B51B24: EqI2
  loc_B51B25: FFree1Ad var_88
  loc_B51B28: BranchF loc_B51F7D
  loc_B51B2B: LitI4 0
  loc_B51B30: FStStrCopy var_D0
  loc_B51B33: FLdRfVar var_D0
  loc_B51B36: ImpAdLdRf MemVar_C0F03C
  loc_B51B39: CVarRef
  loc_B51B3E: LitVarStr var_AC, "auto_close"
  loc_B51B43: FStVarCopyObj var_BC
  loc_B51B46: FLdRfVar var_BC
  loc_B51B49: LitVarStr var_9C, "server"
  loc_B51B4E: PopAdLdVar
  loc_B51B4F: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B51B54: FStStr var_13C
  loc_B51B57: LitVarI2 var_114, 1
  loc_B51B5C: PopAdLdVar
  loc_B51B5D: LitI4 0
  loc_B51B62: LitI4 -1
  loc_B51B67: LitVarStr var_E4, ","
  loc_B51B6C: FStVarCopyObj var_F4
  loc_B51B6F: FLdRfVar var_F4
  loc_B51B72: FLdZeroAd var_13C
  loc_B51B75: FStStrNoPop var_D4
  loc_B51B78: FLdRfVar var_104
  loc_B51B7B: ImpAdCallFPR4  = Split(, , , )
  loc_B51B80: FLdRfVar var_104
  loc_B51B83: VarIndexLdVar
  loc_B51B89: CStrVarVal var_138
  loc_B51B8D: FLdPrThis
  loc_B51B8E: VCallAd Control_ID_Combo1
  loc_B51B91: FStAdFunc var_88
  loc_B51B94: FLdPr var_88
  loc_B51B97: Me.Text = from_stack_1
  loc_B51B9C: FFreeStr var_D0 = "": var_D4 = "": var_138 = ""
  loc_B51BA7: FFree1Ad var_88
  loc_B51BAA: FFreeVar var_BC = "": var_F4 = "": var_104 = ""
  loc_B51BB5: LitI4 0
  loc_B51BBA: FStStrCopy var_D0
  loc_B51BBD: FLdRfVar var_D0
  loc_B51BC0: ImpAdLdRf MemVar_C0F03C
  loc_B51BC3: CVarRef
  loc_B51BC8: LitVarStr var_AC, "auto_close"
  loc_B51BCD: FStVarCopyObj var_BC
  loc_B51BD0: FLdRfVar var_BC
  loc_B51BD3: LitVarStr var_9C, "server"
  loc_B51BD8: PopAdLdVar
  loc_B51BD9: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B51BDE: FStStr var_13C
  loc_B51BE1: LitVarI2 var_114, 2
  loc_B51BE6: PopAdLdVar
  loc_B51BE7: LitI4 0
  loc_B51BEC: LitI4 -1
  loc_B51BF1: LitVarStr var_E4, ","
  loc_B51BF6: FStVarCopyObj var_F4
  loc_B51BF9: FLdRfVar var_F4
  loc_B51BFC: FLdZeroAd var_13C
  loc_B51BFF: FStStrNoPop var_D4
  loc_B51C02: FLdRfVar var_104
  loc_B51C05: ImpAdCallFPR4  = Split(, , , )
  loc_B51C0A: FLdRfVar var_104
  loc_B51C0D: VarIndexLdVar
  loc_B51C13: CStrVarVal var_138
  loc_B51C17: FLdPrThis
  loc_B51C18: VCallAd Control_ID_Combo2
  loc_B51C1B: FStAdFunc var_88
  loc_B51C1E: FLdPr var_88
  loc_B51C21: Me.Text = from_stack_1
  loc_B51C26: FFreeStr var_D0 = "": var_D4 = "": var_138 = ""
  loc_B51C31: FFree1Ad var_88
  loc_B51C34: FFreeVar var_BC = "": var_F4 = "": var_104 = ""
  loc_B51C3F: LitI2_Byte &HFF
  loc_B51C41: FLdPrThis
  loc_B51C42: VCallAd Control_ID_auto_poweroff_pc
  loc_B51C45: FStAdFunc var_88
  loc_B51C48: FLdPr var_88
  loc_B51C4B: Me.Enabled = from_stack_1b
  loc_B51C50: FFree1Ad var_88
  loc_B51C53: LitI4 0
  loc_B51C58: FStStrCopy var_D0
  loc_B51C5B: FLdRfVar var_D0
  loc_B51C5E: ImpAdLdRf MemVar_C0F03C
  loc_B51C61: CVarRef
  loc_B51C66: LitVarStr var_AC, "auto_close"
  loc_B51C6B: FStVarCopyObj var_BC
  loc_B51C6E: FLdRfVar var_BC
  loc_B51C71: LitVarStr var_9C, "server"
  loc_B51C76: PopAdLdVar
  loc_B51C77: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B51C7C: FStStr var_138
  loc_B51C7F: LitVarI2 var_114, 3
  loc_B51C84: PopAdLdVar
  loc_B51C85: LitI4 0
  loc_B51C8A: LitI4 -1
  loc_B51C8F: LitVarStr var_E4, ","
  loc_B51C94: FStVarCopyObj var_F4
  loc_B51C97: FLdRfVar var_F4
  loc_B51C9A: FLdZeroAd var_138
  loc_B51C9D: FStStrNoPop var_D4
  loc_B51CA0: FLdRfVar var_104
  loc_B51CA3: ImpAdCallFPR4  = Split(, , , )
  loc_B51CA8: FLdRfVar var_104
  loc_B51CAB: VarIndexLdVar
  loc_B51CB1: LitVarStr var_14C, "1"
  loc_B51CB6: HardType
  loc_B51CB7: EqVarBool
  loc_B51CB9: FFreeStr var_D0 = "": var_D4 = ""
  loc_B51CC2: FFreeVar var_BC = "": var_F4 = "": var_104 = ""
  loc_B51CCD: BranchF loc_B51CE7
  loc_B51CD0: LitI2_Byte 1
  loc_B51CD2: FLdPrThis
  loc_B51CD3: VCallAd Control_ID_auto_poweroff_pc
  loc_B51CD6: FStAdFunc var_88
  loc_B51CD9: FLdPr var_88
  loc_B51CDC: Me.Value = from_stack_1
  loc_B51CE1: FFree1Ad var_88
  loc_B51CE4: Branch loc_B51CFB
  loc_B51CE7: LitI2_Byte 0
  loc_B51CE9: FLdPrThis
  loc_B51CEA: VCallAd Control_ID_auto_poweroff_pc
  loc_B51CED: FStAdFunc var_88
  loc_B51CF0: FLdPr var_88
  loc_B51CF3: Me.Value = from_stack_1
  loc_B51CF8: FFree1Ad var_88
  loc_B51CFB: LitI2_Byte &HFF
  loc_B51CFD: FLdPrThis
  loc_B51CFE: VCallAd Control_ID_Combo1
  loc_B51D01: FStAdFunc var_88
  loc_B51D04: FLdPr var_88
  loc_B51D07: Me.Enabled = from_stack_1b
  loc_B51D0C: FFree1Ad var_88
  loc_B51D0F: LitI2_Byte &HFF
  loc_B51D11: FLdPrThis
  loc_B51D12: VCallAd Control_ID_Combo2
  loc_B51D15: FStAdFunc var_88
  loc_B51D18: FLdPr var_88
  loc_B51D1B: Me.Enabled = from_stack_1b
  loc_B51D20: FFree1Ad var_88
  loc_B51D23: LitI4 0
  loc_B51D28: FStStrCopy var_D0
  loc_B51D2B: FLdRfVar var_D0
  loc_B51D2E: ImpAdLdRf MemVar_C0F03C
  loc_B51D31: CVarRef
  loc_B51D36: LitVarStr var_AC, "auto_close_message"
  loc_B51D3B: FStVarCopyObj var_BC
  loc_B51D3E: FLdRfVar var_BC
  loc_B51D41: LitVarStr var_9C, "server"
  loc_B51D46: PopAdLdVar
  loc_B51D47: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B51D4C: FStStr var_138
  loc_B51D4F: LitVarI2 var_114, 0
  loc_B51D54: PopAdLdVar
  loc_B51D55: LitI4 0
  loc_B51D5A: LitI4 -1
  loc_B51D5F: LitVarStr var_E4, ","
  loc_B51D64: FStVarCopyObj var_F4
  loc_B51D67: FLdRfVar var_F4
  loc_B51D6A: FLdZeroAd var_138
  loc_B51D6D: FStStrNoPop var_D4
  loc_B51D70: FLdRfVar var_104
  loc_B51D73: ImpAdCallFPR4  = Split(, , , )
  loc_B51D78: FLdRfVar var_104
  loc_B51D7B: VarIndexLdVar
  loc_B51D81: LitVarStr var_14C, "1"
  loc_B51D86: HardType
  loc_B51D87: EqVarBool
  loc_B51D89: FFreeStr var_D0 = "": var_D4 = ""
  loc_B51D92: FFreeVar var_BC = "": var_F4 = "": var_104 = ""
  loc_B51D9D: BranchF loc_B51E82
  loc_B51DA0: LitI4 0
  loc_B51DA5: FStStrCopy var_D0
  loc_B51DA8: FLdRfVar var_D0
  loc_B51DAB: ImpAdLdRf MemVar_C0F03C
  loc_B51DAE: CVarRef
  loc_B51DB3: LitVarStr var_AC, "auto_close_message"
  loc_B51DB8: FStVarCopyObj var_BC
  loc_B51DBB: FLdRfVar var_BC
  loc_B51DBE: LitVarStr var_9C, "server"
  loc_B51DC3: PopAdLdVar
  loc_B51DC4: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B51DC9: FStStr var_13C
  loc_B51DCC: LitVarI2 var_114, 1
  loc_B51DD1: PopAdLdVar
  loc_B51DD2: LitI4 0
  loc_B51DD7: LitI4 -1
  loc_B51DDC: LitVarStr var_E4, ","
  loc_B51DE1: FStVarCopyObj var_F4
  loc_B51DE4: FLdRfVar var_F4
  loc_B51DE7: FLdZeroAd var_13C
  loc_B51DEA: FStStrNoPop var_D4
  loc_B51DED: FLdRfVar var_104
  loc_B51DF0: ImpAdCallFPR4  = Split(, , , )
  loc_B51DF5: FLdRfVar var_104
  loc_B51DF8: VarIndexLdVar
  loc_B51DFE: CStrVarVal var_138
  loc_B51E02: FLdPrThis
  loc_B51E03: VCallAd Control_ID_Text1
  loc_B51E06: FStAdFunc var_88
  loc_B51E09: FLdPr var_88
  loc_B51E0C: Me.Text = from_stack_1
  loc_B51E11: FFreeStr var_D0 = "": var_D4 = "": var_138 = ""
  loc_B51E1C: FFree1Ad var_88
  loc_B51E1F: FFreeVar var_BC = "": var_F4 = "": var_104 = ""
  loc_B51E2A: LitI2_Byte 1
  loc_B51E2C: FLdPrThis
  loc_B51E2D: VCallAd Control_ID_auto_message
  loc_B51E30: FStAdFunc var_88
  loc_B51E33: FLdPr var_88
  loc_B51E36: Me.Value = from_stack_1
  loc_B51E3B: FFree1Ad var_88
  loc_B51E3E: LitI2_Byte &HFF
  loc_B51E40: FLdPrThis
  loc_B51E41: VCallAd Control_ID_Text1
  loc_B51E44: FStAdFunc var_88
  loc_B51E47: FLdPr var_88
  loc_B51E4A: Me.Enabled = from_stack_1b
  loc_B51E4F: FFree1Ad var_88
  loc_B51E52: LitI2_Byte &HFF
  loc_B51E54: FLdPrThis
  loc_B51E55: VCallAd Control_ID_auto_message
  loc_B51E58: FStAdFunc var_88
  loc_B51E5B: FLdPr var_88
  loc_B51E5E: Me.Enabled = from_stack_1b
  loc_B51E63: FFree1Ad var_88
  loc_B51E66: LitI2_Byte &HFF
  loc_B51E68: ImpAdLdRf MemVar_C0F018
  loc_B51E6B: NewIfNullPr frmMain
  loc_B51E6E: VCallAd Control_ID_
  loc_B51E71: FStAdFunc var_88
  loc_B51E74: FLdPr var_88
  loc_B51E77: frmMain.Timer.Enabled = from_stack_1b
  loc_B51E7C: FFree1Ad var_88
  loc_B51E7F: Branch loc_B51F61
  loc_B51E82: LitI4 0
  loc_B51E87: FStStrCopy var_D0
  loc_B51E8A: FLdRfVar var_D0
  loc_B51E8D: ImpAdLdRf MemVar_C0F03C
  loc_B51E90: CVarRef
  loc_B51E95: LitVarStr var_AC, "auto_close_message"
  loc_B51E9A: FStVarCopyObj var_BC
  loc_B51E9D: FLdRfVar var_BC
  loc_B51EA0: LitVarStr var_9C, "server"
  loc_B51EA5: PopAdLdVar
  loc_B51EA6: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B51EAB: FStStr var_13C
  loc_B51EAE: LitVarI2 var_114, 1
  loc_B51EB3: PopAdLdVar
  loc_B51EB4: LitI4 0
  loc_B51EB9: LitI4 -1
  loc_B51EBE: LitVarStr var_E4, ","
  loc_B51EC3: FStVarCopyObj var_F4
  loc_B51EC6: FLdRfVar var_F4
  loc_B51EC9: FLdZeroAd var_13C
  loc_B51ECC: FStStrNoPop var_D4
  loc_B51ECF: FLdRfVar var_104
  loc_B51ED2: ImpAdCallFPR4  = Split(, , , )
  loc_B51ED7: FLdRfVar var_104
  loc_B51EDA: VarIndexLdVar
  loc_B51EE0: CStrVarVal var_138
  loc_B51EE4: FLdPrThis
  loc_B51EE5: VCallAd Control_ID_Text1
  loc_B51EE8: FStAdFunc var_88
  loc_B51EEB: FLdPr var_88
  loc_B51EEE: Me.Text = from_stack_1
  loc_B51EF3: FFreeStr var_D0 = "": var_D4 = "": var_138 = ""
  loc_B51EFE: FFree1Ad var_88
  loc_B51F01: FFreeVar var_BC = "": var_F4 = "": var_104 = ""
  loc_B51F0C: LitI2_Byte 0
  loc_B51F0E: FLdPrThis
  loc_B51F0F: VCallAd Control_ID_auto_message
  loc_B51F12: FStAdFunc var_88
  loc_B51F15: FLdPr var_88
  loc_B51F18: Me.Value = from_stack_1
  loc_B51F1D: FFree1Ad var_88
  loc_B51F20: LitI2_Byte 0
  loc_B51F22: FLdPrThis
  loc_B51F23: VCallAd Control_ID_auto_message
  loc_B51F26: FStAdFunc var_88
  loc_B51F29: FLdPr var_88
  loc_B51F2C: Me.Enabled = from_stack_1b
  loc_B51F31: FFree1Ad var_88
  loc_B51F34: LitI2_Byte 0
  loc_B51F36: FLdPrThis
  loc_B51F37: VCallAd Control_ID_Text1
  loc_B51F3A: FStAdFunc var_88
  loc_B51F3D: FLdPr var_88
  loc_B51F40: Me.Enabled = from_stack_1b
  loc_B51F45: FFree1Ad var_88
  loc_B51F48: LitI2_Byte 0
  loc_B51F4A: ImpAdLdRf MemVar_C0F018
  loc_B51F4D: NewIfNullPr frmMain
  loc_B51F50: VCallAd Control_ID_
  loc_B51F53: FStAdFunc var_88
  loc_B51F56: FLdPr var_88
  loc_B51F59: frmMain.Timer.Enabled = from_stack_1b
  loc_B51F5E: FFree1Ad var_88
  loc_B51F61: LitI2_Byte &HFF
  loc_B51F63: ImpAdLdRf MemVar_C0F018
  loc_B51F66: NewIfNullPr frmMain
  loc_B51F69: VCallAd Control_ID_
  loc_B51F6C: FStAdFunc var_88
  loc_B51F6F: FLdPr var_88
  loc_B51F72: frmMain.Timer.Enabled = from_stack_1b
  loc_B51F77: FFree1Ad var_88
  loc_B51F7A: Branch loc_B523B3
  loc_B51F7D: LitI4 0
  loc_B51F82: FStStrCopy var_D0
  loc_B51F85: FLdRfVar var_D0
  loc_B51F88: ImpAdLdRf MemVar_C0F03C
  loc_B51F8B: CVarRef
  loc_B51F90: LitVarStr var_AC, "auto_close"
  loc_B51F95: FStVarCopyObj var_BC
  loc_B51F98: FLdRfVar var_BC
  loc_B51F9B: LitVarStr var_9C, "server"
  loc_B51FA0: PopAdLdVar
  loc_B51FA1: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B51FA6: FStStr var_13C
  loc_B51FA9: LitVarI2 var_114, 1
  loc_B51FAE: PopAdLdVar
  loc_B51FAF: LitI4 0
  loc_B51FB4: LitI4 -1
  loc_B51FB9: LitVarStr var_E4, ","
  loc_B51FBE: FStVarCopyObj var_F4
  loc_B51FC1: FLdRfVar var_F4
  loc_B51FC4: FLdZeroAd var_13C
  loc_B51FC7: FStStrNoPop var_D4
  loc_B51FCA: FLdRfVar var_104
  loc_B51FCD: ImpAdCallFPR4  = Split(, , , )
  loc_B51FD2: FLdRfVar var_104
  loc_B51FD5: VarIndexLdVar
  loc_B51FDB: CStrVarVal var_138
  loc_B51FDF: FLdPrThis
  loc_B51FE0: VCallAd Control_ID_Combo1
  loc_B51FE3: FStAdFunc var_88
  loc_B51FE6: FLdPr var_88
  loc_B51FE9: Me.Text = from_stack_1
  loc_B51FEE: FFreeStr var_D0 = "": var_D4 = "": var_138 = ""
  loc_B51FF9: FFree1Ad var_88
  loc_B51FFC: FFreeVar var_BC = "": var_F4 = "": var_104 = ""
  loc_B52007: LitI4 0
  loc_B5200C: FStStrCopy var_D0
  loc_B5200F: FLdRfVar var_D0
  loc_B52012: ImpAdLdRf MemVar_C0F03C
  loc_B52015: CVarRef
  loc_B5201A: LitVarStr var_AC, "auto_close"
  loc_B5201F: FStVarCopyObj var_BC
  loc_B52022: FLdRfVar var_BC
  loc_B52025: LitVarStr var_9C, "server"
  loc_B5202A: PopAdLdVar
  loc_B5202B: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B52030: FStStr var_13C
  loc_B52033: LitVarI2 var_114, 2
  loc_B52038: PopAdLdVar
  loc_B52039: LitI4 0
  loc_B5203E: LitI4 -1
  loc_B52043: LitVarStr var_E4, ","
  loc_B52048: FStVarCopyObj var_F4
  loc_B5204B: FLdRfVar var_F4
  loc_B5204E: FLdZeroAd var_13C
  loc_B52051: FStStrNoPop var_D4
  loc_B52054: FLdRfVar var_104
  loc_B52057: ImpAdCallFPR4  = Split(, , , )
  loc_B5205C: FLdRfVar var_104
  loc_B5205F: VarIndexLdVar
  loc_B52065: CStrVarVal var_138
  loc_B52069: FLdPrThis
  loc_B5206A: VCallAd Control_ID_Combo2
  loc_B5206D: FStAdFunc var_88
  loc_B52070: FLdPr var_88
  loc_B52073: Me.Text = from_stack_1
  loc_B52078: FFreeStr var_D0 = "": var_D4 = "": var_138 = ""
  loc_B52083: FFree1Ad var_88
  loc_B52086: FFreeVar var_BC = "": var_F4 = "": var_104 = ""
  loc_B52091: LitI2_Byte 0
  loc_B52093: FLdPrThis
  loc_B52094: VCallAd Control_ID_auto_poweroff_pc
  loc_B52097: FStAdFunc var_88
  loc_B5209A: FLdPr var_88
  loc_B5209D: Me.Enabled = from_stack_1b
  loc_B520A2: FFree1Ad var_88
  loc_B520A5: LitI4 0
  loc_B520AA: FStStrCopy var_D0
  loc_B520AD: FLdRfVar var_D0
  loc_B520B0: ImpAdLdRf MemVar_C0F03C
  loc_B520B3: CVarRef
  loc_B520B8: LitVarStr var_AC, "auto_close"
  loc_B520BD: FStVarCopyObj var_BC
  loc_B520C0: FLdRfVar var_BC
  loc_B520C3: LitVarStr var_9C, "server"
  loc_B520C8: PopAdLdVar
  loc_B520C9: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B520CE: FStStr var_138
  loc_B520D1: LitVarI2 var_114, 3
  loc_B520D6: PopAdLdVar
  loc_B520D7: LitI4 0
  loc_B520DC: LitI4 -1
  loc_B520E1: LitVarStr var_E4, ","
  loc_B520E6: FStVarCopyObj var_F4
  loc_B520E9: FLdRfVar var_F4
  loc_B520EC: FLdZeroAd var_138
  loc_B520EF: FStStrNoPop var_D4
  loc_B520F2: FLdRfVar var_104
  loc_B520F5: ImpAdCallFPR4  = Split(, , , )
  loc_B520FA: FLdRfVar var_104
  loc_B520FD: VarIndexLdVar
  loc_B52103: LitVarStr var_14C, "1"
  loc_B52108: HardType
  loc_B52109: EqVarBool
  loc_B5210B: FFreeStr var_D0 = "": var_D4 = ""
  loc_B52114: FFreeVar var_BC = "": var_F4 = "": var_104 = ""
  loc_B5211F: BranchF loc_B52139
  loc_B52122: LitI2_Byte 1
  loc_B52124: FLdPrThis
  loc_B52125: VCallAd Control_ID_auto_poweroff_pc
  loc_B52128: FStAdFunc var_88
  loc_B5212B: FLdPr var_88
  loc_B5212E: Me.Value = from_stack_1
  loc_B52133: FFree1Ad var_88
  loc_B52136: Branch loc_B5214D
  loc_B52139: LitI2_Byte 0
  loc_B5213B: FLdPrThis
  loc_B5213C: VCallAd Control_ID_auto_poweroff_pc
  loc_B5213F: FStAdFunc var_88
  loc_B52142: FLdPr var_88
  loc_B52145: Me.Value = from_stack_1
  loc_B5214A: FFree1Ad var_88
  loc_B5214D: LitI2_Byte 0
  loc_B5214F: FLdPrThis
  loc_B52150: VCallAd Control_ID_Combo1
  loc_B52153: FStAdFunc var_88
  loc_B52156: FLdPr var_88
  loc_B52159: Me.Enabled = from_stack_1b
  loc_B5215E: FFree1Ad var_88
  loc_B52161: LitI2_Byte 0
  loc_B52163: FLdPrThis
  loc_B52164: VCallAd Control_ID_Combo2
  loc_B52167: FStAdFunc var_88
  loc_B5216A: FLdPr var_88
  loc_B5216D: Me.Enabled = from_stack_1b
  loc_B52172: FFree1Ad var_88
  loc_B52175: LitI4 0
  loc_B5217A: FStStrCopy var_D0
  loc_B5217D: FLdRfVar var_D0
  loc_B52180: ImpAdLdRf MemVar_C0F03C
  loc_B52183: CVarRef
  loc_B52188: LitVarStr var_AC, "auto_close_message"
  loc_B5218D: FStVarCopyObj var_BC
  loc_B52190: FLdRfVar var_BC
  loc_B52193: LitVarStr var_9C, "server"
  loc_B52198: PopAdLdVar
  loc_B52199: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5219E: FStStr var_138
  loc_B521A1: LitVarI2 var_114, 0
  loc_B521A6: PopAdLdVar
  loc_B521A7: LitI4 0
  loc_B521AC: LitI4 -1
  loc_B521B1: LitVarStr var_E4, ","
  loc_B521B6: FStVarCopyObj var_F4
  loc_B521B9: FLdRfVar var_F4
  loc_B521BC: FLdZeroAd var_138
  loc_B521BF: FStStrNoPop var_D4
  loc_B521C2: FLdRfVar var_104
  loc_B521C5: ImpAdCallFPR4  = Split(, , , )
  loc_B521CA: FLdRfVar var_104
  loc_B521CD: VarIndexLdVar
  loc_B521D3: LitVarStr var_14C, "1"
  loc_B521D8: HardType
  loc_B521D9: EqVarBool
  loc_B521DB: FFreeStr var_D0 = "": var_D4 = ""
  loc_B521E4: FFreeVar var_BC = "": var_F4 = "": var_104 = ""
  loc_B521EF: BranchF loc_B522D4
  loc_B521F2: LitI4 0
  loc_B521F7: FStStrCopy var_D0
  loc_B521FA: FLdRfVar var_D0
  loc_B521FD: ImpAdLdRf MemVar_C0F03C
  loc_B52200: CVarRef
  loc_B52205: LitVarStr var_AC, "auto_close_message"
  loc_B5220A: FStVarCopyObj var_BC
  loc_B5220D: FLdRfVar var_BC
  loc_B52210: LitVarStr var_9C, "server"
  loc_B52215: PopAdLdVar
  loc_B52216: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5221B: FStStr var_13C
  loc_B5221E: LitVarI2 var_114, 1
  loc_B52223: PopAdLdVar
  loc_B52224: LitI4 0
  loc_B52229: LitI4 -1
  loc_B5222E: LitVarStr var_E4, ","
  loc_B52233: FStVarCopyObj var_F4
  loc_B52236: FLdRfVar var_F4
  loc_B52239: FLdZeroAd var_13C
  loc_B5223C: FStStrNoPop var_D4
  loc_B5223F: FLdRfVar var_104
  loc_B52242: ImpAdCallFPR4  = Split(, , , )
  loc_B52247: FLdRfVar var_104
  loc_B5224A: VarIndexLdVar
  loc_B52250: CStrVarVal var_138
  loc_B52254: FLdPrThis
  loc_B52255: VCallAd Control_ID_Text1
  loc_B52258: FStAdFunc var_88
  loc_B5225B: FLdPr var_88
  loc_B5225E: Me.Text = from_stack_1
  loc_B52263: FFreeStr var_D0 = "": var_D4 = "": var_138 = ""
  loc_B5226E: FFree1Ad var_88
  loc_B52271: FFreeVar var_BC = "": var_F4 = "": var_104 = ""
  loc_B5227C: LitI2_Byte 1
  loc_B5227E: FLdPrThis
  loc_B5227F: VCallAd Control_ID_auto_message
  loc_B52282: FStAdFunc var_88
  loc_B52285: FLdPr var_88
  loc_B52288: Me.Value = from_stack_1
  loc_B5228D: FFree1Ad var_88
  loc_B52290: LitI2_Byte 0
  loc_B52292: FLdPrThis
  loc_B52293: VCallAd Control_ID_auto_message
  loc_B52296: FStAdFunc var_88
  loc_B52299: FLdPr var_88
  loc_B5229C: Me.Enabled = from_stack_1b
  loc_B522A1: FFree1Ad var_88
  loc_B522A4: LitI2_Byte 0
  loc_B522A6: FLdPrThis
  loc_B522A7: VCallAd Control_ID_Text1
  loc_B522AA: FStAdFunc var_88
  loc_B522AD: FLdPr var_88
  loc_B522B0: Me.Enabled = from_stack_1b
  loc_B522B5: FFree1Ad var_88
  loc_B522B8: LitI2_Byte 0
  loc_B522BA: ImpAdLdRf MemVar_C0F018
  loc_B522BD: NewIfNullPr frmMain
  loc_B522C0: VCallAd Control_ID_
  loc_B522C3: FStAdFunc var_88
  loc_B522C6: FLdPr var_88
  loc_B522C9: frmMain.Timer.Enabled = from_stack_1b
  loc_B522CE: FFree1Ad var_88
  loc_B522D1: Branch loc_B523B3
  loc_B522D4: LitI4 0
  loc_B522D9: FStStrCopy var_D0
  loc_B522DC: FLdRfVar var_D0
  loc_B522DF: ImpAdLdRf MemVar_C0F03C
  loc_B522E2: CVarRef
  loc_B522E7: LitVarStr var_AC, "auto_close_message"
  loc_B522EC: FStVarCopyObj var_BC
  loc_B522EF: FLdRfVar var_BC
  loc_B522F2: LitVarStr var_9C, "server"
  loc_B522F7: PopAdLdVar
  loc_B522F8: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B522FD: FStStr var_13C
  loc_B52300: LitVarI2 var_114, 1
  loc_B52305: PopAdLdVar
  loc_B52306: LitI4 0
  loc_B5230B: LitI4 -1
  loc_B52310: LitVarStr var_E4, ","
  loc_B52315: FStVarCopyObj var_F4
  loc_B52318: FLdRfVar var_F4
  loc_B5231B: FLdZeroAd var_13C
  loc_B5231E: FStStrNoPop var_D4
  loc_B52321: FLdRfVar var_104
  loc_B52324: ImpAdCallFPR4  = Split(, , , )
  loc_B52329: FLdRfVar var_104
  loc_B5232C: VarIndexLdVar
  loc_B52332: CStrVarVal var_138
  loc_B52336: FLdPrThis
  loc_B52337: VCallAd Control_ID_Text1
  loc_B5233A: FStAdFunc var_88
  loc_B5233D: FLdPr var_88
  loc_B52340: Me.Text = from_stack_1
  loc_B52345: FFreeStr var_D0 = "": var_D4 = "": var_138 = ""
  loc_B52350: FFree1Ad var_88
  loc_B52353: FFreeVar var_BC = "": var_F4 = "": var_104 = ""
  loc_B5235E: LitI2_Byte 0
  loc_B52360: FLdPrThis
  loc_B52361: VCallAd Control_ID_auto_message
  loc_B52364: FStAdFunc var_88
  loc_B52367: FLdPr var_88
  loc_B5236A: Me.Value = from_stack_1
  loc_B5236F: FFree1Ad var_88
  loc_B52372: LitI2_Byte 0
  loc_B52374: FLdPrThis
  loc_B52375: VCallAd Control_ID_auto_message
  loc_B52378: FStAdFunc var_88
  loc_B5237B: FLdPr var_88
  loc_B5237E: Me.Enabled = from_stack_1b
  loc_B52383: FFree1Ad var_88
  loc_B52386: LitI2_Byte 0
  loc_B52388: FLdPrThis
  loc_B52389: VCallAd Control_ID_Text1
  loc_B5238C: FStAdFunc var_88
  loc_B5238F: FLdPr var_88
  loc_B52392: Me.Enabled = from_stack_1b
  loc_B52397: FFree1Ad var_88
  loc_B5239A: LitI2_Byte 0
  loc_B5239C: ImpAdLdRf MemVar_C0F018
  loc_B5239F: NewIfNullPr frmMain
  loc_B523A2: VCallAd Control_ID_
  loc_B523A5: FStAdFunc var_88
  loc_B523A8: FLdPr var_88
  loc_B523AB: frmMain.Timer.Enabled = from_stack_1b
  loc_B523B0: FFree1Ad var_88
  loc_B523B3: ExitProcHresult
End Sub
