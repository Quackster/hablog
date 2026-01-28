VERSION 5.00
Begin VB.Form frmTab_publicroom_booteditor
  Caption = "frmTab_publicroom_booteditor"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form2"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 4185
  ClientHeight = 3195
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmTab_publicroom_booteditor.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 4215
    Height = 3210
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.CheckBox Check1
      Caption = "Enabled"
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 2280
      Top = 960
      Width = 1215
      Height = 255
      Enabled = 0   'False
      TabIndex = 6
      Appearance = 0 'Flat
    End
    Begin VB.TextBox Text1
      Left = 1680
      Top = 1030
      Width = 375
      Height = 195
      TabIndex = 5
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.TextBox Text2
      Left = 1680
      Top = 1410
      Width = 1935
      Height = 195
      Enabled = 0   'False
      TabIndex = 4
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.TextBox Text3
      Left = 1680
      Top = 1800
      Width = 1935
      Height = 195
      Enabled = 0   'False
      TabIndex = 3
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.TextBox Text4
      Left = 1680
      Top = 2230
      Width = 1935
      Height = 195
      Enabled = 0   'False
      TabIndex = 2
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.TextBox Text5
      Left = 1680
      Top = 2640
      Width = 1935
      Height = 195
      Enabled = 0   'False
      TabIndex = 1
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.Label Label1
      Caption = "Bot Editor"
      ForeColor = &HFFFFFF&
      Left = 240
      Top = 240
      Width = 3255
      Height = 255
      TabIndex = 12
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
    Begin VB.Label Label6
      Caption = "Look:"
      BackColor = &H80&
      Left = 360
      Top = 2640
      Width = 1095
      Height = 255
      TabIndex = 11
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label5
      Caption = "Walk Space:"
      BackColor = &H80&
      Left = 360
      Top = 2220
      Width = 1095
      Height = 255
      TabIndex = 10
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label4
      Caption = "Mission:"
      BackColor = &H80&
      Left = 360
      Top = 1800
      Width = 1095
      Height = 255
      TabIndex = 9
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label3
      Caption = "Bot name:"
      BackColor = &H80&
      Left = 360
      Top = 1320
      Width = 1095
      Height = 255
      TabIndex = 8
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label2
      Caption = "Public number:"
      BackColor = &H80&
      Left = 360
      Top = 960
      Width = 1095
      Height = 255
      TabIndex = 7
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Image2
      Picture = "frmTab_publicroom_booteditor.frx":0002C1CA
      Left = 1560
      Top = 960
      Width = 600
      Height = 330
    End
    Begin VB.Image Image1
      Picture = "frmTab_publicroom_booteditor.frx":0002CC5C
      Left = 1560
      Top = 1320
      Width = 2160
      Height = 330
    End
    Begin VB.Image Image3
      Picture = "frmTab_publicroom_booteditor.frx":0002F1BE
      Left = 1560
      Top = 1720
      Width = 2160
      Height = 330
    End
    Begin VB.Image Image4
      Picture = "frmTab_publicroom_booteditor.frx":00031720
      Left = 1560
      Top = 2160
      Width = 2160
      Height = 330
    End
    Begin VB.Image Image5
      Picture = "frmTab_publicroom_booteditor.frx":00033C82
      Left = 1560
      Top = 2550
      Width = 2160
      Height = 330
    End
    Begin VB.Image Image16
      Picture = "frmTab_publicroom_booteditor.frx":000361E4
      Left = 3600
      Top = 180
      Width = 360
      Height = 330
    End
  End
End

Attribute VB_Name = "frmTab_publicroom_booteditor"


Private Sub Text2_Change() 'B285DC
  'Data Table: 543B84
  loc_B28400: FLdRfVar var_9C
  loc_B28403: FLdPrThis
  loc_B28404: VCallAd Control_ID_Text2
  loc_B28407: FStAdFunc var_98
  loc_B2840A: FLdPr var_98
  loc_B2840D:  = Me.Text
  loc_B28412: ImpAdLdI4 MemVar_C0F044
  loc_B28415: LitStr "pub\"
  loc_B28418: ConcatStr
  loc_B28419: FStStrNoPop var_90
  loc_B2841C: FLdRfVar var_8C
  loc_B2841F: FLdPrThis
  loc_B28420: VCallAd Control_ID_Text1
  loc_B28423: FStAdFunc var_88
  loc_B28426: FLdPr var_88
  loc_B28429:  = Me.Text
  loc_B2842E: ILdRf var_8C
  loc_B28431: ConcatStr
  loc_B28432: FStStrNoPop var_94
  loc_B28435: LitStr "\data.ini"
  loc_B28438: ConcatStr
  loc_B28439: FStStrNoPop var_A0
  loc_B2843C: ILdRf var_9C
  loc_B2843F: LitStr "name"
  loc_B28442: LitStr "bot"
  loc_B28445: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2844A: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B28457: FFreeAd var_88 = ""
  loc_B2845E: FLdRfVar var_9C
  loc_B28461: FLdPrThis
  loc_B28462: VCallAd Control_ID_Text3
  loc_B28465: FStAdFunc var_98
  loc_B28468: FLdPr var_98
  loc_B2846B:  = Me.Text
  loc_B28470: ImpAdLdI4 MemVar_C0F044
  loc_B28473: LitStr "pub\"
  loc_B28476: ConcatStr
  loc_B28477: FStStrNoPop var_90
  loc_B2847A: FLdRfVar var_8C
  loc_B2847D: FLdPrThis
  loc_B2847E: VCallAd Control_ID_Text1
  loc_B28481: FStAdFunc var_88
  loc_B28484: FLdPr var_88
  loc_B28487:  = Me.Text
  loc_B2848C: ILdRf var_8C
  loc_B2848F: ConcatStr
  loc_B28490: FStStrNoPop var_94
  loc_B28493: LitStr "\data.ini"
  loc_B28496: ConcatStr
  loc_B28497: FStStrNoPop var_A0
  loc_B2849A: ILdRf var_9C
  loc_B2849D: LitStr "mission"
  loc_B284A0: LitStr "bot"
  loc_B284A3: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B284A8: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B284B5: FFreeAd var_88 = ""
  loc_B284BC: FLdRfVar var_9C
  loc_B284BF: FLdPrThis
  loc_B284C0: VCallAd Control_ID_Text4
  loc_B284C3: FStAdFunc var_98
  loc_B284C6: FLdPr var_98
  loc_B284C9:  = Me.Text
  loc_B284CE: ImpAdLdI4 MemVar_C0F044
  loc_B284D1: LitStr "pub\"
  loc_B284D4: ConcatStr
  loc_B284D5: FStStrNoPop var_90
  loc_B284D8: FLdRfVar var_8C
  loc_B284DB: FLdPrThis
  loc_B284DC: VCallAd Control_ID_Text1
  loc_B284DF: FStAdFunc var_88
  loc_B284E2: FLdPr var_88
  loc_B284E5:  = Me.Text
  loc_B284EA: ILdRf var_8C
  loc_B284ED: ConcatStr
  loc_B284EE: FStStrNoPop var_94
  loc_B284F1: LitStr "\data.ini"
  loc_B284F4: ConcatStr
  loc_B284F5: FStStrNoPop var_A0
  loc_B284F8: ILdRf var_9C
  loc_B284FB: LitStr "walkspace"
  loc_B284FE: LitStr "bot"
  loc_B28501: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B28506: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B28513: FFreeAd var_88 = ""
  loc_B2851A: FLdRfVar var_9C
  loc_B2851D: FLdPrThis
  loc_B2851E: VCallAd Control_ID_Text5
  loc_B28521: FStAdFunc var_98
  loc_B28524: FLdPr var_98
  loc_B28527:  = Me.Text
  loc_B2852C: ImpAdLdI4 MemVar_C0F044
  loc_B2852F: LitStr "pub\"
  loc_B28532: ConcatStr
  loc_B28533: FStStrNoPop var_90
  loc_B28536: FLdRfVar var_8C
  loc_B28539: FLdPrThis
  loc_B2853A: VCallAd Control_ID_Text1
  loc_B2853D: FStAdFunc var_88
  loc_B28540: FLdPr var_88
  loc_B28543:  = Me.Text
  loc_B28548: ILdRf var_8C
  loc_B2854B: ConcatStr
  loc_B2854C: FStStrNoPop var_94
  loc_B2854F: LitStr "\data.ini"
  loc_B28552: ConcatStr
  loc_B28553: FStStrNoPop var_A0
  loc_B28556: ILdRf var_9C
  loc_B28559: LitStr "look"
  loc_B2855C: LitStr "bot"
  loc_B2855F: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B28564: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B28571: FFreeAd var_88 = ""
  loc_B28578: FLdRfVar var_A2
  loc_B2857B: FLdPrThis
  loc_B2857C: VCallAd Control_ID_Check1
  loc_B2857F: FStAdFunc var_98
  loc_B28582: FLdPr var_98
  loc_B28585:  = Me.Value
  loc_B2858A: ImpAdLdI4 MemVar_C0F044
  loc_B2858D: LitStr "pub\"
  loc_B28590: ConcatStr
  loc_B28591: FStStrNoPop var_90
  loc_B28594: FLdRfVar var_8C
  loc_B28597: FLdPrThis
  loc_B28598: VCallAd Control_ID_Text1
  loc_B2859B: FStAdFunc var_88
  loc_B2859E: FLdPr var_88
  loc_B285A1:  = Me.Text
  loc_B285A6: ILdRf var_8C
  loc_B285A9: ConcatStr
  loc_B285AA: FStStrNoPop var_94
  loc_B285AD: LitStr "\data.ini"
  loc_B285B0: ConcatStr
  loc_B285B1: FStStrNoPop var_A0
  loc_B285B4: FLdI2 var_A2
  loc_B285B7: CStrUI1
  loc_B285B9: FStStrNoPop var_9C
  loc_B285BC: LitStr "enabled"
  loc_B285BF: LitStr "bot"
  loc_B285C2: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B285C7: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B285D4: FFreeAd var_88 = ""
  loc_B285DB: ExitProcHresult
End Sub

Private Sub Text4_Change() 'B28804
  'Data Table: 543B84
  loc_B28628: FLdRfVar var_9C
  loc_B2862B: FLdPrThis
  loc_B2862C: VCallAd Control_ID_Text2
  loc_B2862F: FStAdFunc var_98
  loc_B28632: FLdPr var_98
  loc_B28635:  = Me.Text
  loc_B2863A: ImpAdLdI4 MemVar_C0F044
  loc_B2863D: LitStr "pub\"
  loc_B28640: ConcatStr
  loc_B28641: FStStrNoPop var_90
  loc_B28644: FLdRfVar var_8C
  loc_B28647: FLdPrThis
  loc_B28648: VCallAd Control_ID_Text1
  loc_B2864B: FStAdFunc var_88
  loc_B2864E: FLdPr var_88
  loc_B28651:  = Me.Text
  loc_B28656: ILdRf var_8C
  loc_B28659: ConcatStr
  loc_B2865A: FStStrNoPop var_94
  loc_B2865D: LitStr "\data.ini"
  loc_B28660: ConcatStr
  loc_B28661: FStStrNoPop var_A0
  loc_B28664: ILdRf var_9C
  loc_B28667: LitStr "name"
  loc_B2866A: LitStr "bot"
  loc_B2866D: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B28672: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B2867F: FFreeAd var_88 = ""
  loc_B28686: FLdRfVar var_9C
  loc_B28689: FLdPrThis
  loc_B2868A: VCallAd Control_ID_Text3
  loc_B2868D: FStAdFunc var_98
  loc_B28690: FLdPr var_98
  loc_B28693:  = Me.Text
  loc_B28698: ImpAdLdI4 MemVar_C0F044
  loc_B2869B: LitStr "pub\"
  loc_B2869E: ConcatStr
  loc_B2869F: FStStrNoPop var_90
  loc_B286A2: FLdRfVar var_8C
  loc_B286A5: FLdPrThis
  loc_B286A6: VCallAd Control_ID_Text1
  loc_B286A9: FStAdFunc var_88
  loc_B286AC: FLdPr var_88
  loc_B286AF:  = Me.Text
  loc_B286B4: ILdRf var_8C
  loc_B286B7: ConcatStr
  loc_B286B8: FStStrNoPop var_94
  loc_B286BB: LitStr "\data.ini"
  loc_B286BE: ConcatStr
  loc_B286BF: FStStrNoPop var_A0
  loc_B286C2: ILdRf var_9C
  loc_B286C5: LitStr "mission"
  loc_B286C8: LitStr "bot"
  loc_B286CB: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B286D0: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B286DD: FFreeAd var_88 = ""
  loc_B286E4: FLdRfVar var_9C
  loc_B286E7: FLdPrThis
  loc_B286E8: VCallAd Control_ID_Text4
  loc_B286EB: FStAdFunc var_98
  loc_B286EE: FLdPr var_98
  loc_B286F1:  = Me.Text
  loc_B286F6: ImpAdLdI4 MemVar_C0F044
  loc_B286F9: LitStr "pub\"
  loc_B286FC: ConcatStr
  loc_B286FD: FStStrNoPop var_90
  loc_B28700: FLdRfVar var_8C
  loc_B28703: FLdPrThis
  loc_B28704: VCallAd Control_ID_Text1
  loc_B28707: FStAdFunc var_88
  loc_B2870A: FLdPr var_88
  loc_B2870D:  = Me.Text
  loc_B28712: ILdRf var_8C
  loc_B28715: ConcatStr
  loc_B28716: FStStrNoPop var_94
  loc_B28719: LitStr "\data.ini"
  loc_B2871C: ConcatStr
  loc_B2871D: FStStrNoPop var_A0
  loc_B28720: ILdRf var_9C
  loc_B28723: LitStr "walkspace"
  loc_B28726: LitStr "bot"
  loc_B28729: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2872E: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B2873B: FFreeAd var_88 = ""
  loc_B28742: FLdRfVar var_9C
  loc_B28745: FLdPrThis
  loc_B28746: VCallAd Control_ID_Text5
  loc_B28749: FStAdFunc var_98
  loc_B2874C: FLdPr var_98
  loc_B2874F:  = Me.Text
  loc_B28754: ImpAdLdI4 MemVar_C0F044
  loc_B28757: LitStr "pub\"
  loc_B2875A: ConcatStr
  loc_B2875B: FStStrNoPop var_90
  loc_B2875E: FLdRfVar var_8C
  loc_B28761: FLdPrThis
  loc_B28762: VCallAd Control_ID_Text1
  loc_B28765: FStAdFunc var_88
  loc_B28768: FLdPr var_88
  loc_B2876B:  = Me.Text
  loc_B28770: ILdRf var_8C
  loc_B28773: ConcatStr
  loc_B28774: FStStrNoPop var_94
  loc_B28777: LitStr "\data.ini"
  loc_B2877A: ConcatStr
  loc_B2877B: FStStrNoPop var_A0
  loc_B2877E: ILdRf var_9C
  loc_B28781: LitStr "look"
  loc_B28784: LitStr "bot"
  loc_B28787: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2878C: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B28799: FFreeAd var_88 = ""
  loc_B287A0: FLdRfVar var_A2
  loc_B287A3: FLdPrThis
  loc_B287A4: VCallAd Control_ID_Check1
  loc_B287A7: FStAdFunc var_98
  loc_B287AA: FLdPr var_98
  loc_B287AD:  = Me.Value
  loc_B287B2: ImpAdLdI4 MemVar_C0F044
  loc_B287B5: LitStr "pub\"
  loc_B287B8: ConcatStr
  loc_B287B9: FStStrNoPop var_90
  loc_B287BC: FLdRfVar var_8C
  loc_B287BF: FLdPrThis
  loc_B287C0: VCallAd Control_ID_Text1
  loc_B287C3: FStAdFunc var_88
  loc_B287C6: FLdPr var_88
  loc_B287C9:  = Me.Text
  loc_B287CE: ILdRf var_8C
  loc_B287D1: ConcatStr
  loc_B287D2: FStStrNoPop var_94
  loc_B287D5: LitStr "\data.ini"
  loc_B287D8: ConcatStr
  loc_B287D9: FStStrNoPop var_A0
  loc_B287DC: FLdI2 var_A2
  loc_B287DF: CStrUI1
  loc_B287E1: FStStrNoPop var_9C
  loc_B287E4: LitStr "enabled"
  loc_B287E7: LitStr "bot"
  loc_B287EA: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B287EF: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B287FC: FFreeAd var_88 = ""
  loc_B28803: ExitProcHresult
End Sub

Private Sub Text5_Change() 'B28A2C
  'Data Table: 543B84
  loc_B28850: FLdRfVar var_9C
  loc_B28853: FLdPrThis
  loc_B28854: VCallAd Control_ID_Text2
  loc_B28857: FStAdFunc var_98
  loc_B2885A: FLdPr var_98
  loc_B2885D:  = Me.Text
  loc_B28862: ImpAdLdI4 MemVar_C0F044
  loc_B28865: LitStr "pub\"
  loc_B28868: ConcatStr
  loc_B28869: FStStrNoPop var_90
  loc_B2886C: FLdRfVar var_8C
  loc_B2886F: FLdPrThis
  loc_B28870: VCallAd Control_ID_Text1
  loc_B28873: FStAdFunc var_88
  loc_B28876: FLdPr var_88
  loc_B28879:  = Me.Text
  loc_B2887E: ILdRf var_8C
  loc_B28881: ConcatStr
  loc_B28882: FStStrNoPop var_94
  loc_B28885: LitStr "\data.ini"
  loc_B28888: ConcatStr
  loc_B28889: FStStrNoPop var_A0
  loc_B2888C: ILdRf var_9C
  loc_B2888F: LitStr "name"
  loc_B28892: LitStr "bot"
  loc_B28895: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2889A: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B288A7: FFreeAd var_88 = ""
  loc_B288AE: FLdRfVar var_9C
  loc_B288B1: FLdPrThis
  loc_B288B2: VCallAd Control_ID_Text3
  loc_B288B5: FStAdFunc var_98
  loc_B288B8: FLdPr var_98
  loc_B288BB:  = Me.Text
  loc_B288C0: ImpAdLdI4 MemVar_C0F044
  loc_B288C3: LitStr "pub\"
  loc_B288C6: ConcatStr
  loc_B288C7: FStStrNoPop var_90
  loc_B288CA: FLdRfVar var_8C
  loc_B288CD: FLdPrThis
  loc_B288CE: VCallAd Control_ID_Text1
  loc_B288D1: FStAdFunc var_88
  loc_B288D4: FLdPr var_88
  loc_B288D7:  = Me.Text
  loc_B288DC: ILdRf var_8C
  loc_B288DF: ConcatStr
  loc_B288E0: FStStrNoPop var_94
  loc_B288E3: LitStr "\data.ini"
  loc_B288E6: ConcatStr
  loc_B288E7: FStStrNoPop var_A0
  loc_B288EA: ILdRf var_9C
  loc_B288ED: LitStr "mission"
  loc_B288F0: LitStr "bot"
  loc_B288F3: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B288F8: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B28905: FFreeAd var_88 = ""
  loc_B2890C: FLdRfVar var_9C
  loc_B2890F: FLdPrThis
  loc_B28910: VCallAd Control_ID_Text4
  loc_B28913: FStAdFunc var_98
  loc_B28916: FLdPr var_98
  loc_B28919:  = Me.Text
  loc_B2891E: ImpAdLdI4 MemVar_C0F044
  loc_B28921: LitStr "pub\"
  loc_B28924: ConcatStr
  loc_B28925: FStStrNoPop var_90
  loc_B28928: FLdRfVar var_8C
  loc_B2892B: FLdPrThis
  loc_B2892C: VCallAd Control_ID_Text1
  loc_B2892F: FStAdFunc var_88
  loc_B28932: FLdPr var_88
  loc_B28935:  = Me.Text
  loc_B2893A: ILdRf var_8C
  loc_B2893D: ConcatStr
  loc_B2893E: FStStrNoPop var_94
  loc_B28941: LitStr "\data.ini"
  loc_B28944: ConcatStr
  loc_B28945: FStStrNoPop var_A0
  loc_B28948: ILdRf var_9C
  loc_B2894B: LitStr "walkspace"
  loc_B2894E: LitStr "bot"
  loc_B28951: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B28956: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B28963: FFreeAd var_88 = ""
  loc_B2896A: FLdRfVar var_9C
  loc_B2896D: FLdPrThis
  loc_B2896E: VCallAd Control_ID_Text5
  loc_B28971: FStAdFunc var_98
  loc_B28974: FLdPr var_98
  loc_B28977:  = Me.Text
  loc_B2897C: ImpAdLdI4 MemVar_C0F044
  loc_B2897F: LitStr "pub\"
  loc_B28982: ConcatStr
  loc_B28983: FStStrNoPop var_90
  loc_B28986: FLdRfVar var_8C
  loc_B28989: FLdPrThis
  loc_B2898A: VCallAd Control_ID_Text1
  loc_B2898D: FStAdFunc var_88
  loc_B28990: FLdPr var_88
  loc_B28993:  = Me.Text
  loc_B28998: ILdRf var_8C
  loc_B2899B: ConcatStr
  loc_B2899C: FStStrNoPop var_94
  loc_B2899F: LitStr "\data.ini"
  loc_B289A2: ConcatStr
  loc_B289A3: FStStrNoPop var_A0
  loc_B289A6: ILdRf var_9C
  loc_B289A9: LitStr "look"
  loc_B289AC: LitStr "bot"
  loc_B289AF: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B289B4: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B289C1: FFreeAd var_88 = ""
  loc_B289C8: FLdRfVar var_A2
  loc_B289CB: FLdPrThis
  loc_B289CC: VCallAd Control_ID_Check1
  loc_B289CF: FStAdFunc var_98
  loc_B289D2: FLdPr var_98
  loc_B289D5:  = Me.Value
  loc_B289DA: ImpAdLdI4 MemVar_C0F044
  loc_B289DD: LitStr "pub\"
  loc_B289E0: ConcatStr
  loc_B289E1: FStStrNoPop var_90
  loc_B289E4: FLdRfVar var_8C
  loc_B289E7: FLdPrThis
  loc_B289E8: VCallAd Control_ID_Text1
  loc_B289EB: FStAdFunc var_88
  loc_B289EE: FLdPr var_88
  loc_B289F1:  = Me.Text
  loc_B289F6: ILdRf var_8C
  loc_B289F9: ConcatStr
  loc_B289FA: FStStrNoPop var_94
  loc_B289FD: LitStr "\data.ini"
  loc_B28A00: ConcatStr
  loc_B28A01: FStStrNoPop var_A0
  loc_B28A04: FLdI2 var_A2
  loc_B28A07: CStrUI1
  loc_B28A09: FStStrNoPop var_9C
  loc_B28A0C: LitStr "enabled"
  loc_B28A0F: LitStr "bot"
  loc_B28A12: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B28A17: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B28A24: FFreeAd var_88 = ""
  loc_B28A2B: ExitProcHresult
End Sub

Private Sub Text3_Change() 'B28E7C
  'Data Table: 543B84
  loc_B28CA0: FLdRfVar var_9C
  loc_B28CA3: FLdPrThis
  loc_B28CA4: VCallAd Control_ID_Text2
  loc_B28CA7: FStAdFunc var_98
  loc_B28CAA: FLdPr var_98
  loc_B28CAD:  = Me.Text
  loc_B28CB2: ImpAdLdI4 MemVar_C0F044
  loc_B28CB5: LitStr "pub\"
  loc_B28CB8: ConcatStr
  loc_B28CB9: FStStrNoPop var_90
  loc_B28CBC: FLdRfVar var_8C
  loc_B28CBF: FLdPrThis
  loc_B28CC0: VCallAd Control_ID_Text1
  loc_B28CC3: FStAdFunc var_88
  loc_B28CC6: FLdPr var_88
  loc_B28CC9:  = Me.Text
  loc_B28CCE: ILdRf var_8C
  loc_B28CD1: ConcatStr
  loc_B28CD2: FStStrNoPop var_94
  loc_B28CD5: LitStr "\data.ini"
  loc_B28CD8: ConcatStr
  loc_B28CD9: FStStrNoPop var_A0
  loc_B28CDC: ILdRf var_9C
  loc_B28CDF: LitStr "name"
  loc_B28CE2: LitStr "bot"
  loc_B28CE5: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B28CEA: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B28CF7: FFreeAd var_88 = ""
  loc_B28CFE: FLdRfVar var_9C
  loc_B28D01: FLdPrThis
  loc_B28D02: VCallAd Control_ID_Text3
  loc_B28D05: FStAdFunc var_98
  loc_B28D08: FLdPr var_98
  loc_B28D0B:  = Me.Text
  loc_B28D10: ImpAdLdI4 MemVar_C0F044
  loc_B28D13: LitStr "pub\"
  loc_B28D16: ConcatStr
  loc_B28D17: FStStrNoPop var_90
  loc_B28D1A: FLdRfVar var_8C
  loc_B28D1D: FLdPrThis
  loc_B28D1E: VCallAd Control_ID_Text1
  loc_B28D21: FStAdFunc var_88
  loc_B28D24: FLdPr var_88
  loc_B28D27:  = Me.Text
  loc_B28D2C: ILdRf var_8C
  loc_B28D2F: ConcatStr
  loc_B28D30: FStStrNoPop var_94
  loc_B28D33: LitStr "\data.ini"
  loc_B28D36: ConcatStr
  loc_B28D37: FStStrNoPop var_A0
  loc_B28D3A: ILdRf var_9C
  loc_B28D3D: LitStr "mission"
  loc_B28D40: LitStr "bot"
  loc_B28D43: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B28D48: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B28D55: FFreeAd var_88 = ""
  loc_B28D5C: FLdRfVar var_9C
  loc_B28D5F: FLdPrThis
  loc_B28D60: VCallAd Control_ID_Text4
  loc_B28D63: FStAdFunc var_98
  loc_B28D66: FLdPr var_98
  loc_B28D69:  = Me.Text
  loc_B28D6E: ImpAdLdI4 MemVar_C0F044
  loc_B28D71: LitStr "pub\"
  loc_B28D74: ConcatStr
  loc_B28D75: FStStrNoPop var_90
  loc_B28D78: FLdRfVar var_8C
  loc_B28D7B: FLdPrThis
  loc_B28D7C: VCallAd Control_ID_Text1
  loc_B28D7F: FStAdFunc var_88
  loc_B28D82: FLdPr var_88
  loc_B28D85:  = Me.Text
  loc_B28D8A: ILdRf var_8C
  loc_B28D8D: ConcatStr
  loc_B28D8E: FStStrNoPop var_94
  loc_B28D91: LitStr "\data.ini"
  loc_B28D94: ConcatStr
  loc_B28D95: FStStrNoPop var_A0
  loc_B28D98: ILdRf var_9C
  loc_B28D9B: LitStr "walkspace"
  loc_B28D9E: LitStr "bot"
  loc_B28DA1: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B28DA6: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B28DB3: FFreeAd var_88 = ""
  loc_B28DBA: FLdRfVar var_9C
  loc_B28DBD: FLdPrThis
  loc_B28DBE: VCallAd Control_ID_Text5
  loc_B28DC1: FStAdFunc var_98
  loc_B28DC4: FLdPr var_98
  loc_B28DC7:  = Me.Text
  loc_B28DCC: ImpAdLdI4 MemVar_C0F044
  loc_B28DCF: LitStr "pub\"
  loc_B28DD2: ConcatStr
  loc_B28DD3: FStStrNoPop var_90
  loc_B28DD6: FLdRfVar var_8C
  loc_B28DD9: FLdPrThis
  loc_B28DDA: VCallAd Control_ID_Text1
  loc_B28DDD: FStAdFunc var_88
  loc_B28DE0: FLdPr var_88
  loc_B28DE3:  = Me.Text
  loc_B28DE8: ILdRf var_8C
  loc_B28DEB: ConcatStr
  loc_B28DEC: FStStrNoPop var_94
  loc_B28DEF: LitStr "\data.ini"
  loc_B28DF2: ConcatStr
  loc_B28DF3: FStStrNoPop var_A0
  loc_B28DF6: ILdRf var_9C
  loc_B28DF9: LitStr "look"
  loc_B28DFC: LitStr "bot"
  loc_B28DFF: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B28E04: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B28E11: FFreeAd var_88 = ""
  loc_B28E18: FLdRfVar var_A2
  loc_B28E1B: FLdPrThis
  loc_B28E1C: VCallAd Control_ID_Check1
  loc_B28E1F: FStAdFunc var_98
  loc_B28E22: FLdPr var_98
  loc_B28E25:  = Me.Value
  loc_B28E2A: ImpAdLdI4 MemVar_C0F044
  loc_B28E2D: LitStr "pub\"
  loc_B28E30: ConcatStr
  loc_B28E31: FStStrNoPop var_90
  loc_B28E34: FLdRfVar var_8C
  loc_B28E37: FLdPrThis
  loc_B28E38: VCallAd Control_ID_Text1
  loc_B28E3B: FStAdFunc var_88
  loc_B28E3E: FLdPr var_88
  loc_B28E41:  = Me.Text
  loc_B28E46: ILdRf var_8C
  loc_B28E49: ConcatStr
  loc_B28E4A: FStStrNoPop var_94
  loc_B28E4D: LitStr "\data.ini"
  loc_B28E50: ConcatStr
  loc_B28E51: FStStrNoPop var_A0
  loc_B28E54: FLdI2 var_A2
  loc_B28E57: CStrUI1
  loc_B28E59: FStStrNoPop var_9C
  loc_B28E5C: LitStr "enabled"
  loc_B28E5F: LitStr "bot"
  loc_B28E62: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B28E67: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B28E74: FFreeAd var_88 = ""
  loc_B28E7B: ExitProcHresult
End Sub

Private Sub Text1_Change() 'B4EE80
  'Data Table: 543B84
  loc_B4E698: FLdRfVar var_8C
  loc_B4E69B: FLdPrThis
  loc_B4E69C: VCallAd Control_ID_Text1
  loc_B4E69F: FStAdFunc var_88
  loc_B4E6A2: FLdPr var_88
  loc_B4E6A5:  = Me.Text
  loc_B4E6AA: ILdRf var_8C
  loc_B4E6AD: FLdPrThis
  loc_B4E6AE: VCallAd Control_ID_Text1
  loc_B4E6B1: FStAdFunc var_90
  loc_B4E6B4: FLdPr var_90
  loc_B4E6B7: Me.Text = from_stack_1
  loc_B4E6BC: FFree1Str var_8C
  loc_B4E6BF: FFreeAd var_88 = ""
  loc_B4E6C6: FLdRfVar var_9E
  loc_B4E6C9: ImpAdLdI4 MemVar_C0F044
  loc_B4E6CC: LitStr "pub\"
  loc_B4E6CF: ConcatStr
  loc_B4E6D0: FStStrNoPop var_94
  loc_B4E6D3: FLdRfVar var_8C
  loc_B4E6D6: FLdPrThis
  loc_B4E6D7: VCallAd Control_ID_Text1
  loc_B4E6DA: FStAdFunc var_88
  loc_B4E6DD: FLdPr var_88
  loc_B4E6E0:  = Me.Text
  loc_B4E6E5: ILdRf var_8C
  loc_B4E6E8: ConcatStr
  loc_B4E6E9: FStStrNoPop var_98
  loc_B4E6EC: LitStr "\data.ini"
  loc_B4E6EF: ConcatStr
  loc_B4E6F0: FStStrNoPop var_9C
  loc_B4E6F3: ImpAdLdRf MemVar_C0F040
  loc_B4E6F6: NewIfNullPr IFileSystem3
  loc_B4E6F9: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B4E6FE: FLdI2 var_9E
  loc_B4E701: LitI2_Byte &HFF
  loc_B4E703: EqI2
  loc_B4E704: FFreeStr var_94 = "": var_8C = "": var_98 = ""
  loc_B4E70F: FFree1Ad var_88
  loc_B4E712: BranchF loc_B4EE7E
  loc_B4E715: FLdRfVar var_8C
  loc_B4E718: FLdPrThis
  loc_B4E719: VCallAd Control_ID_Text1
  loc_B4E71C: FStAdFunc var_88
  loc_B4E71F: FLdPr var_88
  loc_B4E722:  = Me.Text
  loc_B4E727: LitI4 0
  loc_B4E72C: FStStrCopy var_9C
  loc_B4E72F: FLdRfVar var_9C
  loc_B4E732: ImpAdLdI4 MemVar_C0F044
  loc_B4E735: LitStr "pub\"
  loc_B4E738: ConcatStr
  loc_B4E739: FStStrNoPop var_94
  loc_B4E73C: ILdRf var_8C
  loc_B4E73F: ConcatStr
  loc_B4E740: FStStrNoPop var_98
  loc_B4E743: LitStr "\data.ini"
  loc_B4E746: ConcatStr
  loc_B4E747: CVarStr var_E0
  loc_B4E74A: LitVarStr var_C0, "name"
  loc_B4E74F: FStVarCopyObj var_D0
  loc_B4E752: FLdRfVar var_D0
  loc_B4E755: LitVarStr var_B0, "bot"
  loc_B4E75A: PopAdLdVar
  loc_B4E75B: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B4E760: FStStrNoPop var_E4
  loc_B4E763: FLdPrThis
  loc_B4E764: VCallAd Control_ID_Text2
  loc_B4E767: FStAdFunc var_90
  loc_B4E76A: FLdPr var_90
  loc_B4E76D: Me.Text = from_stack_1
  loc_B4E772: FFreeStr var_94 = "": var_8C = "": var_98 = "": var_9C = ""
  loc_B4E77F: FFreeAd var_88 = ""
  loc_B4E786: FFreeVar var_D0 = ""
  loc_B4E78D: FLdRfVar var_8C
  loc_B4E790: FLdPrThis
  loc_B4E791: VCallAd Control_ID_Text1
  loc_B4E794: FStAdFunc var_88
  loc_B4E797: FLdPr var_88
  loc_B4E79A:  = Me.Text
  loc_B4E79F: LitI4 0
  loc_B4E7A4: FStStrCopy var_9C
  loc_B4E7A7: FLdRfVar var_9C
  loc_B4E7AA: ImpAdLdI4 MemVar_C0F044
  loc_B4E7AD: LitStr "pub\"
  loc_B4E7B0: ConcatStr
  loc_B4E7B1: FStStrNoPop var_94
  loc_B4E7B4: ILdRf var_8C
  loc_B4E7B7: ConcatStr
  loc_B4E7B8: FStStrNoPop var_98
  loc_B4E7BB: LitStr "\data.ini"
  loc_B4E7BE: ConcatStr
  loc_B4E7BF: CVarStr var_E0
  loc_B4E7C2: LitVarStr var_C0, "mission"
  loc_B4E7C7: FStVarCopyObj var_D0
  loc_B4E7CA: FLdRfVar var_D0
  loc_B4E7CD: LitVarStr var_B0, "bot"
  loc_B4E7D2: PopAdLdVar
  loc_B4E7D3: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B4E7D8: FStStrNoPop var_E4
  loc_B4E7DB: FLdPrThis
  loc_B4E7DC: VCallAd Control_ID_Text3
  loc_B4E7DF: FStAdFunc var_90
  loc_B4E7E2: FLdPr var_90
  loc_B4E7E5: Me.Text = from_stack_1
  loc_B4E7EA: FFreeStr var_94 = "": var_8C = "": var_98 = "": var_9C = ""
  loc_B4E7F7: FFreeAd var_88 = ""
  loc_B4E7FE: FFreeVar var_D0 = ""
  loc_B4E805: FLdRfVar var_8C
  loc_B4E808: FLdPrThis
  loc_B4E809: VCallAd Control_ID_Text1
  loc_B4E80C: FStAdFunc var_88
  loc_B4E80F: FLdPr var_88
  loc_B4E812:  = Me.Text
  loc_B4E817: LitI4 0
  loc_B4E81C: FStStrCopy var_9C
  loc_B4E81F: FLdRfVar var_9C
  loc_B4E822: ImpAdLdI4 MemVar_C0F044
  loc_B4E825: LitStr "pub\"
  loc_B4E828: ConcatStr
  loc_B4E829: FStStrNoPop var_94
  loc_B4E82C: ILdRf var_8C
  loc_B4E82F: ConcatStr
  loc_B4E830: FStStrNoPop var_98
  loc_B4E833: LitStr "\data.ini"
  loc_B4E836: ConcatStr
  loc_B4E837: CVarStr var_E0
  loc_B4E83A: LitVarStr var_C0, "walkspace"
  loc_B4E83F: FStVarCopyObj var_D0
  loc_B4E842: FLdRfVar var_D0
  loc_B4E845: LitVarStr var_B0, "bot"
  loc_B4E84A: PopAdLdVar
  loc_B4E84B: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B4E850: FStStrNoPop var_E4
  loc_B4E853: FLdPrThis
  loc_B4E854: VCallAd Control_ID_Text4
  loc_B4E857: FStAdFunc var_90
  loc_B4E85A: FLdPr var_90
  loc_B4E85D: Me.Text = from_stack_1
  loc_B4E862: FFreeStr var_94 = "": var_8C = "": var_98 = "": var_9C = ""
  loc_B4E86F: FFreeAd var_88 = ""
  loc_B4E876: FFreeVar var_D0 = ""
  loc_B4E87D: FLdRfVar var_8C
  loc_B4E880: FLdPrThis
  loc_B4E881: VCallAd Control_ID_Text1
  loc_B4E884: FStAdFunc var_88
  loc_B4E887: FLdPr var_88
  loc_B4E88A:  = Me.Text
  loc_B4E88F: LitI4 0
  loc_B4E894: FStStrCopy var_9C
  loc_B4E897: FLdRfVar var_9C
  loc_B4E89A: ImpAdLdI4 MemVar_C0F044
  loc_B4E89D: LitStr "pub\"
  loc_B4E8A0: ConcatStr
  loc_B4E8A1: FStStrNoPop var_94
  loc_B4E8A4: ILdRf var_8C
  loc_B4E8A7: ConcatStr
  loc_B4E8A8: FStStrNoPop var_98
  loc_B4E8AB: LitStr "\data.ini"
  loc_B4E8AE: ConcatStr
  loc_B4E8AF: CVarStr var_E0
  loc_B4E8B2: LitVarStr var_C0, "look"
  loc_B4E8B7: FStVarCopyObj var_D0
  loc_B4E8BA: FLdRfVar var_D0
  loc_B4E8BD: LitVarStr var_B0, "bot"
  loc_B4E8C2: PopAdLdVar
  loc_B4E8C3: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B4E8C8: FStStrNoPop var_E4
  loc_B4E8CB: FLdPrThis
  loc_B4E8CC: VCallAd Control_ID_Text5
  loc_B4E8CF: FStAdFunc var_90
  loc_B4E8D2: FLdPr var_90
  loc_B4E8D5: Me.Text = from_stack_1
  loc_B4E8DA: FFreeStr var_94 = "": var_8C = "": var_98 = "": var_9C = ""
  loc_B4E8E7: FFreeAd var_88 = ""
  loc_B4E8EE: FFreeVar var_D0 = ""
  loc_B4E8F5: FLdRfVar var_8C
  loc_B4E8F8: FLdPrThis
  loc_B4E8F9: VCallAd Control_ID_Text1
  loc_B4E8FC: FStAdFunc var_88
  loc_B4E8FF: FLdPr var_88
  loc_B4E902:  = Me.Text
  loc_B4E907: LitI4 0
  loc_B4E90C: FStStrCopy var_9C
  loc_B4E90F: FLdRfVar var_9C
  loc_B4E912: ImpAdLdI4 MemVar_C0F044
  loc_B4E915: LitStr "pub\"
  loc_B4E918: ConcatStr
  loc_B4E919: FStStrNoPop var_94
  loc_B4E91C: ILdRf var_8C
  loc_B4E91F: ConcatStr
  loc_B4E920: FStStrNoPop var_98
  loc_B4E923: LitStr "\data.ini"
  loc_B4E926: ConcatStr
  loc_B4E927: CVarStr var_E0
  loc_B4E92A: LitVarStr var_C0, "enabled"
  loc_B4E92F: FStVarCopyObj var_D0
  loc_B4E932: FLdRfVar var_D0
  loc_B4E935: LitVarStr var_B0, "bot"
  loc_B4E93A: PopAdLdVar
  loc_B4E93B: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B4E940: FStStrNoPop var_E4
  loc_B4E943: CI2Str
  loc_B4E945: FLdPrThis
  loc_B4E946: VCallAd Control_ID_Check1
  loc_B4E949: FStAdFunc var_90
  loc_B4E94C: FLdPr var_90
  loc_B4E94F: Me.Value = from_stack_1
  loc_B4E954: FFreeStr var_94 = "": var_8C = "": var_98 = "": var_9C = ""
  loc_B4E961: FFreeAd var_88 = ""
  loc_B4E968: FFreeVar var_D0 = ""
  loc_B4E96F: FLdRfVar var_8C
  loc_B4E972: FLdPrThis
  loc_B4E973: VCallAd Control_ID_Text2
  loc_B4E976: FStAdFunc var_88
  loc_B4E979: FLdPr var_88
  loc_B4E97C:  = Me.Text
  loc_B4E981: ILdRf var_8C
  loc_B4E984: LitStr vbNullString
  loc_B4E987: EqStr
  loc_B4E989: FFree1Str var_8C
  loc_B4E98C: FFree1Ad var_88
  loc_B4E98F: BranchF loc_B4EA5E
  loc_B4E992: LitStr vbNullString
  loc_B4E995: FLdPrThis
  loc_B4E996: VCallAd Control_ID_Text2
  loc_B4E999: FStAdFunc var_88
  loc_B4E99C: FLdPr var_88
  loc_B4E99F: Me.Text = from_stack_1
  loc_B4E9A4: FFree1Ad var_88
  loc_B4E9A7: LitStr vbNullString
  loc_B4E9AA: FLdPrThis
  loc_B4E9AB: VCallAd Control_ID_Text3
  loc_B4E9AE: FStAdFunc var_88
  loc_B4E9B1: FLdPr var_88
  loc_B4E9B4: Me.Text = from_stack_1
  loc_B4E9B9: FFree1Ad var_88
  loc_B4E9BC: LitStr vbNullString
  loc_B4E9BF: FLdPrThis
  loc_B4E9C0: VCallAd Control_ID_Text4
  loc_B4E9C3: FStAdFunc var_88
  loc_B4E9C6: FLdPr var_88
  loc_B4E9C9: Me.Text = from_stack_1
  loc_B4E9CE: FFree1Ad var_88
  loc_B4E9D1: LitStr vbNullString
  loc_B4E9D4: FLdPrThis
  loc_B4E9D5: VCallAd Control_ID_Text5
  loc_B4E9D8: FStAdFunc var_88
  loc_B4E9DB: FLdPr var_88
  loc_B4E9DE: Me.Text = from_stack_1
  loc_B4E9E3: FFree1Ad var_88
  loc_B4E9E6: LitI2_Byte 0
  loc_B4E9E8: FLdPrThis
  loc_B4E9E9: VCallAd Control_ID_Check1
  loc_B4E9EC: FStAdFunc var_88
  loc_B4E9EF: FLdPr var_88
  loc_B4E9F2: Me.Value = from_stack_1
  loc_B4E9F7: FFree1Ad var_88
  loc_B4E9FA: LitI2_Byte 0
  loc_B4E9FC: FLdPrThis
  loc_B4E9FD: VCallAd Control_ID_Check1
  loc_B4EA00: FStAdFunc var_88
  loc_B4EA03: FLdPr var_88
  loc_B4EA06: Me.Enabled = from_stack_1b
  loc_B4EA0B: FFree1Ad var_88
  loc_B4EA0E: LitI2_Byte 0
  loc_B4EA10: FLdPrThis
  loc_B4EA11: VCallAd Control_ID_Text2
  loc_B4EA14: FStAdFunc var_88
  loc_B4EA17: FLdPr var_88
  loc_B4EA1A: Me.Enabled = from_stack_1b
  loc_B4EA1F: FFree1Ad var_88
  loc_B4EA22: LitI2_Byte 0
  loc_B4EA24: FLdPrThis
  loc_B4EA25: VCallAd Control_ID_Text3
  loc_B4EA28: FStAdFunc var_88
  loc_B4EA2B: FLdPr var_88
  loc_B4EA2E: Me.Enabled = from_stack_1b
  loc_B4EA33: FFree1Ad var_88
  loc_B4EA36: LitI2_Byte 0
  loc_B4EA38: FLdPrThis
  loc_B4EA39: VCallAd Control_ID_Text4
  loc_B4EA3C: FStAdFunc var_88
  loc_B4EA3F: FLdPr var_88
  loc_B4EA42: Me.Enabled = from_stack_1b
  loc_B4EA47: FFree1Ad var_88
  loc_B4EA4A: LitI2_Byte 0
  loc_B4EA4C: FLdPrThis
  loc_B4EA4D: VCallAd Control_ID_Text5
  loc_B4EA50: FStAdFunc var_88
  loc_B4EA53: FLdPr var_88
  loc_B4EA56: Me.Enabled = from_stack_1b
  loc_B4EA5B: FFree1Ad var_88
  loc_B4EA5E: FLdRfVar var_8C
  loc_B4EA61: FLdPrThis
  loc_B4EA62: VCallAd Control_ID_Text3
  loc_B4EA65: FStAdFunc var_88
  loc_B4EA68: FLdPr var_88
  loc_B4EA6B:  = Me.Text
  loc_B4EA70: ILdRf var_8C
  loc_B4EA73: LitStr vbNullString
  loc_B4EA76: EqStr
  loc_B4EA78: FFree1Str var_8C
  loc_B4EA7B: FFree1Ad var_88
  loc_B4EA7E: BranchF loc_B4EB4D
  loc_B4EA81: LitStr vbNullString
  loc_B4EA84: FLdPrThis
  loc_B4EA85: VCallAd Control_ID_Text2
  loc_B4EA88: FStAdFunc var_88
  loc_B4EA8B: FLdPr var_88
  loc_B4EA8E: Me.Text = from_stack_1
  loc_B4EA93: FFree1Ad var_88
  loc_B4EA96: LitStr vbNullString
  loc_B4EA99: FLdPrThis
  loc_B4EA9A: VCallAd Control_ID_Text3
  loc_B4EA9D: FStAdFunc var_88
  loc_B4EAA0: FLdPr var_88
  loc_B4EAA3: Me.Text = from_stack_1
  loc_B4EAA8: FFree1Ad var_88
  loc_B4EAAB: LitStr vbNullString
  loc_B4EAAE: FLdPrThis
  loc_B4EAAF: VCallAd Control_ID_Text4
  loc_B4EAB2: FStAdFunc var_88
  loc_B4EAB5: FLdPr var_88
  loc_B4EAB8: Me.Text = from_stack_1
  loc_B4EABD: FFree1Ad var_88
  loc_B4EAC0: LitStr vbNullString
  loc_B4EAC3: FLdPrThis
  loc_B4EAC4: VCallAd Control_ID_Text5
  loc_B4EAC7: FStAdFunc var_88
  loc_B4EACA: FLdPr var_88
  loc_B4EACD: Me.Text = from_stack_1
  loc_B4EAD2: FFree1Ad var_88
  loc_B4EAD5: LitI2_Byte 0
  loc_B4EAD7: FLdPrThis
  loc_B4EAD8: VCallAd Control_ID_Check1
  loc_B4EADB: FStAdFunc var_88
  loc_B4EADE: FLdPr var_88
  loc_B4EAE1: Me.Value = from_stack_1
  loc_B4EAE6: FFree1Ad var_88
  loc_B4EAE9: LitI2_Byte 0
  loc_B4EAEB: FLdPrThis
  loc_B4EAEC: VCallAd Control_ID_Check1
  loc_B4EAEF: FStAdFunc var_88
  loc_B4EAF2: FLdPr var_88
  loc_B4EAF5: Me.Enabled = from_stack_1b
  loc_B4EAFA: FFree1Ad var_88
  loc_B4EAFD: LitI2_Byte 0
  loc_B4EAFF: FLdPrThis
  loc_B4EB00: VCallAd Control_ID_Text2
  loc_B4EB03: FStAdFunc var_88
  loc_B4EB06: FLdPr var_88
  loc_B4EB09: Me.Enabled = from_stack_1b
  loc_B4EB0E: FFree1Ad var_88
  loc_B4EB11: LitI2_Byte 0
  loc_B4EB13: FLdPrThis
  loc_B4EB14: VCallAd Control_ID_Text3
  loc_B4EB17: FStAdFunc var_88
  loc_B4EB1A: FLdPr var_88
  loc_B4EB1D: Me.Enabled = from_stack_1b
  loc_B4EB22: FFree1Ad var_88
  loc_B4EB25: LitI2_Byte 0
  loc_B4EB27: FLdPrThis
  loc_B4EB28: VCallAd Control_ID_Text4
  loc_B4EB2B: FStAdFunc var_88
  loc_B4EB2E: FLdPr var_88
  loc_B4EB31: Me.Enabled = from_stack_1b
  loc_B4EB36: FFree1Ad var_88
  loc_B4EB39: LitI2_Byte 0
  loc_B4EB3B: FLdPrThis
  loc_B4EB3C: VCallAd Control_ID_Text5
  loc_B4EB3F: FStAdFunc var_88
  loc_B4EB42: FLdPr var_88
  loc_B4EB45: Me.Enabled = from_stack_1b
  loc_B4EB4A: FFree1Ad var_88
  loc_B4EB4D: FLdRfVar var_8C
  loc_B4EB50: FLdPrThis
  loc_B4EB51: VCallAd Control_ID_Text4
  loc_B4EB54: FStAdFunc var_88
  loc_B4EB57: FLdPr var_88
  loc_B4EB5A:  = Me.Text
  loc_B4EB5F: ILdRf var_8C
  loc_B4EB62: LitStr vbNullString
  loc_B4EB65: EqStr
  loc_B4EB67: FFree1Str var_8C
  loc_B4EB6A: FFree1Ad var_88
  loc_B4EB6D: BranchF loc_B4EC3C
  loc_B4EB70: LitStr vbNullString
  loc_B4EB73: FLdPrThis
  loc_B4EB74: VCallAd Control_ID_Text2
  loc_B4EB77: FStAdFunc var_88
  loc_B4EB7A: FLdPr var_88
  loc_B4EB7D: Me.Text = from_stack_1
  loc_B4EB82: FFree1Ad var_88
  loc_B4EB85: LitStr vbNullString
  loc_B4EB88: FLdPrThis
  loc_B4EB89: VCallAd Control_ID_Text3
  loc_B4EB8C: FStAdFunc var_88
  loc_B4EB8F: FLdPr var_88
  loc_B4EB92: Me.Text = from_stack_1
  loc_B4EB97: FFree1Ad var_88
  loc_B4EB9A: LitStr vbNullString
  loc_B4EB9D: FLdPrThis
  loc_B4EB9E: VCallAd Control_ID_Text4
  loc_B4EBA1: FStAdFunc var_88
  loc_B4EBA4: FLdPr var_88
  loc_B4EBA7: Me.Text = from_stack_1
  loc_B4EBAC: FFree1Ad var_88
  loc_B4EBAF: LitStr vbNullString
  loc_B4EBB2: FLdPrThis
  loc_B4EBB3: VCallAd Control_ID_Text5
  loc_B4EBB6: FStAdFunc var_88
  loc_B4EBB9: FLdPr var_88
  loc_B4EBBC: Me.Text = from_stack_1
  loc_B4EBC1: FFree1Ad var_88
  loc_B4EBC4: LitI2_Byte 0
  loc_B4EBC6: FLdPrThis
  loc_B4EBC7: VCallAd Control_ID_Check1
  loc_B4EBCA: FStAdFunc var_88
  loc_B4EBCD: FLdPr var_88
  loc_B4EBD0: Me.Value = from_stack_1
  loc_B4EBD5: FFree1Ad var_88
  loc_B4EBD8: LitI2_Byte 0
  loc_B4EBDA: FLdPrThis
  loc_B4EBDB: VCallAd Control_ID_Check1
  loc_B4EBDE: FStAdFunc var_88
  loc_B4EBE1: FLdPr var_88
  loc_B4EBE4: Me.Enabled = from_stack_1b
  loc_B4EBE9: FFree1Ad var_88
  loc_B4EBEC: LitI2_Byte 0
  loc_B4EBEE: FLdPrThis
  loc_B4EBEF: VCallAd Control_ID_Text2
  loc_B4EBF2: FStAdFunc var_88
  loc_B4EBF5: FLdPr var_88
  loc_B4EBF8: Me.Enabled = from_stack_1b
  loc_B4EBFD: FFree1Ad var_88
  loc_B4EC00: LitI2_Byte 0
  loc_B4EC02: FLdPrThis
  loc_B4EC03: VCallAd Control_ID_Text3
  loc_B4EC06: FStAdFunc var_88
  loc_B4EC09: FLdPr var_88
  loc_B4EC0C: Me.Enabled = from_stack_1b
  loc_B4EC11: FFree1Ad var_88
  loc_B4EC14: LitI2_Byte 0
  loc_B4EC16: FLdPrThis
  loc_B4EC17: VCallAd Control_ID_Text4
  loc_B4EC1A: FStAdFunc var_88
  loc_B4EC1D: FLdPr var_88
  loc_B4EC20: Me.Enabled = from_stack_1b
  loc_B4EC25: FFree1Ad var_88
  loc_B4EC28: LitI2_Byte 0
  loc_B4EC2A: FLdPrThis
  loc_B4EC2B: VCallAd Control_ID_Text5
  loc_B4EC2E: FStAdFunc var_88
  loc_B4EC31: FLdPr var_88
  loc_B4EC34: Me.Enabled = from_stack_1b
  loc_B4EC39: FFree1Ad var_88
  loc_B4EC3C: FLdRfVar var_8C
  loc_B4EC3F: FLdPrThis
  loc_B4EC40: VCallAd Control_ID_Text5
  loc_B4EC43: FStAdFunc var_88
  loc_B4EC46: FLdPr var_88
  loc_B4EC49:  = Me.Text
  loc_B4EC4E: ILdRf var_8C
  loc_B4EC51: LitStr vbNullString
  loc_B4EC54: EqStr
  loc_B4EC56: FFree1Str var_8C
  loc_B4EC59: FFree1Ad var_88
  loc_B4EC5C: BranchF loc_B4ED2B
  loc_B4EC5F: LitStr vbNullString
  loc_B4EC62: FLdPrThis
  loc_B4EC63: VCallAd Control_ID_Text2
  loc_B4EC66: FStAdFunc var_88
  loc_B4EC69: FLdPr var_88
  loc_B4EC6C: Me.Text = from_stack_1
  loc_B4EC71: FFree1Ad var_88
  loc_B4EC74: LitStr vbNullString
  loc_B4EC77: FLdPrThis
  loc_B4EC78: VCallAd Control_ID_Text3
  loc_B4EC7B: FStAdFunc var_88
  loc_B4EC7E: FLdPr var_88
  loc_B4EC81: Me.Text = from_stack_1
  loc_B4EC86: FFree1Ad var_88
  loc_B4EC89: LitStr vbNullString
  loc_B4EC8C: FLdPrThis
  loc_B4EC8D: VCallAd Control_ID_Text4
  loc_B4EC90: FStAdFunc var_88
  loc_B4EC93: FLdPr var_88
  loc_B4EC96: Me.Text = from_stack_1
  loc_B4EC9B: FFree1Ad var_88
  loc_B4EC9E: LitStr vbNullString
  loc_B4ECA1: FLdPrThis
  loc_B4ECA2: VCallAd Control_ID_Text5
  loc_B4ECA5: FStAdFunc var_88
  loc_B4ECA8: FLdPr var_88
  loc_B4ECAB: Me.Text = from_stack_1
  loc_B4ECB0: FFree1Ad var_88
  loc_B4ECB3: LitI2_Byte 0
  loc_B4ECB5: FLdPrThis
  loc_B4ECB6: VCallAd Control_ID_Check1
  loc_B4ECB9: FStAdFunc var_88
  loc_B4ECBC: FLdPr var_88
  loc_B4ECBF: Me.Value = from_stack_1
  loc_B4ECC4: FFree1Ad var_88
  loc_B4ECC7: LitI2_Byte 0
  loc_B4ECC9: FLdPrThis
  loc_B4ECCA: VCallAd Control_ID_Check1
  loc_B4ECCD: FStAdFunc var_88
  loc_B4ECD0: FLdPr var_88
  loc_B4ECD3: Me.Enabled = from_stack_1b
  loc_B4ECD8: FFree1Ad var_88
  loc_B4ECDB: LitI2_Byte 0
  loc_B4ECDD: FLdPrThis
  loc_B4ECDE: VCallAd Control_ID_Text2
  loc_B4ECE1: FStAdFunc var_88
  loc_B4ECE4: FLdPr var_88
  loc_B4ECE7: Me.Enabled = from_stack_1b
  loc_B4ECEC: FFree1Ad var_88
  loc_B4ECEF: LitI2_Byte 0
  loc_B4ECF1: FLdPrThis
  loc_B4ECF2: VCallAd Control_ID_Text3
  loc_B4ECF5: FStAdFunc var_88
  loc_B4ECF8: FLdPr var_88
  loc_B4ECFB: Me.Enabled = from_stack_1b
  loc_B4ED00: FFree1Ad var_88
  loc_B4ED03: LitI2_Byte 0
  loc_B4ED05: FLdPrThis
  loc_B4ED06: VCallAd Control_ID_Text4
  loc_B4ED09: FStAdFunc var_88
  loc_B4ED0C: FLdPr var_88
  loc_B4ED0F: Me.Enabled = from_stack_1b
  loc_B4ED14: FFree1Ad var_88
  loc_B4ED17: LitI2_Byte 0
  loc_B4ED19: FLdPrThis
  loc_B4ED1A: VCallAd Control_ID_Text5
  loc_B4ED1D: FStAdFunc var_88
  loc_B4ED20: FLdPr var_88
  loc_B4ED23: Me.Enabled = from_stack_1b
  loc_B4ED28: FFree1Ad var_88
  loc_B4ED2B: FLdRfVar var_8C
  loc_B4ED2E: FLdPrThis
  loc_B4ED2F: VCallAd Control_ID_Text1
  loc_B4ED32: FStAdFunc var_88
  loc_B4ED35: FLdPr var_88
  loc_B4ED38:  = Me.Text
  loc_B4ED3D: ILdRf var_8C
  loc_B4ED40: LitStr vbNullString
  loc_B4ED43: EqStr
  loc_B4ED45: FFree1Str var_8C
  loc_B4ED48: FFree1Ad var_88
  loc_B4ED4B: BranchF loc_B4EE1A
  loc_B4ED4E: LitStr vbNullString
  loc_B4ED51: FLdPrThis
  loc_B4ED52: VCallAd Control_ID_Text2
  loc_B4ED55: FStAdFunc var_88
  loc_B4ED58: FLdPr var_88
  loc_B4ED5B: Me.Text = from_stack_1
  loc_B4ED60: FFree1Ad var_88
  loc_B4ED63: LitStr vbNullString
  loc_B4ED66: FLdPrThis
  loc_B4ED67: VCallAd Control_ID_Text3
  loc_B4ED6A: FStAdFunc var_88
  loc_B4ED6D: FLdPr var_88
  loc_B4ED70: Me.Text = from_stack_1
  loc_B4ED75: FFree1Ad var_88
  loc_B4ED78: LitStr vbNullString
  loc_B4ED7B: FLdPrThis
  loc_B4ED7C: VCallAd Control_ID_Text4
  loc_B4ED7F: FStAdFunc var_88
  loc_B4ED82: FLdPr var_88
  loc_B4ED85: Me.Text = from_stack_1
  loc_B4ED8A: FFree1Ad var_88
  loc_B4ED8D: LitStr vbNullString
  loc_B4ED90: FLdPrThis
  loc_B4ED91: VCallAd Control_ID_Text5
  loc_B4ED94: FStAdFunc var_88
  loc_B4ED97: FLdPr var_88
  loc_B4ED9A: Me.Text = from_stack_1
  loc_B4ED9F: FFree1Ad var_88
  loc_B4EDA2: LitI2_Byte 0
  loc_B4EDA4: FLdPrThis
  loc_B4EDA5: VCallAd Control_ID_Check1
  loc_B4EDA8: FStAdFunc var_88
  loc_B4EDAB: FLdPr var_88
  loc_B4EDAE: Me.Value = from_stack_1
  loc_B4EDB3: FFree1Ad var_88
  loc_B4EDB6: LitI2_Byte 0
  loc_B4EDB8: FLdPrThis
  loc_B4EDB9: VCallAd Control_ID_Check1
  loc_B4EDBC: FStAdFunc var_88
  loc_B4EDBF: FLdPr var_88
  loc_B4EDC2: Me.Enabled = from_stack_1b
  loc_B4EDC7: FFree1Ad var_88
  loc_B4EDCA: LitI2_Byte 0
  loc_B4EDCC: FLdPrThis
  loc_B4EDCD: VCallAd Control_ID_Text2
  loc_B4EDD0: FStAdFunc var_88
  loc_B4EDD3: FLdPr var_88
  loc_B4EDD6: Me.Enabled = from_stack_1b
  loc_B4EDDB: FFree1Ad var_88
  loc_B4EDDE: LitI2_Byte 0
  loc_B4EDE0: FLdPrThis
  loc_B4EDE1: VCallAd Control_ID_Text3
  loc_B4EDE4: FStAdFunc var_88
  loc_B4EDE7: FLdPr var_88
  loc_B4EDEA: Me.Enabled = from_stack_1b
  loc_B4EDEF: FFree1Ad var_88
  loc_B4EDF2: LitI2_Byte 0
  loc_B4EDF4: FLdPrThis
  loc_B4EDF5: VCallAd Control_ID_Text4
  loc_B4EDF8: FStAdFunc var_88
  loc_B4EDFB: FLdPr var_88
  loc_B4EDFE: Me.Enabled = from_stack_1b
  loc_B4EE03: FFree1Ad var_88
  loc_B4EE06: LitI2_Byte 0
  loc_B4EE08: FLdPrThis
  loc_B4EE09: VCallAd Control_ID_Text5
  loc_B4EE0C: FStAdFunc var_88
  loc_B4EE0F: FLdPr var_88
  loc_B4EE12: Me.Enabled = from_stack_1b
  loc_B4EE17: FFree1Ad var_88
  loc_B4EE1A: LitI2_Byte &HFF
  loc_B4EE1C: FLdPrThis
  loc_B4EE1D: VCallAd Control_ID_Check1
  loc_B4EE20: FStAdFunc var_88
  loc_B4EE23: FLdPr var_88
  loc_B4EE26: Me.Enabled = from_stack_1b
  loc_B4EE2B: FFree1Ad var_88
  loc_B4EE2E: LitI2_Byte &HFF
  loc_B4EE30: FLdPrThis
  loc_B4EE31: VCallAd Control_ID_Text2
  loc_B4EE34: FStAdFunc var_88
  loc_B4EE37: FLdPr var_88
  loc_B4EE3A: Me.Enabled = from_stack_1b
  loc_B4EE3F: FFree1Ad var_88
  loc_B4EE42: LitI2_Byte &HFF
  loc_B4EE44: FLdPrThis
  loc_B4EE45: VCallAd Control_ID_Text3
  loc_B4EE48: FStAdFunc var_88
  loc_B4EE4B: FLdPr var_88
  loc_B4EE4E: Me.Enabled = from_stack_1b
  loc_B4EE53: FFree1Ad var_88
  loc_B4EE56: LitI2_Byte &HFF
  loc_B4EE58: FLdPrThis
  loc_B4EE59: VCallAd Control_ID_Text4
  loc_B4EE5C: FStAdFunc var_88
  loc_B4EE5F: FLdPr var_88
  loc_B4EE62: Me.Enabled = from_stack_1b
  loc_B4EE67: FFree1Ad var_88
  loc_B4EE6A: LitI2_Byte &HFF
  loc_B4EE6C: FLdPrThis
  loc_B4EE6D: VCallAd Control_ID_Text5
  loc_B4EE70: FStAdFunc var_88
  loc_B4EE73: FLdPr var_88
  loc_B4EE76: Me.Enabled = from_stack_1b
  loc_B4EE7B: FFree1Ad var_88
  loc_B4EE7E: ExitProcHresult
End Sub

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1BE08
  'Data Table: 543B84
  loc_B1BDA8: ILdI2 Button
  loc_B1BDAB: LitI2_Byte 1
  loc_B1BDAD: EqI2
  loc_B1BDAE: BranchF loc_B1BDF1
  loc_B1BDB1: ImpAdCallI2 ReleaseCapture()
  loc_B1BDB6: FStR4 var_8C
  loc_B1BDB9: SetLastSystemError
  loc_B1BDBA: ILdRf var_8C
  loc_B1BDBD: CR8I4
  loc_B1BDBE: IStFPR4 X
  loc_B1BDC1: FLdRfVar var_8C
  loc_B1BDC4: FLdPrThis
  loc_B1BDC5:  = Me.hWnd
  loc_B1BDCA: LitI4 0
  loc_B1BDCF: PopTmpLdAdStr var_90
  loc_B1BDD2: LitI4 2
  loc_B1BDD7: LitI4 &HA1
  loc_B1BDDC: ILdRf var_8C
  loc_B1BDDF: ImpAdCallI2 SendMessage(, , , )
  loc_B1BDE4: FStR4 var_94
  loc_B1BDE7: SetLastSystemError
  loc_B1BDE8: ILdRf var_94
  loc_B1BDEB: FStR4 var_88
  loc_B1BDEE: Branch loc_B1BE06
  loc_B1BDF1: ILdRf Me
  loc_B1BDF4: FStAdNoPop
  loc_B1BDF8: ImpAdLdRf MemVar_C10514
  loc_B1BDFB: NewIfNullPr Global
  loc_B1BDFE: Global.Unload from_stack_1
  loc_B1BE03: FFree1Ad var_98
  loc_B1BE06: ExitProcHresult
End Sub

Private Sub Image16_Click() 'B1876C
  'Data Table: 543B84
  loc_B18760: FLdPr Me
  loc_B18763: Me.Hide
  loc_B18768: ExitProcHresult
End Sub

Private Sub Form_Load() 'B1FB2C
  'Data Table: 543B84
  loc_B1FA84: LitI4 0
  loc_B1FA89: FStStrCopy var_C8
  loc_B1FA8C: FLdRfVar var_C8
  loc_B1FA8F: ImpAdLdRf MemVar_C0F03C
  loc_B1FA92: CVarRef
  loc_B1FA97: LitVarStr var_A4, "foreground"
  loc_B1FA9C: FStVarCopyObj var_B4
  loc_B1FA9F: FLdRfVar var_B4
  loc_B1FAA2: LitVarStr var_94, "server"
  loc_B1FAA7: PopAdLdVar
  loc_B1FAA8: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B1FAAD: FStStrNoPop var_CC
  loc_B1FAB0: LitStr "Y"
  loc_B1FAB3: EqStr
  loc_B1FAB5: FFreeStr var_C8 = ""
  loc_B1FABC: FFree1Var var_B4 = ""
  loc_B1FABF: BranchF loc_B1FAF7
  loc_B1FAC2: FLdRfVar var_D0
  loc_B1FAC5: FLdPr Me
  loc_B1FAC8:  = Me.hWnd
  loc_B1FACD: LitI4 3
  loc_B1FAD2: LitI4 0
  loc_B1FAD7: LitI4 0
  loc_B1FADC: LitI4 0
  loc_B1FAE1: LitI4 0
  loc_B1FAE6: LitI4 -1
  loc_B1FAEB: ILdRf var_D0
  loc_B1FAEE: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B1FAF3: SetLastSystemError
  loc_B1FAF4: Branch loc_B1FB29
  loc_B1FAF7: FLdRfVar var_D0
  loc_B1FAFA: FLdPr Me
  loc_B1FAFD:  = Me.hWnd
  loc_B1FB02: LitI4 3
  loc_B1FB07: LitI4 0
  loc_B1FB0C: LitI4 0
  loc_B1FB11: LitI4 0
  loc_B1FB16: LitI4 0
  loc_B1FB1B: LitI4 -2
  loc_B1FB20: ILdRf var_D0
  loc_B1FB23: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B1FB28: SetLastSystemError
  loc_B1FB29: ExitProcHresult
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1C4F8
  'Data Table: 543B84
  loc_B1C498: ILdI2 Button
  loc_B1C49B: LitI2_Byte 1
  loc_B1C49D: EqI2
  loc_B1C49E: BranchF loc_B1C4E1
  loc_B1C4A1: ImpAdCallI2 ReleaseCapture()
  loc_B1C4A6: FStR4 var_8C
  loc_B1C4A9: SetLastSystemError
  loc_B1C4AA: ILdRf var_8C
  loc_B1C4AD: CR8I4
  loc_B1C4AE: IStFPR4 X
  loc_B1C4B1: FLdRfVar var_8C
  loc_B1C4B4: FLdPrThis
  loc_B1C4B5:  = Me.hWnd
  loc_B1C4BA: LitI4 0
  loc_B1C4BF: PopTmpLdAdStr var_90
  loc_B1C4C2: LitI4 2
  loc_B1C4C7: LitI4 &HA1
  loc_B1C4CC: ILdRf var_8C
  loc_B1C4CF: ImpAdCallI2 SendMessage(, , , )
  loc_B1C4D4: FStR4 var_94
  loc_B1C4D7: SetLastSystemError
  loc_B1C4D8: ILdRf var_94
  loc_B1C4DB: FStR4 var_88
  loc_B1C4DE: Branch loc_B1C4F6
  loc_B1C4E1: ILdRf Me
  loc_B1C4E4: FStAdNoPop
  loc_B1C4E8: ImpAdLdRf MemVar_C10514
  loc_B1C4EB: NewIfNullPr Global
  loc_B1C4EE: Global.Unload from_stack_1
  loc_B1C4F3: FFree1Ad var_98
  loc_B1C4F6: ExitProcHresult
End Sub

Private Function Proc_19_9_B19F9C() 'B19F9C
  'Data Table: 543B84
  loc_B19F80: ImpAdLdRf MemVar_C0F1B0
  loc_B19F83: NewIfNullAd
  loc_B19F86: FStAdNoPop
  loc_B19F8A: ImpAdLdRf MemVar_C10514
  loc_B19F8D: NewIfNullPr Global
  loc_B19F90: Global.Unload from_stack_1
  loc_B19F95: FFree1Ad var_88
  loc_B19F98: ExitProcHresult
End Function

Private Function Proc_19_10_B337DC() 'B337DC
  'Data Table: 543B84
  loc_B33468: FLdRfVar var_9A
  loc_B3346B: ImpAdLdI4 MemVar_C0F044
  loc_B3346E: LitStr "pub\"
  loc_B33471: ConcatStr
  loc_B33472: FStStrNoPop var_90
  loc_B33475: FLdRfVar var_8C
  loc_B33478: FLdPrThis
  loc_B33479: VCallAd Control_ID_Text1
  loc_B3347C: FStAdFunc var_88
  loc_B3347F: FLdPr var_88
  loc_B33482:  = Me.Text
  loc_B33487: ILdRf var_8C
  loc_B3348A: ConcatStr
  loc_B3348B: FStStrNoPop var_94
  loc_B3348E: LitStr "\data.ini"
  loc_B33491: ConcatStr
  loc_B33492: FStStrNoPop var_98
  loc_B33495: ImpAdLdRf MemVar_C0F040
  loc_B33498: NewIfNullPr IFileSystem3
  loc_B3349B: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B334A0: FLdI2 var_9A
  loc_B334A3: LitI2_Byte &HFF
  loc_B334A5: EqI2
  loc_B334A6: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_B334B1: FFree1Ad var_88
  loc_B334B4: BranchF loc_B337A9
  loc_B334B7: FLdRfVar var_8C
  loc_B334BA: FLdPrThis
  loc_B334BB: VCallAd Control_ID_Text1
  loc_B334BE: FStAdFunc var_88
  loc_B334C1: FLdPr var_88
  loc_B334C4:  = Me.Text
  loc_B334C9: LitI4 0
  loc_B334CE: FStStrCopy var_98
  loc_B334D1: FLdRfVar var_98
  loc_B334D4: ImpAdLdI4 MemVar_C0F044
  loc_B334D7: LitStr "pub\"
  loc_B334DA: ConcatStr
  loc_B334DB: FStStrNoPop var_90
  loc_B334DE: ILdRf var_8C
  loc_B334E1: ConcatStr
  loc_B334E2: FStStrNoPop var_94
  loc_B334E5: LitStr "\data.ini"
  loc_B334E8: ConcatStr
  loc_B334E9: CVarStr var_DC
  loc_B334EC: LitVarStr var_BC, "name"
  loc_B334F1: FStVarCopyObj var_CC
  loc_B334F4: FLdRfVar var_CC
  loc_B334F7: LitVarStr var_AC, "bot"
  loc_B334FC: PopAdLdVar
  loc_B334FD: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B33502: FStStrNoPop var_E0
  loc_B33505: FLdPrThis
  loc_B33506: VCallAd Control_ID_Text2
  loc_B33509: FStAdFunc var_E4
  loc_B3350C: FLdPr var_E4
  loc_B3350F: Me.Text = from_stack_1
  loc_B33514: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B33521: FFreeAd var_88 = ""
  loc_B33528: FFreeVar var_CC = ""
  loc_B3352F: FLdRfVar var_8C
  loc_B33532: FLdPrThis
  loc_B33533: VCallAd Control_ID_Text1
  loc_B33536: FStAdFunc var_88
  loc_B33539: FLdPr var_88
  loc_B3353C:  = Me.Text
  loc_B33541: LitI4 0
  loc_B33546: FStStrCopy var_98
  loc_B33549: FLdRfVar var_98
  loc_B3354C: ImpAdLdI4 MemVar_C0F044
  loc_B3354F: LitStr "pub\"
  loc_B33552: ConcatStr
  loc_B33553: FStStrNoPop var_90
  loc_B33556: ILdRf var_8C
  loc_B33559: ConcatStr
  loc_B3355A: FStStrNoPop var_94
  loc_B3355D: LitStr "\data.ini"
  loc_B33560: ConcatStr
  loc_B33561: CVarStr var_DC
  loc_B33564: LitVarStr var_BC, "mission"
  loc_B33569: FStVarCopyObj var_CC
  loc_B3356C: FLdRfVar var_CC
  loc_B3356F: LitVarStr var_AC, "bot"
  loc_B33574: PopAdLdVar
  loc_B33575: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B3357A: FStStrNoPop var_E0
  loc_B3357D: FLdPrThis
  loc_B3357E: VCallAd Control_ID_Text3
  loc_B33581: FStAdFunc var_E4
  loc_B33584: FLdPr var_E4
  loc_B33587: Me.Text = from_stack_1
  loc_B3358C: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B33599: FFreeAd var_88 = ""
  loc_B335A0: FFreeVar var_CC = ""
  loc_B335A7: FLdRfVar var_8C
  loc_B335AA: FLdPrThis
  loc_B335AB: VCallAd Control_ID_Text1
  loc_B335AE: FStAdFunc var_88
  loc_B335B1: FLdPr var_88
  loc_B335B4:  = Me.Text
  loc_B335B9: LitI4 0
  loc_B335BE: FStStrCopy var_98
  loc_B335C1: FLdRfVar var_98
  loc_B335C4: ImpAdLdI4 MemVar_C0F044
  loc_B335C7: LitStr "pub\"
  loc_B335CA: ConcatStr
  loc_B335CB: FStStrNoPop var_90
  loc_B335CE: ILdRf var_8C
  loc_B335D1: ConcatStr
  loc_B335D2: FStStrNoPop var_94
  loc_B335D5: LitStr "\data.ini"
  loc_B335D8: ConcatStr
  loc_B335D9: CVarStr var_DC
  loc_B335DC: LitVarStr var_BC, "walkspace"
  loc_B335E1: FStVarCopyObj var_CC
  loc_B335E4: FLdRfVar var_CC
  loc_B335E7: LitVarStr var_AC, "bot"
  loc_B335EC: PopAdLdVar
  loc_B335ED: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B335F2: FStStrNoPop var_E0
  loc_B335F5: FLdPrThis
  loc_B335F6: VCallAd Control_ID_Text4
  loc_B335F9: FStAdFunc var_E4
  loc_B335FC: FLdPr var_E4
  loc_B335FF: Me.Text = from_stack_1
  loc_B33604: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B33611: FFreeAd var_88 = ""
  loc_B33618: FFreeVar var_CC = ""
  loc_B3361F: FLdRfVar var_8C
  loc_B33622: FLdPrThis
  loc_B33623: VCallAd Control_ID_Text1
  loc_B33626: FStAdFunc var_88
  loc_B33629: FLdPr var_88
  loc_B3362C:  = Me.Text
  loc_B33631: LitI4 0
  loc_B33636: FStStrCopy var_98
  loc_B33639: FLdRfVar var_98
  loc_B3363C: ImpAdLdI4 MemVar_C0F044
  loc_B3363F: LitStr "pub\"
  loc_B33642: ConcatStr
  loc_B33643: FStStrNoPop var_90
  loc_B33646: ILdRf var_8C
  loc_B33649: ConcatStr
  loc_B3364A: FStStrNoPop var_94
  loc_B3364D: LitStr "\data.ini"
  loc_B33650: ConcatStr
  loc_B33651: CVarStr var_DC
  loc_B33654: LitVarStr var_BC, "look"
  loc_B33659: FStVarCopyObj var_CC
  loc_B3365C: FLdRfVar var_CC
  loc_B3365F: LitVarStr var_AC, "bot"
  loc_B33664: PopAdLdVar
  loc_B33665: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B3366A: FStStrNoPop var_E0
  loc_B3366D: FLdPrThis
  loc_B3366E: VCallAd Control_ID_Text5
  loc_B33671: FStAdFunc var_E4
  loc_B33674: FLdPr var_E4
  loc_B33677: Me.Text = from_stack_1
  loc_B3367C: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B33689: FFreeAd var_88 = ""
  loc_B33690: FFreeVar var_CC = ""
  loc_B33697: FLdRfVar var_8C
  loc_B3369A: FLdPrThis
  loc_B3369B: VCallAd Control_ID_Text1
  loc_B3369E: FStAdFunc var_88
  loc_B336A1: FLdPr var_88
  loc_B336A4:  = Me.Text
  loc_B336A9: LitI4 0
  loc_B336AE: FStStrCopy var_98
  loc_B336B1: FLdRfVar var_98
  loc_B336B4: ImpAdLdI4 MemVar_C0F044
  loc_B336B7: LitStr "pub\"
  loc_B336BA: ConcatStr
  loc_B336BB: FStStrNoPop var_90
  loc_B336BE: ILdRf var_8C
  loc_B336C1: ConcatStr
  loc_B336C2: FStStrNoPop var_94
  loc_B336C5: LitStr "\data.ini"
  loc_B336C8: ConcatStr
  loc_B336C9: CVarStr var_DC
  loc_B336CC: LitVarStr var_BC, "enabled"
  loc_B336D1: FStVarCopyObj var_CC
  loc_B336D4: FLdRfVar var_CC
  loc_B336D7: LitVarStr var_AC, "bot"
  loc_B336DC: PopAdLdVar
  loc_B336DD: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B336E2: FStStrNoPop var_E0
  loc_B336E5: CI2Str
  loc_B336E7: FLdPrThis
  loc_B336E8: VCallAd Control_ID_Check1
  loc_B336EB: FStAdFunc var_E4
  loc_B336EE: FLdPr var_E4
  loc_B336F1: Me.Value = from_stack_1
  loc_B336F6: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_98 = ""
  loc_B33703: FFreeAd var_88 = ""
  loc_B3370A: FFreeVar var_CC = ""
  loc_B33711: LitI2_Byte &HFF
  loc_B33713: FLdPrThis
  loc_B33714: VCallAd Control_ID_Check1
  loc_B33717: FStAdFunc var_88
  loc_B3371A: FLdPr var_88
  loc_B3371D: Me.Enabled = from_stack_1b
  loc_B33722: FFree1Ad var_88
  loc_B33725: LitI2_Byte &HFF
  loc_B33727: FLdPrThis
  loc_B33728: VCallAd Control_ID_Text2
  loc_B3372B: FStAdFunc var_88
  loc_B3372E: FLdPr var_88
  loc_B33731: Me.Enabled = from_stack_1b
  loc_B33736: FFree1Ad var_88
  loc_B33739: LitI2_Byte &HFF
  loc_B3373B: FLdPrThis
  loc_B3373C: VCallAd Control_ID_Text3
  loc_B3373F: FStAdFunc var_88
  loc_B33742: FLdPr var_88
  loc_B33745: Me.Enabled = from_stack_1b
  loc_B3374A: FFree1Ad var_88
  loc_B3374D: LitI2_Byte &HFF
  loc_B3374F: FLdPrThis
  loc_B33750: VCallAd Control_ID_Text4
  loc_B33753: FStAdFunc var_88
  loc_B33756: FLdPr var_88
  loc_B33759: Me.Enabled = from_stack_1b
  loc_B3375E: FFree1Ad var_88
  loc_B33761: LitI2_Byte &HFF
  loc_B33763: FLdPrThis
  loc_B33764: VCallAd Control_ID_Text5
  loc_B33767: FStAdFunc var_88
  loc_B3376A: FLdPr var_88
  loc_B3376D: Me.Enabled = from_stack_1b
  loc_B33772: FFree1Ad var_88
  loc_B33775: LitVar_Missing var_124
  loc_B33778: LitVar_Missing var_104
  loc_B3377B: LitVar_Missing var_DC
  loc_B3377E: LitI4 0
  loc_B33783: LitVarStr var_AC, "Bot loaded!"
  loc_B33788: FStVarCopyObj var_CC
  loc_B3378B: FLdRfVar var_CC
  loc_B3378E: ImpAdCallI2 MsgBox(, , , , )
  loc_B33793: CVarI4
  loc_B33797: FStVar var_134
  loc_B3379B: FFreeVar var_CC = "": var_DC = "": var_104 = ""
  loc_B337A6: Branch loc_B337DA
  loc_B337A9: LitVar_Missing var_124
  loc_B337AC: LitVar_Missing var_104
  loc_B337AF: LitVar_Missing var_DC
  loc_B337B2: LitI4 &H10
  loc_B337B7: LitVarStr var_AC, "the room don't exist"
  loc_B337BC: FStVarCopyObj var_CC
  loc_B337BF: FLdRfVar var_CC
  loc_B337C2: ImpAdCallI2 MsgBox(, , , , )
  loc_B337C7: CVarI4
  loc_B337CB: FStVar var_134
  loc_B337CF: FFreeVar var_CC = "": var_DC = "": var_104 = ""
  loc_B337DA: ExitProcHresult
End Function

Private Function Proc_19_11_B2AA10() 'B2AA10
  'Data Table: 543B84
  loc_B2A800: FLdRfVar var_9C
  loc_B2A803: FLdPrThis
  loc_B2A804: VCallAd Control_ID_Text2
  loc_B2A807: FStAdFunc var_98
  loc_B2A80A: FLdPr var_98
  loc_B2A80D:  = Me.Text
  loc_B2A812: ImpAdLdI4 MemVar_C0F044
  loc_B2A815: LitStr "pub\"
  loc_B2A818: ConcatStr
  loc_B2A819: FStStrNoPop var_90
  loc_B2A81C: FLdRfVar var_8C
  loc_B2A81F: FLdPrThis
  loc_B2A820: VCallAd Control_ID_Text1
  loc_B2A823: FStAdFunc var_88
  loc_B2A826: FLdPr var_88
  loc_B2A829:  = Me.Text
  loc_B2A82E: ILdRf var_8C
  loc_B2A831: ConcatStr
  loc_B2A832: FStStrNoPop var_94
  loc_B2A835: LitStr "\data.ini"
  loc_B2A838: ConcatStr
  loc_B2A839: FStStrNoPop var_A0
  loc_B2A83C: ILdRf var_9C
  loc_B2A83F: LitStr "name"
  loc_B2A842: LitStr "bot"
  loc_B2A845: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2A84A: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B2A857: FFreeAd var_88 = ""
  loc_B2A85E: FLdRfVar var_9C
  loc_B2A861: FLdPrThis
  loc_B2A862: VCallAd Control_ID_Text3
  loc_B2A865: FStAdFunc var_98
  loc_B2A868: FLdPr var_98
  loc_B2A86B:  = Me.Text
  loc_B2A870: ImpAdLdI4 MemVar_C0F044
  loc_B2A873: LitStr "pub\"
  loc_B2A876: ConcatStr
  loc_B2A877: FStStrNoPop var_90
  loc_B2A87A: FLdRfVar var_8C
  loc_B2A87D: FLdPrThis
  loc_B2A87E: VCallAd Control_ID_Text1
  loc_B2A881: FStAdFunc var_88
  loc_B2A884: FLdPr var_88
  loc_B2A887:  = Me.Text
  loc_B2A88C: ILdRf var_8C
  loc_B2A88F: ConcatStr
  loc_B2A890: FStStrNoPop var_94
  loc_B2A893: LitStr "\data.ini"
  loc_B2A896: ConcatStr
  loc_B2A897: FStStrNoPop var_A0
  loc_B2A89A: ILdRf var_9C
  loc_B2A89D: LitStr "mission"
  loc_B2A8A0: LitStr "bot"
  loc_B2A8A3: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2A8A8: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B2A8B5: FFreeAd var_88 = ""
  loc_B2A8BC: FLdRfVar var_9C
  loc_B2A8BF: FLdPrThis
  loc_B2A8C0: VCallAd Control_ID_Text4
  loc_B2A8C3: FStAdFunc var_98
  loc_B2A8C6: FLdPr var_98
  loc_B2A8C9:  = Me.Text
  loc_B2A8CE: ImpAdLdI4 MemVar_C0F044
  loc_B2A8D1: LitStr "pub\"
  loc_B2A8D4: ConcatStr
  loc_B2A8D5: FStStrNoPop var_90
  loc_B2A8D8: FLdRfVar var_8C
  loc_B2A8DB: FLdPrThis
  loc_B2A8DC: VCallAd Control_ID_Text1
  loc_B2A8DF: FStAdFunc var_88
  loc_B2A8E2: FLdPr var_88
  loc_B2A8E5:  = Me.Text
  loc_B2A8EA: ILdRf var_8C
  loc_B2A8ED: ConcatStr
  loc_B2A8EE: FStStrNoPop var_94
  loc_B2A8F1: LitStr "\data.ini"
  loc_B2A8F4: ConcatStr
  loc_B2A8F5: FStStrNoPop var_A0
  loc_B2A8F8: ILdRf var_9C
  loc_B2A8FB: LitStr "walkspace"
  loc_B2A8FE: LitStr "bot"
  loc_B2A901: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2A906: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B2A913: FFreeAd var_88 = ""
  loc_B2A91A: FLdRfVar var_9C
  loc_B2A91D: FLdPrThis
  loc_B2A91E: VCallAd Control_ID_Text5
  loc_B2A921: FStAdFunc var_98
  loc_B2A924: FLdPr var_98
  loc_B2A927:  = Me.Text
  loc_B2A92C: ImpAdLdI4 MemVar_C0F044
  loc_B2A92F: LitStr "pub\"
  loc_B2A932: ConcatStr
  loc_B2A933: FStStrNoPop var_90
  loc_B2A936: FLdRfVar var_8C
  loc_B2A939: FLdPrThis
  loc_B2A93A: VCallAd Control_ID_Text1
  loc_B2A93D: FStAdFunc var_88
  loc_B2A940: FLdPr var_88
  loc_B2A943:  = Me.Text
  loc_B2A948: ILdRf var_8C
  loc_B2A94B: ConcatStr
  loc_B2A94C: FStStrNoPop var_94
  loc_B2A94F: LitStr "\data.ini"
  loc_B2A952: ConcatStr
  loc_B2A953: FStStrNoPop var_A0
  loc_B2A956: ILdRf var_9C
  loc_B2A959: LitStr "look"
  loc_B2A95C: LitStr "bot"
  loc_B2A95F: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2A964: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B2A971: FFreeAd var_88 = ""
  loc_B2A978: FLdRfVar var_A2
  loc_B2A97B: FLdPrThis
  loc_B2A97C: VCallAd Control_ID_Check1
  loc_B2A97F: FStAdFunc var_98
  loc_B2A982: FLdPr var_98
  loc_B2A985:  = Me.Value
  loc_B2A98A: ImpAdLdI4 MemVar_C0F044
  loc_B2A98D: LitStr "pub\"
  loc_B2A990: ConcatStr
  loc_B2A991: FStStrNoPop var_90
  loc_B2A994: FLdRfVar var_8C
  loc_B2A997: FLdPrThis
  loc_B2A998: VCallAd Control_ID_Text1
  loc_B2A99B: FStAdFunc var_88
  loc_B2A99E: FLdPr var_88
  loc_B2A9A1:  = Me.Text
  loc_B2A9A6: ILdRf var_8C
  loc_B2A9A9: ConcatStr
  loc_B2A9AA: FStStrNoPop var_94
  loc_B2A9AD: LitStr "\data.ini"
  loc_B2A9B0: ConcatStr
  loc_B2A9B1: FStStrNoPop var_A0
  loc_B2A9B4: FLdI2 var_A2
  loc_B2A9B7: CStrUI1
  loc_B2A9B9: FStStrNoPop var_9C
  loc_B2A9BC: LitStr "enabled"
  loc_B2A9BF: LitStr "bot"
  loc_B2A9C2: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2A9C7: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_9C = ""
  loc_B2A9D4: FFreeAd var_88 = ""
  loc_B2A9DB: LitVar_Missing var_124
  loc_B2A9DE: LitVar_Missing var_104
  loc_B2A9E1: LitVar_Missing var_E4
  loc_B2A9E4: LitI4 0
  loc_B2A9E9: LitVarStr var_B4, "Bot saved!"
  loc_B2A9EE: FStVarCopyObj var_C4
  loc_B2A9F1: FLdRfVar var_C4
  loc_B2A9F4: ImpAdCallI2 MsgBox(, , , , )
  loc_B2A9F9: CVarI4
  loc_B2A9FD: FStVar var_134
  loc_B2AA01: FFreeVar var_C4 = "": var_E4 = "": var_104 = ""
  loc_B2AA0C: ExitProcHresult
  loc_B2AA0D: FStStrNoPop var_C8
End Function
