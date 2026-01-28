VERSION 5.00
Begin VB.Form frmTab_publicroom_infobus
  Caption = "Infobus Poll"
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 0
  ClientTop = -30
  ClientWidth = 4905
  ClientHeight = 4425
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmTab_publicroom_infobus.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 4905
    Height = 4425
    TabIndex = 2
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.TextBox tbQuestion
      BackColor = &H8000000E&
      Left = 1320
      Top = 1225
      Width = 2415
      Height = 195
      TabIndex = 15
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox AnumF
      BackColor = &H8000000E&
      Left = 4080
      Top = 3420
      Width = 375
      Height = 195
      Enabled = 0   'False
      TabIndex = 14
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox AnumE
      BackColor = &H8000000E&
      Left = 4080
      Top = 3060
      Width = 375
      Height = 195
      Enabled = 0   'False
      TabIndex = 13
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox AnumD
      BackColor = &H8000000E&
      Left = 4080
      Top = 2690
      Width = 375
      Height = 195
      Enabled = 0   'False
      TabIndex = 12
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox AnumA
      BackColor = &H8000000E&
      Left = 4080
      Top = 1600
      Width = 375
      Height = 195
      Enabled = 0   'False
      TabIndex = 11
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox AnumC
      BackColor = &H8000000E&
      Left = 4080
      Top = 2320
      Width = 375
      Height = 195
      Enabled = 0   'False
      TabIndex = 10
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox AnumB
      BackColor = &H8000000E&
      Left = 4080
      Top = 1960
      Width = 375
      Height = 195
      Enabled = 0   'False
      TabIndex = 9
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox tbAF
      BackColor = &H8000000E&
      Left = 1320
      Top = 3420
      Width = 2295
      Height = 195
      TabIndex = 8
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox tbAE
      BackColor = &H8000000E&
      Left = 1320
      Top = 3060
      Width = 2295
      Height = 195
      TabIndex = 7
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox tbAD
      BackColor = &H8000000E&
      Left = 1320
      Top = 2690
      Width = 2295
      Height = 195
      TabIndex = 6
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox tbAC
      BackColor = &H8000000E&
      Left = 1320
      Top = 2320
      Width = 2295
      Height = 195
      TabIndex = 5
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox tbAB
      BackColor = &H8000000E&
      Left = 1320
      Top = 1960
      Width = 2295
      Height = 195
      TabIndex = 4
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.TextBox tbAA
      BackColor = &H8000000E&
      Left = 1320
      Top = 1600
      Width = 2295
      Height = 195
      TabIndex = 3
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.Label Label1
      Caption = "Question:"
      Left = 0
      Top = 1200
      Width = 1005
      Height = 255
      TabIndex = 26
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label9
      Caption = "Votes"
      Left = 3960
      Top = 890
      Width = 615
      Height = 255
      TabIndex = 25
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label8
      ForeColor = &H404040&
      Left = 360
      Top = 1200
      Width = 3495
      Height = 255
      TabIndex = 24
      Alignment = 2 'Center
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
    Begin VB.Label Label7
      Caption = "Answer F:"
      Left = 120
      Top = 3360
      Width = 975
      Height = 255
      TabIndex = 23
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label6
      Caption = "Answer E:"
      Left = 120
      Top = 3000
      Width = 975
      Height = 255
      TabIndex = 22
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label5
      Caption = "Answer D:"
      Left = 120
      Top = 2640
      Width = 975
      Height = 255
      TabIndex = 21
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label4
      Caption = "Answer C:"
      Left = 120
      Top = 2280
      Width = 975
      Height = 255
      TabIndex = 20
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label3
      Caption = "Answer B:"
      Left = 120
      Top = 1920
      Width = 975
      Height = 255
      TabIndex = 19
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label2
      Caption = "Answer A:"
      Left = 105
      Top = 1560
      Width = 975
      Height = 255
      TabIndex = 18
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label11
      Caption = "Infobus Poll"
      ForeColor = &HFFFFFF&
      Left = 360
      Top = 240
      Width = 3975
      Height = 255
      TabIndex = 17
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
      Left = 2280
      Top = 3840
      Width = 615
      Height = 15
    End
    Begin VB.Image cmdSendPoll
      Picture = "frmTab_publicroom_infobus.frx":00046E2A
      Left = 1200
      Top = 3840
      Width = 2535
      Height = 300
    End
    Begin VB.Image Image2
      Picture = "frmTab_publicroom_infobus.frx":0004961C
      Left = 3960
      Top = 1160
      Width = 600
      Height = 330
    End
    Begin VB.Image Image3
      Picture = "frmTab_publicroom_infobus.frx":0004A0AE
      Left = 3960
      Top = 1520
      Width = 600
      Height = 330
    End
    Begin VB.Image Image4
      Picture = "frmTab_publicroom_infobus.frx":0004AB40
      Left = 3960
      Top = 1880
      Width = 600
      Height = 330
    End
    Begin VB.Image Image5
      Picture = "frmTab_publicroom_infobus.frx":0004B5D2
      Left = 3960
      Top = 3325
      Width = 600
      Height = 330
    End
    Begin VB.Image Image6
      Picture = "frmTab_publicroom_infobus.frx":0004C064
      Left = 3960
      Top = 2970
      Width = 600
      Height = 330
    End
    Begin VB.Image Image7
      Picture = "frmTab_publicroom_infobus.frx":0004CAF6
      Left = 3960
      Top = 2600
      Width = 600
      Height = 330
    End
    Begin VB.Image Image8
      Picture = "frmTab_publicroom_infobus.frx":0004D588
      Left = 3960
      Top = 2230
      Width = 600
      Height = 330
    End
    Begin VB.Image Image9
      Picture = "frmTab_publicroom_infobus.frx":0004E01A
      Left = 1200
      Top = 1160
      Width = 2580
      Height = 330
    End
    Begin VB.Image Image10
      Picture = "frmTab_publicroom_infobus.frx":00050CB4
      Left = 1200
      Top = 1520
      Width = 2580
      Height = 330
    End
    Begin VB.Image Image11
      Picture = "frmTab_publicroom_infobus.frx":0005394E
      Left = 1200
      Top = 1880
      Width = 2580
      Height = 330
    End
    Begin VB.Image Image12
      Picture = "frmTab_publicroom_infobus.frx":000565E8
      Left = 1200
      Top = 2230
      Width = 2580
      Height = 330
    End
    Begin VB.Image Image13
      Picture = "frmTab_publicroom_infobus.frx":00059282
      Left = 1200
      Top = 2600
      Width = 2580
      Height = 330
    End
    Begin VB.Image Image14
      Picture = "frmTab_publicroom_infobus.frx":0005BF1C
      Left = 1200
      Top = 2970
      Width = 2580
      Height = 330
    End
    Begin VB.Image Image15
      Picture = "frmTab_publicroom_infobus.frx":0005EBB6
      Left = 1200
      Top = 3330
      Width = 2580
      Height = 330
    End
    Begin VB.Label Label12
      Caption = "You must have 2 answers!"
      Left = 1200
      Top = 890
      Width = 2655
      Height = 255
      TabIndex = 16
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Image16
      Picture = "frmTab_publicroom_infobus.frx":00061850
      Left = 4320
      Top = 180
      Width = 360
      Height = 330
    End
  End
  Begin VB.TextBox votestotal
    BackColor = &H8000000E&
    Left = 4080
    Top = 1250
    Width = 375
    Height = 195
    Enabled = 0   'False
    Text = "0"
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 2 'Center
    Appearance = 0 'Flat
  End
  Begin VB.TextBox questionamount
    Left = 240
    Top = 4800
    Width = 615
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    Text = "0"
    TabIndex = 0
  End
  Begin VB.Timer Timer1
    Enabled = 0   'False
    Interval = 30000
    Left = 840
    Top = 4680
  End
  Begin VB.Label Label10
    Caption = "0"
    Left = 120
    Top = 4560
    Width = 615
    Height = 255
    TabIndex = 27
  End
End

Attribute VB_Name = "frmTab_publicroom_infobus"


Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1C464
  'Data Table: 546724
  loc_B1C404: ILdI2 Button
  loc_B1C407: LitI2_Byte 1
  loc_B1C409: EqI2
  loc_B1C40A: BranchF loc_B1C44D
  loc_B1C40D: ImpAdCallI2 ReleaseCapture()
  loc_B1C412: FStR4 var_8C
  loc_B1C415: SetLastSystemError
  loc_B1C416: ILdRf var_8C
  loc_B1C419: CR8I4
  loc_B1C41A: IStFPR4 X
  loc_B1C41D: FLdRfVar var_8C
  loc_B1C420: FLdPrThis
  loc_B1C421:  = Me.hWnd
  loc_B1C426: LitI4 0
  loc_B1C42B: PopTmpLdAdStr var_90
  loc_B1C42E: LitI4 2
  loc_B1C433: LitI4 &HA1
  loc_B1C438: ILdRf var_8C
  loc_B1C43B: ImpAdCallI2 SendMessage(, , , )
  loc_B1C440: FStR4 var_94
  loc_B1C443: SetLastSystemError
  loc_B1C444: ILdRf var_94
  loc_B1C447: FStR4 var_88
  loc_B1C44A: Branch loc_B1C462
  loc_B1C44D: ILdRf Me
  loc_B1C450: FStAdNoPop
  loc_B1C454: ImpAdLdRf MemVar_C10514
  loc_B1C457: NewIfNullPr Global
  loc_B1C45A: Global.Unload from_stack_1
  loc_B1C45F: FFree1Ad var_98
  loc_B1C462: ExitProcHresult
End Sub

Private Sub Form_Load() 'B202BC
  'Data Table: 546724
  loc_B20200: LitI4 0
  loc_B20205: FStStrCopy var_C8
  loc_B20208: FLdRfVar var_C8
  loc_B2020B: ImpAdLdRf MemVar_C0F03C
  loc_B2020E: CVarRef
  loc_B20213: LitVarStr var_A4, "foreground"
  loc_B20218: FStVarCopyObj var_B4
  loc_B2021B: FLdRfVar var_B4
  loc_B2021E: LitVarStr var_94, "server"
  loc_B20223: PopAdLdVar
  loc_B20224: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B20229: FStStrNoPop var_CC
  loc_B2022C: LitStr "Y"
  loc_B2022F: EqStr
  loc_B20231: FFreeStr var_C8 = ""
  loc_B20238: FFree1Var var_B4 = ""
  loc_B2023B: BranchF loc_B20273
  loc_B2023E: FLdRfVar var_D0
  loc_B20241: FLdPr Me
  loc_B20244:  = Me.hWnd
  loc_B20249: LitI4 3
  loc_B2024E: LitI4 0
  loc_B20253: LitI4 0
  loc_B20258: LitI4 0
  loc_B2025D: LitI4 0
  loc_B20262: LitI4 -1
  loc_B20267: ILdRf var_D0
  loc_B2026A: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B2026F: SetLastSystemError
  loc_B20270: Branch loc_B202A5
  loc_B20273: FLdRfVar var_D0
  loc_B20276: FLdPr Me
  loc_B20279:  = Me.hWnd
  loc_B2027E: LitI4 3
  loc_B20283: LitI4 0
  loc_B20288: LitI4 0
  loc_B2028D: LitI4 0
  loc_B20292: LitI4 0
  loc_B20297: LitI4 -2
  loc_B2029C: ILdRf var_D0
  loc_B2029F: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B202A4: SetLastSystemError
  loc_B202A5: LitI2_Byte 0
  loc_B202A7: FLdPrThis
  loc_B202A8: VCallAd Control_ID_Timer1
  loc_B202AB: FStAdFunc var_D4
  loc_B202AE: FLdPr var_D4
  loc_B202B1: Me.Enabled = from_stack_1b
  loc_B202B6: FFree1Ad var_D4
  loc_B202B9: ExitProcHresult
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1C33C
  'Data Table: 546724
  loc_B1C2DC: ILdI2 Button
  loc_B1C2DF: LitI2_Byte 1
  loc_B1C2E1: EqI2
  loc_B1C2E2: BranchF loc_B1C325
  loc_B1C2E5: ImpAdCallI2 ReleaseCapture()
  loc_B1C2EA: FStR4 var_8C
  loc_B1C2ED: SetLastSystemError
  loc_B1C2EE: ILdRf var_8C
  loc_B1C2F1: CR8I4
  loc_B1C2F2: IStFPR4 X
  loc_B1C2F5: FLdRfVar var_8C
  loc_B1C2F8: FLdPrThis
  loc_B1C2F9:  = Me.hWnd
  loc_B1C2FE: LitI4 0
  loc_B1C303: PopTmpLdAdStr var_90
  loc_B1C306: LitI4 2
  loc_B1C30B: LitI4 &HA1
  loc_B1C310: ILdRf var_8C
  loc_B1C313: ImpAdCallI2 SendMessage(, , , )
  loc_B1C318: FStR4 var_94
  loc_B1C31B: SetLastSystemError
  loc_B1C31C: ILdRf var_94
  loc_B1C31F: FStR4 var_88
  loc_B1C322: Branch loc_B1C33A
  loc_B1C325: ILdRf Me
  loc_B1C328: FStAdNoPop
  loc_B1C32C: ImpAdLdRf MemVar_C10514
  loc_B1C32F: NewIfNullPr Global
  loc_B1C332: Global.Unload from_stack_1
  loc_B1C337: FFree1Ad var_98
  loc_B1C33A: ExitProcHresult
End Sub

Private Sub Timer1_Timer() 'B3019C
  'Data Table: 546724
  loc_B2FEC0: FLdRfVar var_8C
  loc_B2FEC3: FLdPrThis
  loc_B2FEC4: VCallAd Control_ID_votestotal
  loc_B2FEC7: FStAdFunc var_88
  loc_B2FECA: FLdPr var_88
  loc_B2FECD:  = Me.Text
  loc_B2FED2: FLdRfVar var_9C
  loc_B2FED5: FLdPrThis
  loc_B2FED6: VCallAd Control_ID_AnumA
  loc_B2FED9: FStAdFunc var_98
  loc_B2FEDC: FLdPr var_98
  loc_B2FEDF:  = Me.Text
  loc_B2FEE4: FLdRfVar var_AC
  loc_B2FEE7: FLdPrThis
  loc_B2FEE8: VCallAd Control_ID_AnumB
  loc_B2FEEB: FStAdFunc var_A8
  loc_B2FEEE: FLdPr var_A8
  loc_B2FEF1:  = Me.Text
  loc_B2FEF6: LitI4 &H22
  loc_B2FEFB: LitStr "AP"
  loc_B2FEFE: LitStr "/"
  loc_B2FF01: ConcatStr
  loc_B2FF02: FStStrNoPop var_90
  loc_B2FF05: ILdRf var_8C
  loc_B2FF08: ConcatStr
  loc_B2FF09: FStStrNoPop var_94
  loc_B2FF0C: LitStr "/"
  loc_B2FF0F: ConcatStr
  loc_B2FF10: FStStrNoPop var_A0
  loc_B2FF13: ILdRf var_9C
  loc_B2FF16: ConcatStr
  loc_B2FF17: FStStrNoPop var_A4
  loc_B2FF1A: LitStr "/"
  loc_B2FF1D: ConcatStr
  loc_B2FF1E: FStStrNoPop var_B0
  loc_B2FF21: ILdRf var_AC
  loc_B2FF24: ConcatStr
  loc_B2FF25: FStStrNoPop var_B4
  loc_B2FF28: FLdRfVar var_C4
  loc_B2FF2B: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B2FF30: FFreeStr var_90 = "": var_8C = "": var_94 = "": var_A0 = "": var_9C = "": var_A4 = "": var_B0 = "": var_AC = ""
  loc_B2FF45: FFreeAd var_88 = "": var_98 = ""
  loc_B2FF4E: FFree1Var var_C4 = ""
  loc_B2FF51: FLdRfVar var_8C
  loc_B2FF54: FLdPrThis
  loc_B2FF55: VCallAd Control_ID_questionamount
  loc_B2FF58: FStAdFunc var_88
  loc_B2FF5B: FLdPr var_88
  loc_B2FF5E:  = Me.Text
  loc_B2FF63: ILdRf var_8C
  loc_B2FF66: LitStr "3"
  loc_B2FF69: GeStr
  loc_B2FF6B: FFree1Str var_8C
  loc_B2FF6E: FFree1Ad var_88
  loc_B2FF71: BranchF loc_B300B5
  loc_B2FF74: FLdRfVar var_8C
  loc_B2FF77: FLdPrThis
  loc_B2FF78: VCallAd Control_ID_AnumC
  loc_B2FF7B: FStAdFunc var_88
  loc_B2FF7E: FLdPr var_88
  loc_B2FF81:  = Me.Text
  loc_B2FF86: LitI4 &H22
  loc_B2FF8B: LitStr "/"
  loc_B2FF8E: ILdRf var_8C
  loc_B2FF91: ConcatStr
  loc_B2FF92: FStStrNoPop var_90
  loc_B2FF95: FLdRfVar var_C4
  loc_B2FF98: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B2FF9D: FFreeStr var_8C = ""
  loc_B2FFA4: FFree1Ad var_88
  loc_B2FFA7: FFree1Var var_C4 = ""
  loc_B2FFAA: FLdRfVar var_8C
  loc_B2FFAD: FLdPrThis
  loc_B2FFAE: VCallAd Control_ID_questionamount
  loc_B2FFB1: FStAdFunc var_88
  loc_B2FFB4: FLdPr var_88
  loc_B2FFB7:  = Me.Text
  loc_B2FFBC: ILdRf var_8C
  loc_B2FFBF: LitStr "4"
  loc_B2FFC2: GeStr
  loc_B2FFC4: FFree1Str var_8C
  loc_B2FFC7: FFree1Ad var_88
  loc_B2FFCA: BranchF loc_B300B5
  loc_B2FFCD: FLdRfVar var_8C
  loc_B2FFD0: FLdPrThis
  loc_B2FFD1: VCallAd Control_ID_AnumD
  loc_B2FFD4: FStAdFunc var_88
  loc_B2FFD7: FLdPr var_88
  loc_B2FFDA:  = Me.Text
  loc_B2FFDF: LitI4 &H22
  loc_B2FFE4: LitStr "/"
  loc_B2FFE7: ILdRf var_8C
  loc_B2FFEA: ConcatStr
  loc_B2FFEB: FStStrNoPop var_90
  loc_B2FFEE: FLdRfVar var_C4
  loc_B2FFF1: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B2FFF6: FFreeStr var_8C = ""
  loc_B2FFFD: FFree1Ad var_88
  loc_B30000: FFree1Var var_C4 = ""
  loc_B30003: FLdRfVar var_8C
  loc_B30006: FLdPrThis
  loc_B30007: VCallAd Control_ID_questionamount
  loc_B3000A: FStAdFunc var_88
  loc_B3000D: FLdPr var_88
  loc_B30010:  = Me.Text
  loc_B30015: ILdRf var_8C
  loc_B30018: LitStr "5"
  loc_B3001B: GeStr
  loc_B3001D: FFree1Str var_8C
  loc_B30020: FFree1Ad var_88
  loc_B30023: BranchF loc_B300B5
  loc_B30026: FLdRfVar var_8C
  loc_B30029: FLdPrThis
  loc_B3002A: VCallAd Control_ID_AnumE
  loc_B3002D: FStAdFunc var_88
  loc_B30030: FLdPr var_88
  loc_B30033:  = Me.Text
  loc_B30038: LitI4 &H22
  loc_B3003D: LitStr "/"
  loc_B30040: ILdRf var_8C
  loc_B30043: ConcatStr
  loc_B30044: FStStrNoPop var_90
  loc_B30047: FLdRfVar var_C4
  loc_B3004A: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B3004F: FFreeStr var_8C = ""
  loc_B30056: FFree1Ad var_88
  loc_B30059: FFree1Var var_C4 = ""
  loc_B3005C: FLdRfVar var_8C
  loc_B3005F: FLdPrThis
  loc_B30060: VCallAd Control_ID_questionamount
  loc_B30063: FStAdFunc var_88
  loc_B30066: FLdPr var_88
  loc_B30069:  = Me.Text
  loc_B3006E: ILdRf var_8C
  loc_B30071: LitStr "6"
  loc_B30074: EqStr
  loc_B30076: FFree1Str var_8C
  loc_B30079: FFree1Ad var_88
  loc_B3007C: BranchF loc_B300B5
  loc_B3007F: FLdRfVar var_8C
  loc_B30082: FLdPrThis
  loc_B30083: VCallAd Control_ID_AnumF
  loc_B30086: FStAdFunc var_88
  loc_B30089: FLdPr var_88
  loc_B3008C:  = Me.Text
  loc_B30091: LitI4 &H22
  loc_B30096: LitStr "/"
  loc_B30099: ILdRf var_8C
  loc_B3009C: ConcatStr
  loc_B3009D: FStStrNoPop var_90
  loc_B300A0: FLdRfVar var_C4
  loc_B300A3: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B300A8: FFreeStr var_8C = ""
  loc_B300AF: FFree1Ad var_88
  loc_B300B2: FFree1Var var_C4 = ""
  loc_B300B5: LitI4 &H22
  loc_B300BA: LitStr ""
  loc_B300BD: FLdRfVar var_C4
  loc_B300C0: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B300C5: FFree1Var var_C4 = ""
  loc_B300C8: LitStr "Poll finished..."
  loc_B300CB: FLdPrThis
  loc_B300CC: VCallAd Control_ID_Label12
  loc_B300CF: FStAdFunc var_88
  loc_B300D2: FLdPr var_88
  loc_B300D5: Me.Caption = from_stack_1
  loc_B300DA: FFree1Ad var_88
  loc_B300DD: LitI2_Byte &HFF
  loc_B300DF: FLdPrThis
  loc_B300E0: VCallAd Control_ID_cmdSendPoll
  loc_B300E3: FStAdFunc var_88
  loc_B300E6: FLdPr var_88
  loc_B300E9: Me.Enabled = from_stack_1b
  loc_B300EE: FFree1Ad var_88
  loc_B300F1: LitStr vbNullString
  loc_B300F4: FLdPrThis
  loc_B300F5: VCallAd Control_ID_tbQuestion
  loc_B300F8: FStAdFunc var_88
  loc_B300FB: FLdPr var_88
  loc_B300FE: Me.Text = from_stack_1
  loc_B30103: FFree1Ad var_88
  loc_B30106: LitStr vbNullString
  loc_B30109: FLdPrThis
  loc_B3010A: VCallAd Control_ID_tbAA
  loc_B3010D: FStAdFunc var_88
  loc_B30110: FLdPr var_88
  loc_B30113: Me.Text = from_stack_1
  loc_B30118: FFree1Ad var_88
  loc_B3011B: LitStr vbNullString
  loc_B3011E: FLdPrThis
  loc_B3011F: VCallAd Control_ID_tbAB
  loc_B30122: FStAdFunc var_88
  loc_B30125: FLdPr var_88
  loc_B30128: Me.Text = from_stack_1
  loc_B3012D: FFree1Ad var_88
  loc_B30130: LitStr vbNullString
  loc_B30133: FLdPrThis
  loc_B30134: VCallAd Control_ID_tbAC
  loc_B30137: FStAdFunc var_88
  loc_B3013A: FLdPr var_88
  loc_B3013D: Me.Text = from_stack_1
  loc_B30142: FFree1Ad var_88
  loc_B30145: LitStr vbNullString
  loc_B30148: FLdPrThis
  loc_B30149: VCallAd Control_ID_tbAD
  loc_B3014C: FStAdFunc var_88
  loc_B3014F: FLdPr var_88
  loc_B30152: Me.Text = from_stack_1
  loc_B30157: FFree1Ad var_88
  loc_B3015A: LitStr vbNullString
  loc_B3015D: FLdPrThis
  loc_B3015E: VCallAd Control_ID_tbAE
  loc_B30161: FStAdFunc var_88
  loc_B30164: FLdPr var_88
  loc_B30167: Me.Text = from_stack_1
  loc_B3016C: FFree1Ad var_88
  loc_B3016F: LitStr vbNullString
  loc_B30172: FLdPrThis
  loc_B30173: VCallAd Control_ID_tbAF
  loc_B30176: FStAdFunc var_88
  loc_B30179: FLdPr var_88
  loc_B3017C: Me.Text = from_stack_1
  loc_B30181: FFree1Ad var_88
  loc_B30184: LitStr "You must have 2 answers!"
  loc_B30187: FLdPrThis
  loc_B30188: VCallAd Control_ID_Label12
  loc_B3018B: FStAdFunc var_88
  loc_B3018E: FLdPr var_88
  loc_B30191: Me.Caption = from_stack_1
  loc_B30196: FFree1Ad var_88
  loc_B30199: ExitProcHresult
  loc_B3019A: FLdRfVar var_5390
End Sub

Private Sub cmdSendPoll_Click() 'B3D1A4
  'Data Table: 546724
  loc_B3CC9C: LitStr "Waiting for poll answers..."
  loc_B3CC9F: FLdPrThis
  loc_B3CCA0: VCallAd Control_ID_Label12
  loc_B3CCA3: FStAdFunc var_88
  loc_B3CCA6: FLdPr var_88
  loc_B3CCA9: Me.Caption = from_stack_1
  loc_B3CCAE: FFree1Ad var_88
  loc_B3CCB1: LitStr "0"
  loc_B3CCB4: FLdPrThis
  loc_B3CCB5: VCallAd Control_ID_votestotal
  loc_B3CCB8: FStAdFunc var_88
  loc_B3CCBB: FLdPr var_88
  loc_B3CCBE: Me.Text = from_stack_1
  loc_B3CCC3: FFree1Ad var_88
  loc_B3CCC6: FLdRfVar var_8C
  loc_B3CCC9: FLdPrThis
  loc_B3CCCA: VCallAd Control_ID_tbQuestion
  loc_B3CCCD: FStAdFunc var_88
  loc_B3CCD0: FLdPr var_88
  loc_B3CCD3:  = Me.Text
  loc_B3CCD8: ILdRf var_8C
  loc_B3CCDB: LitStr vbNullString
  loc_B3CCDE: EqStr
  loc_B3CCE0: FLdRfVar var_94
  loc_B3CCE3: FLdPrThis
  loc_B3CCE4: VCallAd Control_ID_tbAA
  loc_B3CCE7: FStAdFunc var_90
  loc_B3CCEA: FLdPr var_90
  loc_B3CCED:  = Me.Text
  loc_B3CCF2: ILdRf var_94
  loc_B3CCF5: LitStr vbNullString
  loc_B3CCF8: EqStr
  loc_B3CCFA: OrI4
  loc_B3CCFB: FLdRfVar var_9C
  loc_B3CCFE: FLdPrThis
  loc_B3CCFF: VCallAd Control_ID_tbAB
  loc_B3CD02: FStAdFunc var_98
  loc_B3CD05: FLdPr var_98
  loc_B3CD08:  = Me.Text
  loc_B3CD0D: ILdRf var_9C
  loc_B3CD10: LitStr vbNullString
  loc_B3CD13: EqStr
  loc_B3CD15: OrI4
  loc_B3CD16: FFreeStr var_8C = "": var_94 = ""
  loc_B3CD1F: FFreeAd var_88 = "": var_90 = ""
  loc_B3CD28: BranchF loc_B3CD43
  loc_B3CD2B: LitStr "Please enter more answers!"
  loc_B3CD2E: FLdPrThis
  loc_B3CD2F: VCallAd Control_ID_Label12
  loc_B3CD32: FStAdFunc var_88
  loc_B3CD35: FLdPr var_88
  loc_B3CD38: Me.Caption = from_stack_1
  loc_B3CD3D: FFree1Ad var_88
  loc_B3CD40: Branch loc_B3D1A3
  loc_B3CD43: FLdRfVar var_8C
  loc_B3CD46: FLdPrThis
  loc_B3CD47: VCallAd Control_ID_tbQuestion
  loc_B3CD4A: FStAdFunc var_88
  loc_B3CD4D: FLdPr var_88
  loc_B3CD50:  = Me.Text
  loc_B3CD55: LitI4 &HD
  loc_B3CD5A: FLdRfVar var_AC
  loc_B3CD5D: ImpAdCallFPR4  = Chr()
  loc_B3CD62: FLdRfVar var_94
  loc_B3CD65: FLdPrThis
  loc_B3CD66: VCallAd Control_ID_tbAA
  loc_B3CD69: FStAdFunc var_90
  loc_B3CD6C: FLdPr var_90
  loc_B3CD6F:  = Me.Text
  loc_B3CD74: LitI4 &HD
  loc_B3CD79: FLdRfVar var_11C
  loc_B3CD7C: ImpAdCallFPR4  = Chr()
  loc_B3CD81: FLdRfVar var_9C
  loc_B3CD84: FLdPrThis
  loc_B3CD85: VCallAd Control_ID_tbAB
  loc_B3CD88: FStAdFunc var_98
  loc_B3CD8B: FLdPr var_98
  loc_B3CD8E:  = Me.Text
  loc_B3CD93: LitI4 2
  loc_B3CD98: FLdRfVar var_17C
  loc_B3CD9B: ImpAdCallFPR4  = Chr()
  loc_B3CDA0: LitI4 &H22
  loc_B3CDA5: LitStr "AO"
  loc_B3CDA8: ILdRf var_8C
  loc_B3CDAB: ConcatStr
  loc_B3CDAC: CVarStr var_BC
  loc_B3CDAF: FLdRfVar var_AC
  loc_B3CDB2: ConcatVar var_CC
  loc_B3CDB6: LitVarStr var_DC, "1:"
  loc_B3CDBB: ConcatVar var_EC
  loc_B3CDBF: FLdZeroAd var_94
  loc_B3CDC2: CVarStr var_FC
  loc_B3CDC5: ConcatVar var_10C
  loc_B3CDC9: FLdRfVar var_11C
  loc_B3CDCC: ConcatVar var_12C
  loc_B3CDD0: LitVarStr var_13C, "2:"
  loc_B3CDD5: ConcatVar var_14C
  loc_B3CDD9: FLdZeroAd var_9C
  loc_B3CDDC: CVarStr var_15C
  loc_B3CDDF: ConcatVar var_16C
  loc_B3CDE3: FLdRfVar var_17C
  loc_B3CDE6: ConcatVar var_18C
  loc_B3CDEA: CStrVarVal var_190
  loc_B3CDEE: FLdRfVar var_1A0
  loc_B3CDF1: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B3CDF6: FFreeStr var_8C = ""
  loc_B3CDFD: FFreeAd var_88 = "": var_90 = ""
  loc_B3CE06: FFreeVar var_BC = "": var_AC = "": var_CC = "": var_EC = "": var_FC = "": var_10C = "": var_11C = "": var_12C = "": var_14C = "": var_15C = "": var_16C = "": var_17C = "": var_18C = ""
  loc_B3CE25: FLdRfVar var_8C
  loc_B3CE28: FLdPrThis
  loc_B3CE29: VCallAd Control_ID_tbAC
  loc_B3CE2C: FStAdFunc var_88
  loc_B3CE2F: FLdPr var_88
  loc_B3CE32:  = Me.Text
  loc_B3CE37: ILdRf var_8C
  loc_B3CE3A: LitStr vbNullString
  loc_B3CE3D: EqStr
  loc_B3CE3F: FFree1Str var_8C
  loc_B3CE42: FFree1Ad var_88
  loc_B3CE45: BranchF loc_B3CE60
  loc_B3CE48: LitStr "2"
  loc_B3CE4B: FLdPrThis
  loc_B3CE4C: VCallAd Control_ID_questionamount
  loc_B3CE4F: FStAdFunc var_88
  loc_B3CE52: FLdPr var_88
  loc_B3CE55: Me.Text = from_stack_1
  loc_B3CE5A: FFree1Ad var_88
  loc_B3CE5D: Branch loc_B3D0EA
  loc_B3CE60: LitI4 &HD
  loc_B3CE65: FLdRfVar var_AC
  loc_B3CE68: ImpAdCallFPR4  = Chr()
  loc_B3CE6D: FLdRfVar var_8C
  loc_B3CE70: FLdPrThis
  loc_B3CE71: VCallAd Control_ID_tbAC
  loc_B3CE74: FStAdFunc var_88
  loc_B3CE77: FLdPr var_88
  loc_B3CE7A:  = Me.Text
  loc_B3CE7F: LitI4 2
  loc_B3CE84: FLdRfVar var_FC
  loc_B3CE87: ImpAdCallFPR4  = Chr()
  loc_B3CE8C: LitI4 &H22
  loc_B3CE91: FLdRfVar var_AC
  loc_B3CE94: LitVarStr var_DC, "3:"
  loc_B3CE99: ConcatVar var_BC
  loc_B3CE9D: FLdZeroAd var_8C
  loc_B3CEA0: CVarStr var_CC
  loc_B3CEA3: ConcatVar var_EC
  loc_B3CEA7: FLdRfVar var_FC
  loc_B3CEAA: ConcatVar var_10C
  loc_B3CEAE: CStrVarVal var_94
  loc_B3CEB2: FLdRfVar var_11C
  loc_B3CEB5: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B3CEBA: FFree1Str var_94
  loc_B3CEBD: FFree1Ad var_88
  loc_B3CEC0: FFreeVar var_AC = "": var_BC = "": var_CC = "": var_EC = "": var_FC = "": var_10C = ""
  loc_B3CED1: LitStr "3"
  loc_B3CED4: FLdPrThis
  loc_B3CED5: VCallAd Control_ID_questionamount
  loc_B3CED8: FStAdFunc var_88
  loc_B3CEDB: FLdPr var_88
  loc_B3CEDE: Me.Text = from_stack_1
  loc_B3CEE3: FFree1Ad var_88
  loc_B3CEE6: FLdRfVar var_8C
  loc_B3CEE9: FLdPrThis
  loc_B3CEEA: VCallAd Control_ID_tbAD
  loc_B3CEED: FStAdFunc var_88
  loc_B3CEF0: FLdPr var_88
  loc_B3CEF3:  = Me.Text
  loc_B3CEF8: ILdRf var_8C
  loc_B3CEFB: LitStr vbNullString
  loc_B3CEFE: EqStr
  loc_B3CF00: FFree1Str var_8C
  loc_B3CF03: FFree1Ad var_88
  loc_B3CF06: BranchF loc_B3CF0C
  loc_B3CF09: Branch loc_B3D0EA
  loc_B3CF0C: LitI4 &HD
  loc_B3CF11: FLdRfVar var_AC
  loc_B3CF14: ImpAdCallFPR4  = Chr()
  loc_B3CF19: FLdRfVar var_8C
  loc_B3CF1C: FLdPrThis
  loc_B3CF1D: VCallAd Control_ID_tbAD
  loc_B3CF20: FStAdFunc var_88
  loc_B3CF23: FLdPr var_88
  loc_B3CF26:  = Me.Text
  loc_B3CF2B: LitI4 2
  loc_B3CF30: FLdRfVar var_FC
  loc_B3CF33: ImpAdCallFPR4  = Chr()
  loc_B3CF38: LitI4 &H22
  loc_B3CF3D: FLdRfVar var_AC
  loc_B3CF40: LitVarStr var_DC, "4:"
  loc_B3CF45: ConcatVar var_BC
  loc_B3CF49: FLdZeroAd var_8C
  loc_B3CF4C: CVarStr var_CC
  loc_B3CF4F: ConcatVar var_EC
  loc_B3CF53: FLdRfVar var_FC
  loc_B3CF56: ConcatVar var_10C
  loc_B3CF5A: CStrVarVal var_94
  loc_B3CF5E: FLdRfVar var_11C
  loc_B3CF61: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B3CF66: FFree1Str var_94
  loc_B3CF69: FFree1Ad var_88
  loc_B3CF6C: FFreeVar var_AC = "": var_BC = "": var_CC = "": var_EC = "": var_FC = "": var_10C = ""
  loc_B3CF7D: LitStr "4"
  loc_B3CF80: FLdPrThis
  loc_B3CF81: VCallAd Control_ID_questionamount
  loc_B3CF84: FStAdFunc var_88
  loc_B3CF87: FLdPr var_88
  loc_B3CF8A: Me.Text = from_stack_1
  loc_B3CF8F: FFree1Ad var_88
  loc_B3CF92: FLdRfVar var_8C
  loc_B3CF95: FLdPrThis
  loc_B3CF96: VCallAd Control_ID_tbAE
  loc_B3CF99: FStAdFunc var_88
  loc_B3CF9C: FLdPr var_88
  loc_B3CF9F:  = Me.Text
  loc_B3CFA4: ILdRf var_8C
  loc_B3CFA7: LitStr vbNullString
  loc_B3CFAA: EqStr
  loc_B3CFAC: FFree1Str var_8C
  loc_B3CFAF: FFree1Ad var_88
  loc_B3CFB2: BranchF loc_B3CFB8
  loc_B3CFB5: Branch loc_B3D0EA
  loc_B3CFB8: LitI4 &HD
  loc_B3CFBD: FLdRfVar var_AC
  loc_B3CFC0: ImpAdCallFPR4  = Chr()
  loc_B3CFC5: FLdRfVar var_8C
  loc_B3CFC8: FLdPrThis
  loc_B3CFC9: VCallAd Control_ID_tbAE
  loc_B3CFCC: FStAdFunc var_88
  loc_B3CFCF: FLdPr var_88
  loc_B3CFD2:  = Me.Text
  loc_B3CFD7: LitI4 2
  loc_B3CFDC: FLdRfVar var_FC
  loc_B3CFDF: ImpAdCallFPR4  = Chr()
  loc_B3CFE4: LitI4 &H22
  loc_B3CFE9: FLdRfVar var_AC
  loc_B3CFEC: LitVarStr var_DC, "5:"
  loc_B3CFF1: ConcatVar var_BC
  loc_B3CFF5: FLdZeroAd var_8C
  loc_B3CFF8: CVarStr var_CC
  loc_B3CFFB: ConcatVar var_EC
  loc_B3CFFF: FLdRfVar var_FC
  loc_B3D002: ConcatVar var_10C
  loc_B3D006: CStrVarVal var_94
  loc_B3D00A: FLdRfVar var_11C
  loc_B3D00D: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B3D012: FFree1Str var_94
  loc_B3D015: FFree1Ad var_88
  loc_B3D018: FFreeVar var_AC = "": var_BC = "": var_CC = "": var_EC = "": var_FC = "": var_10C = ""
  loc_B3D029: LitStr "5"
  loc_B3D02C: FLdPrThis
  loc_B3D02D: VCallAd Control_ID_questionamount
  loc_B3D030: FStAdFunc var_88
  loc_B3D033: FLdPr var_88
  loc_B3D036: Me.Text = from_stack_1
  loc_B3D03B: FFree1Ad var_88
  loc_B3D03E: FLdRfVar var_8C
  loc_B3D041: FLdPrThis
  loc_B3D042: VCallAd Control_ID_tbAF
  loc_B3D045: FStAdFunc var_88
  loc_B3D048: FLdPr var_88
  loc_B3D04B:  = Me.Text
  loc_B3D050: ILdRf var_8C
  loc_B3D053: LitStr vbNullString
  loc_B3D056: EqStr
  loc_B3D058: FFree1Str var_8C
  loc_B3D05B: FFree1Ad var_88
  loc_B3D05E: BranchF loc_B3D064
  loc_B3D061: Branch loc_B3D0EA
  loc_B3D064: LitI4 &HD
  loc_B3D069: FLdRfVar var_AC
  loc_B3D06C: ImpAdCallFPR4  = Chr()
  loc_B3D071: FLdRfVar var_8C
  loc_B3D074: FLdPrThis
  loc_B3D075: VCallAd Control_ID_tbAF
  loc_B3D078: FStAdFunc var_88
  loc_B3D07B: FLdPr var_88
  loc_B3D07E:  = Me.Text
  loc_B3D083: LitI4 2
  loc_B3D088: FLdRfVar var_FC
  loc_B3D08B: ImpAdCallFPR4  = Chr()
  loc_B3D090: LitI4 &H22
  loc_B3D095: FLdRfVar var_AC
  loc_B3D098: LitVarStr var_DC, "6:"
  loc_B3D09D: ConcatVar var_BC
  loc_B3D0A1: FLdZeroAd var_8C
  loc_B3D0A4: CVarStr var_CC
  loc_B3D0A7: ConcatVar var_EC
  loc_B3D0AB: FLdRfVar var_FC
  loc_B3D0AE: ConcatVar var_10C
  loc_B3D0B2: CStrVarVal var_94
  loc_B3D0B6: FLdRfVar var_11C
  loc_B3D0B9: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B3D0BE: FFree1Str var_94
  loc_B3D0C1: FFree1Ad var_88
  loc_B3D0C4: FFreeVar var_AC = "": var_BC = "": var_CC = "": var_EC = "": var_FC = "": var_10C = ""
  loc_B3D0D5: LitStr "6"
  loc_B3D0D8: FLdPrThis
  loc_B3D0D9: VCallAd Control_ID_questionamount
  loc_B3D0DC: FStAdFunc var_88
  loc_B3D0DF: FLdPr var_88
  loc_B3D0E2: Me.Text = from_stack_1
  loc_B3D0E7: FFree1Ad var_88
  loc_B3D0EA: LitI4 &H22
  loc_B3D0EF: LitStr ""
  loc_B3D0F2: FLdRfVar var_AC
  loc_B3D0F5: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B3D0FA: FFree1Var var_AC = ""
  loc_B3D0FD: LitI2_Byte &HFF
  loc_B3D0FF: FLdPrThis
  loc_B3D100: VCallAd Control_ID_Timer1
  loc_B3D103: FStAdFunc var_88
  loc_B3D106: FLdPr var_88
  loc_B3D109: Me.Enabled = from_stack_1b
  loc_B3D10E: FFree1Ad var_88
  loc_B3D111: LitStr "0"
  loc_B3D114: FLdPrThis
  loc_B3D115: VCallAd Control_ID_AnumA
  loc_B3D118: FStAdFunc var_88
  loc_B3D11B: FLdPr var_88
  loc_B3D11E: Me.Text = from_stack_1
  loc_B3D123: FFree1Ad var_88
  loc_B3D126: LitStr "0"
  loc_B3D129: FLdPrThis
  loc_B3D12A: VCallAd Control_ID_AnumB
  loc_B3D12D: FStAdFunc var_88
  loc_B3D130: FLdPr var_88
  loc_B3D133: Me.Text = from_stack_1
  loc_B3D138: FFree1Ad var_88
  loc_B3D13B: LitStr "0"
  loc_B3D13E: FLdPrThis
  loc_B3D13F: VCallAd Control_ID_AnumC
  loc_B3D142: FStAdFunc var_88
  loc_B3D145: FLdPr var_88
  loc_B3D148: Me.Text = from_stack_1
  loc_B3D14D: FFree1Ad var_88
  loc_B3D150: LitStr "0"
  loc_B3D153: FLdPrThis
  loc_B3D154: VCallAd Control_ID_AnumD
  loc_B3D157: FStAdFunc var_88
  loc_B3D15A: FLdPr var_88
  loc_B3D15D: Me.Text = from_stack_1
  loc_B3D162: FFree1Ad var_88
  loc_B3D165: LitStr "0"
  loc_B3D168: FLdPrThis
  loc_B3D169: VCallAd Control_ID_AnumE
  loc_B3D16C: FStAdFunc var_88
  loc_B3D16F: FLdPr var_88
  loc_B3D172: Me.Text = from_stack_1
  loc_B3D177: FFree1Ad var_88
  loc_B3D17A: LitStr "0"
  loc_B3D17D: FLdPrThis
  loc_B3D17E: VCallAd Control_ID_AnumF
  loc_B3D181: FStAdFunc var_88
  loc_B3D184: FLdPr var_88
  loc_B3D187: Me.Text = from_stack_1
  loc_B3D18C: FFree1Ad var_88
  loc_B3D18F: LitI2_Byte 0
  loc_B3D191: FLdPrThis
  loc_B3D192: VCallAd Control_ID_cmdSendPoll
  loc_B3D195: FStAdFunc var_88
  loc_B3D198: FLdPr var_88
  loc_B3D19B: Me.Enabled = from_stack_1b
  loc_B3D1A0: FFree1Ad var_88
  loc_B3D1A3: ExitProcHresult
End Sub

Private Sub Image16_Click(Index As Integer) 'B187A8
  'Data Table: 546724
  loc_B1879C: FLdPr Me
  loc_B1879F: Me.Hide
  loc_B187A4: ExitProcHresult
  loc_B187A5: ILdI2 Index
End Sub

Private Function Proc_10_6_B19E0C() 'B19E0C
  'Data Table: 546724
  loc_B19DF0: ImpAdLdRf MemVar_C0F1EC
  loc_B19DF3: NewIfNullAd
  loc_B19DF6: FStAdNoPop
  loc_B19DFA: ImpAdLdRf MemVar_C10514
  loc_B19DFD: NewIfNullPr Global
  loc_B19E00: Global.Unload from_stack_1
  loc_B19E05: FFree1Ad var_88
  loc_B19E08: ExitProcHresult
End Function

Private Function Proc_10_7_B181FC() 'B181FC
  'Data Table: 546724
  loc_B181F8: ExitProcHresult
  loc_B181F9: FLdPr Me
End Function
