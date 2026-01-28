VERSION 5.00
Begin VB.Form frmTab_userlock
  Caption = "Form2"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form2"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 2595
  ClientHeight = 3855
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmTab_userlock.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 2610
    Height = 3885
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
      TabIndex = 7
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
    Begin VB.CheckBox chkIPCHECK
      Caption = "Check1"
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 1750
      Top = 2280
      Width = 255
      Height = 255
      TabIndex = 6
      Appearance = 0 'Flat
    End
    Begin VB.CheckBox chkREG
      Caption = "Check1"
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 1750
      Top = 2640
      Width = 255
      Height = 255
      TabIndex = 5
      Appearance = 0 'Flat
    End
    Begin VB.CommandButton cmdCloseIt
      Caption = "X"
      BackColor = &H80000013&
      Left = 2640
      Top = 1200
      Width = 240
      Height = 210
      TabIndex = 4
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
    Begin VB.TextBox txtMaxPerIP
      Left = 1680
      Top = 1605
      Width = 375
      Height = 195
      TabIndex = 3
      BorderStyle = 0 'None
      Alignment = 2 'Center
      Appearance = 0 'Flat
    End
    Begin VB.CheckBox chkLock
      Caption = "chkLock"
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 1750
      Top = 3000
      Width = 255
      Height = 255
      TabIndex = 2
      Appearance = 0 'Flat
    End
    Begin VB.TextBox txtMaxOnline
      Left = 1680
      Top = 1935
      Width = 375
      Height = 195
      TabIndex = 1
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.Label headUserLock
      Caption = "User Lock"
      ForeColor = &HFFFFFF&
      Left = 720
      Top = 240
      Width = 3255
      Height = 255
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
    Begin VB.Label lblInfo
      Caption = "Here are some options for the Userlock System. "
      BackColor = &H80&
      ForeColor = &H80000007&
      Left = 240
      Top = 840
      Width = 1935
      Height = 495
      TabIndex = 13
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblIPCHECK
      Caption = "IP Check:"
      Left = 240
      Top = 2280
      Width = 975
      Height = 255
      TabIndex = 12
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblREG
      Caption = "Registration:"
      Left = 240
      Top = 2640
      Width = 1455
      Height = 255
      TabIndex = 11
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label1
      Caption = "Max. acc per IP:"
      Left = 240
      Top = 1560
      Width = 1455
      Height = 255
      TabIndex = 10
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label2
      Caption = "Max. online:"
      Left = 240
      Top = 1920
      Width = 1455
      Height = 255
      TabIndex = 9
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label3
      Caption = "Hotel Lock:"
      Left = 240
      Top = 3000
      Width = 1455
      Height = 255
      TabIndex = 8
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Command2
      Picture = "frmTab_userlock.frx":00021266
      Left = 240
      Top = 3360
      Width = 2070
      Height = 300
    End
    Begin VB.Image Image2
      Picture = "frmTab_userlock.frx":00023328
      Left = 1560
      Top = 1515
      Width = 600
      Height = 330
    End
    Begin VB.Image Image1
      Picture = "frmTab_userlock.frx":00023DBA
      Left = 1560
      Top = 1860
      Width = 600
      Height = 330
    End
    Begin VB.Image Image16
      Picture = "frmTab_userlock.frx":0002484C
      Left = 2040
      Top = 180
      Width = 360
      Height = 330
    End
  End
End

Attribute VB_Name = "frmTab_userlock"


Private Sub cmdCloseIt_Click() 'B19968
  'Data Table: 542E98
  loc_B19950: ILdRf Me
  loc_B19953: FStAdNoPop
  loc_B19957: ImpAdLdRf MemVar_C10514
  loc_B1995A: NewIfNullPr Global
  loc_B1995D: Global.Unload from_stack_1
  loc_B19962: FFree1Ad var_88
  loc_B19965: ExitProcHresult
End Sub

Private Sub chkIPCHECK_Click() 'B1DD5C
  'Data Table: 542E98
  loc_B1DCE8: FLdRfVar var_8A
  loc_B1DCEB: ImpAdLdRf MemVar_C0F39C
  loc_B1DCEE: NewIfNullPr frmTab_userlock
  loc_B1DCF1: VCallAd Control_ID_chkIPCHECK
  loc_B1DCF4: FStAdFunc var_88
  loc_B1DCF7: FLdPr var_88
  loc_B1DCFA:  = frmTab_userlock.CheckBox.Value
  loc_B1DCFF: FLdI2 var_8A
  loc_B1DD02: CR8I2
  loc_B1DD03: LitStr "1"
  loc_B1DD06: CR8Str
  loc_B1DD08: EqR4
  loc_B1DD09: FFree1Ad var_88
  loc_B1DD0C: BranchF loc_B1DD23
  loc_B1DD0F: ImpAdLdI4 MemVar_C0F03C
  loc_B1DD12: LitStr "1"
  loc_B1DD15: LitStr "ipcheck"
  loc_B1DD18: LitStr "server"
  loc_B1DD1B: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B1DD20: Branch loc_B1DD5B
  loc_B1DD23: FLdRfVar var_8A
  loc_B1DD26: ImpAdLdRf MemVar_C0F39C
  loc_B1DD29: NewIfNullPr frmTab_userlock
  loc_B1DD2C: VCallAd Control_ID_chkIPCHECK
  loc_B1DD2F: FStAdFunc var_88
  loc_B1DD32: FLdPr var_88
  loc_B1DD35:  = frmTab_userlock.CheckBox.Value
  loc_B1DD3A: FLdI2 var_8A
  loc_B1DD3D: CR8I2
  loc_B1DD3E: LitStr "0"
  loc_B1DD41: CR8Str
  loc_B1DD43: EqR4
  loc_B1DD44: FFree1Ad var_88
  loc_B1DD47: BranchF loc_B1DD5B
  loc_B1DD4A: ImpAdLdI4 MemVar_C0F03C
  loc_B1DD4D: LitStr "0"
  loc_B1DD50: LitStr "ipcheck"
  loc_B1DD53: LitStr "server"
  loc_B1DD56: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B1DD5B: ExitProcHresult
End Sub

Private Sub chkREG_Click() 'B1DE04
  'Data Table: 542E98
  loc_B1DD90: FLdRfVar var_8A
  loc_B1DD93: ImpAdLdRf MemVar_C0F39C
  loc_B1DD96: NewIfNullPr frmTab_userlock
  loc_B1DD99: VCallAd Control_ID_chkREG
  loc_B1DD9C: FStAdFunc var_88
  loc_B1DD9F: FLdPr var_88
  loc_B1DDA2:  = frmTab_userlock.CheckBox.Value
  loc_B1DDA7: FLdI2 var_8A
  loc_B1DDAA: CR8I2
  loc_B1DDAB: LitStr "1"
  loc_B1DDAE: CR8Str
  loc_B1DDB0: EqR4
  loc_B1DDB1: FFree1Ad var_88
  loc_B1DDB4: BranchF loc_B1DDCB
  loc_B1DDB7: ImpAdLdI4 MemVar_C0F03C
  loc_B1DDBA: LitStr "1"
  loc_B1DDBD: LitStr "registration"
  loc_B1DDC0: LitStr "server"
  loc_B1DDC3: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B1DDC8: Branch loc_B1DE03
  loc_B1DDCB: FLdRfVar var_8A
  loc_B1DDCE: ImpAdLdRf MemVar_C0F39C
  loc_B1DDD1: NewIfNullPr frmTab_userlock
  loc_B1DDD4: VCallAd Control_ID_chkREG
  loc_B1DDD7: FStAdFunc var_88
  loc_B1DDDA: FLdPr var_88
  loc_B1DDDD:  = frmTab_userlock.CheckBox.Value
  loc_B1DDE2: FLdI2 var_8A
  loc_B1DDE5: CR8I2
  loc_B1DDE6: LitStr "0"
  loc_B1DDE9: CR8Str
  loc_B1DDEB: EqR4
  loc_B1DDEC: FFree1Ad var_88
  loc_B1DDEF: BranchF loc_B1DE03
  loc_B1DDF2: ImpAdLdI4 MemVar_C0F03C
  loc_B1DDF5: LitStr "0"
  loc_B1DDF8: LitStr "registration"
  loc_B1DDFB: LitStr "server"
  loc_B1DDFE: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B1DE03: ExitProcHresult
End Sub

Private Sub chkLock_Click(arg_20) 'B27748
  'Data Table: 542E98
  loc_B275A8: FLdRfVar var_8A
  loc_B275AB: ImpAdLdRf MemVar_C0F39C
  loc_B275AE: NewIfNullPr frmTab_userlock
  loc_B275B1: VCallAd Control_ID_chkLock
  loc_B275B4: FStAdFunc var_88
  loc_B275B7: FLdPr var_88
  loc_B275BA:  = frmTab_userlock.CheckBox.Value
  loc_B275BF: FLdI2 var_8A
  loc_B275C2: CR8I2
  loc_B275C3: LitStr "1"
  loc_B275C6: CR8Str
  loc_B275C8: EqR4
  loc_B275C9: FFree1Ad var_88
  loc_B275CC: BranchF loc_B276FB
  loc_B275CF: ImpAdLdI4 MemVar_C0F03C
  loc_B275D2: LitStr "1"
  loc_B275D5: LitStr "hotel_lock"
  loc_B275D8: LitStr "config"
  loc_B275DB: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B275E0: ImpAdLdI4 MemVar_C0F03C
  loc_B275E3: LitStr "0"
  loc_B275E6: LitStr "registration"
  loc_B275E9: LitStr "server"
  loc_B275EC: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B275F1: LitVarI2 var_D0, 1
  loc_B275F6: FLdRfVar var_9C
  loc_B275F9: FLdRfVar var_A0
  loc_B275FC: ImpAdLdRf MemVar_C0F018
  loc_B275FF: NewIfNullPr frmMain
  loc_B27602: from_stack_1v = frmMain.SockIGet()
  loc_B27607: ILdRf var_A0
  loc_B2760A: CVarI4
  loc_B2760E: ForVar var_F0
  loc_B27614: FLdRfVar var_F4
  loc_B27617: FLdRfVar var_9C
  loc_B2761A: CI2Var
  loc_B2761B: ImpAdLdRf MemVar_C0F018
  loc_B2761E: NewIfNullPr frmMain
  loc_B27621: VCallAd Control_ID_
  loc_B27624: FStAdFunc var_88
  loc_B27627: FLdPr var_88
  loc_B2762A: Set from_stack_2 = frmMain(from_stack_1)
  loc_B2762F: FLdPr var_F4
  loc_B27632: LateIdLdVar var_104 DispID_8 0
  loc_B27639: CI2Var
  loc_B2763A: CI4UI1
  loc_B2763B: LitI4 7
  loc_B27640: EqI4
  loc_B27641: FLdRfVar var_9C
  loc_B27644: CI4Var
  loc_B27646: ImpAdLdI4 MemVar_C0F100
  loc_B27649: Ary1LdPr
  loc_B2764A: MemLdStr global_204
  loc_B2764D: LitStr vbNullString
  loc_B27650: NeStr
  loc_B27652: AndI4
  loc_B27653: FFreeAd var_88 = ""
  loc_B2765A: FFree1Var var_104 = ""
  loc_B2765D: BranchF loc_B276EF
  loc_B27660: LitStr "BK"
  loc_B27663: LitVarStr var_B0, "get_lockhotel"
  loc_B27668: PopAdLdVar
  loc_B27669: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B2766E: FStStrNoPop var_108
  loc_B27671: ConcatStr
  loc_B27672: CVarStr var_118
  loc_B27675: LitI4 1
  loc_B2767A: FLdRfVar var_104
  loc_B2767D: ImpAdCallFPR4  = Chr()
  loc_B27682: FLdRfVar var_104
  loc_B27685: ConcatVar var_128
  loc_B27689: PopAdLdVar
  loc_B2768A: FLdRfVar var_F4
  loc_B2768D: FLdRfVar var_9C
  loc_B27690: CI2Var
  loc_B27691: ImpAdLdRf MemVar_C0F018
  loc_B27694: NewIfNullPr frmMain
  loc_B27697: VCallAd Control_ID_
  loc_B2769A: FStAdFunc var_88
  loc_B2769D: FLdPr var_88
  loc_B276A0: Set from_stack_2 = frmMain(from_stack_1)
  loc_B276A5: FLdPr var_F4
  loc_B276A8: LateIdCall
  loc_B276B0: FFree1Str var_108
  loc_B276B3: FFreeAd var_88 = ""
  loc_B276BA: FFreeVar var_118 = "": var_104 = ""
  loc_B276C3: LitI2_Byte &HFF
  loc_B276C5: FLdRfVar var_F4
  loc_B276C8: FLdRfVar var_9C
  loc_B276CB: CI2Var
  loc_B276CC: ImpAdLdRf MemVar_C0F018
  loc_B276CF: NewIfNullPr frmMain
  loc_B276D2: VCallAd Control_ID_
  loc_B276D5: FStAdFunc var_88
  loc_B276D8: FLdPr var_88
  loc_B276DB: Set from_stack_2 = frmMain(from_stack_1)
  loc_B276E0: FLdPr var_F4
  loc_B276E3: Me.Enabled = from_stack_1b
  loc_B276E8: FFreeAd var_88 = ""
  loc_B276EF: FLdRfVar var_9C
  loc_B276F2: NextStepVar var_F0
  loc_B276F8: Branch loc_B27744
  loc_B276FB: FLdRfVar var_8A
  loc_B276FE: ImpAdLdRf MemVar_C0F39C
  loc_B27701: NewIfNullPr frmTab_userlock
  loc_B27704: VCallAd Control_ID_chkLock
  loc_B27707: FStAdFunc var_88
  loc_B2770A: FLdPr var_88
  loc_B2770D:  = frmTab_userlock.CheckBox.Value
  loc_B27712: FLdI2 var_8A
  loc_B27715: CR8I2
  loc_B27716: LitStr "0"
  loc_B27719: CR8Str
  loc_B2771B: EqR4
  loc_B2771C: FFree1Ad var_88
  loc_B2771F: BranchF loc_B27744
  loc_B27722: ImpAdLdI4 MemVar_C0F03C
  loc_B27725: LitStr "0"
  loc_B27728: LitStr "hotel_lock"
  loc_B2772B: LitStr "config"
  loc_B2772E: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B27733: ImpAdLdI4 MemVar_C0F03C
  loc_B27736: LitStr "1"
  loc_B27739: LitStr "registration"
  loc_B2773C: LitStr "server"
  loc_B2773F: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B27744: ExitProcHresult
  loc_B27745: CCyI2
  loc_B27746: FStFPR8 arg_20FE
End Sub

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1BBB8
  'Data Table: 542E98
  loc_B1BB58: ILdI2 Button
  loc_B1BB5B: LitI2_Byte 1
  loc_B1BB5D: EqI2
  loc_B1BB5E: BranchF loc_B1BBA1
  loc_B1BB61: ImpAdCallI2 ReleaseCapture()
  loc_B1BB66: FStR4 var_8C
  loc_B1BB69: SetLastSystemError
  loc_B1BB6A: ILdRf var_8C
  loc_B1BB6D: CR8I4
  loc_B1BB6E: IStFPR4 X
  loc_B1BB71: FLdRfVar var_8C
  loc_B1BB74: FLdPrThis
  loc_B1BB75:  = Me.hWnd
  loc_B1BB7A: LitI4 0
  loc_B1BB7F: PopTmpLdAdStr var_90
  loc_B1BB82: LitI4 2
  loc_B1BB87: LitI4 &HA1
  loc_B1BB8C: ILdRf var_8C
  loc_B1BB8F: ImpAdCallI2 SendMessage(, , , )
  loc_B1BB94: FStR4 var_94
  loc_B1BB97: SetLastSystemError
  loc_B1BB98: ILdRf var_94
  loc_B1BB9B: FStR4 var_88
  loc_B1BB9E: Branch loc_B1BBB6
  loc_B1BBA1: ILdRf Me
  loc_B1BBA4: FStAdNoPop
  loc_B1BBA8: ImpAdLdRf MemVar_C10514
  loc_B1BBAB: NewIfNullPr Global
  loc_B1BBAE: Global.Unload from_stack_1
  loc_B1BBB3: FFree1Ad var_98
  loc_B1BBB6: ExitProcHresult
End Sub

Private Sub Form_Load() 'B31690
  'Data Table: 542E98
  loc_B31334: LitI4 0
  loc_B31339: FStStrCopy var_C8
  loc_B3133C: FLdRfVar var_C8
  loc_B3133F: ImpAdLdRf MemVar_C0F03C
  loc_B31342: CVarRef
  loc_B31347: LitVarStr var_A4, "foreground"
  loc_B3134C: FStVarCopyObj var_B4
  loc_B3134F: FLdRfVar var_B4
  loc_B31352: LitVarStr var_94, "server"
  loc_B31357: PopAdLdVar
  loc_B31358: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B3135D: FStStrNoPop var_CC
  loc_B31360: LitStr "Y"
  loc_B31363: EqStr
  loc_B31365: FFreeStr var_C8 = ""
  loc_B3136C: FFree1Var var_B4 = ""
  loc_B3136F: BranchF loc_B313A7
  loc_B31372: FLdRfVar var_D0
  loc_B31375: FLdPr Me
  loc_B31378:  = Me.hWnd
  loc_B3137D: LitI4 3
  loc_B31382: LitI4 0
  loc_B31387: LitI4 0
  loc_B3138C: LitI4 0
  loc_B31391: LitI4 0
  loc_B31396: LitI4 -1
  loc_B3139B: ILdRf var_D0
  loc_B3139E: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B313A3: SetLastSystemError
  loc_B313A4: Branch loc_B313D9
  loc_B313A7: FLdRfVar var_D0
  loc_B313AA: FLdPr Me
  loc_B313AD:  = Me.hWnd
  loc_B313B2: LitI4 3
  loc_B313B7: LitI4 0
  loc_B313BC: LitI4 0
  loc_B313C1: LitI4 0
  loc_B313C6: LitI4 0
  loc_B313CB: LitI4 -2
  loc_B313D0: ILdRf var_D0
  loc_B313D3: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B313D8: SetLastSystemError
  loc_B313D9: LitI4 0
  loc_B313DE: FStStrCopy var_C8
  loc_B313E1: FLdRfVar var_C8
  loc_B313E4: ImpAdLdRf MemVar_C0F03C
  loc_B313E7: CVarRef
  loc_B313EC: LitVarStr var_A4, "ipcheck"
  loc_B313F1: FStVarCopyObj var_B4
  loc_B313F4: FLdRfVar var_B4
  loc_B313F7: LitVarStr var_94, "server"
  loc_B313FC: PopAdLdVar
  loc_B313FD: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B31402: FStStrNoPop var_CC
  loc_B31405: LitStr "1"
  loc_B31408: EqStr
  loc_B3140A: FFreeStr var_C8 = ""
  loc_B31411: FFree1Var var_B4 = ""
  loc_B31414: BranchF loc_B31436
  loc_B31417: LitStr "1"
  loc_B3141A: CI2Str
  loc_B3141C: ImpAdLdRf MemVar_C0F39C
  loc_B3141F: NewIfNullPr frmTab_userlock
  loc_B31422: VCallAd Control_ID_chkIPCHECK
  loc_B31425: FStAdFunc var_D4
  loc_B31428: FLdPr var_D4
  loc_B3142B: frmTab_userlock.CheckBox.Value = from_stack_1
  loc_B31430: FFree1Ad var_D4
  loc_B31433: Branch loc_B31490
  loc_B31436: LitI4 0
  loc_B3143B: FStStrCopy var_C8
  loc_B3143E: FLdRfVar var_C8
  loc_B31441: ImpAdLdRf MemVar_C0F03C
  loc_B31444: CVarRef
  loc_B31449: LitVarStr var_A4, "ipcheck"
  loc_B3144E: FStVarCopyObj var_B4
  loc_B31451: FLdRfVar var_B4
  loc_B31454: LitVarStr var_94, "server"
  loc_B31459: PopAdLdVar
  loc_B3145A: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B3145F: FStStrNoPop var_CC
  loc_B31462: LitStr "0"
  loc_B31465: EqStr
  loc_B31467: FFreeStr var_C8 = ""
  loc_B3146E: FFree1Var var_B4 = ""
  loc_B31471: BranchF loc_B31490
  loc_B31474: LitStr "0"
  loc_B31477: CI2Str
  loc_B31479: ImpAdLdRf MemVar_C0F39C
  loc_B3147C: NewIfNullPr frmTab_userlock
  loc_B3147F: VCallAd Control_ID_chkIPCHECK
  loc_B31482: FStAdFunc var_D4
  loc_B31485: FLdPr var_D4
  loc_B31488: frmTab_userlock.CheckBox.Value = from_stack_1
  loc_B3148D: FFree1Ad var_D4
  loc_B31490: LitI4 0
  loc_B31495: FStStrCopy var_C8
  loc_B31498: FLdRfVar var_C8
  loc_B3149B: ImpAdLdRf MemVar_C0F03C
  loc_B3149E: CVarRef
  loc_B314A3: LitVarStr var_A4, "registration"
  loc_B314A8: FStVarCopyObj var_B4
  loc_B314AB: FLdRfVar var_B4
  loc_B314AE: LitVarStr var_94, "server"
  loc_B314B3: PopAdLdVar
  loc_B314B4: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B314B9: FStStrNoPop var_CC
  loc_B314BC: LitStr "1"
  loc_B314BF: EqStr
  loc_B314C1: FFreeStr var_C8 = ""
  loc_B314C8: FFree1Var var_B4 = ""
  loc_B314CB: BranchF loc_B314ED
  loc_B314CE: LitStr "1"
  loc_B314D1: CI2Str
  loc_B314D3: ImpAdLdRf MemVar_C0F39C
  loc_B314D6: NewIfNullPr frmTab_userlock
  loc_B314D9: VCallAd Control_ID_chkREG
  loc_B314DC: FStAdFunc var_D4
  loc_B314DF: FLdPr var_D4
  loc_B314E2: frmTab_userlock.CheckBox.Value = from_stack_1
  loc_B314E7: FFree1Ad var_D4
  loc_B314EA: Branch loc_B31547
  loc_B314ED: LitI4 0
  loc_B314F2: FStStrCopy var_C8
  loc_B314F5: FLdRfVar var_C8
  loc_B314F8: ImpAdLdRf MemVar_C0F03C
  loc_B314FB: CVarRef
  loc_B31500: LitVarStr var_A4, "registration"
  loc_B31505: FStVarCopyObj var_B4
  loc_B31508: FLdRfVar var_B4
  loc_B3150B: LitVarStr var_94, "server"
  loc_B31510: PopAdLdVar
  loc_B31511: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B31516: FStStrNoPop var_CC
  loc_B31519: LitStr "0"
  loc_B3151C: EqStr
  loc_B3151E: FFreeStr var_C8 = ""
  loc_B31525: FFree1Var var_B4 = ""
  loc_B31528: BranchF loc_B31547
  loc_B3152B: LitStr "0"
  loc_B3152E: CI2Str
  loc_B31530: ImpAdLdRf MemVar_C0F39C
  loc_B31533: NewIfNullPr frmTab_userlock
  loc_B31536: VCallAd Control_ID_chkREG
  loc_B31539: FStAdFunc var_D4
  loc_B3153C: FLdPr var_D4
  loc_B3153F: frmTab_userlock.CheckBox.Value = from_stack_1
  loc_B31544: FFree1Ad var_D4
  loc_B31547: LitI4 0
  loc_B3154C: FStStrCopy var_C8
  loc_B3154F: FLdRfVar var_C8
  loc_B31552: ImpAdLdRf MemVar_C0F03C
  loc_B31555: CVarRef
  loc_B3155A: LitVarStr var_A4, "hotel_lock"
  loc_B3155F: FStVarCopyObj var_B4
  loc_B31562: FLdRfVar var_B4
  loc_B31565: LitVarStr var_94, "config"
  loc_B3156A: PopAdLdVar
  loc_B3156B: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B31570: FStStrNoPop var_CC
  loc_B31573: LitStr "1"
  loc_B31576: EqStr
  loc_B31578: FFreeStr var_C8 = ""
  loc_B3157F: FFree1Var var_B4 = ""
  loc_B31582: BranchF loc_B315A4
  loc_B31585: LitStr "1"
  loc_B31588: CI2Str
  loc_B3158A: ImpAdLdRf MemVar_C0F39C
  loc_B3158D: NewIfNullPr frmTab_userlock
  loc_B31590: VCallAd Control_ID_chkLock
  loc_B31593: FStAdFunc var_D4
  loc_B31596: FLdPr var_D4
  loc_B31599: frmTab_userlock.CheckBox.Value = from_stack_1
  loc_B3159E: FFree1Ad var_D4
  loc_B315A1: Branch loc_B315FE
  loc_B315A4: LitI4 0
  loc_B315A9: FStStrCopy var_C8
  loc_B315AC: FLdRfVar var_C8
  loc_B315AF: ImpAdLdRf MemVar_C0F03C
  loc_B315B2: CVarRef
  loc_B315B7: LitVarStr var_A4, "hotel_lock"
  loc_B315BC: FStVarCopyObj var_B4
  loc_B315BF: FLdRfVar var_B4
  loc_B315C2: LitVarStr var_94, "config"
  loc_B315C7: PopAdLdVar
  loc_B315C8: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B315CD: FStStrNoPop var_CC
  loc_B315D0: LitStr "0"
  loc_B315D3: EqStr
  loc_B315D5: FFreeStr var_C8 = ""
  loc_B315DC: FFree1Var var_B4 = ""
  loc_B315DF: BranchF loc_B315FE
  loc_B315E2: LitStr "0"
  loc_B315E5: CI2Str
  loc_B315E7: ImpAdLdRf MemVar_C0F39C
  loc_B315EA: NewIfNullPr frmTab_userlock
  loc_B315ED: VCallAd Control_ID_chkLock
  loc_B315F0: FStAdFunc var_D4
  loc_B315F3: FLdPr var_D4
  loc_B315F6: frmTab_userlock.CheckBox.Value = from_stack_1
  loc_B315FB: FFree1Ad var_D4
  loc_B315FE: LitI4 0
  loc_B31603: FStStrCopy var_C8
  loc_B31606: FLdRfVar var_C8
  loc_B31609: ImpAdLdRf MemVar_C0F03C
  loc_B3160C: CVarRef
  loc_B31611: LitVarStr var_A4, "max_ip"
  loc_B31616: FStVarCopyObj var_B4
  loc_B31619: FLdRfVar var_B4
  loc_B3161C: LitVarStr var_94, "server"
  loc_B31621: PopAdLdVar
  loc_B31622: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B31627: FStStrNoPop var_CC
  loc_B3162A: FLdPrThis
  loc_B3162B: VCallAd Control_ID_txtMaxPerIP
  loc_B3162E: FStAdFunc var_D4
  loc_B31631: FLdPr var_D4
  loc_B31634: Me.Text = from_stack_1
  loc_B31639: FFreeStr var_C8 = ""
  loc_B31640: FFree1Ad var_D4
  loc_B31643: FFree1Var var_B4 = ""
  loc_B31646: LitI4 0
  loc_B3164B: FStStrCopy var_C8
  loc_B3164E: FLdRfVar var_C8
  loc_B31651: ImpAdLdRf MemVar_C0F03C
  loc_B31654: CVarRef
  loc_B31659: LitVarStr var_A4, "max_online"
  loc_B3165E: FStVarCopyObj var_B4
  loc_B31661: FLdRfVar var_B4
  loc_B31664: LitVarStr var_94, "server"
  loc_B31669: PopAdLdVar
  loc_B3166A: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B3166F: FStStrNoPop var_CC
  loc_B31672: FLdPrThis
  loc_B31673: VCallAd Control_ID_txtMaxOnline
  loc_B31676: FStAdFunc var_D4
  loc_B31679: FLdPr var_D4
  loc_B3167C: Me.Text = from_stack_1
  loc_B31681: FFreeStr var_C8 = ""
  loc_B31688: FFree1Ad var_D4
  loc_B3168B: FFree1Var var_B4 = ""
  loc_B3168E: ExitProcHresult
End Sub

Private Sub Image16_Click() 'B1894C
  'Data Table: 542E98
  loc_B18940: FLdPr Me
  loc_B18943: Me.Hide
  loc_B18948: ExitProcHresult
  loc_B18949: FLdRfVar var_9C
End Sub

Private Sub Command2_Click() 'B2C13C
  'Data Table: 542E98
  loc_B2BEE0: FLdRfVar var_8C
  loc_B2BEE3: FLdPrThis
  loc_B2BEE4: VCallAd Control_ID_txtMaxPerIP
  loc_B2BEE7: FStAdFunc var_88
  loc_B2BEEA: FLdPr var_88
  loc_B2BEED:  = Me.Text
  loc_B2BEF2: FLdZeroAd var_8C
  loc_B2BEF5: CVarStr var_9C
  loc_B2BEF8: ImpAdCallI2 IsNumeric()
  loc_B2BEFD: LitI2_Byte &HFF
  loc_B2BEFF: EqI2
  loc_B2BF00: FLdRfVar var_A4
  loc_B2BF03: FLdPrThis
  loc_B2BF04: VCallAd Control_ID_txtMaxPerIP
  loc_B2BF07: FStAdFunc var_A0
  loc_B2BF0A: FLdPr var_A0
  loc_B2BF0D:  = Me.Text
  loc_B2BF12: ILdRf var_A4
  loc_B2BF15: LitStr "0"
  loc_B2BF18: EqStr
  loc_B2BF1A: LitI2_Byte 0
  loc_B2BF1C: EqI2
  loc_B2BF1D: AndI4
  loc_B2BF1E: FFree1Str var_A4
  loc_B2BF21: FFreeAd var_88 = ""
  loc_B2BF28: FFree1Var var_9C = ""
  loc_B2BF2B: BranchF loc_B2BF50
  loc_B2BF2E: FLdRfVar var_8C
  loc_B2BF31: FLdPrThis
  loc_B2BF32: VCallAd Control_ID_txtMaxPerIP
  loc_B2BF35: FStAdFunc var_88
  loc_B2BF38: FLdPr var_88
  loc_B2BF3B:  = Me.Text
  loc_B2BF40: FLdZeroAd var_8C
  loc_B2BF43: CVarStr var_9C
  loc_B2BF46: FStVar var_B4
  loc_B2BF4A: FFree1Ad var_88
  loc_B2BF4D: Branch loc_B2BFF4
  loc_B2BF50: FLdRfVar var_8C
  loc_B2BF53: FLdPrThis
  loc_B2BF54: VCallAd Control_ID_txtMaxPerIP
  loc_B2BF57: FStAdFunc var_88
  loc_B2BF5A: FLdPr var_88
  loc_B2BF5D:  = Me.Text
  loc_B2BF62: ILdRf var_8C
  loc_B2BF65: LitStr vbNullString
  loc_B2BF68: EqStr
  loc_B2BF6A: LitI2_Byte &HFF
  loc_B2BF6C: EqI2
  loc_B2BF6D: FLdRfVar var_A4
  loc_B2BF70: FLdPrThis
  loc_B2BF71: VCallAd Control_ID_txtMaxPerIP
  loc_B2BF74: FStAdFunc var_A0
  loc_B2BF77: FLdPr var_A0
  loc_B2BF7A:  = Me.Text
  loc_B2BF7F: ILdRf var_A4
  loc_B2BF82: LitStr "0"
  loc_B2BF85: EqStr
  loc_B2BF87: LitI2_Byte &HFF
  loc_B2BF89: EqI2
  loc_B2BF8A: OrI4
  loc_B2BF8B: FLdRfVar var_BC
  loc_B2BF8E: FLdPrThis
  loc_B2BF8F: VCallAd Control_ID_txtMaxPerIP
  loc_B2BF92: FStAdFunc var_B8
  loc_B2BF95: FLdPr var_B8
  loc_B2BF98:  = Me.Text
  loc_B2BF9D: FLdZeroAd var_BC
  loc_B2BFA0: CVarStr var_9C
  loc_B2BFA3: ImpAdCallI2 IsNumeric()
  loc_B2BFA8: LitI2_Byte 0
  loc_B2BFAA: EqI2
  loc_B2BFAB: OrI4
  loc_B2BFAC: FFreeStr var_8C = ""
  loc_B2BFB3: FFreeAd var_88 = "": var_A0 = ""
  loc_B2BFBC: FFree1Var var_9C = ""
  loc_B2BFBF: BranchF loc_B2BFF4
  loc_B2BFC2: LitVar_Missing var_12C
  loc_B2BFC5: LitVar_Missing var_10C
  loc_B2BFC8: LitVarStr var_DC, "DebboProject :: UserLock system"
  loc_B2BFCD: FStVarCopyObj var_EC
  loc_B2BFD0: FLdRfVar var_EC
  loc_B2BFD3: LitI4 0
  loc_B2BFD8: LitVarStr var_CC, "You need to fill out a valid max accounts per IP limit!"
  loc_B2BFDD: FStVarCopyObj var_9C
  loc_B2BFE0: FLdRfVar var_9C
  loc_B2BFE3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B2BFE8: FFreeVar var_9C = "": var_EC = "": var_10C = ""
  loc_B2BFF3: ExitProcHresult
  loc_B2BFF4: FLdRfVar var_8C
  loc_B2BFF7: FLdPrThis
  loc_B2BFF8: VCallAd Control_ID_txtMaxOnline
  loc_B2BFFB: FStAdFunc var_88
  loc_B2BFFE: FLdPr var_88
  loc_B2C001:  = Me.Text
  loc_B2C006: FLdZeroAd var_8C
  loc_B2C009: CVarStr var_9C
  loc_B2C00C: ImpAdCallI2 IsNumeric()
  loc_B2C011: LitI2_Byte &HFF
  loc_B2C013: EqI2
  loc_B2C014: FLdRfVar var_A4
  loc_B2C017: FLdPrThis
  loc_B2C018: VCallAd Control_ID_txtMaxOnline
  loc_B2C01B: FStAdFunc var_A0
  loc_B2C01E: FLdPr var_A0
  loc_B2C021:  = Me.Text
  loc_B2C026: ILdRf var_A4
  loc_B2C029: LitStr "0"
  loc_B2C02C: EqStr
  loc_B2C02E: LitI2_Byte 0
  loc_B2C030: EqI2
  loc_B2C031: AndI4
  loc_B2C032: FFree1Str var_A4
  loc_B2C035: FFreeAd var_88 = ""
  loc_B2C03C: FFree1Var var_9C = ""
  loc_B2C03F: BranchF loc_B2C064
  loc_B2C042: FLdRfVar var_8C
  loc_B2C045: FLdPrThis
  loc_B2C046: VCallAd Control_ID_txtMaxOnline
  loc_B2C049: FStAdFunc var_88
  loc_B2C04C: FLdPr var_88
  loc_B2C04F:  = Me.Text
  loc_B2C054: FLdZeroAd var_8C
  loc_B2C057: CVarStr var_9C
  loc_B2C05A: FStVar var_13C
  loc_B2C05E: FFree1Ad var_88
  loc_B2C061: Branch loc_B2C108
  loc_B2C064: FLdRfVar var_8C
  loc_B2C067: FLdPrThis
  loc_B2C068: VCallAd Control_ID_txtMaxOnline
  loc_B2C06B: FStAdFunc var_88
  loc_B2C06E: FLdPr var_88
  loc_B2C071:  = Me.Text
  loc_B2C076: ILdRf var_8C
  loc_B2C079: LitStr vbNullString
  loc_B2C07C: EqStr
  loc_B2C07E: LitI2_Byte &HFF
  loc_B2C080: EqI2
  loc_B2C081: FLdRfVar var_A4
  loc_B2C084: FLdPrThis
  loc_B2C085: VCallAd Control_ID_txtMaxOnline
  loc_B2C088: FStAdFunc var_A0
  loc_B2C08B: FLdPr var_A0
  loc_B2C08E:  = Me.Text
  loc_B2C093: ILdRf var_A4
  loc_B2C096: LitStr "0"
  loc_B2C099: EqStr
  loc_B2C09B: LitI2_Byte &HFF
  loc_B2C09D: EqI2
  loc_B2C09E: OrI4
  loc_B2C09F: FLdRfVar var_BC
  loc_B2C0A2: FLdPrThis
  loc_B2C0A3: VCallAd Control_ID_txtMaxOnline
  loc_B2C0A6: FStAdFunc var_B8
  loc_B2C0A9: FLdPr var_B8
  loc_B2C0AC:  = Me.Text
  loc_B2C0B1: FLdZeroAd var_BC
  loc_B2C0B4: CVarStr var_9C
  loc_B2C0B7: ImpAdCallI2 IsNumeric()
  loc_B2C0BC: LitI2_Byte 0
  loc_B2C0BE: EqI2
  loc_B2C0BF: OrI4
  loc_B2C0C0: FFreeStr var_8C = ""
  loc_B2C0C7: FFreeAd var_88 = "": var_A0 = ""
  loc_B2C0D0: FFree1Var var_9C = ""
  loc_B2C0D3: BranchF loc_B2C108
  loc_B2C0D6: LitVar_Missing var_12C
  loc_B2C0D9: LitVar_Missing var_10C
  loc_B2C0DC: LitVarStr var_DC, "HebboProject"
  loc_B2C0E1: FStVarCopyObj var_EC
  loc_B2C0E4: FLdRfVar var_EC
  loc_B2C0E7: LitI4 0
  loc_B2C0EC: LitVarStr var_CC, "You need to fill out a valid max online limit!"
  loc_B2C0F1: FStVarCopyObj var_9C
  loc_B2C0F4: FLdRfVar var_9C
  loc_B2C0F7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B2C0FC: FFreeVar var_9C = "": var_EC = "": var_10C = ""
  loc_B2C107: ExitProcHresult
  loc_B2C108: ImpAdLdI4 MemVar_C0F03C
  loc_B2C10B: FLdRfVar var_B4
  loc_B2C10E: CStrVarVal var_8C
  loc_B2C112: LitStr "max_ip"
  loc_B2C115: LitStr "server"
  loc_B2C118: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2C11D: FFree1Str var_8C
  loc_B2C120: ImpAdLdI4 MemVar_C0F03C
  loc_B2C123: FLdRfVar var_13C
  loc_B2C126: CStrVarVal var_8C
  loc_B2C12A: LitStr "max_online"
  loc_B2C12D: LitStr "server"
  loc_B2C130: ImpAdCallFPR4 Proc_4_1_B1EBF0(, , , )
  loc_B2C135: FFree1Str var_8C
  loc_B2C138: ExitProcHresult
End Sub
