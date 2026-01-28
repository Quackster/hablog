VERSION 5.00
Begin VB.Form frmCredits
  Caption = "Form2"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form2"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 2595
  ClientHeight = 2235
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmCredits.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 2655
    Height = 2265
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.TextBox Text1
      BackColor = &H8000000E&
      Left = 240
      Top = 1440
      Width = 2055
      Height = 285
      TabIndex = 1
      MultiLine = -1  'True
      TabStop = 0   'False
      Appearance = 0 'Flat
    End
    Begin VB.Label Label1
      Caption = "Credits"
      ForeColor = &HFFFFFF&
      Left = 480
      Top = 240
      Width = 1695
      Height = 255
      TabIndex = 4
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
    Begin VB.Label Label2
      Caption = "To:"
      Left = 240
      Top = 840
      Width = 2055
      Height = 255
      TabIndex = 3
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label3
      Caption = "Amount:"
      Left = 240
      Top = 1200
      Width = 2055
      Height = 255
      TabIndex = 2
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Command1
      Picture = "frmCredits.frx":00013A0E
      Left = 240
      Top = 1680
      Width = 2055
      Height = 300
    End
    Begin VB.Image Image1
      Picture = "frmCredits.frx":00015A80
      Left = 2010
      Top = 180
      Width = 360
      Height = 330
    End
  End
End

Attribute VB_Name = "frmCredits"


Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1C2A8
  'Data Table: 53DDD4
  loc_B1C248: ILdI2 Button
  loc_B1C24B: LitI2_Byte 1
  loc_B1C24D: EqI2
  loc_B1C24E: BranchF loc_B1C291
  loc_B1C251: ImpAdCallI2 ReleaseCapture()
  loc_B1C256: FStR4 var_8C
  loc_B1C259: SetLastSystemError
  loc_B1C25A: ILdRf var_8C
  loc_B1C25D: CR8I4
  loc_B1C25E: IStFPR4 X
  loc_B1C261: FLdRfVar var_8C
  loc_B1C264: FLdPrThis
  loc_B1C265:  = Me.hWnd
  loc_B1C26A: LitI4 0
  loc_B1C26F: PopTmpLdAdStr var_90
  loc_B1C272: LitI4 2
  loc_B1C277: LitI4 &HA1
  loc_B1C27C: ILdRf var_8C
  loc_B1C27F: ImpAdCallI2 SendMessage(, , , )
  loc_B1C284: FStR4 var_94
  loc_B1C287: SetLastSystemError
  loc_B1C288: ILdRf var_94
  loc_B1C28B: FStR4 var_88
  loc_B1C28E: Branch loc_B1C2A6
  loc_B1C291: ILdRf Me
  loc_B1C294: FStAdNoPop
  loc_B1C298: ImpAdLdRf MemVar_C10514
  loc_B1C29B: NewIfNullPr Global
  loc_B1C29E: Global.Unload from_stack_1
  loc_B1C2A3: FFree1Ad var_98
  loc_B1C2A6: ExitProcHresult
End Sub

Private Sub Form_Load() 'B27F74
  'Data Table: 53DDD4
  loc_B27DAC: LitI4 0
  loc_B27DB1: FStStrCopy var_C8
  loc_B27DB4: FLdRfVar var_C8
  loc_B27DB7: ImpAdLdRf MemVar_C0F03C
  loc_B27DBA: CVarRef
  loc_B27DBF: LitVarStr var_A4, "foreground"
  loc_B27DC4: FStVarCopyObj var_B4
  loc_B27DC7: FLdRfVar var_B4
  loc_B27DCA: LitVarStr var_94, "server"
  loc_B27DCF: PopAdLdVar
  loc_B27DD0: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B27DD5: FStStrNoPop var_CC
  loc_B27DD8: LitStr "Y"
  loc_B27DDB: EqStr
  loc_B27DDD: FFreeStr var_C8 = ""
  loc_B27DE4: FFree1Var var_B4 = ""
  loc_B27DE7: BranchF loc_B27E1F
  loc_B27DEA: FLdRfVar var_D0
  loc_B27DED: FLdPr Me
  loc_B27DF0:  = Me.hWnd
  loc_B27DF5: LitI4 3
  loc_B27DFA: LitI4 0
  loc_B27DFF: LitI4 0
  loc_B27E04: LitI4 0
  loc_B27E09: LitI4 0
  loc_B27E0E: LitI4 -1
  loc_B27E13: ILdRf var_D0
  loc_B27E16: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B27E1B: SetLastSystemError
  loc_B27E1C: Branch loc_B27E51
  loc_B27E1F: FLdRfVar var_D0
  loc_B27E22: FLdPr Me
  loc_B27E25:  = Me.hWnd
  loc_B27E2A: LitI4 3
  loc_B27E2F: LitI4 0
  loc_B27E34: LitI4 0
  loc_B27E39: LitI4 0
  loc_B27E3E: LitI4 0
  loc_B27E43: LitI4 -2
  loc_B27E48: ILdRf var_D0
  loc_B27E4B: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B27E50: SetLastSystemError
  loc_B27E51: FLdRfVar var_C8
  loc_B27E54: ImpAdLdRf MemVar_C0F018
  loc_B27E57: NewIfNullPr frmMain
  loc_B27E5A: VCallAd Control_ID_
  loc_B27E5D: FStAdFunc var_D4
  loc_B27E60: FLdPr var_D4
  loc_B27E63:  = frmMain.ListBox.Text
  loc_B27E68: LitVarStr var_F4, "to: "
  loc_B27E6D: LitVarI2 var_A4, 0
  loc_B27E72: PopAdLdVar
  loc_B27E73: LitI4 0
  loc_B27E78: LitI4 -1
  loc_B27E7D: LitVarStr var_94, " "
  loc_B27E82: FStVarCopyObj var_B4
  loc_B27E85: FLdRfVar var_B4
  loc_B27E88: ILdRf var_C8
  loc_B27E8B: FLdRfVar var_E4
  loc_B27E8E: ImpAdCallFPR4  = Split(, , , )
  loc_B27E93: FLdRfVar var_E4
  loc_B27E96: VarIndexLdVar
  loc_B27E9C: ConcatVar var_114
  loc_B27EA0: CStrVarVal var_CC
  loc_B27EA4: FLdPrThis
  loc_B27EA5: VCallAd Control_ID_Label2
  loc_B27EA8: FStAdFunc var_118
  loc_B27EAB: FLdPr var_118
  loc_B27EAE: Me.Caption = from_stack_1
  loc_B27EB3: FFreeStr var_C8 = ""
  loc_B27EBA: FFreeAd var_D4 = ""
  loc_B27EC1: FFreeVar var_B4 = "": var_E4 = "": var_104 = ""
  loc_B27ECC: LitI2 2550
  loc_B27ECF: CR8I2
  loc_B27ED0: PopFPR4
  loc_B27ED1: FLdPr Me
  loc_B27ED4: Me.Height = from_stack_1s
  loc_B27ED9: LitI2 2280
  loc_B27EDC: CR8I2
  loc_B27EDD: PopFPR4
  loc_B27EDE: FLdPr Me
  loc_B27EE1: Me.Width = from_stack_1s
  loc_B27EE6: FLdRfVar var_11A
  loc_B27EE9: ImpAdLdRf MemVar_C0F018
  loc_B27EEC: NewIfNullPr frmMain
  loc_B27EEF: VCallAd Control_ID_
  loc_B27EF2: FStAdFunc var_D4
  loc_B27EF5: FLdPr var_D4
  loc_B27EF8:  = frmMain.CheckBox.Value
  loc_B27EFD: FLdI2 var_11A
  loc_B27F00: LitI2_Byte 1
  loc_B27F02: EqI2
  loc_B27F03: FFree1Ad var_D4
  loc_B27F06: BranchF loc_B27F3E
  loc_B27F09: FLdRfVar var_D0
  loc_B27F0C: FLdPr Me
  loc_B27F0F:  = Me.hWnd
  loc_B27F14: LitI4 3
  loc_B27F19: LitI4 0
  loc_B27F1E: LitI4 0
  loc_B27F23: LitI4 0
  loc_B27F28: LitI4 0
  loc_B27F2D: LitI4 -1
  loc_B27F32: ILdRf var_D0
  loc_B27F35: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B27F3A: SetLastSystemError
  loc_B27F3B: Branch loc_B27F70
  loc_B27F3E: FLdRfVar var_D0
  loc_B27F41: FLdPr Me
  loc_B27F44:  = Me.hWnd
  loc_B27F49: LitI4 3
  loc_B27F4E: LitI4 0
  loc_B27F53: LitI4 0
  loc_B27F58: LitI4 0
  loc_B27F5D: LitI4 0
  loc_B27F62: LitI4 -2
  loc_B27F67: ILdRf var_D0
  loc_B27F6A: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B27F6F: SetLastSystemError
  loc_B27F70: ExitProcHresult
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1C3D0
  'Data Table: 53DDD4
  loc_B1C370: ILdI2 Button
  loc_B1C373: LitI2_Byte 1
  loc_B1C375: EqI2
  loc_B1C376: BranchF loc_B1C3B9
  loc_B1C379: ImpAdCallI2 ReleaseCapture()
  loc_B1C37E: FStR4 var_8C
  loc_B1C381: SetLastSystemError
  loc_B1C382: ILdRf var_8C
  loc_B1C385: CR8I4
  loc_B1C386: IStFPR4 X
  loc_B1C389: FLdRfVar var_8C
  loc_B1C38C: FLdPrThis
  loc_B1C38D:  = Me.hWnd
  loc_B1C392: LitI4 0
  loc_B1C397: PopTmpLdAdStr var_90
  loc_B1C39A: LitI4 2
  loc_B1C39F: LitI4 &HA1
  loc_B1C3A4: ILdRf var_8C
  loc_B1C3A7: ImpAdCallI2 SendMessage(, , , )
  loc_B1C3AC: FStR4 var_94
  loc_B1C3AF: SetLastSystemError
  loc_B1C3B0: ILdRf var_94
  loc_B1C3B3: FStR4 var_88
  loc_B1C3B6: Branch loc_B1C3CE
  loc_B1C3B9: ILdRf Me
  loc_B1C3BC: FStAdNoPop
  loc_B1C3C0: ImpAdLdRf MemVar_C10514
  loc_B1C3C3: NewIfNullPr Global
  loc_B1C3C6: Global.Unload from_stack_1
  loc_B1C3CB: FFree1Ad var_98
  loc_B1C3CE: ExitProcHresult
End Sub

Private Sub Image1_Click() 'B1885C
  'Data Table: 53DDD4
  loc_B18850: FLdPr Me
  loc_B18853: Me.Hide
  loc_B18858: ExitProcHresult
  loc_B18859: StAryRecCopy
End Sub

Private Sub Command1_Click() 'B3B670
  'Data Table: 53DDD4
  loc_B3B204: FLdRfVar var_94
  loc_B3B207: VarLateMemLdRfVar var_A4, .Listuseronline
  loc_B3B20D: VarLateMemLdVar var_B4, .Text
  loc_B3B213: PopAd
  loc_B3B215: LitVarI2 var_F8, 0
  loc_B3B21A: PopAdLdVar
  loc_B3B21B: LitI4 0
  loc_B3B220: LitI4 -1
  loc_B3B225: LitVarStr var_C8, " "
  loc_B3B22A: FStVarCopyObj var_D8
  loc_B3B22D: FLdRfVar var_D8
  loc_B3B230: FLdRfVar var_B4
  loc_B3B233: CStrVarVal var_B8
  loc_B3B237: FLdRfVar var_E8
  loc_B3B23A: ImpAdCallFPR4  = Split(, , , )
  loc_B3B23F: FLdRfVar var_E8
  loc_B3B242: VarIndexLdVar
  loc_B3B248: FStVar var_118
  loc_B3B24C: FFree1Str var_B8
  loc_B3B24F: FFreeVar var_A4 = "": var_B4 = "": var_D8 = ""
  loc_B3B25A: FLdRfVar var_B8
  loc_B3B25D: FLdPrThis
  loc_B3B25E: VCallAd Control_ID_Text1
  loc_B3B261: FStAdFunc var_12C
  loc_B3B264: FLdPr var_12C
  loc_B3B267:  = Me.Text
  loc_B3B26C: FLdZeroAd var_B8
  loc_B3B26F: CVarStr var_A4
  loc_B3B272: FStVar var_13C
  loc_B3B276: FFree1Ad var_12C
  loc_B3B279: FLdRfVar var_13E
  loc_B3B27C: ImpAdLdI4 MemVar_C0F044
  loc_B3B27F: LitStr "habbos\"
  loc_B3B282: ConcatStr
  loc_B3B283: CVarStr var_B4
  loc_B3B286: FLdRfVar var_118
  loc_B3B289: FLdRfVar var_A4
  loc_B3B28C: ImpAdCallFPR4  = LCase()
  loc_B3B291: FLdRfVar var_A4
  loc_B3B294: ConcatVar var_D8
  loc_B3B298: CStrVarVal var_B8
  loc_B3B29C: ImpAdLdRf MemVar_C0F040
  loc_B3B29F: NewIfNullPr IFileSystem3
  loc_B3B2A2: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B3B2A7: FLdI2 var_13E
  loc_B3B2AA: LitI2_Byte &HFF
  loc_B3B2AC: EqI2
  loc_B3B2AD: FFree1Str var_B8
  loc_B3B2B0: FFreeVar var_B4 = "": var_A4 = ""
  loc_B3B2B9: BranchF loc_B3B66E
  loc_B3B2BC: FLdRfVar var_118
  loc_B3B2BF: FLdRfVar var_A4
  loc_B3B2C2: ImpAdCallFPR4  = LCase()
  loc_B3B2C7: FLdRfVar var_144
  loc_B3B2CA: FLdRfVar var_12C
  loc_B3B2CD: LitI4 0
  loc_B3B2D2: LitI2_Byte 0
  loc_B3B2D4: LitI4 1
  loc_B3B2D9: ImpAdLdI4 MemVar_C0F044
  loc_B3B2DC: LitStr "habbos\"
  loc_B3B2DF: ConcatStr
  loc_B3B2E0: CVarStr var_B4
  loc_B3B2E3: FLdRfVar var_A4
  loc_B3B2E6: ConcatVar var_D8
  loc_B3B2EA: LitVarStr var_C8, "\credits.txt"
  loc_B3B2EF: ConcatVar var_E8
  loc_B3B2F3: CStrVarVal var_B8
  loc_B3B2F7: ImpAdLdRf MemVar_C0F040
  loc_B3B2FA: NewIfNullPr IFileSystem3
  loc_B3B2FD: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B3B302: FLdPr var_12C
  loc_B3B305:  = Me.ReadAll
  loc_B3B30A: ILdRf var_144
  loc_B3B30D: ImpAdCallFPR4 push push Val()
  loc_B3B312: CVarR8
  loc_B3B316: FStVar var_154
  loc_B3B31A: FFreeStr var_B8 = ""
  loc_B3B321: FFree1Ad var_12C
  loc_B3B324: FFreeVar var_B4 = "": var_A4 = "": var_D8 = ""
  loc_B3B32F: FLdRfVar var_154
  loc_B3B332: FLdRfVar var_13C
  loc_B3B335: CStrVarVal var_B8
  loc_B3B339: ImpAdCallFPR4 push push Val()
  loc_B3B33E: CVarR8
  loc_B3B342: AddVar var_A4
  loc_B3B346: FStVar var_154
  loc_B3B34A: FFree1Str var_B8
  loc_B3B34D: FLdRfVar var_118
  loc_B3B350: FLdRfVar var_A4
  loc_B3B353: ImpAdCallFPR4  = LCase()
  loc_B3B358: FLdRfVar var_154
  loc_B3B35B: CStrVarVal var_144
  loc_B3B35F: FLdRfVar var_12C
  loc_B3B362: LitI4 0
  loc_B3B367: LitI2_Byte 0
  loc_B3B369: LitI4 2
  loc_B3B36E: ImpAdLdI4 MemVar_C0F044
  loc_B3B371: LitStr "habbos\"
  loc_B3B374: ConcatStr
  loc_B3B375: CVarStr var_B4
  loc_B3B378: FLdRfVar var_A4
  loc_B3B37B: ConcatVar var_D8
  loc_B3B37F: LitVarStr var_C8, "\credits.txt"
  loc_B3B384: ConcatVar var_E8
  loc_B3B388: CStrVarVal var_B8
  loc_B3B38C: ImpAdLdRf MemVar_C0F040
  loc_B3B38F: NewIfNullPr IFileSystem3
  loc_B3B392: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B3B397: FLdPr var_12C
  loc_B3B39A: from_stack_2 = Me.Write(from_stack_1v)
  loc_B3B39F: FFreeStr var_B8 = ""
  loc_B3B3A6: FFree1Ad var_12C
  loc_B3B3A9: FFreeVar var_B4 = "": var_A4 = "": var_D8 = ""
  loc_B3B3B4: FLdRfVar var_A4
  loc_B3B3B7: ImpAdCallFPR4  = Date
  loc_B3B3BC: FLdRfVar var_164
  loc_B3B3BF: ImpAdCallFPR4  = Time
  loc_B3B3C4: LitI4 1
  loc_B3B3C9: LitI4 1
  loc_B3B3CE: LitVarStr var_C8, "dd-mm-yyyy"
  loc_B3B3D3: FStVarCopyObj var_B4
  loc_B3B3D6: FLdRfVar var_B4
  loc_B3B3D9: FLdRfVar var_A4
  loc_B3B3DC: FLdRfVar var_D8
  loc_B3B3DF: ImpAdCallFPR4  = Format(, )
  loc_B3B3E4: FLdRfVar var_D8
  loc_B3B3E7: LitI4 9
  loc_B3B3EC: FLdRfVar var_E8
  loc_B3B3EF: ImpAdCallFPR4  = Chr()
  loc_B3B3F4: FLdRfVar var_E8
  loc_B3B3F7: ConcatVar var_128
  loc_B3B3FB: LitI4 1
  loc_B3B400: LitI4 1
  loc_B3B405: LitVarStr var_F8, "hh:mm"
  loc_B3B40A: FStVarCopyObj var_174
  loc_B3B40D: FLdRfVar var_174
  loc_B3B410: FLdRfVar var_164
  loc_B3B413: FLdRfVar var_184
  loc_B3B416: ImpAdCallFPR4  = Format(, )
  loc_B3B41B: FLdRfVar var_184
  loc_B3B41E: ConcatVar var_194
  loc_B3B422: LitI4 9
  loc_B3B427: FLdRfVar var_1A4
  loc_B3B42A: ImpAdCallFPR4  = Chr()
  loc_B3B42F: FLdRfVar var_1A4
  loc_B3B432: ConcatVar var_1B4
  loc_B3B436: FLdRfVar var_13C
  loc_B3B439: ConcatVar var_1C4
  loc_B3B43D: LitI4 9
  loc_B3B442: FLdRfVar var_1D4
  loc_B3B445: ImpAdCallFPR4  = Chr()
  loc_B3B44A: FLdRfVar var_1D4
  loc_B3B44D: ConcatVar var_1E4
  loc_B3B451: LitVarStr var_108, "0"
  loc_B3B456: ConcatVar var_1F4
  loc_B3B45A: LitI4 9
  loc_B3B45F: FLdRfVar var_204
  loc_B3B462: ImpAdCallFPR4  = Chr()
  loc_B3B467: FLdRfVar var_204
  loc_B3B46A: ConcatVar var_214
  loc_B3B46E: LitI4 9
  loc_B3B473: FLdRfVar var_224
  loc_B3B476: ImpAdCallFPR4  = Chr()
  loc_B3B47B: FLdRfVar var_224
  loc_B3B47E: ConcatVar var_234
  loc_B3B482: LitVarStr var_244, "web_internal"
  loc_B3B487: ConcatVar var_254
  loc_B3B48B: LitI4 &HD
  loc_B3B490: FLdRfVar var_264
  loc_B3B493: ImpAdCallFPR4  = Chr()
  loc_B3B498: FLdRfVar var_264
  loc_B3B49B: ConcatVar var_274
  loc_B3B49F: CStrVarVal var_28C
  loc_B3B4A3: FLdRfVar var_12C
  loc_B3B4A6: LitI4 0
  loc_B3B4AB: LitI2_Byte &HFF
  loc_B3B4AD: LitI4 8
  loc_B3B4B2: ImpAdLdI4 MemVar_C0F044
  loc_B3B4B5: LitStr "habbos\"
  loc_B3B4B8: ConcatStr
  loc_B3B4B9: FStStrNoPop var_B8
  loc_B3B4BC: FLdRfVar var_284
  loc_B3B4BF: CI4Var
  loc_B3B4C1: ImpAdLdI4 MemVar_C0F100
  loc_B3B4C4: Ary1LdPr
  loc_B3B4C5: MemLdStr global_204
  loc_B3B4C8: ConcatStr
  loc_B3B4C9: FStStrNoPop var_144
  loc_B3B4CC: LitStr "\transactions.txt"
  loc_B3B4CF: ConcatStr
  loc_B3B4D0: FStStrNoPop var_288
  loc_B3B4D3: ImpAdLdRf MemVar_C0F040
  loc_B3B4D6: NewIfNullPr IFileSystem3
  loc_B3B4D9: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B3B4DE: FLdPr var_12C
  loc_B3B4E1: from_stack_2 = Me.Write(from_stack_1v)
  loc_B3B4E6: FFreeStr var_B8 = "": var_144 = "": var_288 = ""
  loc_B3B4F1: FFree1Ad var_12C
  loc_B3B4F4: FFreeVar var_A4 = "": var_B4 = "": var_D8 = "": var_E8 = "": var_164 = "": var_174 = "": var_128 = "": var_184 = "": var_194 = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_214 = "": var_224 = "": var_234 = "": var_254 = "": var_264 = ""
  loc_B3B523: LitVarI2 var_108, 1
  loc_B3B528: FLdRfVar var_29C
  loc_B3B52B: FLdRfVar var_2A0
  loc_B3B52E: ImpAdLdRf MemVar_C0F018
  loc_B3B531: NewIfNullPr frmMain
  loc_B3B534: from_stack_1v = frmMain.SockIGet()
  loc_B3B539: ILdRf var_2A0
  loc_B3B53C: CVarI4
  loc_B3B540: ForVar var_2C0
  loc_B3B546: FLdRfVar var_118
  loc_B3B549: FLdRfVar var_A4
  loc_B3B54C: ImpAdCallFPR4  = LCase()
  loc_B3B551: FLdRfVar var_A4
  loc_B3B554: FLdRfVar var_29C
  loc_B3B557: CI4Var
  loc_B3B559: ImpAdLdI4 MemVar_C0F100
  loc_B3B55C: AryLock
  loc_B3B55F: Ary1LdPr
  loc_B3B560: MemLdRfVar from_stack_1.global_204
  loc_B3B563: CVarRef
  loc_B3B568: FLdRfVar var_B4
  loc_B3B56B: ImpAdCallFPR4  = LCase()
  loc_B3B570: AryUnlock
  loc_B3B573: FLdRfVar var_B4
  loc_B3B576: EqVar var_D8
  loc_B3B57A: FLdRfVar var_2C8
  loc_B3B57D: FLdRfVar var_29C
  loc_B3B580: CI2Var
  loc_B3B581: ImpAdLdRf MemVar_C0F018
  loc_B3B584: NewIfNullPr frmMain
  loc_B3B587: VCallAd Control_ID_
  loc_B3B58A: FStAdFunc var_12C
  loc_B3B58D: FLdPr var_12C
  loc_B3B590: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3B595: FLdPr var_2C8
  loc_B3B598: LateIdLdVar var_E8 DispID_8 0
  loc_B3B59F: CI2Var
  loc_B3B5A0: CI4UI1
  loc_B3B5A1: LitI4 7
  loc_B3B5A6: EqI4
  loc_B3B5A7: CVarBoolI2 var_F8
  loc_B3B5AB: AndVar var_128
  loc_B3B5AF: CBoolVarNull
  loc_B3B5B1: FFreeAd var_12C = ""
  loc_B3B5B8: FFreeVar var_A4 = "": var_B4 = "": var_E8 = ""
  loc_B3B5C3: BranchF loc_B3B665
  loc_B3B5C6: FLdRfVar var_2C8
  loc_B3B5C9: FLdRfVar var_29C
  loc_B3B5CC: CI2Var
  loc_B3B5CD: ImpAdLdRf MemVar_C0F018
  loc_B3B5D0: NewIfNullPr frmMain
  loc_B3B5D3: VCallAd Control_ID_
  loc_B3B5D6: FStAdFunc var_12C
  loc_B3B5D9: FLdPr var_12C
  loc_B3B5DC: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3B5E1: FLdPr var_2C8
  loc_B3B5E4: LateIdLdVar var_A4 DispID_8 0
  loc_B3B5EB: CI2Var
  loc_B3B5EC: CI4UI1
  loc_B3B5ED: LitI4 7
  loc_B3B5F2: EqI4
  loc_B3B5F3: FFreeAd var_12C = ""
  loc_B3B5FA: FFree1Var var_A4 = ""
  loc_B3B5FD: BranchF loc_B3B662
  loc_B3B600: LitVarStr var_C8, "@F"
  loc_B3B605: FLdRfVar var_154
  loc_B3B608: ConcatVar var_A4
  loc_B3B60C: LitVarStr var_F8, ".0"
  loc_B3B611: ConcatVar var_B4
  loc_B3B615: LitI4 1
  loc_B3B61A: FLdRfVar var_D8
  loc_B3B61D: ImpAdCallFPR4  = Chr()
  loc_B3B622: FLdRfVar var_D8
  loc_B3B625: ConcatVar var_E8
  loc_B3B629: PopAdLdVar
  loc_B3B62A: FLdRfVar var_2C8
  loc_B3B62D: FLdRfVar var_29C
  loc_B3B630: CI2Var
  loc_B3B631: ImpAdLdRf MemVar_C0F018
  loc_B3B634: NewIfNullPr frmMain
  loc_B3B637: VCallAd Control_ID_
  loc_B3B63A: FStAdFunc var_12C
  loc_B3B63D: FLdPr var_12C
  loc_B3B640: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3B645: FLdPr var_2C8
  loc_B3B648: LateIdCall
  loc_B3B650: FFreeAd var_12C = ""
  loc_B3B657: FFreeVar var_A4 = "": var_B4 = "": var_D8 = ""
  loc_B3B662: Branch loc_B3B66E
  loc_B3B665: FLdRfVar var_29C
  loc_B3B668: NextStepVar var_2C0
  loc_B3B66E: ExitProcHresult
End Sub

Private Function Proc_17_5_B19F4C() 'B19F4C
  'Data Table: 53DDD4
  loc_B19F30: ImpAdLdRf MemVar_C0F304
  loc_B19F33: NewIfNullAd
  loc_B19F36: FStAdNoPop
  loc_B19F3A: ImpAdLdRf MemVar_C10514
  loc_B19F3D: NewIfNullPr Global
  loc_B19F40: Global.Unload from_stack_1
  loc_B19F45: FFree1Ad var_88
  loc_B19F48: ExitProcHresult
  loc_B19F49: ConcatStr
  loc_B19F4A: CVarStr arg_5C2C
End Function
