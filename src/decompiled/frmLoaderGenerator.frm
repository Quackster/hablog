VERSION 5.00
Begin VB.Form frmLoaderGenerator
  Caption = "Form2"
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form2"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 4800
  ClientHeight = 3600
  ShowInTaskbar = 0   'False
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmLoaderGenerator.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 11460
    Height = 7815
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.CommandButton Command1
      Caption = "Generate loader"
      BackColor = &H80000013&
      Left = 5760
      Top = 7440
      Width = 2775
      Height = 255
      TabIndex = 5
      Style = 1
    End
    Begin VB.TextBox Text2
      BackColor = &H80000013&
      Left = 2880
      Top = 7410
      Width = 2775
      Height = 285
      Text = "loader_v14.html"
      TabIndex = 4
      Appearance = 0 'Flat
    End
    Begin VB.TextBox Text1
      BackColor = &H80000013&
      Left = 120
      Top = 720
      Width = 11175
      Height = 6615
      Text = "frmLoaderGenerator.frx":0D68
      TabIndex = 3
      MultiLine = -1  'True
      ScrollBars = 3
      Appearance = 0 'Flat
    End
    Begin VB.CommandButton closefrmAutoClose
      Caption = "X"
      BackColor = &H80000013&
      Left = 11040
      Top = 405
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
    Begin VB.Label Label2
      Caption = "Save loader as"
      Left = 120
      Top = 7440
      Width = 2655
      Height = 255
      TabIndex = 6
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label1
      Caption = "Loader Generator (V13, working V14 furni's)"
      ForeColor = &H0&
      Left = 120
      Top = 360
      Width = 10815
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
  End
  Begin VB.Menu mpopupsys
    Caption = "mpopupsys"
    Begin VB.Menu mnuFuncts
      Caption = "Functions"
      Begin VB.Menu mnuMize
        Caption = "Minimize"
        Enabled = 0   'False
      End
      Begin VB.Menu mpoprestore
        Caption = "Restore"
      End
      Begin VB.Menu mpopexit
        Caption = "Exit"
      End
    End
    Begin VB.Menu mnuAbout
      Caption = "About"
    End
  End
  Begin VB.Menu mnuuseronline
    Caption = "User Online"
    Begin VB.Menu mnuFunctions
      Caption = "Functions"
      Begin VB.Menu mnuOnlineBan
        Caption = "Ban"
      End
      Begin VB.Menu mnuOnlineAlert
        Caption = "Alert"
      End
      Begin VB.Menu mnuOnlineCredits
        Caption = "Credits"
      End
    End
    Begin VB.Menu mnuOpt
      Caption = "Options"
      Begin VB.Menu mnuKick
        Caption = "Kick"
      End
    End
    Begin VB.Menu mnuupd
      Caption = "Update Mission"
    End
    Begin VB.Menu mnudisc
      Caption = "Disconnect"
    End
    Begin VB.Menu mnuonlinepostition
      Visible = 0   'False
      Caption = "Position"
    End
    Begin VB.Menu mnuOnlineData
      Visible = 0   'False
      Caption = "Data"
    End
  End
End

Attribute VB_Name = "frmLoaderGenerator"


Private Sub mnuOnlineAlert_Click() 'B193D8
  'Data Table: 5415D0
  loc_B193C4: LitVar_Missing var_A4
  loc_B193C7: PopAdLdVar
  loc_B193C8: LitVar_Missing var_94
  loc_B193CB: PopAdLdVar
  loc_B193CC: ImpAdLdRf MemVar_C0F2DC
  loc_B193CF: NewIfNullPr frmAlert
  loc_B193D2: frmAlert.Show from_stack_1, from_stack_2
  loc_B193D7: ExitProcHresult
End Sub

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1BD74
  'Data Table: 5415D0
  loc_B1BD14: ILdI2 Button
  loc_B1BD17: LitI2_Byte 1
  loc_B1BD19: EqI2
  loc_B1BD1A: BranchF loc_B1BD5D
  loc_B1BD1D: ImpAdCallI2 ReleaseCapture()
  loc_B1BD22: FStR4 var_8C
  loc_B1BD25: SetLastSystemError
  loc_B1BD26: ILdRf var_8C
  loc_B1BD29: CR8I4
  loc_B1BD2A: IStFPR4 X
  loc_B1BD2D: FLdRfVar var_8C
  loc_B1BD30: FLdPrThis
  loc_B1BD31:  = Me.hWnd
  loc_B1BD36: LitI4 0
  loc_B1BD3B: PopTmpLdAdStr var_90
  loc_B1BD3E: LitI4 2
  loc_B1BD43: LitI4 &HA1
  loc_B1BD48: ILdRf var_8C
  loc_B1BD4B: ImpAdCallI2 SendMessage(, , , )
  loc_B1BD50: FStR4 var_94
  loc_B1BD53: SetLastSystemError
  loc_B1BD54: ILdRf var_94
  loc_B1BD57: FStR4 var_88
  loc_B1BD5A: Branch loc_B1BD72
  loc_B1BD5D: ILdRf Me
  loc_B1BD60: FStAdNoPop
  loc_B1BD64: ImpAdLdRf MemVar_C10514
  loc_B1BD67: NewIfNullPr Global
  loc_B1BD6A: Global.Unload from_stack_1
  loc_B1BD6F: FFree1Ad var_98
  loc_B1BD72: ExitProcHresult
End Sub

Private Sub mpopexit_Click() 'B18230
  'Data Table: 5415D0
  loc_B1822C: End
  loc_B1822E: ExitProcHresult
End Sub

Private Sub mnuOnlineBan_Click() 'B195B4
  'Data Table: 5415D0
  loc_B195A0: LitVar_Missing var_A4
  loc_B195A3: PopAdLdVar
  loc_B195A4: LitVar_Missing var_94
  loc_B195A7: PopAdLdVar
  loc_B195A8: ImpAdLdRf MemVar_C0F2F0
  loc_B195AB: NewIfNullPr frmBan
  loc_B195AE: frmBan.Show from_stack_1, from_stack_2
  loc_B195B3: ExitProcHresult
End Sub

Private Sub mpoprestore_Click() 'B1B02C
  'Data Table: 5415D0
  loc_B1AFE4: LitI4 0
  loc_B1AFE9: CI2I4
  loc_B1AFEA: ImpAdLdRf MemVar_C0F018
  loc_B1AFED: NewIfNullPr frmMain
  loc_B1AFF0: frmMain.WindowState = from_stack_1
  loc_B1AFF5: FLdRfVar var_8C
  loc_B1AFF8: ImpAdLdRf MemVar_C0F018
  loc_B1AFFB: NewIfNullPr frmMain
  loc_B1AFFE:  = frmMain.hWnd
  loc_B1B003: ILdRf var_8C
  loc_B1B006: ImpAdCallI2 AllowSetForegroundWindow()
  loc_B1B00B: FStR4 var_90
  loc_B1B00E: SetLastSystemError
  loc_B1B00F: ILdRf var_90
  loc_B1B012: FStR4 var_88
  loc_B1B015: LitVar_Missing var_B0
  loc_B1B018: PopAdLdVar
  loc_B1B019: LitVar_Missing var_A0
  loc_B1B01C: PopAdLdVar
  loc_B1B01D: ImpAdLdRf MemVar_C0F018
  loc_B1B020: NewIfNullPr frmMain
  loc_B1B023: frmMain.Show from_stack_1, from_stack_2
  loc_B1B028: ExitProcHresult
  loc_B1B029: EqCyR8
  loc_B1B02A: CI2I4
End Sub

Private Sub mnuOnlineCredits_Click() 'B194E8
  'Data Table: 5415D0
  loc_B194D4: LitVar_Missing var_A4
  loc_B194D7: PopAdLdVar
  loc_B194D8: LitVar_Missing var_94
  loc_B194DB: PopAdLdVar
  loc_B194DC: ImpAdLdRf MemVar_C0F304
  loc_B194DF: NewIfNullPr frmCredits
  loc_B194E2: frmCredits.Show from_stack_1, from_stack_2
  loc_B194E7: ExitProcHresult
End Sub

Private Sub mnudisc_Click() 'B33030
  'Data Table: 5415D0
  loc_B32CE8: FLdRfVar var_8C
  loc_B32CEB: ImpAdLdRf MemVar_C0F018
  loc_B32CEE: NewIfNullPr frmMain
  loc_B32CF1: VCallAd Control_ID_
  loc_B32CF4: FStAdFunc var_88
  loc_B32CF7: FLdPr var_88
  loc_B32CFA:  = frmMain.ListBox.Text
  loc_B32CFF: LitVarI2 var_CC, 0
  loc_B32D04: PopAdLdVar
  loc_B32D05: LitI4 0
  loc_B32D0A: LitI4 -1
  loc_B32D0F: LitVarStr var_9C, " "
  loc_B32D14: FStVarCopyObj var_AC
  loc_B32D17: FLdRfVar var_AC
  loc_B32D1A: ILdRf var_8C
  loc_B32D1D: FLdRfVar var_BC
  loc_B32D20: ImpAdCallFPR4  = Split(, , , )
  loc_B32D25: FLdRfVar var_BC
  loc_B32D28: VarIndexLdVar
  loc_B32D2E: FStVar var_EC
  loc_B32D32: FFree1Str var_8C
  loc_B32D35: FFree1Ad var_88
  loc_B32D38: FFreeVar var_AC = ""
  loc_B32D3F: LitVarI2 var_DC, 1
  loc_B32D44: FLdRfVar var_10C
  loc_B32D47: FLdRfVar var_110
  loc_B32D4A: ImpAdLdRf MemVar_C0F018
  loc_B32D4D: NewIfNullPr frmMain
  loc_B32D50: from_stack_1v = frmMain.SockIGet()
  loc_B32D55: ILdRf var_110
  loc_B32D58: CVarI4
  loc_B32D5C: ForVar var_130
  loc_B32D62: FLdRfVar var_EC
  loc_B32D65: FLdRfVar var_AC
  loc_B32D68: ImpAdCallFPR4  = LCase()
  loc_B32D6D: FLdRfVar var_AC
  loc_B32D70: FLdRfVar var_10C
  loc_B32D73: CI4Var
  loc_B32D75: ImpAdLdI4 MemVar_C0F100
  loc_B32D78: AryLock
  loc_B32D7B: Ary1LdPr
  loc_B32D7C: MemLdRfVar from_stack_1.global_204
  loc_B32D7F: CVarRef
  loc_B32D84: FLdRfVar var_BC
  loc_B32D87: ImpAdCallFPR4  = LCase()
  loc_B32D8C: AryUnlock
  loc_B32D8F: FLdRfVar var_BC
  loc_B32D92: EqVar var_FC
  loc_B32D96: FLdRfVar var_138
  loc_B32D99: FLdRfVar var_10C
  loc_B32D9C: CI2Var
  loc_B32D9D: ImpAdLdRf MemVar_C0F018
  loc_B32DA0: NewIfNullPr frmMain
  loc_B32DA3: VCallAd Control_ID_
  loc_B32DA6: FStAdFunc var_88
  loc_B32DA9: FLdPr var_88
  loc_B32DAC: Set from_stack_2 = frmMain(from_stack_1)
  loc_B32DB1: FLdPr var_138
  loc_B32DB4: LateIdLdVar var_148 DispID_8 0
  loc_B32DBB: CI2Var
  loc_B32DBC: CI4UI1
  loc_B32DBD: LitI4 7
  loc_B32DC2: EqI4
  loc_B32DC3: CVarBoolI2 var_CC
  loc_B32DC7: AndVar var_158
  loc_B32DCB: CBoolVarNull
  loc_B32DCD: FFreeAd var_88 = ""
  loc_B32DD4: FFreeVar var_AC = "": var_BC = "": var_148 = ""
  loc_B32DDF: BranchF loc_B33026
  loc_B32DE2: LitVarStr var_9C, "@R"
  loc_B32DE7: LitI4 1
  loc_B32DEC: FLdRfVar var_AC
  loc_B32DEF: ImpAdCallFPR4  = Chr()
  loc_B32DF4: FLdRfVar var_AC
  loc_B32DF7: ConcatVar var_BC
  loc_B32DFB: CStrVarVal var_8C
  loc_B32DFF: FLdRfVar var_10C
  loc_B32E02: CI2Var
  loc_B32E03: FLdRfVar var_FC
  loc_B32E06: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_B32E0B: FFree1Str var_8C
  loc_B32E0E: FFreeVar var_AC = "": var_BC = ""
  loc_B32E17: LitVarStr var_9C, "BKYou're will disconnected now."
  loc_B32E1C: LitI4 1
  loc_B32E21: FLdRfVar var_AC
  loc_B32E24: ImpAdCallFPR4  = Chr()
  loc_B32E29: FLdRfVar var_AC
  loc_B32E2C: ConcatVar var_BC
  loc_B32E30: CStrVarVal var_8C
  loc_B32E34: FLdRfVar var_10C
  loc_B32E37: CI2Var
  loc_B32E38: FLdRfVar var_FC
  loc_B32E3B: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_B32E40: FFree1Str var_8C
  loc_B32E43: FFreeVar var_AC = "": var_BC = ""
  loc_B32E4C: FLdRfVar var_10C
  loc_B32E4F: CI4Var
  loc_B32E51: ImpAdLdI4 MemVar_C0F100
  loc_B32E54: Ary1LdPr
  loc_B32E55: MemLdFPR8 global_224
  loc_B32E58: LitI2_Byte 0
  loc_B32E5A: CR8I2
  loc_B32E5B: GtR4
  loc_B32E5C: BranchF loc_B32EFC
  loc_B32E5F: LitI4 1
  loc_B32E64: FLdRfVar var_AC
  loc_B32E67: ImpAdCallFPR4  = Chr()
  loc_B32E6C: FLdRfVar var_10C
  loc_B32E6F: CI4Var
  loc_B32E71: ImpAdLdI4 MemVar_C0F100
  loc_B32E74: Ary1LdPr
  loc_B32E75: MemLdFPR8 global_224
  loc_B32E78: CI4R8
  loc_B32E79: LitStr "@]"
  loc_B32E7C: FLdRfVar var_10C
  loc_B32E7F: CI4Var
  loc_B32E81: ImpAdLdI4 MemVar_C0F100
  loc_B32E84: Ary1LdPr
  loc_B32E85: MemLdStr global_420
  loc_B32E88: CStrI4
  loc_B32E8A: FStStrNoPop var_8C
  loc_B32E8D: ConcatStr
  loc_B32E8E: CVarStr var_BC
  loc_B32E91: FLdRfVar var_AC
  loc_B32E94: ConcatVar var_FC
  loc_B32E98: CStrVarVal var_15C
  loc_B32E9C: FLdRfVar var_148
  loc_B32E9F: ImpAdCallFPR4  = Proc_2_7_B2228C(, )
  loc_B32EA4: FFreeStr var_8C = ""
  loc_B32EAB: FFreeVar var_BC = "": var_AC = "": var_FC = ""
  loc_B32EB6: LitStr "I"
  loc_B32EB9: LitVarStr var_9C, "hotel_view"
  loc_B32EBE: PopAdLdVar
  loc_B32EBF: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B32EC4: FStStrNoPop var_8C
  loc_B32EC7: ConcatStr
  loc_B32EC8: FStStrNoPop var_15C
  loc_B32ECB: FLdRfVar var_10C
  loc_B32ECE: CI4Var
  loc_B32ED0: ImpAdLdI4 MemVar_C0F100
  loc_B32ED3: Ary1LdPr
  loc_B32ED4: MemStStrCopy
  loc_B32ED8: FFreeStr var_8C = ""
  loc_B32EDF: LitI2_Byte 0
  loc_B32EE1: CR8I2
  loc_B32EE2: FLdRfVar var_10C
  loc_B32EE5: CI4Var
  loc_B32EE7: ImpAdLdI4 MemVar_C0F100
  loc_B32EEA: Ary1LdPr
  loc_B32EEB: MemStFPR8 global_224
  loc_B32EEE: LitI2_Byte 0
  loc_B32EF0: FLdRfVar var_10C
  loc_B32EF3: CI4Var
  loc_B32EF5: ImpAdLdI4 MemVar_C0F100
  loc_B32EF8: Ary1LdPr
  loc_B32EF9: MemStI2 global_280
  loc_B32EFC: FLdRfVar var_10C
  loc_B32EFF: CI4Var
  loc_B32F01: ImpAdLdI4 MemVar_C0F100
  loc_B32F04: Ary1LdPr
  loc_B32F05: MemLdI2 global_4
  loc_B32F08: LitI2_Byte 0
  loc_B32F0A: GtI2
  loc_B32F0B: BranchF loc_B32FBA
  loc_B32F0E: LitI4 1
  loc_B32F13: FLdRfVar var_AC
  loc_B32F16: ImpAdCallFPR4  = Chr()
  loc_B32F1B: FLdRfVar var_10C
  loc_B32F1E: CI4Var
  loc_B32F20: ImpAdLdI4 MemVar_C0F100
  loc_B32F23: Ary1LdPr
  loc_B32F24: MemLdI2 global_4
  loc_B32F27: CI4UI1
  loc_B32F28: LitStr "@]"
  loc_B32F2B: FLdRfVar var_10C
  loc_B32F2E: CI4Var
  loc_B32F30: ImpAdLdI4 MemVar_C0F100
  loc_B32F33: Ary1LdPr
  loc_B32F34: MemLdStr global_420
  loc_B32F37: CStrI4
  loc_B32F39: FStStrNoPop var_8C
  loc_B32F3C: ConcatStr
  loc_B32F3D: CVarStr var_BC
  loc_B32F40: FLdRfVar var_AC
  loc_B32F43: ConcatVar var_FC
  loc_B32F47: CStrVarVal var_15C
  loc_B32F4B: FLdRfVar var_148
  loc_B32F4E: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B32F53: FFreeStr var_8C = ""
  loc_B32F5A: FFreeVar var_BC = "": var_AC = "": var_FC = ""
  loc_B32F65: LitStr "I"
  loc_B32F68: LitVarStr var_9C, "hotel_view"
  loc_B32F6D: PopAdLdVar
  loc_B32F6E: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B32F73: FStStrNoPop var_8C
  loc_B32F76: ConcatStr
  loc_B32F77: FStStrNoPop var_15C
  loc_B32F7A: FLdRfVar var_10C
  loc_B32F7D: CI4Var
  loc_B32F7F: ImpAdLdI4 MemVar_C0F100
  loc_B32F82: Ary1LdPr
  loc_B32F83: MemStStrCopy
  loc_B32F87: FFreeStr var_8C = ""
  loc_B32F8E: LitStr vbNullString
  loc_B32F91: FLdRfVar var_10C
  loc_B32F94: CI4Var
  loc_B32F96: ImpAdLdI4 MemVar_C0F100
  loc_B32F99: Ary1LdPr
  loc_B32F9A: MemStStrCopy
  loc_B32F9E: LitI2_Byte 0
  loc_B32FA0: FLdRfVar var_10C
  loc_B32FA3: CI4Var
  loc_B32FA5: ImpAdLdI4 MemVar_C0F100
  loc_B32FA8: Ary1LdPr
  loc_B32FA9: MemStI2 global_4
  loc_B32FAC: LitI2_Byte 0
  loc_B32FAE: FLdRfVar var_10C
  loc_B32FB1: CI4Var
  loc_B32FB3: ImpAdLdI4 MemVar_C0F100
  loc_B32FB6: Ary1LdPr
  loc_B32FB7: MemStI2 global_280
  loc_B32FBA: ImpAdCallFPR4 DoEvents()
  loc_B32FBF: ImpAdCallFPR4 push Timer
  loc_B32FC4: CVarR4
  loc_B32FC8: FStVar var_16C
  loc_B32FCC: ImpAdCallFPR4 DoEvents()
  loc_B32FD1: ImpAdCallFPR4 push Timer
  loc_B32FD6: CVarR4
  loc_B32FDA: FLdRfVar var_16C
  loc_B32FDD: SubVar var_AC
  loc_B32FE1: FStVar var_17C
  loc_B32FE5: FLdRfVar var_17C
  loc_B32FE8: LitVarI2 var_9C, 4
  loc_B32FED: HardType
  loc_B32FEE: GeVarBool
  loc_B32FF0: NotI4
  loc_B32FF1: BranchT loc_B32FCC
  loc_B32FF4: ImpAdCallFPR4 DoEvents()
  loc_B32FF9: FLdRfVar var_138
  loc_B32FFC: FLdRfVar var_10C
  loc_B32FFF: CI2Var
  loc_B33000: ImpAdLdRf MemVar_C0F018
  loc_B33003: NewIfNullPr frmMain
  loc_B33006: VCallAd Control_ID_
  loc_B33009: FStAdFunc var_88
  loc_B3300C: FLdPr var_88
  loc_B3300F: Set from_stack_2 = frmMain(from_stack_1)
  loc_B33014: FLdPr var_138
  loc_B33017: LateIdCall
  loc_B3301F: FFreeAd var_88 = ""
  loc_B33026: FLdRfVar var_10C
  loc_B33029: NextStepVar var_130
  loc_B3302F: ExitProcHresult
End Sub

Private Sub mnuAbout_Click() 'B19570
  'Data Table: 5415D0
  loc_B1955C: LitVar_Missing var_A4
  loc_B1955F: PopAdLdVar
  loc_B19560: LitVar_Missing var_94
  loc_B19563: PopAdLdVar
  loc_B19564: ImpAdLdRf MemVar_C0F354
  loc_B19567: NewIfNullPr frmWelcome
  loc_B1956A: frmWelcome.Show from_stack_1, from_stack_2
  loc_B1956F: ExitProcHresult
End Sub

Private Sub mnuupd_Click() 'B195F8
  'Data Table: 5415D0
  loc_B195E4: LitVar_Missing var_A4
  loc_B195E7: PopAdLdVar
  loc_B195E8: LitVar_Missing var_94
  loc_B195EB: PopAdLdVar
  loc_B195EC: ImpAdLdRf MemVar_C0F340
  loc_B195EF: NewIfNullPr frmUpdateUser
  loc_B195F2: frmUpdateUser.Show from_stack_1, from_stack_2
  loc_B195F7: ExitProcHresult
End Sub

Private Sub mnuKick_Click() 'B304DC
  'Data Table: 5415D0
  loc_B30200: FLdRfVar var_8C
  loc_B30203: ImpAdLdRf MemVar_C0F018
  loc_B30206: NewIfNullPr frmMain
  loc_B30209: VCallAd Control_ID_
  loc_B3020C: FStAdFunc var_88
  loc_B3020F: FLdPr var_88
  loc_B30212:  = frmMain.ListBox.Text
  loc_B30217: LitVarI2 var_CC, 0
  loc_B3021C: PopAdLdVar
  loc_B3021D: LitI4 0
  loc_B30222: LitI4 -1
  loc_B30227: LitVarStr var_9C, " "
  loc_B3022C: FStVarCopyObj var_AC
  loc_B3022F: FLdRfVar var_AC
  loc_B30232: ILdRf var_8C
  loc_B30235: FLdRfVar var_BC
  loc_B30238: ImpAdCallFPR4  = Split(, , , )
  loc_B3023D: FLdRfVar var_BC
  loc_B30240: VarIndexLdVar
  loc_B30246: FStVar var_EC
  loc_B3024A: FFree1Str var_8C
  loc_B3024D: FFree1Ad var_88
  loc_B30250: FFreeVar var_AC = ""
  loc_B30257: LitVarI2 var_DC, 1
  loc_B3025C: FLdRfVar var_10C
  loc_B3025F: FLdRfVar var_110
  loc_B30262: ImpAdLdRf MemVar_C0F018
  loc_B30265: NewIfNullPr frmMain
  loc_B30268: from_stack_1v = frmMain.SockIGet()
  loc_B3026D: ILdRf var_110
  loc_B30270: CVarI4
  loc_B30274: ForVar var_130
  loc_B3027A: FLdRfVar var_EC
  loc_B3027D: FLdRfVar var_AC
  loc_B30280: ImpAdCallFPR4  = LCase()
  loc_B30285: FLdRfVar var_AC
  loc_B30288: FLdRfVar var_10C
  loc_B3028B: CI4Var
  loc_B3028D: ImpAdLdI4 MemVar_C0F100
  loc_B30290: AryLock
  loc_B30293: Ary1LdPr
  loc_B30294: MemLdRfVar from_stack_1.global_204
  loc_B30297: CVarRef
  loc_B3029C: FLdRfVar var_BC
  loc_B3029F: ImpAdCallFPR4  = LCase()
  loc_B302A4: AryUnlock
  loc_B302A7: FLdRfVar var_BC
  loc_B302AA: EqVar var_FC
  loc_B302AE: FLdRfVar var_138
  loc_B302B1: FLdRfVar var_10C
  loc_B302B4: CI2Var
  loc_B302B5: ImpAdLdRf MemVar_C0F018
  loc_B302B8: NewIfNullPr frmMain
  loc_B302BB: VCallAd Control_ID_
  loc_B302BE: FStAdFunc var_88
  loc_B302C1: FLdPr var_88
  loc_B302C4: Set from_stack_2 = frmMain(from_stack_1)
  loc_B302C9: FLdPr var_138
  loc_B302CC: LateIdLdVar var_148 DispID_8 0
  loc_B302D3: CI2Var
  loc_B302D4: CI4UI1
  loc_B302D5: LitI4 7
  loc_B302DA: EqI4
  loc_B302DB: CVarBoolI2 var_CC
  loc_B302DF: AndVar var_158
  loc_B302E3: CBoolVarNull
  loc_B302E5: FFreeAd var_88 = ""
  loc_B302EC: FFreeVar var_AC = "": var_BC = "": var_148 = ""
  loc_B302F7: BranchF loc_B304D2
  loc_B302FA: LitVarStr var_9C, "@R"
  loc_B302FF: LitI4 1
  loc_B30304: FLdRfVar var_AC
  loc_B30307: ImpAdCallFPR4  = Chr()
  loc_B3030C: FLdRfVar var_AC
  loc_B3030F: ConcatVar var_BC
  loc_B30313: CStrVarVal var_8C
  loc_B30317: FLdRfVar var_10C
  loc_B3031A: CI2Var
  loc_B3031B: FLdRfVar var_FC
  loc_B3031E: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_B30323: FFree1Str var_8C
  loc_B30326: FFreeVar var_AC = "": var_BC = ""
  loc_B3032F: LitVarStr var_9C, "BKThe Server has kicked you out the room."
  loc_B30334: LitI4 1
  loc_B30339: FLdRfVar var_AC
  loc_B3033C: ImpAdCallFPR4  = Chr()
  loc_B30341: FLdRfVar var_AC
  loc_B30344: ConcatVar var_BC
  loc_B30348: CStrVarVal var_8C
  loc_B3034C: FLdRfVar var_10C
  loc_B3034F: CI2Var
  loc_B30350: FLdRfVar var_FC
  loc_B30353: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_B30358: FFree1Str var_8C
  loc_B3035B: FFreeVar var_AC = "": var_BC = ""
  loc_B30364: FLdRfVar var_10C
  loc_B30367: CI4Var
  loc_B30369: ImpAdLdI4 MemVar_C0F100
  loc_B3036C: Ary1LdPr
  loc_B3036D: MemLdFPR8 global_224
  loc_B30370: LitI2_Byte 0
  loc_B30372: CR8I2
  loc_B30373: GtR4
  loc_B30374: BranchF loc_B30414
  loc_B30377: LitI4 1
  loc_B3037C: FLdRfVar var_AC
  loc_B3037F: ImpAdCallFPR4  = Chr()
  loc_B30384: FLdRfVar var_10C
  loc_B30387: CI4Var
  loc_B30389: ImpAdLdI4 MemVar_C0F100
  loc_B3038C: Ary1LdPr
  loc_B3038D: MemLdFPR8 global_224
  loc_B30390: CI4R8
  loc_B30391: LitStr "@]"
  loc_B30394: FLdRfVar var_10C
  loc_B30397: CI4Var
  loc_B30399: ImpAdLdI4 MemVar_C0F100
  loc_B3039C: Ary1LdPr
  loc_B3039D: MemLdStr global_420
  loc_B303A0: CStrI4
  loc_B303A2: FStStrNoPop var_8C
  loc_B303A5: ConcatStr
  loc_B303A6: CVarStr var_BC
  loc_B303A9: FLdRfVar var_AC
  loc_B303AC: ConcatVar var_FC
  loc_B303B0: CStrVarVal var_15C
  loc_B303B4: FLdRfVar var_148
  loc_B303B7: ImpAdCallFPR4  = Proc_2_7_B2228C(, )
  loc_B303BC: FFreeStr var_8C = ""
  loc_B303C3: FFreeVar var_BC = "": var_AC = "": var_FC = ""
  loc_B303CE: LitStr "I"
  loc_B303D1: LitVarStr var_9C, "hotel_view"
  loc_B303D6: PopAdLdVar
  loc_B303D7: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B303DC: FStStrNoPop var_8C
  loc_B303DF: ConcatStr
  loc_B303E0: FStStrNoPop var_15C
  loc_B303E3: FLdRfVar var_10C
  loc_B303E6: CI4Var
  loc_B303E8: ImpAdLdI4 MemVar_C0F100
  loc_B303EB: Ary1LdPr
  loc_B303EC: MemStStrCopy
  loc_B303F0: FFreeStr var_8C = ""
  loc_B303F7: LitI2_Byte 0
  loc_B303F9: CR8I2
  loc_B303FA: FLdRfVar var_10C
  loc_B303FD: CI4Var
  loc_B303FF: ImpAdLdI4 MemVar_C0F100
  loc_B30402: Ary1LdPr
  loc_B30403: MemStFPR8 global_224
  loc_B30406: LitI2_Byte 0
  loc_B30408: FLdRfVar var_10C
  loc_B3040B: CI4Var
  loc_B3040D: ImpAdLdI4 MemVar_C0F100
  loc_B30410: Ary1LdPr
  loc_B30411: MemStI2 global_280
  loc_B30414: FLdRfVar var_10C
  loc_B30417: CI4Var
  loc_B30419: ImpAdLdI4 MemVar_C0F100
  loc_B3041C: Ary1LdPr
  loc_B3041D: MemLdI2 global_4
  loc_B30420: LitI2_Byte 0
  loc_B30422: GtI2
  loc_B30423: BranchF loc_B304D2
  loc_B30426: LitI4 1
  loc_B3042B: FLdRfVar var_AC
  loc_B3042E: ImpAdCallFPR4  = Chr()
  loc_B30433: FLdRfVar var_10C
  loc_B30436: CI4Var
  loc_B30438: ImpAdLdI4 MemVar_C0F100
  loc_B3043B: Ary1LdPr
  loc_B3043C: MemLdI2 global_4
  loc_B3043F: CI4UI1
  loc_B30440: LitStr "@]"
  loc_B30443: FLdRfVar var_10C
  loc_B30446: CI4Var
  loc_B30448: ImpAdLdI4 MemVar_C0F100
  loc_B3044B: Ary1LdPr
  loc_B3044C: MemLdStr global_420
  loc_B3044F: CStrI4
  loc_B30451: FStStrNoPop var_8C
  loc_B30454: ConcatStr
  loc_B30455: CVarStr var_BC
  loc_B30458: FLdRfVar var_AC
  loc_B3045B: ConcatVar var_FC
  loc_B3045F: CStrVarVal var_15C
  loc_B30463: FLdRfVar var_148
  loc_B30466: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B3046B: FFreeStr var_8C = ""
  loc_B30472: FFreeVar var_BC = "": var_AC = "": var_FC = ""
  loc_B3047D: LitStr "I"
  loc_B30480: LitVarStr var_9C, "hotel_view"
  loc_B30485: PopAdLdVar
  loc_B30486: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B3048B: FStStrNoPop var_8C
  loc_B3048E: ConcatStr
  loc_B3048F: FStStrNoPop var_15C
  loc_B30492: FLdRfVar var_10C
  loc_B30495: CI4Var
  loc_B30497: ImpAdLdI4 MemVar_C0F100
  loc_B3049A: Ary1LdPr
  loc_B3049B: MemStStrCopy
  loc_B3049F: FFreeStr var_8C = ""
  loc_B304A6: LitStr vbNullString
  loc_B304A9: FLdRfVar var_10C
  loc_B304AC: CI4Var
  loc_B304AE: ImpAdLdI4 MemVar_C0F100
  loc_B304B1: Ary1LdPr
  loc_B304B2: MemStStrCopy
  loc_B304B6: LitI2_Byte 0
  loc_B304B8: FLdRfVar var_10C
  loc_B304BB: CI4Var
  loc_B304BD: ImpAdLdI4 MemVar_C0F100
  loc_B304C0: Ary1LdPr
  loc_B304C1: MemStI2 global_4
  loc_B304C4: LitI2_Byte 0
  loc_B304C6: FLdRfVar var_10C
  loc_B304C9: CI4Var
  loc_B304CB: ImpAdLdI4 MemVar_C0F100
  loc_B304CE: Ary1LdPr
  loc_B304CF: MemStI2 global_280
  loc_B304D2: FLdRfVar var_10C
  loc_B304D5: NextStepVar var_130
  loc_B304DB: ExitProcHresult
End Sub

Private Sub closefrmAutoClose_Click() 'B19BDC
  'Data Table: 5415D0
  loc_B19BC0: ImpAdLdRf MemVar_C0F32C
  loc_B19BC3: NewIfNullAd
  loc_B19BC6: FStAdNoPop
  loc_B19BCA: ImpAdLdRf MemVar_C10514
  loc_B19BCD: NewIfNullPr Global
  loc_B19BD0: Global.Unload from_stack_1
  loc_B19BD5: FFree1Ad var_88
  loc_B19BD8: ExitProcHresult
  loc_B19BD9: ConcatStr
  loc_B19BDA: FStStrNoPop arg_581C
End Sub

Private Sub Command1_Click() 'B1FA34
  'Data Table: 5415D0
  loc_B1F9A0: FLdRfVar var_94
  loc_B1F9A3: FLdPrThis
  loc_B1F9A4: VCallAd Control_ID_Text1
  loc_B1F9A7: FStAdFunc var_90
  loc_B1F9AA: FLdPr var_90
  loc_B1F9AD:  = Me.Text
  loc_B1F9B2: FLdZeroAd var_94
  loc_B1F9B5: FStStr var_88
  loc_B1F9B8: FFree1Ad var_90
  loc_B1F9BB: LitVar_Missing var_B4
  loc_B1F9BE: ImpAdCallI2 FreeFile()
  loc_B1F9C3: FStI2 var_8A
  loc_B1F9C6: FFree1Var var_B4 = ""
  loc_B1F9C9: LitStr vbNullString
  loc_B1F9CC: FLdRfVar var_94
  loc_B1F9CF: FLdPrThis
  loc_B1F9D0: VCallAd Control_ID_Text2
  loc_B1F9D3: FStAdFunc var_90
  loc_B1F9D6: FLdPr var_90
  loc_B1F9D9:  = Me.Text
  loc_B1F9DE: ILdRf var_94
  loc_B1F9E1: ConcatStr
  loc_B1F9E2: FStStrNoPop var_B8
  loc_B1F9E5: FLdI2 var_8A
  loc_B1F9E8: LitI2_Byte &HFF
  loc_B1F9EA: OpenFile
  loc_B1F9EE: FFreeStr var_94 = ""
  loc_B1F9F5: FFree1Ad var_90
  loc_B1F9F8: ILdRf var_88
  loc_B1F9FB: FLdI2 var_8A
  loc_B1F9FE: PrintFile
  loc_B1FA04: FLdI2 var_8A
  loc_B1FA07: Close
  loc_B1FA09: LitVar_Missing var_118
  loc_B1FA0C: LitVar_Missing var_F8
  loc_B1FA0F: LitVar_Missing var_D8
  loc_B1FA12: LitI4 0
  loc_B1FA17: LitVarStr var_A4, "Loader succesfully generated!"
  loc_B1FA1C: FStVarCopyObj var_B4
  loc_B1FA1F: FLdRfVar var_B4
  loc_B1FA22: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B1FA27: FFreeVar var_B4 = "": var_D8 = "": var_F8 = ""
  loc_B1FA32: ExitProcHresult
End Sub

Private Sub Form_Load(arg_14) 'B1F5EC
  'Data Table: 5415D0
  loc_B1F544: LitI2 7815
  loc_B1F547: CR8I2
  loc_B1F548: PopFPR4
  loc_B1F549: FLdPr Me
  loc_B1F54C: Me.Height = from_stack_1s
  loc_B1F551: LitI2 11460
  loc_B1F554: CR8I2
  loc_B1F555: PopFPR4
  loc_B1F556: FLdPr Me
  loc_B1F559: Me.Width = from_stack_1s
  loc_B1F55E: FLdRfVar var_8A
  loc_B1F561: ImpAdLdRf MemVar_C0F018
  loc_B1F564: NewIfNullPr frmMain
  loc_B1F567: VCallAd Control_ID_
  loc_B1F56A: FStAdFunc var_88
  loc_B1F56D: FLdPr var_88
  loc_B1F570:  = frmMain.CheckBox.Value
  loc_B1F575: FLdI2 var_8A
  loc_B1F578: LitI2_Byte 1
  loc_B1F57A: EqI2
  loc_B1F57B: FFree1Ad var_88
  loc_B1F57E: BranchF loc_B1F5B6
  loc_B1F581: FLdRfVar var_90
  loc_B1F584: FLdPr Me
  loc_B1F587:  = Me.hWnd
  loc_B1F58C: LitI4 3
  loc_B1F591: LitI4 0
  loc_B1F596: LitI4 0
  loc_B1F59B: LitI4 0
  loc_B1F5A0: LitI4 0
  loc_B1F5A5: LitI4 -1
  loc_B1F5AA: ILdRf var_90
  loc_B1F5AD: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B1F5B2: SetLastSystemError
  loc_B1F5B3: Branch loc_B1F5E8
  loc_B1F5B6: FLdRfVar var_90
  loc_B1F5B9: FLdPr Me
  loc_B1F5BC:  = Me.hWnd
  loc_B1F5C1: LitI4 3
  loc_B1F5C6: LitI4 0
  loc_B1F5CB: LitI4 0
  loc_B1F5D0: LitI4 0
  loc_B1F5D5: LitI4 0
  loc_B1F5DA: LitI4 -2
  loc_B1F5DF: ILdRf var_90
  loc_B1F5E2: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B1F5E7: SetLastSystemError
  loc_B1F5E8: ExitProcHresult
  loc_B1F5E9: FLdRfVar arg_14
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1C214
  'Data Table: 5415D0
  loc_B1C1B4: ILdI2 Button
  loc_B1C1B7: LitI2_Byte 1
  loc_B1C1B9: EqI2
  loc_B1C1BA: BranchF loc_B1C1FD
  loc_B1C1BD: ImpAdCallI2 ReleaseCapture()
  loc_B1C1C2: FStR4 var_8C
  loc_B1C1C5: SetLastSystemError
  loc_B1C1C6: ILdRf var_8C
  loc_B1C1C9: CR8I4
  loc_B1C1CA: IStFPR4 X
  loc_B1C1CD: FLdRfVar var_8C
  loc_B1C1D0: FLdPrThis
  loc_B1C1D1:  = Me.hWnd
  loc_B1C1D6: LitI4 0
  loc_B1C1DB: PopTmpLdAdStr var_90
  loc_B1C1DE: LitI4 2
  loc_B1C1E3: LitI4 &HA1
  loc_B1C1E8: ILdRf var_8C
  loc_B1C1EB: ImpAdCallI2 SendMessage(, , , )
  loc_B1C1F0: FStR4 var_94
  loc_B1C1F3: SetLastSystemError
  loc_B1C1F4: ILdRf var_94
  loc_B1C1F7: FStR4 var_88
  loc_B1C1FA: Branch loc_B1C212
  loc_B1C1FD: ILdRf Me
  loc_B1C200: FStAdNoPop
  loc_B1C204: ImpAdLdRf MemVar_C10514
  loc_B1C207: NewIfNullPr Global
  loc_B1C20A: Global.Unload from_stack_1
  loc_B1C20F: FFree1Ad var_98
  loc_B1C212: ExitProcHresult
End Sub

Private Function Proc_20_14_B23E00() 'B23E00
  'Data Table: 5415D0
  loc_B23CE8: FLdRfVar var_8C
  loc_B23CEB: ImpAdLdRf MemVar_C0F018
  loc_B23CEE: NewIfNullPr frmMain
  loc_B23CF1: VCallAd Control_ID_
  loc_B23CF4: FStAdFunc var_88
  loc_B23CF7: FLdPr var_88
  loc_B23CFA:  = frmMain.ListBox.Text
  loc_B23CFF: LitVarI2 var_CC, 0
  loc_B23D04: PopAdLdVar
  loc_B23D05: LitI4 0
  loc_B23D0A: LitI4 -1
  loc_B23D0F: LitVarStr var_9C, " "
  loc_B23D14: FStVarCopyObj var_AC
  loc_B23D17: FLdRfVar var_AC
  loc_B23D1A: ILdRf var_8C
  loc_B23D1D: FLdRfVar var_BC
  loc_B23D20: ImpAdCallFPR4  = Split(, , , )
  loc_B23D25: FLdRfVar var_BC
  loc_B23D28: VarIndexLdVar
  loc_B23D2E: FStVar var_EC
  loc_B23D32: FFree1Str var_8C
  loc_B23D35: FFree1Ad var_88
  loc_B23D38: FFreeVar var_AC = ""
  loc_B23D3F: LitVarI2 var_DC, 1
  loc_B23D44: FLdRfVar var_10C
  loc_B23D47: FLdRfVar var_110
  loc_B23D4A: ImpAdLdRf MemVar_C0F018
  loc_B23D4D: NewIfNullPr frmMain
  loc_B23D50: from_stack_1v = frmMain.SockIGet()
  loc_B23D55: ILdRf var_110
  loc_B23D58: CVarI4
  loc_B23D5C: ForVar var_130
  loc_B23D62: FLdRfVar var_EC
  loc_B23D65: FLdRfVar var_AC
  loc_B23D68: ImpAdCallFPR4  = LCase()
  loc_B23D6D: FLdRfVar var_AC
  loc_B23D70: FLdRfVar var_10C
  loc_B23D73: CI4Var
  loc_B23D75: ImpAdLdI4 MemVar_C0F100
  loc_B23D78: AryLock
  loc_B23D7B: Ary1LdPr
  loc_B23D7C: MemLdRfVar from_stack_1.global_204
  loc_B23D7F: CVarRef
  loc_B23D84: FLdRfVar var_BC
  loc_B23D87: ImpAdCallFPR4  = LCase()
  loc_B23D8C: AryUnlock
  loc_B23D8F: FLdRfVar var_BC
  loc_B23D92: EqVar var_FC
  loc_B23D96: FLdRfVar var_138
  loc_B23D99: FLdRfVar var_10C
  loc_B23D9C: CI2Var
  loc_B23D9D: ImpAdLdRf MemVar_C0F018
  loc_B23DA0: NewIfNullPr frmMain
  loc_B23DA3: VCallAd Control_ID_
  loc_B23DA6: FStAdFunc var_88
  loc_B23DA9: FLdPr var_88
  loc_B23DAC: Set from_stack_2 = frmMain(from_stack_1)
  loc_B23DB1: FLdPr var_138
  loc_B23DB4: LateIdLdVar var_148 DispID_8 0
  loc_B23DBB: CI2Var
  loc_B23DBC: CI4UI1
  loc_B23DBD: LitI4 7
  loc_B23DC2: EqI4
  loc_B23DC3: CVarBoolI2 var_CC
  loc_B23DC7: AndVar var_158
  loc_B23DCB: CBoolVarNull
  loc_B23DCD: FFreeAd var_88 = ""
  loc_B23DD4: FFreeVar var_AC = "": var_BC = "": var_148 = ""
  loc_B23DDF: BranchF loc_B23DF4
  loc_B23DE2: LitStr "@y1"
  loc_B23DE5: FLdRfVar var_10C
  loc_B23DE8: CI2Var
  loc_B23DE9: FLdRfVar var_AC
  loc_B23DEC: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_B23DF1: FFree1Var var_AC = ""
  loc_B23DF4: FLdRfVar var_10C
  loc_B23DF7: NextStepVar var_130
  loc_B23DFD: ExitProcHresult
End Function
