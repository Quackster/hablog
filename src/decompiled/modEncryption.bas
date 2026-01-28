
Private Function Proc_34_0_B196CC() 'B196CC
  'Data Table: 53B1C0
  loc_B196B8: LitI4 1
  loc_B196BD: FMemLdRf Proc_34_7_B1E6C4()
  loc_B196C2: Ary1LdI4
  loc_B196C3: CStrI4
  loc_B196C5: FStStr var_88
  loc_B196C8: ExitProc
End Function

Private Function Proc_34_1_B19714() 'B19714
  'Data Table: 53B1C0
  loc_B19700: LitI4 2
  loc_B19705: FMemLdRf Proc_34_7_B1E6C4()
  loc_B1970A: Ary1LdI4
  loc_B1970B: CStrI4
  loc_B1970D: FStStr var_88
  loc_B19710: ExitProc
End Function

Private Function Proc_34_2_B1975C() 'B1975C
  'Data Table: 53B1C0
  loc_B19748: LitI4 3
  loc_B1974D: FMemLdRf Proc_34_7_B1E6C4()
  loc_B19752: Ary1LdI4
  loc_B19753: CStrI4
  loc_B19755: FStStr var_88
  loc_B19758: ExitProc
End Function

Private Function Proc_34_3_B1963C() 'B1963C
  'Data Table: 53B1C0
  loc_B19628: LitI4 4
  loc_B1962D: FMemLdRf Proc_34_7_B1E6C4()
  loc_B19632: Ary1LdI4
  loc_B19633: CStrI4
  loc_B19635: FStStr var_88
  loc_B19638: ExitProc
  loc_B19639: FLdPr arg_8
End Function

Private Function Proc_34_4_B24BF4(arg_C) 'B24BF4
  'Data Table: 53B1C0
  loc_B24AC0: ILdRf arg_C
  loc_B24AC3: FStStrCopy var_8C
  loc_B24AC6: OnErrorGoto loc_B24B6E
  loc_B24AC9: FMemLdRf Proc_34_7_B1E6C4(, , , , , , , , )
  loc_B24ACE: LitI2_Byte 1
  loc_B24AD0: FnUBound
  loc_B24AD2: LitI4 1
  loc_B24AD7: AddI4
  loc_B24AD8: FStR4 var_94
  loc_B24ADB: LitVar_Missing var_B4
  loc_B24ADE: ImpAdCallI2 FreeFile()
  loc_B24AE3: FStI2 var_8E
  loc_B24AE6: FFree1Var var_B4 = ""
  loc_B24AE9: ILdRf var_8C
  loc_B24AEC: FLdI2 var_8E
  loc_B24AEF: LitI2_Byte &HFF
  loc_B24AF1: OpenFile
  loc_B24AF5: ImpAdCallFPR4 Proc_34_9_B1D278()
  loc_B24AFA: FLdI2 var_8E
  loc_B24AFD: ImpAdCallI2 push EOF()
  loc_B24B02: NotI4
  loc_B24B03: BranchF loc_B24B44
  loc_B24B06: FLdI2 var_8E
  loc_B24B09: FMemLdRf Proc_34_7_B1E6C4(, , , , , , , , )
  loc_B24B0E: GetRecOwn3
  loc_B24B12: FLdI2 var_8E
  loc_B24B15: ImpAdCallI2 Loc()
  loc_B24B1A: FLdI2 var_8E
  loc_B24B1D: ImpAdCallI2 push LOF()
  loc_B24B22: LtI4
  loc_B24B23: BranchF loc_B24B41
  loc_B24B26: FMemLdR4 arg_8(28)
  loc_B24B2B: ILdRf var_94
  loc_B24B2E: AddI4
  loc_B24B2F: FMemStI4 arg_8(28)
  loc_B24B34: FMemLdRf Proc_34_7_B1E6C4(, , , , , , , , )
  loc_B24B39: PopTmpLdAdStr var_B8
  loc_B24B3C: ImpAdCallFPR4 Proc_34_12_B5E888()
  loc_B24B41: Branch loc_B24AFA
  loc_B24B44: FMemLdR4 arg_8(28)
  loc_B24B49: FLdI2 var_8E
  loc_B24B4C: ImpAdCallI2 push LOF()
  loc_B24B51: ILdRf var_94
  loc_B24B54: ModI4
  loc_B24B55: AddI4
  loc_B24B56: FMemStI4 arg_8(28)
  loc_B24B5B: FLdI2 var_8E
  loc_B24B5E: Close
  loc_B24B60: ImpAdCallFPR4 Proc_34_10_B248D0()
  loc_B24B65: ImpAdCallI2 Proc_34_7_B1E6C4()
  loc_B24B6A: FStStr var_88
  loc_B24B6D: ExitProc
  loc_B24B6E: FLdI2 var_8E
  loc_B24B71: LitI2_Byte 0
  loc_B24B73: EqI2
  loc_B24B74: NotI4
  loc_B24B75: BranchF loc_B24B7D
  loc_B24B78: FLdI2 var_8E
  loc_B24B7B: Close
  loc_B24B7D: FLdRfVar var_B8
  loc_B24B80: ImpAdCallI2 Err 'rtcErrObj
  loc_B24B85: FStAdFunc var_BC
  loc_B24B88: FLdPr var_BC
  loc_B24B8B:  = Err.Number
  loc_B24B90: FLdRfVar var_C4
  loc_B24B93: ImpAdCallI2 Err 'rtcErrObj
  loc_B24B98: FStAdFunc var_C0
  loc_B24B9B: FLdPr var_C0
  loc_B24B9E:  = Err.Source
  loc_B24BA3: FLdRfVar var_CC
  loc_B24BA6: ImpAdCallI2 Err 'rtcErrObj
  loc_B24BAB: FStAdFunc var_C8
  loc_B24BAE: FLdPr var_C8
  loc_B24BB1:  = Err.Description
  loc_B24BB6: LitVar_Missing var_10C
  loc_B24BB9: LitVar_Missing var_EC
  loc_B24BBC: FLdZeroAd var_CC
  loc_B24BBF: CVarStr var_DC
  loc_B24BC2: FLdZeroAd var_C4
  loc_B24BC5: CVarStr var_B4
  loc_B24BC8: ILdRf var_B8
  loc_B24BCB: ImpAdCallI2 Err 'rtcErrObj
  loc_B24BD0: FStAdFunc var_110
  loc_B24BD3: FLdPr var_110
  loc_B24BD6: Err.Raise from_stack_1
  loc_B24BDB: FFreeAd var_BC = "": var_C0 = "": var_C8 = ""
  loc_B24BE6: FFreeVar var_B4 = "": var_DC = "": var_EC = ""
  loc_B24BF1: ExitProc
  loc_B24BF2: MemLdRfVar from_stack_1.global_-30580
End Function

Private Function Proc_34_5_B1B5FC(arg_C) 'B1B5FC
  'Data Table: 53B1C0
  loc_B1B5C4: ImpAdCallFPR4 Proc_34_9_B1D278()
  loc_B1B5C9: ILdRf arg_C
  loc_B1B5CC: ImpAdCallI2 Proc_34_6_B1EFF8()
  loc_B1B5D1: PopTmpLdAdStr var_98
  loc_B1B5D4: FLdRfVar var_94
  loc_B1B5D7: StAryMove
  loc_B1B5D9: FLdRfVar var_94
  loc_B1B5DC: ILdI4 arg_C
  loc_B1B5DF: FnLenStr
  loc_B1B5E0: PopTmpLdAdStr var_90
  loc_B1B5E3: ImpAdCallFPR4 Proc_34_11_B23708(, )
  loc_B1B5E8: FLdRfVar var_94
  loc_B1B5EB: Erase
  loc_B1B5EC: ImpAdCallFPR4 Proc_34_10_B248D0()
  loc_B1B5F1: ImpAdCallI2 Proc_34_7_B1E6C4()
  loc_B1B5F6: FStStr var_88
  loc_B1B5F9: ExitProc
End Function

Private Function Proc_34_6_B1EFF8(arg_C) 'B1EFF8
  'Data Table: 53B1C0
  loc_B1EF78: LitI4 0
  loc_B1EF7D: ILdI4 arg_C
  loc_B1EF80: FnLenStr
  loc_B1EF81: FLdRfVar var_90
  loc_B1EF84: Redim
  loc_B1EF8E: LitI4 0
  loc_B1EF93: FLdRfVar var_8C
  loc_B1EF96: ILdI4 arg_C
  loc_B1EF99: FnLenStr
  loc_B1EF9A: LitI4 1
  loc_B1EF9F: SubI4
  loc_B1EFA0: ForI4 var_98
  loc_B1EFA6: LitVarI2 var_C8, 1
  loc_B1EFAB: ILdRf var_8C
  loc_B1EFAE: LitI4 1
  loc_B1EFB3: AddI4
  loc_B1EFB4: ILdRf arg_C
  loc_B1EFB7: CVarRef
  loc_B1EFBC: FLdRfVar var_D8
  loc_B1EFBF: ImpAdCallFPR4  = Mid(, , )
  loc_B1EFC4: FLdRfVar var_D8
  loc_B1EFC7: CStrVarVal var_DC
  loc_B1EFCB: ImpAdCallI2 Asc()
  loc_B1EFD0: CUI1I2
  loc_B1EFD2: ILdRf var_8C
  loc_B1EFD5: ILdRf var_90
  loc_B1EFD8: Ary1StUI1
  loc_B1EFDA: FFree1Str var_DC
  loc_B1EFDD: FFreeVar var_C8 = ""
  loc_B1EFE4: FLdRfVar var_8C
  loc_B1EFE7: NextI4 var_98, loc_B1EFA6
  loc_B1EFEC: FLdRfVar var_90
  loc_B1EFEF: FLdRfVar var_88
  loc_B1EFF2: StAryMove
  loc_B1EFF4: ExitProc
End Function

Private Function Proc_34_7_B1E6C4() 'B1E6C4
  'Data Table: 53B1C0
  loc_B1E65C: LitI4 1
  loc_B1E661: FMemLdRf Proc_34_7_B1E6C4()
  loc_B1E666: Ary1LdI4
  loc_B1E667: ImpAdCallI2 Proc_34_8_B29BE0()
  loc_B1E66C: FStStrNoPop var_8C
  loc_B1E66F: LitI4 2
  loc_B1E674: FMemLdRf Proc_34_7_B1E6C4()
  loc_B1E679: Ary1LdI4
  loc_B1E67A: ImpAdCallI2 Proc_34_8_B29BE0()
  loc_B1E67F: FStStrNoPop var_90
  loc_B1E682: ConcatStr
  loc_B1E683: FStStrNoPop var_94
  loc_B1E686: LitI4 3
  loc_B1E68B: FMemLdRf Proc_34_7_B1E6C4()
  loc_B1E690: Ary1LdI4
  loc_B1E691: ImpAdCallI2 Proc_34_8_B29BE0()
  loc_B1E696: FStStrNoPop var_98
  loc_B1E699: ConcatStr
  loc_B1E69A: FStStrNoPop var_9C
  loc_B1E69D: LitI4 4
  loc_B1E6A2: FMemLdRf Proc_34_7_B1E6C4()
  loc_B1E6A7: Ary1LdI4
  loc_B1E6A8: ImpAdCallI2 Proc_34_8_B29BE0()
  loc_B1E6AD: FStStrNoPop var_A0
  loc_B1E6B0: ConcatStr
  loc_B1E6B1: FStStr var_88
  loc_B1E6B4: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_B1E6C3: ExitProc
End Function

Private Function Proc_34_8_B29BE0(arg_C) 'B29BE0
  'Data Table: 53B1C0
  loc_B299E0: ILdRf arg_C
  loc_B299E3: LitI4 &HFF
  loc_B299E8: AndI4
  loc_B299E9: CUI1I4
  loc_B299EB: FStUI1 var_8A
  loc_B299EF: FLdUI1
  loc_B299F3: CI2UI1
  loc_B299F5: LitI2_Byte &H10
  loc_B299F7: LtI2
  loc_B299F8: BranchF loc_B29A25
  loc_B299FB: LitVarStr var_C4, "0"
  loc_B29A00: FLdRfVar var_8A
  loc_B29A03: CVarRef
  loc_B29A08: FLdRfVar var_B4
  loc_B29A0B: ImpAdCallFPR4  = Hex()
  loc_B29A10: FLdRfVar var_B4
  loc_B29A13: ConcatVar var_D4
  loc_B29A17: CStrVarTmp
  loc_B29A18: FStStr var_94
  loc_B29A1B: FFreeVar var_B4 = ""
  loc_B29A22: Branch loc_B29A3F
  loc_B29A25: FLdRfVar var_8A
  loc_B29A28: CVarRef
  loc_B29A2D: FLdRfVar var_B4
  loc_B29A30: ImpAdCallFPR4  = Hex()
  loc_B29A35: FLdRfVar var_B4
  loc_B29A38: CStrVarTmp
  loc_B29A39: FStStr var_94
  loc_B29A3C: FFree1Var var_B4 = ""
  loc_B29A3F: ILdRf arg_C
  loc_B29A42: LitI4 &HFF00
  loc_B29A47: AndI4
  loc_B29A48: LitI4 &H100
  loc_B29A4D: IDvI4
  loc_B29A4E: CUI1I4
  loc_B29A50: FStUI1 var_8C
  loc_B29A54: FLdUI1
  loc_B29A58: CI2UI1
  loc_B29A5A: LitI2_Byte &H10
  loc_B29A5C: LtI2
  loc_B29A5D: BranchF loc_B29A91
  loc_B29A60: ILdRf var_94
  loc_B29A63: LitStr "0"
  loc_B29A66: ConcatStr
  loc_B29A67: CVarStr var_D4
  loc_B29A6A: FLdRfVar var_8C
  loc_B29A6D: CVarRef
  loc_B29A72: FLdRfVar var_B4
  loc_B29A75: ImpAdCallFPR4  = Hex()
  loc_B29A7A: FLdRfVar var_B4
  loc_B29A7D: ConcatVar var_E4
  loc_B29A81: CStrVarTmp
  loc_B29A82: FStStr var_94
  loc_B29A85: FFreeVar var_D4 = "": var_B4 = ""
  loc_B29A8E: Branch loc_B29AB9
  loc_B29A91: ILdRf var_94
  loc_B29A94: CVarStr var_C4
  loc_B29A97: FLdRfVar var_8C
  loc_B29A9A: CVarRef
  loc_B29A9F: FLdRfVar var_B4
  loc_B29AA2: ImpAdCallFPR4  = Hex()
  loc_B29AA7: FLdRfVar var_B4
  loc_B29AAA: ConcatVar var_D4
  loc_B29AAE: CStrVarTmp
  loc_B29AAF: FStStr var_94
  loc_B29AB2: FFreeVar var_B4 = ""
  loc_B29AB9: ILdRf arg_C
  loc_B29ABC: LitI4 &HFF0000
  loc_B29AC1: AndI4
  loc_B29AC2: LitI4 &H10000
  loc_B29AC7: IDvI4
  loc_B29AC8: CUI1I4
  loc_B29ACA: FStUI1 var_8E
  loc_B29ACE: FLdUI1
  loc_B29AD2: CI2UI1
  loc_B29AD4: LitI2_Byte &H10
  loc_B29AD6: LtI2
  loc_B29AD7: BranchF loc_B29B0B
  loc_B29ADA: ILdRf var_94
  loc_B29ADD: LitStr "0"
  loc_B29AE0: ConcatStr
  loc_B29AE1: CVarStr var_D4
  loc_B29AE4: FLdRfVar var_8E
  loc_B29AE7: CVarRef
  loc_B29AEC: FLdRfVar var_B4
  loc_B29AEF: ImpAdCallFPR4  = Hex()
  loc_B29AF4: FLdRfVar var_B4
  loc_B29AF7: ConcatVar var_E4
  loc_B29AFB: CStrVarTmp
  loc_B29AFC: FStStr var_94
  loc_B29AFF: FFreeVar var_D4 = "": var_B4 = ""
  loc_B29B08: Branch loc_B29B33
  loc_B29B0B: ILdRf var_94
  loc_B29B0E: CVarStr var_C4
  loc_B29B11: FLdRfVar var_8E
  loc_B29B14: CVarRef
  loc_B29B19: FLdRfVar var_B4
  loc_B29B1C: ImpAdCallFPR4  = Hex()
  loc_B29B21: FLdRfVar var_B4
  loc_B29B24: ConcatVar var_D4
  loc_B29B28: CStrVarTmp
  loc_B29B29: FStStr var_94
  loc_B29B2C: FFreeVar var_B4 = ""
  loc_B29B33: ILdRf arg_C
  loc_B29B36: LitI4 0
  loc_B29B3B: LtI4
  loc_B29B3C: BranchF loc_B29B5D
  loc_B29B3F: ILdRf arg_C
  loc_B29B42: LitI4 &H7F000000
  loc_B29B47: AndI4
  loc_B29B48: LitI4 &H1000000
  loc_B29B4D: IDvI4
  loc_B29B4E: LitI4 &H80
  loc_B29B53: OrI4
  loc_B29B54: CUI1I4
  loc_B29B56: FStUI1 var_90
  loc_B29B5A: Branch loc_B29B72
  loc_B29B5D: ILdRf arg_C
  loc_B29B60: LitI4 -16777216
  loc_B29B65: AndI4
  loc_B29B66: LitI4 &H1000000
  loc_B29B6B: IDvI4
  loc_B29B6C: CUI1I4
  loc_B29B6E: FStUI1 var_90
  loc_B29B72: FLdUI1
  loc_B29B76: CI2UI1
  loc_B29B78: LitI2_Byte &H10
  loc_B29B7A: LtI2
  loc_B29B7B: BranchF loc_B29BAF
  loc_B29B7E: ILdRf var_94
  loc_B29B81: LitStr "0"
  loc_B29B84: ConcatStr
  loc_B29B85: CVarStr var_D4
  loc_B29B88: FLdRfVar var_90
  loc_B29B8B: CVarRef
  loc_B29B90: FLdRfVar var_B4
  loc_B29B93: ImpAdCallFPR4  = Hex()
  loc_B29B98: FLdRfVar var_B4
  loc_B29B9B: ConcatVar var_E4
  loc_B29B9F: CStrVarTmp
  loc_B29BA0: FStStr var_94
  loc_B29BA3: FFreeVar var_D4 = "": var_B4 = ""
  loc_B29BAC: Branch loc_B29BD7
  loc_B29BAF: ILdRf var_94
  loc_B29BB2: CVarStr var_C4
  loc_B29BB5: FLdRfVar var_90
  loc_B29BB8: CVarRef
  loc_B29BBD: FLdRfVar var_B4
  loc_B29BC0: ImpAdCallFPR4  = Hex()
  loc_B29BC5: FLdRfVar var_B4
  loc_B29BC8: ConcatVar var_D4
  loc_B29BCC: CStrVarTmp
  loc_B29BCD: FStStr var_94
  loc_B29BD0: FFreeVar var_B4 = ""
  loc_B29BD7: ILdRf var_94
  loc_B29BDA: FStStrCopy var_88
  loc_B29BDD: ExitProc
End Function

Private Function Proc_34_9_B1D278() 'B1D278
  'Data Table: 53B1C0
  loc_B1D208: LitI4 0
  loc_B1D20D: FMemStI4 arg_8(28)
  loc_B1D212: LitCy &H67452301
  loc_B1D21B: ImpAdCallI2 Proc_34_21_B1B298(, )
  loc_B1D220: LitI4 1
  loc_B1D225: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B1D22A: Ary1StI4
  loc_B1D22B: LitCy &HEFCDAB89
  loc_B1D234: ImpAdCallI2 Proc_34_21_B1B298(, )
  loc_B1D239: LitI4 2
  loc_B1D23E: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B1D243: Ary1StI4
  loc_B1D244: LitCy &H98BADCFE
  loc_B1D24D: ImpAdCallI2 Proc_34_21_B1B298(, )
  loc_B1D252: LitI4 3
  loc_B1D257: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B1D25C: Ary1StI4
  loc_B1D25D: LitCy &H10325476
  loc_B1D266: ImpAdCallI2 Proc_34_21_B1B298(, )
  loc_B1D26B: LitI4 4
  loc_B1D270: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B1D275: Ary1StI4
  loc_B1D276: ExitProc
  loc_B1D277: Ary1StI4
End Function

Private Function Proc_34_10_B248D0() 'B248D0
  'Data Table: 53B1C0
  loc_B2479C: LitI2 128
  loc_B2479F: CUI1I2
  loc_B247A1: LitI4 0
  loc_B247A6: FLdRfVar var_A4
  loc_B247A9: Ary1StUI1
  loc_B247AB: FMemLdR4 arg_8(28)
  loc_B247B0: LitI4 8
  loc_B247B5: MulI4
  loc_B247B6: CR8I4
  loc_B247B7: FStFPR8 var_8C
  loc_B247BA: FMemLdR4 arg_8(28)
  loc_B247BF: LitI4 &H40
  loc_B247C4: ModI4
  loc_B247C5: FStR4 var_AC
  loc_B247C8: ILdRf var_AC
  loc_B247CB: LitI4 &H38
  loc_B247D0: LeI4
  loc_B247D1: BranchF loc_B247EE
  loc_B247D4: FLdRfVar var_A4
  loc_B247D7: PopTmpLdAdStr var_B4
  loc_B247DA: LitI4 &H38
  loc_B247DF: ILdRf var_AC
  loc_B247E2: SubI4
  loc_B247E3: PopTmpLdAdStr var_B0
  loc_B247E6: ImpAdCallFPR4 Proc_34_11_B23708(, )
  loc_B247EB: Branch loc_B24807
  loc_B247EE: FLdRfVar var_A4
  loc_B247F1: PopTmpLdAdStr var_B4
  loc_B247F4: LitI4 &H78
  loc_B247F9: FMemLdR4 arg_8(28)
  loc_B247FE: SubI4
  loc_B247FF: PopTmpLdAdStr var_B0
  loc_B24802: ImpAdCallFPR4 Proc_34_11_B23708(, )
  loc_B24807: FLdR8 var_8C
  loc_B2480A: ImpAdCallI2 Proc_34_21_B1B298(, )
  loc_B2480F: LitI4 &HFF
  loc_B24814: AndI4
  loc_B24815: CUI1I4
  loc_B24817: LitI4 0
  loc_B2481C: FLdRfVar var_A4
  loc_B2481F: Ary1StUI1
  loc_B24821: FLdR8 var_8C
  loc_B24824: ImpAdCallI2 Proc_34_21_B1B298(, )
  loc_B24829: LitI4 &H100
  loc_B2482E: IDvI4
  loc_B2482F: LitI4 &HFF
  loc_B24834: AndI4
  loc_B24835: CUI1I4
  loc_B24837: LitI4 1
  loc_B2483C: FLdRfVar var_A4
  loc_B2483F: Ary1StUI1
  loc_B24841: FLdR8 var_8C
  loc_B24844: ImpAdCallI2 Proc_34_21_B1B298(, )
  loc_B24849: LitI4 &H10000
  loc_B2484E: IDvI4
  loc_B2484F: LitI4 &HFF
  loc_B24854: AndI4
  loc_B24855: CUI1I4
  loc_B24857: LitI4 2
  loc_B2485C: FLdRfVar var_A4
  loc_B2485F: Ary1StUI1
  loc_B24861: FLdR8 var_8C
  loc_B24864: ImpAdCallI2 Proc_34_21_B1B298(, )
  loc_B24869: LitI4 &H1000000
  loc_B2486E: IDvI4
  loc_B2486F: LitI4 &HFF
  loc_B24874: AndI4
  loc_B24875: CUI1I4
  loc_B24877: LitI4 3
  loc_B2487C: FLdRfVar var_A4
  loc_B2487F: Ary1StUI1
  loc_B24881: LitI2_Byte 0
  loc_B24883: CUI1I2
  loc_B24885: LitI4 4
  loc_B2488A: FLdRfVar var_A4
  loc_B2488D: Ary1StUI1
  loc_B2488F: LitI2_Byte 0
  loc_B24891: CUI1I2
  loc_B24893: LitI4 5
  loc_B24898: FLdRfVar var_A4
  loc_B2489B: Ary1StUI1
  loc_B2489D: LitI2_Byte 0
  loc_B2489F: CUI1I2
  loc_B248A1: LitI4 6
  loc_B248A6: FLdRfVar var_A4
  loc_B248A9: Ary1StUI1
  loc_B248AB: LitI2_Byte 0
  loc_B248AD: CUI1I2
  loc_B248AF: LitI4 7
  loc_B248B4: FLdRfVar var_A4
  loc_B248B7: Ary1StUI1
  loc_B248B9: FLdRfVar var_A4
  loc_B248BC: PopTmpLdAdStr var_B4
  loc_B248BF: LitI4 8
  loc_B248C4: PopTmpLdAdStr var_B0
  loc_B248C7: ImpAdCallFPR4 Proc_34_11_B23708(, )
  loc_B248CC: ExitProc
End Function

Private Function Proc_34_11_B23708(arg_C, arg_10) 'B23708
  'Data Table: 53B1C0
  loc_B235D8: FMemLdR4 arg_8(28)
  loc_B235DD: LitI4 &H40
  loc_B235E2: ModI4
  loc_B235E3: FStR4 var_90
  loc_B235E6: LitI4 &H40
  loc_B235EB: ILdRf var_90
  loc_B235EE: SubI4
  loc_B235EF: FStR4 var_94
  loc_B235F2: FMemLdR4 arg_8(28)
  loc_B235F7: ILdI4 arg_C
  loc_B235FA: AddI4
  loc_B235FB: FMemStI4 arg_8(28)
  loc_B23600: ILdI4 arg_C
  loc_B23603: ILdRf var_94
  loc_B23606: GeI4
  loc_B23607: BranchF loc_B236C1
  loc_B2360A: LitI2_Byte 0
  loc_B2360C: FLdRfVar var_86
  loc_B2360F: ILdRf var_94
  loc_B23612: LitI4 1
  loc_B23617: SubI4
  loc_B23618: CI2I4
  loc_B23619: ForI2 var_9C
  loc_B2361F: FLdI2 var_86
  loc_B23622: CI4UI1
  loc_B23623: ILdI4 arg_10
  loc_B23626: Ary1LdUI1
  loc_B23628: ILdRf var_90
  loc_B2362B: FLdI2 var_86
  loc_B2362E: CI4UI1
  loc_B2362F: AddI4
  loc_B23630: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B23635: Ary1StUI1
  loc_B23637: FLdRfVar var_86
  loc_B2363A: NextI2 var_9C, loc_B2361F
  loc_B2363F: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B23644: PopTmpLdAdStr var_A0
  loc_B23647: ImpAdCallFPR4 Proc_34_12_B5E888()
  loc_B2364C: ILdI4 arg_C
  loc_B2364F: LitI4 &H40
  loc_B23654: ModI4
  loc_B23655: FStR4 var_98
  loc_B23658: ILdRf var_94
  loc_B2365B: CI2I4
  loc_B2365C: FLdRfVar var_88
  loc_B2365F: ILdI4 arg_C
  loc_B23662: FLdI2 var_86
  loc_B23665: CI4UI1
  loc_B23666: SubI4
  loc_B23667: ILdRf var_98
  loc_B2366A: SubI4
  loc_B2366B: CI2I4
  loc_B2366C: LitI2_Byte &H40
  loc_B2366E: ForStepI2 var_A4
  loc_B23674: LitI2_Byte 0
  loc_B23676: FLdRfVar var_8A
  loc_B23679: LitI2_Byte &H3F
  loc_B2367B: ForI2 var_A8
  loc_B23681: FLdI2 var_88
  loc_B23684: FLdI2 var_8A
  loc_B23687: AddI2
  loc_B23688: CI4UI1
  loc_B23689: ILdI4 arg_10
  loc_B2368C: Ary1LdUI1
  loc_B2368E: FLdI2 var_8A
  loc_B23691: CI4UI1
  loc_B23692: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B23697: Ary1StUI1
  loc_B23699: FLdRfVar var_8A
  loc_B2369C: NextI2 var_A8, loc_B23681
  loc_B236A1: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B236A6: PopTmpLdAdStr var_A0
  loc_B236A9: ImpAdCallFPR4 Proc_34_12_B5E888()
  loc_B236AE: FLdRfVar var_88
  loc_B236B1: NextStepI2 var_A4, loc_B23674
  loc_B236B6: LitI4 0
  loc_B236BB: FStR4 var_90
  loc_B236BE: Branch loc_B236C6
  loc_B236C1: LitI2_Byte 0
  loc_B236C3: FStI2 var_88
  loc_B236C6: LitI2_Byte 0
  loc_B236C8: FLdRfVar var_8C
  loc_B236CB: ILdI4 arg_C
  loc_B236CE: FLdI2 var_88
  loc_B236D1: CI4UI1
  loc_B236D2: SubI4
  loc_B236D3: LitI4 1
  loc_B236D8: SubI4
  loc_B236D9: CI2I4
  loc_B236DA: ForI2 var_AC
  loc_B236E0: FLdI2 var_88
  loc_B236E3: FLdI2 var_8C
  loc_B236E6: AddI2
  loc_B236E7: CI4UI1
  loc_B236E8: ILdI4 arg_10
  loc_B236EB: Ary1LdUI1
  loc_B236ED: ILdRf var_90
  loc_B236F0: FLdI2 var_8C
  loc_B236F3: CI4UI1
  loc_B236F4: AddI4
  loc_B236F5: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B236FA: Ary1StUI1
  loc_B236FC: FLdRfVar var_8C
  loc_B236FF: NextI2 var_AC, loc_B236E0
  loc_B23704: ExitProc
End Function

Private Function Proc_34_12_B5E888(arg_C) 'B5E888
  'Data Table: 53B1C0
  loc_B5DD44: LitI4 1
  loc_B5DD49: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B5DD4E: Ary1LdI4
  loc_B5DD4F: FStR4 var_A4
  loc_B5DD52: LitI4 2
  loc_B5DD57: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B5DD5C: Ary1LdI4
  loc_B5DD5D: FStR4 var_A8
  loc_B5DD60: LitI4 3
  loc_B5DD65: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B5DD6A: Ary1LdI4
  loc_B5DD6B: FStR4 var_AC
  loc_B5DD6E: LitI4 4
  loc_B5DD73: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B5DD78: Ary1LdI4
  loc_B5DD79: FStR4 var_B0
  loc_B5DD7C: ILdRf arg_C
  loc_B5DD7F: FLdRfVar var_9C
  loc_B5DD82: PopTmpLdAdStr var_B8
  loc_B5DD85: LitI2_Byte &H40
  loc_B5DD87: PopTmpLdAd2 var_B2
  loc_B5DD8A: ImpAdCallFPR4 Proc_34_13_B1E9C8(, , )
  loc_B5DD8F: LitI4 -680876936
  loc_B5DD94: PopTmpLdAdStr var_BC
  loc_B5DD97: LitI4 7
  loc_B5DD9C: PopTmpLdAdStr var_B8
  loc_B5DD9F: LitI4 0
  loc_B5DDA4: FLdRfVar var_9C
  loc_B5DDA7: Ary1LdRf
  loc_B5DDA8: FLdRfVar var_B0
  loc_B5DDAB: FLdRfVar var_AC
  loc_B5DDAE: FLdRfVar var_A8
  loc_B5DDB1: FLdRfVar var_A4
  loc_B5DDB4: ImpAdCallFPR4 Proc_34_14_B1AEC8(, , , , , , )
  loc_B5DDB9: LitI4 -389564586
  loc_B5DDBE: PopTmpLdAdStr var_BC
  loc_B5DDC1: LitI4 &HC
  loc_B5DDC6: PopTmpLdAdStr var_B8
  loc_B5DDC9: LitI4 1
  loc_B5DDCE: FLdRfVar var_9C
  loc_B5DDD1: Ary1LdRf
  loc_B5DDD2: FLdRfVar var_AC
  loc_B5DDD5: FLdRfVar var_A8
  loc_B5DDD8: FLdRfVar var_A4
  loc_B5DDDB: FLdRfVar var_B0
  loc_B5DDDE: ImpAdCallFPR4 Proc_34_14_B1AEC8(, , , , , , )
  loc_B5DDE3: LitI4 &H242070DB
  loc_B5DDE8: PopTmpLdAdStr var_BC
  loc_B5DDEB: LitI4 &H11
  loc_B5DDF0: PopTmpLdAdStr var_B8
  loc_B5DDF3: LitI4 2
  loc_B5DDF8: FLdRfVar var_9C
  loc_B5DDFB: Ary1LdRf
  loc_B5DDFC: FLdRfVar var_A8
  loc_B5DDFF: FLdRfVar var_A4
  loc_B5DE02: FLdRfVar var_B0
  loc_B5DE05: FLdRfVar var_AC
  loc_B5DE08: ImpAdCallFPR4 Proc_34_14_B1AEC8(, , , , , , )
  loc_B5DE0D: LitI4 -1044525330
  loc_B5DE12: PopTmpLdAdStr var_BC
  loc_B5DE15: LitI4 &H16
  loc_B5DE1A: PopTmpLdAdStr var_B8
  loc_B5DE1D: LitI4 3
  loc_B5DE22: FLdRfVar var_9C
  loc_B5DE25: Ary1LdRf
  loc_B5DE26: FLdRfVar var_A4
  loc_B5DE29: FLdRfVar var_B0
  loc_B5DE2C: FLdRfVar var_AC
  loc_B5DE2F: FLdRfVar var_A8
  loc_B5DE32: ImpAdCallFPR4 Proc_34_14_B1AEC8(, , , , , , )
  loc_B5DE37: LitI4 -176418897
  loc_B5DE3C: PopTmpLdAdStr var_BC
  loc_B5DE3F: LitI4 7
  loc_B5DE44: PopTmpLdAdStr var_B8
  loc_B5DE47: LitI4 4
  loc_B5DE4C: FLdRfVar var_9C
  loc_B5DE4F: Ary1LdRf
  loc_B5DE50: FLdRfVar var_B0
  loc_B5DE53: FLdRfVar var_AC
  loc_B5DE56: FLdRfVar var_A8
  loc_B5DE59: FLdRfVar var_A4
  loc_B5DE5C: ImpAdCallFPR4 Proc_34_14_B1AEC8(, , , , , , )
  loc_B5DE61: LitI4 &H4787C62A
  loc_B5DE66: PopTmpLdAdStr var_BC
  loc_B5DE69: LitI4 &HC
  loc_B5DE6E: PopTmpLdAdStr var_B8
  loc_B5DE71: LitI4 5
  loc_B5DE76: FLdRfVar var_9C
  loc_B5DE79: Ary1LdRf
  loc_B5DE7A: FLdRfVar var_AC
  loc_B5DE7D: FLdRfVar var_A8
  loc_B5DE80: FLdRfVar var_A4
  loc_B5DE83: FLdRfVar var_B0
  loc_B5DE86: ImpAdCallFPR4 Proc_34_14_B1AEC8(, , , , , , )
  loc_B5DE8B: LitI4 -1473231341
  loc_B5DE90: PopTmpLdAdStr var_BC
  loc_B5DE93: LitI4 &H11
  loc_B5DE98: PopTmpLdAdStr var_B8
  loc_B5DE9B: LitI4 6
  loc_B5DEA0: FLdRfVar var_9C
  loc_B5DEA3: Ary1LdRf
  loc_B5DEA4: FLdRfVar var_A8
  loc_B5DEA7: FLdRfVar var_A4
  loc_B5DEAA: FLdRfVar var_B0
  loc_B5DEAD: FLdRfVar var_AC
  loc_B5DEB0: ImpAdCallFPR4 Proc_34_14_B1AEC8(, , , , , , )
  loc_B5DEB5: LitI4 -45705983
  loc_B5DEBA: PopTmpLdAdStr var_BC
  loc_B5DEBD: LitI4 &H16
  loc_B5DEC2: PopTmpLdAdStr var_B8
  loc_B5DEC5: LitI4 7
  loc_B5DECA: FLdRfVar var_9C
  loc_B5DECD: Ary1LdRf
  loc_B5DECE: FLdRfVar var_A4
  loc_B5DED1: FLdRfVar var_B0
  loc_B5DED4: FLdRfVar var_AC
  loc_B5DED7: FLdRfVar var_A8
  loc_B5DEDA: ImpAdCallFPR4 Proc_34_14_B1AEC8(, , , , , , )
  loc_B5DEDF: LitI4 &H698098D8
  loc_B5DEE4: PopTmpLdAdStr var_BC
  loc_B5DEE7: LitI4 7
  loc_B5DEEC: PopTmpLdAdStr var_B8
  loc_B5DEEF: LitI4 8
  loc_B5DEF4: FLdRfVar var_9C
  loc_B5DEF7: Ary1LdRf
  loc_B5DEF8: FLdRfVar var_B0
  loc_B5DEFB: FLdRfVar var_AC
  loc_B5DEFE: FLdRfVar var_A8
  loc_B5DF01: FLdRfVar var_A4
  loc_B5DF04: ImpAdCallFPR4 Proc_34_14_B1AEC8(, , , , , , )
  loc_B5DF09: LitI4 -1958414417
  loc_B5DF0E: PopTmpLdAdStr var_BC
  loc_B5DF11: LitI4 &HC
  loc_B5DF16: PopTmpLdAdStr var_B8
  loc_B5DF19: LitI4 9
  loc_B5DF1E: FLdRfVar var_9C
  loc_B5DF21: Ary1LdRf
  loc_B5DF22: FLdRfVar var_AC
  loc_B5DF25: FLdRfVar var_A8
  loc_B5DF28: FLdRfVar var_A4
  loc_B5DF2B: FLdRfVar var_B0
  loc_B5DF2E: ImpAdCallFPR4 Proc_34_14_B1AEC8(, , , , , , )
  loc_B5DF33: LitI4 -42063
  loc_B5DF38: PopTmpLdAdStr var_BC
  loc_B5DF3B: LitI4 &H11
  loc_B5DF40: PopTmpLdAdStr var_B8
  loc_B5DF43: LitI4 &HA
  loc_B5DF48: FLdRfVar var_9C
  loc_B5DF4B: Ary1LdRf
  loc_B5DF4C: FLdRfVar var_A8
  loc_B5DF4F: FLdRfVar var_A4
  loc_B5DF52: FLdRfVar var_B0
  loc_B5DF55: FLdRfVar var_AC
  loc_B5DF58: ImpAdCallFPR4 Proc_34_14_B1AEC8(, , , , , , )
  loc_B5DF5D: LitI4 -1990404162
  loc_B5DF62: PopTmpLdAdStr var_BC
  loc_B5DF65: LitI4 &H16
  loc_B5DF6A: PopTmpLdAdStr var_B8
  loc_B5DF6D: LitI4 &HB
  loc_B5DF72: FLdRfVar var_9C
  loc_B5DF75: Ary1LdRf
  loc_B5DF76: FLdRfVar var_A4
  loc_B5DF79: FLdRfVar var_B0
  loc_B5DF7C: FLdRfVar var_AC
  loc_B5DF7F: FLdRfVar var_A8
  loc_B5DF82: ImpAdCallFPR4 Proc_34_14_B1AEC8(, , , , , , )
  loc_B5DF87: LitI4 &H6B901122
  loc_B5DF8C: PopTmpLdAdStr var_BC
  loc_B5DF8F: LitI4 7
  loc_B5DF94: PopTmpLdAdStr var_B8
  loc_B5DF97: LitI4 &HC
  loc_B5DF9C: FLdRfVar var_9C
  loc_B5DF9F: Ary1LdRf
  loc_B5DFA0: FLdRfVar var_B0
  loc_B5DFA3: FLdRfVar var_AC
  loc_B5DFA6: FLdRfVar var_A8
  loc_B5DFA9: FLdRfVar var_A4
  loc_B5DFAC: ImpAdCallFPR4 Proc_34_14_B1AEC8(, , , , , , )
  loc_B5DFB1: LitI4 -40341101
  loc_B5DFB6: PopTmpLdAdStr var_BC
  loc_B5DFB9: LitI4 &HC
  loc_B5DFBE: PopTmpLdAdStr var_B8
  loc_B5DFC1: LitI4 &HD
  loc_B5DFC6: FLdRfVar var_9C
  loc_B5DFC9: Ary1LdRf
  loc_B5DFCA: FLdRfVar var_AC
  loc_B5DFCD: FLdRfVar var_A8
  loc_B5DFD0: FLdRfVar var_A4
  loc_B5DFD3: FLdRfVar var_B0
  loc_B5DFD6: ImpAdCallFPR4 Proc_34_14_B1AEC8(, , , , , , )
  loc_B5DFDB: LitI4 -1502002290
  loc_B5DFE0: PopTmpLdAdStr var_BC
  loc_B5DFE3: LitI4 &H11
  loc_B5DFE8: PopTmpLdAdStr var_B8
  loc_B5DFEB: LitI4 &HE
  loc_B5DFF0: FLdRfVar var_9C
  loc_B5DFF3: Ary1LdRf
  loc_B5DFF4: FLdRfVar var_A8
  loc_B5DFF7: FLdRfVar var_A4
  loc_B5DFFA: FLdRfVar var_B0
  loc_B5DFFD: FLdRfVar var_AC
  loc_B5E000: ImpAdCallFPR4 Proc_34_14_B1AEC8(, , , , , , )
  loc_B5E005: LitI4 &H49B40821
  loc_B5E00A: PopTmpLdAdStr var_BC
  loc_B5E00D: LitI4 &H16
  loc_B5E012: PopTmpLdAdStr var_B8
  loc_B5E015: LitI4 &HF
  loc_B5E01A: FLdRfVar var_9C
  loc_B5E01D: Ary1LdRf
  loc_B5E01E: FLdRfVar var_A4
  loc_B5E021: FLdRfVar var_B0
  loc_B5E024: FLdRfVar var_AC
  loc_B5E027: FLdRfVar var_A8
  loc_B5E02A: ImpAdCallFPR4 Proc_34_14_B1AEC8(, , , , , , )
  loc_B5E02F: LitI4 -165796510
  loc_B5E034: PopTmpLdAdStr var_BC
  loc_B5E037: LitI4 5
  loc_B5E03C: PopTmpLdAdStr var_B8
  loc_B5E03F: LitI4 1
  loc_B5E044: FLdRfVar var_9C
  loc_B5E047: Ary1LdRf
  loc_B5E048: FLdRfVar var_B0
  loc_B5E04B: FLdRfVar var_AC
  loc_B5E04E: FLdRfVar var_A8
  loc_B5E051: FLdRfVar var_A4
  loc_B5E054: ImpAdCallFPR4 Proc_34_15_B1AF3C(, , , , , , )
  loc_B5E059: LitI4 -1069501632
  loc_B5E05E: PopTmpLdAdStr var_BC
  loc_B5E061: LitI4 9
  loc_B5E066: PopTmpLdAdStr var_B8
  loc_B5E069: LitI4 6
  loc_B5E06E: FLdRfVar var_9C
  loc_B5E071: Ary1LdRf
  loc_B5E072: FLdRfVar var_AC
  loc_B5E075: FLdRfVar var_A8
  loc_B5E078: FLdRfVar var_A4
  loc_B5E07B: FLdRfVar var_B0
  loc_B5E07E: ImpAdCallFPR4 Proc_34_15_B1AF3C(, , , , , , )
  loc_B5E083: LitI4 &H265E5A51
  loc_B5E088: PopTmpLdAdStr var_BC
  loc_B5E08B: LitI4 &HE
  loc_B5E090: PopTmpLdAdStr var_B8
  loc_B5E093: LitI4 &HB
  loc_B5E098: FLdRfVar var_9C
  loc_B5E09B: Ary1LdRf
  loc_B5E09C: FLdRfVar var_A8
  loc_B5E09F: FLdRfVar var_A4
  loc_B5E0A2: FLdRfVar var_B0
  loc_B5E0A5: FLdRfVar var_AC
  loc_B5E0A8: ImpAdCallFPR4 Proc_34_15_B1AF3C(, , , , , , )
  loc_B5E0AD: LitI4 -373897302
  loc_B5E0B2: PopTmpLdAdStr var_BC
  loc_B5E0B5: LitI4 &H14
  loc_B5E0BA: PopTmpLdAdStr var_B8
  loc_B5E0BD: LitI4 0
  loc_B5E0C2: FLdRfVar var_9C
  loc_B5E0C5: Ary1LdRf
  loc_B5E0C6: FLdRfVar var_A4
  loc_B5E0C9: FLdRfVar var_B0
  loc_B5E0CC: FLdRfVar var_AC
  loc_B5E0CF: FLdRfVar var_A8
  loc_B5E0D2: ImpAdCallFPR4 Proc_34_15_B1AF3C(, , , , , , )
  loc_B5E0D7: LitI4 -701558691
  loc_B5E0DC: PopTmpLdAdStr var_BC
  loc_B5E0DF: LitI4 5
  loc_B5E0E4: PopTmpLdAdStr var_B8
  loc_B5E0E7: LitI4 5
  loc_B5E0EC: FLdRfVar var_9C
  loc_B5E0EF: Ary1LdRf
  loc_B5E0F0: FLdRfVar var_B0
  loc_B5E0F3: FLdRfVar var_AC
  loc_B5E0F6: FLdRfVar var_A8
  loc_B5E0F9: FLdRfVar var_A4
  loc_B5E0FC: ImpAdCallFPR4 Proc_34_15_B1AF3C(, , , , , , )
  loc_B5E101: LitI4 &H2441453
  loc_B5E106: PopTmpLdAdStr var_BC
  loc_B5E109: LitI4 9
  loc_B5E10E: PopTmpLdAdStr var_B8
  loc_B5E111: LitI4 &HA
  loc_B5E116: FLdRfVar var_9C
  loc_B5E119: Ary1LdRf
  loc_B5E11A: FLdRfVar var_AC
  loc_B5E11D: FLdRfVar var_A8
  loc_B5E120: FLdRfVar var_A4
  loc_B5E123: FLdRfVar var_B0
  loc_B5E126: ImpAdCallFPR4 Proc_34_15_B1AF3C(, , , , , , )
  loc_B5E12B: LitI4 -660478335
  loc_B5E130: PopTmpLdAdStr var_BC
  loc_B5E133: LitI4 &HE
  loc_B5E138: PopTmpLdAdStr var_B8
  loc_B5E13B: LitI4 &HF
  loc_B5E140: FLdRfVar var_9C
  loc_B5E143: Ary1LdRf
  loc_B5E144: FLdRfVar var_A8
  loc_B5E147: FLdRfVar var_A4
  loc_B5E14A: FLdRfVar var_B0
  loc_B5E14D: FLdRfVar var_AC
  loc_B5E150: ImpAdCallFPR4 Proc_34_15_B1AF3C(, , , , , , )
  loc_B5E155: LitI4 -405537848
  loc_B5E15A: PopTmpLdAdStr var_BC
  loc_B5E15D: LitI4 &H14
  loc_B5E162: PopTmpLdAdStr var_B8
  loc_B5E165: LitI4 4
  loc_B5E16A: FLdRfVar var_9C
  loc_B5E16D: Ary1LdRf
  loc_B5E16E: FLdRfVar var_A4
  loc_B5E171: FLdRfVar var_B0
  loc_B5E174: FLdRfVar var_AC
  loc_B5E177: FLdRfVar var_A8
  loc_B5E17A: ImpAdCallFPR4 Proc_34_15_B1AF3C(, , , , , , )
  loc_B5E17F: LitI4 &H21E1CDE6
  loc_B5E184: PopTmpLdAdStr var_BC
  loc_B5E187: LitI4 5
  loc_B5E18C: PopTmpLdAdStr var_B8
  loc_B5E18F: LitI4 9
  loc_B5E194: FLdRfVar var_9C
  loc_B5E197: Ary1LdRf
  loc_B5E198: FLdRfVar var_B0
  loc_B5E19B: FLdRfVar var_AC
  loc_B5E19E: FLdRfVar var_A8
  loc_B5E1A1: FLdRfVar var_A4
  loc_B5E1A4: ImpAdCallFPR4 Proc_34_15_B1AF3C(, , , , , , )
  loc_B5E1A9: LitI4 -1019803690
  loc_B5E1AE: PopTmpLdAdStr var_BC
  loc_B5E1B1: LitI4 9
  loc_B5E1B6: PopTmpLdAdStr var_B8
  loc_B5E1B9: LitI4 &HE
  loc_B5E1BE: FLdRfVar var_9C
  loc_B5E1C1: Ary1LdRf
  loc_B5E1C2: FLdRfVar var_AC
  loc_B5E1C5: FLdRfVar var_A8
  loc_B5E1C8: FLdRfVar var_A4
  loc_B5E1CB: FLdRfVar var_B0
  loc_B5E1CE: ImpAdCallFPR4 Proc_34_15_B1AF3C(, , , , , , )
  loc_B5E1D3: LitI4 -187363961
  loc_B5E1D8: PopTmpLdAdStr var_BC
  loc_B5E1DB: LitI4 &HE
  loc_B5E1E0: PopTmpLdAdStr var_B8
  loc_B5E1E3: LitI4 3
  loc_B5E1E8: FLdRfVar var_9C
  loc_B5E1EB: Ary1LdRf
  loc_B5E1EC: FLdRfVar var_A8
  loc_B5E1EF: FLdRfVar var_A4
  loc_B5E1F2: FLdRfVar var_B0
  loc_B5E1F5: FLdRfVar var_AC
  loc_B5E1F8: ImpAdCallFPR4 Proc_34_15_B1AF3C(, , , , , , )
  loc_B5E1FD: LitI4 &H455A14ED
  loc_B5E202: PopTmpLdAdStr var_BC
  loc_B5E205: LitI4 &H14
  loc_B5E20A: PopTmpLdAdStr var_B8
  loc_B5E20D: LitI4 8
  loc_B5E212: FLdRfVar var_9C
  loc_B5E215: Ary1LdRf
  loc_B5E216: FLdRfVar var_A4
  loc_B5E219: FLdRfVar var_B0
  loc_B5E21C: FLdRfVar var_AC
  loc_B5E21F: FLdRfVar var_A8
  loc_B5E222: ImpAdCallFPR4 Proc_34_15_B1AF3C(, , , , , , )
  loc_B5E227: LitI4 -1444681467
  loc_B5E22C: PopTmpLdAdStr var_BC
  loc_B5E22F: LitI4 5
  loc_B5E234: PopTmpLdAdStr var_B8
  loc_B5E237: LitI4 &HD
  loc_B5E23C: FLdRfVar var_9C
  loc_B5E23F: Ary1LdRf
  loc_B5E240: FLdRfVar var_B0
  loc_B5E243: FLdRfVar var_AC
  loc_B5E246: FLdRfVar var_A8
  loc_B5E249: FLdRfVar var_A4
  loc_B5E24C: ImpAdCallFPR4 Proc_34_15_B1AF3C(, , , , , , )
  loc_B5E251: LitI4 -51403784
  loc_B5E256: PopTmpLdAdStr var_BC
  loc_B5E259: LitI4 9
  loc_B5E25E: PopTmpLdAdStr var_B8
  loc_B5E261: LitI4 2
  loc_B5E266: FLdRfVar var_9C
  loc_B5E269: Ary1LdRf
  loc_B5E26A: FLdRfVar var_AC
  loc_B5E26D: FLdRfVar var_A8
  loc_B5E270: FLdRfVar var_A4
  loc_B5E273: FLdRfVar var_B0
  loc_B5E276: ImpAdCallFPR4 Proc_34_15_B1AF3C(, , , , , , )
  loc_B5E27B: LitI4 &H676F02D9
  loc_B5E280: PopTmpLdAdStr var_BC
  loc_B5E283: LitI4 &HE
  loc_B5E288: PopTmpLdAdStr var_B8
  loc_B5E28B: LitI4 7
  loc_B5E290: FLdRfVar var_9C
  loc_B5E293: Ary1LdRf
  loc_B5E294: FLdRfVar var_A8
  loc_B5E297: FLdRfVar var_A4
  loc_B5E29A: FLdRfVar var_B0
  loc_B5E29D: FLdRfVar var_AC
  loc_B5E2A0: ImpAdCallFPR4 Proc_34_15_B1AF3C(, , , , , , )
  loc_B5E2A5: LitI4 -1926607734
  loc_B5E2AA: PopTmpLdAdStr var_BC
  loc_B5E2AD: LitI4 &H14
  loc_B5E2B2: PopTmpLdAdStr var_B8
  loc_B5E2B5: LitI4 &HC
  loc_B5E2BA: FLdRfVar var_9C
  loc_B5E2BD: Ary1LdRf
  loc_B5E2BE: FLdRfVar var_A4
  loc_B5E2C1: FLdRfVar var_B0
  loc_B5E2C4: FLdRfVar var_AC
  loc_B5E2C7: FLdRfVar var_A8
  loc_B5E2CA: ImpAdCallFPR4 Proc_34_15_B1AF3C(, , , , , , )
  loc_B5E2CF: LitI4 -378558
  loc_B5E2D4: PopTmpLdAdStr var_BC
  loc_B5E2D7: LitI4 4
  loc_B5E2DC: PopTmpLdAdStr var_B8
  loc_B5E2DF: LitI4 5
  loc_B5E2E4: FLdRfVar var_9C
  loc_B5E2E7: Ary1LdRf
  loc_B5E2E8: FLdRfVar var_B0
  loc_B5E2EB: FLdRfVar var_AC
  loc_B5E2EE: FLdRfVar var_A8
  loc_B5E2F1: FLdRfVar var_A4
  loc_B5E2F4: ImpAdCallFPR4 Proc_34_16_B1AC94(, , , , , , )
  loc_B5E2F9: LitI4 -2022574463
  loc_B5E2FE: PopTmpLdAdStr var_BC
  loc_B5E301: LitI4 &HB
  loc_B5E306: PopTmpLdAdStr var_B8
  loc_B5E309: LitI4 8
  loc_B5E30E: FLdRfVar var_9C
  loc_B5E311: Ary1LdRf
  loc_B5E312: FLdRfVar var_AC
  loc_B5E315: FLdRfVar var_A8
  loc_B5E318: FLdRfVar var_A4
  loc_B5E31B: FLdRfVar var_B0
  loc_B5E31E: ImpAdCallFPR4 Proc_34_16_B1AC94(, , , , , , )
  loc_B5E323: LitI4 &H6D9D6122
  loc_B5E328: PopTmpLdAdStr var_BC
  loc_B5E32B: LitI4 &H10
  loc_B5E330: PopTmpLdAdStr var_B8
  loc_B5E333: LitI4 &HB
  loc_B5E338: FLdRfVar var_9C
  loc_B5E33B: Ary1LdRf
  loc_B5E33C: FLdRfVar var_A8
  loc_B5E33F: FLdRfVar var_A4
  loc_B5E342: FLdRfVar var_B0
  loc_B5E345: FLdRfVar var_AC
  loc_B5E348: ImpAdCallFPR4 Proc_34_16_B1AC94(, , , , , , )
  loc_B5E34D: LitI4 -35309556
  loc_B5E352: PopTmpLdAdStr var_BC
  loc_B5E355: LitI4 &H17
  loc_B5E35A: PopTmpLdAdStr var_B8
  loc_B5E35D: LitI4 &HE
  loc_B5E362: FLdRfVar var_9C
  loc_B5E365: Ary1LdRf
  loc_B5E366: FLdRfVar var_A4
  loc_B5E369: FLdRfVar var_B0
  loc_B5E36C: FLdRfVar var_AC
  loc_B5E36F: FLdRfVar var_A8
  loc_B5E372: ImpAdCallFPR4 Proc_34_16_B1AC94(, , , , , , )
  loc_B5E377: LitI4 -1530992060
  loc_B5E37C: PopTmpLdAdStr var_BC
  loc_B5E37F: LitI4 4
  loc_B5E384: PopTmpLdAdStr var_B8
  loc_B5E387: LitI4 1
  loc_B5E38C: FLdRfVar var_9C
  loc_B5E38F: Ary1LdRf
  loc_B5E390: FLdRfVar var_B0
  loc_B5E393: FLdRfVar var_AC
  loc_B5E396: FLdRfVar var_A8
  loc_B5E399: FLdRfVar var_A4
  loc_B5E39C: ImpAdCallFPR4 Proc_34_16_B1AC94(, , , , , , )
  loc_B5E3A1: LitI4 &H4BDECFA9
  loc_B5E3A6: PopTmpLdAdStr var_BC
  loc_B5E3A9: LitI4 &HB
  loc_B5E3AE: PopTmpLdAdStr var_B8
  loc_B5E3B1: LitI4 4
  loc_B5E3B6: FLdRfVar var_9C
  loc_B5E3B9: Ary1LdRf
  loc_B5E3BA: FLdRfVar var_AC
  loc_B5E3BD: FLdRfVar var_A8
  loc_B5E3C0: FLdRfVar var_A4
  loc_B5E3C3: FLdRfVar var_B0
  loc_B5E3C6: ImpAdCallFPR4 Proc_34_16_B1AC94(, , , , , , )
  loc_B5E3CB: LitI4 -155497632
  loc_B5E3D0: PopTmpLdAdStr var_BC
  loc_B5E3D3: LitI4 &H10
  loc_B5E3D8: PopTmpLdAdStr var_B8
  loc_B5E3DB: LitI4 7
  loc_B5E3E0: FLdRfVar var_9C
  loc_B5E3E3: Ary1LdRf
  loc_B5E3E4: FLdRfVar var_A8
  loc_B5E3E7: FLdRfVar var_A4
  loc_B5E3EA: FLdRfVar var_B0
  loc_B5E3ED: FLdRfVar var_AC
  loc_B5E3F0: ImpAdCallFPR4 Proc_34_16_B1AC94(, , , , , , )
  loc_B5E3F5: LitI4 -1094730640
  loc_B5E3FA: PopTmpLdAdStr var_BC
  loc_B5E3FD: LitI4 &H17
  loc_B5E402: PopTmpLdAdStr var_B8
  loc_B5E405: LitI4 &HA
  loc_B5E40A: FLdRfVar var_9C
  loc_B5E40D: Ary1LdRf
  loc_B5E40E: FLdRfVar var_A4
  loc_B5E411: FLdRfVar var_B0
  loc_B5E414: FLdRfVar var_AC
  loc_B5E417: FLdRfVar var_A8
  loc_B5E41A: ImpAdCallFPR4 Proc_34_16_B1AC94(, , , , , , )
  loc_B5E41F: LitI4 &H289B7EC6
  loc_B5E424: PopTmpLdAdStr var_BC
  loc_B5E427: LitI4 4
  loc_B5E42C: PopTmpLdAdStr var_B8
  loc_B5E42F: LitI4 &HD
  loc_B5E434: FLdRfVar var_9C
  loc_B5E437: Ary1LdRf
  loc_B5E438: FLdRfVar var_B0
  loc_B5E43B: FLdRfVar var_AC
  loc_B5E43E: FLdRfVar var_A8
  loc_B5E441: FLdRfVar var_A4
  loc_B5E444: ImpAdCallFPR4 Proc_34_16_B1AC94(, , , , , , )
  loc_B5E449: LitI4 -358537222
  loc_B5E44E: PopTmpLdAdStr var_BC
  loc_B5E451: LitI4 &HB
  loc_B5E456: PopTmpLdAdStr var_B8
  loc_B5E459: LitI4 0
  loc_B5E45E: FLdRfVar var_9C
  loc_B5E461: Ary1LdRf
  loc_B5E462: FLdRfVar var_AC
  loc_B5E465: FLdRfVar var_A8
  loc_B5E468: FLdRfVar var_A4
  loc_B5E46B: FLdRfVar var_B0
  loc_B5E46E: ImpAdCallFPR4 Proc_34_16_B1AC94(, , , , , , )
  loc_B5E473: LitI4 -722521979
  loc_B5E478: PopTmpLdAdStr var_BC
  loc_B5E47B: LitI4 &H10
  loc_B5E480: PopTmpLdAdStr var_B8
  loc_B5E483: LitI4 3
  loc_B5E488: FLdRfVar var_9C
  loc_B5E48B: Ary1LdRf
  loc_B5E48C: FLdRfVar var_A8
  loc_B5E48F: FLdRfVar var_A4
  loc_B5E492: FLdRfVar var_B0
  loc_B5E495: FLdRfVar var_AC
  loc_B5E498: ImpAdCallFPR4 Proc_34_16_B1AC94(, , , , , , )
  loc_B5E49D: LitI4 &H4881D05
  loc_B5E4A2: PopTmpLdAdStr var_BC
  loc_B5E4A5: LitI4 &H17
  loc_B5E4AA: PopTmpLdAdStr var_B8
  loc_B5E4AD: LitI4 6
  loc_B5E4B2: FLdRfVar var_9C
  loc_B5E4B5: Ary1LdRf
  loc_B5E4B6: FLdRfVar var_A4
  loc_B5E4B9: FLdRfVar var_B0
  loc_B5E4BC: FLdRfVar var_AC
  loc_B5E4BF: FLdRfVar var_A8
  loc_B5E4C2: ImpAdCallFPR4 Proc_34_16_B1AC94(, , , , , , )
  loc_B5E4C7: LitI4 -640364487
  loc_B5E4CC: PopTmpLdAdStr var_BC
  loc_B5E4CF: LitI4 4
  loc_B5E4D4: PopTmpLdAdStr var_B8
  loc_B5E4D7: LitI4 9
  loc_B5E4DC: FLdRfVar var_9C
  loc_B5E4DF: Ary1LdRf
  loc_B5E4E0: FLdRfVar var_B0
  loc_B5E4E3: FLdRfVar var_AC
  loc_B5E4E6: FLdRfVar var_A8
  loc_B5E4E9: FLdRfVar var_A4
  loc_B5E4EC: ImpAdCallFPR4 Proc_34_16_B1AC94(, , , , , , )
  loc_B5E4F1: LitI4 -421815835
  loc_B5E4F6: PopTmpLdAdStr var_BC
  loc_B5E4F9: LitI4 &HB
  loc_B5E4FE: PopTmpLdAdStr var_B8
  loc_B5E501: LitI4 &HC
  loc_B5E506: FLdRfVar var_9C
  loc_B5E509: Ary1LdRf
  loc_B5E50A: FLdRfVar var_AC
  loc_B5E50D: FLdRfVar var_A8
  loc_B5E510: FLdRfVar var_A4
  loc_B5E513: FLdRfVar var_B0
  loc_B5E516: ImpAdCallFPR4 Proc_34_16_B1AC94(, , , , , , )
  loc_B5E51B: LitI4 &H1FA27CF8
  loc_B5E520: PopTmpLdAdStr var_BC
  loc_B5E523: LitI4 &H10
  loc_B5E528: PopTmpLdAdStr var_B8
  loc_B5E52B: LitI4 &HF
  loc_B5E530: FLdRfVar var_9C
  loc_B5E533: Ary1LdRf
  loc_B5E534: FLdRfVar var_A8
  loc_B5E537: FLdRfVar var_A4
  loc_B5E53A: FLdRfVar var_B0
  loc_B5E53D: FLdRfVar var_AC
  loc_B5E540: ImpAdCallFPR4 Proc_34_16_B1AC94(, , , , , , )
  loc_B5E545: LitI4 -995338651
  loc_B5E54A: PopTmpLdAdStr var_BC
  loc_B5E54D: LitI4 &H17
  loc_B5E552: PopTmpLdAdStr var_B8
  loc_B5E555: LitI4 2
  loc_B5E55A: FLdRfVar var_9C
  loc_B5E55D: Ary1LdRf
  loc_B5E55E: FLdRfVar var_A4
  loc_B5E561: FLdRfVar var_B0
  loc_B5E564: FLdRfVar var_AC
  loc_B5E567: FLdRfVar var_A8
  loc_B5E56A: ImpAdCallFPR4 Proc_34_16_B1AC94(, , , , , , )
  loc_B5E56F: LitI4 -198630844
  loc_B5E574: PopTmpLdAdStr var_BC
  loc_B5E577: LitI4 6
  loc_B5E57C: PopTmpLdAdStr var_B8
  loc_B5E57F: LitI4 0
  loc_B5E584: FLdRfVar var_9C
  loc_B5E587: Ary1LdRf
  loc_B5E588: FLdRfVar var_B0
  loc_B5E58B: FLdRfVar var_AC
  loc_B5E58E: FLdRfVar var_A8
  loc_B5E591: FLdRfVar var_A4
  loc_B5E594: ImpAdCallFPR4 Proc_34_17_B1AC24(, , , , , , )
  loc_B5E599: LitI4 &H432AFF97
  loc_B5E59E: PopTmpLdAdStr var_BC
  loc_B5E5A1: LitI4 &HA
  loc_B5E5A6: PopTmpLdAdStr var_B8
  loc_B5E5A9: LitI4 7
  loc_B5E5AE: FLdRfVar var_9C
  loc_B5E5B1: Ary1LdRf
  loc_B5E5B2: FLdRfVar var_AC
  loc_B5E5B5: FLdRfVar var_A8
  loc_B5E5B8: FLdRfVar var_A4
  loc_B5E5BB: FLdRfVar var_B0
  loc_B5E5BE: ImpAdCallFPR4 Proc_34_17_B1AC24(, , , , , , )
  loc_B5E5C3: LitI4 -1416354905
  loc_B5E5C8: PopTmpLdAdStr var_BC
  loc_B5E5CB: LitI4 &HF
  loc_B5E5D0: PopTmpLdAdStr var_B8
  loc_B5E5D3: LitI4 &HE
  loc_B5E5D8: FLdRfVar var_9C
  loc_B5E5DB: Ary1LdRf
  loc_B5E5DC: FLdRfVar var_A8
  loc_B5E5DF: FLdRfVar var_A4
  loc_B5E5E2: FLdRfVar var_B0
  loc_B5E5E5: FLdRfVar var_AC
  loc_B5E5E8: ImpAdCallFPR4 Proc_34_17_B1AC24(, , , , , , )
  loc_B5E5ED: LitI4 -57434055
  loc_B5E5F2: PopTmpLdAdStr var_BC
  loc_B5E5F5: LitI4 &H15
  loc_B5E5FA: PopTmpLdAdStr var_B8
  loc_B5E5FD: LitI4 5
  loc_B5E602: FLdRfVar var_9C
  loc_B5E605: Ary1LdRf
  loc_B5E606: FLdRfVar var_A4
  loc_B5E609: FLdRfVar var_B0
  loc_B5E60C: FLdRfVar var_AC
  loc_B5E60F: FLdRfVar var_A8
  loc_B5E612: ImpAdCallFPR4 Proc_34_17_B1AC24(, , , , , , )
  loc_B5E617: LitI4 &H655B59C3
  loc_B5E61C: PopTmpLdAdStr var_BC
  loc_B5E61F: LitI4 6
  loc_B5E624: PopTmpLdAdStr var_B8
  loc_B5E627: LitI4 &HC
  loc_B5E62C: FLdRfVar var_9C
  loc_B5E62F: Ary1LdRf
  loc_B5E630: FLdRfVar var_B0
  loc_B5E633: FLdRfVar var_AC
  loc_B5E636: FLdRfVar var_A8
  loc_B5E639: FLdRfVar var_A4
  loc_B5E63C: ImpAdCallFPR4 Proc_34_17_B1AC24(, , , , , , )
  loc_B5E641: LitI4 -1894986606
  loc_B5E646: PopTmpLdAdStr var_BC
  loc_B5E649: LitI4 &HA
  loc_B5E64E: PopTmpLdAdStr var_B8
  loc_B5E651: LitI4 3
  loc_B5E656: FLdRfVar var_9C
  loc_B5E659: Ary1LdRf
  loc_B5E65A: FLdRfVar var_AC
  loc_B5E65D: FLdRfVar var_A8
  loc_B5E660: FLdRfVar var_A4
  loc_B5E663: FLdRfVar var_B0
  loc_B5E666: ImpAdCallFPR4 Proc_34_17_B1AC24(, , , , , , )
  loc_B5E66B: LitI4 -1051523
  loc_B5E670: PopTmpLdAdStr var_BC
  loc_B5E673: LitI4 &HF
  loc_B5E678: PopTmpLdAdStr var_B8
  loc_B5E67B: LitI4 &HA
  loc_B5E680: FLdRfVar var_9C
  loc_B5E683: Ary1LdRf
  loc_B5E684: FLdRfVar var_A8
  loc_B5E687: FLdRfVar var_A4
  loc_B5E68A: FLdRfVar var_B0
  loc_B5E68D: FLdRfVar var_AC
  loc_B5E690: ImpAdCallFPR4 Proc_34_17_B1AC24(, , , , , , )
  loc_B5E695: LitI4 -2054922799
  loc_B5E69A: PopTmpLdAdStr var_BC
  loc_B5E69D: LitI4 &H15
  loc_B5E6A2: PopTmpLdAdStr var_B8
  loc_B5E6A5: LitI4 1
  loc_B5E6AA: FLdRfVar var_9C
  loc_B5E6AD: Ary1LdRf
  loc_B5E6AE: FLdRfVar var_A4
  loc_B5E6B1: FLdRfVar var_B0
  loc_B5E6B4: FLdRfVar var_AC
  loc_B5E6B7: FLdRfVar var_A8
  loc_B5E6BA: ImpAdCallFPR4 Proc_34_17_B1AC24(, , , , , , )
  loc_B5E6BF: LitI4 &H6FA87E4F
  loc_B5E6C4: PopTmpLdAdStr var_BC
  loc_B5E6C7: LitI4 6
  loc_B5E6CC: PopTmpLdAdStr var_B8
  loc_B5E6CF: LitI4 8
  loc_B5E6D4: FLdRfVar var_9C
  loc_B5E6D7: Ary1LdRf
  loc_B5E6D8: FLdRfVar var_B0
  loc_B5E6DB: FLdRfVar var_AC
  loc_B5E6DE: FLdRfVar var_A8
  loc_B5E6E1: FLdRfVar var_A4
  loc_B5E6E4: ImpAdCallFPR4 Proc_34_17_B1AC24(, , , , , , )
  loc_B5E6E9: LitI4 -30611744
  loc_B5E6EE: PopTmpLdAdStr var_BC
  loc_B5E6F1: LitI4 &HA
  loc_B5E6F6: PopTmpLdAdStr var_B8
  loc_B5E6F9: LitI4 &HF
  loc_B5E6FE: FLdRfVar var_9C
  loc_B5E701: Ary1LdRf
  loc_B5E702: FLdRfVar var_AC
  loc_B5E705: FLdRfVar var_A8
  loc_B5E708: FLdRfVar var_A4
  loc_B5E70B: FLdRfVar var_B0
  loc_B5E70E: ImpAdCallFPR4 Proc_34_17_B1AC24(, , , , , , )
  loc_B5E713: LitI4 -1560198380
  loc_B5E718: PopTmpLdAdStr var_BC
  loc_B5E71B: LitI4 &HF
  loc_B5E720: PopTmpLdAdStr var_B8
  loc_B5E723: LitI4 6
  loc_B5E728: FLdRfVar var_9C
  loc_B5E72B: Ary1LdRf
  loc_B5E72C: FLdRfVar var_A8
  loc_B5E72F: FLdRfVar var_A4
  loc_B5E732: FLdRfVar var_B0
  loc_B5E735: FLdRfVar var_AC
  loc_B5E738: ImpAdCallFPR4 Proc_34_17_B1AC24(, , , , , , )
  loc_B5E73D: LitI4 &H4E0811A1
  loc_B5E742: PopTmpLdAdStr var_BC
  loc_B5E745: LitI4 &H15
  loc_B5E74A: PopTmpLdAdStr var_B8
  loc_B5E74D: LitI4 &HD
  loc_B5E752: FLdRfVar var_9C
  loc_B5E755: Ary1LdRf
  loc_B5E756: FLdRfVar var_A4
  loc_B5E759: FLdRfVar var_B0
  loc_B5E75C: FLdRfVar var_AC
  loc_B5E75F: FLdRfVar var_A8
  loc_B5E762: ImpAdCallFPR4 Proc_34_17_B1AC24(, , , , , , )
  loc_B5E767: LitI4 -145523070
  loc_B5E76C: PopTmpLdAdStr var_BC
  loc_B5E76F: LitI4 6
  loc_B5E774: PopTmpLdAdStr var_B8
  loc_B5E777: LitI4 4
  loc_B5E77C: FLdRfVar var_9C
  loc_B5E77F: Ary1LdRf
  loc_B5E780: FLdRfVar var_B0
  loc_B5E783: FLdRfVar var_AC
  loc_B5E786: FLdRfVar var_A8
  loc_B5E789: FLdRfVar var_A4
  loc_B5E78C: ImpAdCallFPR4 Proc_34_17_B1AC24(, , , , , , )
  loc_B5E791: LitI4 -1120210379
  loc_B5E796: PopTmpLdAdStr var_BC
  loc_B5E799: LitI4 &HA
  loc_B5E79E: PopTmpLdAdStr var_B8
  loc_B5E7A1: LitI4 &HB
  loc_B5E7A6: FLdRfVar var_9C
  loc_B5E7A9: Ary1LdRf
  loc_B5E7AA: FLdRfVar var_AC
  loc_B5E7AD: FLdRfVar var_A8
  loc_B5E7B0: FLdRfVar var_A4
  loc_B5E7B3: FLdRfVar var_B0
  loc_B5E7B6: ImpAdCallFPR4 Proc_34_17_B1AC24(, , , , , , )
  loc_B5E7BB: LitI4 &H2AD7D2BB
  loc_B5E7C0: PopTmpLdAdStr var_BC
  loc_B5E7C3: LitI4 &HF
  loc_B5E7C8: PopTmpLdAdStr var_B8
  loc_B5E7CB: LitI4 2
  loc_B5E7D0: FLdRfVar var_9C
  loc_B5E7D3: Ary1LdRf
  loc_B5E7D4: FLdRfVar var_A8
  loc_B5E7D7: FLdRfVar var_A4
  loc_B5E7DA: FLdRfVar var_B0
  loc_B5E7DD: FLdRfVar var_AC
  loc_B5E7E0: ImpAdCallFPR4 Proc_34_17_B1AC24(, , , , , , )
  loc_B5E7E5: LitI4 -343485551
  loc_B5E7EA: PopTmpLdAdStr var_BC
  loc_B5E7ED: LitI4 &H15
  loc_B5E7F2: PopTmpLdAdStr var_B8
  loc_B5E7F5: LitI4 9
  loc_B5E7FA: FLdRfVar var_9C
  loc_B5E7FD: Ary1LdRf
  loc_B5E7FE: FLdRfVar var_A4
  loc_B5E801: FLdRfVar var_B0
  loc_B5E804: FLdRfVar var_AC
  loc_B5E807: FLdRfVar var_A8
  loc_B5E80A: ImpAdCallFPR4 Proc_34_17_B1AC24(, , , , , , )
  loc_B5E80F: FLdRfVar var_A4
  loc_B5E812: LitI4 1
  loc_B5E817: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B5E81C: Ary1LdRf
  loc_B5E81D: ImpAdCallI2 Proc_34_19_B1D8D8(, )
  loc_B5E822: LitI4 1
  loc_B5E827: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B5E82C: Ary1StI4
  loc_B5E82D: FLdRfVar var_A8
  loc_B5E830: LitI4 2
  loc_B5E835: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B5E83A: Ary1LdRf
  loc_B5E83B: ImpAdCallI2 Proc_34_19_B1D8D8(, )
  loc_B5E840: LitI4 2
  loc_B5E845: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B5E84A: Ary1StI4
  loc_B5E84B: FLdRfVar var_AC
  loc_B5E84E: LitI4 3
  loc_B5E853: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B5E858: Ary1LdRf
  loc_B5E859: ImpAdCallI2 Proc_34_19_B1D8D8(, )
  loc_B5E85E: LitI4 3
  loc_B5E863: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B5E868: Ary1StI4
  loc_B5E869: FLdRfVar var_B0
  loc_B5E86C: LitI4 4
  loc_B5E871: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B5E876: Ary1LdRf
  loc_B5E877: ImpAdCallI2 Proc_34_19_B1D8D8(, )
  loc_B5E87C: LitI4 4
  loc_B5E881: FMemLdRf  = Proc_34_7_B1E6C4()
  loc_B5E886: Ary1StI4
  loc_B5E887: ExitProc
End Function

Private Function Proc_34_13_B1E9C8(arg_C, arg_10, arg_14) 'B1E9C8
  'Data Table: 53B1C0
  loc_B1E938: LitI2_Byte 0
  loc_B1E93A: FStI2 var_86
  loc_B1E93D: LitI2_Byte 0
  loc_B1E93F: FLdRfVar var_88
  loc_B1E942: ILdI2 arg_C
  loc_B1E945: LitI2_Byte 1
  loc_B1E947: SubI2
  loc_B1E948: LitI2_Byte 4
  loc_B1E94A: ForStepI2 var_94
  loc_B1E950: FLdI2 var_88
  loc_B1E953: CI4UI1
  loc_B1E954: ILdI4 arg_14
  loc_B1E957: Ary1LdUI1
  loc_B1E959: CR8I2
  loc_B1E95A: FLdI2 var_88
  loc_B1E95D: LitI2_Byte 1
  loc_B1E95F: AddI2
  loc_B1E960: CI4UI1
  loc_B1E961: ILdI4 arg_14
  loc_B1E964: Ary1LdUI1
  loc_B1E966: CR8I2
  loc_B1E967: LitDate &H100
  loc_B1E970: MulR8
  loc_B1E971: AddR8
  loc_B1E972: FLdI2 var_88
  loc_B1E975: LitI2_Byte 2
  loc_B1E977: AddI2
  loc_B1E978: CI4UI1
  loc_B1E979: ILdI4 arg_14
  loc_B1E97C: Ary1LdUI1
  loc_B1E97E: CR8I2
  loc_B1E97F: LitDate &H10000
  loc_B1E988: MulR8
  loc_B1E989: AddR8
  loc_B1E98A: FLdI2 var_88
  loc_B1E98D: LitI2_Byte 3
  loc_B1E98F: AddI2
  loc_B1E990: CI4UI1
  loc_B1E991: ILdI4 arg_14
  loc_B1E994: Ary1LdUI1
  loc_B1E996: CR8I2
  loc_B1E997: LitDate &H1000000
  loc_B1E9A0: MulR8
  loc_B1E9A1: AddR8
  loc_B1E9A2: FStFPR8 var_90
  loc_B1E9A5: FLdR8 var_90
  loc_B1E9A8: ImpAdCallI2 Proc_34_21_B1B298(, )
  loc_B1E9AD: FLdI2 var_86
  loc_B1E9B0: CI4UI1
  loc_B1E9B1: ILdI4 arg_10
  loc_B1E9B4: Ary1StI4
  loc_B1E9B5: FLdI2 var_86
  loc_B1E9B8: LitI2_Byte 1
  loc_B1E9BA: AddI2
  loc_B1E9BB: FStI2 var_86
  loc_B1E9BE: FLdRfVar var_88
  loc_B1E9C1: NextStepI2 var_94, loc_B1E950
  loc_B1E9C6: ExitProc
End Function

Private Function Proc_34_14_B1AEC8(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) 'B1AEC8
  'Data Table: 53B1C0
  loc_B1AE84: ILdRf arg_24
  loc_B1AE87: ILdRf arg_1C
  loc_B1AE8A: ILdI4 arg_10
  loc_B1AE8D: ILdI4 arg_14
  loc_B1AE90: AndI4
  loc_B1AE91: ILdI4 arg_10
  loc_B1AE94: NotI4
  loc_B1AE95: ILdI4 arg_18
  loc_B1AE98: AndI4
  loc_B1AE99: OrI4
  loc_B1AE9A: PopTmpLdAdStr var_8C
  loc_B1AE9D: ILdRf arg_C
  loc_B1AEA0: ImpAdCallI2 Proc_34_20_B1F43C(, , , )
  loc_B1AEA5: IStI4 arg_C
  loc_B1AEA8: ILdRf arg_20
  loc_B1AEAB: ILdRf arg_C
  loc_B1AEAE: ImpAdCallI2 Proc_34_18_B1E62C(, )
  loc_B1AEB3: IStI4 arg_C
  loc_B1AEB6: ILdRf arg_10
  loc_B1AEB9: ILdRf arg_C
  loc_B1AEBC: ImpAdCallI2 Proc_34_19_B1D8D8(, )
  loc_B1AEC1: IStI4 arg_C
  loc_B1AEC4: ExitProc
  loc_B1AEC5: StAryRecCopy
End Function

Private Function Proc_34_15_B1AF3C(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) 'B1AF3C
  'Data Table: 53B1C0
  loc_B1AEF8: ILdRf arg_24
  loc_B1AEFB: ILdRf arg_1C
  loc_B1AEFE: ILdI4 arg_10
  loc_B1AF01: ILdI4 arg_18
  loc_B1AF04: AndI4
  loc_B1AF05: ILdI4 arg_14
  loc_B1AF08: ILdI4 arg_18
  loc_B1AF0B: NotI4
  loc_B1AF0C: AndI4
  loc_B1AF0D: OrI4
  loc_B1AF0E: PopTmpLdAdStr var_8C
  loc_B1AF11: ILdRf arg_C
  loc_B1AF14: ImpAdCallI2 Proc_34_20_B1F43C(, , , )
  loc_B1AF19: IStI4 arg_C
  loc_B1AF1C: ILdRf arg_20
  loc_B1AF1F: ILdRf arg_C
  loc_B1AF22: ImpAdCallI2 Proc_34_18_B1E62C(, )
  loc_B1AF27: IStI4 arg_C
  loc_B1AF2A: ILdRf arg_10
  loc_B1AF2D: ILdRf arg_C
  loc_B1AF30: ImpAdCallI2 Proc_34_19_B1D8D8(, )
  loc_B1AF35: IStI4 arg_C
  loc_B1AF38: ExitProc
  loc_B1AF39: BranchF loc_B2A3F8
End Function

Private Function Proc_34_16_B1AC94(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) 'B1AC94
  'Data Table: 53B1C0
  loc_B1AC54: ILdRf arg_24
  loc_B1AC57: ILdRf arg_1C
  loc_B1AC5A: ILdI4 arg_10
  loc_B1AC5D: ILdI4 arg_14
  loc_B1AC60: XorI4
  loc_B1AC62: ILdI4 arg_18
  loc_B1AC65: XorI4
  loc_B1AC67: PopTmpLdAdStr var_8C
  loc_B1AC6A: ILdRf arg_C
  loc_B1AC6D: ImpAdCallI2 Proc_34_20_B1F43C(, , , )
  loc_B1AC72: IStI4 arg_C
  loc_B1AC75: ILdRf arg_20
  loc_B1AC78: ILdRf arg_C
  loc_B1AC7B: ImpAdCallI2 Proc_34_18_B1E62C(, )
  loc_B1AC80: IStI4 arg_C
  loc_B1AC83: ILdRf arg_10
  loc_B1AC86: ILdRf arg_C
  loc_B1AC89: ImpAdCallI2 Proc_34_19_B1D8D8(, )
  loc_B1AC8E: IStI4 arg_C
  loc_B1AC91: ExitProc
End Function

Private Function Proc_34_17_B1AC24(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) 'B1AC24
  'Data Table: 53B1C0
  loc_B1ABE4: ILdRf arg_24
  loc_B1ABE7: ILdRf arg_1C
  loc_B1ABEA: ILdI4 arg_14
  loc_B1ABED: ILdI4 arg_10
  loc_B1ABF0: ILdI4 arg_18
  loc_B1ABF3: NotI4
  loc_B1ABF4: OrI4
  loc_B1ABF5: XorI4
  loc_B1ABF7: PopTmpLdAdStr var_8C
  loc_B1ABFA: ILdRf arg_C
  loc_B1ABFD: ImpAdCallI2 Proc_34_20_B1F43C(, , , )
  loc_B1AC02: IStI4 arg_C
  loc_B1AC05: ILdRf arg_20
  loc_B1AC08: ILdRf arg_C
  loc_B1AC0B: ImpAdCallI2 Proc_34_18_B1E62C(, )
  loc_B1AC10: IStI4 arg_C
  loc_B1AC13: ILdRf arg_10
  loc_B1AC16: ILdRf arg_C
  loc_B1AC19: ImpAdCallI2 Proc_34_19_B1D8D8(, )
  loc_B1AC1E: IStI4 arg_C
  loc_B1AC21: ExitProc
  loc_B1AC22: MemLdFPR4 global_-30720
End Function

Private Function Proc_34_18_B1E62C(arg_C, arg_10) 'B1E62C
  'Data Table: 53B1C0
  loc_B1E5A8: ILdI4 arg_10
  loc_B1E5AB: LitI4 &H20
  loc_B1E5B0: ModI4
  loc_B1E5B1: IStI4 arg_10
  loc_B1E5B4: ILdI4 arg_10
  loc_B1E5B7: LitI4 0
  loc_B1E5BC: EqI4
  loc_B1E5BD: BranchF loc_B1E5C7
  loc_B1E5C0: ILdI4 arg_C
  loc_B1E5C3: FStR4 var_88
  loc_B1E5C6: ExitProc
  loc_B1E5C7: LitI4 1
  loc_B1E5CC: FLdRfVar var_90
  loc_B1E5CF: ILdI4 arg_10
  loc_B1E5D2: ForI4 var_98
  loc_B1E5D8: ILdI4 arg_C
  loc_B1E5DB: LitI4 -1073741824
  loc_B1E5E0: AndI4
  loc_B1E5E1: FStR4 var_8C
  loc_B1E5E4: ILdI4 arg_C
  loc_B1E5E7: LitI4 &H3FFFFFFF
  loc_B1E5EC: AndI4
  loc_B1E5ED: LitI4 2
  loc_B1E5F2: MulI4
  loc_B1E5F3: IStI4 arg_C
  loc_B1E5F6: ILdI4 arg_C
  loc_B1E5F9: ILdRf var_8C
  loc_B1E5FC: LitI4 0
  loc_B1E601: LtI4
  loc_B1E602: LitI2_Byte 1
  loc_B1E604: AndI4
  loc_B1E605: CI4UI1
  loc_B1E606: OrI4
  loc_B1E607: ILdRf var_8C
  loc_B1E60A: LitI4 &H40000000
  loc_B1E60F: AndI4
  loc_B1E610: CBoolI4
  loc_B1E612: CI4UI1
  loc_B1E613: LitI4 -2147483648
  loc_B1E618: AndI4
  loc_B1E619: OrI4
  loc_B1E61A: IStI4 arg_C
  loc_B1E61D: FLdRfVar var_90
  loc_B1E620: NextI4 var_98, loc_B1E5D8
  loc_B1E625: ILdI4 arg_C
  loc_B1E628: FStR4 var_88
  loc_B1E62B: ExitProc
End Function

Private Function Proc_34_19_B1D8D8(arg_C, arg_10) 'B1D8D8
  'Data Table: 53B1C0
  loc_B1D864: ILdI4 arg_C
  loc_B1D867: LitI4 &HFFFF
  loc_B1D86C: AndI4
  loc_B1D86D: ILdI4 arg_10
  loc_B1D870: LitI4 &HFFFF
  loc_B1D875: AndI4
  loc_B1D876: AddI4
  loc_B1D877: FStR4 var_90
  loc_B1D87A: ILdRf var_90
  loc_B1D87D: LitI4 &H10000
  loc_B1D882: IDvI4
  loc_B1D883: FStR4 var_94
  loc_B1D886: ILdI4 arg_C
  loc_B1D889: LitI4 -65536
  loc_B1D88E: AndI4
  loc_B1D88F: LitI4 &H10000
  loc_B1D894: IDvI4
  loc_B1D895: ILdI4 arg_10
  loc_B1D898: LitI4 -65536
  loc_B1D89D: AndI4
  loc_B1D89E: LitI4 &H10000
  loc_B1D8A3: IDvI4
  loc_B1D8A4: AddI4
  loc_B1D8A5: ILdRf var_94
  loc_B1D8A8: AddI4
  loc_B1D8A9: LitI4 &HFFFF
  loc_B1D8AE: AndI4
  loc_B1D8AF: FStR4 var_8C
  loc_B1D8B2: ILdRf var_8C
  loc_B1D8B5: CR8I4
  loc_B1D8B6: LitDate &H10000
  loc_B1D8BF: MulR8
  loc_B1D8C0: ILdRf var_90
  loc_B1D8C3: LitI4 &HFFFF
  loc_B1D8C8: AndI4
  loc_B1D8C9: CR8I4
  loc_B1D8CA: AddR8
  loc_B1D8CB: PopFPR8
  loc_B1D8CC: ImpAdCallI2 Proc_34_21_B1B298(, )
  loc_B1D8D1: FStR4 var_88
  loc_B1D8D4: ExitProc
End Function

Private Function Proc_34_20_B1F43C(arg_C, arg_10, arg_14, arg_18) 'B1F43C
  'Data Table: 53B1C0
  loc_B1F394: ILdI4 arg_C
  loc_B1F397: LitI4 &HFFFF
  loc_B1F39C: AndI4
  loc_B1F39D: ILdI4 arg_10
  loc_B1F3A0: LitI4 &HFFFF
  loc_B1F3A5: AndI4
  loc_B1F3A6: AddI4
  loc_B1F3A7: ILdI4 arg_14
  loc_B1F3AA: LitI4 &HFFFF
  loc_B1F3AF: AndI4
  loc_B1F3B0: AddI4
  loc_B1F3B1: ILdI4 arg_18
  loc_B1F3B4: LitI4 &HFFFF
  loc_B1F3B9: AndI4
  loc_B1F3BA: AddI4
  loc_B1F3BB: FStR4 var_90
  loc_B1F3BE: ILdRf var_90
  loc_B1F3C1: LitI4 &H10000
  loc_B1F3C6: IDvI4
  loc_B1F3C7: FStR4 var_94
  loc_B1F3CA: ILdI4 arg_C
  loc_B1F3CD: LitI4 -65536
  loc_B1F3D2: AndI4
  loc_B1F3D3: LitI4 &H10000
  loc_B1F3D8: IDvI4
  loc_B1F3D9: ILdI4 arg_10
  loc_B1F3DC: LitI4 -65536
  loc_B1F3E1: AndI4
  loc_B1F3E2: LitI4 &H10000
  loc_B1F3E7: IDvI4
  loc_B1F3E8: AddI4
  loc_B1F3E9: ILdI4 arg_14
  loc_B1F3EC: LitI4 -65536
  loc_B1F3F1: AndI4
  loc_B1F3F2: LitI4 &H10000
  loc_B1F3F7: IDvI4
  loc_B1F3F8: AddI4
  loc_B1F3F9: ILdI4 arg_18
  loc_B1F3FC: LitI4 -65536
  loc_B1F401: AndI4
  loc_B1F402: LitI4 &H10000
  loc_B1F407: IDvI4
  loc_B1F408: AddI4
  loc_B1F409: ILdRf var_94
  loc_B1F40C: AddI4
  loc_B1F40D: LitI4 &HFFFF
  loc_B1F412: AndI4
  loc_B1F413: FStR4 var_8C
  loc_B1F416: ILdRf var_8C
  loc_B1F419: CR8I4
  loc_B1F41A: LitDate &H10000
  loc_B1F423: MulR8
  loc_B1F424: ILdRf var_90
  loc_B1F427: LitI4 &HFFFF
  loc_B1F42C: AndI4
  loc_B1F42D: CR8I4
  loc_B1F42E: AddR8
  loc_B1F42F: PopFPR8
  loc_B1F430: ImpAdCallI2 Proc_34_21_B1B298(, )
  loc_B1F435: FStR4 var_88
  loc_B1F438: ExitProc
End Function

Private Function Proc_34_21_B1B298(arg_C) 'B1B298
  'Data Table: 53B1C0
  loc_B1B24C: FLdFPR8 arg_C
  loc_B1B24F: LitI2_Byte 0
  loc_B1B251: CR8I2
  loc_B1B252: LtR8
  loc_B1B253: FLdFPR8 arg_C
  loc_B1B256: LitDate &H100000000
  loc_B1B25F: GeR8
  loc_B1B260: OrI4
  loc_B1B261: BranchF loc_B1B26D
  loc_B1B264: LitI4 6
  loc_B1B269: Error
  loc_B1B26A: Branch loc_B1B295
  loc_B1B26D: FLdFPR8 arg_C
  loc_B1B270: LitI4 &H7FFFFFFF
  loc_B1B275: CR8I4
  loc_B1B276: LeR8
  loc_B1B277: BranchF loc_B1B284
  loc_B1B27A: FLdFPR8 arg_C
  loc_B1B27D: CI4R8
  loc_B1B27E: FStR4 var_88
  loc_B1B281: Branch loc_B1B295
  loc_B1B284: FLdFPR8 arg_C
  loc_B1B287: LitDate &H100000000
  loc_B1B290: SubR4
  loc_B1B291: CI4R8
  loc_B1B292: FStR4 var_88
  loc_B1B295: ExitProc
End Function

Private Function Proc_34_22_B1A33C(arg_C) 'B1A33C
  'Data Table: 53B1C0
  loc_B1A314: ILdRf arg_C
  loc_B1A317: LitI4 0
  loc_B1A31C: LtI4
  loc_B1A31D: BranchF loc_B1A334
  loc_B1A320: ILdRf arg_C
  loc_B1A323: CR8I4
  loc_B1A324: LitDate &H100000000
  loc_B1A32D: AddR8
  loc_B1A32E: FStFPR8 var_8C
  loc_B1A331: Branch loc_B1A33B
  loc_B1A334: ILdRf arg_C
  loc_B1A337: CR8I4
  loc_B1A338: FStFPR8 var_8C
  loc_B1A33B: ExitProcR8
End Function

Private Function Proc_34_23_B2B674(arg_C, arg_10, arg_14) 'B2B674
  'Data Table: 53B1C0
  loc_B2B45C: ILdRf arg_C
  loc_B2B45F: FStStrCopy var_8C
  loc_B2B462: ILdI4 arg_10
  loc_B2B465: CStr2Vec
  loc_B2B469: FLdRfVar var_B0
  loc_B2B46C: FLdRfVar var_9C
  loc_B2B46F: StAryMove
  loc_B2B471: ILdRf var_8C
  loc_B2B474: FnLenStr
  loc_B2B475: FStR4 var_94
  loc_B2B478: LitI4 0
  loc_B2B47D: ILdRf var_94
  loc_B2B480: LitI4 1
  loc_B2B485: SubI4
  loc_B2B486: FLdRfVar var_A0
  loc_B2B489: Redim
  loc_B2B493: LitI4 0
  loc_B2B498: ILdRf var_94
  loc_B2B49B: LitI4 1
  loc_B2B4A0: SubI4
  loc_B2B4A1: FLdRfVar var_A4
  loc_B2B4A4: Redim
  loc_B2B4AE: LitI2_Byte 0
  loc_B2B4B0: FLdRfVar var_8E
  loc_B2B4B3: ILdRf var_94
  loc_B2B4B6: LitI4 1
  loc_B2B4BB: SubI4
  loc_B2B4BC: CI2I4
  loc_B2B4BD: ForI2 var_B4
  loc_B2B4C3: LitVarI2 var_D4, 1
  loc_B2B4C8: FLdI2 var_8E
  loc_B2B4CB: LitI2_Byte 1
  loc_B2B4CD: AddI2
  loc_B2B4CE: CI4UI1
  loc_B2B4CF: ILdRf var_8C
  loc_B2B4D2: ImpAdCallI2 Mid$(, , )
  loc_B2B4D7: FStStrNoPop var_D8
  loc_B2B4DA: ImpAdCallI2 Asc()
  loc_B2B4DF: CUI1I2
  loc_B2B4E1: FLdI2 var_8E
  loc_B2B4E4: CI4UI1
  loc_B2B4E5: ILdRf var_A0
  loc_B2B4E8: Ary1StUI1
  loc_B2B4EA: FFree1Str var_D8
  loc_B2B4ED: FFree1Var var_D4 = ""
  loc_B2B4F0: FLdI2 var_8E
  loc_B2B4F3: CI4UI1
  loc_B2B4F4: ILdRf var_A0
  loc_B2B4F7: Ary1LdUI1
  loc_B2B4F9: CR8I2
  loc_B2B4FA: LitI2_Byte 2
  loc_B2B4FC: CR8I2
  loc_B2B4FD: DivR8
  loc_B2B4FE: CUI1R4
  loc_B2B500: FLdI2 var_8E
  loc_B2B503: CI4UI1
  loc_B2B504: ILdRf var_A4
  loc_B2B507: Ary1StUI1
  loc_B2B509: ILdRf var_AC
  loc_B2B50C: FLdI2 var_8E
  loc_B2B50F: CI4UI1
  loc_B2B510: ILdRf var_A0
  loc_B2B513: Ary1LdUI1
  loc_B2B515: CI4UI1
  loc_B2B516: AddI4
  loc_B2B517: FStR4 var_AC
  loc_B2B51A: FLdRfVar var_8E
  loc_B2B51D: NextI2 var_B4, loc_B2B4C3
  loc_B2B522: ILdRf var_AC
  loc_B2B525: CR8I4
  loc_B2B526: ILdRf var_94
  loc_B2B529: CR8I4
  loc_B2B52A: DivR8
  loc_B2B52B: CI4R8
  loc_B2B52C: FStR4 var_AC
  loc_B2B52F: LitI2_Byte 0
  loc_B2B531: FLdRfVar var_8E
  loc_B2B534: ILdRf var_94
  loc_B2B537: LitI4 1
  loc_B2B53C: SubI4
  loc_B2B53D: CI2I4
  loc_B2B53E: ForI2 var_DC
  loc_B2B544: FLdI2 var_8E
  loc_B2B547: CI4UI1
  loc_B2B548: ILdRf var_A0
  loc_B2B54B: Ary1LdUI1
  loc_B2B54D: CI4UI1
  loc_B2B54E: ILdRf var_AC
  loc_B2B551: AddI4
  loc_B2B552: CR8I4
  loc_B2B553: LitI2_Byte 2
  loc_B2B555: CR8I2
  loc_B2B556: DivR8
  loc_B2B557: CUI1R4
  loc_B2B559: FLdI2 var_8E
  loc_B2B55C: CI4UI1
  loc_B2B55D: ILdRf var_A0
  loc_B2B560: Ary1StUI1
  loc_B2B562: FLdRfVar var_8E
  loc_B2B565: NextI2 var_DC, loc_B2B544
  loc_B2B56A: LitI2_Byte 0
  loc_B2B56C: FLdRfVar var_8E
  loc_B2B56F: ILdRf var_9C
  loc_B2B572: LitI2_Byte 1
  loc_B2B574: FnUBound
  loc_B2B576: CI2I4
  loc_B2B577: ForI2 var_E0
  loc_B2B57D: FLdI2 var_8E
  loc_B2B580: CI4UI1
  loc_B2B581: ILdRf var_94
  loc_B2B584: ModI4
  loc_B2B585: FStR4 var_98
  loc_B2B588: FLdI2 var_8E
  loc_B2B58B: CI4UI1
  loc_B2B58C: ILdRf var_9C
  loc_B2B58F: Ary1LdUI1
  loc_B2B591: CI4UI1
  loc_B2B592: FStR4 var_A8
  loc_B2B595: FLdI2 arg_14
  loc_B2B598: BranchF loc_B2B5AC
  loc_B2B59B: ILdRf var_A8
  loc_B2B59E: ILdRf var_98
  loc_B2B5A1: ILdRf var_A0
  loc_B2B5A4: Ary1LdUI1
  loc_B2B5A6: CI4UI1
  loc_B2B5A7: XorI4
  loc_B2B5A9: FStR4 var_A8
  loc_B2B5AC: ILdRf var_A8
  loc_B2B5AF: LitI4 &H30
  loc_B2B5B4: GeI4
  loc_B2B5B5: ILdRf var_A8
  loc_B2B5B8: LitI4 &H96
  loc_B2B5BD: LeI4
  loc_B2B5BE: AndI4
  loc_B2B5BF: BranchF loc_B2B636
  loc_B2B5C2: FLdI2 arg_14
  loc_B2B5C5: BranchF loc_B2B5DB
  loc_B2B5C8: ILdRf var_A8
  loc_B2B5CB: ILdRf var_98
  loc_B2B5CE: ILdRf var_A4
  loc_B2B5D1: Ary1LdUI1
  loc_B2B5D3: CI4UI1
  loc_B2B5D4: AddI4
  loc_B2B5D5: FStR4 var_A8
  loc_B2B5D8: Branch loc_B2B5EB
  loc_B2B5DB: ILdRf var_A8
  loc_B2B5DE: ILdRf var_98
  loc_B2B5E1: ILdRf var_A4
  loc_B2B5E4: Ary1LdUI1
  loc_B2B5E6: CI4UI1
  loc_B2B5E7: SubI4
  loc_B2B5E8: FStR4 var_A8
  loc_B2B5EB: ILdRf var_A8
  loc_B2B5EE: LitI4 &H96
  loc_B2B5F3: GtI4
  loc_B2B5F4: BranchF loc_B2B612
  loc_B2B5F7: ILdRf var_A8
  loc_B2B5FA: LitI4 &H96
  loc_B2B5FF: SubI4
  loc_B2B600: LitI4 &H30
  loc_B2B605: AddI4
  loc_B2B606: LitI4 1
  loc_B2B60B: SubI4
  loc_B2B60C: FStR4 var_A8
  loc_B2B60F: Branch loc_B2B636
  loc_B2B612: ILdRf var_A8
  loc_B2B615: LitI4 &H30
  loc_B2B61A: LtI4
  loc_B2B61B: BranchF loc_B2B636
  loc_B2B61E: ILdRf var_A8
  loc_B2B621: LitI4 &H96
  loc_B2B626: AddI4
  loc_B2B627: LitI4 &H30
  loc_B2B62C: SubI4
  loc_B2B62D: LitI4 1
  loc_B2B632: AddI4
  loc_B2B633: FStR4 var_A8
  loc_B2B636: FLdI2 arg_14
  loc_B2B639: NotI4
  loc_B2B63A: BranchF loc_B2B64E
  loc_B2B63D: ILdRf var_A8
  loc_B2B640: ILdRf var_98
  loc_B2B643: ILdRf var_A0
  loc_B2B646: Ary1LdUI1
  loc_B2B648: CI4UI1
  loc_B2B649: XorI4
  loc_B2B64B: FStR4 var_A8
  loc_B2B64E: ILdRf var_A8
  loc_B2B651: CUI1I4
  loc_B2B653: FLdI2 var_8E
  loc_B2B656: CI4UI1
  loc_B2B657: ILdRf var_9C
  loc_B2B65A: Ary1StUI1
  loc_B2B65C: FLdRfVar var_8E
  loc_B2B65F: NextI2 var_E0, loc_B2B57D
  loc_B2B664: ILdRf var_9C
  loc_B2B667: CVarRef
  loc_B2B66C: CStrVar
  loc_B2B66E: FStStr var_88
  loc_B2B671: ExitProc
  loc_B2B672: Ary1StI4
End Function

Private Function Proc_34_24_B24D98(arg_C) 'B24D98
  'Data Table: 53B1C0
  loc_B24C54: LitI2_Byte 1
  loc_B24C56: FLdRfVar var_8E
  loc_B24C59: ILdI4 arg_C
  loc_B24C5C: FnLenStr
  loc_B24C5D: CI2I4
  loc_B24C5E: ForI2 var_98
  loc_B24C64: LitVarI2 var_B8, 1
  loc_B24C69: FLdI2 var_8E
  loc_B24C6C: CI4UI1
  loc_B24C6D: ILdI4 arg_C
  loc_B24C70: ImpAdCallI2 Mid$(, , )
  loc_B24C75: FStStrNoPop var_BC
  loc_B24C78: ImpAdCallI2 Asc()
  loc_B24C7D: FStI2 var_BE
  loc_B24C80: FFree1Str var_BC
  loc_B24C83: FFree1Var var_B8 = ""
  loc_B24C86: FLdI2 var_BE
  loc_B24C89: LitI2_Byte &H30
  loc_B24C8B: LitI2_Byte &H39
  loc_B24C8D: BetweenI2
  loc_B24C8F: BranchT loc_B24CAA
  loc_B24C92: FLdI2 var_BE
  loc_B24C95: LitI2_Byte &H41
  loc_B24C97: LitI2_Byte &H5A
  loc_B24C99: BetweenI2
  loc_B24C9B: BranchT loc_B24CAA
  loc_B24C9E: FLdI2 var_BE
  loc_B24CA1: LitI2_Byte &H61
  loc_B24CA3: LitI2_Byte &H7A
  loc_B24CA5: BetweenI2
  loc_B24CA7: BranchF loc_B24CCE
  loc_B24CAA: ILdRf var_8C
  loc_B24CAD: LitVarI2 var_B8, 1
  loc_B24CB2: FLdI2 var_8E
  loc_B24CB5: CI4UI1
  loc_B24CB6: ILdI4 arg_C
  loc_B24CB9: ImpAdCallI2 Mid$(, , )
  loc_B24CBE: FStStrNoPop var_BC
  loc_B24CC1: ConcatStr
  loc_B24CC2: FStStr var_8C
  loc_B24CC5: FFree1Str var_BC
  loc_B24CC8: FFree1Var var_B8 = ""
  loc_B24CCB: Branch loc_B24D86
  loc_B24CCE: FLdI2 var_BE
  loc_B24CD1: LitI2_Byte &H20
  loc_B24CD3: EqI2
  loc_B24CD4: BranchF loc_B24CFF
  loc_B24CD7: ILdRf var_8C
  loc_B24CDA: LitStr Chr(37)
  loc_B24CDD: ConcatStr
  loc_B24CDE: FStStrNoPop var_BC
  loc_B24CE1: LitVarI2 var_B8, 32
  loc_B24CE6: ImpAdCallI2 Hex$()
  loc_B24CEB: FStStrNoPop var_C4
  loc_B24CEE: ConcatStr
  loc_B24CEF: FStStr var_8C
  loc_B24CF2: FFreeStr var_BC = ""
  loc_B24CF9: FFree1Var var_B8 = ""
  loc_B24CFC: Branch loc_B24D86
  loc_B24CFF: LitVarI2 var_B8, 1
  loc_B24D04: FLdI2 var_8E
  loc_B24D07: CI4UI1
  loc_B24D08: ILdRf arg_C
  loc_B24D0B: CVarRef
  loc_B24D10: FLdRfVar var_E4
  loc_B24D13: ImpAdCallFPR4  = Mid(, , )
  loc_B24D18: FLdRfVar var_E4
  loc_B24D1B: LitVarStr var_F4, ":"
  loc_B24D20: HardType
  loc_B24D21: EqVarBool
  loc_B24D23: FFreeVar var_B8 = ""
  loc_B24D2A: BranchF loc_B24D2D
  loc_B24D2D: LitVarI2 var_B8, 1
  loc_B24D32: FLdI2 var_8E
  loc_B24D35: CI4UI1
  loc_B24D36: ILdI4 arg_C
  loc_B24D39: ImpAdCallI2 Mid$(, , )
  loc_B24D3E: FStStrNoPop var_BC
  loc_B24D41: ImpAdCallI2 Asc()
  loc_B24D46: CVarI2 var_E4
  loc_B24D49: ImpAdCallI2 Hex$()
  loc_B24D4E: FStStr var_94
  loc_B24D51: FFree1Str var_BC
  loc_B24D54: FFreeVar var_B8 = ""
  loc_B24D5B: ILdRf var_94
  loc_B24D5E: FnLenStr
  loc_B24D5F: LitI4 1
  loc_B24D64: EqI4
  loc_B24D65: BranchF loc_B24D72
  loc_B24D68: LitStr "0"
  loc_B24D6B: ILdRf var_94
  loc_B24D6E: ConcatStr
  loc_B24D6F: FStStr var_94
  loc_B24D72: ILdRf var_8C
  loc_B24D75: LitStr Chr(37)
  loc_B24D78: ConcatStr
  loc_B24D79: FStStrNoPop var_BC
  loc_B24D7C: ILdRf var_94
  loc_B24D7F: ConcatStr
  loc_B24D80: FStStr var_8C
  loc_B24D83: FFree1Str var_BC
  loc_B24D86: FLdRfVar var_8E
  loc_B24D89: NextI2 var_98, loc_B24C64
  loc_B24D8E: ILdRf var_8C
  loc_B24D91: FStStrCopy var_88
  loc_B24D94: ExitProc
End Function

Private Function Proc_34_25_B22884(arg_C) 'B22884
  'Data Table: 53B1C0
  loc_B2279C: LitI2_Byte 1
  loc_B2279E: FStI2 var_8E
  loc_B227A1: FLdI2 var_8E
  loc_B227A4: LitI2_Byte 1
  loc_B227A6: SubI2
  loc_B227A7: CI4UI1
  loc_B227A8: ILdI4 arg_C
  loc_B227AB: FnLenStr
  loc_B227AC: NeI4
  loc_B227AD: BranchF loc_B2287D
  loc_B227B0: LitVarI2 var_C0, 1
  loc_B227B5: FLdI2 var_8E
  loc_B227B8: CI4UI1
  loc_B227B9: ILdRf arg_C
  loc_B227BC: CVarRef
  loc_B227C1: FLdRfVar var_D0
  loc_B227C4: ImpAdCallFPR4  = Mid(, , )
  loc_B227C9: FLdRfVar var_D0
  loc_B227CC: FStVar var_E0
  loc_B227D0: FFree1Var var_C0 = ""
  loc_B227D3: FLdRfVar var_E0
  loc_B227D6: LitVarStr var_A0, Chr(37)
  loc_B227DB: HardType
  loc_B227DC: EqVarBool
  loc_B227DE: BranchF loc_B2283E
  loc_B227E1: ILdRf var_8C
  loc_B227E4: LitVarStr var_F0, "&H"
  loc_B227E9: LitVarI2 var_C0, 2
  loc_B227EE: FLdI2 var_8E
  loc_B227F1: LitI2_Byte 1
  loc_B227F3: AddI2
  loc_B227F4: CI4UI1
  loc_B227F5: ILdRf arg_C
  loc_B227F8: CVarRef
  loc_B227FD: FLdRfVar var_D0
  loc_B22800: ImpAdCallFPR4  = Mid(, , )
  loc_B22805: FLdRfVar var_D0
  loc_B22808: ConcatVar var_100
  loc_B2280C: CStrVarVal var_104
  loc_B22810: ImpAdCallFPR4 push push Val()
  loc_B22815: CI4R8
  loc_B22816: ImpAdCallI2 Chr$()
  loc_B2281B: FStStrNoPop var_108
  loc_B2281E: ConcatStr
  loc_B2281F: FStStr var_8C
  loc_B22822: FFreeStr var_104 = ""
  loc_B22829: FFreeVar var_C0 = "": var_D0 = ""
  loc_B22832: FLdI2 var_8E
  loc_B22835: LitI2_Byte 3
  loc_B22837: AddI2
  loc_B22838: FStI2 var_8E
  loc_B2283B: Branch loc_B2287A
  loc_B2283E: ILdRf var_8C
  loc_B22841: CVarStr var_F0
  loc_B22844: LitVarI2 var_C0, 1
  loc_B22849: FLdI2 var_8E
  loc_B2284C: CI4UI1
  loc_B2284D: ILdRf arg_C
  loc_B22850: CVarRef
  loc_B22855: FLdRfVar var_D0
  loc_B22858: ImpAdCallFPR4  = Mid(, , )
  loc_B2285D: FLdRfVar var_D0
  loc_B22860: ConcatVar var_100
  loc_B22864: CStrVarTmp
  loc_B22865: FStStr var_8C
  loc_B22868: FFreeVar var_C0 = "": var_D0 = ""
  loc_B22871: FLdI2 var_8E
  loc_B22874: LitI2_Byte 1
  loc_B22876: AddI2
  loc_B22877: FStI2 var_8E
  loc_B2287A: Branch loc_B227A1
  loc_B2287D: ILdRf var_8C
  loc_B22880: FStStrCopy var_88
  loc_B22883: ExitProc
End Function

Private Function Proc_34_26_B1F190(arg_C) 'B1F190
  'Data Table: 53B1C0
  loc_B1F118: LitI2_Byte 0
  loc_B1F11A: FStI2 var_92
  loc_B1F11D: ILdI4 arg_C
  loc_B1F120: CStr2Vec
  loc_B1F124: FLdRfVar var_9C
  loc_B1F127: FLdRfVar var_8C
  loc_B1F12A: StAryMove
  loc_B1F12C: LitI2_Byte 0
  loc_B1F12E: FLdRfVar var_92
  loc_B1F131: ILdRf var_8C
  loc_B1F134: LitI2_Byte 1
  loc_B1F136: FnUBound
  loc_B1F138: CI2I4
  loc_B1F139: ForI2 var_A0
  loc_B1F13F: FLdI2 var_92
  loc_B1F142: CI4UI1
  loc_B1F143: ILdRf var_8C
  loc_B1F146: AryLock
  loc_B1F149: Ary1LdRf
  loc_B1F14A: CVarRef
  loc_B1F14F: ImpAdCallI2 Hex$()
  loc_B1F154: FStStr var_B8
  loc_B1F157: AryUnlock
  loc_B1F15A: FLdZeroAd var_B8
  loc_B1F15D: FStStr var_98
  loc_B1F160: ILdRf var_98
  loc_B1F163: FnLenStr
  loc_B1F164: LitI4 1
  loc_B1F169: EqI4
  loc_B1F16A: BranchF loc_B1F177
  loc_B1F16D: LitStr "0"
  loc_B1F170: ILdRf var_98
  loc_B1F173: ConcatStr
  loc_B1F174: FStStr var_98
  loc_B1F177: ILdRf var_90
  loc_B1F17A: ILdRf var_98
  loc_B1F17D: ConcatStr
  loc_B1F17E: FStStr var_90
  loc_B1F181: FLdRfVar var_92
  loc_B1F184: NextI2 var_A0, loc_B1F13F
  loc_B1F189: ILdRf var_90
  loc_B1F18C: FStStrCopy var_88
  loc_B1F18F: ExitProc
End Function

Private Function Proc_34_27_B1F4F8(arg_C) 'B1F4F8
  'Data Table: 53B1C0
  loc_B1F46C: LitI4 0
  loc_B1F471: ILdI4 arg_C
  loc_B1F474: FnLenStr
  loc_B1F475: CR8I4
  loc_B1F476: LitI2_Byte 2
  loc_B1F478: CR8I2
  loc_B1F479: DivR8
  loc_B1F47A: LitI2_Byte 1
  loc_B1F47C: CR8I2
  loc_B1F47D: SubR4
  loc_B1F47E: CI4R8
  loc_B1F47F: FLdRfVar var_8C
  loc_B1F482: Redim
  loc_B1F48C: LitI2_Byte 0
  loc_B1F48E: FLdRfVar var_8E
  loc_B1F491: ILdRf var_8C
  loc_B1F494: LitI2_Byte 1
  loc_B1F496: FnUBound
  loc_B1F498: CI2I4
  loc_B1F499: ForI2 var_92
  loc_B1F49F: LitVarStr var_E4, "&H"
  loc_B1F4A4: LitVarI2 var_C4, 2
  loc_B1F4A9: FLdI2 var_8E
  loc_B1F4AC: LitI2_Byte 2
  loc_B1F4AE: MulI2
  loc_B1F4AF: LitI2_Byte 1
  loc_B1F4B1: AddI2
  loc_B1F4B2: CI4UI1
  loc_B1F4B3: ILdRf arg_C
  loc_B1F4B6: CVarRef
  loc_B1F4BB: FLdRfVar var_D4
  loc_B1F4BE: ImpAdCallFPR4  = Mid(, , )
  loc_B1F4C3: FLdRfVar var_D4
  loc_B1F4C6: ConcatVar var_F4
  loc_B1F4CA: FnCLngVar
  loc_B1F4CC: CUI1I4
  loc_B1F4CE: FLdI2 var_8E
  loc_B1F4D1: CI4UI1
  loc_B1F4D2: ILdRf var_8C
  loc_B1F4D5: Ary1StUI1
  loc_B1F4D7: FFreeVar var_C4 = "": var_D4 = "": var_F4 = ""
  loc_B1F4E2: FLdRfVar var_8E
  loc_B1F4E5: NextI2 var_92, loc_B1F49F
  loc_B1F4EA: ILdRf var_8C
  loc_B1F4ED: CVarRef
  loc_B1F4F2: CStrVar
  loc_B1F4F4: FStStr var_88
  loc_B1F4F7: ExitProc
End Function
