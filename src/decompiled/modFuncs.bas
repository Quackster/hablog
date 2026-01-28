
Private Function Proc_2_0_B1A8FC() 'B1A8FC
  'Data Table: 53B440
  loc_B1A8CC: FLdRfVar var_8C
  loc_B1A8CF: ILdPr
  loc_B1A8D2:  = Me.hWnd
  loc_B1A8D7: LitI2_Byte 0
  loc_B1A8D9: PopTmpLdAd2 var_8E
  loc_B1A8DC: LitI4 0
  loc_B1A8E1: LitI4 &HBA
  loc_B1A8E6: ILdRf var_8C
  loc_B1A8E9: ImpAdCallI2 SendMessage(, , , )
  loc_B1A8EE: FStR4 var_94
  loc_B1A8F1: SetLastSystemError
  loc_B1A8F2: ILdRf var_94
  loc_B1A8F5: FStR4 var_88
  loc_B1A8F8: ExitProc
  loc_B1A8F9: FStI2 var_86
End Function

Private Function Proc_2_1_B1DB5C(arg_C) 'B1DB5C
  'Data Table: 53B440
  loc_B1DAF6: ILdRf arg_C
  loc_B1DAF9: FStStrCopy var_8C
  loc_B1DAFE: On Error Resume Next
  loc_B1DB03: LitI2_Byte 0
  loc_B1DB05: FStI2 var_86
  loc_B1DB0A: LitI4 0
  loc_B1DB0F: FLdRfVar var_8C
  loc_B1DB12: CVarRef
  loc_B1DB17: ImpAdCallI2 push Dir(, )
  loc_B1DB1C: FStStr var_90
  loc_B1DB21: ILdRf var_90
  loc_B1DB24: FnLenStr
  loc_B1DB25: LitI4 0
  loc_B1DB2A: GtI4
  loc_B1DB2B: FLdRfVar var_A8
  loc_B1DB2E: ImpAdCallI2 Err 'rtcErrObj
  loc_B1DB33: FStAdFunc var_A4
  loc_B1DB36: FLdPr var_A4
  loc_B1DB39:  = Err.Number
  loc_B1DB3E: ILdRf var_A8
  loc_B1DB41: LitI4 0
  loc_B1DB46: EqI4
  loc_B1DB47: AndI4
  loc_B1DB48: FFree1Ad var_A4
  loc_B1DB4B: BranchF loc_B1DB55
  loc_B1DB50: LitI2_Byte &HFF
  loc_B1DB52: FStI2 var_86
  loc_B1DB59: ExitProcI2
End Function

Private Function Proc_2_2_B1D598(arg_C) 'B1D598
  'Data Table: 53B440
  loc_B1D532: ILdRf arg_C
  loc_B1D535: FStStrCopy var_8C
  loc_B1D53A: On Error Resume Next
  loc_B1D53F: LitI2_Byte 0
  loc_B1D541: FStI2 var_86
  loc_B1D546: LitI4 &H10
  loc_B1D54B: FLdRfVar var_8C
  loc_B1D54E: CVarRef
  loc_B1D553: ImpAdCallI2 push Dir(, )
  loc_B1D558: FStStr var_90
  loc_B1D55D: ILdRf var_90
  loc_B1D560: FnLenStr
  loc_B1D561: LitI4 0
  loc_B1D566: GtI4
  loc_B1D567: FLdRfVar var_A8
  loc_B1D56A: ImpAdCallI2 Err 'rtcErrObj
  loc_B1D56F: FStAdFunc var_A4
  loc_B1D572: FLdPr var_A4
  loc_B1D575:  = Err.Number
  loc_B1D57A: ILdRf var_A8
  loc_B1D57D: LitI4 0
  loc_B1D582: EqI4
  loc_B1D583: AndI4
  loc_B1D584: FFree1Ad var_A4
  loc_B1D587: BranchF loc_B1D591
  loc_B1D58C: LitI2_Byte &HFF
  loc_B1D58E: FStI2 var_86
  loc_B1D595: ExitProcI2
End Function

Private Function Proc_2_3_B1F270(arg_10, arg_14) 'B1F270
  'Data Table: 53B440
  loc_B1F1EC: ILdRf arg_10
  loc_B1F1EF: FStStrCopy var_98
  loc_B1F1F2: ILdRf arg_14
  loc_B1F1F5: FStStrCopy var_9C
  loc_B1F1F8: ILdRf var_98
  loc_B1F1FB: FStStrCopy var_A0
  loc_B1F1FE: ILdRf var_9C
  loc_B1F201: FStStrCopy var_A4
  loc_B1F204: LitI4 1
  loc_B1F209: FLdRfVar var_B0
  loc_B1F20C: ILdRf var_A0
  loc_B1F20F: FnLenStr
  loc_B1F210: ForI4 var_B8
  loc_B1F216: ILdRf var_A4
  loc_B1F219: FnLenStr
  loc_B1F21A: CVarI4
  loc_B1F21E: ILdRf var_B0
  loc_B1F221: FLdRfVar var_A0
  loc_B1F224: CVarRef
  loc_B1F229: FLdRfVar var_F8
  loc_B1F22C: ImpAdCallFPR4  = Mid(, , )
  loc_B1F231: FLdRfVar var_F8
  loc_B1F234: CStrVarTmp
  loc_B1F235: FStStr var_AC
  loc_B1F238: FFreeVar var_E8 = ""
  loc_B1F23F: ILdRf var_AC
  loc_B1F242: ILdRf var_A4
  loc_B1F245: EqStr
  loc_B1F247: BranchF loc_B1F256
  loc_B1F24A: ILdRf var_A8
  loc_B1F24D: LitI4 1
  loc_B1F252: AddI4
  loc_B1F253: FStR4 var_A8
  loc_B1F256: FLdRfVar var_B0
  loc_B1F259: NextI4 var_B8, loc_B1F216
  loc_B1F25E: ILdRf var_A8
  loc_B1F261: CVarI4
  loc_B1F265: FStVar var_94
  loc_B1F269: ExitProcCb
End Function

Private Function Proc_2_4_B1ECD0(arg_C) 'B1ECD0
  'Data Table: 53B440
  loc_B1EC40: LitI4 1
  loc_B1EC45: FLdRfVar var_98
  loc_B1EC48: ImpAdCallFPR4  = Chr()
  loc_B1EC4D: LitI4 0
  loc_B1EC52: LitI4 -1
  loc_B1EC57: LitI4 1
  loc_B1EC5C: FLdRfVar var_98
  loc_B1EC5F: CStrVarVal var_9C
  loc_B1EC63: LitStr "\"
  loc_B1EC66: ILdI4 arg_C
  loc_B1EC69: ImpAdCallI2 Replace(, , , , , )
  loc_B1EC6E: FStStr var_88
  loc_B1EC71: FFree1Str var_9C
  loc_B1EC74: FFree1Var var_98 = ""
  loc_B1EC77: LitI4 0
  loc_B1EC7C: LitI4 -1
  loc_B1EC81: LitI4 1
  loc_B1EC86: LitStr "\'"
  loc_B1EC89: LitStr "'"
  loc_B1EC8C: ILdI4 arg_C
  loc_B1EC8F: ImpAdCallI2 Replace(, , , , , )
  loc_B1EC94: FStStr var_88
  loc_B1EC97: LitI4 1
  loc_B1EC9C: FLdRfVar var_98
  loc_B1EC9F: ImpAdCallFPR4  = Chr()
  loc_B1ECA4: LitI4 0
  loc_B1ECA9: LitI4 -1
  loc_B1ECAE: LitI4 1
  loc_B1ECB3: LitStr "\\"
  loc_B1ECB6: FLdRfVar var_98
  loc_B1ECB9: CStrVarVal var_9C
  loc_B1ECBD: ILdI4 arg_C
  loc_B1ECC0: ImpAdCallI2 Replace(, , , , , )
  loc_B1ECC5: FStStr var_88
  loc_B1ECC8: FFree1Str var_9C
  loc_B1ECCB: FFree1Var var_98 = ""
  loc_B1ECCE: ExitProc
End Function

Private Function Proc_2_5_B22C44(arg_10) 'B22C44
  'Data Table: 53B440
  loc_B22B54: ILdI4 arg_10
  loc_B22B57: FStStrCopy var_98
  loc_B22B5A: ILdI4 arg_10
  loc_B22B5D: LitStr vbNullString
  loc_B22B60: EqStr
  loc_B22B62: BranchF loc_B22B69
  loc_B22B65: ExitProcCb
  loc_B22B69: LitI2_Byte 1
  loc_B22B6B: FLdRfVar var_9A
  loc_B22B6E: ILdRf var_98
  loc_B22B71: FnLenStr
  loc_B22B72: CI2I4
  loc_B22B73: ForI2 var_A6
  loc_B22B79: LitI2_Byte 1
  loc_B22B7B: FLdRfVar var_9C
  loc_B22B7E: LitI2 255
  loc_B22B81: ForI2 var_AA
  loc_B22B87: FLdI2 var_9C
  loc_B22B8A: CI4UI1
  loc_B22B8B: FLdRfVar var_BC
  loc_B22B8E: ImpAdCallFPR4  = Chr()
  loc_B22B93: FLdRfVar var_BC
  loc_B22B96: LitVarI2 var_EC, 1
  loc_B22B9B: FLdI2 var_9A
  loc_B22B9E: CI4UI1
  loc_B22B9F: FLdRfVar var_98
  loc_B22BA2: CVarRef
  loc_B22BA7: FLdRfVar var_FC
  loc_B22BAA: ImpAdCallFPR4  = Mid(, , )
  loc_B22BAF: FLdRfVar var_FC
  loc_B22BB2: EqVarBool
  loc_B22BB4: FFreeVar var_EC = "": var_BC = ""
  loc_B22BBD: BranchF loc_B22C25
  loc_B22BC0: FLdI2 var_9A
  loc_B22BC3: CI4UI1
  loc_B22BC4: ILdRf var_98
  loc_B22BC7: FnLenStr
  loc_B22BC8: EqI4
  loc_B22BC9: BranchF loc_B22BE8
  loc_B22BCC: FLdI2 var_9C
  loc_B22BCF: LitI2_Byte &H40
  loc_B22BD1: SubI2
  loc_B22BD2: CStrUI1
  loc_B22BD4: FStStr var_A0
  loc_B22BD7: FLdI2 var_A2
  loc_B22BDA: CR8I2
  loc_B22BDB: ILdRf var_A0
  loc_B22BDE: CR8Str
  loc_B22BE0: AddR8
  loc_B22BE1: CI2R8
  loc_B22BE2: FStI2 var_A2
  loc_B22BE5: Branch loc_B22C25
  loc_B22BE8: FLdI2 var_9A
  loc_B22BEB: CI4UI1
  loc_B22BEC: ILdRf var_98
  loc_B22BEF: FnLenStr
  loc_B22BF0: LitI4 1
  loc_B22BF5: SubI4
  loc_B22BF6: EqI4
  loc_B22BF7: BranchF loc_B22C25
  loc_B22BFA: FLdI2 var_9C
  loc_B22BFD: LitI2_Byte &H40
  loc_B22BFF: SubI2
  loc_B22C00: CVarI2 var_CC
  loc_B22C03: FStVar var_11C
  loc_B22C07: FLdRfVar var_11C
  loc_B22C0A: LitVarI2 var_CC, 64
  loc_B22C0F: MulVar var_BC
  loc_B22C13: CStrVarTmp
  loc_B22C14: FStStr var_A0
  loc_B22C17: FLdI2 var_A2
  loc_B22C1A: CR8I2
  loc_B22C1B: ILdRf var_A0
  loc_B22C1E: CR8Str
  loc_B22C20: AddR8
  loc_B22C21: CI2R8
  loc_B22C22: FStI2 var_A2
  loc_B22C25: FLdRfVar var_9C
  loc_B22C28: NextI2 var_AA, loc_B22B87
  loc_B22C2D: FLdRfVar var_9A
  loc_B22C30: NextI2 var_A6, loc_B22B79
  loc_B22C35: FLdI2 var_A2
  loc_B22C38: CVarI2 var_CC
  loc_B22C3B: FStVar var_94
  loc_B22C3F: ExitProcCb
  loc_B22C43: CStrVarTmp
End Function

Private Function Proc_2_6_B223C4(arg_10) 'B223C4
  'Data Table: 53B440
  loc_B222DC: ILdI2 arg_10
  loc_B222DF: LitI2_Byte 4
  loc_B222E1: LtI2
  loc_B222E2: BranchF loc_B22340
  loc_B222E5: ILdI2 arg_10
  loc_B222E8: LitI2_Byte 0
  loc_B222EA: EqI2
  loc_B222EB: BranchF loc_B222FB
  loc_B222EE: LitVarStr var_AC, "H"
  loc_B222F3: FStVarCopy
  loc_B222F7: ExitProcCb
  loc_B222FB: ILdI2 arg_10
  loc_B222FE: LitI2_Byte 1
  loc_B22300: EqI2
  loc_B22301: BranchF loc_B22311
  loc_B22304: LitVarStr var_AC, "I"
  loc_B22309: FStVarCopy
  loc_B2230D: ExitProcCb
  loc_B22311: ILdI2 arg_10
  loc_B22314: LitI2_Byte 2
  loc_B22316: EqI2
  loc_B22317: BranchF loc_B22327
  loc_B2231A: LitVarStr var_AC, "J"
  loc_B2231F: FStVarCopy
  loc_B22323: ExitProcCb
  loc_B22327: ILdI2 arg_10
  loc_B2232A: LitI2_Byte 3
  loc_B2232C: EqI2
  loc_B2232D: BranchF loc_B2233D
  loc_B22330: LitVarStr var_AC, "K"
  loc_B22335: FStVarCopy
  loc_B22339: ExitProcCb
  loc_B2233D: Branch loc_B223BE
  loc_B22340: ILdI2 arg_10
  loc_B22343: LitI2_Byte 3
  loc_B22345: SubI2
  loc_B22346: FStI2 var_96
  loc_B22349: LitI2_Byte &H41
  loc_B2234B: FStI2 var_9A
  loc_B2234E: LitI2_Byte &H50
  loc_B22350: FStI2 var_98
  loc_B22353: ImpAdCallFPR4 DoEvents()
  loc_B22358: FLdI2 var_96
  loc_B2235B: LitI2_Byte 1
  loc_B2235D: EqI2
  loc_B2235E: BranchF loc_B22392
  loc_B22361: FLdI2 var_98
  loc_B22364: CI4UI1
  loc_B22365: FLdRfVar var_BC
  loc_B22368: ImpAdCallFPR4  = Chr()
  loc_B2236D: FLdRfVar var_BC
  loc_B22370: FLdI2 var_9A
  loc_B22373: CI4UI1
  loc_B22374: FLdRfVar var_CC
  loc_B22377: ImpAdCallFPR4  = Chr()
  loc_B2237C: FLdRfVar var_CC
  loc_B2237F: ConcatVar var_DC
  loc_B22383: FStVar var_94
  loc_B22387: FFreeVar var_BC = ""
  loc_B2238E: ExitProcCb
  loc_B22392: FLdI2 var_96
  loc_B22395: LitI2_Byte 1
  loc_B22397: SubI2
  loc_B22398: FStI2 var_96
  loc_B2239B: FLdI2 var_98
  loc_B2239E: LitI2_Byte 1
  loc_B223A0: AddI2
  loc_B223A1: FStI2 var_98
  loc_B223A4: FLdI2 var_98
  loc_B223A7: LitI2_Byte &H54
  loc_B223A9: EqI2
  loc_B223AA: BranchF loc_B223BB
  loc_B223AD: LitI2_Byte &H50
  loc_B223AF: FStI2 var_98
  loc_B223B2: FLdI2 var_9A
  loc_B223B5: LitI2_Byte 1
  loc_B223B7: AddI2
  loc_B223B8: FStI2 var_9A
  loc_B223BB: Branch loc_B22353
  loc_B223BE: ExitProcCb
  loc_B223C2: LitI2FP 2302
End Function

Private Function Proc_2_7_B2228C(arg_10, arg_14) 'B2228C
  'Data Table: 53B440
  loc_B221B4: ILdRf arg_10
  loc_B221B7: FStStrCopy var_98
  loc_B221BA: ILdRf arg_14
  loc_B221BD: LitI4 0
  loc_B221C2: GtI4
  loc_B221C3: FLdRfVar arg_14
  loc_B221C6: CVarRef
  loc_B221CB: ImpAdCallI2 IsNumeric()
  loc_B221D0: LitI2_Byte &HFF
  loc_B221D2: EqI2
  loc_B221D3: AndI4
  loc_B221D4: BranchF loc_B22285
  loc_B221D7: LitVarI2 var_DC, 1
  loc_B221DC: FLdRfVar var_B8
  loc_B221DF: FLdRfVar var_BC
  loc_B221E2: ImpAdLdRf MemVar_C0F018
  loc_B221E5: NewIfNullPr frmMain
  loc_B221E8: from_stack_1v = frmMain.SockIGet()
  loc_B221ED: ILdRf var_BC
  loc_B221F0: CVarI4
  loc_B221F4: ForVar var_FC
  loc_B221FA: FLdRfVar var_B8
  loc_B221FD: CI4Var
  loc_B221FF: ImpAdLdI4 MemVar_C0F100
  loc_B22202: Ary1LdPr
  loc_B22203: MemLdFPR8 global_224
  loc_B22206: ILdRf arg_14
  loc_B22209: CR8I4
  loc_B2220A: EqR4
  loc_B2220B: BranchF loc_B2227C
  loc_B2220E: FLdRfVar var_104
  loc_B22211: FLdRfVar var_B8
  loc_B22214: CI2Var
  loc_B22215: ImpAdLdRf MemVar_C0F018
  loc_B22218: NewIfNullPr frmMain
  loc_B2221B: VCallAd Control_ID_
  loc_B2221E: FStAdFunc var_100
  loc_B22221: FLdPr var_100
  loc_B22224: Set from_stack_2 = frmMain(from_stack_1)
  loc_B22229: FLdPr var_104
  loc_B2222C: LateIdLdVar var_114 DispID_8 0
  loc_B22233: CI2Var
  loc_B22234: CI4UI1
  loc_B22235: LitI4 7
  loc_B2223A: EqI4
  loc_B2223B: FFreeAd var_100 = ""
  loc_B22242: FFree1Var var_114 = ""
  loc_B22245: BranchF loc_B2227C
  loc_B22248: ILdRf var_98
  loc_B2224B: CVarStr var_A8
  loc_B2224E: PopAdLdVar
  loc_B2224F: FLdRfVar var_104
  loc_B22252: FLdRfVar var_B8
  loc_B22255: CI2Var
  loc_B22256: ImpAdLdRf MemVar_C0F018
  loc_B22259: NewIfNullPr frmMain
  loc_B2225C: VCallAd Control_ID_
  loc_B2225F: FStAdFunc var_100
  loc_B22262: FLdPr var_100
  loc_B22265: Set from_stack_2 = frmMain(from_stack_1)
  loc_B2226A: FLdPr var_104
  loc_B2226D: LateIdCall
  loc_B22275: FFreeAd var_100 = ""
  loc_B2227C: FLdRfVar var_B8
  loc_B2227F: NextStepVar var_FC
  loc_B22285: ExitProcCb
End Function

Private Function Proc_2_8_B229C4(arg_10, arg_14) 'B229C4
  'Data Table: 53B440
  loc_B228D6: ILdRf arg_10
  loc_B228D9: FStStrCopy var_98
  loc_B228DE: On Error Resume Next
  loc_B228E3: ILdRf arg_14
  loc_B228E6: LitI4 0
  loc_B228EB: GtI4
  loc_B228EC: FLdRfVar arg_14
  loc_B228EF: CVarRef
  loc_B228F4: ImpAdCallI2 IsNumeric()
  loc_B228F9: LitI2_Byte &HFF
  loc_B228FB: EqI2
  loc_B228FC: AndI4
  loc_B228FD: BranchF loc_B229BA
  loc_B22902: LitVarI2 var_DC, 1
  loc_B22907: FLdRfVar var_B8
  loc_B2290A: FLdRfVar var_BC
  loc_B2290D: ImpAdLdRf MemVar_C0F018
  loc_B22910: NewIfNullPr frmMain
  loc_B22913: from_stack_1v = frmMain.SockIGet()
  loc_B22918: ILdRf var_BC
  loc_B2291B: CVarI4
  loc_B2291F: ForVar var_FC
  loc_B22927: FLdRfVar var_B8
  loc_B2292A: CI4Var
  loc_B2292C: ImpAdLdI4 MemVar_C0F100
  loc_B2292F: Ary1LdPr
  loc_B22930: MemLdI2 global_4
  loc_B22933: CI4UI1
  loc_B22934: ILdRf arg_14
  loc_B22937: EqI4
  loc_B22938: BranchF loc_B229AD
  loc_B2293D: FLdRfVar var_104
  loc_B22940: FLdRfVar var_B8
  loc_B22943: CI2Var
  loc_B22944: ImpAdLdRf MemVar_C0F018
  loc_B22947: NewIfNullPr frmMain
  loc_B2294A: VCallAd Control_ID_
  loc_B2294D: FStAdFunc var_100
  loc_B22950: FLdPr var_100
  loc_B22953: Set from_stack_2 = frmMain(from_stack_1)
  loc_B22958: FLdPr var_104
  loc_B2295B: LateIdLdVar var_114 DispID_8 0
  loc_B22962: CI2Var
  loc_B22963: CI4UI1
  loc_B22964: LitI4 7
  loc_B22969: EqI4
  loc_B2296A: FFreeAd var_100 = ""
  loc_B22971: FFree1Var var_114 = ""
  loc_B22974: BranchF loc_B229AD
  loc_B22979: ILdRf var_98
  loc_B2297C: CVarStr var_A8
  loc_B2297F: PopAdLdVar
  loc_B22980: FLdRfVar var_104
  loc_B22983: FLdRfVar var_B8
  loc_B22986: CI2Var
  loc_B22987: ImpAdLdRf MemVar_C0F018
  loc_B2298A: NewIfNullPr frmMain
  loc_B2298D: VCallAd Control_ID_
  loc_B22990: FStAdFunc var_100
  loc_B22993: FLdPr var_100
  loc_B22996: Set from_stack_2 = frmMain(from_stack_1)
  loc_B2299B: FLdPr var_104
  loc_B2299E: LateIdCall
  loc_B229A6: FFreeAd var_100 = ""
  loc_B229B1: FLdRfVar var_B8
  loc_B229B4: NextStepVar var_FC
  loc_B229BE: ExitProcCb
End Function

Private Function Proc_2_9_B1E140(arg_C) 'B1E140
  'Data Table: 53B440
  loc_B1E0DC: ILdRf arg_C
  loc_B1E0DF: FStStrCopy var_8C
  loc_B1E0E2: ILdRf var_8C
  loc_B1E0E5: FnLenStr
  loc_B1E0E6: FStR4 var_90
  loc_B1E0E9: ILdRf var_90
  loc_B1E0EC: FLdRfVar var_94
  loc_B1E0EF: LitI4 1
  loc_B1E0F4: LitI4 -1
  loc_B1E0F9: ForStepI4 var_A4
  loc_B1E0FF: LitVarI2 var_D4, 1
  loc_B1E104: ILdRf var_94
  loc_B1E107: FLdRfVar var_8C
  loc_B1E10A: CVarRef
  loc_B1E10F: FLdRfVar var_E4
  loc_B1E112: ImpAdCallFPR4  = Mid(, , )
  loc_B1E117: FLdRfVar var_E4
  loc_B1E11A: CStrVarTmp
  loc_B1E11B: FStStr var_98
  loc_B1E11E: FFreeVar var_D4 = ""
  loc_B1E125: ILdRf var_9C
  loc_B1E128: ILdRf var_98
  loc_B1E12B: ConcatStr
  loc_B1E12C: FStStr var_9C
  loc_B1E12F: FLdRfVar var_94
  loc_B1E132: NextStepI4 var_A4, loc_B1E0FF
  loc_B1E137: ILdRf var_9C
  loc_B1E13A: FStStrCopy var_88
  loc_B1E13D: ExitProc
  loc_B1E13E: FStFPR8 arg_800
End Function

Private Function Proc_2_10_B1FC00(arg_10, arg_14) 'B1FC00
  'Data Table: 53B440
  loc_B1FB68: LitVar_FALSE
  loc_B1FB6C: FStVar var_A4
  loc_B1FB70: LitI4 1
  loc_B1FB75: ILdRf arg_10
  loc_B1FB78: FLdRfVar var_C4
  loc_B1FB7B: ImpAdCallFPR4  = Left(, )
  loc_B1FB80: FLdRfVar var_C4
  loc_B1FB83: ILdI2 arg_14
  loc_B1FB86: CVarI2 var_B4
  loc_B1FB89: HardType
  loc_B1FB8A: EqVarBool
  loc_B1FB8C: FFree1Var var_C4 = ""
  loc_B1FB8F: BranchF loc_B1FB9C
  loc_B1FB92: LitVar_TRUE var_B4
  loc_B1FB95: FStVar var_A4
  loc_B1FB99: Branch loc_B1FBF2
  loc_B1FB9C: LitVarI2 var_104, 1
  loc_B1FBA1: FLdRfVar var_E4
  loc_B1FBA4: ILdRfDarg arg_10
  loc_B1FBAA: FnLenVar var_C4
  loc_B1FBAE: ForVar var_124
  loc_B1FBB4: LitVarI2 var_C4, 1
  loc_B1FBB9: FLdRfVar var_E4
  loc_B1FBBC: CI4Var
  loc_B1FBBE: ILdRf arg_10
  loc_B1FBC1: FLdRfVar var_D4
  loc_B1FBC4: ImpAdCallFPR4  = Mid(, , )
  loc_B1FBC9: FLdRfVar var_D4
  loc_B1FBCC: ILdI2 arg_14
  loc_B1FBCF: CVarI2 var_F4
  loc_B1FBD2: HardType
  loc_B1FBD3: EqVarBool
  loc_B1FBD5: FFreeVar var_C4 = ""
  loc_B1FBDC: BranchF loc_B1FBE9
  loc_B1FBDF: LitVar_TRUE var_B4
  loc_B1FBE2: FStVar var_A4
  loc_B1FBE6: Branch loc_B1FBF2
  loc_B1FBE9: FLdRfVar var_E4
  loc_B1FBEC: NextStepVar var_124
  loc_B1FBF2: FLdRfVar var_A4
  loc_B1FBF5: FStVarCopy
  loc_B1FBF9: ExitProcCb
  loc_B1FBFD: CR4Var
End Function

Private Function Proc_2_11_B22600(arg_C) 'B22600
  'Data Table: 53B440
  loc_B22534: LitVarI2 var_CC, 1
  loc_B22539: FLdRfVar var_98
  loc_B2253C: FLdRfVar var_9C
  loc_B2253F: ImpAdLdRf MemVar_C0F018
  loc_B22542: NewIfNullPr frmMain
  loc_B22545: from_stack_1v = frmMain.SockIGet()
  loc_B2254A: ILdRf var_9C
  loc_B2254D: CVarI4
  loc_B22551: ForVar var_EC
  loc_B22557: FLdRfVar var_98
  loc_B2255A: CI4Var
  loc_B2255C: ImpAdLdI4 MemVar_C0F100
  loc_B2255F: AryLock
  loc_B22562: Ary1LdPr
  loc_B22563: MemLdRfVar from_stack_1.global_204
  loc_B22566: CVarRef
  loc_B2256B: FLdRfVar var_100
  loc_B2256E: ImpAdCallFPR4  = LCase()
  loc_B22573: AryUnlock
  loc_B22576: FLdRfVar var_100
  loc_B22579: ILdRf arg_C
  loc_B2257C: CVarRef
  loc_B22581: FLdRfVar var_110
  loc_B22584: ImpAdCallFPR4  = LCase()
  loc_B22589: FLdRfVar var_110
  loc_B2258C: EqVar var_120
  loc_B22590: FLdRfVar var_128
  loc_B22593: FLdRfVar var_98
  loc_B22596: CI2Var
  loc_B22597: ImpAdLdRf MemVar_C0F018
  loc_B2259A: NewIfNullPr frmMain
  loc_B2259D: VCallAd Control_ID_
  loc_B225A0: FStAdFunc var_124
  loc_B225A3: FLdPr var_124
  loc_B225A6: Set from_stack_2 = frmMain(from_stack_1)
  loc_B225AB: FLdPr var_128
  loc_B225AE: LateIdLdVar var_138 DispID_8 0
  loc_B225B5: CI2Var
  loc_B225B6: CI4UI1
  loc_B225B7: LitI4 7
  loc_B225BC: EqI4
  loc_B225BD: CVarBoolI2 var_CC
  loc_B225C1: AndVar var_148
  loc_B225C5: CBoolVarNull
  loc_B225C7: FFreeAd var_124 = ""
  loc_B225CE: FFreeVar var_100 = "": var_110 = "": var_138 = ""
  loc_B225D9: BranchF loc_B225E6
  loc_B225DC: LitVar_TRUE var_AC
  loc_B225DF: FStVar var_158
  loc_B225E3: Branch loc_B225EE
  loc_B225E6: LitVar_FALSE
  loc_B225EA: FStVar var_158
  loc_B225EE: FLdRfVar var_98
  loc_B225F1: NextStepVar var_EC
  loc_B225F7: FLdRfVar var_158
  loc_B225FA: CStrVar
  loc_B225FC: FStStr var_88
  loc_B225FF: ExitProc
End Function

Private Function Proc_2_12_B1ED84(arg_C) 'B1ED84
  'Data Table: 53B440
  loc_B1ED0C: ILdRf arg_C
  loc_B1ED0F: FStStrCopy var_8C
  loc_B1ED12: FLdRfVar var_8C
  loc_B1ED15: CVarRef
  loc_B1ED1A: FLdRfVar var_AC
  loc_B1ED1D: ImpAdCallFPR4  = LCase()
  loc_B1ED22: FLdRfVar var_F8
  loc_B1ED25: FLdRfVar var_F4
  loc_B1ED28: LitI4 0
  loc_B1ED2D: LitI2_Byte 0
  loc_B1ED2F: LitI4 1
  loc_B1ED34: FMemLdR4 arg_8(8)
  loc_B1ED39: LitStr "habbos\"
  loc_B1ED3C: ConcatStr
  loc_B1ED3D: CVarStr var_BC
  loc_B1ED40: FLdRfVar var_AC
  loc_B1ED43: ConcatVar var_CC
  loc_B1ED47: LitVarStr var_DC, "\num.txt"
  loc_B1ED4C: ConcatVar var_EC
  loc_B1ED50: CStrVarVal var_F0
  loc_B1ED54: FMemLdRf Replace(, , , , , )
  loc_B1ED59: NewIfNullPr IFileSystem3
  loc_B1ED5C: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B1ED61: FLdPr var_F4
  loc_B1ED64:  = Me.ReadAll
  loc_B1ED69: FLdZeroAd var_F8
  loc_B1ED6C: FStStr var_88
  loc_B1ED6F: FFree1Str var_F0
  loc_B1ED72: FFree1Ad var_F4
  loc_B1ED75: FFreeVar var_BC = "": var_AC = "": var_CC = ""
  loc_B1ED80: ExitProc
End Function

Private Function Proc_2_13_B22D7C(arg_C) 'B22D7C
  'Data Table: 53B440
  loc_B22C96: ILdRf arg_C
  loc_B22C99: FStStrCopy var_8C
  loc_B22C9E: On Error Resume Next
  loc_B22CA3: LitI2_Byte 0
  loc_B22CA5: CStrUI1
  loc_B22CA7: FStStr var_94
  loc_B22CAC: FLdRfVar var_A4
  loc_B22CAF: FLdRfVar var_A0
  loc_B22CB2: FMemLdR4 arg_8(8)
  loc_B22CB7: LitStr "habbos"
  loc_B22CBA: ConcatStr
  loc_B22CBB: FStStrNoPop var_9C
  loc_B22CBE: FMemLdRf Replace(, , , , , )
  loc_B22CC3: NewIfNullPr IFileSystem3
  loc_B22CC6: from_stack_2 = IFileSystem3.IFileSystem.GetFolder(from_stack_1v)
  loc_B22CCB: FLdPr var_A0
  loc_B22CCE:  = Me.SubFolders
  loc_B22CD3: FLdZeroAd var_A4
  loc_B22CD6: FStAdFuncNoPop
  loc_B22CD9: FLdRfVar var_90
  loc_B22CDC: FFree1Str var_9C
  loc_B22CDF: FFree1Ad var_A0
  loc_B22CE2: ForEachCollObj
  loc_B22CEC: FLdRfVar var_9C
  loc_B22CEF: FLdPr var_90
  loc_B22CF2:  = Me.Path
  loc_B22CF7: FLdRfVar var_B4
  loc_B22CFA: FLdRfVar var_A0
  loc_B22CFD: LitI4 0
  loc_B22D02: LitI2_Byte 0
  loc_B22D04: LitI4 1
  loc_B22D09: ILdRf var_9C
  loc_B22D0C: LitStr "\name.txt"
  loc_B22D0F: ConcatStr
  loc_B22D10: FStStrNoPop var_B0
  loc_B22D13: FMemLdRf Replace(, , , , , )
  loc_B22D18: NewIfNullPr IFileSystem3
  loc_B22D1B: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B22D20: FLdPr var_A0
  loc_B22D23:  = Me.ReadAll
  loc_B22D28: FLdZeroAd var_B4
  loc_B22D2B: FStStr var_98
  loc_B22D2E: FFreeStr var_9C = ""
  loc_B22D35: FFree1Ad var_A0
  loc_B22D3A: ILdRf var_98
  loc_B22D3D: ImpAdCallI2 Proc_2_12_B1ED84()
  loc_B22D42: FStStrNoPop var_9C
  loc_B22D45: ILdRf var_8C
  loc_B22D48: EqStr
  loc_B22D4A: FFree1Str var_9C
  loc_B22D4D: BranchF loc_B22D60
  loc_B22D52: ILdRf var_98
  loc_B22D55: FStStrCopy var_94
  loc_B22D5A: ExitForCollObj
  loc_B22D64: FLdRfVar var_90
  loc_B22D67: NextEachCollObj
  loc_B22D71: ILdRf var_94
  loc_B22D74: FStStrCopy var_88
  loc_B22D79: ExitProc
  loc_B22D7A: MulCyI2
End Function

Private Function Proc_2_14_B21A80(arg_C) 'B21A80
  'Data Table: 53B440
  loc_B219B8: ILdRf arg_C
  loc_B219BB: FStStrCopy var_8C
  loc_B219BE: LitI2_Byte 0
  loc_B219C0: FStI2 var_92
  loc_B219C3: LitI4 1
  loc_B219C8: FLdRfVar var_90
  loc_B219CB: FLdRfVar var_98
  loc_B219CE: ImpAdLdRf MemVar_C0F018
  loc_B219D1: NewIfNullPr frmMain
  loc_B219D4: from_stack_1v = frmMain.SockIGet()
  loc_B219D9: ILdRf var_98
  loc_B219DC: ForI4 var_A0
  loc_B219E2: ILdRf var_90
  loc_B219E5: ImpAdLdI4 MemVar_C0F100
  loc_B219E8: AryLock
  loc_B219EB: Ary1LdPr
  loc_B219EC: MemLdRfVar from_stack_1.global_204
  loc_B219EF: CVarRef
  loc_B219F4: FLdRfVar var_C4
  loc_B219F7: ImpAdCallFPR4  = LCase()
  loc_B219FC: AryUnlock
  loc_B219FF: FLdRfVar var_C4
  loc_B21A02: FLdRfVar var_8C
  loc_B21A05: CVarRef
  loc_B21A0A: FLdRfVar var_E4
  loc_B21A0D: ImpAdCallFPR4  = LCase()
  loc_B21A12: FLdRfVar var_E4
  loc_B21A15: EqVar var_F4
  loc_B21A19: FLdRfVar var_FC
  loc_B21A1C: ILdRf var_90
  loc_B21A1F: CI2I4
  loc_B21A20: ImpAdLdRf MemVar_C0F018
  loc_B21A23: NewIfNullPr frmMain
  loc_B21A26: VCallAd Control_ID_
  loc_B21A29: FStAdFunc var_F8
  loc_B21A2C: FLdPr var_F8
  loc_B21A2F: Set from_stack_2 = frmMain(from_stack_1)
  loc_B21A34: FLdPr var_FC
  loc_B21A37: LateIdLdVar var_10C DispID_8 0
  loc_B21A3E: CI2Var
  loc_B21A3F: CI4UI1
  loc_B21A40: LitI4 7
  loc_B21A45: EqI4
  loc_B21A46: CVarBoolI2 var_11C
  loc_B21A4A: AndVar var_12C
  loc_B21A4E: CBoolVarNull
  loc_B21A50: FFreeAd var_F8 = ""
  loc_B21A57: FFreeVar var_C4 = "": var_E4 = "": var_10C = ""
  loc_B21A62: BranchF loc_B21A6C
  loc_B21A65: ILdRf var_90
  loc_B21A68: CI2I4
  loc_B21A69: FStI2 var_92
  loc_B21A6C: FLdRfVar var_90
  loc_B21A6F: NextI4 var_A0, loc_B219E2
  loc_B21A74: FLdI2 var_92
  loc_B21A77: CStrUI1
  loc_B21A79: FStStr var_88
  loc_B21A7C: ExitProc
End Function

Private Function Proc_2_15_B22EC4(arg_C, arg_10) 'B22EC4
  'Data Table: 53B440
  loc_B22DDC: LitVarI2 var_CC, 1
  loc_B22DE1: FLdRfVar var_98
  loc_B22DE4: FLdRfVar var_9C
  loc_B22DE7: ImpAdLdRf MemVar_C0F018
  loc_B22DEA: NewIfNullPr frmMain
  loc_B22DED: from_stack_1v = frmMain.SockIGet()
  loc_B22DF2: ILdRf var_9C
  loc_B22DF5: CVarI4
  loc_B22DF9: ForVar var_EC
  loc_B22DFF: FLdRfVar var_98
  loc_B22E02: CI4Var
  loc_B22E04: ImpAdLdI4 MemVar_C0F100
  loc_B22E07: AryLock
  loc_B22E0A: Ary1LdPr
  loc_B22E0B: MemLdRfVar from_stack_1.global_204
  loc_B22E0E: CVarRef
  loc_B22E13: FLdRfVar var_100
  loc_B22E16: ImpAdCallFPR4  = LCase()
  loc_B22E1B: AryUnlock
  loc_B22E1E: FLdRfVar var_100
  loc_B22E21: ILdRf arg_C
  loc_B22E24: CVarRef
  loc_B22E29: FLdRfVar var_110
  loc_B22E2C: ImpAdCallFPR4  = LCase()
  loc_B22E31: FLdRfVar var_110
  loc_B22E34: EqVar var_120
  loc_B22E38: FLdRfVar var_128
  loc_B22E3B: FLdRfVar var_98
  loc_B22E3E: CI2Var
  loc_B22E3F: ImpAdLdRf MemVar_C0F018
  loc_B22E42: NewIfNullPr frmMain
  loc_B22E45: VCallAd Control_ID_
  loc_B22E48: FStAdFunc var_124
  loc_B22E4B: FLdPr var_124
  loc_B22E4E: Set from_stack_2 = frmMain(from_stack_1)
  loc_B22E53: FLdPr var_128
  loc_B22E56: LateIdLdVar var_138 DispID_8 0
  loc_B22E5D: CI2Var
  loc_B22E5E: CI4UI1
  loc_B22E5F: LitI4 7
  loc_B22E64: EqI4
  loc_B22E65: CVarBoolI2 var_CC
  loc_B22E69: AndVar var_148
  loc_B22E6D: CBoolVarNull
  loc_B22E6F: FFreeAd var_124 = ""
  loc_B22E76: FFreeVar var_100 = "": var_110 = "": var_138 = ""
  loc_B22E81: BranchF loc_B22EB8
  loc_B22E84: ILdI4 arg_10
  loc_B22E87: CVarStr var_AC
  loc_B22E8A: PopAdLdVar
  loc_B22E8B: FLdRfVar var_128
  loc_B22E8E: FLdRfVar var_98
  loc_B22E91: CI2Var
  loc_B22E92: ImpAdLdRf MemVar_C0F018
  loc_B22E95: NewIfNullPr frmMain
  loc_B22E98: VCallAd Control_ID_
  loc_B22E9B: FStAdFunc var_124
  loc_B22E9E: FLdPr var_124
  loc_B22EA1: Set from_stack_2 = frmMain(from_stack_1)
  loc_B22EA6: FLdPr var_128
  loc_B22EA9: LateIdCall
  loc_B22EB1: FFreeAd var_124 = ""
  loc_B22EB8: FLdRfVar var_98
  loc_B22EBB: NextStepVar var_EC
  loc_B22EC1: ExitProc
End Function

Private Function Proc_2_16_B1B82C() 'B1B82C
  'Data Table: 53B440
  loc_B1B7E4: FDupVar
  loc_B1B7EA: FDupVar
  loc_B1B7F0: FLdRfVar var_98
  loc_B1B7F3: FLdRfVar var_A8
  loc_B1B7F6: GtVarBool
  loc_B1B7F8: BranchF loc_B1B80C
  loc_B1B7FB: FLdRfVar var_98
  loc_B1B7FE: FStVarCopy
  loc_B1B802: FLdRfVar var_A8
  loc_B1B805: FStVarCopy
  loc_B1B809: Branch loc_B1B81A
  loc_B1B80C: FLdRfVar var_A8
  loc_B1B80F: FStVarCopy
  loc_B1B813: FLdRfVar var_98
  loc_B1B816: FStVarCopy
  loc_B1B81A: FLdRfVar var_C8
  loc_B1B81D: FLdRfVar var_D8
  loc_B1B820: SubVar var_B8
  loc_B1B824: CStrVarTmp
  loc_B1B825: FStStr var_88
  loc_B1B828: ExitProc
  loc_B1B829: BranchF loc_B2198A
End Function

Private Function Proc_2_17_B199F8(arg_10, arg_14) 'B199F8
  'Data Table: 53B440
  loc_B199E8: ILdRf arg_10
  loc_B199EB: FStStrCopy var_98
  loc_B199EE: ILdRf arg_14
  loc_B199F1: FStStrCopy var_9C
  loc_B199F4: ExitProcCb
End Function

Private Function Proc_2_18_B26870(arg_C, arg_10) 'B26870
  'Data Table: 53B440
  loc_B266F8: ILdRf arg_C
  loc_B266FB: FStStrCopy var_8C
  loc_B266FE: ILdRf arg_10
  loc_B26701: FStStrCopy var_90
  loc_B26704: ILdRf var_8C
  loc_B26707: FStStrCopy var_94
  loc_B2670A: ILdRf var_94
  loc_B2670D: LitStr "habbo"
  loc_B26710: EqStr
  loc_B26712: BranchF loc_B26721
  loc_B26715: LitVarI2 var_B4, 0
  loc_B2671A: FStVar var_A4
  loc_B2671E: Branch loc_B2679D
  loc_B26721: ILdRf var_94
  loc_B26724: LitStr "habbox"
  loc_B26727: EqStr
  loc_B26729: BranchF loc_B26738
  loc_B2672C: LitVarI2 var_B4, 1
  loc_B26731: FStVar var_A4
  loc_B26735: Branch loc_B2679D
  loc_B26738: ILdRf var_94
  loc_B2673B: LitStr "silver"
  loc_B2673E: EqStr
  loc_B26740: BranchF loc_B2674F
  loc_B26743: LitVarI2 var_B4, 2
  loc_B26748: FStVar var_A4
  loc_B2674C: Branch loc_B2679D
  loc_B2674F: ILdRf var_94
  loc_B26752: LitStr "gold"
  loc_B26755: EqStr
  loc_B26757: BranchF loc_B26766
  loc_B2675A: LitVarI2 var_B4, 3
  loc_B2675F: FStVar var_A4
  loc_B26763: Branch loc_B2679D
  loc_B26766: ILdRf var_94
  loc_B26769: LitStr "moderator"
  loc_B2676C: EqStr
  loc_B2676E: BranchF loc_B2677D
  loc_B26771: LitVarI2 var_B4, 4
  loc_B26776: FStVar var_A4
  loc_B2677A: Branch loc_B2679D
  loc_B2677D: ILdRf var_94
  loc_B26780: LitStr "admin"
  loc_B26783: EqStr
  loc_B26785: BranchF loc_B26794
  loc_B26788: LitVarI2 var_B4, 5
  loc_B2678D: FStVar var_A4
  loc_B26791: Branch loc_B2679D
  loc_B26794: LitVarI2 var_B4, 0
  loc_B26799: FStVar var_A4
  loc_B2679D: ILdRf var_90
  loc_B267A0: FStStrCopy var_B8
  loc_B267A3: ILdRf var_B8
  loc_B267A6: LitStr "habbo"
  loc_B267A9: EqStr
  loc_B267AB: BranchF loc_B267BA
  loc_B267AE: LitVarI2 var_B4, 0
  loc_B267B3: FStVar var_C8
  loc_B267B7: Branch loc_B26836
  loc_B267BA: ILdRf var_B8
  loc_B267BD: LitStr "habbox"
  loc_B267C0: EqStr
  loc_B267C2: BranchF loc_B267D1
  loc_B267C5: LitVarI2 var_B4, 1
  loc_B267CA: FStVar var_C8
  loc_B267CE: Branch loc_B26836
  loc_B267D1: ILdRf var_B8
  loc_B267D4: LitStr "silver"
  loc_B267D7: EqStr
  loc_B267D9: BranchF loc_B267E8
  loc_B267DC: LitVarI2 var_B4, 2
  loc_B267E1: FStVar var_C8
  loc_B267E5: Branch loc_B26836
  loc_B267E8: ILdRf var_B8
  loc_B267EB: LitStr "gold"
  loc_B267EE: EqStr
  loc_B267F0: BranchF loc_B267FF
  loc_B267F3: LitVarI2 var_B4, 3
  loc_B267F8: FStVar var_C8
  loc_B267FC: Branch loc_B26836
  loc_B267FF: ILdRf var_B8
  loc_B26802: LitStr "moderator"
  loc_B26805: EqStr
  loc_B26807: BranchF loc_B26816
  loc_B2680A: LitVarI2 var_B4, 4
  loc_B2680F: FStVar var_C8
  loc_B26813: Branch loc_B26836
  loc_B26816: ILdRf var_B8
  loc_B26819: LitStr "admin"
  loc_B2681C: EqStr
  loc_B2681E: BranchF loc_B2682D
  loc_B26821: LitVarI2 var_B4, 5
  loc_B26826: FStVar var_C8
  loc_B2682A: Branch loc_B26836
  loc_B2682D: LitVarI2 var_B4, 0
  loc_B26832: FStVar var_C8
  loc_B26836: FLdRfVar var_C8
  loc_B26839: CStrVarVal var_D0
  loc_B2683D: ImpAdCallFPR4 push push Val()
  loc_B26842: FStFPR8 var_D8
  loc_B26845: FLdRfVar var_A4
  loc_B26848: CStrVarVal var_CC
  loc_B2684C: ImpAdCallFPR4 push push Val()
  loc_B26851: CR8R8
  loc_B26852: FLdFPR8 var_D8
  loc_B26855: CR8R8
  loc_B26856: GeR8
  loc_B26857: FFreeStr var_CC = ""
  loc_B2685E: BranchF loc_B26869
  loc_B26861: LitI2_Byte &HFF
  loc_B26863: FStI2 var_86
  loc_B26866: Branch loc_B2686E
  loc_B26869: LitI2_Byte 0
  loc_B2686B: FStI2 var_86
  loc_B2686E: ExitProcI2
End Function

Private Function Proc_2_19_B2B90C(arg_10) 'B2B90C
  'Data Table: 53B440
  loc_B2B6E0: ILdRf arg_10
  loc_B2B6E3: FStStrCopy var_98
  loc_B2B6E6: FLdRfVar var_A6
  loc_B2B6E9: FLdRfVar var_A0
  loc_B2B6EC: FLdRfVar var_9C
  loc_B2B6EF: ImpAdLdRf MemVar_C10514
  loc_B2B6F2: NewIfNullPr Global
  loc_B2B6F5:  = Global.App
  loc_B2B6FA: FLdPr var_9C
  loc_B2B6FD:  = App.Path
  loc_B2B702: ILdRf var_A0
  loc_B2B705: LitStr "\logfiles"
  loc_B2B708: ConcatStr
  loc_B2B709: FStStrNoPop var_A4
  loc_B2B70C: FMemLdRf Replace(, , , , , )
  loc_B2B711: NewIfNullPr IFileSystem3
  loc_B2B714: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B2B719: FLdI2 var_A6
  loc_B2B71C: LitI2_Byte 0
  loc_B2B71E: EqI2
  loc_B2B71F: FFreeStr var_A0 = ""
  loc_B2B726: FFree1Ad var_9C
  loc_B2B729: BranchF loc_B2B76D
  loc_B2B72C: FLdRfVar var_AC
  loc_B2B72F: FLdRfVar var_A0
  loc_B2B732: FLdRfVar var_9C
  loc_B2B735: ImpAdLdRf MemVar_C10514
  loc_B2B738: NewIfNullPr Global
  loc_B2B73B:  = Global.App
  loc_B2B740: FLdPr var_9C
  loc_B2B743:  = App.Path
  loc_B2B748: ILdRf var_A0
  loc_B2B74B: LitStr "\logfiles"
  loc_B2B74E: ConcatStr
  loc_B2B74F: FStStrNoPop var_A4
  loc_B2B752: FMemLdRf Replace(, , , , , )
  loc_B2B757: NewIfNullPr IFileSystem3
  loc_B2B75A: from_stack_2 = IFileSystem3.IFileSystem.CreateFolder(from_stack_1v)
  loc_B2B75F: FFreeStr var_A0 = ""
  loc_B2B766: FFreeAd var_9C = ""
  loc_B2B76D: FLdRfVar var_A6
  loc_B2B770: FLdRfVar var_A0
  loc_B2B773: FLdRfVar var_9C
  loc_B2B776: ImpAdLdRf MemVar_C10514
  loc_B2B779: NewIfNullPr Global
  loc_B2B77C:  = Global.App
  loc_B2B781: FLdPr var_9C
  loc_B2B784:  = App.Path
  loc_B2B789: ILdRf var_A0
  loc_B2B78C: LitStr "\logfiles\"
  loc_B2B78F: ConcatStr
  loc_B2B790: CVarStr var_CC
  loc_B2B793: FLdRfVar var_BC
  loc_B2B796: ImpAdCallFPR4  = Date
  loc_B2B79B: FLdRfVar var_BC
  loc_B2B79E: ConcatVar var_DC
  loc_B2B7A2: LitVarStr var_EC, ".log"
  loc_B2B7A7: ConcatVar var_FC
  loc_B2B7AB: CStrVarVal var_A4
  loc_B2B7AF: FMemLdRf Replace(, , , , , )
  loc_B2B7B4: NewIfNullPr IFileSystem3
  loc_B2B7B7: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B2B7BC: FLdI2 var_A6
  loc_B2B7BF: LitI2_Byte 0
  loc_B2B7C1: EqI2
  loc_B2B7C2: FFreeStr var_A0 = ""
  loc_B2B7C9: FFree1Ad var_9C
  loc_B2B7CC: FFreeVar var_CC = "": var_BC = "": var_DC = ""
  loc_B2B7D7: BranchF loc_B2B87F
  loc_B2B7DA: FLdRfVar var_A0
  loc_B2B7DD: FLdRfVar var_9C
  loc_B2B7E0: ImpAdLdRf MemVar_C10514
  loc_B2B7E3: NewIfNullPr Global
  loc_B2B7E6:  = Global.App
  loc_B2B7EB: FLdPr var_9C
  loc_B2B7EE:  = App.Path
  loc_B2B7F3: FLdRfVar var_FC
  loc_B2B7F6: ImpAdCallFPR4  = Date
  loc_B2B7FB: LitVarStr var_EC, "## "
  loc_B2B800: FLdRfVar var_BC
  loc_B2B803: ImpAdCallFPR4  = Date
  loc_B2B808: FLdRfVar var_BC
  loc_B2B80B: ConcatVar var_CC
  loc_B2B80F: LitVarStr var_10C, " ##"
  loc_B2B814: ConcatVar var_DC
  loc_B2B818: CStrVarVal var_150
  loc_B2B81C: FLdRfVar var_AC
  loc_B2B81F: LitI4 0
  loc_B2B824: LitI2_Byte &HFF
  loc_B2B826: LitI4 2
  loc_B2B82B: ILdRf var_A0
  loc_B2B82E: LitStr "\logfiles\"
  loc_B2B831: ConcatStr
  loc_B2B832: CVarStr var_11C
  loc_B2B835: FLdRfVar var_FC
  loc_B2B838: ConcatVar var_12C
  loc_B2B83C: LitVarStr var_13C, ".log"
  loc_B2B841: ConcatVar var_14C
  loc_B2B845: CStrVarVal var_A4
  loc_B2B849: FMemLdRf Replace(, , , , , )
  loc_B2B84E: NewIfNullPr IFileSystem3
  loc_B2B851: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2B856: FLdPr var_AC
  loc_B2B859: from_stack_2 = Me.Write(from_stack_1v)
  loc_B2B85E: FFreeStr var_A0 = "": var_A4 = ""
  loc_B2B867: FFreeAd var_9C = ""
  loc_B2B86E: FFreeVar var_BC = "": var_CC = "": var_11C = "": var_FC = "": var_12C = "": var_14C = ""
  loc_B2B87F: FLdRfVar var_A0
  loc_B2B882: FLdRfVar var_9C
  loc_B2B885: ImpAdLdRf MemVar_C10514
  loc_B2B888: NewIfNullPr Global
  loc_B2B88B:  = Global.App
  loc_B2B890: FLdPr var_9C
  loc_B2B893:  = App.Path
  loc_B2B898: FLdRfVar var_BC
  loc_B2B89B: ImpAdCallFPR4  = Date
  loc_B2B8A0: LitStr vbCrLf
  loc_B2B8A3: ILdRf var_98
  loc_B2B8A6: ConcatStr
  loc_B2B8A7: FStStrNoPop var_150
  loc_B2B8AA: FLdRfVar var_AC
  loc_B2B8AD: LitI4 0
  loc_B2B8B2: LitI2_Byte 0
  loc_B2B8B4: LitI4 8
  loc_B2B8B9: ILdRf var_A0
  loc_B2B8BC: LitStr "\logfiles\"
  loc_B2B8BF: ConcatStr
  loc_B2B8C0: CVarStr var_CC
  loc_B2B8C3: FLdRfVar var_BC
  loc_B2B8C6: ConcatVar var_DC
  loc_B2B8CA: LitVarStr var_EC, ".log"
  loc_B2B8CF: ConcatVar var_FC
  loc_B2B8D3: CStrVarVal var_A4
  loc_B2B8D7: FMemLdRf Replace(, , , , , )
  loc_B2B8DC: NewIfNullPr IFileSystem3
  loc_B2B8DF: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2B8E4: FLdPr var_AC
  loc_B2B8E7: from_stack_2 = Me.Write(from_stack_1v)
  loc_B2B8EC: FFreeStr var_A0 = "": var_A4 = ""
  loc_B2B8F5: FFreeAd var_9C = ""
  loc_B2B8FC: FFreeVar var_CC = "": var_BC = "": var_DC = ""
  loc_B2B907: ExitProcCb
End Function

Private Function Proc_2_20_B1B384(arg_10, arg_14) 'B1B384
  'Data Table: 53B440
  loc_B1B344: ILdRf arg_14
  loc_B1B347: FStStrCopy var_98
  loc_B1B34A: ILdRf var_98
  loc_B1B34D: CVarStr var_B0
  loc_B1B350: PopAdLdVar
  loc_B1B351: FLdRfVar var_A0
  loc_B1B354: FLdI2 arg_10
  loc_B1B357: ImpAdLdRf MemVar_C0F018
  loc_B1B35A: NewIfNullPr frmMain
  loc_B1B35D: VCallAd Control_ID_
  loc_B1B360: FStAdFunc var_9C
  loc_B1B363: FLdPr var_9C
  loc_B1B366: Set from_stack_2 = frmMain(from_stack_1)
  loc_B1B36B: FLdPr var_A0
  loc_B1B36E: LateIdCall
  loc_B1B376: FFreeAd var_9C = ""
  loc_B1B37D: ExitProcCb
End Function

Private Function Proc_2_21_B6005C(arg_10, arg_14) 'B6005C
  'Data Table: 53B440
  loc_B5F4E4: ILdRf arg_14
  loc_B5F4E7: FStStrCopy var_98
  loc_B5F4EA: LitVarI2 var_DC, 1
  loc_B5F4EF: FLdRfVar var_A8
  loc_B5F4F2: FLdRfVar var_AC
  loc_B5F4F5: ImpAdLdRf MemVar_C0F018
  loc_B5F4F8: NewIfNullPr frmMain
  loc_B5F4FB: from_stack_1v = frmMain.BotIGet()
  loc_B5F500: ILdRf var_AC
  loc_B5F503: CVarI4
  loc_B5F507: ForVar var_FC
  loc_B5F50D: FLdRfVar var_A8
  loc_B5F510: CI4Var
  loc_B5F512: ImpAdLdI4 MemVar_C0F104
  loc_B5F515: Ary1LdPr
  loc_B5F516: MemLdI2 global_12
  loc_B5F519: FLdI2 arg_10
  loc_B5F51C: CI4UI1
  loc_B5F51D: ImpAdLdI4 MemVar_C0F100
  loc_B5F520: Ary1LdPr
  loc_B5F521: MemLdI2 global_4
  loc_B5F524: EqI2
  loc_B5F525: BranchF loc_B5F532
  loc_B5F528: FLdRfVar var_A8
  loc_B5F52B: FStVarCopy
  loc_B5F52F: Branch loc_B5F53F
  loc_B5F532: FLdRfVar var_A8
  loc_B5F535: NextStepVar var_FC
  loc_B5F53B: ExitProcCb
  loc_B5F53F: FLdRfVar var_10C
  loc_B5F542: CI4Var
  loc_B5F544: ImpAdLdI4 MemVar_C0F104
  loc_B5F547: Ary1LdPr
  loc_B5F548: MemLdI2 global_70
  loc_B5F54B: LitI2_Byte &HFF
  loc_B5F54D: EqI2
  loc_B5F54E: BranchF loc_B5F555
  loc_B5F551: ExitProcCb
  loc_B5F555: FLdI2 arg_10
  loc_B5F558: CI4UI1
  loc_B5F559: ImpAdLdI4 MemVar_C0F100
  loc_B5F55C: Ary1LdPr
  loc_B5F55D: MemLdFPR8 global_232
  loc_B5F560: CVarR8
  loc_B5F564: PopAdLdVar
  loc_B5F565: FLdRfVar var_10C
  loc_B5F568: CI4Var
  loc_B5F56A: ImpAdLdI4 MemVar_C0F104
  loc_B5F56D: Ary1LdPr
  loc_B5F56E: MemLdFPR8 global_28
  loc_B5F571: CVarR8
  loc_B5F575: PopAdLdVar
  loc_B5F576: ImpAdCallI2  = Proc_2_16_B1B82C()
  loc_B5F57B: FStStrNoPop var_110
  loc_B5F57E: CR8Str
  loc_B5F580: LitI2_Byte 8
  loc_B5F582: CR8I2
  loc_B5F583: GtR4
  loc_B5F584: FLdI2 arg_10
  loc_B5F587: CI4UI1
  loc_B5F588: ImpAdLdI4 MemVar_C0F100
  loc_B5F58B: Ary1LdPr
  loc_B5F58C: MemLdFPR8 global_240
  loc_B5F58F: CVarR8
  loc_B5F593: PopAdLdVar
  loc_B5F594: FLdRfVar var_10C
  loc_B5F597: CI4Var
  loc_B5F599: ImpAdLdI4 MemVar_C0F104
  loc_B5F59C: Ary1LdPr
  loc_B5F59D: MemLdFPR8 global_36
  loc_B5F5A0: CVarR8
  loc_B5F5A4: PopAdLdVar
  loc_B5F5A5: ImpAdCallI2  = Proc_2_16_B1B82C()
  loc_B5F5AA: FStStrNoPop var_124
  loc_B5F5AD: CR8Str
  loc_B5F5AF: LitI2_Byte 8
  loc_B5F5B1: CR8I2
  loc_B5F5B2: GtR4
  loc_B5F5B3: OrI4
  loc_B5F5B4: FFreeStr var_110 = ""
  loc_B5F5BB: BranchF loc_B5F5C2
  loc_B5F5BE: ExitProcCb
  loc_B5F5C2: FLdRfVar var_98
  loc_B5F5C5: CVarRef
  loc_B5F5CA: FLdRfVar var_134
  loc_B5F5CD: ImpAdCallFPR4  = LCase()
  loc_B5F5D2: FLdRfVar var_134
  loc_B5F5D5: CStrVarTmp
  loc_B5F5D6: FStStr var_98
  loc_B5F5D9: FFree1Var var_134 = ""
  loc_B5F5DC: FMemLdR4 arg_8(8)
  loc_B5F5E1: LitStr "pub\"
  loc_B5F5E4: ConcatStr
  loc_B5F5E5: FStStrNoPop var_110
  loc_B5F5E8: FLdI2 arg_10
  loc_B5F5EB: CI4UI1
  loc_B5F5EC: ImpAdLdI4 MemVar_C0F100
  loc_B5F5EF: Ary1LdPr
  loc_B5F5F0: MemLdI2 global_4
  loc_B5F5F3: CStrUI1
  loc_B5F5F5: FStStrNoPop var_124
  loc_B5F5F8: ConcatStr
  loc_B5F5F9: FStStrNoPop var_138
  loc_B5F5FC: LitStr "\data.ini"
  loc_B5F5FF: ConcatStr
  loc_B5F600: CVarStr var_134
  loc_B5F603: FStVar var_148
  loc_B5F607: FFreeStr var_110 = "": var_124 = ""
  loc_B5F610: LitVarI2 var_DC, 1
  loc_B5F615: FLdRfVar var_A8
  loc_B5F618: LitVarI2 var_CC, 10
  loc_B5F61D: ForVar var_168
  loc_B5F623: LitI4 0
  loc_B5F628: FStStrCopy var_110
  loc_B5F62B: FLdRfVar var_110
  loc_B5F62E: FLdRfVar var_148
  loc_B5F631: LitVarStr var_BC, "call_words_"
  loc_B5F636: FLdRfVar var_A8
  loc_B5F639: ConcatVar var_134
  loc_B5F63D: LitVarStr var_CC, "bot"
  loc_B5F642: PopAdLdVar
  loc_B5F643: ImpAdCallI2 Proc_4_0_B22150(, , , , , , )
  loc_B5F648: CVarStr var_178
  loc_B5F64B: FLdRfVar var_188
  loc_B5F64E: ImpAdCallFPR4  = LCase()
  loc_B5F653: FLdRfVar var_188
  loc_B5F656: FStVar var_198
  loc_B5F65A: FFree1Str var_110
  loc_B5F65D: FFreeVar var_134 = ""
  loc_B5F664: FLdRfVar var_198
  loc_B5F667: LitVarStr var_BC, vbNullString
  loc_B5F66C: HardType
  loc_B5F66D: NeVar var_134
  loc_B5F671: FLdRfVar var_198
  loc_B5F674: LitVarStr var_CC, "0"
  loc_B5F679: HardType
  loc_B5F67A: NeVar var_178
  loc_B5F67E: AndVar var_188
  loc_B5F682: LitI4 1
  loc_B5F687: FLdRfVar var_198
  loc_B5F68A: LitVarStr var_DC, ","
  loc_B5F68F: LitI4 0
  loc_B5F694: FnInStr4Var
  loc_B5F698: LitVarI2 var_120, 0
  loc_B5F69D: HardType
  loc_B5F69E: NeVar var_1B8
  loc_B5F6A2: AndVar var_1C8
  loc_B5F6A6: CBoolVarNull
  loc_B5F6A8: FFree1Var var_1A8 = ""
  loc_B5F6AB: BranchF loc_B5F891
  loc_B5F6AE: LitI4 0
  loc_B5F6B3: LitI4 -1
  loc_B5F6B8: LitVarStr var_BC, ","
  loc_B5F6BD: FStVarCopyObj var_134
  loc_B5F6C0: FLdRfVar var_134
  loc_B5F6C3: FLdRfVar var_198
  loc_B5F6C6: CStrVarVal var_110
  loc_B5F6CA: FLdRfVar var_178
  loc_B5F6CD: ImpAdCallFPR4  = Split(, , , )
  loc_B5F6D2: FLdRfVar var_178
  loc_B5F6D5: FStVar var_1D8
  loc_B5F6D9: FFree1Str var_110
  loc_B5F6DC: FFree1Var var_134 = ""
  loc_B5F6DF: LitVarI2 var_DC, 0
  loc_B5F6E4: FLdRfVar var_1E8
  loc_B5F6E7: FLdRfVar var_1D8
  loc_B5F6EA: CRefVarAry
  loc_B5F6EC: PopAdLd4
  loc_B5F6ED: LitI2_Byte 1
  loc_B5F6EF: FnUBound
  loc_B5F6F1: CVarI4
  loc_B5F6F5: ForVar var_208
  loc_B5F6FB: FLdRfVar var_1E8
  loc_B5F6FE: CDargRef
  loc_B5F702: FLdRfVar var_1D8
  loc_B5F705: VarIndexLdVar
  loc_B5F70B: LitVarStr var_CC, vbNullString
  loc_B5F710: HardType
  loc_B5F711: NeVarBool
  loc_B5F713: FFree1Var var_134 = ""
  loc_B5F716: BranchF loc_B5F888
  loc_B5F719: LitI4 1
  loc_B5F71E: FLdRfVar var_1E8
  loc_B5F721: CDargRef
  loc_B5F725: FLdRfVar var_1D8
  loc_B5F728: VarIndexLdVar
  loc_B5F72E: LitVarStr var_CC, "+"
  loc_B5F733: LitI4 0
  loc_B5F738: FnInStr4Var
  loc_B5F73C: LitVarI2 var_DC, 0
  loc_B5F741: HardType
  loc_B5F742: EqVarBool
  loc_B5F744: FFreeVar var_134 = ""
  loc_B5F74B: BranchF loc_B5F791
  loc_B5F74E: LitI4 1
  loc_B5F753: ILdRf var_98
  loc_B5F756: CVarStr var_CC
  loc_B5F759: FLdRfVar var_1E8
  loc_B5F75C: CDargRef
  loc_B5F760: FLdRfVar var_1D8
  loc_B5F763: VarIndexLdVar
  loc_B5F769: LitI4 0
  loc_B5F76E: FnInStr4Var
  loc_B5F772: LitVarI2 var_DC, 0
  loc_B5F777: HardType
  loc_B5F778: NeVarBool
  loc_B5F77A: FFreeVar var_134 = ""
  loc_B5F781: BranchF loc_B5F78E
  loc_B5F784: FLdRfVar var_A8
  loc_B5F787: FStVarCopy
  loc_B5F78B: Branch loc_B5F891
  loc_B5F78E: Branch loc_B5F888
  loc_B5F791: FLdRfVar var_1E8
  loc_B5F794: CDargRef
  loc_B5F798: FLdRfVar var_1D8
  loc_B5F79B: VarIndexLdVar
  loc_B5F7A1: PopAd
  loc_B5F7A3: FLdRfVar var_1E8
  loc_B5F7A6: CDargRef
  loc_B5F7AA: FLdRfVar var_1D8
  loc_B5F7AD: VarIndexLdVar
  loc_B5F7B3: PopAd
  loc_B5F7B5: LitI4 1
  loc_B5F7BA: ILdRf var_98
  loc_B5F7BD: CVarStr var_228
  loc_B5F7C0: LitVarI2 var_DC, 0
  loc_B5F7C5: PopAdLdVar
  loc_B5F7C6: LitI4 0
  loc_B5F7CB: LitI4 -1
  loc_B5F7D0: LitVarStr var_CC, "+"
  loc_B5F7D5: FStVarCopyObj var_178
  loc_B5F7D8: FLdRfVar var_178
  loc_B5F7DB: FLdRfVar var_134
  loc_B5F7DE: CStrVarVal var_110
  loc_B5F7E2: FLdRfVar var_188
  loc_B5F7E5: ImpAdCallFPR4  = Split(, , , )
  loc_B5F7EA: FLdRfVar var_188
  loc_B5F7ED: VarIndexLdVar
  loc_B5F7F3: LitI4 0
  loc_B5F7F8: FnInStr4Var
  loc_B5F7FC: LitVarI2 var_238, 0
  loc_B5F801: HardType
  loc_B5F802: NeVar var_1C8
  loc_B5F806: LitI4 1
  loc_B5F80B: ILdRf var_98
  loc_B5F80E: CVarStr var_2C8
  loc_B5F811: LitVarI2 var_298, 1
  loc_B5F816: PopAdLdVar
  loc_B5F817: LitI4 0
  loc_B5F81C: LitI4 -1
  loc_B5F821: LitVarStr var_268, "+"
  loc_B5F826: FStVarCopyObj var_278
  loc_B5F829: FLdRfVar var_278
  loc_B5F82C: FLdRfVar var_258
  loc_B5F82F: CStrVarVal var_124
  loc_B5F833: FLdRfVar var_288
  loc_B5F836: ImpAdCallFPR4  = Split(, , , )
  loc_B5F83B: FLdRfVar var_288
  loc_B5F83E: VarIndexLdVar
  loc_B5F844: LitI4 0
  loc_B5F849: FnInStr4Var
  loc_B5F84D: LitVarI2 var_2E8, 0
  loc_B5F852: HardType
  loc_B5F853: NeVar var_2F8
  loc_B5F857: AndVar var_308
  loc_B5F85B: CBoolVarNull
  loc_B5F85D: FFreeStr var_110 = ""
  loc_B5F864: FFreeVar var_134 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1B8 = "": var_258 = "": var_278 = "": var_288 = "": var_2B8 = ""
  loc_B5F87B: BranchF loc_B5F888
  loc_B5F87E: FLdRfVar var_A8
  loc_B5F881: FStVarCopy
  loc_B5F885: Branch loc_B5F89A
  loc_B5F888: FLdRfVar var_1E8
  loc_B5F88B: NextStepVar var_208
  loc_B5F891: FLdRfVar var_A8
  loc_B5F894: NextStepVar var_168
  loc_B5F89A: LitVarI2 var_DC, 1
  loc_B5F89F: FLdRfVar var_A8
  loc_B5F8A2: LitVarI2 var_CC, 3
  loc_B5F8A7: ForVar var_328
  loc_B5F8AD: LitI4 0
  loc_B5F8B2: FStStrCopy var_110
  loc_B5F8B5: FLdRfVar var_110
  loc_B5F8B8: FLdRfVar var_148
  loc_B5F8BB: LitVarStr var_BC, "reaction_"
  loc_B5F8C0: FLdRfVar var_218
  loc_B5F8C3: ConcatVar var_134
  loc_B5F8C7: LitVarStr var_CC, "_"
  loc_B5F8CC: ConcatVar var_178
  loc_B5F8D0: FLdRfVar var_A8
  loc_B5F8D3: ConcatVar var_188
  loc_B5F8D7: LitVarStr var_DC, "bot"
  loc_B5F8DC: PopAdLdVar
  loc_B5F8DD: ImpAdCallI2 Proc_4_0_B22150(, , , , , , )
  loc_B5F8E2: CVarStr var_1A8
  loc_B5F8E5: FStVar var_338
  loc_B5F8E9: FFree1Str var_110
  loc_B5F8EC: FFreeVar var_134 = "": var_178 = ""
  loc_B5F8F5: FLdRfVar var_338
  loc_B5F8F8: LitVarStr var_BC, vbNullString
  loc_B5F8FD: HardType
  loc_B5F8FE: NeVar var_134
  loc_B5F902: FLdRfVar var_338
  loc_B5F905: LitVarStr var_CC, "0"
  loc_B5F90A: HardType
  loc_B5F90B: NeVar var_178
  loc_B5F90F: AndVar var_188
  loc_B5F913: CBoolVarNull
  loc_B5F915: BranchF loc_B5FFF6
  loc_B5F918: LitI4 1
  loc_B5F91D: FLdRfVar var_338
  loc_B5F920: LitI4 2
  loc_B5F925: FLdRfVar var_134
  loc_B5F928: ImpAdCallFPR4  = Chr()
  loc_B5F92D: FLdRfVar var_134
  loc_B5F930: LitI4 0
  loc_B5F935: FnInStr4Var
  loc_B5F939: LitVarI2 var_BC, 0
  loc_B5F93E: HardType
  loc_B5F93F: NeVarBool
  loc_B5F941: FFreeVar var_134 = ""
  loc_B5F948: BranchF loc_B5FFF6
  loc_B5F94B: LitI4 2
  loc_B5F950: FLdRfVar var_134
  loc_B5F953: ImpAdCallFPR4  = Chr()
  loc_B5F958: LitVarI2 var_BC, 0
  loc_B5F95D: PopAdLdVar
  loc_B5F95E: LitI4 0
  loc_B5F963: LitI4 -1
  loc_B5F968: FLdRfVar var_134
  loc_B5F96B: FLdRfVar var_338
  loc_B5F96E: CStrVarVal var_110
  loc_B5F972: FLdRfVar var_178
  loc_B5F975: ImpAdCallFPR4  = Split(, , , )
  loc_B5F97A: FLdRfVar var_178
  loc_B5F97D: VarIndexLdVar
  loc_B5F983: FStVar var_348
  loc_B5F987: FFree1Str var_110
  loc_B5F98A: FFreeVar var_134 = ""
  loc_B5F991: FLdRfVar var_348
  loc_B5F994: FStVarCopy
  loc_B5F998: FLdRfVar var_358
  loc_B5F99B: LitVarStr var_BC, "say"
  loc_B5F9A0: HardType
  loc_B5F9A1: EqVarBool
  loc_B5F9A3: BranchF loc_B5FC21
  loc_B5F9A6: LitVarI2 var_DC, 1
  loc_B5F9AB: FLdRfVar var_368
  loc_B5F9AE: FLdRfVar var_AC
  loc_B5F9B1: ImpAdLdRf MemVar_C0F018
  loc_B5F9B4: NewIfNullPr frmMain
  loc_B5F9B7: from_stack_1v = frmMain.SockIGet()
  loc_B5F9BC: ILdRf var_AC
  loc_B5F9BF: CVarI4
  loc_B5F9C3: ForVar var_388
  loc_B5F9C9: FLdRfVar var_390
  loc_B5F9CC: FLdRfVar var_368
  loc_B5F9CF: CI2Var
  loc_B5F9D0: ImpAdLdRf MemVar_C0F018
  loc_B5F9D3: NewIfNullPr frmMain
  loc_B5F9D6: VCallAd Control_ID_
  loc_B5F9D9: FStAdFunc var_38C
  loc_B5F9DC: FLdPr var_38C
  loc_B5F9DF: Set from_stack_2 = frmMain(from_stack_1)
  loc_B5F9E4: FLdPr var_390
  loc_B5F9E7: LateIdLdVar var_134 DispID_8 0
  loc_B5F9EE: CI2Var
  loc_B5F9EF: CI4UI1
  loc_B5F9F0: LitI4 7
  loc_B5F9F5: EqI4
  loc_B5F9F6: FLdRfVar var_368
  loc_B5F9F9: CI4Var
  loc_B5F9FB: ImpAdLdI4 MemVar_C0F100
  loc_B5F9FE: Ary1LdPr
  loc_B5F9FF: MemLdI2 global_4
  loc_B5FA02: FLdRfVar var_10C
  loc_B5FA05: CI4Var
  loc_B5FA07: ImpAdLdI4 MemVar_C0F104
  loc_B5FA0A: Ary1LdPr
  loc_B5FA0B: MemLdI2 global_12
  loc_B5FA0E: EqI2
  loc_B5FA0F: AndI4
  loc_B5FA10: FLdRfVar var_10C
  loc_B5FA13: CI4Var
  loc_B5FA15: ImpAdLdI4 MemVar_C0F104
  loc_B5FA18: Ary1LdPr
  loc_B5FA19: MemLdFPR8 global_28
  loc_B5FA1C: CVarR8
  loc_B5FA20: PopAdLdVar
  loc_B5FA21: FLdRfVar var_368
  loc_B5FA24: CI4Var
  loc_B5FA26: ImpAdLdI4 MemVar_C0F100
  loc_B5FA29: Ary1LdPr
  loc_B5FA2A: MemLdFPR8 global_232
  loc_B5FA2D: CVarR8
  loc_B5FA31: PopAdLdVar
  loc_B5FA32: ImpAdCallI2  = Proc_2_16_B1B82C()
  loc_B5FA37: FStStrNoPop var_110
  loc_B5FA3A: CR8Str
  loc_B5FA3C: LitI2_Byte 8
  loc_B5FA3E: CR8I2
  loc_B5FA3F: LtR8
  loc_B5FA40: AndI4
  loc_B5FA41: FLdRfVar var_10C
  loc_B5FA44: CI4Var
  loc_B5FA46: ImpAdLdI4 MemVar_C0F104
  loc_B5FA49: Ary1LdPr
  loc_B5FA4A: MemLdFPR8 global_36
  loc_B5FA4D: CVarR8
  loc_B5FA51: PopAdLdVar
  loc_B5FA52: FLdRfVar var_368
  loc_B5FA55: CI4Var
  loc_B5FA57: ImpAdLdI4 MemVar_C0F100
  loc_B5FA5A: Ary1LdPr
  loc_B5FA5B: MemLdFPR8 global_240
  loc_B5FA5E: CVarR8
  loc_B5FA62: PopAdLdVar
  loc_B5FA63: ImpAdCallI2  = Proc_2_16_B1B82C()
  loc_B5FA68: FStStrNoPop var_124
  loc_B5FA6B: CR8Str
  loc_B5FA6D: LitI2_Byte 8
  loc_B5FA6F: CR8I2
  loc_B5FA70: LtR8
  loc_B5FA71: AndI4
  loc_B5FA72: FFreeStr var_110 = ""
  loc_B5FA79: FFreeAd var_38C = ""
  loc_B5FA80: FFree1Var var_134 = ""
  loc_B5FA83: BranchF loc_B5FB37
  loc_B5FA86: LitI4 2
  loc_B5FA8B: FLdRfVar var_134
  loc_B5FA8E: ImpAdCallFPR4  = Chr()
  loc_B5FA93: LitStr "@X"
  loc_B5FA96: FLdRfVar var_10C
  loc_B5FA99: CI4Var
  loc_B5FA9B: ImpAdLdI4 MemVar_C0F104
  loc_B5FA9E: Ary1LdPr
  loc_B5FA9F: MemLdStr global_8
  loc_B5FAA2: CR8I4
  loc_B5FAA3: PopFPR8
  loc_B5FAA4: ImpAdCallI2  = Proc_1_1_B21858()
  loc_B5FAA9: FStStrNoPop var_110
  loc_B5FAAC: ConcatStr
  loc_B5FAAD: CVarStr var_188
  loc_B5FAB0: LitVarI2 var_BC, 1
  loc_B5FAB5: PopAdLdVar
  loc_B5FAB6: LitI4 0
  loc_B5FABB: LitI4 -1
  loc_B5FAC0: FLdRfVar var_134
  loc_B5FAC3: FLdRfVar var_338
  loc_B5FAC6: CStrVarVal var_124
  loc_B5FACA: FLdRfVar var_178
  loc_B5FACD: ImpAdCallFPR4  = Split(, , , )
  loc_B5FAD2: FLdRfVar var_178
  loc_B5FAD5: VarIndexLdVar
  loc_B5FADB: ConcatVar var_1B8
  loc_B5FADF: LitI4 2
  loc_B5FAE4: FLdRfVar var_1C8
  loc_B5FAE7: ImpAdCallFPR4  = Chr()
  loc_B5FAEC: FLdRfVar var_1C8
  loc_B5FAEF: ConcatVar var_258
  loc_B5FAF3: LitI4 1
  loc_B5FAF8: FLdRfVar var_278
  loc_B5FAFB: ImpAdCallFPR4  = Chr()
  loc_B5FB00: FLdRfVar var_278
  loc_B5FB03: ConcatVar var_288
  loc_B5FB07: CStrVarVal var_138
  loc_B5FB0B: FLdRfVar var_368
  loc_B5FB0E: CI2Var
  loc_B5FB0F: FLdRfVar var_2B8
  loc_B5FB12: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_B5FB17: FFreeStr var_110 = "": var_124 = ""
  loc_B5FB20: FFreeVar var_134 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_258 = "": var_278 = "": var_288 = ""
  loc_B5FB37: FLdRfVar var_368
  loc_B5FB3A: NextStepVar var_388
  loc_B5FB40: LitI4 2
  loc_B5FB45: FLdRfVar var_134
  loc_B5FB48: ImpAdCallFPR4  = Chr()
  loc_B5FB4D: LitVarI2 var_BC, 1
  loc_B5FB52: PopAdLdVar
  loc_B5FB53: LitI4 0
  loc_B5FB58: LitI4 -1
  loc_B5FB5D: FLdRfVar var_134
  loc_B5FB60: FLdRfVar var_338
  loc_B5FB63: CStrVarVal var_110
  loc_B5FB67: FLdRfVar var_178
  loc_B5FB6A: ImpAdCallFPR4  = Split(, , , )
  loc_B5FB6F: FLdRfVar var_178
  loc_B5FB72: VarIndexLdVar
  loc_B5FB78: FnLenVar var_1A8
  loc_B5FB7C: LitVarI2 var_DC, 100
  loc_B5FB81: MulVar var_1B8
  loc_B5FB85: FStVar var_3A0
  loc_B5FB89: FFree1Str var_110
  loc_B5FB8C: FFreeVar var_134 = "": var_178 = ""
  loc_B5FB95: FLdRfVar var_3A0
  loc_B5FB98: LitVarI2 var_BC, 500
  loc_B5FB9D: HardType
  loc_B5FB9E: LtVarBool
  loc_B5FBA0: BranchF loc_B5FBAC
  loc_B5FBA3: LitVarI2 var_BC, 500
  loc_B5FBA8: FStVar var_3A0
  loc_B5FBAC: LitI2_Byte &HFF
  loc_B5FBAE: FLdRfVar var_10C
  loc_B5FBB1: CI4Var
  loc_B5FBB3: ImpAdLdI4 MemVar_C0F104
  loc_B5FBB6: Ary1LdPr
  loc_B5FBB7: MemStI2 global_62
  loc_B5FBBA: FLdRfVar var_3A0
  loc_B5FBBD: CI4Var
  loc_B5FBBF: FLdRfVar var_390
  loc_B5FBC2: FLdRfVar var_10C
  loc_B5FBC5: CI2Var
  loc_B5FBC6: ImpAdLdRf MemVar_C0F018
  loc_B5FBC9: NewIfNullPr frmMain
  loc_B5FBCC: VCallAd Control_ID_
  loc_B5FBCF: FStAdFunc var_38C
  loc_B5FBD2: FLdPr var_38C
  loc_B5FBD5: Set from_stack_2 = frmMain(from_stack_1)
  loc_B5FBDA: FLdPr var_390
  loc_B5FBDD: Me.Interval = from_stack_1
  loc_B5FBE2: FFreeAd var_38C = ""
  loc_B5FBE9: LitI2_Byte &HFF
  loc_B5FBEB: FLdRfVar var_390
  loc_B5FBEE: FLdRfVar var_10C
  loc_B5FBF1: CI2Var
  loc_B5FBF2: ImpAdLdRf MemVar_C0F018
  loc_B5FBF5: NewIfNullPr frmMain
  loc_B5FBF8: VCallAd Control_ID_
  loc_B5FBFB: FStAdFunc var_38C
  loc_B5FBFE: FLdPr var_38C
  loc_B5FC01: Set from_stack_2 = frmMain(from_stack_1)
  loc_B5FC06: FLdPr var_390
  loc_B5FC09: Me.Enabled = from_stack_1b
  loc_B5FC0E: FFreeAd var_38C = ""
  loc_B5FC15: LitVarI2 var_BC, 1
  loc_B5FC1A: FStVar var_3B0
  loc_B5FC1E: Branch loc_B5FFF6
  loc_B5FC21: FLdRfVar var_358
  loc_B5FC24: LitVarStr var_BC, "shout"
  loc_B5FC29: HardType
  loc_B5FC2A: EqVarBool
  loc_B5FC2C: BranchF loc_B5FDD7
  loc_B5FC2F: FLdRfVar var_10C
  loc_B5FC32: CI4Var
  loc_B5FC34: ImpAdLdI4 MemVar_C0F104
  loc_B5FC37: Ary1LdPr
  loc_B5FC38: MemLdStr global_8
  loc_B5FC3B: CR8I4
  loc_B5FC3C: PopFPR8
  loc_B5FC3D: ImpAdCallI2  = Proc_1_1_B21858()
  loc_B5FC42: FStStr var_3B4
  loc_B5FC45: LitI4 2
  loc_B5FC4A: FLdRfVar var_134
  loc_B5FC4D: ImpAdCallFPR4  = Chr()
  loc_B5FC52: LitVarI2 var_BC, 1
  loc_B5FC57: PopAdLdVar
  loc_B5FC58: LitI4 0
  loc_B5FC5D: LitI4 -1
  loc_B5FC62: FLdRfVar var_134
  loc_B5FC65: FLdRfVar var_338
  loc_B5FC68: CStrVarVal var_124
  loc_B5FC6C: FLdRfVar var_178
  loc_B5FC6F: ImpAdCallFPR4  = Split(, , , )
  loc_B5FC74: FLdRfVar var_178
  loc_B5FC77: VarIndexLdVar
  loc_B5FC7D: PopAd
  loc_B5FC7F: LitI4 2
  loc_B5FC84: FLdRfVar var_1C8
  loc_B5FC87: ImpAdCallFPR4  = Chr()
  loc_B5FC8C: LitI4 1
  loc_B5FC91: FLdRfVar var_278
  loc_B5FC94: ImpAdCallFPR4  = Chr()
  loc_B5FC99: FLdRfVar var_10C
  loc_B5FC9C: CI4Var
  loc_B5FC9E: ImpAdLdI4 MemVar_C0F104
  loc_B5FCA1: Ary1LdPr
  loc_B5FCA2: MemLdI2 global_12
  loc_B5FCA5: CI4UI1
  loc_B5FCA6: LitStr "@Z"
  loc_B5FCA9: FLdZeroAd var_3B4
  loc_B5FCAC: FStStrNoPop var_110
  loc_B5FCAF: ConcatStr
  loc_B5FCB0: CVarStr var_188
  loc_B5FCB3: FLdRfVar var_1A8
  loc_B5FCB6: ConcatVar var_1B8
  loc_B5FCBA: FLdRfVar var_1C8
  loc_B5FCBD: ConcatVar var_258
  loc_B5FCC1: FLdRfVar var_278
  loc_B5FCC4: ConcatVar var_288
  loc_B5FCC8: CStrVarVal var_138
  loc_B5FCCC: FLdRfVar var_2B8
  loc_B5FCCF: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B5FCD4: FFreeStr var_110 = "": var_124 = "": var_138 = ""
  loc_B5FCDF: FFreeVar var_134 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_258 = "": var_278 = "": var_288 = ""
  loc_B5FCF6: LitI4 2
  loc_B5FCFB: FLdRfVar var_134
  loc_B5FCFE: ImpAdCallFPR4  = Chr()
  loc_B5FD03: LitVarI2 var_BC, 1
  loc_B5FD08: PopAdLdVar
  loc_B5FD09: LitI4 0
  loc_B5FD0E: LitI4 -1
  loc_B5FD13: FLdRfVar var_134
  loc_B5FD16: FLdRfVar var_338
  loc_B5FD19: CStrVarVal var_110
  loc_B5FD1D: FLdRfVar var_178
  loc_B5FD20: ImpAdCallFPR4  = Split(, , , )
  loc_B5FD25: FLdRfVar var_178
  loc_B5FD28: VarIndexLdVar
  loc_B5FD2E: FnLenVar var_1A8
  loc_B5FD32: LitVarI2 var_DC, 100
  loc_B5FD37: MulVar var_1B8
  loc_B5FD3B: FStVar var_3A0
  loc_B5FD3F: FFree1Str var_110
  loc_B5FD42: FFreeVar var_134 = "": var_178 = ""
  loc_B5FD4B: FLdRfVar var_3A0
  loc_B5FD4E: LitVarI2 var_BC, 500
  loc_B5FD53: HardType
  loc_B5FD54: LtVarBool
  loc_B5FD56: BranchF loc_B5FD62
  loc_B5FD59: LitVarI2 var_BC, 500
  loc_B5FD5E: FStVar var_3A0
  loc_B5FD62: LitI2_Byte &HFF
  loc_B5FD64: FLdRfVar var_10C
  loc_B5FD67: CI4Var
  loc_B5FD69: ImpAdLdI4 MemVar_C0F104
  loc_B5FD6C: Ary1LdPr
  loc_B5FD6D: MemStI2 global_62
  loc_B5FD70: FLdRfVar var_3A0
  loc_B5FD73: CI4Var
  loc_B5FD75: FLdRfVar var_390
  loc_B5FD78: FLdRfVar var_10C
  loc_B5FD7B: CI2Var
  loc_B5FD7C: ImpAdLdRf MemVar_C0F018
  loc_B5FD7F: NewIfNullPr frmMain
  loc_B5FD82: VCallAd Control_ID_
  loc_B5FD85: FStAdFunc var_38C
  loc_B5FD88: FLdPr var_38C
  loc_B5FD8B: Set from_stack_2 = frmMain(from_stack_1)
  loc_B5FD90: FLdPr var_390
  loc_B5FD93: Me.Interval = from_stack_1
  loc_B5FD98: FFreeAd var_38C = ""
  loc_B5FD9F: LitI2_Byte &HFF
  loc_B5FDA1: FLdRfVar var_390
  loc_B5FDA4: FLdRfVar var_10C
  loc_B5FDA7: CI2Var
  loc_B5FDA8: ImpAdLdRf MemVar_C0F018
  loc_B5FDAB: NewIfNullPr frmMain
  loc_B5FDAE: VCallAd Control_ID_
  loc_B5FDB1: FStAdFunc var_38C
  loc_B5FDB4: FLdPr var_38C
  loc_B5FDB7: Set from_stack_2 = frmMain(from_stack_1)
  loc_B5FDBC: FLdPr var_390
  loc_B5FDBF: Me.Enabled = from_stack_1b
  loc_B5FDC4: FFreeAd var_38C = ""
  loc_B5FDCB: LitVarI2 var_BC, 1
  loc_B5FDD0: FStVar var_3B0
  loc_B5FDD4: Branch loc_B5FFF6
  loc_B5FDD7: FLdRfVar var_358
  loc_B5FDDA: LitVarStr var_BC, "whisper"
  loc_B5FDDF: HardType
  loc_B5FDE0: EqVarBool
  loc_B5FDE2: BranchF loc_B5FF76
  loc_B5FDE5: LitI4 2
  loc_B5FDEA: FLdRfVar var_134
  loc_B5FDED: ImpAdCallFPR4  = Chr()
  loc_B5FDF2: LitStr "@Y"
  loc_B5FDF5: FLdRfVar var_10C
  loc_B5FDF8: CI4Var
  loc_B5FDFA: ImpAdLdI4 MemVar_C0F104
  loc_B5FDFD: Ary1LdPr
  loc_B5FDFE: MemLdStr global_8
  loc_B5FE01: CR8I4
  loc_B5FE02: PopFPR8
  loc_B5FE03: ImpAdCallI2  = Proc_1_1_B21858()
  loc_B5FE08: FStStrNoPop var_110
  loc_B5FE0B: ConcatStr
  loc_B5FE0C: CVarStr var_188
  loc_B5FE0F: LitVarI2 var_BC, 1
  loc_B5FE14: PopAdLdVar
  loc_B5FE15: LitI4 0
  loc_B5FE1A: LitI4 -1
  loc_B5FE1F: FLdRfVar var_134
  loc_B5FE22: FLdRfVar var_338
  loc_B5FE25: CStrVarVal var_124
  loc_B5FE29: FLdRfVar var_178
  loc_B5FE2C: ImpAdCallFPR4  = Split(, , , )
  loc_B5FE31: FLdRfVar var_178
  loc_B5FE34: VarIndexLdVar
  loc_B5FE3A: ConcatVar var_1B8
  loc_B5FE3E: LitI4 2
  loc_B5FE43: FLdRfVar var_1C8
  loc_B5FE46: ImpAdCallFPR4  = Chr()
  loc_B5FE4B: FLdRfVar var_1C8
  loc_B5FE4E: ConcatVar var_258
  loc_B5FE52: LitI4 1
  loc_B5FE57: FLdRfVar var_278
  loc_B5FE5A: ImpAdCallFPR4  = Chr()
  loc_B5FE5F: FLdRfVar var_278
  loc_B5FE62: ConcatVar var_288
  loc_B5FE66: CStrVarVal var_138
  loc_B5FE6A: FLdI2 arg_10
  loc_B5FE6D: FLdRfVar var_2B8
  loc_B5FE70: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_B5FE75: FFreeStr var_110 = "": var_124 = ""
  loc_B5FE7E: FFreeVar var_134 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_258 = "": var_278 = "": var_288 = ""
  loc_B5FE95: LitI4 2
  loc_B5FE9A: FLdRfVar var_134
  loc_B5FE9D: ImpAdCallFPR4  = Chr()
  loc_B5FEA2: LitVarI2 var_BC, 1
  loc_B5FEA7: PopAdLdVar
  loc_B5FEA8: LitI4 0
  loc_B5FEAD: LitI4 -1
  loc_B5FEB2: FLdRfVar var_134
  loc_B5FEB5: FLdRfVar var_338
  loc_B5FEB8: CStrVarVal var_110
  loc_B5FEBC: FLdRfVar var_178
  loc_B5FEBF: ImpAdCallFPR4  = Split(, , , )
  loc_B5FEC4: FLdRfVar var_178
  loc_B5FEC7: VarIndexLdVar
  loc_B5FECD: FnLenVar var_1A8
  loc_B5FED1: LitVarI2 var_DC, 100
  loc_B5FED6: MulVar var_1B8
  loc_B5FEDA: FStVar var_3A0
  loc_B5FEDE: FFree1Str var_110
  loc_B5FEE1: FFreeVar var_134 = "": var_178 = ""
  loc_B5FEEA: FLdRfVar var_3A0
  loc_B5FEED: LitVarI2 var_BC, 500
  loc_B5FEF2: HardType
  loc_B5FEF3: LtVarBool
  loc_B5FEF5: BranchF loc_B5FF01
  loc_B5FEF8: LitVarI2 var_BC, 500
  loc_B5FEFD: FStVar var_3A0
  loc_B5FF01: LitI2_Byte &HFF
  loc_B5FF03: FLdRfVar var_10C
  loc_B5FF06: CI4Var
  loc_B5FF08: ImpAdLdI4 MemVar_C0F104
  loc_B5FF0B: Ary1LdPr
  loc_B5FF0C: MemStI2 global_62
  loc_B5FF0F: FLdRfVar var_3A0
  loc_B5FF12: CI4Var
  loc_B5FF14: FLdRfVar var_390
  loc_B5FF17: FLdRfVar var_10C
  loc_B5FF1A: CI2Var
  loc_B5FF1B: ImpAdLdRf MemVar_C0F018
  loc_B5FF1E: NewIfNullPr frmMain
  loc_B5FF21: VCallAd Control_ID_
  loc_B5FF24: FStAdFunc var_38C
  loc_B5FF27: FLdPr var_38C
  loc_B5FF2A: Set from_stack_2 = frmMain(from_stack_1)
  loc_B5FF2F: FLdPr var_390
  loc_B5FF32: Me.Interval = from_stack_1
  loc_B5FF37: FFreeAd var_38C = ""
  loc_B5FF3E: LitI2_Byte &HFF
  loc_B5FF40: FLdRfVar var_390
  loc_B5FF43: FLdRfVar var_10C
  loc_B5FF46: CI2Var
  loc_B5FF47: ImpAdLdRf MemVar_C0F018
  loc_B5FF4A: NewIfNullPr frmMain
  loc_B5FF4D: VCallAd Control_ID_
  loc_B5FF50: FStAdFunc var_38C
  loc_B5FF53: FLdPr var_38C
  loc_B5FF56: Set from_stack_2 = frmMain(from_stack_1)
  loc_B5FF5B: FLdPr var_390
  loc_B5FF5E: Me.Enabled = from_stack_1b
  loc_B5FF63: FFreeAd var_38C = ""
  loc_B5FF6A: LitVarI2 var_BC, 1
  loc_B5FF6F: FStVar var_3B0
  loc_B5FF73: Branch loc_B5FFF6
  loc_B5FF76: FLdRfVar var_358
  loc_B5FF79: LitVarStr var_BC, "drink"
  loc_B5FF7E: HardType
  loc_B5FF7F: EqVarBool
  loc_B5FF81: BranchF loc_B5FFF6
  loc_B5FF84: LitI4 2
  loc_B5FF89: FLdRfVar var_134
  loc_B5FF8C: ImpAdCallFPR4  = Chr()
  loc_B5FF91: LitVarI2 var_BC, 1
  loc_B5FF96: PopAdLdVar
  loc_B5FF97: LitI4 0
  loc_B5FF9C: LitI4 -1
  loc_B5FFA1: FLdRfVar var_134
  loc_B5FFA4: FLdRfVar var_338
  loc_B5FFA7: CStrVarVal var_110
  loc_B5FFAB: FLdRfVar var_178
  loc_B5FFAE: ImpAdCallFPR4  = Split(, , , )
  loc_B5FFB3: FLdRfVar var_178
  loc_B5FFB6: VarIndexLdVar
  loc_B5FFBC: PopAd
  loc_B5FFBE: FLdI2 arg_10
  loc_B5FFC1: LitVarStr var_DC, "AP"
  loc_B5FFC6: FLdRfVar var_188
  loc_B5FFC9: ConcatVar var_1A8
  loc_B5FFCD: CStrVarVal var_124
  loc_B5FFD1: FLdRfVar var_1B8
  loc_B5FFD4: ImpAdCallFPR4 Proc_30_69_B30F48(, , )
  loc_B5FFD9: FFreeStr var_110 = ""
  loc_B5FFE0: FFreeVar var_134 = "": var_178 = "": var_188 = "": var_1A8 = ""
  loc_B5FFED: LitVarI2 var_BC, 1
  loc_B5FFF2: FStVar var_3B0
  loc_B5FFF6: FLdRfVar var_A8
  loc_B5FFF9: NextStepVar var_328
  loc_B5FFFF: FLdRfVar var_3B0
  loc_B60002: LitVarI2 var_BC, 1
  loc_B60007: HardType
  loc_B60008: EqVarBool
  loc_B6000A: BranchF loc_B60057
  loc_B6000D: LitI2_Byte &HFF
  loc_B6000F: FLdRfVar var_10C
  loc_B60012: CI4Var
  loc_B60014: ImpAdLdI4 MemVar_C0F104
  loc_B60017: Ary1LdPr
  loc_B60018: MemStI2 global_70
  loc_B6001B: FLdI2 arg_10
  loc_B6001E: CI4UI1
  loc_B6001F: ImpAdLdI4 MemVar_C0F100
  loc_B60022: Ary1LdPr
  loc_B60023: MemLdFPR8 global_232
  loc_B60026: FLdRfVar var_10C
  loc_B60029: CI4Var
  loc_B6002B: ImpAdLdI4 MemVar_C0F104
  loc_B6002E: Ary1LdPr
  loc_B6002F: MemStFPR8 global_44
  loc_B60032: FLdI2 arg_10
  loc_B60035: CI4UI1
  loc_B60036: ImpAdLdI4 MemVar_C0F100
  loc_B60039: Ary1LdPr
  loc_B6003A: MemLdFPR8 global_240
  loc_B6003D: FLdRfVar var_10C
  loc_B60040: CI4Var
  loc_B60042: ImpAdLdI4 MemVar_C0F104
  loc_B60045: Ary1LdPr
  loc_B60046: MemStFPR8 global_52
  loc_B60049: LitI2_Byte &HFF
  loc_B6004B: FLdRfVar var_10C
  loc_B6004E: CI4Var
  loc_B60050: ImpAdLdI4 MemVar_C0F104
  loc_B60053: Ary1LdPr
  loc_B60054: MemStI2 global_60
  loc_B60057: ExitProcCb
End Function
