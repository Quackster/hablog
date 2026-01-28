
Private Function Proc_5_0_B64A30(arg_10) 'B64A30
  'Data Table: 53A328
  loc_B63B04: LitStr vbNullString
  loc_B63B07: FStStrCopy var_A0
  loc_B63B0A: ILdI2 arg_10
  loc_B63B0D: CI4UI1
  loc_B63B0E: ImpAdLdI4 MemVar_C0F100
  loc_B63B11: AryLock
  loc_B63B14: Ary1LdPr
  loc_B63B15: MemLdRfVar from_stack_1.global_204
  loc_B63B18: CVarRef
  loc_B63B1D: FLdRfVar var_C8
  loc_B63B20: ImpAdCallFPR4  = LCase()
  loc_B63B25: AryUnlock
  loc_B63B28: FLdRfVar var_112
  loc_B63B2B: FLdRfVar var_110
  loc_B63B2E: LitI4 0
  loc_B63B33: LitI2_Byte 0
  loc_B63B35: LitI4 1
  loc_B63B3A: ImpAdLdI4 MemVar_C0F044
  loc_B63B3D: LitStr "habbos\"
  loc_B63B40: ConcatStr
  loc_B63B41: CVarStr var_D8
  loc_B63B44: FLdRfVar var_C8
  loc_B63B47: ConcatVar var_E8
  loc_B63B4B: LitVarStr var_F8, "\friendlist.txt"
  loc_B63B50: ConcatVar var_108
  loc_B63B54: CStrVarVal var_10C
  loc_B63B58: ImpAdLdRf MemVar_C0F040
  loc_B63B5B: NewIfNullPr IFileSystem3
  loc_B63B5E: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B63B63: FLdPr var_110
  loc_B63B66:  = Me.AtEndOfStream
  loc_B63B6B: FLdI2 var_112
  loc_B63B6E: LitI2_Byte 0
  loc_B63B70: EqI2
  loc_B63B71: FFree1Str var_10C
  loc_B63B74: FFree1Ad var_110
  loc_B63B77: FFreeVar var_D8 = "": var_C8 = "": var_E8 = ""
  loc_B63B82: BranchF loc_B6431C
  loc_B63B85: ILdI2 arg_10
  loc_B63B88: CI4UI1
  loc_B63B89: ImpAdLdI4 MemVar_C0F100
  loc_B63B8C: AryLock
  loc_B63B8F: Ary1LdPr
  loc_B63B90: MemLdRfVar from_stack_1.global_204
  loc_B63B93: CVarRef
  loc_B63B98: FLdRfVar var_C8
  loc_B63B9B: ImpAdCallFPR4  = LCase()
  loc_B63BA0: AryUnlock
  loc_B63BA3: FLdRfVar var_118
  loc_B63BA6: FLdRfVar var_110
  loc_B63BA9: LitI4 0
  loc_B63BAE: LitI2_Byte 0
  loc_B63BB0: LitI4 1
  loc_B63BB5: ImpAdLdI4 MemVar_C0F044
  loc_B63BB8: LitStr "habbos\"
  loc_B63BBB: ConcatStr
  loc_B63BBC: CVarStr var_D8
  loc_B63BBF: FLdRfVar var_C8
  loc_B63BC2: ConcatVar var_E8
  loc_B63BC6: LitVarStr var_F8, "\friendlist.txt"
  loc_B63BCB: ConcatVar var_108
  loc_B63BCF: CStrVarVal var_10C
  loc_B63BD3: ImpAdLdRf MemVar_C0F040
  loc_B63BD6: NewIfNullPr IFileSystem3
  loc_B63BD9: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B63BDE: FLdPr var_110
  loc_B63BE1:  = Me.ReadAll
  loc_B63BE6: LitI4 0
  loc_B63BEB: LitI4 -1
  loc_B63BF0: LitVarStr var_128, ">"
  loc_B63BF5: FStVarCopyObj var_138
  loc_B63BF8: FLdRfVar var_138
  loc_B63BFB: ILdRf var_118
  loc_B63BFE: FLdRfVar var_148
  loc_B63C01: ImpAdCallFPR4  = Split(, , , )
  loc_B63C06: FLdRfVar var_148
  loc_B63C09: StAryVar
  loc_B63C0D: PopTmpLdAdStr var_14C
  loc_B63C10: FLdRfVar var_A4
  loc_B63C13: StAryCopy
  loc_B63C15: FFreeStr var_10C = ""
  loc_B63C1C: FFree1Ad var_110
  loc_B63C1F: FFreeVar var_D8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_138 = ""
  loc_B63C2E: LitVarI2 var_128, 1
  loc_B63C33: FLdRfVar var_15C
  loc_B63C36: ILdRf var_A4
  loc_B63C39: LitI2_Byte 1
  loc_B63C3B: FnUBound
  loc_B63C3D: CVarI4
  loc_B63C41: ForVar var_17C
  loc_B63C47: FLdRfVar var_15C
  loc_B63C4A: CI4Var
  loc_B63C4C: ILdRf var_A4
  loc_B63C4F: Ary1LdI4
  loc_B63C50: LitStr vbNullString
  loc_B63C53: NeStr
  loc_B63C55: FLdRfVar var_15C
  loc_B63C58: CI4Var
  loc_B63C5A: ILdRf var_A4
  loc_B63C5D: Ary1LdI4
  loc_B63C5E: LitStr ">"
  loc_B63C61: NeStr
  loc_B63C63: AndI4
  loc_B63C64: BranchF loc_B64313
  loc_B63C67: LitI4 0
  loc_B63C6C: LitI4 -1
  loc_B63C71: LitI4 1
  loc_B63C76: LitStr vbNullString
  loc_B63C79: LitStr "<"
  loc_B63C7C: FLdRfVar var_15C
  loc_B63C7F: CI4Var
  loc_B63C81: ILdRf var_A4
  loc_B63C84: Ary1LdI4
  loc_B63C85: ImpAdCallI2 Replace(, , , , , )
  loc_B63C8A: CVarStr var_C8
  loc_B63C8D: FStVar var_18C
  loc_B63C91: LitStr vbNullString
  loc_B63C94: FStStrCopy var_9C
  loc_B63C97: LitVarI2 var_128, 1
  loc_B63C9C: FLdRfVar var_19C
  loc_B63C9F: FLdRfVar var_14C
  loc_B63CA2: ImpAdLdRf MemVar_C0F018
  loc_B63CA5: NewIfNullPr frmMain
  loc_B63CA8: from_stack_1v = frmMain.SockIGet()
  loc_B63CAD: ILdRf var_14C
  loc_B63CB0: CVarI4
  loc_B63CB4: ForVar var_1BC
  loc_B63CBA: FLdRfVar var_19C
  loc_B63CBD: CI4Var
  loc_B63CBF: ImpAdLdI4 MemVar_C0F100
  loc_B63CC2: AryLock
  loc_B63CC5: Ary1LdPr
  loc_B63CC6: MemLdRfVar from_stack_1.global_204
  loc_B63CC9: CVarRef
  loc_B63CCE: FLdRfVar var_C8
  loc_B63CD1: ImpAdCallFPR4  = LCase()
  loc_B63CD6: AryUnlock
  loc_B63CD9: FLdRfVar var_C8
  loc_B63CDC: FLdRfVar var_18C
  loc_B63CDF: FLdRfVar var_D8
  loc_B63CE2: ImpAdCallFPR4  = LCase()
  loc_B63CE7: FLdRfVar var_D8
  loc_B63CEA: EqVar var_E8
  loc_B63CEE: FLdRfVar var_1C0
  loc_B63CF1: FLdRfVar var_19C
  loc_B63CF4: CI2Var
  loc_B63CF5: ImpAdLdRf MemVar_C0F018
  loc_B63CF8: NewIfNullPr frmMain
  loc_B63CFB: VCallAd Control_ID_
  loc_B63CFE: FStAdFunc var_110
  loc_B63D01: FLdPr var_110
  loc_B63D04: Set from_stack_2 = frmMain(from_stack_1)
  loc_B63D09: FLdPr var_1C0
  loc_B63D0C: LateIdLdVar var_108 DispID_8 0
  loc_B63D13: CI2Var
  loc_B63D14: CI4UI1
  loc_B63D15: LitI4 7
  loc_B63D1A: EqI4
  loc_B63D1B: CVarBoolI2 var_F8
  loc_B63D1F: AndVar var_138
  loc_B63D23: CBoolVarNull
  loc_B63D25: FFreeAd var_110 = ""
  loc_B63D2C: FFreeVar var_C8 = "": var_D8 = "": var_108 = ""
  loc_B63D37: BranchF loc_B63D76
  loc_B63D3A: FLdRfVar var_19C
  loc_B63D3D: CStrVar
  loc_B63D3F: FStStr var_9C
  loc_B63D42: FLdRfVar var_19C
  loc_B63D45: CI4Var
  loc_B63D47: ImpAdLdI4 MemVar_C0F100
  loc_B63D4A: Ary1LdPr
  loc_B63D4B: MemLdFPR8 global_224
  loc_B63D4E: LitI2_Byte 0
  loc_B63D50: CR8I2
  loc_B63D51: GtR4
  loc_B63D52: BranchF loc_B63D61
  loc_B63D55: LitVarStr var_B4, "Floor1b"
  loc_B63D5A: FStVarCopy
  loc_B63D5E: Branch loc_B63D73
  loc_B63D61: LitVarStr var_B4, "hotel_view"
  loc_B63D66: PopAdLdVar
  loc_B63D67: ImpAdCallI2 Proc_7_0_B258E0(, , , )
  loc_B63D6C: CVarStr var_C8
  loc_B63D6F: FStVar var_1D0
  loc_B63D73: Branch loc_B63D7F
  loc_B63D76: FLdRfVar var_19C
  loc_B63D79: NextStepVar var_1BC
  loc_B63D7F: FLdRfVar var_18C
  loc_B63D82: FLdRfVar var_C8
  loc_B63D85: ImpAdCallFPR4  = LCase()
  loc_B63D8A: FLdRfVar var_118
  loc_B63D8D: FLdRfVar var_110
  loc_B63D90: LitI4 0
  loc_B63D95: LitI2_Byte 0
  loc_B63D97: LitI4 1
  loc_B63D9C: ImpAdLdI4 MemVar_C0F044
  loc_B63D9F: LitStr "habbos\"
  loc_B63DA2: ConcatStr
  loc_B63DA3: CVarStr var_D8
  loc_B63DA6: FLdRfVar var_C8
  loc_B63DA9: ConcatVar var_E8
  loc_B63DAD: LitVarStr var_B4, "\lastonline.txt"
  loc_B63DB2: ConcatVar var_108
  loc_B63DB6: CStrVarVal var_10C
  loc_B63DBA: ImpAdLdRf MemVar_C0F040
  loc_B63DBD: NewIfNullPr IFileSystem3
  loc_B63DC0: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B63DC5: FLdPr var_110
  loc_B63DC8:  = Me.ReadAll
  loc_B63DCD: FLdZeroAd var_118
  loc_B63DD0: CVarStr var_138
  loc_B63DD3: FStVar var_1E0
  loc_B63DD7: FFree1Str var_10C
  loc_B63DDA: FFree1Ad var_110
  loc_B63DDD: FFreeVar var_D8 = "": var_C8 = "": var_E8 = ""
  loc_B63DE8: FLdRfVar var_18C
  loc_B63DEB: FLdRfVar var_C8
  loc_B63DEE: ImpAdCallFPR4  = LCase()
  loc_B63DF3: FLdRfVar var_118
  loc_B63DF6: FLdRfVar var_110
  loc_B63DF9: LitI4 0
  loc_B63DFE: LitI2_Byte 0
  loc_B63E00: LitI4 1
  loc_B63E05: ImpAdLdI4 MemVar_C0F044
  loc_B63E08: LitStr "habbos\"
  loc_B63E0B: ConcatStr
  loc_B63E0C: CVarStr var_D8
  loc_B63E0F: FLdRfVar var_C8
  loc_B63E12: ConcatVar var_E8
  loc_B63E16: LitVarStr var_B4, "\sex.txt"
  loc_B63E1B: ConcatVar var_108
  loc_B63E1F: CStrVarVal var_10C
  loc_B63E23: ImpAdLdRf MemVar_C0F040
  loc_B63E26: NewIfNullPr IFileSystem3
  loc_B63E29: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B63E2E: FLdPr var_110
  loc_B63E31:  = Me.ReadAll
  loc_B63E36: FLdZeroAd var_118
  loc_B63E39: CVarStr var_138
  loc_B63E3C: FLdRfVar var_148
  loc_B63E3F: ImpAdCallFPR4  = LCase()
  loc_B63E44: FLdRfVar var_148
  loc_B63E47: LitVarStr var_F8, "m"
  loc_B63E4C: HardType
  loc_B63E4D: EqVarBool
  loc_B63E4F: FFree1Str var_10C
  loc_B63E52: FFree1Ad var_110
  loc_B63E55: FFreeVar var_D8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_138 = ""
  loc_B63E64: BranchF loc_B63E73
  loc_B63E67: LitVarStr var_B4, "I"
  loc_B63E6C: FStVarCopy
  loc_B63E70: Branch loc_B63E7C
  loc_B63E73: LitVarStr var_B4, "H"
  loc_B63E78: FStVarCopy
  loc_B63E7C: FLdRfVar var_18C
  loc_B63E7F: FLdRfVar var_C8
  loc_B63E82: ImpAdCallFPR4  = LCase()
  loc_B63E87: FLdRfVar var_112
  loc_B63E8A: FLdRfVar var_110
  loc_B63E8D: LitI4 0
  loc_B63E92: LitI2_Byte 0
  loc_B63E94: LitI4 1
  loc_B63E99: ImpAdLdI4 MemVar_C0F044
  loc_B63E9C: LitStr "habbos\"
  loc_B63E9F: ConcatStr
  loc_B63EA0: CVarStr var_D8
  loc_B63EA3: FLdRfVar var_C8
  loc_B63EA6: ConcatVar var_E8
  loc_B63EAA: LitVarStr var_B4, "\consolemission.txt"
  loc_B63EAF: ConcatVar var_108
  loc_B63EB3: CStrVarVal var_10C
  loc_B63EB7: ImpAdLdRf MemVar_C0F040
  loc_B63EBA: NewIfNullPr IFileSystem3
  loc_B63EBD: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B63EC2: FLdPr var_110
  loc_B63EC5:  = Me.AtEndOfStream
  loc_B63ECA: FLdI2 var_112
  loc_B63ECD: LitI2_Byte &HFF
  loc_B63ECF: EqI2
  loc_B63ED0: FFree1Str var_10C
  loc_B63ED3: FFree1Ad var_110
  loc_B63ED6: FFreeVar var_D8 = "": var_C8 = "": var_E8 = ""
  loc_B63EE1: BranchF loc_B63EF0
  loc_B63EE4: LitVarStr var_B4, "H"
  loc_B63EE9: FStVarCopy
  loc_B63EED: Branch loc_B63F78
  loc_B63EF0: FLdRfVar var_18C
  loc_B63EF3: FLdRfVar var_C8
  loc_B63EF6: ImpAdCallFPR4  = LCase()
  loc_B63EFB: LitStr "I"
  loc_B63EFE: FLdRfVar var_118
  loc_B63F01: FLdRfVar var_110
  loc_B63F04: LitI4 0
  loc_B63F09: LitI2_Byte 0
  loc_B63F0B: LitI4 1
  loc_B63F10: ImpAdLdI4 MemVar_C0F044
  loc_B63F13: LitStr "habbos\"
  loc_B63F16: ConcatStr
  loc_B63F17: CVarStr var_D8
  loc_B63F1A: FLdRfVar var_C8
  loc_B63F1D: ConcatVar var_E8
  loc_B63F21: LitVarStr var_B4, "\consolemission.txt"
  loc_B63F26: ConcatVar var_108
  loc_B63F2A: CStrVarVal var_10C
  loc_B63F2E: ImpAdLdRf MemVar_C0F040
  loc_B63F31: NewIfNullPr IFileSystem3
  loc_B63F34: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B63F39: FLdPr var_110
  loc_B63F3C:  = Me.ReadAll
  loc_B63F41: ILdRf var_118
  loc_B63F44: ConcatStr
  loc_B63F45: CVarStr var_138
  loc_B63F48: FStVar var_210
  loc_B63F4C: FFreeStr var_10C = ""
  loc_B63F53: FFree1Ad var_110
  loc_B63F56: FFreeVar var_D8 = "": var_C8 = "": var_E8 = ""
  loc_B63F61: FLdRfVar var_210
  loc_B63F64: LitVarStr var_B4, "I "
  loc_B63F69: HardType
  loc_B63F6A: EqVarBool
  loc_B63F6C: BranchF loc_B63F78
  loc_B63F6F: LitVarStr var_B4, "H"
  loc_B63F74: FStVarCopy
  loc_B63F78: ILdRf var_9C
  loc_B63F7B: LitStr vbNullString
  loc_B63F7E: NeStr
  loc_B63F80: BranchF loc_B64151
  loc_B63F83: FLdRfVar var_18C
  loc_B63F86: FLdRfVar var_C8
  loc_B63F89: ImpAdCallFPR4  = LCase()
  loc_B63F8E: FLdRfVar var_18C
  loc_B63F91: FLdRfVar var_2E4
  loc_B63F94: ImpAdCallFPR4  = LCase()
  loc_B63F99: ILdRf var_A0
  loc_B63F9C: LitStr "BI"
  loc_B63F9F: ConcatStr
  loc_B63FA0: FStStrNoPop var_214
  loc_B63FA3: FLdRfVar var_18C
  loc_B63FA6: CStrVarVal var_10C
  loc_B63FAA: ImpAdCallI2 Proc_2_12_B1ED84()
  loc_B63FAF: FStStrNoPop var_118
  loc_B63FB2: CR8Str
  loc_B63FB4: PopFPR8
  loc_B63FB5: ImpAdCallI2  = Proc_1_1_B21858()
  loc_B63FBA: FStStrNoPop var_218
  loc_B63FBD: ConcatStr
  loc_B63FBE: FStStrNoPop var_224
  loc_B63FC1: FLdRfVar var_220
  loc_B63FC4: FLdRfVar var_110
  loc_B63FC7: LitI4 0
  loc_B63FCC: LitI2_Byte 0
  loc_B63FCE: LitI4 1
  loc_B63FD3: ImpAdLdI4 MemVar_C0F044
  loc_B63FD6: LitStr "habbos\"
  loc_B63FD9: ConcatStr
  loc_B63FDA: CVarStr var_D8
  loc_B63FDD: FLdRfVar var_C8
  loc_B63FE0: ConcatVar var_E8
  loc_B63FE4: LitVarStr var_B4, "\name.txt"
  loc_B63FE9: ConcatVar var_108
  loc_B63FED: CStrVarVal var_21C
  loc_B63FF1: ImpAdLdRf MemVar_C0F040
  loc_B63FF4: NewIfNullPr IFileSystem3
  loc_B63FF7: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B63FFC: FLdPr var_110
  loc_B63FFF:  = Me.ReadAll
  loc_B64004: ILdRf var_220
  loc_B64007: ConcatStr
  loc_B64008: CVarStr var_148
  loc_B6400B: LitI4 2
  loc_B64010: FLdRfVar var_138
  loc_B64013: ImpAdCallFPR4  = Chr()
  loc_B64018: FLdRfVar var_138
  loc_B6401B: ConcatVar var_1F0
  loc_B6401F: FLdRfVar var_200
  loc_B64022: ConcatVar var_234
  loc_B64026: FLdRfVar var_210
  loc_B64029: ConcatVar var_244
  loc_B6402D: LitI4 2
  loc_B64032: FLdRfVar var_254
  loc_B64035: ImpAdCallFPR4  = Chr()
  loc_B6403A: FLdRfVar var_254
  loc_B6403D: ConcatVar var_264
  loc_B64041: LitVarStr var_F8, "I"
  loc_B64046: ConcatVar var_274
  loc_B6404A: FLdRfVar var_1D0
  loc_B6404D: ConcatVar var_284
  loc_B64051: LitI4 2
  loc_B64056: FLdRfVar var_294
  loc_B64059: ImpAdCallFPR4  = Chr()
  loc_B6405E: FLdRfVar var_294
  loc_B64061: ConcatVar var_2A4
  loc_B64065: FLdRfVar var_1E0
  loc_B64068: ConcatVar var_2B4
  loc_B6406C: LitI4 2
  loc_B64071: FLdRfVar var_2C4
  loc_B64074: ImpAdCallFPR4  = Chr()
  loc_B64079: FLdRfVar var_2C4
  loc_B6407C: ConcatVar var_2D4
  loc_B64080: FLdRfVar var_31C
  loc_B64083: FLdRfVar var_1C0
  loc_B64086: LitI4 0
  loc_B6408B: LitI2_Byte 0
  loc_B6408D: LitI4 1
  loc_B64092: ImpAdLdI4 MemVar_C0F044
  loc_B64095: LitStr "habbos\"
  loc_B64098: ConcatStr
  loc_B64099: CVarStr var_2F4
  loc_B6409C: FLdRfVar var_2E4
  loc_B6409F: ConcatVar var_304
  loc_B640A3: LitVarStr var_128, "\app.txt"
  loc_B640A8: ConcatVar var_314
  loc_B640AC: CStrVarVal var_318
  loc_B640B0: ImpAdLdRf MemVar_C0F040
  loc_B640B3: NewIfNullPr IFileSystem3
  loc_B640B6: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B640BB: FLdPr var_1C0
  loc_B640BE:  = Me.ReadAll
  loc_B640C3: FLdZeroAd var_31C
  loc_B640C6: CVarStr var_32C
  loc_B640C9: ConcatVar var_33C
  loc_B640CD: LitI4 2
  loc_B640D2: FLdRfVar var_34C
  loc_B640D5: ImpAdCallFPR4  = Chr()
  loc_B640DA: FLdRfVar var_34C
  loc_B640DD: ConcatVar var_35C
  loc_B640E1: LitI4 1
  loc_B640E6: FLdRfVar var_36C
  loc_B640E9: ImpAdCallFPR4  = Chr()
  loc_B640EE: FLdRfVar var_36C
  loc_B640F1: ConcatVar var_37C
  loc_B640F5: CStrVarTmp
  loc_B640F6: FStStr var_A0
  loc_B640F9: FFreeStr var_10C = "": var_118 = "": var_214 = "": var_218 = "": var_21C = "": var_224 = "": var_220 = ""
  loc_B6410C: FFreeAd var_110 = ""
  loc_B64113: FFreeVar var_D8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_148 = "": var_138 = "": var_1F0 = "": var_234 = "": var_244 = "": var_254 = "": var_264 = "": var_274 = "": var_284 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2C4 = "": var_2F4 = "": var_2E4 = "": var_304 = "": var_314 = "": var_2D4 = "": var_32C = "": var_33C = "": var_34C = "": var_35C = "": var_36C = ""
  loc_B6414E: Branch loc_B64313
  loc_B64151: FLdRfVar var_18C
  loc_B64154: FLdRfVar var_C8
  loc_B64157: ImpAdCallFPR4  = LCase()
  loc_B6415C: FLdRfVar var_18C
  loc_B6415F: FLdRfVar var_2D4
  loc_B64162: ImpAdCallFPR4  = LCase()
  loc_B64167: ILdRf var_A0
  loc_B6416A: LitStr "BI"
  loc_B6416D: ConcatStr
  loc_B6416E: FStStrNoPop var_214
  loc_B64171: FLdRfVar var_18C
  loc_B64174: CStrVarVal var_10C
  loc_B64178: ImpAdCallI2 Proc_2_12_B1ED84()
  loc_B6417D: FStStrNoPop var_118
  loc_B64180: CR8Str
  loc_B64182: PopFPR8
  loc_B64183: ImpAdCallI2  = Proc_1_1_B21858()
  loc_B64188: FStStrNoPop var_218
  loc_B6418B: ConcatStr
  loc_B6418C: FStStrNoPop var_224
  loc_B6418F: FLdRfVar var_220
  loc_B64192: FLdRfVar var_110
  loc_B64195: LitI4 0
  loc_B6419A: LitI2_Byte 0
  loc_B6419C: LitI4 1
  loc_B641A1: ImpAdLdI4 MemVar_C0F044
  loc_B641A4: LitStr "habbos\"
  loc_B641A7: ConcatStr
  loc_B641A8: CVarStr var_D8
  loc_B641AB: FLdRfVar var_C8
  loc_B641AE: ConcatVar var_E8
  loc_B641B2: LitVarStr var_B4, "\name.txt"
  loc_B641B7: ConcatVar var_108
  loc_B641BB: CStrVarVal var_21C
  loc_B641BF: ImpAdLdRf MemVar_C0F040
  loc_B641C2: NewIfNullPr IFileSystem3
  loc_B641C5: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B641CA: FLdPr var_110
  loc_B641CD:  = Me.ReadAll
  loc_B641D2: ILdRf var_220
  loc_B641D5: ConcatStr
  loc_B641D6: CVarStr var_148
  loc_B641D9: LitI4 2
  loc_B641DE: FLdRfVar var_138
  loc_B641E1: ImpAdCallFPR4  = Chr()
  loc_B641E6: FLdRfVar var_138
  loc_B641E9: ConcatVar var_1F0
  loc_B641ED: FLdRfVar var_200
  loc_B641F0: ConcatVar var_234
  loc_B641F4: FLdRfVar var_210
  loc_B641F7: ConcatVar var_244
  loc_B641FB: LitI4 2
  loc_B64200: FLdRfVar var_254
  loc_B64203: ImpAdCallFPR4  = Chr()
  loc_B64208: FLdRfVar var_254
  loc_B6420B: ConcatVar var_264
  loc_B6420F: LitVarStr var_F8, "H"
  loc_B64214: ConcatVar var_274
  loc_B64218: LitI4 2
  loc_B6421D: FLdRfVar var_284
  loc_B64220: ImpAdCallFPR4  = Chr()
  loc_B64225: FLdRfVar var_284
  loc_B64228: ConcatVar var_294
  loc_B6422C: FLdRfVar var_1E0
  loc_B6422F: ConcatVar var_2A4
  loc_B64233: LitI4 2
  loc_B64238: FLdRfVar var_2B4
  loc_B6423B: ImpAdCallFPR4  = Chr()
  loc_B64240: FLdRfVar var_2B4
  loc_B64243: ConcatVar var_2C4
  loc_B64247: FLdRfVar var_31C
  loc_B6424A: FLdRfVar var_1C0
  loc_B6424D: LitI4 0
  loc_B64252: LitI2_Byte 0
  loc_B64254: LitI4 1
  loc_B64259: ImpAdLdI4 MemVar_C0F044
  loc_B6425C: LitStr "habbos\"
  loc_B6425F: ConcatStr
  loc_B64260: CVarStr var_2E4
  loc_B64263: FLdRfVar var_2D4
  loc_B64266: ConcatVar var_2F4
  loc_B6426A: LitVarStr var_128, "\app.txt"
  loc_B6426F: ConcatVar var_304
  loc_B64273: CStrVarVal var_318
  loc_B64277: ImpAdLdRf MemVar_C0F040
  loc_B6427A: NewIfNullPr IFileSystem3
  loc_B6427D: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B64282: FLdPr var_1C0
  loc_B64285:  = Me.ReadAll
  loc_B6428A: FLdZeroAd var_31C
  loc_B6428D: CVarStr var_314
  loc_B64290: ConcatVar var_32C
  loc_B64294: LitI4 2
  loc_B64299: FLdRfVar var_33C
  loc_B6429C: ImpAdCallFPR4  = Chr()
  loc_B642A1: FLdRfVar var_33C
  loc_B642A4: ConcatVar var_34C
  loc_B642A8: LitI4 1
  loc_B642AD: FLdRfVar var_35C
  loc_B642B0: ImpAdCallFPR4  = Chr()
  loc_B642B5: FLdRfVar var_35C
  loc_B642B8: ConcatVar var_36C
  loc_B642BC: CStrVarTmp
  loc_B642BD: FStStr var_A0
  loc_B642C0: FFreeStr var_10C = "": var_118 = "": var_214 = "": var_218 = "": var_21C = "": var_224 = "": var_220 = ""
  loc_B642D3: FFreeAd var_110 = ""
  loc_B642DA: FFreeVar var_D8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_148 = "": var_138 = "": var_1F0 = "": var_234 = "": var_244 = "": var_254 = "": var_264 = "": var_274 = "": var_284 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2E4 = "": var_2D4 = "": var_2F4 = "": var_304 = "": var_2C4 = "": var_314 = "": var_32C = "": var_33C = "": var_34C = "": var_35C = ""
  loc_B64313: FLdRfVar var_15C
  loc_B64316: NextStepVar var_17C
  loc_B6431C: ILdI2 arg_10
  loc_B6431F: CI4UI1
  loc_B64320: ImpAdLdI4 MemVar_C0F100
  loc_B64323: AryLock
  loc_B64326: Ary1LdPr
  loc_B64327: MemLdRfVar from_stack_1.global_204
  loc_B6432A: CVarRef
  loc_B6432F: FLdRfVar var_C8
  loc_B64332: ImpAdCallFPR4  = LCase()
  loc_B64337: AryUnlock
  loc_B6433A: FLdRfVar var_112
  loc_B6433D: FLdRfVar var_110
  loc_B64340: LitI4 0
  loc_B64345: LitI2_Byte 0
  loc_B64347: LitI4 1
  loc_B6434C: ImpAdLdI4 MemVar_C0F044
  loc_B6434F: LitStr "habbos\"
  loc_B64352: ConcatStr
  loc_B64353: CVarStr var_D8
  loc_B64356: FLdRfVar var_C8
  loc_B64359: ConcatVar var_E8
  loc_B6435D: LitVarStr var_F8, "\consolemission.txt"
  loc_B64362: ConcatVar var_108
  loc_B64366: CStrVarVal var_10C
  loc_B6436A: ImpAdLdRf MemVar_C0F040
  loc_B6436D: NewIfNullPr IFileSystem3
  loc_B64370: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B64375: FLdPr var_110
  loc_B64378:  = Me.AtEndOfStream
  loc_B6437D: FLdI2 var_112
  loc_B64380: LitI2_Byte 0
  loc_B64382: EqI2
  loc_B64383: FFree1Str var_10C
  loc_B64386: FFree1Ad var_110
  loc_B64389: FFreeVar var_D8 = "": var_C8 = "": var_E8 = ""
  loc_B64394: BranchF loc_B64416
  loc_B64397: ILdI2 arg_10
  loc_B6439A: CI4UI1
  loc_B6439B: ImpAdLdI4 MemVar_C0F100
  loc_B6439E: AryLock
  loc_B643A1: Ary1LdPr
  loc_B643A2: MemLdRfVar from_stack_1.global_204
  loc_B643A5: CVarRef
  loc_B643AA: FLdRfVar var_C8
  loc_B643AD: ImpAdCallFPR4  = LCase()
  loc_B643B2: AryUnlock
  loc_B643B5: FLdRfVar var_118
  loc_B643B8: FLdRfVar var_110
  loc_B643BB: LitI4 0
  loc_B643C0: LitI2_Byte 0
  loc_B643C2: LitI4 1
  loc_B643C7: ImpAdLdI4 MemVar_C0F044
  loc_B643CA: LitStr "habbos\"
  loc_B643CD: ConcatStr
  loc_B643CE: CVarStr var_D8
  loc_B643D1: FLdRfVar var_C8
  loc_B643D4: ConcatVar var_E8
  loc_B643D8: LitVarStr var_F8, "\consolemission.txt"
  loc_B643DD: ConcatVar var_108
  loc_B643E1: CStrVarVal var_10C
  loc_B643E5: ImpAdLdRf MemVar_C0F040
  loc_B643E8: NewIfNullPr IFileSystem3
  loc_B643EB: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B643F0: FLdPr var_110
  loc_B643F3:  = Me.ReadAll
  loc_B643F8: FLdZeroAd var_118
  loc_B643FB: CVarStr var_138
  loc_B643FE: FStVar var_38C
  loc_B64402: FFree1Str var_10C
  loc_B64405: FFree1Ad var_110
  loc_B64408: FFreeVar var_D8 = "": var_C8 = "": var_E8 = ""
  loc_B64413: Branch loc_B6441F
  loc_B64416: LitVarStr var_B4, vbNullString
  loc_B6441B: FStVarCopy
  loc_B6441F: FLdRfVar var_1C0
  loc_B64422: FLdRfVar var_110
  loc_B64425: ImpAdLdI4 MemVar_C0F044
  loc_B64428: LitStr "habbos\"
  loc_B6442B: ConcatStr
  loc_B6442C: CVarStr var_D8
  loc_B6442F: ILdI2 arg_10
  loc_B64432: CI4UI1
  loc_B64433: ImpAdLdI4 MemVar_C0F100
  loc_B64436: AryLock
  loc_B64439: Ary1LdPr
  loc_B6443A: MemLdRfVar from_stack_1.global_204
  loc_B6443D: CVarRef
  loc_B64442: FLdRfVar var_C8
  loc_B64445: ImpAdCallFPR4  = LCase()
  loc_B6444A: AryUnlock
  loc_B6444D: FLdRfVar var_C8
  loc_B64450: ConcatVar var_E8
  loc_B64454: LitVarStr var_F8, "\directmail\"
  loc_B64459: ConcatVar var_108
  loc_B6445D: CStrVarVal var_10C
  loc_B64461: ImpAdLdRf MemVar_C0F040
  loc_B64464: NewIfNullPr IFileSystem3
  loc_B64467: from_stack_2 = IFileSystem3.IFileSystem.GetFolder(from_stack_1v)
  loc_B6446C: FLdPr var_110
  loc_B6446F:  = Me.Files
  loc_B64474: FLdZeroAd var_1C0
  loc_B64477: FStAdFuncNoPop
  loc_B6447A: FLdRfVar var_390
  loc_B6447D: FFree1Str var_10C
  loc_B64480: FFree1Ad var_110
  loc_B64483: FFreeVar var_D8 = "": var_C8 = "": var_E8 = ""
  loc_B6448E: ForEachCollObj
  loc_B64496: LitI4 3
  loc_B6449B: ILdRf var_390
  loc_B6449E: FStAd var_110 
  loc_B644A2: FLdRfVar var_110
  loc_B644A5: CVarRef
  loc_B644AA: FLdRfVar var_C8
  loc_B644AD: ImpAdCallFPR4  = Right(, )
  loc_B644B2: ILdRf var_110
  loc_B644B5: CastAd
  loc_B644B8: FStAdFunc var_390
  loc_B644BB: FLdRfVar var_C8
  loc_B644BE: LitVarStr var_F8, "txt"
  loc_B644C3: HardType
  loc_B644C4: NeVarBool
  loc_B644C6: FFree1Ad var_110
  loc_B644C9: FFree1Var var_C8 = ""
  loc_B644CC: BranchF loc_B64542
  loc_B644CF: FLdRfVar var_10C
  loc_B644D2: FLdRfVar var_110
  loc_B644D5: LitI4 0
  loc_B644DA: LitI4 1
  loc_B644DF: FLdPr var_390
  loc_B644E2: from_stack_3 = Me.OpenAsTextStream(from_stack_1v, from_stack_2v)
  loc_B644E7: FLdPr var_110
  loc_B644EA:  = Me.ReadAll
  loc_B644EF: LitI4 1
  loc_B644F4: FLdRfVar var_C8
  loc_B644F7: ImpAdCallFPR4  = Chr()
  loc_B644FC: ILdRf var_A0
  loc_B644FF: CVarStr var_128
  loc_B64502: LitVarI2 var_B4, 1
  loc_B64507: PopAdLdVar
  loc_B64508: LitI4 0
  loc_B6450D: LitI4 2
  loc_B64512: FLdRfVar var_C8
  loc_B64515: ILdRf var_10C
  loc_B64518: FLdRfVar var_D8
  loc_B6451B: ImpAdCallFPR4  = Split(, , , )
  loc_B64520: FLdRfVar var_D8
  loc_B64523: VarIndexLdVar
  loc_B64529: ConcatVar var_108
  loc_B6452D: CStrVarTmp
  loc_B6452E: FStStr var_A0
  loc_B64531: FFree1Str var_10C
  loc_B64534: FFree1Ad var_110
  loc_B64537: FFreeVar var_C8 = "": var_D8 = "": var_E8 = ""
  loc_B64542: FLdRfVar var_390
  loc_B64545: NextEachCollObj
  loc_B6454D: ILdI2 arg_10
  loc_B64550: CI4UI1
  loc_B64551: ImpAdLdI4 MemVar_C0F100
  loc_B64554: AryLock
  loc_B64557: Ary1LdPr
  loc_B64558: MemLdRfVar from_stack_1.global_204
  loc_B6455B: CVarRef
  loc_B64560: FLdRfVar var_C8
  loc_B64563: ImpAdCallFPR4  = LCase()
  loc_B64568: AryUnlock
  loc_B6456B: FLdRfVar var_112
  loc_B6456E: FLdRfVar var_110
  loc_B64571: LitI4 0
  loc_B64576: LitI2_Byte 0
  loc_B64578: LitI4 1
  loc_B6457D: ImpAdLdI4 MemVar_C0F044
  loc_B64580: LitStr "habbos\"
  loc_B64583: ConcatStr
  loc_B64584: CVarStr var_D8
  loc_B64587: FLdRfVar var_C8
  loc_B6458A: ConcatVar var_E8
  loc_B6458E: LitVarStr var_F8, "\inquiries.txt"
  loc_B64593: ConcatVar var_108
  loc_B64597: CStrVarVal var_10C
  loc_B6459B: ImpAdLdRf MemVar_C0F040
  loc_B6459E: NewIfNullPr IFileSystem3
  loc_B645A1: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B645A6: FLdPr var_110
  loc_B645A9:  = Me.AtEndOfStream
  loc_B645AE: FLdI2 var_112
  loc_B645B1: LitI2_Byte 0
  loc_B645B3: EqI2
  loc_B645B4: FFree1Str var_10C
  loc_B645B7: FFree1Ad var_110
  loc_B645BA: FFreeVar var_D8 = "": var_C8 = "": var_E8 = ""
  loc_B645C5: BranchF loc_B649B2
  loc_B645C8: ILdI2 arg_10
  loc_B645CB: CI4UI1
  loc_B645CC: ImpAdLdI4 MemVar_C0F100
  loc_B645CF: AryLock
  loc_B645D2: Ary1LdPr
  loc_B645D3: MemLdRfVar from_stack_1.global_204
  loc_B645D6: CVarRef
  loc_B645DB: FLdRfVar var_C8
  loc_B645DE: ImpAdCallFPR4  = LCase()
  loc_B645E3: AryUnlock
  loc_B645E6: FLdRfVar var_118
  loc_B645E9: FLdRfVar var_110
  loc_B645EC: LitI4 0
  loc_B645F1: LitI2_Byte 0
  loc_B645F3: LitI4 1
  loc_B645F8: ImpAdLdI4 MemVar_C0F044
  loc_B645FB: LitStr "habbos\"
  loc_B645FE: ConcatStr
  loc_B645FF: CVarStr var_D8
  loc_B64602: FLdRfVar var_C8
  loc_B64605: ConcatVar var_E8
  loc_B64609: LitVarStr var_F8, "\inquiries.txt"
  loc_B6460E: ConcatVar var_108
  loc_B64612: CStrVarVal var_10C
  loc_B64616: ImpAdLdRf MemVar_C0F040
  loc_B64619: NewIfNullPr IFileSystem3
  loc_B6461C: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B64621: FLdPr var_110
  loc_B64624:  = Me.ReadAll
  loc_B64629: LitI4 0
  loc_B6462E: LitI4 -1
  loc_B64633: LitVarStr var_128, "<"
  loc_B64638: FStVarCopyObj var_138
  loc_B6463B: FLdRfVar var_138
  loc_B6463E: ILdRf var_118
  loc_B64641: FLdRfVar var_148
  loc_B64644: ImpAdCallFPR4  = Split(, , , )
  loc_B64649: FLdRfVar var_148
  loc_B6464C: FStVar var_3A8
  loc_B64650: FFreeStr var_10C = ""
  loc_B64657: FFree1Ad var_110
  loc_B6465A: FFreeVar var_D8 = "": var_C8 = "": var_E8 = "": var_108 = ""
  loc_B64667: LitVarI2 var_128, 1
  loc_B6466C: FLdRfVar var_15C
  loc_B6466F: FLdRfVar var_3A8
  loc_B64672: CRefVarAry
  loc_B64674: PopAdLd4
  loc_B64675: LitI2_Byte 1
  loc_B64677: FnUBound
  loc_B64679: CVarI4
  loc_B6467D: ForVar var_3C8
  loc_B64683: FLdRfVar var_15C
  loc_B64686: CDargRef
  loc_B6468A: FLdRfVar var_3A8
  loc_B6468D: VarIndexLdVar
  loc_B64693: LitVarStr var_F8, vbNullString
  loc_B64698: HardType
  loc_B64699: NeVar var_D8
  loc_B6469D: FLdRfVar var_15C
  loc_B646A0: CDargRef
  loc_B646A4: FLdRfVar var_3A8
  loc_B646A7: VarIndexLdVar
  loc_B646AD: LitVarStr var_3D8, ">"
  loc_B646B2: HardType
  loc_B646B3: NeVar var_108
  loc_B646B7: AndVar var_138
  loc_B646BB: CBoolVarNull
  loc_B646BD: FFreeVar var_C8 = ""
  loc_B646C4: BranchF loc_B649A9
  loc_B646C7: FLdRfVar var_15C
  loc_B646CA: CDargRef
  loc_B646CE: FLdRfVar var_3A8
  loc_B646D1: VarIndexLdVar
  loc_B646D7: PopAd
  loc_B646D9: LitVarI2 var_128, 0
  loc_B646DE: PopAdLdVar
  loc_B646DF: LitI4 0
  loc_B646E4: LitI4 -1
  loc_B646E9: LitVarStr var_F8, ">"
  loc_B646EE: FStVarCopyObj var_D8
  loc_B646F1: FLdRfVar var_D8
  loc_B646F4: FLdRfVar var_C8
  loc_B646F7: CStrVarVal var_10C
  loc_B646FB: FLdRfVar var_E8
  loc_B646FE: ImpAdCallFPR4  = Split(, , , )
  loc_B64703: FLdRfVar var_E8
  loc_B64706: VarIndexLdVar
  loc_B6470C: FStVar var_3E8
  loc_B64710: FFree1Str var_10C
  loc_B64713: FFreeVar var_C8 = "": var_D8 = ""
  loc_B6471C: FLdRfVar var_112
  loc_B6471F: ImpAdLdI4 MemVar_C0F044
  loc_B64722: LitStr "habbos\"
  loc_B64725: ConcatStr
  loc_B64726: CVarStr var_D8
  loc_B64729: FLdRfVar var_3E8
  loc_B6472C: FLdRfVar var_C8
  loc_B6472F: ImpAdCallFPR4  = LCase()
  loc_B64734: FLdRfVar var_C8
  loc_B64737: ConcatVar var_E8
  loc_B6473B: CStrVarVal var_10C
  loc_B6473F: ImpAdLdRf MemVar_C0F040
  loc_B64742: NewIfNullPr IFileSystem3
  loc_B64745: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B6474A: FLdI2 var_112
  loc_B6474D: FFree1Str var_10C
  loc_B64750: FFreeVar var_D8 = "": var_C8 = ""
  loc_B64759: BranchF loc_B6487F
  loc_B6475C: FLdRfVar var_3E8
  loc_B6475F: FLdRfVar var_C8
  loc_B64762: ImpAdCallFPR4  = LCase()
  loc_B64767: FLdRfVar var_3E8
  loc_B6476A: FLdRfVar var_138
  loc_B6476D: ImpAdCallFPR4  = LCase()
  loc_B64772: ILdRf var_A0
  loc_B64775: LitStr "BD"
  loc_B64778: ConcatStr
  loc_B64779: FStStrNoPop var_214
  loc_B6477C: FLdRfVar var_118
  loc_B6477F: FLdRfVar var_110
  loc_B64782: LitI4 0
  loc_B64787: LitI2_Byte 0
  loc_B64789: LitI4 1
  loc_B6478E: ImpAdLdI4 MemVar_C0F044
  loc_B64791: LitStr "habbos\"
  loc_B64794: ConcatStr
  loc_B64795: CVarStr var_D8
  loc_B64798: FLdRfVar var_C8
  loc_B6479B: ConcatVar var_E8
  loc_B6479F: LitVarStr var_B4, "\num.txt"
  loc_B647A4: ConcatVar var_108
  loc_B647A8: CStrVarVal var_10C
  loc_B647AC: ImpAdLdRf MemVar_C0F040
  loc_B647AF: NewIfNullPr IFileSystem3
  loc_B647B2: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B647B7: FLdPr var_110
  loc_B647BA:  = Me.ReadAll
  loc_B647BF: ILdRf var_118
  loc_B647C2: CR8Str
  loc_B647C4: PopFPR8
  loc_B647C5: ImpAdCallI2  = Proc_1_1_B21858()
  loc_B647CA: FStStrNoPop var_218
  loc_B647CD: ConcatStr
  loc_B647CE: FStStrNoPop var_224
  loc_B647D1: FLdRfVar var_220
  loc_B647D4: FLdRfVar var_1C0
  loc_B647D7: LitI4 0
  loc_B647DC: LitI2_Byte 0
  loc_B647DE: LitI4 1
  loc_B647E3: ImpAdLdI4 MemVar_C0F044
  loc_B647E6: LitStr "habbos\"
  loc_B647E9: ConcatStr
  loc_B647EA: CVarStr var_148
  loc_B647ED: FLdRfVar var_138
  loc_B647F0: ConcatVar var_1F0
  loc_B647F4: LitVarStr var_F8, "\name.txt"
  loc_B647F9: ConcatVar var_234
  loc_B647FD: CStrVarVal var_21C
  loc_B64801: ImpAdLdRf MemVar_C0F040
  loc_B64804: NewIfNullPr IFileSystem3
  loc_B64807: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B6480C: FLdPr var_1C0
  loc_B6480F:  = Me.ReadAll
  loc_B64814: ILdRf var_220
  loc_B64817: ConcatStr
  loc_B64818: CVarStr var_254
  loc_B6481B: LitI4 2
  loc_B64820: FLdRfVar var_244
  loc_B64823: ImpAdCallFPR4  = Chr()
  loc_B64828: FLdRfVar var_244
  loc_B6482B: ConcatVar var_264
  loc_B6482F: LitI4 1
  loc_B64834: FLdRfVar var_274
  loc_B64837: ImpAdCallFPR4  = Chr()
  loc_B6483C: FLdRfVar var_274
  loc_B6483F: ConcatVar var_284
  loc_B64843: CStrVarTmp
  loc_B64844: FStStr var_A0
  loc_B64847: FFreeStr var_10C = "": var_118 = "": var_214 = "": var_218 = "": var_21C = "": var_224 = ""
  loc_B64858: FFreeAd var_110 = ""
  loc_B6485F: FFreeVar var_D8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_148 = "": var_138 = "": var_1F0 = "": var_234 = "": var_254 = "": var_244 = "": var_264 = "": var_274 = ""
  loc_B6487C: Branch loc_B649A9
  loc_B6487F: ILdI2 arg_10
  loc_B64882: CI4UI1
  loc_B64883: ImpAdLdI4 MemVar_C0F100
  loc_B64886: AryLock
  loc_B64889: Ary1LdPr
  loc_B6488A: MemLdRfVar from_stack_1.global_204
  loc_B6488D: CVarRef
  loc_B64892: FLdRfVar var_C8
  loc_B64895: ImpAdCallFPR4  = LCase()
  loc_B6489A: AryUnlock
  loc_B6489D: FLdRfVar var_118
  loc_B648A0: FLdRfVar var_110
  loc_B648A3: LitI4 0
  loc_B648A8: LitI2_Byte 0
  loc_B648AA: LitI4 1
  loc_B648AF: ImpAdLdI4 MemVar_C0F044
  loc_B648B2: LitStr "habbos\"
  loc_B648B5: ConcatStr
  loc_B648B6: CVarStr var_D8
  loc_B648B9: FLdRfVar var_C8
  loc_B648BC: ConcatVar var_E8
  loc_B648C0: LitVarStr var_F8, "\inquiries.txt"
  loc_B648C5: ConcatVar var_108
  loc_B648C9: CStrVarVal var_10C
  loc_B648CD: ImpAdLdRf MemVar_C0F040
  loc_B648D0: NewIfNullPr IFileSystem3
  loc_B648D3: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B648D8: FLdPr var_110
  loc_B648DB:  = Me.ReadAll
  loc_B648E0: FLdZeroAd var_118
  loc_B648E3: FStStr var_98
  loc_B648E6: FFree1Str var_10C
  loc_B648E9: FFree1Ad var_110
  loc_B648EC: FFreeVar var_D8 = "": var_C8 = "": var_E8 = ""
  loc_B648F7: LitI4 0
  loc_B648FC: LitI4 -1
  loc_B64901: LitI4 1
  loc_B64906: LitStr vbNullString
  loc_B64909: LitVarStr var_B4, "<"
  loc_B6490E: FLdRfVar var_3E8
  loc_B64911: ConcatVar var_C8
  loc_B64915: LitVarStr var_F8, ">"
  loc_B6491A: ConcatVar var_D8
  loc_B6491E: CStrVarVal var_10C
  loc_B64922: ILdRf var_98
  loc_B64925: ImpAdCallI2 Replace(, , , , , )
  loc_B6492A: FStStr var_98
  loc_B6492D: FFree1Str var_10C
  loc_B64930: FFreeVar var_C8 = ""
  loc_B64937: ILdI2 arg_10
  loc_B6493A: CI4UI1
  loc_B6493B: ImpAdLdI4 MemVar_C0F100
  loc_B6493E: AryLock
  loc_B64941: Ary1LdPr
  loc_B64942: MemLdRfVar from_stack_1.global_204
  loc_B64945: CVarRef
  loc_B6494A: FLdRfVar var_C8
  loc_B6494D: ImpAdCallFPR4  = LCase()
  loc_B64952: AryUnlock
  loc_B64955: ILdRf var_98
  loc_B64958: FLdRfVar var_110
  loc_B6495B: LitI4 0
  loc_B64960: LitI2_Byte 0
  loc_B64962: LitI4 2
  loc_B64967: ImpAdLdI4 MemVar_C0F044
  loc_B6496A: LitStr "habbos\"
  loc_B6496D: ConcatStr
  loc_B6496E: CVarStr var_D8
  loc_B64971: FLdRfVar var_C8
  loc_B64974: ConcatVar var_E8
  loc_B64978: LitVarStr var_F8, "\inquiries.txt"
  loc_B6497D: ConcatVar var_108
  loc_B64981: CStrVarVal var_10C
  loc_B64985: ImpAdLdRf MemVar_C0F040
  loc_B64988: NewIfNullPr IFileSystem3
  loc_B6498B: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B64990: FLdPr var_110
  loc_B64993: from_stack_2 = Me.Write(from_stack_1v)
  loc_B64998: FFree1Str var_10C
  loc_B6499B: FFree1Ad var_110
  loc_B6499E: FFreeVar var_D8 = "": var_C8 = "": var_E8 = ""
  loc_B649A9: FLdRfVar var_15C
  loc_B649AC: NextStepVar var_3C8
  loc_B649B2: LitVarStr var_B4, "@L"
  loc_B649B7: FLdRfVar var_38C
  loc_B649BA: ConcatVar var_C8
  loc_B649BE: LitI4 2
  loc_B649C3: FLdRfVar var_D8
  loc_B649C6: ImpAdCallFPR4  = Chr()
  loc_B649CB: FLdRfVar var_D8
  loc_B649CE: ConcatVar var_E8
  loc_B649D2: LitI4 1
  loc_B649D7: FLdRfVar var_108
  loc_B649DA: ImpAdCallFPR4  = Chr()
  loc_B649DF: FLdRfVar var_108
  loc_B649E2: ConcatVar var_138
  loc_B649E6: ILdRf var_A0
  loc_B649E9: CVarStr var_F8
  loc_B649EC: ConcatVar var_148
  loc_B649F0: PopAdLdVar
  loc_B649F1: FLdRfVar var_1C0
  loc_B649F4: ILdI2 arg_10
  loc_B649F7: ImpAdLdRf MemVar_C0F018
  loc_B649FA: NewIfNullPr frmMain
  loc_B649FD: VCallAd Control_ID_
  loc_B64A00: FStAdFunc var_110
  loc_B64A03: FLdPr var_110
  loc_B64A06: Set from_stack_2 = frmMain(from_stack_1)
  loc_B64A0B: FLdPr var_1C0
  loc_B64A0E: LateIdCall
  loc_B64A16: FFreeAd var_110 = ""
  loc_B64A1D: FFreeVar var_C8 = "": var_D8 = "": var_E8 = "": var_108 = "": var_138 = ""
  loc_B64A2C: ExitProcCb
End Function

Private Function Proc_5_1_B48100(arg_10, arg_14, arg_18) 'B48100
  'Data Table: 53A328
  loc_B47A0C: FLdRfVar var_DA
  loc_B47A0F: ImpAdLdI4 MemVar_C0F044
  loc_B47A12: LitStr "habbos\"
  loc_B47A15: ConcatStr
  loc_B47A16: CVarStr var_C4
  loc_B47A19: ILdRf arg_14
  loc_B47A1C: CVarRef
  loc_B47A21: FLdRfVar var_B4
  loc_B47A24: ImpAdCallFPR4  = LCase()
  loc_B47A29: FLdRfVar var_B4
  loc_B47A2C: ConcatVar var_D4
  loc_B47A30: CStrVarVal var_D8
  loc_B47A34: ImpAdLdRf MemVar_C0F040
  loc_B47A37: NewIfNullPr IFileSystem3
  loc_B47A3A: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B47A3F: FLdI2 var_DA
  loc_B47A42: FFree1Str var_D8
  loc_B47A45: FFreeVar var_C4 = "": var_B4 = ""
  loc_B47A4E: BranchF loc_B480FC
  loc_B47A51: FLdRfVar var_B4
  loc_B47A54: ImpAdCallFPR4  = Date
  loc_B47A59: FLdRfVar var_10C
  loc_B47A5C: ImpAdCallFPR4  = Time
  loc_B47A61: LitI4 1
  loc_B47A66: LitI4 1
  loc_B47A6B: LitVarStr var_A4, "dd-mm-yyyy"
  loc_B47A70: FStVarCopyObj var_C4
  loc_B47A73: FLdRfVar var_C4
  loc_B47A76: FLdRfVar var_B4
  loc_B47A79: FLdRfVar var_D4
  loc_B47A7C: ImpAdCallFPR4  = Format(, )
  loc_B47A81: FLdRfVar var_D4
  loc_B47A84: LitVarStr var_EC, " "
  loc_B47A89: ConcatVar var_FC
  loc_B47A8D: LitI4 1
  loc_B47A92: LitI4 1
  loc_B47A97: LitVarStr var_11C, "hh:mm"
  loc_B47A9C: FStVarCopyObj var_12C
  loc_B47A9F: FLdRfVar var_12C
  loc_B47AA2: FLdRfVar var_10C
  loc_B47AA5: FLdRfVar var_13C
  loc_B47AA8: ImpAdCallFPR4  = Format(, )
  loc_B47AAD: FLdRfVar var_13C
  loc_B47AB0: ConcatVar var_14C
  loc_B47AB4: FStVar var_15C
  loc_B47AB8: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_10C = "": var_12C = "": var_FC = ""
  loc_B47AC9: ILdRf arg_14
  loc_B47ACC: CVarRef
  loc_B47AD1: FLdRfVar var_B4
  loc_B47AD4: ImpAdCallFPR4  = LCase()
  loc_B47AD9: FLdRfVar var_164
  loc_B47ADC: FLdRfVar var_160
  loc_B47ADF: LitI4 0
  loc_B47AE4: LitI2_Byte 0
  loc_B47AE6: LitI4 1
  loc_B47AEB: ImpAdLdI4 MemVar_C0F044
  loc_B47AEE: LitStr "habbos\"
  loc_B47AF1: ConcatStr
  loc_B47AF2: CVarStr var_C4
  loc_B47AF5: FLdRfVar var_B4
  loc_B47AF8: ConcatVar var_D4
  loc_B47AFC: LitVarStr var_EC, "\directmail\count.txt"
  loc_B47B01: ConcatVar var_FC
  loc_B47B05: CStrVarVal var_D8
  loc_B47B09: ImpAdLdRf MemVar_C0F040
  loc_B47B0C: NewIfNullPr IFileSystem3
  loc_B47B0F: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B47B14: FLdPr var_160
  loc_B47B17:  = Me.ReadAll
  loc_B47B1C: ILdRf var_164
  loc_B47B1F: ImpAdCallFPR4 push push Val()
  loc_B47B24: LitI2_Byte 1
  loc_B47B26: CR8I2
  loc_B47B27: AddR8
  loc_B47B28: CVarR8
  loc_B47B2C: FStVar var_174
  loc_B47B30: FFreeStr var_D8 = ""
  loc_B47B37: FFree1Ad var_160
  loc_B47B3A: FFreeVar var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B47B45: FLdRfVar var_174
  loc_B47B48: CR4Var
  loc_B47B49: PopFPR8
  loc_B47B4A: ImpAdCallI2  = Proc_1_1_B21858()
  loc_B47B4F: FStStrNoPop var_D8
  loc_B47B52: ImpAdCallI2 Proc_1_2_B29968()
  loc_B47B57: FStStr var_164
  loc_B47B5A: LitI4 0
  loc_B47B5F: FLdZeroAd var_164
  loc_B47B62: CVarStr var_B4
  loc_B47B65: FLdRfVar var_C4
  loc_B47B68: ImpAdCallFPR4  = Round(, )
  loc_B47B6D: FLdRfVar var_C4
  loc_B47B70: FLdRfVar var_174
  loc_B47B73: NeVarBool
  loc_B47B75: FFreeStr var_D8 = ""
  loc_B47B7C: FFreeVar var_B4 = ""
  loc_B47B83: BranchF loc_B47BDA
  loc_B47B86: FLdRfVar var_174
  loc_B47B89: LitVarI2 var_A4, 1
  loc_B47B8E: AddVar var_B4
  loc_B47B92: FStVar var_174
  loc_B47B96: FLdRfVar var_174
  loc_B47B99: CR4Var
  loc_B47B9A: PopFPR8
  loc_B47B9B: ImpAdCallI2  = Proc_1_1_B21858()
  loc_B47BA0: FStStrNoPop var_D8
  loc_B47BA3: ImpAdCallI2 Proc_1_2_B29968()
  loc_B47BA8: FStStr var_164
  loc_B47BAB: LitI4 0
  loc_B47BB0: FLdZeroAd var_164
  loc_B47BB3: CVarStr var_B4
  loc_B47BB6: FLdRfVar var_C4
  loc_B47BB9: ImpAdCallFPR4  = Round(, )
  loc_B47BBE: FLdRfVar var_C4
  loc_B47BC1: FLdRfVar var_174
  loc_B47BC4: NeVarBool
  loc_B47BC6: FFreeStr var_D8 = ""
  loc_B47BCD: FFreeVar var_B4 = ""
  loc_B47BD4: BranchF loc_B47BDA
  loc_B47BD7: Branch loc_B47B86
  loc_B47BDA: ILdRf arg_14
  loc_B47BDD: CVarRef
  loc_B47BE2: FLdRfVar var_B4
  loc_B47BE5: ImpAdCallFPR4  = LCase()
  loc_B47BEA: FLdRfVar var_174
  loc_B47BED: CStrVarVal var_164
  loc_B47BF1: FLdRfVar var_160
  loc_B47BF4: LitI4 0
  loc_B47BF9: LitI2_Byte 0
  loc_B47BFB: LitI4 2
  loc_B47C00: ImpAdLdI4 MemVar_C0F044
  loc_B47C03: LitStr "habbos\"
  loc_B47C06: ConcatStr
  loc_B47C07: CVarStr var_C4
  loc_B47C0A: FLdRfVar var_B4
  loc_B47C0D: ConcatVar var_D4
  loc_B47C11: LitVarStr var_EC, "\directmail\count.txt"
  loc_B47C16: ConcatVar var_FC
  loc_B47C1A: CStrVarVal var_D8
  loc_B47C1E: ImpAdLdRf MemVar_C0F040
  loc_B47C21: NewIfNullPr IFileSystem3
  loc_B47C24: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B47C29: FLdPr var_160
  loc_B47C2C: from_stack_2 = Me.Write(from_stack_1v)
  loc_B47C31: FFreeStr var_D8 = ""
  loc_B47C38: FFree1Ad var_160
  loc_B47C3B: FFreeVar var_C4 = "": var_B4 = "": var_D4 = ""
  loc_B47C46: LitStr "BFI"
  loc_B47C49: FLdRfVar var_174
  loc_B47C4C: CR4Var
  loc_B47C4D: PopFPR8
  loc_B47C4E: ImpAdCallI2  = Proc_1_1_B21858()
  loc_B47C53: FStStrNoPop var_D8
  loc_B47C56: ConcatStr
  loc_B47C57: FStStrNoPop var_178
  loc_B47C5A: ILdI4 arg_18
  loc_B47C5D: ImpAdCallI2 Proc_2_12_B1ED84()
  loc_B47C62: FStStrNoPop var_164
  loc_B47C65: CR8Str
  loc_B47C67: PopFPR8
  loc_B47C68: ImpAdCallI2  = Proc_1_1_B21858()
  loc_B47C6D: FStStrNoPop var_17C
  loc_B47C70: ConcatStr
  loc_B47C71: CVarStr var_B4
  loc_B47C74: FLdRfVar var_15C
  loc_B47C77: ConcatVar var_C4
  loc_B47C7B: LitI4 2
  loc_B47C80: FLdRfVar var_D4
  loc_B47C83: ImpAdCallFPR4  = Chr()
  loc_B47C88: FLdRfVar var_D4
  loc_B47C8B: ConcatVar var_FC
  loc_B47C8F: ILdI4 arg_10
  loc_B47C92: CVarStr var_A4
  loc_B47C95: ConcatVar var_10C
  loc_B47C99: LitI4 2
  loc_B47C9E: FLdRfVar var_12C
  loc_B47CA1: ImpAdCallFPR4  = Chr()
  loc_B47CA6: FLdRfVar var_12C
  loc_B47CA9: ConcatVar var_13C
  loc_B47CAD: LitI4 1
  loc_B47CB2: FLdRfVar var_14C
  loc_B47CB5: ImpAdCallFPR4  = Chr()
  loc_B47CBA: FLdRfVar var_14C
  loc_B47CBD: ConcatVar var_18C
  loc_B47CC1: FStVar var_19C
  loc_B47CC5: FFreeStr var_D8 = "": var_164 = "": var_178 = ""
  loc_B47CD0: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_FC = "": var_10C = "": var_12C = "": var_13C = ""
  loc_B47CE3: ILdRf arg_14
  loc_B47CE6: CVarRef
  loc_B47CEB: FLdRfVar var_FC
  loc_B47CEE: ImpAdCallFPR4  = LCase()
  loc_B47CF3: ILdI4 arg_18
  loc_B47CF6: CVarStr var_A4
  loc_B47CF9: LitI4 1
  loc_B47CFE: FLdRfVar var_B4
  loc_B47D01: ImpAdCallFPR4  = Chr()
  loc_B47D06: FLdRfVar var_B4
  loc_B47D09: ConcatVar var_C4
  loc_B47D0D: FLdRfVar var_19C
  loc_B47D10: ConcatVar var_D4
  loc_B47D14: CStrVarVal var_164
  loc_B47D18: FLdRfVar var_160
  loc_B47D1B: LitI4 0
  loc_B47D20: LitI2_Byte &HFF
  loc_B47D22: LitI4 2
  loc_B47D27: ImpAdLdI4 MemVar_C0F044
  loc_B47D2A: LitStr "habbos\"
  loc_B47D2D: ConcatStr
  loc_B47D2E: CVarStr var_10C
  loc_B47D31: FLdRfVar var_FC
  loc_B47D34: ConcatVar var_12C
  loc_B47D38: LitVarStr var_11C, "\directmail\"
  loc_B47D3D: ConcatVar var_13C
  loc_B47D41: FLdRfVar var_174
  loc_B47D44: ConcatVar var_14C
  loc_B47D48: LitVarStr var_1AC, ".message"
  loc_B47D4D: ConcatVar var_18C
  loc_B47D51: CStrVarVal var_D8
  loc_B47D55: ImpAdLdRf MemVar_C0F040
  loc_B47D58: NewIfNullPr IFileSystem3
  loc_B47D5B: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B47D60: FLdPr var_160
  loc_B47D63: from_stack_2 = Me.Write(from_stack_1v)
  loc_B47D68: FFreeStr var_D8 = ""
  loc_B47D6F: FFree1Ad var_160
  loc_B47D72: FFreeVar var_B4 = "": var_C4 = "": var_10C = "": var_FC = "": var_12C = "": var_13C = "": var_14C = "": var_18C = ""
  loc_B47D87: ILdRf arg_14
  loc_B47D8A: CVarRef
  loc_B47D8F: FLdRfVar var_FC
  loc_B47D92: ImpAdCallFPR4  = LCase()
  loc_B47D97: ILdI4 arg_18
  loc_B47D9A: CVarStr var_A4
  loc_B47D9D: LitI4 1
  loc_B47DA2: FLdRfVar var_B4
  loc_B47DA5: ImpAdCallFPR4  = Chr()
  loc_B47DAA: FLdRfVar var_B4
  loc_B47DAD: ConcatVar var_C4
  loc_B47DB1: FLdRfVar var_19C
  loc_B47DB4: ConcatVar var_D4
  loc_B47DB8: CStrVarVal var_164
  loc_B47DBC: FLdRfVar var_160
  loc_B47DBF: LitI4 0
  loc_B47DC4: LitI2_Byte &HFF
  loc_B47DC6: LitI4 2
  loc_B47DCB: ImpAdLdI4 MemVar_C0F044
  loc_B47DCE: LitStr "habbos\"
  loc_B47DD1: ConcatStr
  loc_B47DD2: CVarStr var_10C
  loc_B47DD5: FLdRfVar var_FC
  loc_B47DD8: ConcatVar var_12C
  loc_B47DDC: LitVarStr var_11C, "\directmail\"
  loc_B47DE1: ConcatVar var_13C
  loc_B47DE5: FLdRfVar var_174
  loc_B47DE8: ConcatVar var_14C
  loc_B47DEC: LitVarStr var_1AC, ".message"
  loc_B47DF1: ConcatVar var_18C
  loc_B47DF5: CStrVarVal var_D8
  loc_B47DF9: ImpAdLdRf MemVar_C0F040
  loc_B47DFC: NewIfNullPr IFileSystem3
  loc_B47DFF: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B47E04: FLdPr var_160
  loc_B47E07: from_stack_2 = Me.Write(from_stack_1v)
  loc_B47E0C: FFreeStr var_D8 = ""
  loc_B47E13: FFree1Ad var_160
  loc_B47E16: FFreeVar var_B4 = "": var_C4 = "": var_10C = "": var_FC = "": var_12C = "": var_13C = "": var_14C = "": var_18C = ""
  loc_B47E2B: ILdRf arg_14
  loc_B47E2E: CVarRef
  loc_B47E33: FLdRfVar var_FC
  loc_B47E36: ImpAdCallFPR4  = LCase()
  loc_B47E3B: ILdI4 arg_18
  loc_B47E3E: CVarStr var_A4
  loc_B47E41: LitI4 1
  loc_B47E46: FLdRfVar var_B4
  loc_B47E49: ImpAdCallFPR4  = Chr()
  loc_B47E4E: FLdRfVar var_B4
  loc_B47E51: ConcatVar var_C4
  loc_B47E55: FLdRfVar var_19C
  loc_B47E58: ConcatVar var_D4
  loc_B47E5C: CStrVarVal var_164
  loc_B47E60: FLdRfVar var_160
  loc_B47E63: LitI4 0
  loc_B47E68: LitI2_Byte &HFF
  loc_B47E6A: LitI4 2
  loc_B47E6F: ImpAdLdI4 MemVar_C0F044
  loc_B47E72: LitStr "habbos\"
  loc_B47E75: ConcatStr
  loc_B47E76: CVarStr var_10C
  loc_B47E79: FLdRfVar var_FC
  loc_B47E7C: ConcatVar var_12C
  loc_B47E80: LitVarStr var_11C, "\directmail\"
  loc_B47E85: ConcatVar var_13C
  loc_B47E89: FLdRfVar var_174
  loc_B47E8C: ConcatVar var_14C
  loc_B47E90: LitVarStr var_1AC, ".message"
  loc_B47E95: ConcatVar var_18C
  loc_B47E99: CStrVarVal var_D8
  loc_B47E9D: ImpAdLdRf MemVar_C0F040
  loc_B47EA0: NewIfNullPr IFileSystem3
  loc_B47EA3: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B47EA8: FLdPr var_160
  loc_B47EAB: from_stack_2 = Me.Write(from_stack_1v)
  loc_B47EB0: FFreeStr var_D8 = ""
  loc_B47EB7: FFree1Ad var_160
  loc_B47EBA: FFreeVar var_B4 = "": var_C4 = "": var_10C = "": var_FC = "": var_12C = "": var_13C = "": var_14C = "": var_18C = ""
  loc_B47ECF: ILdRf arg_14
  loc_B47ED2: CVarRef
  loc_B47ED7: FLdRfVar var_FC
  loc_B47EDA: ImpAdCallFPR4  = LCase()
  loc_B47EDF: ILdI4 arg_18
  loc_B47EE2: CVarStr var_A4
  loc_B47EE5: LitI4 1
  loc_B47EEA: FLdRfVar var_B4
  loc_B47EED: ImpAdCallFPR4  = Chr()
  loc_B47EF2: FLdRfVar var_B4
  loc_B47EF5: ConcatVar var_C4
  loc_B47EF9: FLdRfVar var_19C
  loc_B47EFC: ConcatVar var_D4
  loc_B47F00: CStrVarVal var_164
  loc_B47F04: FLdRfVar var_160
  loc_B47F07: LitI4 0
  loc_B47F0C: LitI2_Byte &HFF
  loc_B47F0E: LitI4 2
  loc_B47F13: ImpAdLdI4 MemVar_C0F044
  loc_B47F16: LitStr "habbos\"
  loc_B47F19: ConcatStr
  loc_B47F1A: CVarStr var_10C
  loc_B47F1D: FLdRfVar var_FC
  loc_B47F20: ConcatVar var_12C
  loc_B47F24: LitVarStr var_11C, "\directmail\"
  loc_B47F29: ConcatVar var_13C
  loc_B47F2D: FLdRfVar var_174
  loc_B47F30: ConcatVar var_14C
  loc_B47F34: LitVarStr var_1AC, ".message"
  loc_B47F39: ConcatVar var_18C
  loc_B47F3D: CStrVarVal var_D8
  loc_B47F41: ImpAdLdRf MemVar_C0F040
  loc_B47F44: NewIfNullPr IFileSystem3
  loc_B47F47: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B47F4C: FLdPr var_160
  loc_B47F4F: from_stack_2 = Me.Write(from_stack_1v)
  loc_B47F54: FFreeStr var_D8 = ""
  loc_B47F5B: FFree1Ad var_160
  loc_B47F5E: FFreeVar var_B4 = "": var_C4 = "": var_10C = "": var_FC = "": var_12C = "": var_13C = "": var_14C = "": var_18C = ""
  loc_B47F73: ILdRf arg_14
  loc_B47F76: CVarRef
  loc_B47F7B: FLdRfVar var_FC
  loc_B47F7E: ImpAdCallFPR4  = LCase()
  loc_B47F83: ILdI4 arg_18
  loc_B47F86: CVarStr var_A4
  loc_B47F89: LitI4 1
  loc_B47F8E: FLdRfVar var_B4
  loc_B47F91: ImpAdCallFPR4  = Chr()
  loc_B47F96: FLdRfVar var_B4
  loc_B47F99: ConcatVar var_C4
  loc_B47F9D: FLdRfVar var_19C
  loc_B47FA0: ConcatVar var_D4
  loc_B47FA4: CStrVarVal var_164
  loc_B47FA8: FLdRfVar var_160
  loc_B47FAB: LitI4 0
  loc_B47FB0: LitI2_Byte &HFF
  loc_B47FB2: LitI4 2
  loc_B47FB7: ImpAdLdI4 MemVar_C0F044
  loc_B47FBA: LitStr "habbos\"
  loc_B47FBD: ConcatStr
  loc_B47FBE: CVarStr var_10C
  loc_B47FC1: FLdRfVar var_FC
  loc_B47FC4: ConcatVar var_12C
  loc_B47FC8: LitVarStr var_11C, "\directmail\"
  loc_B47FCD: ConcatVar var_13C
  loc_B47FD1: FLdRfVar var_174
  loc_B47FD4: ConcatVar var_14C
  loc_B47FD8: LitVarStr var_1AC, ".message"
  loc_B47FDD: ConcatVar var_18C
  loc_B47FE1: CStrVarVal var_D8
  loc_B47FE5: ImpAdLdRf MemVar_C0F040
  loc_B47FE8: NewIfNullPr IFileSystem3
  loc_B47FEB: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B47FF0: FLdPr var_160
  loc_B47FF3: from_stack_2 = Me.Write(from_stack_1v)
  loc_B47FF8: FFreeStr var_D8 = ""
  loc_B47FFF: FFree1Ad var_160
  loc_B48002: FFreeVar var_B4 = "": var_C4 = "": var_10C = "": var_FC = "": var_12C = "": var_13C = "": var_14C = "": var_18C = ""
  loc_B48017: LitVarI2 var_11C, 1
  loc_B4801C: FLdRfVar var_1BC
  loc_B4801F: FLdRfVar var_1C0
  loc_B48022: ImpAdLdRf MemVar_C0F018
  loc_B48025: NewIfNullPr frmMain
  loc_B48028: from_stack_1v = frmMain.SockIGet()
  loc_B4802D: ILdRf var_1C0
  loc_B48030: CVarI4
  loc_B48034: ForVar var_1E0
  loc_B4803A: FLdRfVar var_1BC
  loc_B4803D: CI4Var
  loc_B4803F: ImpAdLdI4 MemVar_C0F100
  loc_B48042: AryLock
  loc_B48045: Ary1LdPr
  loc_B48046: MemLdRfVar from_stack_1.global_204
  loc_B48049: CVarRef
  loc_B4804E: FLdRfVar var_B4
  loc_B48051: ImpAdCallFPR4  = LCase()
  loc_B48056: AryUnlock
  loc_B48059: FLdRfVar var_B4
  loc_B4805C: ILdRf arg_14
  loc_B4805F: CVarRef
  loc_B48064: FLdRfVar var_C4
  loc_B48067: ImpAdCallFPR4  = LCase()
  loc_B4806C: FLdRfVar var_C4
  loc_B4806F: EqVar var_D4
  loc_B48073: FLdRfVar var_1E8
  loc_B48076: FLdRfVar var_1BC
  loc_B48079: CI2Var
  loc_B4807A: ImpAdLdRf MemVar_C0F018
  loc_B4807D: NewIfNullPr frmMain
  loc_B48080: VCallAd Control_ID_
  loc_B48083: FStAdFunc var_160
  loc_B48086: FLdPr var_160
  loc_B48089: Set from_stack_2 = frmMain(from_stack_1)
  loc_B4808E: FLdPr var_1E8
  loc_B48091: LateIdLdVar var_FC DispID_8 0
  loc_B48098: CI2Var
  loc_B48099: CI4UI1
  loc_B4809A: LitI4 7
  loc_B4809F: EqI4
  loc_B480A0: CVarBoolI2 var_11C
  loc_B480A4: AndVar var_10C
  loc_B480A8: CBoolVarNull
  loc_B480AA: FFreeAd var_160 = ""
  loc_B480B1: FFreeVar var_B4 = "": var_C4 = "": var_FC = ""
  loc_B480BC: BranchF loc_B480F3
  loc_B480BF: FLdRfVar var_19C
  loc_B480C2: CDargRef
  loc_B480C6: FLdRfVar var_1E8
  loc_B480C9: FLdRfVar var_1BC
  loc_B480CC: CI2Var
  loc_B480CD: ImpAdLdRf MemVar_C0F018
  loc_B480D0: NewIfNullPr frmMain
  loc_B480D3: VCallAd Control_ID_
  loc_B480D6: FStAdFunc var_160
  loc_B480D9: FLdPr var_160
  loc_B480DC: Set from_stack_2 = frmMain(from_stack_1)
  loc_B480E1: FLdPr var_1E8
  loc_B480E4: LateIdCall
  loc_B480EC: FFreeAd var_160 = ""
  loc_B480F3: FLdRfVar var_1BC
  loc_B480F6: NextStepVar var_1E0
  loc_B480FC: ExitProcCb
End Function

Private Function Proc_5_2_B49EF8(arg_10) 'B49EF8
  'Data Table: 53A328
  loc_B4983C: On Error Resume Next
  loc_B49841: ILdI2 arg_10
  loc_B49844: CI4UI1
  loc_B49845: ImpAdLdI4 MemVar_C0F100
  loc_B49848: AryLock
  loc_B4984B: Ary1LdPr
  loc_B4984C: MemLdRfVar from_stack_1.global_204
  loc_B4984F: CVarRef
  loc_B49854: FLdRfVar var_BC
  loc_B49857: ImpAdCallFPR4  = LCase()
  loc_B4985C: AryUnlock
  loc_B4985F: FLdRfVar var_106
  loc_B49862: FLdRfVar var_104
  loc_B49865: LitI4 0
  loc_B4986A: LitI2_Byte 0
  loc_B4986C: LitI4 1
  loc_B49871: ImpAdLdI4 MemVar_C0F044
  loc_B49874: LitStr "habbos\"
  loc_B49877: ConcatStr
  loc_B49878: CVarStr var_CC
  loc_B4987B: FLdRfVar var_BC
  loc_B4987E: ConcatVar var_DC
  loc_B49882: LitVarStr var_EC, "\friendlist.txt"
  loc_B49887: ConcatVar var_FC
  loc_B4988B: CStrVarVal var_100
  loc_B4988F: ImpAdLdRf MemVar_C0F040
  loc_B49892: NewIfNullPr IFileSystem3
  loc_B49895: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4989A: FLdPr var_104
  loc_B4989D:  = Me.AtEndOfStream
  loc_B498A2: FLdI2 var_106
  loc_B498A5: LitI2_Byte 0
  loc_B498A7: EqI2
  loc_B498A8: FFree1Str var_100
  loc_B498AB: FFree1Ad var_104
  loc_B498AE: FFreeVar var_CC = "": var_BC = "": var_DC = ""
  loc_B498B9: BranchF loc_B49EEF
  loc_B498BE: ILdI2 arg_10
  loc_B498C1: CI4UI1
  loc_B498C2: ImpAdLdI4 MemVar_C0F100
  loc_B498C5: AryLock
  loc_B498C8: Ary1LdPr
  loc_B498C9: MemLdRfVar from_stack_1.global_204
  loc_B498CC: CVarRef
  loc_B498D1: FLdRfVar var_BC
  loc_B498D4: ImpAdCallFPR4  = LCase()
  loc_B498D9: AryUnlock
  loc_B498DC: FLdRfVar var_110
  loc_B498DF: FLdRfVar var_104
  loc_B498E2: LitI4 0
  loc_B498E7: LitI2_Byte 0
  loc_B498E9: LitI4 1
  loc_B498EE: ImpAdLdI4 MemVar_C0F044
  loc_B498F1: LitStr "habbos\"
  loc_B498F4: ConcatStr
  loc_B498F5: CVarStr var_CC
  loc_B498F8: FLdRfVar var_BC
  loc_B498FB: ConcatVar var_DC
  loc_B498FF: LitVarStr var_EC, "\friendlist.txt"
  loc_B49904: ConcatVar var_FC
  loc_B49908: CStrVarVal var_100
  loc_B4990C: ImpAdLdRf MemVar_C0F040
  loc_B4990F: NewIfNullPr IFileSystem3
  loc_B49912: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B49917: FLdPr var_104
  loc_B4991A:  = Me.ReadAll
  loc_B4991F: LitI4 0
  loc_B49924: LitI4 -1
  loc_B49929: LitI4 1
  loc_B4992E: LitStr vbNullString
  loc_B49931: LitStr "<"
  loc_B49934: ILdRf var_110
  loc_B49937: ImpAdCallI2 Replace(, , , , , )
  loc_B4993C: FStStr var_14C
  loc_B4993F: LitI4 0
  loc_B49944: LitI4 -1
  loc_B49949: LitVarStr var_124, ">"
  loc_B4994E: FStVarCopyObj var_134
  loc_B49951: FLdRfVar var_134
  loc_B49954: FLdZeroAd var_14C
  loc_B49957: FStStrNoPop var_114
  loc_B4995A: FLdRfVar var_144
  loc_B4995D: ImpAdCallFPR4  = Split(, , , )
  loc_B49962: FLdRfVar var_144
  loc_B49965: StAryVar
  loc_B49969: PopTmpLdAdStr var_148
  loc_B4996C: FLdRfVar var_10C
  loc_B4996F: StAryCopy
  loc_B49971: FFreeStr var_100 = "": var_110 = "": var_114 = ""
  loc_B4997C: FFree1Ad var_104
  loc_B4997F: FFreeVar var_CC = "": var_BC = "": var_DC = "": var_FC = "": var_134 = ""
  loc_B49990: LitVarI2 var_A8, 0
  loc_B49995: FStVar var_15C
  loc_B4999B: LitVarI2 var_124, 0
  loc_B499A0: FLdRfVar var_16C
  loc_B499A3: ILdRf var_10C
  loc_B499A6: LitI2_Byte 1
  loc_B499A8: FnUBound
  loc_B499AA: CVarI4
  loc_B499AE: ForVar var_18C
  loc_B499B6: FLdRfVar var_16C
  loc_B499B9: CI4Var
  loc_B499BB: ILdRf var_10C
  loc_B499BE: Ary1LdI4
  loc_B499BF: FnLenStr
  loc_B499C0: LitI4 0
  loc_B499C5: GtI4
  loc_B499C6: BranchF loc_B49E74
  loc_B499CB: FLdRfVar var_16C
  loc_B499CE: CI4Var
  loc_B499D0: ILdRf var_10C
  loc_B499D3: AryLock
  loc_B499D6: Ary1LdRf
  loc_B499D7: CVarRef
  loc_B499DC: FLdRfVar var_BC
  loc_B499DF: ImpAdCallFPR4  = LCase()
  loc_B499E4: AryUnlock
  loc_B499E7: FLdRfVar var_106
  loc_B499EA: FLdRfVar var_104
  loc_B499ED: LitI4 0
  loc_B499F2: LitI2_Byte 0
  loc_B499F4: LitI4 1
  loc_B499F9: ImpAdLdI4 MemVar_C0F044
  loc_B499FC: LitStr "habbos\"
  loc_B499FF: ConcatStr
  loc_B49A00: CVarStr var_CC
  loc_B49A03: FLdRfVar var_BC
  loc_B49A06: ConcatVar var_DC
  loc_B49A0A: LitVarStr var_EC, "\consolemission.txt"
  loc_B49A0F: ConcatVar var_FC
  loc_B49A13: CStrVarVal var_100
  loc_B49A17: ImpAdLdRf MemVar_C0F040
  loc_B49A1A: NewIfNullPr IFileSystem3
  loc_B49A1D: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B49A22: FLdPr var_104
  loc_B49A25:  = Me.AtEndOfStream
  loc_B49A2A: FLdI2 var_106
  loc_B49A2D: LitI2_Byte 0
  loc_B49A2F: EqI2
  loc_B49A30: FFree1Str var_100
  loc_B49A33: FFree1Ad var_104
  loc_B49A36: FFreeVar var_CC = "": var_BC = "": var_DC = ""
  loc_B49A41: BranchF loc_B49B56
  loc_B49A46: FLdRfVar var_16C
  loc_B49A49: CI4Var
  loc_B49A4B: ILdRf var_10C
  loc_B49A4E: AryLock
  loc_B49A51: Ary1LdRf
  loc_B49A52: CVarRef
  loc_B49A57: FLdRfVar var_BC
  loc_B49A5A: ImpAdCallFPR4  = LCase()
  loc_B49A5F: AryUnlock
  loc_B49A62: FLdRfVar var_110
  loc_B49A65: FLdRfVar var_104
  loc_B49A68: LitI4 0
  loc_B49A6D: LitI2_Byte 0
  loc_B49A6F: LitI4 1
  loc_B49A74: ImpAdLdI4 MemVar_C0F044
  loc_B49A77: LitStr "habbos\"
  loc_B49A7A: ConcatStr
  loc_B49A7B: CVarStr var_CC
  loc_B49A7E: FLdRfVar var_BC
  loc_B49A81: ConcatVar var_DC
  loc_B49A85: LitVarStr var_EC, "\consolemission.txt"
  loc_B49A8A: ConcatVar var_FC
  loc_B49A8E: CStrVarVal var_100
  loc_B49A92: ImpAdLdRf MemVar_C0F040
  loc_B49A95: NewIfNullPr IFileSystem3
  loc_B49A98: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B49A9D: FLdPr var_104
  loc_B49AA0:  = Me.ReadAll
  loc_B49AA5: ILdRf var_110
  loc_B49AA8: LitStr " "
  loc_B49AAB: EqStr
  loc_B49AAD: FFreeStr var_100 = ""
  loc_B49AB4: FFree1Ad var_104
  loc_B49AB7: FFreeVar var_CC = "": var_BC = "": var_DC = ""
  loc_B49AC2: BranchF loc_B49AD3
  loc_B49AC7: LitVarStr var_A8, vbNullString
  loc_B49ACC: FStVarCopy
  loc_B49AD0: Branch loc_B49B51
  loc_B49AD7: FLdRfVar var_16C
  loc_B49ADA: CI4Var
  loc_B49ADC: ILdRf var_10C
  loc_B49ADF: AryLock
  loc_B49AE2: Ary1LdRf
  loc_B49AE3: CVarRef
  loc_B49AE8: FLdRfVar var_BC
  loc_B49AEB: ImpAdCallFPR4  = LCase()
  loc_B49AF0: AryUnlock
  loc_B49AF3: FLdRfVar var_110
  loc_B49AF6: FLdRfVar var_104
  loc_B49AF9: LitI4 0
  loc_B49AFE: LitI2_Byte 0
  loc_B49B00: LitI4 1
  loc_B49B05: ImpAdLdI4 MemVar_C0F044
  loc_B49B08: LitStr "habbos\"
  loc_B49B0B: ConcatStr
  loc_B49B0C: CVarStr var_CC
  loc_B49B0F: FLdRfVar var_BC
  loc_B49B12: ConcatVar var_DC
  loc_B49B16: LitVarStr var_EC, "\consolemission.txt"
  loc_B49B1B: ConcatVar var_FC
  loc_B49B1F: CStrVarVal var_100
  loc_B49B23: ImpAdLdRf MemVar_C0F040
  loc_B49B26: NewIfNullPr IFileSystem3
  loc_B49B29: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B49B2E: FLdPr var_104
  loc_B49B31:  = Me.ReadAll
  loc_B49B36: FLdZeroAd var_110
  loc_B49B39: CVarStr var_134
  loc_B49B3C: FStVar var_19C
  loc_B49B40: FFree1Str var_100
  loc_B49B43: FFree1Ad var_104
  loc_B49B46: FFreeVar var_CC = "": var_BC = "": var_DC = ""
  loc_B49B53: Branch loc_B49B63
  loc_B49B5A: LitVarStr var_A8, vbNullString
  loc_B49B5F: FStVarCopy
  loc_B49B67: LitVarI2 var_A8, 0
  loc_B49B6C: FStVar var_1AC
  loc_B49B72: LitVarI2 var_124, 1
  loc_B49B77: FLdRfVar var_1BC
  loc_B49B7A: FLdRfVar var_148
  loc_B49B7D: ImpAdLdRf MemVar_C0F018
  loc_B49B80: NewIfNullPr frmMain
  loc_B49B83: from_stack_1v = frmMain.SockIGet()
  loc_B49B88: ILdRf var_148
  loc_B49B8B: CVarI4
  loc_B49B8F: ForVar var_1DC
  loc_B49B97: FLdRfVar var_1BC
  loc_B49B9A: CI4Var
  loc_B49B9C: ImpAdLdI4 MemVar_C0F100
  loc_B49B9F: Ary1LdPr
  loc_B49BA0: MemLdStr global_204
  loc_B49BA3: LitStr vbNullString
  loc_B49BA6: NeStr
  loc_B49BA8: CVarBoolI2 var_124
  loc_B49BAC: FLdRfVar var_1BC
  loc_B49BAF: CI4Var
  loc_B49BB1: ImpAdLdI4 MemVar_C0F100
  loc_B49BB4: AryLock
  loc_B49BB7: Ary1LdPr
  loc_B49BB8: MemLdRfVar from_stack_1.global_204
  loc_B49BBB: CVarRef
  loc_B49BC0: FLdRfVar var_BC
  loc_B49BC3: ImpAdCallFPR4  = LCase()
  loc_B49BC8: AryUnlock
  loc_B49BCB: FLdRfVar var_BC
  loc_B49BCE: FLdRfVar var_16C
  loc_B49BD1: CI4Var
  loc_B49BD3: ILdRf var_10C
  loc_B49BD6: Ary1LdI4
  loc_B49BD7: CVarStr var_EC
  loc_B49BDA: HardType
  loc_B49BDB: EqVar var_CC
  loc_B49BDF: AndVar var_DC
  loc_B49BE3: CBoolVarNull
  loc_B49BE5: FFreeVar var_BC = ""
  loc_B49BEC: BranchF loc_B49CF3
  loc_B49BF1: FLdRfVar var_1BC
  loc_B49BF4: CI4Var
  loc_B49BF6: ImpAdLdI4 MemVar_C0F100
  loc_B49BF9: Ary1LdPr
  loc_B49BFA: MemLdStr global_184
  loc_B49BFD: LitStr vbNullString
  loc_B49C00: NeStr
  loc_B49C02: BranchF loc_B49CF1
  loc_B49C07: FLdRfVar var_16C
  loc_B49C0A: CI4Var
  loc_B49C0C: ILdRf var_10C
  loc_B49C0F: AryLock
  loc_B49C12: Ary1LdRf
  loc_B49C13: CVarRef
  loc_B49C18: FLdRfVar var_BC
  loc_B49C1B: ImpAdCallFPR4  = LCase()
  loc_B49C20: AryUnlock
  loc_B49C23: ILdRf var_98
  loc_B49C26: FLdRfVar var_110
  loc_B49C29: FLdRfVar var_104
  loc_B49C2C: LitI4 0
  loc_B49C31: LitI2_Byte 0
  loc_B49C33: LitI4 1
  loc_B49C38: ImpAdLdI4 MemVar_C0F044
  loc_B49C3B: LitStr "habbos\"
  loc_B49C3E: ConcatStr
  loc_B49C3F: CVarStr var_CC
  loc_B49C42: FLdRfVar var_BC
  loc_B49C45: ConcatVar var_DC
  loc_B49C49: LitVarStr var_EC, "\num.txt"
  loc_B49C4E: ConcatVar var_FC
  loc_B49C52: CStrVarVal var_100
  loc_B49C56: ImpAdLdRf MemVar_C0F040
  loc_B49C59: NewIfNullPr IFileSystem3
  loc_B49C5C: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B49C61: FLdPr var_104
  loc_B49C64:  = Me.ReadAll
  loc_B49C69: ILdRf var_110
  loc_B49C6C: CR8Str
  loc_B49C6E: PopFPR8
  loc_B49C6F: ImpAdCallI2  = Proc_1_1_B21858()
  loc_B49C74: FStStrNoPop var_114
  loc_B49C77: ConcatStr
  loc_B49C78: CVarStr var_134
  loc_B49C7B: FLdRfVar var_19C
  loc_B49C7E: ConcatVar var_144
  loc_B49C82: LitI4 2
  loc_B49C87: FLdRfVar var_1EC
  loc_B49C8A: ImpAdCallFPR4  = Chr()
  loc_B49C8F: FLdRfVar var_1EC
  loc_B49C92: ConcatVar var_1FC
  loc_B49C96: FLdRfVar var_1BC
  loc_B49C99: CI4Var
  loc_B49C9B: ImpAdLdI4 MemVar_C0F100
  loc_B49C9E: Ary1LdPr
  loc_B49C9F: MemLdStr global_184
  loc_B49CA2: CVarStr var_124
  loc_B49CA5: ConcatVar var_20C
  loc_B49CA9: LitI4 2
  loc_B49CAE: FLdRfVar var_21C
  loc_B49CB1: ImpAdCallFPR4  = Chr()
  loc_B49CB6: FLdRfVar var_21C
  loc_B49CB9: ConcatVar var_22C
  loc_B49CBD: CStrVarTmp
  loc_B49CBE: FStStr var_98
  loc_B49CC1: FFreeStr var_100 = "": var_110 = ""
  loc_B49CCA: FFree1Ad var_104
  loc_B49CCD: FFreeVar var_CC = "": var_BC = "": var_DC = "": var_FC = "": var_134 = "": var_144 = "": var_1EC = "": var_1FC = "": var_20C = "": var_21C = ""
  loc_B49CE8: LitVarI2 var_A8, 1
  loc_B49CED: FStVar var_1AC
  loc_B49CF7: FLdRfVar var_1BC
  loc_B49CFA: NextStepVar var_1DC
  loc_B49D02: FLdRfVar var_1AC
  loc_B49D05: LitVarI2 var_A8, 0
  loc_B49D0A: HardType
  loc_B49D0B: EqVarBool
  loc_B49D0D: BranchF loc_B49E62
  loc_B49D12: FLdRfVar var_16C
  loc_B49D15: CI4Var
  loc_B49D17: ILdRf var_10C
  loc_B49D1A: AryLock
  loc_B49D1D: Ary1LdRf
  loc_B49D1E: CVarRef
  loc_B49D23: FLdRfVar var_BC
  loc_B49D26: ImpAdCallFPR4  = LCase()
  loc_B49D2B: AryUnlock
  loc_B49D2E: FLdRfVar var_16C
  loc_B49D31: CI4Var
  loc_B49D33: ILdRf var_10C
  loc_B49D36: AryLock
  loc_B49D39: Ary1LdRf
  loc_B49D3A: CVarRef
  loc_B49D3F: FLdRfVar var_21C
  loc_B49D42: ImpAdCallFPR4  = LCase()
  loc_B49D47: AryUnlock
  loc_B49D4A: ILdRf var_98
  loc_B49D4D: FLdRfVar var_110
  loc_B49D50: FLdRfVar var_104
  loc_B49D53: LitI4 0
  loc_B49D58: LitI2_Byte 0
  loc_B49D5A: LitI4 1
  loc_B49D5F: ImpAdLdI4 MemVar_C0F044
  loc_B49D62: LitStr "habbos\"
  loc_B49D65: ConcatStr
  loc_B49D66: CVarStr var_CC
  loc_B49D69: FLdRfVar var_BC
  loc_B49D6C: ConcatVar var_DC
  loc_B49D70: LitVarStr var_EC, "\num.txt"
  loc_B49D75: ConcatVar var_FC
  loc_B49D79: CStrVarVal var_100
  loc_B49D7D: ImpAdLdRf MemVar_C0F040
  loc_B49D80: NewIfNullPr IFileSystem3
  loc_B49D83: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B49D88: FLdPr var_104
  loc_B49D8B:  = Me.ReadAll
  loc_B49D90: ILdRf var_110
  loc_B49D93: CR8Str
  loc_B49D95: PopFPR8
  loc_B49D96: ImpAdCallI2  = Proc_1_1_B21858()
  loc_B49D9B: FStStrNoPop var_114
  loc_B49D9E: ConcatStr
  loc_B49D9F: CVarStr var_134
  loc_B49DA2: FLdRfVar var_19C
  loc_B49DA5: ConcatVar var_144
  loc_B49DA9: LitI4 2
  loc_B49DAE: FLdRfVar var_1EC
  loc_B49DB1: ImpAdCallFPR4  = Chr()
  loc_B49DB6: FLdRfVar var_1EC
  loc_B49DB9: ConcatVar var_1FC
  loc_B49DBD: LitVarStr var_124, "H"
  loc_B49DC2: ConcatVar var_20C
  loc_B49DC6: FLdRfVar var_278
  loc_B49DC9: FLdRfVar var_274
  loc_B49DCC: LitI4 0
  loc_B49DD1: LitI2_Byte 0
  loc_B49DD3: LitI4 1
  loc_B49DD8: ImpAdLdI4 MemVar_C0F044
  loc_B49DDB: LitStr "habbos\"
  loc_B49DDE: ConcatStr
  loc_B49DDF: CVarStr var_22C
  loc_B49DE2: FLdRfVar var_21C
  loc_B49DE5: ConcatVar var_250
  loc_B49DE9: LitVarStr var_260, "\lastonline.txt"
  loc_B49DEE: ConcatVar var_270
  loc_B49DF2: CStrVarVal var_14C
  loc_B49DF6: ImpAdLdRf MemVar_C0F040
  loc_B49DF9: NewIfNullPr IFileSystem3
  loc_B49DFC: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B49E01: FLdPr var_274
  loc_B49E04:  = Me.ReadAll
  loc_B49E09: FLdZeroAd var_278
  loc_B49E0C: CVarStr var_288
  loc_B49E0F: ConcatVar var_298
  loc_B49E13: LitI4 2
  loc_B49E18: FLdRfVar var_2A8
  loc_B49E1B: ImpAdCallFPR4  = Chr()
  loc_B49E20: FLdRfVar var_2A8
  loc_B49E23: ConcatVar var_2B8
  loc_B49E27: CStrVarTmp
  loc_B49E28: FStStr var_98
  loc_B49E2B: FFreeStr var_100 = "": var_110 = "": var_114 = ""
  loc_B49E36: FFreeAd var_104 = ""
  loc_B49E3D: FFreeVar var_CC = "": var_BC = "": var_DC = "": var_FC = "": var_134 = "": var_144 = "": var_1EC = "": var_1FC = "": var_22C = "": var_21C = "": var_250 = "": var_270 = "": var_20C = "": var_288 = "": var_298 = "": var_2A8 = ""
  loc_B49E64: FLdRfVar var_15C
  loc_B49E67: LitVarI2 var_A8, 1
  loc_B49E6C: AddVar var_BC
  loc_B49E70: FStVar var_15C
  loc_B49E78: FLdRfVar var_16C
  loc_B49E7B: NextStepVar var_18C
  loc_B49E83: LitStr "@M"
  loc_B49E86: FLdRfVar var_15C
  loc_B49E89: CR4Var
  loc_B49E8A: PopFPR8
  loc_B49E8B: ImpAdCallI2  = Proc_1_1_B21858()
  loc_B49E90: FStStrNoPop var_100
  loc_B49E93: ConcatStr
  loc_B49E94: FStStrNoPop var_110
  loc_B49E97: ILdRf var_98
  loc_B49E9A: ConcatStr
  loc_B49E9B: CVarStr var_CC
  loc_B49E9E: LitI4 1
  loc_B49EA3: FLdRfVar var_BC
  loc_B49EA6: ImpAdCallFPR4  = Chr()
  loc_B49EAB: FLdRfVar var_BC
  loc_B49EAE: ConcatVar var_DC
  loc_B49EB2: PopAdLdVar
  loc_B49EB3: FLdRfVar var_274
  loc_B49EB6: ILdI2 arg_10
  loc_B49EB9: ImpAdLdRf MemVar_C0F018
  loc_B49EBC: NewIfNullPr frmMain
  loc_B49EBF: VCallAd Control_ID_
  loc_B49EC2: FStAdFunc var_104
  loc_B49EC5: FLdPr var_104
  loc_B49EC8: Set from_stack_2 = frmMain(from_stack_1)
  loc_B49ECD: FLdPr var_274
  loc_B49ED0: LateIdCall
  loc_B49ED8: FFreeStr var_100 = ""
  loc_B49EDF: FFreeAd var_104 = ""
  loc_B49EE6: FFreeVar var_CC = "": var_BC = ""
  loc_B49EF3: ExitProcCb
End Function

Private Function Proc_5_3_B264D0(arg_10) 'B264D0
  'Data Table: 53A328
  loc_B2637C: FLdRfVar var_108
  loc_B2637F: FLdRfVar var_104
  loc_B26382: ImpAdLdI4 MemVar_C0F044
  loc_B26385: LitStr "habbos\"
  loc_B26388: ConcatStr
  loc_B26389: CVarStr var_CC
  loc_B2638C: ILdI2 arg_10
  loc_B2638F: CI4UI1
  loc_B26390: ImpAdLdI4 MemVar_C0F100
  loc_B26393: AryLock
  loc_B26396: Ary1LdPr
  loc_B26397: MemLdRfVar from_stack_1.global_204
  loc_B2639A: CVarRef
  loc_B2639F: FLdRfVar var_BC
  loc_B263A2: ImpAdCallFPR4  = LCase()
  loc_B263A7: AryUnlock
  loc_B263AA: FLdRfVar var_BC
  loc_B263AD: ConcatVar var_DC
  loc_B263B1: LitVarStr var_EC, "\directmail\"
  loc_B263B6: ConcatVar var_FC
  loc_B263BA: CStrVarVal var_100
  loc_B263BE: ImpAdLdRf MemVar_C0F040
  loc_B263C1: NewIfNullPr IFileSystem3
  loc_B263C4: from_stack_2 = IFileSystem3.IFileSystem.GetFolder(from_stack_1v)
  loc_B263C9: FLdPr var_104
  loc_B263CC:  = Me.Files
  loc_B263D1: FLdZeroAd var_108
  loc_B263D4: FStAdFuncNoPop
  loc_B263D7: FLdRfVar var_98
  loc_B263DA: FFree1Str var_100
  loc_B263DD: FFree1Ad var_104
  loc_B263E0: FFreeVar var_CC = "": var_BC = "": var_DC = ""
  loc_B263EB: ForEachCollObj
  loc_B263F3: LitI4 3
  loc_B263F8: ILdRf var_98
  loc_B263FB: FStAd var_104 
  loc_B263FF: FLdRfVar var_104
  loc_B26402: CVarRef
  loc_B26407: FLdRfVar var_BC
  loc_B2640A: ImpAdCallFPR4  = Right(, )
  loc_B2640F: ILdRf var_104
  loc_B26412: CastAd
  loc_B26415: FStAdFunc var_98
  loc_B26418: FLdRfVar var_BC
  loc_B2641B: LitVarStr var_EC, "txt"
  loc_B26420: HardType
  loc_B26421: NeVarBool
  loc_B26423: FFree1Ad var_104
  loc_B26426: FFree1Var var_BC = ""
  loc_B26429: BranchF loc_B264BE
  loc_B2642C: FLdRfVar var_100
  loc_B2642F: FLdRfVar var_104
  loc_B26432: LitI4 0
  loc_B26437: LitI4 1
  loc_B2643C: FLdPr var_98
  loc_B2643F: from_stack_3 = Me.OpenAsTextStream(from_stack_1v, from_stack_2v)
  loc_B26444: FLdPr var_104
  loc_B26447:  = Me.ReadAll
  loc_B2644C: LitI4 1
  loc_B26451: FLdRfVar var_BC
  loc_B26454: ImpAdCallFPR4  = Chr()
  loc_B26459: LitVarI2 var_A8, 1
  loc_B2645E: PopAdLdVar
  loc_B2645F: LitI4 0
  loc_B26464: LitI4 2
  loc_B26469: FLdRfVar var_BC
  loc_B2646C: ILdRf var_100
  loc_B2646F: FLdRfVar var_CC
  loc_B26472: ImpAdCallFPR4  = Split(, , , )
  loc_B26477: FLdRfVar var_CC
  loc_B2647A: VarIndexLdRfVar
  loc_B26480: CDargRef
  loc_B26484: FLdRfVar var_114
  loc_B26487: ILdI2 arg_10
  loc_B2648A: ImpAdLdRf MemVar_C0F018
  loc_B2648D: NewIfNullPr frmMain
  loc_B26490: VCallAd Control_ID_
  loc_B26493: FStAdFunc var_108
  loc_B26496: FLdPr var_108
  loc_B26499: Set from_stack_2 = frmMain(from_stack_1)
  loc_B2649E: FLdPr var_114
  loc_B264A1: LateIdCall
  loc_B264A9: FFree1Str var_100
  loc_B264AC: FFreeAd var_104 = "": var_108 = ""
  loc_B264B5: FFreeVar var_BC = "": var_CC = ""
  loc_B264BE: FLdRfVar var_98
  loc_B264C1: NextEachCollObj
  loc_B264C9: ExitProcCb
  loc_B264CD: FnStrComp3Var
End Function
