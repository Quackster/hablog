VERSION 5.00
Begin VB.Form frmBan
  Caption = "frmBan"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form2"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 2595
  ClientHeight = 2775
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.PictureBox Picture1
    BackColor = &H80000006&
    Picture = "frmBan.frx":0000
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
    Begin VB.TextBox Text1
      BackColor = &H8000000E&
      Left = 240
      Top = 1320
      Width = 2055
      Height = 967
      TabIndex = 1
      MultiLine = -1  'True
      TabStop = 0   'False
      Appearance = 0 'Flat
    End
    Begin VB.Label Label1
      Caption = "Ban"
      ForeColor = &HFFFFFF&
      Left = 360
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
      Caption = "Reason:"
      Left = 240
      Top = 1080
      Width = 2055
      Height = 255
      TabIndex = 2
      BackStyle = 0 'Transparent
    End
    Begin VB.Image Image1
      Picture = "frmBan.frx":0001B082
      Left = 2040
      Top = 180
      Width = 360
      Height = 330
    End
    Begin VB.Image Command1
      Picture = "frmBan.frx":0001B6F4
      Left = 240
      Top = 2280
      Width = 2055
      Height = 300
    End
  End
End

Attribute VB_Name = "frmBan"


Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1C6B4
  'Data Table: 53D75C
  loc_B1C654: ILdI2 Button
  loc_B1C657: LitI2_Byte 1
  loc_B1C659: EqI2
  loc_B1C65A: BranchF loc_B1C69D
  loc_B1C65D: ImpAdCallI2 ReleaseCapture()
  loc_B1C662: FStR4 var_8C
  loc_B1C665: SetLastSystemError
  loc_B1C666: ILdRf var_8C
  loc_B1C669: CR8I4
  loc_B1C66A: IStFPR4 X
  loc_B1C66D: FLdRfVar var_8C
  loc_B1C670: FLdPrThis
  loc_B1C671:  = Me.hWnd
  loc_B1C676: LitI4 0
  loc_B1C67B: PopTmpLdAdStr var_90
  loc_B1C67E: LitI4 2
  loc_B1C683: LitI4 &HA1
  loc_B1C688: ILdRf var_8C
  loc_B1C68B: ImpAdCallI2 SendMessage(, , , )
  loc_B1C690: FStR4 var_94
  loc_B1C693: SetLastSystemError
  loc_B1C694: ILdRf var_94
  loc_B1C697: FStR4 var_88
  loc_B1C69A: Branch loc_B1C6B2
  loc_B1C69D: ILdRf Me
  loc_B1C6A0: FStAdNoPop
  loc_B1C6A4: ImpAdLdRf MemVar_C10514
  loc_B1C6A7: NewIfNullPr Global
  loc_B1C6AA: Global.Unload from_stack_1
  loc_B1C6AF: FFree1Ad var_98
  loc_B1C6B2: ExitProcHresult
  loc_B1C6B3: SetLastSystemError
End Sub

Private Sub Form_Load() 'B23C98
  'Data Table: 53D75C
  loc_B23B78: FLdRfVar var_8C
  loc_B23B7B: ImpAdLdRf MemVar_C0F018
  loc_B23B7E: NewIfNullPr frmMain
  loc_B23B81: VCallAd Control_ID_
  loc_B23B84: FStAdFunc var_88
  loc_B23B87: FLdPr var_88
  loc_B23B8A:  = frmMain.ListBox.Text
  loc_B23B8F: LitVarStr var_EC, "to: "
  loc_B23B94: LitVarI2 var_CC, 0
  loc_B23B99: PopAdLdVar
  loc_B23B9A: LitI4 0
  loc_B23B9F: LitI4 -1
  loc_B23BA4: LitVarStr var_9C, " "
  loc_B23BA9: FStVarCopyObj var_AC
  loc_B23BAC: FLdRfVar var_AC
  loc_B23BAF: ILdRf var_8C
  loc_B23BB2: FLdRfVar var_BC
  loc_B23BB5: ImpAdCallFPR4  = Split(, , , )
  loc_B23BBA: FLdRfVar var_BC
  loc_B23BBD: VarIndexLdVar
  loc_B23BC3: ConcatVar var_10C
  loc_B23BC7: CStrVarVal var_110
  loc_B23BCB: FLdPrThis
  loc_B23BCC: VCallAd Control_ID_Label2
  loc_B23BCF: FStAdFunc var_114
  loc_B23BD2: FLdPr var_114
  loc_B23BD5: Me.Caption = from_stack_1
  loc_B23BDA: FFreeStr var_8C = ""
  loc_B23BE1: FFreeAd var_88 = ""
  loc_B23BE8: FFreeVar var_AC = "": var_BC = "": var_FC = ""
  loc_B23BF3: LitI2 2550
  loc_B23BF6: CR8I2
  loc_B23BF7: PopFPR4
  loc_B23BF8: FLdPr Me
  loc_B23BFB: Me.Height = from_stack_1s
  loc_B23C00: LitI2 2280
  loc_B23C03: CR8I2
  loc_B23C04: PopFPR4
  loc_B23C05: FLdPr Me
  loc_B23C08: Me.Width = from_stack_1s
  loc_B23C0D: FLdRfVar var_116
  loc_B23C10: ImpAdLdRf MemVar_C0F018
  loc_B23C13: NewIfNullPr frmMain
  loc_B23C16: VCallAd Control_ID_
  loc_B23C19: FStAdFunc var_88
  loc_B23C1C: FLdPr var_88
  loc_B23C1F:  = frmMain.CheckBox.Value
  loc_B23C24: FLdI2 var_116
  loc_B23C27: LitI2_Byte 1
  loc_B23C29: EqI2
  loc_B23C2A: FFree1Ad var_88
  loc_B23C2D: BranchF loc_B23C65
  loc_B23C30: FLdRfVar var_11C
  loc_B23C33: FLdPr Me
  loc_B23C36:  = Me.hWnd
  loc_B23C3B: LitI4 3
  loc_B23C40: LitI4 0
  loc_B23C45: LitI4 0
  loc_B23C4A: LitI4 0
  loc_B23C4F: LitI4 0
  loc_B23C54: LitI4 -1
  loc_B23C59: ILdRf var_11C
  loc_B23C5C: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B23C61: SetLastSystemError
  loc_B23C62: Branch loc_B23C97
  loc_B23C65: FLdRfVar var_11C
  loc_B23C68: FLdPr Me
  loc_B23C6B:  = Me.hWnd
  loc_B23C70: LitI4 3
  loc_B23C75: LitI4 0
  loc_B23C7A: LitI4 0
  loc_B23C7F: LitI4 0
  loc_B23C84: LitI4 0
  loc_B23C89: LitI4 -2
  loc_B23C8E: ILdRf var_11C
  loc_B23C91: ImpAdCallFPR4 SetWindowPos(, , , , , , )
  loc_B23C96: SetLastSystemError
  loc_B23C97: ExitProcHresult
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1C748
  'Data Table: 53D75C
  loc_B1C6E8: ILdI2 Button
  loc_B1C6EB: LitI2_Byte 1
  loc_B1C6ED: EqI2
  loc_B1C6EE: BranchF loc_B1C731
  loc_B1C6F1: ImpAdCallI2 ReleaseCapture()
  loc_B1C6F6: FStR4 var_8C
  loc_B1C6F9: SetLastSystemError
  loc_B1C6FA: ILdRf var_8C
  loc_B1C6FD: CR8I4
  loc_B1C6FE: IStFPR4 X
  loc_B1C701: FLdRfVar var_8C
  loc_B1C704: FLdPrThis
  loc_B1C705:  = Me.hWnd
  loc_B1C70A: LitI4 0
  loc_B1C70F: PopTmpLdAdStr var_90
  loc_B1C712: LitI4 2
  loc_B1C717: LitI4 &HA1
  loc_B1C71C: ILdRf var_8C
  loc_B1C71F: ImpAdCallI2 SendMessage(, , , )
  loc_B1C724: FStR4 var_94
  loc_B1C727: SetLastSystemError
  loc_B1C728: ILdRf var_94
  loc_B1C72B: FStR4 var_88
  loc_B1C72E: Branch loc_B1C746
  loc_B1C731: ILdRf Me
  loc_B1C734: FStAdNoPop
  loc_B1C738: ImpAdLdRf MemVar_C10514
  loc_B1C73B: NewIfNullPr Global
  loc_B1C73E: Global.Unload from_stack_1
  loc_B1C743: FFree1Ad var_98
  loc_B1C746: ExitProcHresult
End Sub

Private Sub Image1_Click() 'B18898
  'Data Table: 53D75C
  loc_B1888C: FLdPr Me
  loc_B1888F: Me.Hide
  loc_B18894: ExitProcHresult
End Sub

Private Sub Command1_Click() 'B38F28
  'Data Table: 53D75C
  loc_B38AEC: FLdRfVar var_94
  loc_B38AEF: VarLateMemLdRfVar var_A4, .Listuseronline
  loc_B38AF5: VarLateMemLdVar var_B4, .Text
  loc_B38AFB: PopAd
  loc_B38AFD: LitVarI2 var_F8, 0
  loc_B38B02: PopAdLdVar
  loc_B38B03: LitI4 0
  loc_B38B08: LitI4 -1
  loc_B38B0D: LitVarStr var_C8, " "
  loc_B38B12: FStVarCopyObj var_D8
  loc_B38B15: FLdRfVar var_D8
  loc_B38B18: FLdRfVar var_B4
  loc_B38B1B: CStrVarVal var_B8
  loc_B38B1F: FLdRfVar var_E8
  loc_B38B22: ImpAdCallFPR4  = Split(, , , )
  loc_B38B27: FLdRfVar var_E8
  loc_B38B2A: VarIndexLdVar
  loc_B38B30: FStVar var_118
  loc_B38B34: FFree1Str var_B8
  loc_B38B37: FFreeVar var_A4 = "": var_B4 = "": var_D8 = ""
  loc_B38B42: FLdRfVar var_B8
  loc_B38B45: FLdPrThis
  loc_B38B46: VCallAd Control_ID_Text1
  loc_B38B49: FStAdFunc var_12C
  loc_B38B4C: FLdPr var_12C
  loc_B38B4F:  = Me.Text
  loc_B38B54: FLdZeroAd var_B8
  loc_B38B57: CVarStr var_A4
  loc_B38B5A: FStVar var_13C
  loc_B38B5E: FFree1Ad var_12C
  loc_B38B61: LitVarI2 var_C8, 24
  loc_B38B66: FStVar var_14C
  loc_B38B6A: FLdRfVar var_14E
  loc_B38B6D: ImpAdLdI4 MemVar_C0F044
  loc_B38B70: LitStr "habbos\"
  loc_B38B73: ConcatStr
  loc_B38B74: CVarStr var_B4
  loc_B38B77: FLdRfVar var_118
  loc_B38B7A: FLdRfVar var_A4
  loc_B38B7D: ImpAdCallFPR4  = LCase()
  loc_B38B82: FLdRfVar var_A4
  loc_B38B85: ConcatVar var_D8
  loc_B38B89: CStrVarVal var_B8
  loc_B38B8D: ImpAdLdRf MemVar_C0F040
  loc_B38B90: NewIfNullPr IFileSystem3
  loc_B38B93: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B38B98: FLdI2 var_14E
  loc_B38B9B: LitI2_Byte &HFF
  loc_B38B9D: EqI2
  loc_B38B9E: FFree1Str var_B8
  loc_B38BA1: FFreeVar var_B4 = "": var_A4 = ""
  loc_B38BAA: BranchF loc_B38F24
  loc_B38BAD: FLdRfVar var_14C
  loc_B38BB0: CStrVarVal var_B8
  loc_B38BB4: ImpAdCallFPR4 push push Val()
  loc_B38BB9: FStFPR8 var_170
  loc_B38BBC: FLdRfVar var_118
  loc_B38BBF: FLdRfVar var_D8
  loc_B38BC2: ImpAdCallFPR4  = LCase()
  loc_B38BC7: FLdRfVar var_A4
  loc_B38BCA: ImpAdCallFPR4  = Now
  loc_B38BCF: FLdRfVar var_A4
  loc_B38BD2: FLdR8 var_170
  loc_B38BD5: LitStr "h"
  loc_B38BD8: FLdRfVar var_B4
  loc_B38BDB: ImpAdCallFPR4  = DateAdd(, , )
  loc_B38BE0: FLdRfVar var_B4
  loc_B38BE3: CStrVarVal var_168
  loc_B38BE7: FLdRfVar var_12C
  loc_B38BEA: LitI4 0
  loc_B38BEF: LitI2_Byte &HFF
  loc_B38BF1: LitI4 2
  loc_B38BF6: ImpAdLdI4 MemVar_C0F044
  loc_B38BF9: LitStr "user_bans\"
  loc_B38BFC: ConcatStr
  loc_B38BFD: CVarStr var_E8
  loc_B38C00: FLdRfVar var_D8
  loc_B38C03: ConcatVar var_128
  loc_B38C07: LitVarStr var_C8, ".txt"
  loc_B38C0C: ConcatVar var_160
  loc_B38C10: CStrVarVal var_164
  loc_B38C14: ImpAdLdRf MemVar_C0F040
  loc_B38C17: NewIfNullPr IFileSystem3
  loc_B38C1A: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B38C1F: FLdPr var_12C
  loc_B38C22: from_stack_2 = Me.Write(from_stack_1v)
  loc_B38C27: FFreeStr var_B8 = "": var_164 = ""
  loc_B38C30: FFree1Ad var_12C
  loc_B38C33: FFreeVar var_A4 = "": var_E8 = "": var_D8 = "": var_128 = "": var_160 = ""
  loc_B38C42: FLdRfVar var_118
  loc_B38C45: FLdRfVar var_B4
  loc_B38C48: ImpAdCallFPR4  = LCase()
  loc_B38C4D: LitVarStr var_C8, "24 H: "
  loc_B38C52: FLdRfVar var_13C
  loc_B38C55: ConcatVar var_A4
  loc_B38C59: CStrVarVal var_164
  loc_B38C5D: FLdRfVar var_12C
  loc_B38C60: LitI4 0
  loc_B38C65: LitI2_Byte &HFF
  loc_B38C67: LitI4 2
  loc_B38C6C: ImpAdLdI4 MemVar_C0F044
  loc_B38C6F: LitStr "user_bans\"
  loc_B38C72: ConcatStr
  loc_B38C73: CVarStr var_D8
  loc_B38C76: FLdRfVar var_B4
  loc_B38C79: ConcatVar var_E8
  loc_B38C7D: LitVarStr var_F8, ".reason"
  loc_B38C82: ConcatVar var_128
  loc_B38C86: CStrVarVal var_B8
  loc_B38C8A: ImpAdLdRf MemVar_C0F040
  loc_B38C8D: NewIfNullPr IFileSystem3
  loc_B38C90: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B38C95: FLdPr var_12C
  loc_B38C98: from_stack_2 = Me.Write(from_stack_1v)
  loc_B38C9D: FFreeStr var_B8 = ""
  loc_B38CA4: FFree1Ad var_12C
  loc_B38CA7: FFreeVar var_D8 = "": var_B4 = "": var_E8 = "": var_128 = ""
  loc_B38CB4: LitVarI2 var_108, 1
  loc_B38CB9: FLdRfVar var_180
  loc_B38CBC: FLdRfVar var_184
  loc_B38CBF: ImpAdLdRf MemVar_C0F018
  loc_B38CC2: NewIfNullPr frmMain
  loc_B38CC5: from_stack_1v = frmMain.SockIGet()
  loc_B38CCA: ILdRf var_184
  loc_B38CCD: CVarI4
  loc_B38CD1: ForVar var_1A4
  loc_B38CD7: FLdRfVar var_118
  loc_B38CDA: FLdRfVar var_A4
  loc_B38CDD: ImpAdCallFPR4  = LCase()
  loc_B38CE2: FLdRfVar var_A4
  loc_B38CE5: FLdRfVar var_180
  loc_B38CE8: CI4Var
  loc_B38CEA: ImpAdLdI4 MemVar_C0F100
  loc_B38CED: AryLock
  loc_B38CF0: Ary1LdPr
  loc_B38CF1: MemLdRfVar from_stack_1.global_204
  loc_B38CF4: CVarRef
  loc_B38CF9: FLdRfVar var_B4
  loc_B38CFC: ImpAdCallFPR4  = LCase()
  loc_B38D01: AryUnlock
  loc_B38D04: FLdRfVar var_B4
  loc_B38D07: EqVar var_D8
  loc_B38D0B: FLdRfVar var_1AC
  loc_B38D0E: FLdRfVar var_180
  loc_B38D11: CI2Var
  loc_B38D12: ImpAdLdRf MemVar_C0F018
  loc_B38D15: NewIfNullPr frmMain
  loc_B38D18: VCallAd Control_ID_
  loc_B38D1B: FStAdFunc var_12C
  loc_B38D1E: FLdPr var_12C
  loc_B38D21: Set from_stack_2 = frmMain(from_stack_1)
  loc_B38D26: FLdPr var_1AC
  loc_B38D29: LateIdLdVar var_E8 DispID_8 0
  loc_B38D30: CI2Var
  loc_B38D31: CI4UI1
  loc_B38D32: LitI4 7
  loc_B38D37: EqI4
  loc_B38D38: CVarBoolI2 var_F8
  loc_B38D3C: AndVar var_128
  loc_B38D40: CBoolVarNull
  loc_B38D42: FFreeAd var_12C = ""
  loc_B38D49: FFreeVar var_A4 = "": var_B4 = "": var_E8 = ""
  loc_B38D54: BranchF loc_B38F1B
  loc_B38D57: FLdRfVar var_1AC
  loc_B38D5A: FLdRfVar var_180
  loc_B38D5D: CI2Var
  loc_B38D5E: ImpAdLdRf MemVar_C0F018
  loc_B38D61: NewIfNullPr frmMain
  loc_B38D64: VCallAd Control_ID_
  loc_B38D67: FStAdFunc var_12C
  loc_B38D6A: FLdPr var_12C
  loc_B38D6D: Set from_stack_2 = frmMain(from_stack_1)
  loc_B38D72: FLdPr var_1AC
  loc_B38D75: LateIdLdVar var_A4 DispID_8 0
  loc_B38D7C: CI2Var
  loc_B38D7D: CI4UI1
  loc_B38D7E: LitI4 7
  loc_B38D83: EqI4
  loc_B38D84: FFreeAd var_12C = ""
  loc_B38D8B: FFree1Var var_A4 = ""
  loc_B38D8E: BranchF loc_B38DEF
  loc_B38D91: LitStr "@c"
  loc_B38D94: LitStr "24 H: "
  loc_B38D97: ConcatStr
  loc_B38D98: CVarStr var_A4
  loc_B38D9B: FLdRfVar var_13C
  loc_B38D9E: ConcatVar var_B4
  loc_B38DA2: LitI4 1
  loc_B38DA7: FLdRfVar var_D8
  loc_B38DAA: ImpAdCallFPR4  = Chr()
  loc_B38DAF: FLdRfVar var_D8
  loc_B38DB2: ConcatVar var_E8
  loc_B38DB6: PopAdLdVar
  loc_B38DB7: FLdRfVar var_1AC
  loc_B38DBA: FLdRfVar var_180
  loc_B38DBD: CI2Var
  loc_B38DBE: ImpAdLdRf MemVar_C0F018
  loc_B38DC1: NewIfNullPr frmMain
  loc_B38DC4: VCallAd Control_ID_
  loc_B38DC7: FStAdFunc var_12C
  loc_B38DCA: FLdPr var_12C
  loc_B38DCD: Set from_stack_2 = frmMain(from_stack_1)
  loc_B38DD2: FLdPr var_1AC
  loc_B38DD5: LateIdCall
  loc_B38DDD: FFreeAd var_12C = ""
  loc_B38DE4: FFreeVar var_A4 = "": var_B4 = "": var_D8 = ""
  loc_B38DEF: FLdRfVar var_1BC
  loc_B38DF2: CI4Var
  loc_B38DF4: ImpAdLdI4 MemVar_C0F100
  loc_B38DF7: Ary1LdPr
  loc_B38DF8: MemLdFPR8 global_224
  loc_B38DFB: LitI2_Byte 0
  loc_B38DFD: CR8I2
  loc_B38DFE: GtR4
  loc_B38DFF: BranchF loc_B38E78
  loc_B38E02: LitI4 1
  loc_B38E07: FLdRfVar var_A4
  loc_B38E0A: ImpAdCallFPR4  = Chr()
  loc_B38E0F: FLdRfVar var_180
  loc_B38E12: CI4Var
  loc_B38E14: ImpAdLdI4 MemVar_C0F100
  loc_B38E17: Ary1LdPr
  loc_B38E18: MemLdFPR8 global_224
  loc_B38E1B: CI4R8
  loc_B38E1C: LitStr "@]"
  loc_B38E1F: FLdRfVar var_180
  loc_B38E22: CI4Var
  loc_B38E24: ImpAdLdI4 MemVar_C0F100
  loc_B38E27: Ary1LdPr
  loc_B38E28: MemLdStr global_420
  loc_B38E2B: CStrI4
  loc_B38E2D: FStStrNoPop var_B8
  loc_B38E30: ConcatStr
  loc_B38E31: CVarStr var_B4
  loc_B38E34: FLdRfVar var_A4
  loc_B38E37: ConcatVar var_D8
  loc_B38E3B: CStrVarVal var_164
  loc_B38E3F: FLdRfVar var_E8
  loc_B38E42: ImpAdCallFPR4  = Proc_2_7_B2228C(, )
  loc_B38E47: FFreeStr var_B8 = ""
  loc_B38E4E: FFreeVar var_B4 = "": var_A4 = "": var_D8 = ""
  loc_B38E59: LitStr "H"
  loc_B38E5C: FLdRfVar var_180
  loc_B38E5F: CI4Var
  loc_B38E61: ImpAdLdI4 MemVar_C0F100
  loc_B38E64: Ary1LdPr
  loc_B38E65: MemStStrCopy
  loc_B38E69: LitI2_Byte 0
  loc_B38E6B: CR8I2
  loc_B38E6C: FLdRfVar var_180
  loc_B38E6F: CI4Var
  loc_B38E71: ImpAdLdI4 MemVar_C0F100
  loc_B38E74: Ary1LdPr
  loc_B38E75: MemStFPR8 global_224
  loc_B38E78: FLdRfVar var_1BC
  loc_B38E7B: CI4Var
  loc_B38E7D: ImpAdLdI4 MemVar_C0F100
  loc_B38E80: Ary1LdPr
  loc_B38E81: MemLdI2 global_4
  loc_B38E84: LitI2_Byte 0
  loc_B38E86: GtI2
  loc_B38E87: BranchF loc_B38F0F
  loc_B38E8A: LitI4 1
  loc_B38E8F: FLdRfVar var_A4
  loc_B38E92: ImpAdCallFPR4  = Chr()
  loc_B38E97: FLdRfVar var_180
  loc_B38E9A: CI4Var
  loc_B38E9C: ImpAdLdI4 MemVar_C0F100
  loc_B38E9F: Ary1LdPr
  loc_B38EA0: MemLdI2 global_4
  loc_B38EA3: CI4UI1
  loc_B38EA4: LitStr "@]"
  loc_B38EA7: FLdRfVar var_180
  loc_B38EAA: CI4Var
  loc_B38EAC: ImpAdLdI4 MemVar_C0F100
  loc_B38EAF: Ary1LdPr
  loc_B38EB0: MemLdStr global_420
  loc_B38EB3: CStrI4
  loc_B38EB5: FStStrNoPop var_B8
  loc_B38EB8: ConcatStr
  loc_B38EB9: CVarStr var_B4
  loc_B38EBC: FLdRfVar var_A4
  loc_B38EBF: ConcatVar var_D8
  loc_B38EC3: CStrVarVal var_164
  loc_B38EC7: FLdRfVar var_E8
  loc_B38ECA: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B38ECF: FFreeStr var_B8 = ""
  loc_B38ED6: FFreeVar var_B4 = "": var_A4 = "": var_D8 = ""
  loc_B38EE1: LitStr "H"
  loc_B38EE4: FLdRfVar var_180
  loc_B38EE7: CI4Var
  loc_B38EE9: ImpAdLdI4 MemVar_C0F100
  loc_B38EEC: Ary1LdPr
  loc_B38EED: MemStStrCopy
  loc_B38EF1: LitStr vbNullString
  loc_B38EF4: FLdRfVar var_180
  loc_B38EF7: CI4Var
  loc_B38EF9: ImpAdLdI4 MemVar_C0F100
  loc_B38EFC: Ary1LdPr
  loc_B38EFD: MemStStrCopy
  loc_B38F01: LitI2_Byte 0
  loc_B38F03: FLdRfVar var_180
  loc_B38F06: CI4Var
  loc_B38F08: ImpAdLdI4 MemVar_C0F100
  loc_B38F0B: Ary1LdPr
  loc_B38F0C: MemStI2 global_4
  loc_B38F0F: LitVarI2 var_C8, 0
  loc_B38F14: FStVar var_1CC
  loc_B38F18: Branch loc_B38F24
  loc_B38F1B: FLdRfVar var_180
  loc_B38F1E: NextStepVar var_1A4
  loc_B38F24: ExitProcHresult
  loc_B38F25: IStI4
End Sub

Private Function Proc_16_5_B19B3C() 'B19B3C
  'Data Table: 53D75C
  loc_B19B20: ImpAdLdRf MemVar_C0F2F0
  loc_B19B23: NewIfNullAd
  loc_B19B26: FStAdNoPop
  loc_B19B2A: ImpAdLdRf MemVar_C10514
  loc_B19B2D: NewIfNullPr Global
  loc_B19B30: Global.Unload from_stack_1
  loc_B19B35: FFree1Ad var_88
  loc_B19B38: ExitProcHresult
  loc_B19B39: LitStr "StrFormMemory_30007"
End Function
