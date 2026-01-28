
Private Function Proc_28_0_B22034() 'B22034
  'Data Table: 53ACF4
  loc_B21F6C: On Error Resume Next
  loc_B21F71: FLdRfVar var_9C
  loc_B21F74: FLdRfVar var_98
  loc_B21F77: ImpAdLdRf MemVar_C10514
  loc_B21F7A: NewIfNullPr Global
  loc_B21F7D:  = Global.App
  loc_B21F82: FLdPr var_98
  loc_B21F85:  = App.Path
  loc_B21F8A: LitI4 0
  loc_B21F8F: LitI4 -1
  loc_B21F94: LitI4 1
  loc_B21F99: LitStr "\"
  loc_B21F9C: LitStr "\\"
  loc_B21F9F: ILdRf var_9C
  loc_B21FA2: LitStr "\database\"
  loc_B21FA5: ConcatStr
  loc_B21FA6: FStStrNoPop var_A0
  loc_B21FA9: ImpAdCallI2 Replace(, , , , , )
  loc_B21FAE: ImpAdStStr MemVar_C0F044
  loc_B21FB2: FFreeStr var_9C = ""
  loc_B21FB9: FFree1Ad var_98
  loc_B21FBE: LitI4 1
  loc_B21FC3: LitI4 0
  loc_B21FC8: FStStrCopy var_F4
  loc_B21FCB: FLdRfVar var_F4
  loc_B21FCE: ImpAdLdI4 MemVar_C0F044
  loc_B21FD1: LitStr "ranks\"
  loc_B21FD4: ConcatStr
  loc_B21FD5: FStStrNoPop var_9C
  loc_B21FD8: FLdRfVar var_B0
  loc_B21FDB: CI4Var
  loc_B21FDD: ImpAdLdI4 MemVar_C0F100
  loc_B21FE0: Ary1LdPr
  loc_B21FE1: MemLdStr global_208
  loc_B21FE4: ConcatStr
  loc_B21FE5: FStStrNoPop var_A0
  loc_B21FE8: LitStr ".ini"
  loc_B21FEB: ConcatStr
  loc_B21FEC: CVarStr var_F0
  loc_B21FEF: LitVarStr var_D0, "speech_cmd"
  loc_B21FF4: FStVarCopyObj var_E0
  loc_B21FF7: FLdRfVar var_E0
  loc_B21FFA: LitVarStr var_C0, "rank"
  loc_B21FFF: PopAdLdVar
  loc_B22000: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B22005: FStStrNoPop var_F8
  loc_B22008: LitStr ",hotelalert"
  loc_B2200B: LitI4 0
  loc_B22010: FnInStr4
  loc_B22012: CVarI4
  loc_B22016: FStVar var_108
  loc_B2201A: FFreeStr var_9C = "": var_A0 = "": var_F4 = ""
  loc_B22025: FFreeVar var_E0 = ""
  loc_B2202E: ExitProcCb
End Function

Private Function Proc_28_1_B21DEC() 'B21DEC
  'Data Table: 53ACF4
  loc_B21D24: On Error Resume Next
  loc_B21D29: FLdRfVar var_9C
  loc_B21D2C: FLdRfVar var_98
  loc_B21D2F: ImpAdLdRf MemVar_C10514
  loc_B21D32: NewIfNullPr Global
  loc_B21D35:  = Global.App
  loc_B21D3A: FLdPr var_98
  loc_B21D3D:  = App.Path
  loc_B21D42: LitI4 0
  loc_B21D47: LitI4 -1
  loc_B21D4C: LitI4 1
  loc_B21D51: LitStr "\"
  loc_B21D54: LitStr "\\"
  loc_B21D57: ILdRf var_9C
  loc_B21D5A: LitStr "\database\"
  loc_B21D5D: ConcatStr
  loc_B21D5E: FStStrNoPop var_A0
  loc_B21D61: ImpAdCallI2 Replace(, , , , , )
  loc_B21D66: ImpAdStStr MemVar_C0F044
  loc_B21D6A: FFreeStr var_9C = ""
  loc_B21D71: FFree1Ad var_98
  loc_B21D76: LitI4 1
  loc_B21D7B: LitI4 0
  loc_B21D80: FStStrCopy var_F4
  loc_B21D83: FLdRfVar var_F4
  loc_B21D86: ImpAdLdI4 MemVar_C0F044
  loc_B21D89: LitStr "ranks\"
  loc_B21D8C: ConcatStr
  loc_B21D8D: FStStrNoPop var_9C
  loc_B21D90: FLdRfVar var_B0
  loc_B21D93: CI4Var
  loc_B21D95: ImpAdLdI4 MemVar_C0F100
  loc_B21D98: Ary1LdPr
  loc_B21D99: MemLdStr global_208
  loc_B21D9C: ConcatStr
  loc_B21D9D: FStStrNoPop var_A0
  loc_B21DA0: LitStr ".ini"
  loc_B21DA3: ConcatStr
  loc_B21DA4: CVarStr var_F0
  loc_B21DA7: LitVarStr var_D0, "speech_cmd"
  loc_B21DAC: FStVarCopyObj var_E0
  loc_B21DAF: FLdRfVar var_E0
  loc_B21DB2: LitVarStr var_C0, "rank"
  loc_B21DB7: PopAdLdVar
  loc_B21DB8: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B21DBD: FStStrNoPop var_F8
  loc_B21DC0: LitStr ",alert"
  loc_B21DC3: LitI4 0
  loc_B21DC8: FnInStr4
  loc_B21DCA: CVarI4
  loc_B21DCE: FStVar var_108
  loc_B21DD2: FFreeStr var_9C = "": var_A0 = "": var_F4 = ""
  loc_B21DDD: FFreeVar var_E0 = ""
  loc_B21DE6: ExitProcCb
End Function

Private Function Proc_28_2_B21CC8() 'B21CC8
  'Data Table: 53ACF4
  loc_B21C00: On Error Resume Next
  loc_B21C05: FLdRfVar var_9C
  loc_B21C08: FLdRfVar var_98
  loc_B21C0B: ImpAdLdRf MemVar_C10514
  loc_B21C0E: NewIfNullPr Global
  loc_B21C11:  = Global.App
  loc_B21C16: FLdPr var_98
  loc_B21C19:  = App.Path
  loc_B21C1E: LitI4 0
  loc_B21C23: LitI4 -1
  loc_B21C28: LitI4 1
  loc_B21C2D: LitStr "\"
  loc_B21C30: LitStr "\\"
  loc_B21C33: ILdRf var_9C
  loc_B21C36: LitStr "\database\"
  loc_B21C39: ConcatStr
  loc_B21C3A: FStStrNoPop var_A0
  loc_B21C3D: ImpAdCallI2 Replace(, , , , , )
  loc_B21C42: ImpAdStStr MemVar_C0F044
  loc_B21C46: FFreeStr var_9C = ""
  loc_B21C4D: FFree1Ad var_98
  loc_B21C52: LitI4 1
  loc_B21C57: LitI4 0
  loc_B21C5C: FStStrCopy var_F4
  loc_B21C5F: FLdRfVar var_F4
  loc_B21C62: ImpAdLdI4 MemVar_C0F044
  loc_B21C65: LitStr "ranks\"
  loc_B21C68: ConcatStr
  loc_B21C69: FStStrNoPop var_9C
  loc_B21C6C: FLdRfVar var_B0
  loc_B21C6F: CI4Var
  loc_B21C71: ImpAdLdI4 MemVar_C0F100
  loc_B21C74: Ary1LdPr
  loc_B21C75: MemLdStr global_208
  loc_B21C78: ConcatStr
  loc_B21C79: FStStrNoPop var_A0
  loc_B21C7C: LitStr ".ini"
  loc_B21C7F: ConcatStr
  loc_B21C80: CVarStr var_F0
  loc_B21C83: LitVarStr var_D0, "speech_cmd"
  loc_B21C88: FStVarCopyObj var_E0
  loc_B21C8B: FLdRfVar var_E0
  loc_B21C8E: LitVarStr var_C0, "rank"
  loc_B21C93: PopAdLdVar
  loc_B21C94: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B21C99: FStStrNoPop var_F8
  loc_B21C9C: LitStr ",ban"
  loc_B21C9F: LitI4 0
  loc_B21CA4: FnInStr4
  loc_B21CA6: CVarI4
  loc_B21CAA: FStVar var_108
  loc_B21CAE: FFreeStr var_9C = "": var_A0 = "": var_F4 = ""
  loc_B21CB9: FFreeVar var_E0 = ""
  loc_B21CC2: ExitProcCb
End Function

Private Function Proc_28_3_B21BA4() 'B21BA4
  'Data Table: 53ACF4
  loc_B21ADC: On Error Resume Next
  loc_B21AE1: FLdRfVar var_9C
  loc_B21AE4: FLdRfVar var_98
  loc_B21AE7: ImpAdLdRf MemVar_C10514
  loc_B21AEA: NewIfNullPr Global
  loc_B21AED:  = Global.App
  loc_B21AF2: FLdPr var_98
  loc_B21AF5:  = App.Path
  loc_B21AFA: LitI4 0
  loc_B21AFF: LitI4 -1
  loc_B21B04: LitI4 1
  loc_B21B09: LitStr "\"
  loc_B21B0C: LitStr "\\"
  loc_B21B0F: ILdRf var_9C
  loc_B21B12: LitStr "\database\"
  loc_B21B15: ConcatStr
  loc_B21B16: FStStrNoPop var_A0
  loc_B21B19: ImpAdCallI2 Replace(, , , , , )
  loc_B21B1E: ImpAdStStr MemVar_C0F044
  loc_B21B22: FFreeStr var_9C = ""
  loc_B21B29: FFree1Ad var_98
  loc_B21B2E: LitI4 1
  loc_B21B33: LitI4 0
  loc_B21B38: FStStrCopy var_F4
  loc_B21B3B: FLdRfVar var_F4
  loc_B21B3E: ImpAdLdI4 MemVar_C0F044
  loc_B21B41: LitStr "ranks\"
  loc_B21B44: ConcatStr
  loc_B21B45: FStStrNoPop var_9C
  loc_B21B48: FLdRfVar var_B0
  loc_B21B4B: CI4Var
  loc_B21B4D: ImpAdLdI4 MemVar_C0F100
  loc_B21B50: Ary1LdPr
  loc_B21B51: MemLdStr global_208
  loc_B21B54: ConcatStr
  loc_B21B55: FStStrNoPop var_A0
  loc_B21B58: LitStr ".ini"
  loc_B21B5B: ConcatStr
  loc_B21B5C: CVarStr var_F0
  loc_B21B5F: LitVarStr var_D0, "speech_cmd"
  loc_B21B64: FStVarCopyObj var_E0
  loc_B21B67: FLdRfVar var_E0
  loc_B21B6A: LitVarStr var_C0, "rank"
  loc_B21B6F: PopAdLdVar
  loc_B21B70: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B21B75: FStStrNoPop var_F8
  loc_B21B78: LitStr ",warp"
  loc_B21B7B: LitI4 0
  loc_B21B80: FnInStr4
  loc_B21B82: CVarI4
  loc_B21B86: FStVar var_108
  loc_B21B8A: FFreeStr var_9C = "": var_A0 = "": var_F4 = ""
  loc_B21B95: FFreeVar var_E0 = ""
  loc_B21B9E: ExitProcCb
End Function

Private Function Proc_28_4_B21F10() 'B21F10
  'Data Table: 53ACF4
  loc_B21E48: On Error Resume Next
  loc_B21E4D: FLdRfVar var_9C
  loc_B21E50: FLdRfVar var_98
  loc_B21E53: ImpAdLdRf MemVar_C10514
  loc_B21E56: NewIfNullPr Global
  loc_B21E59:  = Global.App
  loc_B21E5E: FLdPr var_98
  loc_B21E61:  = App.Path
  loc_B21E66: LitI4 0
  loc_B21E6B: LitI4 -1
  loc_B21E70: LitI4 1
  loc_B21E75: LitStr "\"
  loc_B21E78: LitStr "\\"
  loc_B21E7B: ILdRf var_9C
  loc_B21E7E: LitStr "\database\"
  loc_B21E81: ConcatStr
  loc_B21E82: FStStrNoPop var_A0
  loc_B21E85: ImpAdCallI2 Replace(, , , , , )
  loc_B21E8A: ImpAdStStr MemVar_C0F044
  loc_B21E8E: FFreeStr var_9C = ""
  loc_B21E95: FFree1Ad var_98
  loc_B21E9A: LitI4 1
  loc_B21E9F: LitI4 0
  loc_B21EA4: FStStrCopy var_F4
  loc_B21EA7: FLdRfVar var_F4
  loc_B21EAA: ImpAdLdI4 MemVar_C0F044
  loc_B21EAD: LitStr "ranks\"
  loc_B21EB0: ConcatStr
  loc_B21EB1: FStStrNoPop var_9C
  loc_B21EB4: FLdRfVar var_B0
  loc_B21EB7: CI4Var
  loc_B21EB9: ImpAdLdI4 MemVar_C0F100
  loc_B21EBC: Ary1LdPr
  loc_B21EBD: MemLdStr global_208
  loc_B21EC0: ConcatStr
  loc_B21EC1: FStStrNoPop var_A0
  loc_B21EC4: LitStr ".ini"
  loc_B21EC7: ConcatStr
  loc_B21EC8: CVarStr var_F0
  loc_B21ECB: LitVarStr var_D0, "speech_cmd"
  loc_B21ED0: FStVarCopyObj var_E0
  loc_B21ED3: FLdRfVar var_E0
  loc_B21ED6: LitVarStr var_C0, "rank"
  loc_B21EDB: PopAdLdVar
  loc_B21EDC: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B21EE1: FStStrNoPop var_F8
  loc_B21EE4: LitStr ",warp"
  loc_B21EE7: LitI4 0
  loc_B21EEC: FnInStr4
  loc_B21EEE: CVarI4
  loc_B21EF2: FStVar var_108
  loc_B21EF6: FFreeStr var_9C = "": var_A0 = "": var_F4 = ""
  loc_B21F01: FFreeVar var_E0 = ""
  loc_B21F0A: ExitProcCb
End Function

Private Function Proc_28_5_B3A758(arg_14) 'B3A758
  'Data Table: 53ACF4
  loc_B3A30C: On Error Resume Next
  loc_B3A311: LitVarI2 var_B4, 0
  loc_B3A316: FStVar var_A4
  loc_B3A31C: LitVarStr var_B4, vbNullString
  loc_B3A321: FStVarCopy
  loc_B3A327: LitVarStr var_B4, vbNullString
  loc_B3A32C: FStVarCopy
  loc_B3A332: LitVarI2 var_B4, 0
  loc_B3A337: FStVar var_E4
  loc_B3A33D: LitVarStr var_B4, vbNullString
  loc_B3A342: FStVarCopy
  loc_B3A348: LitVarI2 var_128, 1
  loc_B3A34D: FLdRfVar var_104
  loc_B3A350: FLdRfVar var_108
  loc_B3A353: ImpAdLdRf MemVar_C0F018
  loc_B3A356: NewIfNullPr frmMain
  loc_B3A359: from_stack_1v = frmMain.SockIGet()
  loc_B3A35E: ILdRf var_108
  loc_B3A361: CVarI4
  loc_B3A365: ForVar var_148
  loc_B3A36D: FLdRfVar var_150
  loc_B3A370: FLdRfVar var_104
  loc_B3A373: CI2Var
  loc_B3A374: ImpAdLdRf MemVar_C0F018
  loc_B3A377: NewIfNullPr frmMain
  loc_B3A37A: VCallAd Control_ID_
  loc_B3A37D: FStAdFunc var_14C
  loc_B3A380: FLdPr var_14C
  loc_B3A383: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3A388: FLdPr var_150
  loc_B3A38B: LateIdLdVar var_160 DispID_8 0
  loc_B3A392: CI2Var
  loc_B3A393: CI4UI1
  loc_B3A394: LitI4 7
  loc_B3A399: EqI4
  loc_B3A39A: FLdRfVar var_104
  loc_B3A39D: CI4Var
  loc_B3A39F: ImpAdLdI4 MemVar_C0F100
  loc_B3A3A2: Ary1LdPr
  loc_B3A3A3: MemLdStr global_204
  loc_B3A3A6: LitStr vbNullString
  loc_B3A3A9: NeStr
  loc_B3A3AB: AndI4
  loc_B3A3AC: FFreeAd var_14C = ""
  loc_B3A3B3: FFree1Var var_160 = ""
  loc_B3A3B6: BranchF loc_B3A695
  loc_B3A3BB: LitI4 1
  loc_B3A3C0: FLdRfVar var_F4
  loc_B3A3C3: FLdRfVar var_150
  loc_B3A3C6: FLdRfVar var_104
  loc_B3A3C9: CI2Var
  loc_B3A3CA: ImpAdLdRf MemVar_C0F018
  loc_B3A3CD: NewIfNullPr frmMain
  loc_B3A3D0: VCallAd Control_ID_
  loc_B3A3D3: FStAdFunc var_14C
  loc_B3A3D6: FLdPr var_14C
  loc_B3A3D9: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3A3DE: FLdPr var_150
  loc_B3A3E1: LateIdLdVar var_160 DispID_4 0
  loc_B3A3E8: CStrVarTmp
  loc_B3A3E9: CVarStr var_170
  loc_B3A3EC: LitI4 0
  loc_B3A3F1: FnInStr4Var
  loc_B3A3F5: CBoolVarNull
  loc_B3A3F7: FFreeAd var_14C = ""
  loc_B3A3FE: FFreeVar var_160 = "": var_170 = ""
  loc_B3A407: BranchF loc_B3A40F
  loc_B3A40C: Branch loc_B3A697
  loc_B3A411: FLdRfVar var_E4
  loc_B3A414: LitVarI2 var_B4, 30
  loc_B3A419: HardType
  loc_B3A41A: LeVarBool
  loc_B3A41C: BranchF loc_B3A469
  loc_B3A421: FLdRfVar var_C4
  loc_B3A424: LitVarStr var_B4, "<br>Name: "
  loc_B3A429: ConcatVar var_160
  loc_B3A42D: FLdRfVar var_104
  loc_B3A430: CI4Var
  loc_B3A432: ImpAdLdI4 MemVar_C0F100
  loc_B3A435: Ary1LdPr
  loc_B3A436: MemLdStr global_204
  loc_B3A439: CVarStr var_118
  loc_B3A43C: ConcatVar var_170
  loc_B3A440: LitVarStr var_128, "  Rank: "
  loc_B3A445: ConcatVar var_180
  loc_B3A449: FLdRfVar var_104
  loc_B3A44C: CI4Var
  loc_B3A44E: ImpAdLdI4 MemVar_C0F100
  loc_B3A451: Ary1LdPr
  loc_B3A452: MemLdStr global_208
  loc_B3A455: CVarStr var_190
  loc_B3A458: ConcatVar var_1A0
  loc_B3A45C: FStVar var_C4
  loc_B3A460: FFreeVar var_160 = "": var_170 = ""
  loc_B3A46B: FLdRfVar var_E4
  loc_B3A46E: LitVarI2 var_B4, 1
  loc_B3A473: AddVar var_160
  loc_B3A477: FStVar var_E4
  loc_B3A47D: LitVarI2 var_128, 1
  loc_B3A482: FLdRfVar var_1B0
  loc_B3A485: FLdRfVar var_108
  loc_B3A488: ImpAdLdRf MemVar_C0F018
  loc_B3A48B: NewIfNullPr frmMain
  loc_B3A48E: from_stack_1v = frmMain.SockIGet()
  loc_B3A493: ILdRf var_108
  loc_B3A496: CVarI4
  loc_B3A49A: ForVar var_1D0
  loc_B3A4A2: FLdRfVar var_150
  loc_B3A4A5: FLdRfVar var_104
  loc_B3A4A8: CI2Var
  loc_B3A4A9: ImpAdLdRf MemVar_C0F018
  loc_B3A4AC: NewIfNullPr frmMain
  loc_B3A4AF: VCallAd Control_ID_
  loc_B3A4B2: FStAdFunc var_14C
  loc_B3A4B5: FLdPr var_14C
  loc_B3A4B8: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3A4BD: FLdPr var_150
  loc_B3A4C0: LateIdLdVar var_160 DispID_4 0
  loc_B3A4C7: CStrVarTmp
  loc_B3A4C8: FStStrNoPop var_1DC
  loc_B3A4CB: FLdRfVar var_1D8
  loc_B3A4CE: FLdRfVar var_1B0
  loc_B3A4D1: CI2Var
  loc_B3A4D2: ImpAdLdRf MemVar_C0F018
  loc_B3A4D5: NewIfNullPr frmMain
  loc_B3A4D8: VCallAd Control_ID_
  loc_B3A4DB: FStAdFunc var_1D4
  loc_B3A4DE: FLdPr var_1D4
  loc_B3A4E1: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3A4E6: FLdPr var_1D8
  loc_B3A4E9: LateIdLdVar var_170 DispID_4 0
  loc_B3A4F0: CStrVarTmp
  loc_B3A4F1: FStStrNoPop var_1E0
  loc_B3A4F4: EqStr
  loc_B3A4F6: CVarBoolI2 var_B4
  loc_B3A4FA: FLdRfVar var_104
  loc_B3A4FD: FLdRfVar var_1B0
  loc_B3A500: NeVar var_180
  loc_B3A504: AndVar var_1A0
  loc_B3A508: FLdRfVar var_1E8
  loc_B3A50B: FLdRfVar var_1B0
  loc_B3A50E: CI2Var
  loc_B3A50F: ImpAdLdRf MemVar_C0F018
  loc_B3A512: NewIfNullPr frmMain
  loc_B3A515: VCallAd Control_ID_
  loc_B3A518: FStAdFunc var_1E4
  loc_B3A51B: FLdPr var_1E4
  loc_B3A51E: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3A523: FLdPr var_1E8
  loc_B3A526: LateIdLdVar var_1F8 DispID_8 0
  loc_B3A52D: CI2Var
  loc_B3A52E: CI4UI1
  loc_B3A52F: LitI4 7
  loc_B3A534: EqI4
  loc_B3A535: CVarBoolI2 var_118
  loc_B3A539: AndVar var_208
  loc_B3A53D: FLdRfVar var_1B0
  loc_B3A540: CI4Var
  loc_B3A542: ImpAdLdI4 MemVar_C0F100
  loc_B3A545: Ary1LdPr
  loc_B3A546: MemLdStr global_204
  loc_B3A549: LitStr vbNullString
  loc_B3A54C: NeStr
  loc_B3A54E: CVarBoolI2 var_128
  loc_B3A552: AndVar var_218
  loc_B3A556: CBoolVarNull
  loc_B3A558: FFreeStr var_1DC = ""
  loc_B3A55F: FFreeAd var_14C = "": var_150 = "": var_1D4 = "": var_1D8 = "": var_1E4 = ""
  loc_B3A56E: FFreeVar var_160 = "": var_170 = "": var_B4 = "": var_1F8 = "": var_118 = ""
  loc_B3A57D: BranchF loc_B3A639
  loc_B3A582: FLdRfVar var_E4
  loc_B3A585: LitVarI2 var_B4, 30
  loc_B3A58A: HardType
  loc_B3A58B: LeVarBool
  loc_B3A58D: BranchF loc_B3A5DD
  loc_B3A592: FLdRfVar var_C4
  loc_B3A595: LitVarStr var_B4, "<br>Name: "
  loc_B3A59A: ConcatVar var_160
  loc_B3A59E: FLdRfVar var_1B0
  loc_B3A5A1: CI4Var
  loc_B3A5A3: ImpAdLdI4 MemVar_C0F100
  loc_B3A5A6: Ary1LdPr
  loc_B3A5A7: MemLdStr global_204
  loc_B3A5AA: CVarStr var_118
  loc_B3A5AD: ConcatVar var_170
  loc_B3A5B1: LitVarStr var_128, "  Rank: "
  loc_B3A5B6: ConcatVar var_180
  loc_B3A5BA: FLdRfVar var_104
  loc_B3A5BD: CI4Var
  loc_B3A5BF: ImpAdLdI4 MemVar_C0F100
  loc_B3A5C2: Ary1LdPr
  loc_B3A5C3: MemLdStr global_208
  loc_B3A5C6: CVarStr var_190
  loc_B3A5C9: ConcatVar var_1A0
  loc_B3A5CD: FStVar var_C4
  loc_B3A5D1: FFreeVar var_160 = "": var_170 = ""
  loc_B3A5DA: Branch loc_B3A627
  loc_B3A5DF: FLdRfVar var_D4
  loc_B3A5E2: LitVarStr var_B4, "<br>Name: "
  loc_B3A5E7: ConcatVar var_160
  loc_B3A5EB: FLdRfVar var_1B0
  loc_B3A5EE: CI4Var
  loc_B3A5F0: ImpAdLdI4 MemVar_C0F100
  loc_B3A5F3: Ary1LdPr
  loc_B3A5F4: MemLdStr global_204
  loc_B3A5F7: CVarStr var_118
  loc_B3A5FA: ConcatVar var_170
  loc_B3A5FE: LitVarStr var_128, "  Rank: "
  loc_B3A603: ConcatVar var_180
  loc_B3A607: FLdRfVar var_104
  loc_B3A60A: CI4Var
  loc_B3A60C: ImpAdLdI4 MemVar_C0F100
  loc_B3A60F: Ary1LdPr
  loc_B3A610: MemLdStr global_208
  loc_B3A613: CVarStr var_190
  loc_B3A616: ConcatVar var_1A0
  loc_B3A61A: FStVar var_D4
  loc_B3A61E: FFreeVar var_160 = "": var_170 = ""
  loc_B3A629: FLdRfVar var_E4
  loc_B3A62C: LitVarI2 var_B4, 1
  loc_B3A631: AddVar var_160
  loc_B3A635: FStVar var_E4
  loc_B3A63D: FLdRfVar var_1B0
  loc_B3A640: NextStepVar var_1D0
  loc_B3A648: FLdRfVar var_F4
  loc_B3A64B: FLdRfVar var_150
  loc_B3A64E: FLdRfVar var_104
  loc_B3A651: CI2Var
  loc_B3A652: ImpAdLdRf MemVar_C0F018
  loc_B3A655: NewIfNullPr frmMain
  loc_B3A658: VCallAd Control_ID_
  loc_B3A65B: FStAdFunc var_14C
  loc_B3A65E: FLdPr var_14C
  loc_B3A661: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3A666: FLdPr var_150
  loc_B3A669: LateIdLdVar var_160 DispID_4 0
  loc_B3A670: CStrVarTmp
  loc_B3A671: CVarStr var_170
  loc_B3A674: ConcatVar var_180
  loc_B3A678: LitVarStr var_B4, ","
  loc_B3A67D: ConcatVar var_1A0
  loc_B3A681: FStVar var_F4
  loc_B3A685: FFreeAd var_14C = ""
  loc_B3A68C: FFreeVar var_160 = "": var_170 = ""
  loc_B3A699: FLdRfVar var_104
  loc_B3A69C: NextStepVar var_148
  loc_B3A6A4: LitVarStr var_B4, "BK"
  loc_B3A6A9: FLdRfVar var_E4
  loc_B3A6AC: ConcatVar var_160
  loc_B3A6B0: LitVarStr var_118, " HabLogs online:"
  loc_B3A6B5: ConcatVar var_170
  loc_B3A6B9: FLdRfVar var_C4
  loc_B3A6BC: ConcatVar var_180
  loc_B3A6C0: LitI4 1
  loc_B3A6C5: FLdRfVar var_1A0
  loc_B3A6C8: ImpAdCallFPR4  = Chr()
  loc_B3A6CD: FLdRfVar var_1A0
  loc_B3A6D0: ConcatVar var_1F8
  loc_B3A6D4: CStrVarVal var_1DC
  loc_B3A6D8: ILdI2 arg_14
  loc_B3A6DB: FLdRfVar var_208
  loc_B3A6DE: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_B3A6E3: FFree1Str var_1DC
  loc_B3A6E6: FFreeVar var_160 = "": var_170 = "": var_180 = "": var_1A0 = "": var_1F8 = ""
  loc_B3A6F7: FLdRfVar var_E4
  loc_B3A6FA: LitVarI2 var_B4, 30
  loc_B3A6FF: HardType
  loc_B3A700: GtVarBool
  loc_B3A702: BranchF loc_B3A744
  loc_B3A707: LitVarStr var_B4, "BK"
  loc_B3A70C: FLdRfVar var_D4
  loc_B3A70F: ConcatVar var_160
  loc_B3A713: LitI4 1
  loc_B3A718: FLdRfVar var_170
  loc_B3A71B: ImpAdCallFPR4  = Chr()
  loc_B3A720: FLdRfVar var_170
  loc_B3A723: ConcatVar var_180
  loc_B3A727: CStrVarVal var_1DC
  loc_B3A72B: ILdI2 arg_14
  loc_B3A72E: FLdRfVar var_1A0
  loc_B3A731: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_B3A736: FFree1Str var_1DC
  loc_B3A739: FFreeVar var_160 = "": var_170 = "": var_180 = ""
  loc_B3A746: LitVarI2 var_B4, 0
  loc_B3A74B: FStVar var_A4
  loc_B3A751: ExitProcCb
End Function

Private Function Proc_28_6_B3EDD4(arg_14) 'B3EDD4
  'Data Table: 53ACF4
  loc_B3E8BC: On Error Resume Next
  loc_B3E8C1: LitVarI2 var_B4, 0
  loc_B3E8C6: FStVar var_A4
  loc_B3E8CC: LitVarStr var_B4, vbNullString
  loc_B3E8D1: FStVarCopy
  loc_B3E8D7: LitVarStr var_B4, vbNullString
  loc_B3E8DC: FStVarCopy
  loc_B3E8E2: LitVarI2 var_B4, 0
  loc_B3E8E7: FStVar var_E4
  loc_B3E8ED: LitVarStr var_B4, vbNullString
  loc_B3E8F2: FStVarCopy
  loc_B3E8F8: LitVarI2 var_128, 1
  loc_B3E8FD: FLdRfVar var_104
  loc_B3E900: FLdRfVar var_108
  loc_B3E903: ImpAdLdRf MemVar_C0F018
  loc_B3E906: NewIfNullPr frmMain
  loc_B3E909: from_stack_1v = frmMain.SockIGet()
  loc_B3E90E: ILdRf var_108
  loc_B3E911: CVarI4
  loc_B3E915: ForVar var_148
  loc_B3E91D: FLdRfVar var_150
  loc_B3E920: FLdRfVar var_104
  loc_B3E923: CI2Var
  loc_B3E924: ImpAdLdRf MemVar_C0F018
  loc_B3E927: NewIfNullPr frmMain
  loc_B3E92A: VCallAd Control_ID_
  loc_B3E92D: FStAdFunc var_14C
  loc_B3E930: FLdPr var_14C
  loc_B3E933: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3E938: FLdPr var_150
  loc_B3E93B: LateIdLdVar var_160 DispID_8 0
  loc_B3E942: CI2Var
  loc_B3E943: CI4UI1
  loc_B3E944: LitI4 7
  loc_B3E949: EqI4
  loc_B3E94A: FLdRfVar var_104
  loc_B3E94D: CI4Var
  loc_B3E94F: ImpAdLdI4 MemVar_C0F100
  loc_B3E952: Ary1LdPr
  loc_B3E953: MemLdStr global_204
  loc_B3E956: LitStr vbNullString
  loc_B3E959: NeStr
  loc_B3E95B: AndI4
  loc_B3E95C: FFreeAd var_14C = ""
  loc_B3E963: FFree1Var var_160 = ""
  loc_B3E966: BranchF loc_B3ED14
  loc_B3E96B: LitI4 1
  loc_B3E970: FLdRfVar var_F4
  loc_B3E973: FLdRfVar var_150
  loc_B3E976: FLdRfVar var_104
  loc_B3E979: CI2Var
  loc_B3E97A: ImpAdLdRf MemVar_C0F018
  loc_B3E97D: NewIfNullPr frmMain
  loc_B3E980: VCallAd Control_ID_
  loc_B3E983: FStAdFunc var_14C
  loc_B3E986: FLdPr var_14C
  loc_B3E989: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3E98E: FLdPr var_150
  loc_B3E991: LateIdLdVar var_160 DispID_4 0
  loc_B3E998: CStrVarTmp
  loc_B3E999: CVarStr var_170
  loc_B3E99C: LitI4 0
  loc_B3E9A1: FnInStr4Var
  loc_B3E9A5: CBoolVarNull
  loc_B3E9A7: FFreeAd var_14C = ""
  loc_B3E9AE: FFreeVar var_160 = "": var_170 = ""
  loc_B3E9B7: BranchF loc_B3E9BF
  loc_B3E9BC: Branch loc_B3ED16
  loc_B3E9C1: FLdRfVar var_E4
  loc_B3E9C4: LitVarI2 var_B4, 30
  loc_B3E9C9: HardType
  loc_B3E9CA: LeVarBool
  loc_B3E9CC: BranchF loc_B3EA5E
  loc_B3E9D1: FLdRfVar var_C4
  loc_B3E9D4: LitVarStr var_B4, "<br>Name: "
  loc_B3E9D9: ConcatVar var_160
  loc_B3E9DD: FLdRfVar var_104
  loc_B3E9E0: CI4Var
  loc_B3E9E2: ImpAdLdI4 MemVar_C0F100
  loc_B3E9E5: Ary1LdPr
  loc_B3E9E6: MemLdStr global_204
  loc_B3E9E9: CVarStr var_118
  loc_B3E9EC: ConcatVar var_170
  loc_B3E9F0: LitVarStr var_128, "  IP: "
  loc_B3E9F5: ConcatVar var_180
  loc_B3E9F9: FLdRfVar var_150
  loc_B3E9FC: FLdRfVar var_104
  loc_B3E9FF: CI2Var
  loc_B3EA00: ImpAdLdRf MemVar_C0F018
  loc_B3EA03: NewIfNullPr frmMain
  loc_B3EA06: VCallAd Control_ID_
  loc_B3EA09: FStAdFunc var_14C
  loc_B3EA0C: FLdPr var_14C
  loc_B3EA0F: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3EA14: FLdPr var_150
  loc_B3EA17: LateIdLdVar var_190 DispID_4 0
  loc_B3EA1E: CStrVarTmp
  loc_B3EA1F: CVarStr var_1A0
  loc_B3EA22: ConcatVar var_1B0
  loc_B3EA26: LitVarStr var_1C0, "  Rank: "
  loc_B3EA2B: ConcatVar var_1D0
  loc_B3EA2F: FLdRfVar var_104
  loc_B3EA32: CI4Var
  loc_B3EA34: ImpAdLdI4 MemVar_C0F100
  loc_B3EA37: Ary1LdPr
  loc_B3EA38: MemLdStr global_208
  loc_B3EA3B: CVarStr var_1E0
  loc_B3EA3E: ConcatVar var_1F0
  loc_B3EA42: FStVar var_C4
  loc_B3EA46: FFreeAd var_14C = ""
  loc_B3EA4D: FFreeVar var_160 = "": var_170 = "": var_190 = "": var_180 = "": var_1A0 = "": var_1B0 = ""
  loc_B3EA60: FLdRfVar var_E4
  loc_B3EA63: LitVarI2 var_B4, 1
  loc_B3EA68: AddVar var_160
  loc_B3EA6C: FStVar var_E4
  loc_B3EA72: LitVarI2 var_128, 1
  loc_B3EA77: FLdRfVar var_200
  loc_B3EA7A: FLdRfVar var_108
  loc_B3EA7D: ImpAdLdRf MemVar_C0F018
  loc_B3EA80: NewIfNullPr frmMain
  loc_B3EA83: from_stack_1v = frmMain.SockIGet()
  loc_B3EA88: ILdRf var_108
  loc_B3EA8B: CVarI4
  loc_B3EA8F: ForVar var_220
  loc_B3EA97: FLdRfVar var_150
  loc_B3EA9A: FLdRfVar var_104
  loc_B3EA9D: CI2Var
  loc_B3EA9E: ImpAdLdRf MemVar_C0F018
  loc_B3EAA1: NewIfNullPr frmMain
  loc_B3EAA4: VCallAd Control_ID_
  loc_B3EAA7: FStAdFunc var_14C
  loc_B3EAAA: FLdPr var_14C
  loc_B3EAAD: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3EAB2: FLdPr var_150
  loc_B3EAB5: LateIdLdVar var_160 DispID_4 0
  loc_B3EABC: CStrVarTmp
  loc_B3EABD: FStStrNoPop var_22C
  loc_B3EAC0: FLdRfVar var_228
  loc_B3EAC3: FLdRfVar var_200
  loc_B3EAC6: CI2Var
  loc_B3EAC7: ImpAdLdRf MemVar_C0F018
  loc_B3EACA: NewIfNullPr frmMain
  loc_B3EACD: VCallAd Control_ID_
  loc_B3EAD0: FStAdFunc var_224
  loc_B3EAD3: FLdPr var_224
  loc_B3EAD6: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3EADB: FLdPr var_228
  loc_B3EADE: LateIdLdVar var_170 DispID_4 0
  loc_B3EAE5: CStrVarTmp
  loc_B3EAE6: FStStrNoPop var_230
  loc_B3EAE9: EqStr
  loc_B3EAEB: CVarBoolI2 var_B4
  loc_B3EAEF: FLdRfVar var_104
  loc_B3EAF2: FLdRfVar var_200
  loc_B3EAF5: NeVar var_180
  loc_B3EAF9: AndVar var_190
  loc_B3EAFD: FLdRfVar var_238
  loc_B3EB00: FLdRfVar var_200
  loc_B3EB03: CI2Var
  loc_B3EB04: ImpAdLdRf MemVar_C0F018
  loc_B3EB07: NewIfNullPr frmMain
  loc_B3EB0A: VCallAd Control_ID_
  loc_B3EB0D: FStAdFunc var_234
  loc_B3EB10: FLdPr var_234
  loc_B3EB13: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3EB18: FLdPr var_238
  loc_B3EB1B: LateIdLdVar var_1A0 DispID_8 0
  loc_B3EB22: CI2Var
  loc_B3EB23: CI4UI1
  loc_B3EB24: LitI4 7
  loc_B3EB29: EqI4
  loc_B3EB2A: CVarBoolI2 var_118
  loc_B3EB2E: AndVar var_1B0
  loc_B3EB32: FLdRfVar var_200
  loc_B3EB35: CI4Var
  loc_B3EB37: ImpAdLdI4 MemVar_C0F100
  loc_B3EB3A: Ary1LdPr
  loc_B3EB3B: MemLdStr global_204
  loc_B3EB3E: LitStr vbNullString
  loc_B3EB41: NeStr
  loc_B3EB43: CVarBoolI2 var_128
  loc_B3EB47: AndVar var_1D0
  loc_B3EB4B: CBoolVarNull
  loc_B3EB4D: FFreeStr var_22C = ""
  loc_B3EB54: FFreeAd var_14C = "": var_150 = "": var_224 = "": var_228 = "": var_234 = ""
  loc_B3EB63: FFreeVar var_160 = "": var_170 = "": var_B4 = "": var_1A0 = "": var_118 = ""
  loc_B3EB72: BranchF loc_B3ECB8
  loc_B3EB77: FLdRfVar var_E4
  loc_B3EB7A: LitVarI2 var_B4, 30
  loc_B3EB7F: HardType
  loc_B3EB80: LeVarBool
  loc_B3EB82: BranchF loc_B3EC17
  loc_B3EB87: FLdRfVar var_C4
  loc_B3EB8A: LitVarStr var_B4, "<br>Name: "
  loc_B3EB8F: ConcatVar var_160
  loc_B3EB93: FLdRfVar var_200
  loc_B3EB96: CI4Var
  loc_B3EB98: ImpAdLdI4 MemVar_C0F100
  loc_B3EB9B: Ary1LdPr
  loc_B3EB9C: MemLdStr global_204
  loc_B3EB9F: CVarStr var_118
  loc_B3EBA2: ConcatVar var_170
  loc_B3EBA6: LitVarStr var_128, "  IP: "
  loc_B3EBAB: ConcatVar var_180
  loc_B3EBAF: FLdRfVar var_150
  loc_B3EBB2: FLdRfVar var_200
  loc_B3EBB5: CI2Var
  loc_B3EBB6: ImpAdLdRf MemVar_C0F018
  loc_B3EBB9: NewIfNullPr frmMain
  loc_B3EBBC: VCallAd Control_ID_
  loc_B3EBBF: FStAdFunc var_14C
  loc_B3EBC2: FLdPr var_14C
  loc_B3EBC5: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3EBCA: FLdPr var_150
  loc_B3EBCD: LateIdLdVar var_190 DispID_4 0
  loc_B3EBD4: CStrVarTmp
  loc_B3EBD5: CVarStr var_1A0
  loc_B3EBD8: ConcatVar var_1B0
  loc_B3EBDC: LitVarStr var_1C0, "  Rank: "
  loc_B3EBE1: ConcatVar var_1D0
  loc_B3EBE5: FLdRfVar var_104
  loc_B3EBE8: CI4Var
  loc_B3EBEA: ImpAdLdI4 MemVar_C0F100
  loc_B3EBED: Ary1LdPr
  loc_B3EBEE: MemLdStr global_208
  loc_B3EBF1: CVarStr var_1E0
  loc_B3EBF4: ConcatVar var_1F0
  loc_B3EBF8: FStVar var_C4
  loc_B3EBFC: FFreeAd var_14C = ""
  loc_B3EC03: FFreeVar var_160 = "": var_170 = "": var_190 = "": var_180 = "": var_1A0 = "": var_1B0 = ""
  loc_B3EC14: Branch loc_B3ECA6
  loc_B3EC19: FLdRfVar var_D4
  loc_B3EC1C: LitVarStr var_B4, "<br>Name: "
  loc_B3EC21: ConcatVar var_160
  loc_B3EC25: FLdRfVar var_200
  loc_B3EC28: CI4Var
  loc_B3EC2A: ImpAdLdI4 MemVar_C0F100
  loc_B3EC2D: Ary1LdPr
  loc_B3EC2E: MemLdStr global_204
  loc_B3EC31: CVarStr var_118
  loc_B3EC34: ConcatVar var_170
  loc_B3EC38: LitVarStr var_128, "  IP: "
  loc_B3EC3D: ConcatVar var_180
  loc_B3EC41: FLdRfVar var_150
  loc_B3EC44: FLdRfVar var_200
  loc_B3EC47: CI2Var
  loc_B3EC48: ImpAdLdRf MemVar_C0F018
  loc_B3EC4B: NewIfNullPr frmMain
  loc_B3EC4E: VCallAd Control_ID_
  loc_B3EC51: FStAdFunc var_14C
  loc_B3EC54: FLdPr var_14C
  loc_B3EC57: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3EC5C: FLdPr var_150
  loc_B3EC5F: LateIdLdVar var_190 DispID_4 0
  loc_B3EC66: CStrVarTmp
  loc_B3EC67: CVarStr var_1A0
  loc_B3EC6A: ConcatVar var_1B0
  loc_B3EC6E: LitVarStr var_1C0, "  Rank: "
  loc_B3EC73: ConcatVar var_1D0
  loc_B3EC77: FLdRfVar var_104
  loc_B3EC7A: CI4Var
  loc_B3EC7C: ImpAdLdI4 MemVar_C0F100
  loc_B3EC7F: Ary1LdPr
  loc_B3EC80: MemLdStr global_208
  loc_B3EC83: CVarStr var_1E0
  loc_B3EC86: ConcatVar var_1F0
  loc_B3EC8A: FStVar var_D4
  loc_B3EC8E: FFreeAd var_14C = ""
  loc_B3EC95: FFreeVar var_160 = "": var_170 = "": var_190 = "": var_180 = "": var_1A0 = "": var_1B0 = ""
  loc_B3ECA8: FLdRfVar var_E4
  loc_B3ECAB: LitVarI2 var_B4, 1
  loc_B3ECB0: AddVar var_160
  loc_B3ECB4: FStVar var_E4
  loc_B3ECBC: FLdRfVar var_200
  loc_B3ECBF: NextStepVar var_220
  loc_B3ECC7: FLdRfVar var_F4
  loc_B3ECCA: FLdRfVar var_150
  loc_B3ECCD: FLdRfVar var_104
  loc_B3ECD0: CI2Var
  loc_B3ECD1: ImpAdLdRf MemVar_C0F018
  loc_B3ECD4: NewIfNullPr frmMain
  loc_B3ECD7: VCallAd Control_ID_
  loc_B3ECDA: FStAdFunc var_14C
  loc_B3ECDD: FLdPr var_14C
  loc_B3ECE0: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3ECE5: FLdPr var_150
  loc_B3ECE8: LateIdLdVar var_160 DispID_4 0
  loc_B3ECEF: CStrVarTmp
  loc_B3ECF0: CVarStr var_170
  loc_B3ECF3: ConcatVar var_180
  loc_B3ECF7: LitVarStr var_B4, ","
  loc_B3ECFC: ConcatVar var_190
  loc_B3ED00: FStVar var_F4
  loc_B3ED04: FFreeAd var_14C = ""
  loc_B3ED0B: FFreeVar var_160 = "": var_170 = ""
  loc_B3ED18: FLdRfVar var_104
  loc_B3ED1B: NextStepVar var_148
  loc_B3ED23: LitVarStr var_B4, "BK"
  loc_B3ED28: FLdRfVar var_E4
  loc_B3ED2B: ConcatVar var_160
  loc_B3ED2F: LitVarStr var_118, " HabLogs online:"
  loc_B3ED34: ConcatVar var_170
  loc_B3ED38: FLdRfVar var_C4
  loc_B3ED3B: ConcatVar var_180
  loc_B3ED3F: LitI4 1
  loc_B3ED44: FLdRfVar var_190
  loc_B3ED47: ImpAdCallFPR4  = Chr()
  loc_B3ED4C: FLdRfVar var_190
  loc_B3ED4F: ConcatVar var_1A0
  loc_B3ED53: CStrVarVal var_22C
  loc_B3ED57: ILdI2 arg_14
  loc_B3ED5A: FLdRfVar var_1B0
  loc_B3ED5D: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_B3ED62: FFree1Str var_22C
  loc_B3ED65: FFreeVar var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = ""
  loc_B3ED76: FLdRfVar var_E4
  loc_B3ED79: LitVarI2 var_B4, 30
  loc_B3ED7E: HardType
  loc_B3ED7F: GtVarBool
  loc_B3ED81: BranchF loc_B3EDC3
  loc_B3ED86: LitVarStr var_B4, "BK"
  loc_B3ED8B: FLdRfVar var_D4
  loc_B3ED8E: ConcatVar var_160
  loc_B3ED92: LitI4 1
  loc_B3ED97: FLdRfVar var_170
  loc_B3ED9A: ImpAdCallFPR4  = Chr()
  loc_B3ED9F: FLdRfVar var_170
  loc_B3EDA2: ConcatVar var_180
  loc_B3EDA6: CStrVarVal var_22C
  loc_B3EDAA: ILdI2 arg_14
  loc_B3EDAD: FLdRfVar var_190
  loc_B3EDB0: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_B3EDB5: FFree1Str var_22C
  loc_B3EDB8: FFreeVar var_160 = "": var_170 = "": var_180 = ""
  loc_B3EDC5: LitVarI2 var_B4, 0
  loc_B3EDCA: FStVar var_A4
  loc_B3EDD0: ExitProcCb
End Function

Private Function Proc_28_7_B380F0(arg_14) 'B380F0
  'Data Table: 53ACF4
  loc_B37D0C: On Error Resume Next
  loc_B37D11: LitVarI2 var_B4, 0
  loc_B37D16: FStVar var_A4
  loc_B37D1C: LitVarStr var_B4, vbNullString
  loc_B37D21: FStVarCopy
  loc_B37D27: LitVarStr var_B4, vbNullString
  loc_B37D2C: FStVarCopy
  loc_B37D32: LitVarI2 var_B4, 0
  loc_B37D37: FStVar var_E4
  loc_B37D3D: LitVarStr var_B4, vbNullString
  loc_B37D42: FStVarCopy
  loc_B37D48: LitVarI2 var_128, 1
  loc_B37D4D: FLdRfVar var_104
  loc_B37D50: FLdRfVar var_108
  loc_B37D53: ImpAdLdRf MemVar_C0F018
  loc_B37D56: NewIfNullPr frmMain
  loc_B37D59: from_stack_1v = frmMain.SockIGet()
  loc_B37D5E: ILdRf var_108
  loc_B37D61: CVarI4
  loc_B37D65: ForVar var_148
  loc_B37D6D: FLdRfVar var_150
  loc_B37D70: FLdRfVar var_104
  loc_B37D73: CI2Var
  loc_B37D74: ImpAdLdRf MemVar_C0F018
  loc_B37D77: NewIfNullPr frmMain
  loc_B37D7A: VCallAd Control_ID_
  loc_B37D7D: FStAdFunc var_14C
  loc_B37D80: FLdPr var_14C
  loc_B37D83: Set from_stack_2 = frmMain(from_stack_1)
  loc_B37D88: FLdPr var_150
  loc_B37D8B: LateIdLdVar var_160 DispID_8 0
  loc_B37D92: CI2Var
  loc_B37D93: CI4UI1
  loc_B37D94: LitI4 7
  loc_B37D99: EqI4
  loc_B37D9A: FLdRfVar var_104
  loc_B37D9D: CI4Var
  loc_B37D9F: ImpAdLdI4 MemVar_C0F100
  loc_B37DA2: Ary1LdPr
  loc_B37DA3: MemLdStr global_204
  loc_B37DA6: LitStr vbNullString
  loc_B37DA9: NeStr
  loc_B37DAB: AndI4
  loc_B37DAC: FFreeAd var_14C = ""
  loc_B37DB3: FFree1Var var_160 = ""
  loc_B37DB6: BranchF loc_B3802F
  loc_B37DBB: LitI4 1
  loc_B37DC0: FLdRfVar var_F4
  loc_B37DC3: FLdRfVar var_150
  loc_B37DC6: FLdRfVar var_104
  loc_B37DC9: CI2Var
  loc_B37DCA: ImpAdLdRf MemVar_C0F018
  loc_B37DCD: NewIfNullPr frmMain
  loc_B37DD0: VCallAd Control_ID_
  loc_B37DD3: FStAdFunc var_14C
  loc_B37DD6: FLdPr var_14C
  loc_B37DD9: Set from_stack_2 = frmMain(from_stack_1)
  loc_B37DDE: FLdPr var_150
  loc_B37DE1: LateIdLdVar var_160 DispID_4 0
  loc_B37DE8: CStrVarTmp
  loc_B37DE9: CVarStr var_170
  loc_B37DEC: LitI4 0
  loc_B37DF1: FnInStr4Var
  loc_B37DF5: CBoolVarNull
  loc_B37DF7: FFreeAd var_14C = ""
  loc_B37DFE: FFreeVar var_160 = "": var_170 = ""
  loc_B37E07: BranchF loc_B37E0F
  loc_B37E0C: Branch loc_B38031
  loc_B37E11: FLdRfVar var_E4
  loc_B37E14: LitVarI2 var_B4, 30
  loc_B37E19: HardType
  loc_B37E1A: LeVarBool
  loc_B37E1C: BranchF loc_B37E47
  loc_B37E21: FLdRfVar var_C4
  loc_B37E24: LitVarStr var_B4, "<br>Name: "
  loc_B37E29: ConcatVar var_160
  loc_B37E2D: FLdRfVar var_104
  loc_B37E30: CI4Var
  loc_B37E32: ImpAdLdI4 MemVar_C0F100
  loc_B37E35: Ary1LdPr
  loc_B37E36: MemLdStr global_204
  loc_B37E39: CVarStr var_118
  loc_B37E3C: ConcatVar var_170
  loc_B37E40: FStVar var_C4
  loc_B37E44: FFree1Var var_160 = ""
  loc_B37E49: FLdRfVar var_E4
  loc_B37E4C: LitVarI2 var_B4, 1
  loc_B37E51: AddVar var_160
  loc_B37E55: FStVar var_E4
  loc_B37E5B: LitVarI2 var_128, 1
  loc_B37E60: FLdRfVar var_190
  loc_B37E63: FLdRfVar var_108
  loc_B37E66: ImpAdLdRf MemVar_C0F018
  loc_B37E69: NewIfNullPr frmMain
  loc_B37E6C: from_stack_1v = frmMain.SockIGet()
  loc_B37E71: ILdRf var_108
  loc_B37E74: CVarI4
  loc_B37E78: ForVar var_1B0
  loc_B37E80: FLdRfVar var_150
  loc_B37E83: FLdRfVar var_104
  loc_B37E86: CI2Var
  loc_B37E87: ImpAdLdRf MemVar_C0F018
  loc_B37E8A: NewIfNullPr frmMain
  loc_B37E8D: VCallAd Control_ID_
  loc_B37E90: FStAdFunc var_14C
  loc_B37E93: FLdPr var_14C
  loc_B37E96: Set from_stack_2 = frmMain(from_stack_1)
  loc_B37E9B: FLdPr var_150
  loc_B37E9E: LateIdLdVar var_160 DispID_4 0
  loc_B37EA5: CStrVarTmp
  loc_B37EA6: FStStrNoPop var_1BC
  loc_B37EA9: FLdRfVar var_1B8
  loc_B37EAC: FLdRfVar var_190
  loc_B37EAF: CI2Var
  loc_B37EB0: ImpAdLdRf MemVar_C0F018
  loc_B37EB3: NewIfNullPr frmMain
  loc_B37EB6: VCallAd Control_ID_
  loc_B37EB9: FStAdFunc var_1B4
  loc_B37EBC: FLdPr var_1B4
  loc_B37EBF: Set from_stack_2 = frmMain(from_stack_1)
  loc_B37EC4: FLdPr var_1B8
  loc_B37EC7: LateIdLdVar var_170 DispID_4 0
  loc_B37ECE: CStrVarTmp
  loc_B37ECF: FStStrNoPop var_1C0
  loc_B37ED2: EqStr
  loc_B37ED4: CVarBoolI2 var_B4
  loc_B37ED8: FLdRfVar var_104
  loc_B37EDB: FLdRfVar var_190
  loc_B37EDE: NeVar var_180
  loc_B37EE2: AndVar var_1D0
  loc_B37EE6: FLdRfVar var_1D8
  loc_B37EE9: FLdRfVar var_190
  loc_B37EEC: CI2Var
  loc_B37EED: ImpAdLdRf MemVar_C0F018
  loc_B37EF0: NewIfNullPr frmMain
  loc_B37EF3: VCallAd Control_ID_
  loc_B37EF6: FStAdFunc var_1D4
  loc_B37EF9: FLdPr var_1D4
  loc_B37EFC: Set from_stack_2 = frmMain(from_stack_1)
  loc_B37F01: FLdPr var_1D8
  loc_B37F04: LateIdLdVar var_1E8 DispID_8 0
  loc_B37F0B: CI2Var
  loc_B37F0C: CI4UI1
  loc_B37F0D: LitI4 7
  loc_B37F12: EqI4
  loc_B37F13: CVarBoolI2 var_118
  loc_B37F17: AndVar var_1F8
  loc_B37F1B: FLdRfVar var_190
  loc_B37F1E: CI4Var
  loc_B37F20: ImpAdLdI4 MemVar_C0F100
  loc_B37F23: Ary1LdPr
  loc_B37F24: MemLdStr global_204
  loc_B37F27: LitStr vbNullString
  loc_B37F2A: NeStr
  loc_B37F2C: CVarBoolI2 var_128
  loc_B37F30: AndVar var_208
  loc_B37F34: CBoolVarNull
  loc_B37F36: FFreeStr var_1BC = ""
  loc_B37F3D: FFreeAd var_14C = "": var_150 = "": var_1B4 = "": var_1B8 = "": var_1D4 = ""
  loc_B37F4C: FFreeVar var_160 = "": var_170 = "": var_B4 = "": var_1E8 = "": var_118 = ""
  loc_B37F5B: BranchF loc_B37FD3
  loc_B37F60: FLdRfVar var_E4
  loc_B37F63: LitVarI2 var_B4, 30
  loc_B37F68: HardType
  loc_B37F69: LeVarBool
  loc_B37F6B: BranchF loc_B37F99
  loc_B37F70: FLdRfVar var_C4
  loc_B37F73: LitVarStr var_B4, "<br>Name: "
  loc_B37F78: ConcatVar var_160
  loc_B37F7C: FLdRfVar var_190
  loc_B37F7F: CI4Var
  loc_B37F81: ImpAdLdI4 MemVar_C0F100
  loc_B37F84: Ary1LdPr
  loc_B37F85: MemLdStr global_204
  loc_B37F88: CVarStr var_118
  loc_B37F8B: ConcatVar var_170
  loc_B37F8F: FStVar var_C4
  loc_B37F93: FFree1Var var_160 = ""
  loc_B37F96: Branch loc_B37FC1
  loc_B37F9B: FLdRfVar var_D4
  loc_B37F9E: LitVarStr var_B4, "<br>Name: "
  loc_B37FA3: ConcatVar var_160
  loc_B37FA7: FLdRfVar var_190
  loc_B37FAA: CI4Var
  loc_B37FAC: ImpAdLdI4 MemVar_C0F100
  loc_B37FAF: Ary1LdPr
  loc_B37FB0: MemLdStr global_204
  loc_B37FB3: CVarStr var_118
  loc_B37FB6: ConcatVar var_170
  loc_B37FBA: FStVar var_D4
  loc_B37FBE: FFree1Var var_160 = ""
  loc_B37FC3: FLdRfVar var_E4
  loc_B37FC6: LitVarI2 var_B4, 1
  loc_B37FCB: AddVar var_160
  loc_B37FCF: FStVar var_E4
  loc_B37FD7: FLdRfVar var_190
  loc_B37FDA: NextStepVar var_1B0
  loc_B37FE2: FLdRfVar var_F4
  loc_B37FE5: FLdRfVar var_150
  loc_B37FE8: FLdRfVar var_104
  loc_B37FEB: CI2Var
  loc_B37FEC: ImpAdLdRf MemVar_C0F018
  loc_B37FEF: NewIfNullPr frmMain
  loc_B37FF2: VCallAd Control_ID_
  loc_B37FF5: FStAdFunc var_14C
  loc_B37FF8: FLdPr var_14C
  loc_B37FFB: Set from_stack_2 = frmMain(from_stack_1)
  loc_B38000: FLdPr var_150
  loc_B38003: LateIdLdVar var_160 DispID_4 0
  loc_B3800A: CStrVarTmp
  loc_B3800B: CVarStr var_170
  loc_B3800E: ConcatVar var_180
  loc_B38012: LitVarStr var_B4, ","
  loc_B38017: ConcatVar var_1D0
  loc_B3801B: FStVar var_F4
  loc_B3801F: FFreeAd var_14C = ""
  loc_B38026: FFreeVar var_160 = "": var_170 = ""
  loc_B38033: FLdRfVar var_104
  loc_B38036: NextStepVar var_148
  loc_B3803E: LitVarStr var_B4, "BK"
  loc_B38043: FLdRfVar var_E4
  loc_B38046: ConcatVar var_160
  loc_B3804A: LitVarStr var_118, " HabLogs online:"
  loc_B3804F: ConcatVar var_170
  loc_B38053: FLdRfVar var_C4
  loc_B38056: ConcatVar var_180
  loc_B3805A: LitI4 1
  loc_B3805F: FLdRfVar var_1D0
  loc_B38062: ImpAdCallFPR4  = Chr()
  loc_B38067: FLdRfVar var_1D0
  loc_B3806A: ConcatVar var_1E8
  loc_B3806E: CStrVarVal var_1BC
  loc_B38072: ILdI2 arg_14
  loc_B38075: FLdRfVar var_1F8
  loc_B38078: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_B3807D: FFree1Str var_1BC
  loc_B38080: FFreeVar var_160 = "": var_170 = "": var_180 = "": var_1D0 = "": var_1E8 = ""
  loc_B38091: FLdRfVar var_E4
  loc_B38094: LitVarI2 var_B4, 30
  loc_B38099: HardType
  loc_B3809A: GtVarBool
  loc_B3809C: BranchF loc_B380DE
  loc_B380A1: LitVarStr var_B4, "BK"
  loc_B380A6: FLdRfVar var_D4
  loc_B380A9: ConcatVar var_160
  loc_B380AD: LitI4 1
  loc_B380B2: FLdRfVar var_170
  loc_B380B5: ImpAdCallFPR4  = Chr()
  loc_B380BA: FLdRfVar var_170
  loc_B380BD: ConcatVar var_180
  loc_B380C1: CStrVarVal var_1BC
  loc_B380C5: ILdI2 arg_14
  loc_B380C8: FLdRfVar var_1D0
  loc_B380CB: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_B380D0: FFree1Str var_1BC
  loc_B380D3: FFreeVar var_160 = "": var_170 = "": var_180 = ""
  loc_B380E0: LitVarI2 var_B4, 0
  loc_B380E5: FStVar var_A4
  loc_B380EB: ExitProcCb
End Function

Private Function Proc_28_8_B3504C() 'B3504C
  'Data Table: 53ACF4
  loc_B34CD0: On Error Resume Next
  loc_B34CD5: FLdRfVar var_9C
  loc_B34CD8: ImpAdLdRf MemVar_C0F018
  loc_B34CDB: NewIfNullPr frmMain
  loc_B34CDE: VCallAd Control_ID_
  loc_B34CE1: FStAdFunc var_98
  loc_B34CE4: FLdPr var_98
  loc_B34CE7:  = frmMain.Label.Caption
  loc_B34CEC: FLdZeroAd var_9C
  loc_B34CEF: CVarStr var_BC
  loc_B34CF2: FStVar var_AC
  loc_B34CF6: FFree1Ad var_98
  loc_B34CFB: LitVarI2 var_100, 1
  loc_B34D00: FLdRfVar var_CC
  loc_B34D03: FLdRfVar var_D0
  loc_B34D06: ImpAdLdRf MemVar_C0F018
  loc_B34D09: NewIfNullPr frmMain
  loc_B34D0C: from_stack_1v = frmMain.SockIGet()
  loc_B34D11: ILdRf var_D0
  loc_B34D14: CVarI4
  loc_B34D18: ForVar var_120
  loc_B34D20: FLdRfVar var_124
  loc_B34D23: FLdRfVar var_CC
  loc_B34D26: CI2Var
  loc_B34D27: ImpAdLdRf MemVar_C0F018
  loc_B34D2A: NewIfNullPr frmMain
  loc_B34D2D: VCallAd Control_ID_
  loc_B34D30: FStAdFunc var_98
  loc_B34D33: FLdPr var_98
  loc_B34D36: Set from_stack_2 = frmMain(from_stack_1)
  loc_B34D3B: FLdPr var_124
  loc_B34D3E: LateIdLdVar var_BC DispID_8 0
  loc_B34D45: CI2Var
  loc_B34D46: CI4UI1
  loc_B34D47: LitI4 7
  loc_B34D4C: EqI4
  loc_B34D4D: FFreeAd var_98 = ""
  loc_B34D54: FFree1Var var_BC = ""
  loc_B34D57: BranchF loc_B35038
  loc_B34D5C: FLdRfVar var_CC
  loc_B34D5F: CI4Var
  loc_B34D61: ImpAdLdI4 MemVar_C0F100
  loc_B34D64: AryLock
  loc_B34D67: Ary1LdPr
  loc_B34D68: MemLdRfVar from_stack_1.global_204
  loc_B34D6B: CVarRef
  loc_B34D70: FLdRfVar var_BC
  loc_B34D73: ImpAdCallFPR4  = LCase()
  loc_B34D78: AryUnlock
  loc_B34D7B: FLdRfVar var_15C
  loc_B34D7E: FLdRfVar var_98
  loc_B34D81: LitI4 0
  loc_B34D86: LitI2_Byte 0
  loc_B34D88: LitI4 1
  loc_B34D8D: ImpAdLdI4 MemVar_C0F044
  loc_B34D90: LitStr "habbos\"
  loc_B34D93: ConcatStr
  loc_B34D94: CVarStr var_138
  loc_B34D97: FLdRfVar var_BC
  loc_B34D9A: ConcatVar var_148
  loc_B34D9E: LitVarStr var_F0, "\credits.txt"
  loc_B34DA3: ConcatVar var_158
  loc_B34DA7: CStrVarVal var_9C
  loc_B34DAB: ImpAdLdRf MemVar_C0F040
  loc_B34DAE: NewIfNullPr IFileSystem3
  loc_B34DB1: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B34DB6: FLdPr var_98
  loc_B34DB9:  = Me.ReadAll
  loc_B34DBE: FLdZeroAd var_15C
  loc_B34DC1: CVarStr var_17C
  loc_B34DC4: FStVar var_16C
  loc_B34DC8: FFree1Str var_9C
  loc_B34DCB: FFree1Ad var_98
  loc_B34DCE: FFreeVar var_138 = "": var_BC = "": var_148 = ""
  loc_B34DDB: FLdRfVar var_AC
  loc_B34DDE: CStrVarVal var_15C
  loc_B34DE2: ImpAdCallFPR4 push push Val()
  loc_B34DE7: FStFPR8 var_194
  loc_B34DEA: FLdRfVar var_16C
  loc_B34DED: CStrVarVal var_9C
  loc_B34DF1: ImpAdCallFPR4 push push Val()
  loc_B34DF6: FLdFPR8 var_194
  loc_B34DF9: AddR8
  loc_B34DFA: CVarR8
  loc_B34DFE: FStVar var_18C
  loc_B34E02: FFreeStr var_9C = ""
  loc_B34E0B: FLdRfVar var_CC
  loc_B34E0E: CI4Var
  loc_B34E10: ImpAdLdI4 MemVar_C0F100
  loc_B34E13: AryLock
  loc_B34E16: Ary1LdPr
  loc_B34E17: MemLdRfVar from_stack_1.global_204
  loc_B34E1A: CVarRef
  loc_B34E1F: FLdRfVar var_BC
  loc_B34E22: ImpAdCallFPR4  = LCase()
  loc_B34E27: AryUnlock
  loc_B34E2A: FLdRfVar var_18C
  loc_B34E2D: CStrVarVal var_15C
  loc_B34E31: FLdRfVar var_98
  loc_B34E34: LitI4 0
  loc_B34E39: LitI2_Byte 0
  loc_B34E3B: LitI4 2
  loc_B34E40: ImpAdLdI4 MemVar_C0F044
  loc_B34E43: LitStr "habbos\"
  loc_B34E46: ConcatStr
  loc_B34E47: CVarStr var_138
  loc_B34E4A: FLdRfVar var_BC
  loc_B34E4D: ConcatVar var_148
  loc_B34E51: LitVarStr var_F0, "\credits.txt"
  loc_B34E56: ConcatVar var_158
  loc_B34E5A: CStrVarVal var_9C
  loc_B34E5E: ImpAdLdRf MemVar_C0F040
  loc_B34E61: NewIfNullPr IFileSystem3
  loc_B34E64: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B34E69: FLdPr var_98
  loc_B34E6C: from_stack_2 = Me.Write(from_stack_1v)
  loc_B34E71: FFreeStr var_9C = ""
  loc_B34E78: FFree1Ad var_98
  loc_B34E7B: FFreeVar var_138 = "": var_BC = "": var_148 = ""
  loc_B34E88: FLdRfVar var_BC
  loc_B34E8B: ImpAdCallFPR4  = Date
  loc_B34E90: LitI4 0
  loc_B34E95: LitI4 -1
  loc_B34E9A: LitI4 1
  loc_B34E9F: LitStr "-"
  loc_B34EA2: LitStr "."
  loc_B34EA5: FLdRfVar var_BC
  loc_B34EA8: CStrVarVal var_9C
  loc_B34EAC: ImpAdCallI2 Replace(, , , , , )
  loc_B34EB1: CVarStr var_148
  loc_B34EB4: LitI4 9
  loc_B34EB9: FLdRfVar var_138
  loc_B34EBC: ImpAdCallFPR4  = Chr()
  loc_B34EC1: FLdRfVar var_138
  loc_B34EC4: ConcatVar var_158
  loc_B34EC8: FLdRfVar var_17C
  loc_B34ECB: ImpAdCallFPR4  = Time
  loc_B34ED0: FLdRfVar var_17C
  loc_B34ED3: ConcatVar var_1A4
  loc_B34ED7: LitI4 9
  loc_B34EDC: FLdRfVar var_1B4
  loc_B34EDF: ImpAdCallFPR4  = Chr()
  loc_B34EE4: FLdRfVar var_1B4
  loc_B34EE7: ConcatVar var_1C4
  loc_B34EEB: FLdRfVar var_AC
  loc_B34EEE: ConcatVar var_1D4
  loc_B34EF2: LitI4 9
  loc_B34EF7: FLdRfVar var_1E4
  loc_B34EFA: ImpAdCallFPR4  = Chr()
  loc_B34EFF: FLdRfVar var_1E4
  loc_B34F02: ConcatVar var_1F4
  loc_B34F06: LitVarStr var_E0, "0"
  loc_B34F0B: ConcatVar var_204
  loc_B34F0F: LitI4 9
  loc_B34F14: FLdRfVar var_214
  loc_B34F17: ImpAdCallFPR4  = Chr()
  loc_B34F1C: FLdRfVar var_214
  loc_B34F1F: ConcatVar var_224
  loc_B34F23: LitI4 9
  loc_B34F28: FLdRfVar var_234
  loc_B34F2B: ImpAdCallFPR4  = Chr()
  loc_B34F30: FLdRfVar var_234
  loc_B34F33: ConcatVar var_244
  loc_B34F37: LitVarStr var_F0, "web_internal"
  loc_B34F3C: ConcatVar var_254
  loc_B34F40: LitI4 &HD
  loc_B34F45: FLdRfVar var_264
  loc_B34F48: ImpAdCallFPR4  = Chr()
  loc_B34F4D: FLdRfVar var_264
  loc_B34F50: ConcatVar var_274
  loc_B34F54: CStrVarVal var_280
  loc_B34F58: FLdRfVar var_98
  loc_B34F5B: LitI4 0
  loc_B34F60: LitI2_Byte &HFF
  loc_B34F62: LitI4 8
  loc_B34F67: ImpAdLdI4 MemVar_C0F044
  loc_B34F6A: LitStr "habbos\"
  loc_B34F6D: ConcatStr
  loc_B34F6E: FStStrNoPop var_15C
  loc_B34F71: FLdRfVar var_CC
  loc_B34F74: CI4Var
  loc_B34F76: ImpAdLdI4 MemVar_C0F100
  loc_B34F79: Ary1LdPr
  loc_B34F7A: MemLdStr global_204
  loc_B34F7D: ConcatStr
  loc_B34F7E: FStStrNoPop var_278
  loc_B34F81: LitStr "\transactions.txt"
  loc_B34F84: ConcatStr
  loc_B34F85: FStStrNoPop var_27C
  loc_B34F88: ImpAdLdRf MemVar_C0F040
  loc_B34F8B: NewIfNullPr IFileSystem3
  loc_B34F8E: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B34F93: FLdPr var_98
  loc_B34F96: from_stack_2 = Me.Write(from_stack_1v)
  loc_B34F9B: FFreeStr var_9C = "": var_15C = "": var_278 = "": var_27C = ""
  loc_B34FA8: FFree1Ad var_98
  loc_B34FAB: FFreeVar var_BC = "": var_148 = "": var_138 = "": var_158 = "": var_17C = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_214 = "": var_224 = "": var_234 = "": var_244 = "": var_254 = "": var_264 = ""
  loc_B34FD6: LitVarStr var_E0, "@F"
  loc_B34FDB: FLdRfVar var_18C
  loc_B34FDE: ConcatVar var_BC
  loc_B34FE2: LitVarStr var_F0, ".0"
  loc_B34FE7: ConcatVar var_138
  loc_B34FEB: LitI4 1
  loc_B34FF0: FLdRfVar var_148
  loc_B34FF3: ImpAdCallFPR4  = Chr()
  loc_B34FF8: FLdRfVar var_148
  loc_B34FFB: ConcatVar var_158
  loc_B34FFF: PopAdLdVar
  loc_B35000: FLdRfVar var_124
  loc_B35003: FLdRfVar var_CC
  loc_B35006: CI2Var
  loc_B35007: ImpAdLdRf MemVar_C0F018
  loc_B3500A: NewIfNullPr frmMain
  loc_B3500D: VCallAd Control_ID_
  loc_B35010: FStAdFunc var_98
  loc_B35013: FLdPr var_98
  loc_B35016: Set from_stack_2 = frmMain(from_stack_1)
  loc_B3501B: FLdPr var_124
  loc_B3501E: LateIdCall
  loc_B35026: FFreeAd var_98 = ""
  loc_B3502D: FFreeVar var_BC = "": var_138 = "": var_148 = ""
  loc_B3503C: FLdRfVar var_CC
  loc_B3503F: NextStepVar var_120
  loc_B35047: ExitProcCb
End Function

Private Function Proc_28_9_B2B168() 'B2B168
  'Data Table: 53ACF4
  loc_B2AF64: On Error Resume Next
  loc_B2AF69: FLdRfVar var_9C
  loc_B2AF6C: ImpAdLdRf MemVar_C0F018
  loc_B2AF6F: NewIfNullPr frmMain
  loc_B2AF72: VCallAd Control_ID_
  loc_B2AF75: FStAdFunc var_98
  loc_B2AF78: FLdPr var_98
  loc_B2AF7B:  = frmMain.Label.Caption
  loc_B2AF80: FLdZeroAd var_9C
  loc_B2AF83: CVarStr var_BC
  loc_B2AF86: FStVar var_AC
  loc_B2AF8A: FFree1Ad var_98
  loc_B2AF8F: LitVarI2 var_100, 1
  loc_B2AF94: FLdRfVar var_CC
  loc_B2AF97: FLdRfVar var_D0
  loc_B2AF9A: ImpAdLdRf MemVar_C0F018
  loc_B2AF9D: NewIfNullPr frmMain
  loc_B2AFA0: from_stack_1v = frmMain.SockIGet()
  loc_B2AFA5: ILdRf var_D0
  loc_B2AFA8: CVarI4
  loc_B2AFAC: ForVar var_120
  loc_B2AFB4: FLdRfVar var_124
  loc_B2AFB7: FLdRfVar var_CC
  loc_B2AFBA: CI2Var
  loc_B2AFBB: ImpAdLdRf MemVar_C0F018
  loc_B2AFBE: NewIfNullPr frmMain
  loc_B2AFC1: VCallAd Control_ID_
  loc_B2AFC4: FStAdFunc var_98
  loc_B2AFC7: FLdPr var_98
  loc_B2AFCA: Set from_stack_2 = frmMain(from_stack_1)
  loc_B2AFCF: FLdPr var_124
  loc_B2AFD2: LateIdLdVar var_BC DispID_8 0
  loc_B2AFD9: CI2Var
  loc_B2AFDA: CI4UI1
  loc_B2AFDB: LitI4 7
  loc_B2AFE0: EqI4
  loc_B2AFE1: FFreeAd var_98 = ""
  loc_B2AFE8: FFree1Var var_BC = ""
  loc_B2AFEB: BranchF loc_B2B155
  loc_B2AFF0: FLdRfVar var_CC
  loc_B2AFF3: CI4Var
  loc_B2AFF5: ImpAdLdI4 MemVar_C0F100
  loc_B2AFF8: AryLock
  loc_B2AFFB: Ary1LdPr
  loc_B2AFFC: MemLdRfVar from_stack_1.global_204
  loc_B2AFFF: CVarRef
  loc_B2B004: FLdRfVar var_BC
  loc_B2B007: ImpAdCallFPR4  = LCase()
  loc_B2B00C: AryUnlock
  loc_B2B00F: FLdRfVar var_15C
  loc_B2B012: FLdRfVar var_98
  loc_B2B015: LitI4 0
  loc_B2B01A: LitI2_Byte &HFF
  loc_B2B01C: LitI4 1
  loc_B2B021: ImpAdLdI4 MemVar_C0F044
  loc_B2B024: LitStr "habbos\"
  loc_B2B027: ConcatStr
  loc_B2B028: CVarStr var_138
  loc_B2B02B: FLdRfVar var_BC
  loc_B2B02E: ConcatVar var_148
  loc_B2B032: LitVarStr var_F0, "\badges.txt"
  loc_B2B037: ConcatVar var_158
  loc_B2B03B: CStrVarVal var_9C
  loc_B2B03F: ImpAdLdRf MemVar_C0F040
  loc_B2B042: NewIfNullPr IFileSystem3
  loc_B2B045: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2B04A: FLdPr var_98
  loc_B2B04D:  = Me.ReadAll
  loc_B2B052: FLdZeroAd var_15C
  loc_B2B055: CVarStr var_17C
  loc_B2B058: FStVar var_16C
  loc_B2B05C: FFree1Str var_9C
  loc_B2B05F: FFree1Ad var_98
  loc_B2B062: FFreeVar var_138 = "": var_BC = "": var_148 = ""
  loc_B2B06F: FLdRfVar var_CC
  loc_B2B072: CI4Var
  loc_B2B074: ImpAdLdI4 MemVar_C0F100
  loc_B2B077: AryLock
  loc_B2B07A: Ary1LdPr
  loc_B2B07B: MemLdRfVar from_stack_1.global_204
  loc_B2B07E: CVarRef
  loc_B2B083: FLdRfVar var_148
  loc_B2B086: ImpAdCallFPR4  = LCase()
  loc_B2B08B: AryUnlock
  loc_B2B08E: FLdRfVar var_16C
  loc_B2B091: LitVarStr var_E0, ";"
  loc_B2B096: ConcatVar var_BC
  loc_B2B09A: FLdRfVar var_AC
  loc_B2B09D: ConcatVar var_138
  loc_B2B0A1: CStrVarVal var_15C
  loc_B2B0A5: FLdRfVar var_98
  loc_B2B0A8: LitI4 0
  loc_B2B0AD: LitI2_Byte 0
  loc_B2B0AF: LitI4 2
  loc_B2B0B4: ImpAdLdI4 MemVar_C0F044
  loc_B2B0B7: LitStr "habbos\"
  loc_B2B0BA: ConcatStr
  loc_B2B0BB: CVarStr var_158
  loc_B2B0BE: FLdRfVar var_148
  loc_B2B0C1: ConcatVar var_17C
  loc_B2B0C5: LitVarStr var_100, "\badges.txt"
  loc_B2B0CA: ConcatVar var_18C
  loc_B2B0CE: CStrVarVal var_9C
  loc_B2B0D2: ImpAdLdRf MemVar_C0F040
  loc_B2B0D5: NewIfNullPr IFileSystem3
  loc_B2B0D8: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2B0DD: FLdPr var_98
  loc_B2B0E0: from_stack_2 = Me.Write(from_stack_1v)
  loc_B2B0E5: FFreeStr var_9C = ""
  loc_B2B0EC: FFree1Ad var_98
  loc_B2B0EF: FFreeVar var_BC = "": var_158 = "": var_148 = "": var_17C = "": var_18C = ""
  loc_B2B100: LitStr "BK"
  loc_B2B103: LitStr "You got a Badge from Hablog Management. If you will see it reload HabLog Hotel!"
  loc_B2B106: ConcatStr
  loc_B2B107: CVarStr var_138
  loc_B2B10A: LitI4 1
  loc_B2B10F: FLdRfVar var_BC
  loc_B2B112: ImpAdCallFPR4  = Chr()
  loc_B2B117: FLdRfVar var_BC
  loc_B2B11A: ConcatVar var_148
  loc_B2B11E: PopAdLdVar
  loc_B2B11F: FLdRfVar var_124
  loc_B2B122: FLdRfVar var_CC
  loc_B2B125: CI2Var
  loc_B2B126: ImpAdLdRf MemVar_C0F018
  loc_B2B129: NewIfNullPr frmMain
  loc_B2B12C: VCallAd Control_ID_
  loc_B2B12F: FStAdFunc var_98
  loc_B2B132: FLdPr var_98
  loc_B2B135: Set from_stack_2 = frmMain(from_stack_1)
  loc_B2B13A: FLdPr var_124
  loc_B2B13D: LateIdCall
  loc_B2B145: FFreeAd var_98 = ""
  loc_B2B14C: FFreeVar var_138 = "": var_BC = ""
  loc_B2B159: FLdRfVar var_CC
  loc_B2B15C: NextStepVar var_120
  loc_B2B164: ExitProcCb
End Function

Private Function Proc_28_10_B2DE44(arg_14) 'B2DE44
  'Data Table: 53ACF4
  loc_B2DBEC: On Error Resume Next
  loc_B2DBF1: FLdRfVar var_A0
  loc_B2DBF4: FLdRfVar var_9C
  loc_B2DBF7: LitI4 0
  loc_B2DBFC: LitI2_Byte &HFF
  loc_B2DBFE: LitI4 1
  loc_B2DC03: ImpAdLdI4 MemVar_C0F044
  loc_B2DC06: LitStr "habbos\count.txt"
  loc_B2DC09: ConcatStr
  loc_B2DC0A: FStStrNoPop var_98
  loc_B2DC0D: ImpAdLdRf MemVar_C0F040
  loc_B2DC10: NewIfNullPr IFileSystem3
  loc_B2DC13: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2DC18: FLdPr var_9C
  loc_B2DC1B:  = Me.ReadAll
  loc_B2DC20: ILdRf var_A0
  loc_B2DC23: ImpAdCallFPR4 push push Val()
  loc_B2DC28: CVarR8
  loc_B2DC2C: FStVar var_B0
  loc_B2DC30: FFreeStr var_98 = ""
  loc_B2DC37: FFree1Ad var_9C
  loc_B2DC3C: FLdRfVar var_A0
  loc_B2DC3F: FLdRfVar var_9C
  loc_B2DC42: LitI4 0
  loc_B2DC47: LitI2_Byte &HFF
  loc_B2DC49: LitI4 1
  loc_B2DC4E: ImpAdLdI4 MemVar_C0F044
  loc_B2DC51: LitStr "privaterooms\count.txt"
  loc_B2DC54: ConcatStr
  loc_B2DC55: FStStrNoPop var_98
  loc_B2DC58: ImpAdLdRf MemVar_C0F040
  loc_B2DC5B: NewIfNullPr IFileSystem3
  loc_B2DC5E: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2DC63: FLdPr var_9C
  loc_B2DC66:  = Me.ReadAll
  loc_B2DC6B: ILdRf var_A0
  loc_B2DC6E: ImpAdCallFPR4 push push Val()
  loc_B2DC73: CVarR8
  loc_B2DC77: FStVar var_D0
  loc_B2DC7B: FFreeStr var_98 = ""
  loc_B2DC82: FFree1Ad var_9C
  loc_B2DC87: FLdRfVar var_A0
  loc_B2DC8A: FLdRfVar var_9C
  loc_B2DC8D: LitI4 0
  loc_B2DC92: LitI2_Byte &HFF
  loc_B2DC94: LitI4 1
  loc_B2DC99: ImpAdLdI4 MemVar_C0F044
  loc_B2DC9C: LitStr "furni\count.txt"
  loc_B2DC9F: ConcatStr
  loc_B2DCA0: FStStrNoPop var_98
  loc_B2DCA3: ImpAdLdRf MemVar_C0F040
  loc_B2DCA6: NewIfNullPr IFileSystem3
  loc_B2DCA9: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B2DCAE: FLdPr var_9C
  loc_B2DCB1:  = Me.ReadAll
  loc_B2DCB6: ILdRf var_A0
  loc_B2DCB9: ImpAdCallFPR4 push push Val()
  loc_B2DCBE: CVarR8
  loc_B2DCC2: FStVar var_E0
  loc_B2DCC6: FFreeStr var_98 = ""
  loc_B2DCCD: FFree1Ad var_9C
  loc_B2DCD2: LitI4 0
  loc_B2DCD7: FStStrCopy var_98
  loc_B2DCDA: FLdRfVar var_98
  loc_B2DCDD: ImpAdLdRf MemVar_C0F03C
  loc_B2DCE0: CVarRef
  loc_B2DCE5: LitVarStr var_F0, "hotel_name"
  loc_B2DCEA: FStVarCopyObj var_100
  loc_B2DCED: FLdRfVar var_100
  loc_B2DCF0: LitVarStr var_C0, "config"
  loc_B2DCF5: PopAdLdVar
  loc_B2DCF6: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B2DCFB: CVarStr var_130
  loc_B2DCFE: FStVar var_120
  loc_B2DD02: FFree1Str var_98
  loc_B2DD05: FFree1Var var_100 = ""
  loc_B2DD0A: LitStr "BK"
  loc_B2DD0D: LitStr "Hey "
  loc_B2DD10: ConcatStr
  loc_B2DD11: FStStrNoPop var_98
  loc_B2DD14: ILdI2 arg_14
  loc_B2DD17: CI4UI1
  loc_B2DD18: ImpAdLdI4 MemVar_C0F100
  loc_B2DD1B: Ary1LdPr
  loc_B2DD1C: MemLdStr global_204
  loc_B2DD1F: ConcatStr
  loc_B2DD20: FStStrNoPop var_A0
  loc_B2DD23: LitStr "!<br>The Server Time is "
  loc_B2DD26: ConcatStr
  loc_B2DD27: CVarStr var_130
  loc_B2DD2A: FLdRfVar var_100
  loc_B2DD2D: ImpAdCallFPR4  = Now
  loc_B2DD32: FLdRfVar var_100
  loc_B2DD35: ConcatVar var_140
  loc_B2DD39: LitVarStr var_C0, "!<br><br>Here you can see some details about "
  loc_B2DD3E: ConcatVar var_150
  loc_B2DD42: FLdRfVar var_120
  loc_B2DD45: ConcatVar var_160
  loc_B2DD49: LitVarStr var_F0, "<br>"
  loc_B2DD4E: ConcatVar var_170
  loc_B2DD52: FLdRfVar var_120
  loc_B2DD55: ConcatVar var_180
  loc_B2DD59: LitVarStr var_110, " has "
  loc_B2DD5E: ConcatVar var_190
  loc_B2DD62: FLdRfVar var_B0
  loc_B2DD65: ConcatVar var_1A0
  loc_B2DD69: LitVarStr var_1B0, " registered users.<br>The users have created "
  loc_B2DD6E: ConcatVar var_1C0
  loc_B2DD72: FLdRfVar var_D0
  loc_B2DD75: ConcatVar var_1D0
  loc_B2DD79: LitVarStr var_1E0, " rooms in total.<br>There are "
  loc_B2DD7E: ConcatVar var_1F0
  loc_B2DD82: FLdRfVar var_E0
  loc_B2DD85: ConcatVar var_200
  loc_B2DD89: LitVarStr var_210, " furni's bought in "
  loc_B2DD8E: ConcatVar var_220
  loc_B2DD92: FLdRfVar var_120
  loc_B2DD95: ConcatVar var_230
  loc_B2DD99: LitVarStr var_240, ".<br>At the moment there are "
  loc_B2DD9E: ConcatVar var_250
  loc_B2DDA2: FLdRfVar var_254
  loc_B2DDA5: ImpAdLdRf MemVar_C0F018
  loc_B2DDA8: NewIfNullPr frmMain
  loc_B2DDAB: VCallAd Control_ID_
  loc_B2DDAE: FStAdFunc var_9C
  loc_B2DDB1: FLdPr var_9C
  loc_B2DDB4:  = frmMain.Label.Caption
  loc_B2DDB9: FLdZeroAd var_254
  loc_B2DDBC: CVarStr var_264
  loc_B2DDBF: ConcatVar var_274
  loc_B2DDC3: LitVarStr var_284, " users online.<br><br>We thank you for playing "
  loc_B2DDC8: ConcatVar var_294
  loc_B2DDCC: FLdRfVar var_120
  loc_B2DDCF: ConcatVar var_2A4
  loc_B2DDD3: LitVarStr var_2B4, "!"
  loc_B2DDD8: ConcatVar var_2C4
  loc_B2DDDC: LitI4 1
  loc_B2DDE1: FLdRfVar var_2D4
  loc_B2DDE4: ImpAdCallFPR4  = Chr()
  loc_B2DDE9: FLdRfVar var_2D4
  loc_B2DDEC: ConcatVar var_2E4
  loc_B2DDF0: CStrVarVal var_2E8
  loc_B2DDF4: ILdI2 arg_14
  loc_B2DDF7: FLdRfVar var_2F8
  loc_B2DDFA: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_B2DDFF: FFreeStr var_98 = "": var_A0 = ""
  loc_B2DE08: FFree1Ad var_9C
  loc_B2DE0B: FFreeVar var_130 = "": var_100 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_200 = "": var_220 = "": var_230 = "": var_250 = "": var_264 = "": var_274 = "": var_294 = "": var_2A4 = "": var_2C4 = "": var_2D4 = "": var_2E4 = ""
  loc_B2DE40: ExitProcCb
End Function

Private Function Proc_28_11_B232C8() 'B232C8
  'Data Table: 53ACF4
  loc_B231D0: On Error Resume Next
  loc_B231D5: FLdRfVar var_9C
  loc_B231D8: ImpAdLdRf MemVar_C0F018
  loc_B231DB: NewIfNullPr frmMain
  loc_B231DE: VCallAd Control_ID_
  loc_B231E1: FStAdFunc var_98
  loc_B231E4: FLdPr var_98
  loc_B231E7:  = frmMain.Label.Caption
  loc_B231EC: FLdZeroAd var_9C
  loc_B231EF: CVarStr var_BC
  loc_B231F2: FStVar var_AC
  loc_B231F6: FFree1Ad var_98
  loc_B231FB: FLdRfVar var_9C
  loc_B231FE: ImpAdLdRf MemVar_C0F018
  loc_B23201: NewIfNullPr frmMain
  loc_B23204: VCallAd Control_ID_
  loc_B23207: FStAdFunc var_98
  loc_B2320A: FLdPr var_98
  loc_B2320D:  = frmMain.Label.Caption
  loc_B23212: FLdZeroAd var_9C
  loc_B23215: CVarStr var_BC
  loc_B23218: FStVar var_CC
  loc_B2321C: FFree1Ad var_98
  loc_B23221: FLdRfVar var_9C
  loc_B23224: ImpAdLdRf MemVar_C0F018
  loc_B23227: NewIfNullPr frmMain
  loc_B2322A: VCallAd Control_ID_
  loc_B2322D: FStAdFunc var_98
  loc_B23230: FLdPr var_98
  loc_B23233:  = frmMain.Label.Caption
  loc_B23238: FLdZeroAd var_9C
  loc_B2323B: CVarStr var_BC
  loc_B2323E: FStVar var_DC
  loc_B23242: FFree1Ad var_98
  loc_B23247: LitVarStr var_EC, "D}YqAThis is the Hablog Question System!Thank you for your Quick Answer, we will look if you got the prize or not. If you arent got a answer you are not the winner!JXPDIK"
  loc_B2324C: FLdRfVar var_CC
  loc_B2324F: ConcatVar var_BC
  loc_B23253: LitVarStr var_FC, "YPDJK"
  loc_B23258: ConcatVar var_10C
  loc_B2325C: FLdRfVar var_DC
  loc_B2325F: ConcatVar var_11C
  loc_B23263: LitVarStr var_12C, ""
  loc_B23268: ConcatVar var_13C
  loc_B2326C: FStVar var_14C
  loc_B23270: FFreeVar var_BC = "": var_10C = ""
  loc_B2327B: LitI4 0
  loc_B23280: LitI4 -1
  loc_B23285: LitI4 1
  loc_B2328A: LitStr " "
  loc_B2328D: LitStr "-"
  loc_B23290: FLdRfVar var_14C
  loc_B23293: CStrVarVal var_9C
  loc_B23297: ImpAdCallI2 Replace(, , , , , )
  loc_B2329C: CVarStr var_BC
  loc_B2329F: FStVar var_14C
  loc_B232A3: FFree1Str var_9C
  loc_B232A8: FLdRfVar var_AC
  loc_B232AB: CI4Var
  loc_B232AD: FLdRfVar var_14C
  loc_B232B0: CStrVarVal var_9C
  loc_B232B4: FLdRfVar var_BC
  loc_B232B7: ImpAdCallFPR4  = Proc_2_7_B2228C(, )
  loc_B232BC: FFree1Str var_9C
  loc_B232BF: FFree1Var var_BC = ""
  loc_B232C4: ExitProcCb
End Function

Private Function Proc_28_12_B23420() 'B23420
  'Data Table: 53ACF4
  loc_B23328: On Error Resume Next
  loc_B2332D: FLdRfVar var_9C
  loc_B23330: ImpAdLdRf MemVar_C0F018
  loc_B23333: NewIfNullPr frmMain
  loc_B23336: VCallAd Control_ID_
  loc_B23339: FStAdFunc var_98
  loc_B2333C: FLdPr var_98
  loc_B2333F:  = frmMain.Label.Caption
  loc_B23344: FLdZeroAd var_9C
  loc_B23347: CVarStr var_BC
  loc_B2334A: FStVar var_AC
  loc_B2334E: FFree1Ad var_98
  loc_B23353: FLdRfVar var_9C
  loc_B23356: ImpAdLdRf MemVar_C0F018
  loc_B23359: NewIfNullPr frmMain
  loc_B2335C: VCallAd Control_ID_
  loc_B2335F: FStAdFunc var_98
  loc_B23362: FLdPr var_98
  loc_B23365:  = frmMain.Label.Caption
  loc_B2336A: FLdZeroAd var_9C
  loc_B2336D: CVarStr var_BC
  loc_B23370: FStVar var_CC
  loc_B23374: FFree1Ad var_98
  loc_B23379: FLdRfVar var_9C
  loc_B2337C: ImpAdLdRf MemVar_C0F018
  loc_B2337F: NewIfNullPr frmMain
  loc_B23382: VCallAd Control_ID_
  loc_B23385: FStAdFunc var_98
  loc_B23388: FLdPr var_98
  loc_B2338B:  = frmMain.Label.Caption
  loc_B23390: FLdZeroAd var_9C
  loc_B23393: CVarStr var_BC
  loc_B23396: FStVar var_DC
  loc_B2339A: FFree1Ad var_98
  loc_B2339F: LitVarStr var_EC, "D}YqAThis is the Hablog Question System!Thank you for your Quick Answer, we will look if you got the prize or not. If you arent got a answer you are not the winner!JXPDIK"
  loc_B233A4: FLdRfVar var_CC
  loc_B233A7: ConcatVar var_BC
  loc_B233AB: LitVarStr var_FC, "YPDJK"
  loc_B233B0: ConcatVar var_10C
  loc_B233B4: FLdRfVar var_DC
  loc_B233B7: ConcatVar var_11C
  loc_B233BB: LitVarStr var_12C, ""
  loc_B233C0: ConcatVar var_13C
  loc_B233C4: FStVar var_14C
  loc_B233C8: FFreeVar var_BC = "": var_10C = ""
  loc_B233D3: LitI4 0
  loc_B233D8: LitI4 -1
  loc_B233DD: LitI4 1
  loc_B233E2: LitStr " "
  loc_B233E5: LitStr "-"
  loc_B233E8: FLdRfVar var_14C
  loc_B233EB: CStrVarVal var_9C
  loc_B233EF: ImpAdCallI2 Replace(, , , , , )
  loc_B233F4: CVarStr var_BC
  loc_B233F7: FStVar var_14C
  loc_B233FB: FFree1Str var_9C
  loc_B23400: FLdRfVar var_AC
  loc_B23403: CI4Var
  loc_B23405: FLdRfVar var_14C
  loc_B23408: CStrVarVal var_9C
  loc_B2340C: FLdRfVar var_BC
  loc_B2340F: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_B23414: FFree1Str var_9C
  loc_B23417: FFree1Var var_BC = ""
  loc_B2341C: ExitProcCb
End Function

Private Function Proc_28_13_B26A28(arg_14) 'B26A28
  'Data Table: 53ACF4
  loc_B268C4: On Error Resume Next
  loc_B268C9: FLdRfVar var_9C
  loc_B268CC: ImpAdLdRf MemVar_C0F018
  loc_B268CF: NewIfNullPr frmMain
  loc_B268D2: VCallAd Control_ID_
  loc_B268D5: FStAdFunc var_98
  loc_B268D8: FLdPr var_98
  loc_B268DB:  = frmMain.Label.Caption
  loc_B268E0: FLdZeroAd var_9C
  loc_B268E3: CVarStr var_BC
  loc_B268E6: FStVar var_AC
  loc_B268EA: FFree1Ad var_98
  loc_B268EF: FLdRfVar var_9C
  loc_B268F2: ImpAdLdRf MemVar_C0F018
  loc_B268F5: NewIfNullPr frmMain
  loc_B268F8: VCallAd Control_ID_
  loc_B268FB: FStAdFunc var_98
  loc_B268FE: FLdPr var_98
  loc_B26901:  = frmMain.Label.Caption
  loc_B26906: FLdZeroAd var_9C
  loc_B26909: CVarStr var_BC
  loc_B2690C: FStVar var_CC
  loc_B26910: FFree1Ad var_98
  loc_B26915: FLdRfVar var_AC
  loc_B26918: LitVarStr var_DC, "Hebbo"
  loc_B2691D: HardType
  loc_B2691E: EqVar var_BC
  loc_B26922: FLdRfVar var_AC
  loc_B26925: LitVarStr var_EC, "Orakel"
  loc_B2692A: HardType
  loc_B2692B: EqVar var_FC
  loc_B2692F: OrVar var_10C
  loc_B26933: FLdRfVar var_AC
  loc_B26936: LitVarStr var_11C, "Carlos"
  loc_B2693B: HardType
  loc_B2693C: EqVar var_12C
  loc_B26940: OrVar var_13C
  loc_B26944: CBoolVarNull
  loc_B26946: BranchF loc_B2694E
  loc_B2694B: Branch loc_B26A20
  loc_B26950: FLdRfVar var_CC
  loc_B26953: LitVarStr var_DC, "Hebbo"
  loc_B26958: HardType
  loc_B26959: EqVar var_BC
  loc_B2695D: FLdRfVar var_CC
  loc_B26960: LitVarStr var_EC, "Orakel"
  loc_B26965: HardType
  loc_B26966: EqVar var_FC
  loc_B2696A: OrVar var_10C
  loc_B2696E: FLdRfVar var_CC
  loc_B26971: LitVarStr var_11C, "Carlos"
  loc_B26976: HardType
  loc_B26977: EqVar var_12C
  loc_B2697B: OrVar var_13C
  loc_B2697F: CBoolVarNull
  loc_B26981: BranchF loc_B26A19
  loc_B26986: FLdRfVar var_AC
  loc_B26989: FLdRfVar var_BC
  loc_B2698C: ImpAdCallFPR4  = LCase()
  loc_B26991: LitI2_Byte &HFF
  loc_B26993: ImpAdLdI4 MemVar_C0F044
  loc_B26996: LitStr "habbos\"
  loc_B26999: ConcatStr
  loc_B2699A: CVarStr var_FC
  loc_B2699D: FLdRfVar var_BC
  loc_B269A0: ConcatVar var_10C
  loc_B269A4: CStrVarVal var_9C
  loc_B269A8: ImpAdLdRf MemVar_C0F040
  loc_B269AB: NewIfNullPr IFileSystem3
  loc_B269AE: from_stack_3 = IFileSystem3.IFileSystem.DeleteFolder(from_stack_1v, from_stack_2b)
  loc_B269B3: FFree1Str var_9C
  loc_B269B6: FFreeVar var_FC = "": var_BC = ""
  loc_B269C1: LitStr "BK"
  loc_B269C4: LitStr "The user "
  loc_B269C7: ConcatStr
  loc_B269C8: CVarStr var_BC
  loc_B269CB: FLdRfVar var_AC
  loc_B269CE: ConcatVar var_FC
  loc_B269D2: LitVarStr var_DC, " is now deleted by "
  loc_B269D7: ConcatVar var_10C
  loc_B269DB: FLdRfVar var_CC
  loc_B269DE: ConcatVar var_12C
  loc_B269E2: LitI4 1
  loc_B269E7: FLdRfVar var_13C
  loc_B269EA: ImpAdCallFPR4  = Chr()
  loc_B269EF: FLdRfVar var_13C
  loc_B269F2: ConcatVar var_14C
  loc_B269F6: CStrVarVal var_9C
  loc_B269FA: ILdI2 arg_14
  loc_B269FD: FLdRfVar var_15C
  loc_B26A00: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_B26A05: FFree1Str var_9C
  loc_B26A08: FFreeVar var_BC = "": var_FC = "": var_10C = "": var_12C = "": var_13C = "": var_14C = ""
  loc_B26A1D: Branch loc_B26A20
  loc_B26A22: ExitProcCb
End Function
