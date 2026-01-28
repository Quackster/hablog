
Private Function Proc_6_0_B94FF0(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28) 'B94FF0
  'Data Table: 53AAA8
  loc_B92530: LitStr "NoPath"
  loc_B92533: FStStrCopy var_88
  loc_B92536: OnErrorGoto loc_B94FEC
  loc_B92539: FLdI2 arg_10
  loc_B9253C: FLdI2 arg_18
  loc_B9253F: GtI2
  loc_B92540: FLdI2 arg_14
  loc_B92543: FLdI2 arg_1C
  loc_B92546: GtI2
  loc_B92547: AndI4
  loc_B92548: BranchF loc_B92A99
  loc_B9254B: LitVarI2 var_D8, 1
  loc_B92550: FLdRfVar var_A4
  loc_B92553: FLdRfVar var_A8
  loc_B92556: ImpAdLdRf MemVar_C0F018
  loc_B92559: NewIfNullPr frmMain
  loc_B9255C: from_stack_1v = frmMain.SockIGet()
  loc_B92561: ILdRf var_A8
  loc_B92564: CVarI4
  loc_B92568: ForVar var_F8
  loc_B9256E: FLdRfVar var_A4
  loc_B92571: CI4Var
  loc_B92573: ImpAdLdI4 MemVar_C0F100
  loc_B92576: Ary1LdPr
  loc_B92577: MemLdFPR8 global_224
  loc_B9257A: FLdI2 arg_20
  loc_B9257D: CR8I2
  loc_B9257E: EqR4
  loc_B9257F: BranchF loc_B925AF
  loc_B92582: FLdRfVar var_A4
  loc_B92585: CI4Var
  loc_B92587: ImpAdLdI4 MemVar_C0F100
  loc_B9258A: Ary1LdPr
  loc_B9258B: MemLdFPR8 global_232
  loc_B9258E: FLdI2 arg_10
  loc_B92591: LitI2_Byte 1
  loc_B92593: SubI2
  loc_B92594: CR8I2
  loc_B92595: EqR4
  loc_B92596: FLdRfVar var_A4
  loc_B92599: CI4Var
  loc_B9259B: ImpAdLdI4 MemVar_C0F100
  loc_B9259E: Ary1LdPr
  loc_B9259F: MemLdFPR8 global_240
  loc_B925A2: FLdI2 arg_14
  loc_B925A5: LitI2_Byte 1
  loc_B925A7: SubI2
  loc_B925A8: CR8I2
  loc_B925A9: EqR4
  loc_B925AA: AndI4
  loc_B925AB: BranchF loc_B925AF
  loc_B925AE: ExitProc
  loc_B925AF: FLdRfVar var_A4
  loc_B925B2: NextStepVar var_F8
  loc_B925B8: FLdRfVar var_FC
  loc_B925BB: ImpAdLdRf MemVar_C0F018
  loc_B925BE: NewIfNullPr frmMain
  loc_B925C1: from_stack_1v = frmMain.HpetsGet()
  loc_B925C6: LitI4 0
  loc_B925CB: LitI4 -1
  loc_B925D0: LitVarStr var_B8, ";"
  loc_B925D5: FStVarCopyObj var_10C
  loc_B925D8: FLdRfVar var_10C
  loc_B925DB: ILdRf var_FC
  loc_B925DE: FLdRfVar var_11C
  loc_B925E1: ImpAdCallFPR4  = Split(, , , )
  loc_B925E6: FLdRfVar var_11C
  loc_B925E9: FStVar var_12C
  loc_B925ED: FFree1Str var_FC
  loc_B925F0: FFree1Var var_10C = ""
  loc_B925F3: LitVarI2 var_D8, 0
  loc_B925F8: FLdRfVar var_A4
  loc_B925FB: FLdRfVar var_12C
  loc_B925FE: CRefVarAry
  loc_B92600: PopAdLd4
  loc_B92601: LitI2_Byte 1
  loc_B92603: FnUBound
  loc_B92605: CVarI4
  loc_B92609: ForVar var_14C
  loc_B9260F: FLdRfVar var_A4
  loc_B92612: CDargRef
  loc_B92616: FLdRfVar var_12C
  loc_B92619: VarIndexLdVar
  loc_B9261F: LitVarStr var_C8, vbNullString
  loc_B92624: HardType
  loc_B92625: NeVarBool
  loc_B92627: FFree1Var var_10C = ""
  loc_B9262A: BranchF loc_B9269F
  loc_B9262D: FLdRfVar var_A4
  loc_B92630: CDargRef
  loc_B92634: FLdRfVar var_12C
  loc_B92637: VarIndexLdVar
  loc_B9263D: CI4Var
  loc_B9263F: ImpAdLdI4 MemVar_C0F160
  loc_B92642: Ary1LdPr
  loc_B92643: MemLdFPR8 global_16
  loc_B92646: FLdI2 arg_20
  loc_B92649: CR8I2
  loc_B9264A: EqR4
  loc_B9264B: FFree1Var var_10C = ""
  loc_B9264E: BranchF loc_B9269F
  loc_B92651: FLdRfVar var_A4
  loc_B92654: CDargRef
  loc_B92658: FLdRfVar var_12C
  loc_B9265B: VarIndexLdVar
  loc_B92661: CI4Var
  loc_B92663: ImpAdLdI4 MemVar_C0F160
  loc_B92666: Ary1LdPr
  loc_B92667: MemLdFPR8 global_44
  loc_B9266A: FLdI2 arg_10
  loc_B9266D: LitI2_Byte 1
  loc_B9266F: SubI2
  loc_B92670: CR8I2
  loc_B92671: EqR4
  loc_B92672: FLdRfVar var_A4
  loc_B92675: CDargRef
  loc_B92679: FLdRfVar var_12C
  loc_B9267C: VarIndexLdVar
  loc_B92682: CI4Var
  loc_B92684: ImpAdLdI4 MemVar_C0F160
  loc_B92687: Ary1LdPr
  loc_B92688: MemLdFPR8 global_52
  loc_B9268B: FLdI2 arg_14
  loc_B9268E: LitI2_Byte 1
  loc_B92690: SubI2
  loc_B92691: CR8I2
  loc_B92692: EqR4
  loc_B92693: AndI4
  loc_B92694: FFreeVar var_10C = ""
  loc_B9269B: BranchF loc_B9269F
  loc_B9269E: ExitProc
  loc_B9269F: FLdRfVar var_A4
  loc_B926A2: NextStepVar var_14C
  loc_B926A8: LitI4 &HD
  loc_B926AD: FLdRfVar var_10C
  loc_B926B0: ImpAdCallFPR4  = Chr()
  loc_B926B5: FLdI2 arg_14
  loc_B926B8: LitI2_Byte 1
  loc_B926BA: SubI2
  loc_B926BB: CVarI2 var_B8
  loc_B926BE: PopAdLdVar
  loc_B926BF: LitI4 0
  loc_B926C4: LitI4 -1
  loc_B926C9: FLdRfVar var_10C
  loc_B926CC: ILdI4 arg_24
  loc_B926CF: FLdRfVar var_11C
  loc_B926D2: ImpAdCallFPR4  = Split(, , , )
  loc_B926D7: FLdRfVar var_11C
  loc_B926DA: VarIndexLdRfVarLock
  loc_B926E2: FStR4 var_A8
  loc_B926E5: LitVarI2 var_170, 1
  loc_B926EA: FLdI2 arg_10
  loc_B926ED: CI4UI1
  loc_B926EE: ILdRf var_A8
  loc_B926F1: FLdRfVar var_180
  loc_B926F4: ImpAdCallFPR4  = Mid(, , )
  loc_B926F9: AryUnlock
  loc_B926FC: FLdRfVar var_180
  loc_B926FF: CStrVarTmp
  loc_B92700: FStStr var_90
  loc_B92703: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = ""
  loc_B92710: ILdRf var_90
  loc_B92713: LitStr "O"
  loc_B92716: EqStr
  loc_B92718: ILdRf var_90
  loc_B9271B: LitStr "D"
  loc_B9271E: EqStr
  loc_B92720: OrI4
  loc_B92721: ILdRf var_90
  loc_B92724: LitStr "R"
  loc_B92727: EqStr
  loc_B92729: OrI4
  loc_B9272A: ILdRf var_90
  loc_B9272D: LitStr "S"
  loc_B92730: EqStr
  loc_B92732: ILdRf var_90
  loc_B92735: LitStr "L"
  loc_B92738: EqStr
  loc_B9273A: OrI4
  loc_B9273B: FLdI2 arg_14
  loc_B9273E: LitI2_Byte 1
  loc_B92740: SubI2
  loc_B92741: FLdI2 arg_1C
  loc_B92744: EqI2
  loc_B92745: AndI4
  loc_B92746: FLdI2 arg_10
  loc_B92749: LitI2_Byte 1
  loc_B9274B: SubI2
  loc_B9274C: FLdI2 arg_18
  loc_B9274F: EqI2
  loc_B92750: AndI4
  loc_B92751: OrI4
  loc_B92752: BranchF loc_B92A99
  loc_B92755: ILdRf var_90
  loc_B92758: LitStr "R"
  loc_B9275B: EqStr
  loc_B9275D: BranchF loc_B928AD
  loc_B92760: LitI4 0
  loc_B92765: FStStrCopy var_198
  loc_B92768: FLdRfVar var_198
  loc_B9276B: ImpAdLdI4 MemVar_C0F044
  loc_B9276E: LitStr "privaterooms\"
  loc_B92771: ConcatStr
  loc_B92772: FStStrNoPop var_18C
  loc_B92775: ILdI2 arg_C
  loc_B92778: CI4UI1
  loc_B92779: ImpAdLdI4 MemVar_C0F100
  loc_B9277C: Ary1LdPr
  loc_B9277D: MemLdFPR8 global_224
  loc_B92780: CStrR8
  loc_B92782: FStStrNoPop var_190
  loc_B92785: ConcatStr
  loc_B92786: FStStrNoPop var_194
  loc_B92789: LitStr "\rotation.txt"
  loc_B9278C: ConcatStr
  loc_B9278D: CVarStr var_11C
  loc_B92790: FLdI2 arg_10
  loc_B92793: LitI2_Byte 1
  loc_B92795: SubI2
  loc_B92796: CStrUI1
  loc_B92798: FStStrNoPop var_FC
  loc_B9279B: LitStr ","
  loc_B9279E: ConcatStr
  loc_B9279F: FStStrNoPop var_184
  loc_B927A2: FLdI2 arg_14
  loc_B927A5: LitI2_Byte 1
  loc_B927A7: SubI2
  loc_B927A8: CStrUI1
  loc_B927AA: FStStrNoPop var_188
  loc_B927AD: ConcatStr
  loc_B927AE: CVarStr var_10C
  loc_B927B1: LitVarStr var_B8, "furnies"
  loc_B927B6: PopAdLdVar
  loc_B927B7: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B927BC: CVarStr var_15C
  loc_B927BF: FStVar var_1A8
  loc_B927C3: FFreeStr var_FC = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_B927D4: FFreeVar var_10C = ""
  loc_B927DB: FLdRfVar var_1A8
  loc_B927DE: LitVarStr var_B8, vbNullString
  loc_B927E3: HardType
  loc_B927E4: NeVarBool
  loc_B927E6: BranchF loc_B928AD
  loc_B927E9: FLdRfVar var_184
  loc_B927EC: FLdRfVar var_1AC
  loc_B927EF: LitI4 0
  loc_B927F4: LitI2_Byte 0
  loc_B927F6: LitI4 1
  loc_B927FB: ImpAdLdI4 MemVar_C0F044
  loc_B927FE: LitStr "furni\"
  loc_B92801: ConcatStr
  loc_B92802: CVarStr var_10C
  loc_B92805: FLdRfVar var_1A8
  loc_B92808: ConcatVar var_11C
  loc_B9280C: LitVarStr var_B8, "\type.txt"
  loc_B92811: ConcatVar var_15C
  loc_B92815: CStrVarVal var_FC
  loc_B92819: ImpAdLdRf MemVar_C0F040
  loc_B9281C: NewIfNullPr IFileSystem3
  loc_B9281F: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B92824: FLdPr var_1AC
  loc_B92827:  = Me.ReadAll
  loc_B9282C: FLdZeroAd var_184
  loc_B9282F: CVarStr var_170
  loc_B92832: FStVar var_1BC
  loc_B92836: FFree1Str var_FC
  loc_B92839: FFree1Ad var_1AC
  loc_B9283C: FFreeVar var_10C = "": var_11C = ""
  loc_B92845: FLdRfVar var_1BC
  loc_B92848: LitVarStr var_B8, "rug"
  loc_B9284D: HardType
  loc_B9284E: EqVar var_10C
  loc_B92852: NotVar var_11C
  loc_B92856: FLdRfVar var_1BC
  loc_B92859: LitVarStr var_C8, "sit"
  loc_B9285E: HardType
  loc_B9285F: EqVar var_15C
  loc_B92863: FLdRfVar var_1BC
  loc_B92866: LitVarStr var_D8, "bed"
  loc_B9286B: HardType
  loc_B9286C: EqVar var_170
  loc_B92870: OrVar var_180
  loc_B92874: FLdI2 arg_14
  loc_B92877: FLdI2 arg_1C
  loc_B9287A: LitI2_Byte 1
  loc_B9287C: SubI2
  loc_B9287D: EqI2
  loc_B9287E: CVarBoolI2 var_1CC
  loc_B92882: AndVar var_1DC
  loc_B92886: FLdI2 arg_10
  loc_B92889: LitI2_Byte 1
  loc_B9288B: SubI2
  loc_B9288C: FLdI2 arg_18
  loc_B9288F: EqI2
  loc_B92890: CVarBoolI2 var_1EC
  loc_B92894: AndVar var_1FC
  loc_B92898: NotVar var_20C
  loc_B9289C: AndVar var_21C
  loc_B928A0: CBoolVarNull
  loc_B928A2: FFreeVar var_1CC = ""
  loc_B928A9: BranchF loc_B928AD
  loc_B928AC: ExitProc
  loc_B928AD: FLdI2 arg_10
  loc_B928B0: LitI2_Byte 1
  loc_B928B2: SubI2
  loc_B928B3: CStrUI1
  loc_B928B5: FStStrNoPop var_FC
  loc_B928B8: LitStr ","
  loc_B928BB: ConcatStr
  loc_B928BC: FStStrNoPop var_184
  loc_B928BF: FLdI2 arg_14
  loc_B928C2: LitI2_Byte 1
  loc_B928C4: SubI2
  loc_B928C5: CStrUI1
  loc_B928C7: FStStrNoPop var_188
  loc_B928CA: ConcatStr
  loc_B928CB: FStStr var_88
  loc_B928CE: FFreeStr var_FC = "": var_184 = ""
  loc_B928D7: LitStr "7,7"
  loc_B928DA: ILdI2 arg_C
  loc_B928DD: CI4UI1
  loc_B928DE: ImpAdLdI4 MemVar_C0F100
  loc_B928E1: Ary1LdPr
  loc_B928E2: MemStStrCopy
  loc_B928E6: ILdRf var_90
  loc_B928E9: LitStr "R"
  loc_B928EC: EqStr
  loc_B928EE: BranchF loc_B929EC
  loc_B928F1: LitI4 &HD
  loc_B928F6: FLdRfVar var_10C
  loc_B928F9: ImpAdCallFPR4  = Chr()
  loc_B928FE: FLdI2 arg_14
  loc_B92901: LitI2_Byte 1
  loc_B92903: SubI2
  loc_B92904: CVarI2 var_B8
  loc_B92907: PopAdLdVar
  loc_B92908: LitI4 0
  loc_B9290D: LitI4 -1
  loc_B92912: FLdRfVar var_10C
  loc_B92915: ILdI4 arg_28
  loc_B92918: FLdRfVar var_11C
  loc_B9291B: ImpAdCallFPR4  = Split(, , , )
  loc_B92920: FLdRfVar var_11C
  loc_B92923: VarIndexLdRfVarLock
  loc_B9292B: FStR4 var_A8
  loc_B9292E: LitVarI2 var_170, 1
  loc_B92933: FLdI2 arg_10
  loc_B92936: CI4UI1
  loc_B92937: ILdRf var_A8
  loc_B9293A: FLdRfVar var_180
  loc_B9293D: ImpAdCallFPR4  = Mid(, , )
  loc_B92942: AryUnlock
  loc_B92945: FLdRfVar var_180
  loc_B92948: CStrVarVal var_FC
  loc_B9294C: ImpAdCallFPR4 push push Val()
  loc_B92951: FStFPR8 var_224
  loc_B92954: LitI4 0
  loc_B92959: LitI4 -1
  loc_B9295E: LitI4 1
  loc_B92963: LitStr "."
  loc_B92966: LitStr ","
  loc_B92969: FLdFPR8 var_224
  loc_B9296C: LitDate 0.4
  loc_B92975: AddR8
  loc_B92976: CStrR8
  loc_B92978: FStStrNoPop var_184
  loc_B9297B: ImpAdCallI2 Replace(, , , , , )
  loc_B92980: FStStrNoPop var_188
  loc_B92983: ILdI2 arg_C
  loc_B92986: CI4UI1
  loc_B92987: ImpAdLdI4 MemVar_C0F100
  loc_B9298A: Ary1LdPr
  loc_B9298B: MemStStrCopy
  loc_B9298F: FFreeStr var_FC = "": var_184 = ""
  loc_B92998: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = ""
  loc_B929A5: LitI4 1
  loc_B929AA: ILdI2 arg_C
  loc_B929AD: CI4UI1
  loc_B929AE: ImpAdLdI4 MemVar_C0F100
  loc_B929B1: Ary1LdPr
  loc_B929B2: MemLdStr global_296
  loc_B929B5: LitStr "."
  loc_B929B8: LitI4 0
  loc_B929BD: FnInStr4
  loc_B929BF: LitI4 0
  loc_B929C4: EqI4
  loc_B929C5: BranchF loc_B929E9
  loc_B929C8: ILdI2 arg_C
  loc_B929CB: CI4UI1
  loc_B929CC: ImpAdLdI4 MemVar_C0F100
  loc_B929CF: Ary1LdPr
  loc_B929D0: MemLdStr global_296
  loc_B929D3: LitStr ".0"
  loc_B929D6: ConcatStr
  loc_B929D7: FStStrNoPop var_FC
  loc_B929DA: ILdI2 arg_C
  loc_B929DD: CI4UI1
  loc_B929DE: ImpAdLdI4 MemVar_C0F100
  loc_B929E1: Ary1LdPr
  loc_B929E2: MemStStrCopy
  loc_B929E6: FFree1Str var_FC
  loc_B929E9: Branch loc_B92A6E
  loc_B929EC: LitI4 &HD
  loc_B929F1: FLdRfVar var_10C
  loc_B929F4: ImpAdCallFPR4  = Chr()
  loc_B929F9: FLdI2 arg_14
  loc_B929FC: LitI2_Byte 1
  loc_B929FE: SubI2
  loc_B929FF: CVarI2 var_B8
  loc_B92A02: PopAdLdVar
  loc_B92A03: LitI4 0
  loc_B92A08: LitI4 -1
  loc_B92A0D: FLdRfVar var_10C
  loc_B92A10: ILdI4 arg_28
  loc_B92A13: FLdRfVar var_11C
  loc_B92A16: ImpAdCallFPR4  = Split(, , , )
  loc_B92A1B: FLdRfVar var_11C
  loc_B92A1E: VarIndexLdRfVarLock
  loc_B92A26: FStR4 var_A8
  loc_B92A29: LitVarI2 var_170, 1
  loc_B92A2E: FLdI2 arg_10
  loc_B92A31: CI4UI1
  loc_B92A32: ILdRf var_A8
  loc_B92A35: FLdRfVar var_180
  loc_B92A38: ImpAdCallFPR4  = Mid(, , )
  loc_B92A3D: AryUnlock
  loc_B92A40: FLdRfVar var_180
  loc_B92A43: LitVarStr var_1CC, ".0"
  loc_B92A48: ConcatVar var_1DC
  loc_B92A4C: CStrVarTmp
  loc_B92A4D: FStStrNoPop var_FC
  loc_B92A50: ILdI2 arg_C
  loc_B92A53: CI4UI1
  loc_B92A54: ImpAdLdI4 MemVar_C0F100
  loc_B92A57: Ary1LdPr
  loc_B92A58: MemStStrCopy
  loc_B92A5C: FFree1Str var_FC
  loc_B92A5F: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = "": var_180 = ""
  loc_B92A6E: LitI2_Byte 0
  loc_B92A70: ILdI2 arg_C
  loc_B92A73: CI4UI1
  loc_B92A74: ImpAdLdI4 MemVar_C0F100
  loc_B92A77: Ary1LdPr
  loc_B92A78: MemStI2 global_308
  loc_B92A7B: LitI4 0
  loc_B92A80: ILdI2 arg_C
  loc_B92A83: CI4UI1
  loc_B92A84: ImpAdLdI4 MemVar_C0F100
  loc_B92A87: Ary1LdPr
  loc_B92A88: MemStI4 global_332
  loc_B92A8B: LitI2_Byte 0
  loc_B92A8D: ILdI2 arg_C
  loc_B92A90: CI4UI1
  loc_B92A91: ImpAdLdI4 MemVar_C0F100
  loc_B92A94: Ary1LdPr
  loc_B92A95: MemStI2 global_312
  loc_B92A98: ExitProc
  loc_B92A99: FLdI2 arg_10
  loc_B92A9C: FLdI2 arg_18
  loc_B92A9F: LtI2
  loc_B92AA0: FLdI2 arg_14
  loc_B92AA3: FLdI2 arg_1C
  loc_B92AA6: LtI2
  loc_B92AA7: AndI4
  loc_B92AA8: BranchF loc_B93002
  loc_B92AAB: LitVarI2 var_D8, 1
  loc_B92AB0: FLdRfVar var_A4
  loc_B92AB3: FLdRfVar var_A8
  loc_B92AB6: ImpAdLdRf MemVar_C0F018
  loc_B92AB9: NewIfNullPr frmMain
  loc_B92ABC: from_stack_1v = frmMain.SockIGet()
  loc_B92AC1: ILdRf var_A8
  loc_B92AC4: CVarI4
  loc_B92AC8: ForVar var_244
  loc_B92ACE: FLdRfVar var_A4
  loc_B92AD1: CI4Var
  loc_B92AD3: ImpAdLdI4 MemVar_C0F100
  loc_B92AD6: Ary1LdPr
  loc_B92AD7: MemLdFPR8 global_224
  loc_B92ADA: FLdI2 arg_20
  loc_B92ADD: CR8I2
  loc_B92ADE: EqR4
  loc_B92ADF: BranchF loc_B92B0F
  loc_B92AE2: FLdRfVar var_A4
  loc_B92AE5: CI4Var
  loc_B92AE7: ImpAdLdI4 MemVar_C0F100
  loc_B92AEA: Ary1LdPr
  loc_B92AEB: MemLdFPR8 global_232
  loc_B92AEE: FLdI2 arg_10
  loc_B92AF1: LitI2_Byte 1
  loc_B92AF3: AddI2
  loc_B92AF4: CR8I2
  loc_B92AF5: EqR4
  loc_B92AF6: FLdRfVar var_A4
  loc_B92AF9: CI4Var
  loc_B92AFB: ImpAdLdI4 MemVar_C0F100
  loc_B92AFE: Ary1LdPr
  loc_B92AFF: MemLdFPR8 global_240
  loc_B92B02: FLdI2 arg_14
  loc_B92B05: LitI2_Byte 1
  loc_B92B07: AddI2
  loc_B92B08: CR8I2
  loc_B92B09: EqR4
  loc_B92B0A: AndI4
  loc_B92B0B: BranchF loc_B92B0F
  loc_B92B0E: ExitProc
  loc_B92B0F: FLdRfVar var_A4
  loc_B92B12: NextStepVar var_244
  loc_B92B18: FLdRfVar var_FC
  loc_B92B1B: ImpAdLdRf MemVar_C0F018
  loc_B92B1E: NewIfNullPr frmMain
  loc_B92B21: from_stack_1v = frmMain.HpetsGet()
  loc_B92B26: LitI4 0
  loc_B92B2B: LitI4 -1
  loc_B92B30: LitVarStr var_B8, ";"
  loc_B92B35: FStVarCopyObj var_10C
  loc_B92B38: FLdRfVar var_10C
  loc_B92B3B: ILdRf var_FC
  loc_B92B3E: FLdRfVar var_11C
  loc_B92B41: ImpAdCallFPR4  = Split(, , , )
  loc_B92B46: FLdRfVar var_11C
  loc_B92B49: FStVar var_12C
  loc_B92B4D: FFree1Str var_FC
  loc_B92B50: FFree1Var var_10C = ""
  loc_B92B53: LitVarI2 var_D8, 0
  loc_B92B58: FLdRfVar var_A4
  loc_B92B5B: FLdRfVar var_12C
  loc_B92B5E: CRefVarAry
  loc_B92B60: PopAdLd4
  loc_B92B61: LitI2_Byte 1
  loc_B92B63: FnUBound
  loc_B92B65: CVarI4
  loc_B92B69: ForVar var_264
  loc_B92B6F: FLdRfVar var_A4
  loc_B92B72: CDargRef
  loc_B92B76: FLdRfVar var_12C
  loc_B92B79: VarIndexLdVar
  loc_B92B7F: LitVarStr var_C8, vbNullString
  loc_B92B84: HardType
  loc_B92B85: NeVarBool
  loc_B92B87: FFree1Var var_10C = ""
  loc_B92B8A: BranchF loc_B92BFF
  loc_B92B8D: FLdRfVar var_A4
  loc_B92B90: CDargRef
  loc_B92B94: FLdRfVar var_12C
  loc_B92B97: VarIndexLdVar
  loc_B92B9D: CI4Var
  loc_B92B9F: ImpAdLdI4 MemVar_C0F160
  loc_B92BA2: Ary1LdPr
  loc_B92BA3: MemLdFPR8 global_16
  loc_B92BA6: FLdI2 arg_20
  loc_B92BA9: CR8I2
  loc_B92BAA: EqR4
  loc_B92BAB: FFree1Var var_10C = ""
  loc_B92BAE: BranchF loc_B92BFF
  loc_B92BB1: FLdRfVar var_A4
  loc_B92BB4: CDargRef
  loc_B92BB8: FLdRfVar var_12C
  loc_B92BBB: VarIndexLdVar
  loc_B92BC1: CI4Var
  loc_B92BC3: ImpAdLdI4 MemVar_C0F160
  loc_B92BC6: Ary1LdPr
  loc_B92BC7: MemLdFPR8 global_44
  loc_B92BCA: FLdI2 arg_10
  loc_B92BCD: LitI2_Byte 1
  loc_B92BCF: AddI2
  loc_B92BD0: CR8I2
  loc_B92BD1: EqR4
  loc_B92BD2: FLdRfVar var_A4
  loc_B92BD5: CDargRef
  loc_B92BD9: FLdRfVar var_12C
  loc_B92BDC: VarIndexLdVar
  loc_B92BE2: CI4Var
  loc_B92BE4: ImpAdLdI4 MemVar_C0F160
  loc_B92BE7: Ary1LdPr
  loc_B92BE8: MemLdFPR8 global_52
  loc_B92BEB: FLdI2 arg_14
  loc_B92BEE: LitI2_Byte 1
  loc_B92BF0: AddI2
  loc_B92BF1: CR8I2
  loc_B92BF2: EqR4
  loc_B92BF3: AndI4
  loc_B92BF4: FFreeVar var_10C = ""
  loc_B92BFB: BranchF loc_B92BFF
  loc_B92BFE: ExitProc
  loc_B92BFF: FLdRfVar var_A4
  loc_B92C02: NextStepVar var_264
  loc_B92C08: LitI4 &HD
  loc_B92C0D: FLdRfVar var_10C
  loc_B92C10: ImpAdCallFPR4  = Chr()
  loc_B92C15: FLdI2 arg_14
  loc_B92C18: LitI2_Byte 1
  loc_B92C1A: AddI2
  loc_B92C1B: CVarI2 var_B8
  loc_B92C1E: PopAdLdVar
  loc_B92C1F: LitI4 0
  loc_B92C24: LitI4 -1
  loc_B92C29: FLdRfVar var_10C
  loc_B92C2C: ILdI4 arg_24
  loc_B92C2F: FLdRfVar var_11C
  loc_B92C32: ImpAdCallFPR4  = Split(, , , )
  loc_B92C37: FLdRfVar var_11C
  loc_B92C3A: VarIndexLdRfVarLock
  loc_B92C42: FStR4 var_A8
  loc_B92C45: LitVarI2 var_170, 1
  loc_B92C4A: FLdI2 arg_10
  loc_B92C4D: LitI2_Byte 2
  loc_B92C4F: AddI2
  loc_B92C50: CI4UI1
  loc_B92C51: ILdRf var_A8
  loc_B92C54: FLdRfVar var_180
  loc_B92C57: ImpAdCallFPR4  = Mid(, , )
  loc_B92C5C: AryUnlock
  loc_B92C5F: FLdRfVar var_180
  loc_B92C62: CStrVarTmp
  loc_B92C63: FStStr var_90
  loc_B92C66: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = ""
  loc_B92C73: ILdRf var_90
  loc_B92C76: LitStr "O"
  loc_B92C79: EqStr
  loc_B92C7B: ILdRf var_90
  loc_B92C7E: LitStr "D"
  loc_B92C81: EqStr
  loc_B92C83: OrI4
  loc_B92C84: ILdRf var_90
  loc_B92C87: LitStr "R"
  loc_B92C8A: EqStr
  loc_B92C8C: OrI4
  loc_B92C8D: ILdRf var_90
  loc_B92C90: LitStr "S"
  loc_B92C93: EqStr
  loc_B92C95: ILdRf var_90
  loc_B92C98: LitStr "L"
  loc_B92C9B: EqStr
  loc_B92C9D: OrI4
  loc_B92C9E: FLdI2 arg_14
  loc_B92CA1: LitI2_Byte 1
  loc_B92CA3: AddI2
  loc_B92CA4: FLdI2 arg_1C
  loc_B92CA7: EqI2
  loc_B92CA8: AndI4
  loc_B92CA9: FLdI2 arg_10
  loc_B92CAC: LitI2_Byte 1
  loc_B92CAE: AddI2
  loc_B92CAF: FLdI2 arg_18
  loc_B92CB2: EqI2
  loc_B92CB3: AndI4
  loc_B92CB4: OrI4
  loc_B92CB5: BranchF loc_B93002
  loc_B92CB8: ILdRf var_90
  loc_B92CBB: LitStr "R"
  loc_B92CBE: EqStr
  loc_B92CC0: BranchF loc_B92E10
  loc_B92CC3: LitI4 0
  loc_B92CC8: FStStrCopy var_198
  loc_B92CCB: FLdRfVar var_198
  loc_B92CCE: ImpAdLdI4 MemVar_C0F044
  loc_B92CD1: LitStr "privaterooms\"
  loc_B92CD4: ConcatStr
  loc_B92CD5: FStStrNoPop var_18C
  loc_B92CD8: ILdI2 arg_C
  loc_B92CDB: CI4UI1
  loc_B92CDC: ImpAdLdI4 MemVar_C0F100
  loc_B92CDF: Ary1LdPr
  loc_B92CE0: MemLdFPR8 global_224
  loc_B92CE3: CStrR8
  loc_B92CE5: FStStrNoPop var_190
  loc_B92CE8: ConcatStr
  loc_B92CE9: FStStrNoPop var_194
  loc_B92CEC: LitStr "\rotation.txt"
  loc_B92CEF: ConcatStr
  loc_B92CF0: CVarStr var_11C
  loc_B92CF3: FLdI2 arg_10
  loc_B92CF6: LitI2_Byte 1
  loc_B92CF8: AddI2
  loc_B92CF9: CStrUI1
  loc_B92CFB: FStStrNoPop var_FC
  loc_B92CFE: LitStr ","
  loc_B92D01: ConcatStr
  loc_B92D02: FStStrNoPop var_184
  loc_B92D05: FLdI2 arg_14
  loc_B92D08: LitI2_Byte 1
  loc_B92D0A: AddI2
  loc_B92D0B: CStrUI1
  loc_B92D0D: FStStrNoPop var_188
  loc_B92D10: ConcatStr
  loc_B92D11: CVarStr var_10C
  loc_B92D14: LitVarStr var_B8, "furnies"
  loc_B92D19: PopAdLdVar
  loc_B92D1A: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B92D1F: CVarStr var_15C
  loc_B92D22: FStVar var_1A8
  loc_B92D26: FFreeStr var_FC = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_B92D37: FFreeVar var_10C = ""
  loc_B92D3E: FLdRfVar var_1A8
  loc_B92D41: LitVarStr var_B8, vbNullString
  loc_B92D46: HardType
  loc_B92D47: NeVarBool
  loc_B92D49: BranchF loc_B92E10
  loc_B92D4C: FLdRfVar var_184
  loc_B92D4F: FLdRfVar var_1AC
  loc_B92D52: LitI4 0
  loc_B92D57: LitI2_Byte 0
  loc_B92D59: LitI4 1
  loc_B92D5E: ImpAdLdI4 MemVar_C0F044
  loc_B92D61: LitStr "furni\"
  loc_B92D64: ConcatStr
  loc_B92D65: CVarStr var_10C
  loc_B92D68: FLdRfVar var_1A8
  loc_B92D6B: ConcatVar var_11C
  loc_B92D6F: LitVarStr var_B8, "\type.txt"
  loc_B92D74: ConcatVar var_15C
  loc_B92D78: CStrVarVal var_FC
  loc_B92D7C: ImpAdLdRf MemVar_C0F040
  loc_B92D7F: NewIfNullPr IFileSystem3
  loc_B92D82: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B92D87: FLdPr var_1AC
  loc_B92D8A:  = Me.ReadAll
  loc_B92D8F: FLdZeroAd var_184
  loc_B92D92: CVarStr var_170
  loc_B92D95: FStVar var_1BC
  loc_B92D99: FFree1Str var_FC
  loc_B92D9C: FFree1Ad var_1AC
  loc_B92D9F: FFreeVar var_10C = "": var_11C = ""
  loc_B92DA8: FLdRfVar var_1BC
  loc_B92DAB: LitVarStr var_B8, "rug"
  loc_B92DB0: HardType
  loc_B92DB1: EqVar var_10C
  loc_B92DB5: NotVar var_11C
  loc_B92DB9: FLdRfVar var_1BC
  loc_B92DBC: LitVarStr var_C8, "sit"
  loc_B92DC1: HardType
  loc_B92DC2: EqVar var_15C
  loc_B92DC6: FLdRfVar var_1BC
  loc_B92DC9: LitVarStr var_D8, "bed"
  loc_B92DCE: HardType
  loc_B92DCF: EqVar var_170
  loc_B92DD3: OrVar var_180
  loc_B92DD7: FLdI2 arg_14
  loc_B92DDA: FLdI2 arg_1C
  loc_B92DDD: LitI2_Byte 1
  loc_B92DDF: AddI2
  loc_B92DE0: EqI2
  loc_B92DE1: CVarBoolI2 var_1CC
  loc_B92DE5: AndVar var_1DC
  loc_B92DE9: FLdI2 arg_10
  loc_B92DEC: LitI2_Byte 1
  loc_B92DEE: AddI2
  loc_B92DEF: FLdI2 arg_18
  loc_B92DF2: EqI2
  loc_B92DF3: CVarBoolI2 var_1EC
  loc_B92DF7: AndVar var_1FC
  loc_B92DFB: NotVar var_20C
  loc_B92DFF: AndVar var_21C
  loc_B92E03: CBoolVarNull
  loc_B92E05: FFreeVar var_1CC = ""
  loc_B92E0C: BranchF loc_B92E10
  loc_B92E0F: ExitProc
  loc_B92E10: FLdI2 arg_10
  loc_B92E13: LitI2_Byte 1
  loc_B92E15: AddI2
  loc_B92E16: CStrUI1
  loc_B92E18: FStStrNoPop var_FC
  loc_B92E1B: LitStr ","
  loc_B92E1E: ConcatStr
  loc_B92E1F: FStStrNoPop var_184
  loc_B92E22: FLdI2 arg_14
  loc_B92E25: LitI2_Byte 1
  loc_B92E27: AddI2
  loc_B92E28: CStrUI1
  loc_B92E2A: FStStrNoPop var_188
  loc_B92E2D: ConcatStr
  loc_B92E2E: FStStr var_88
  loc_B92E31: FFreeStr var_FC = "": var_184 = ""
  loc_B92E3A: LitStr "3,3"
  loc_B92E3D: ILdI2 arg_C
  loc_B92E40: CI4UI1
  loc_B92E41: ImpAdLdI4 MemVar_C0F100
  loc_B92E44: Ary1LdPr
  loc_B92E45: MemStStrCopy
  loc_B92E49: ILdRf var_90
  loc_B92E4C: LitStr "R"
  loc_B92E4F: EqStr
  loc_B92E51: BranchF loc_B92F52
  loc_B92E54: LitI4 &HD
  loc_B92E59: FLdRfVar var_10C
  loc_B92E5C: ImpAdCallFPR4  = Chr()
  loc_B92E61: FLdI2 arg_14
  loc_B92E64: LitI2_Byte 1
  loc_B92E66: AddI2
  loc_B92E67: CVarI2 var_B8
  loc_B92E6A: PopAdLdVar
  loc_B92E6B: LitI4 0
  loc_B92E70: LitI4 -1
  loc_B92E75: FLdRfVar var_10C
  loc_B92E78: ILdI4 arg_28
  loc_B92E7B: FLdRfVar var_11C
  loc_B92E7E: ImpAdCallFPR4  = Split(, , , )
  loc_B92E83: FLdRfVar var_11C
  loc_B92E86: VarIndexLdRfVarLock
  loc_B92E8E: FStR4 var_A8
  loc_B92E91: LitVarI2 var_170, 1
  loc_B92E96: FLdI2 arg_10
  loc_B92E99: LitI2_Byte 2
  loc_B92E9B: AddI2
  loc_B92E9C: CI4UI1
  loc_B92E9D: ILdRf var_A8
  loc_B92EA0: FLdRfVar var_180
  loc_B92EA3: ImpAdCallFPR4  = Mid(, , )
  loc_B92EA8: AryUnlock
  loc_B92EAB: FLdRfVar var_180
  loc_B92EAE: CStrVarVal var_FC
  loc_B92EB2: ImpAdCallFPR4 push push Val()
  loc_B92EB7: FStFPR8 var_224
  loc_B92EBA: LitI4 0
  loc_B92EBF: LitI4 -1
  loc_B92EC4: LitI4 1
  loc_B92EC9: LitStr "."
  loc_B92ECC: LitStr ","
  loc_B92ECF: FLdFPR8 var_224
  loc_B92ED2: LitDate 0.4
  loc_B92EDB: AddR8
  loc_B92EDC: CStrR8
  loc_B92EDE: FStStrNoPop var_184
  loc_B92EE1: ImpAdCallI2 Replace(, , , , , )
  loc_B92EE6: FStStrNoPop var_188
  loc_B92EE9: ILdI2 arg_C
  loc_B92EEC: CI4UI1
  loc_B92EED: ImpAdLdI4 MemVar_C0F100
  loc_B92EF0: Ary1LdPr
  loc_B92EF1: MemStStrCopy
  loc_B92EF5: FFreeStr var_FC = "": var_184 = ""
  loc_B92EFE: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = ""
  loc_B92F0B: LitI4 1
  loc_B92F10: ILdI2 arg_C
  loc_B92F13: CI4UI1
  loc_B92F14: ImpAdLdI4 MemVar_C0F100
  loc_B92F17: Ary1LdPr
  loc_B92F18: MemLdStr global_296
  loc_B92F1B: LitStr "."
  loc_B92F1E: LitI4 0
  loc_B92F23: FnInStr4
  loc_B92F25: LitI4 0
  loc_B92F2A: EqI4
  loc_B92F2B: BranchF loc_B92F4F
  loc_B92F2E: ILdI2 arg_C
  loc_B92F31: CI4UI1
  loc_B92F32: ImpAdLdI4 MemVar_C0F100
  loc_B92F35: Ary1LdPr
  loc_B92F36: MemLdStr global_296
  loc_B92F39: LitStr ".0"
  loc_B92F3C: ConcatStr
  loc_B92F3D: FStStrNoPop var_FC
  loc_B92F40: ILdI2 arg_C
  loc_B92F43: CI4UI1
  loc_B92F44: ImpAdLdI4 MemVar_C0F100
  loc_B92F47: Ary1LdPr
  loc_B92F48: MemStStrCopy
  loc_B92F4C: FFree1Str var_FC
  loc_B92F4F: Branch loc_B92FD7
  loc_B92F52: LitI4 &HD
  loc_B92F57: FLdRfVar var_10C
  loc_B92F5A: ImpAdCallFPR4  = Chr()
  loc_B92F5F: FLdI2 arg_14
  loc_B92F62: LitI2_Byte 1
  loc_B92F64: AddI2
  loc_B92F65: CVarI2 var_B8
  loc_B92F68: PopAdLdVar
  loc_B92F69: LitI4 0
  loc_B92F6E: LitI4 -1
  loc_B92F73: FLdRfVar var_10C
  loc_B92F76: ILdI4 arg_28
  loc_B92F79: FLdRfVar var_11C
  loc_B92F7C: ImpAdCallFPR4  = Split(, , , )
  loc_B92F81: FLdRfVar var_11C
  loc_B92F84: VarIndexLdRfVarLock
  loc_B92F8C: FStR4 var_A8
  loc_B92F8F: LitVarI2 var_170, 1
  loc_B92F94: FLdI2 arg_10
  loc_B92F97: LitI2_Byte 2
  loc_B92F99: AddI2
  loc_B92F9A: CI4UI1
  loc_B92F9B: ILdRf var_A8
  loc_B92F9E: FLdRfVar var_180
  loc_B92FA1: ImpAdCallFPR4  = Mid(, , )
  loc_B92FA6: AryUnlock
  loc_B92FA9: FLdRfVar var_180
  loc_B92FAC: LitVarStr var_1CC, ".0"
  loc_B92FB1: ConcatVar var_1DC
  loc_B92FB5: CStrVarTmp
  loc_B92FB6: FStStrNoPop var_FC
  loc_B92FB9: ILdI2 arg_C
  loc_B92FBC: CI4UI1
  loc_B92FBD: ImpAdLdI4 MemVar_C0F100
  loc_B92FC0: Ary1LdPr
  loc_B92FC1: MemStStrCopy
  loc_B92FC5: FFree1Str var_FC
  loc_B92FC8: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = "": var_180 = ""
  loc_B92FD7: LitI4 0
  loc_B92FDC: ILdI2 arg_C
  loc_B92FDF: CI4UI1
  loc_B92FE0: ImpAdLdI4 MemVar_C0F100
  loc_B92FE3: Ary1LdPr
  loc_B92FE4: MemStI4 global_332
  loc_B92FE7: LitI2_Byte 0
  loc_B92FE9: ILdI2 arg_C
  loc_B92FEC: CI4UI1
  loc_B92FED: ImpAdLdI4 MemVar_C0F100
  loc_B92FF0: Ary1LdPr
  loc_B92FF1: MemStI2 global_308
  loc_B92FF4: LitI2_Byte 0
  loc_B92FF6: ILdI2 arg_C
  loc_B92FF9: CI4UI1
  loc_B92FFA: ImpAdLdI4 MemVar_C0F100
  loc_B92FFD: Ary1LdPr
  loc_B92FFE: MemStI2 global_312
  loc_B93001: ExitProc
  loc_B93002: FLdI2 arg_10
  loc_B93005: FLdI2 arg_18
  loc_B93008: GtI2
  loc_B93009: FLdI2 arg_14
  loc_B9300C: FLdI2 arg_1C
  loc_B9300F: LtI2
  loc_B93010: AndI4
  loc_B93011: BranchF loc_B93562
  loc_B93014: LitVarI2 var_D8, 1
  loc_B93019: FLdRfVar var_A4
  loc_B9301C: FLdRfVar var_A8
  loc_B9301F: ImpAdLdRf MemVar_C0F018
  loc_B93022: NewIfNullPr frmMain
  loc_B93025: from_stack_1v = frmMain.SockIGet()
  loc_B9302A: ILdRf var_A8
  loc_B9302D: CVarI4
  loc_B93031: ForVar var_284
  loc_B93037: FLdRfVar var_A4
  loc_B9303A: CI4Var
  loc_B9303C: ImpAdLdI4 MemVar_C0F100
  loc_B9303F: Ary1LdPr
  loc_B93040: MemLdFPR8 global_224
  loc_B93043: FLdI2 arg_20
  loc_B93046: CR8I2
  loc_B93047: EqR4
  loc_B93048: BranchF loc_B93078
  loc_B9304B: FLdRfVar var_A4
  loc_B9304E: CI4Var
  loc_B93050: ImpAdLdI4 MemVar_C0F100
  loc_B93053: Ary1LdPr
  loc_B93054: MemLdFPR8 global_232
  loc_B93057: FLdI2 arg_10
  loc_B9305A: LitI2_Byte 1
  loc_B9305C: SubI2
  loc_B9305D: CR8I2
  loc_B9305E: EqR4
  loc_B9305F: FLdRfVar var_A4
  loc_B93062: CI4Var
  loc_B93064: ImpAdLdI4 MemVar_C0F100
  loc_B93067: Ary1LdPr
  loc_B93068: MemLdFPR8 global_240
  loc_B9306B: FLdI2 arg_14
  loc_B9306E: LitI2_Byte 1
  loc_B93070: AddI2
  loc_B93071: CR8I2
  loc_B93072: EqR4
  loc_B93073: AndI4
  loc_B93074: BranchF loc_B93078
  loc_B93077: ExitProc
  loc_B93078: FLdRfVar var_A4
  loc_B9307B: NextStepVar var_284
  loc_B93081: FLdRfVar var_FC
  loc_B93084: ImpAdLdRf MemVar_C0F018
  loc_B93087: NewIfNullPr frmMain
  loc_B9308A: from_stack_1v = frmMain.HpetsGet()
  loc_B9308F: LitI4 0
  loc_B93094: LitI4 -1
  loc_B93099: LitVarStr var_B8, ";"
  loc_B9309E: FStVarCopyObj var_10C
  loc_B930A1: FLdRfVar var_10C
  loc_B930A4: ILdRf var_FC
  loc_B930A7: FLdRfVar var_11C
  loc_B930AA: ImpAdCallFPR4  = Split(, , , )
  loc_B930AF: FLdRfVar var_11C
  loc_B930B2: FStVar var_12C
  loc_B930B6: FFree1Str var_FC
  loc_B930B9: FFree1Var var_10C = ""
  loc_B930BC: LitVarI2 var_D8, 0
  loc_B930C1: FLdRfVar var_A4
  loc_B930C4: FLdRfVar var_12C
  loc_B930C7: CRefVarAry
  loc_B930C9: PopAdLd4
  loc_B930CA: LitI2_Byte 1
  loc_B930CC: FnUBound
  loc_B930CE: CVarI4
  loc_B930D2: ForVar var_2A4
  loc_B930D8: FLdRfVar var_A4
  loc_B930DB: CDargRef
  loc_B930DF: FLdRfVar var_12C
  loc_B930E2: VarIndexLdVar
  loc_B930E8: LitVarStr var_C8, vbNullString
  loc_B930ED: HardType
  loc_B930EE: NeVarBool
  loc_B930F0: FFree1Var var_10C = ""
  loc_B930F3: BranchF loc_B93168
  loc_B930F6: FLdRfVar var_A4
  loc_B930F9: CDargRef
  loc_B930FD: FLdRfVar var_12C
  loc_B93100: VarIndexLdVar
  loc_B93106: CI4Var
  loc_B93108: ImpAdLdI4 MemVar_C0F160
  loc_B9310B: Ary1LdPr
  loc_B9310C: MemLdFPR8 global_16
  loc_B9310F: FLdI2 arg_20
  loc_B93112: CR8I2
  loc_B93113: EqR4
  loc_B93114: FFree1Var var_10C = ""
  loc_B93117: BranchF loc_B93168
  loc_B9311A: FLdRfVar var_A4
  loc_B9311D: CDargRef
  loc_B93121: FLdRfVar var_12C
  loc_B93124: VarIndexLdVar
  loc_B9312A: CI4Var
  loc_B9312C: ImpAdLdI4 MemVar_C0F160
  loc_B9312F: Ary1LdPr
  loc_B93130: MemLdFPR8 global_44
  loc_B93133: FLdI2 arg_10
  loc_B93136: LitI2_Byte 1
  loc_B93138: SubI2
  loc_B93139: CR8I2
  loc_B9313A: EqR4
  loc_B9313B: FLdRfVar var_A4
  loc_B9313E: CDargRef
  loc_B93142: FLdRfVar var_12C
  loc_B93145: VarIndexLdVar
  loc_B9314B: CI4Var
  loc_B9314D: ImpAdLdI4 MemVar_C0F160
  loc_B93150: Ary1LdPr
  loc_B93151: MemLdFPR8 global_52
  loc_B93154: FLdI2 arg_14
  loc_B93157: LitI2_Byte 1
  loc_B93159: AddI2
  loc_B9315A: CR8I2
  loc_B9315B: EqR4
  loc_B9315C: AndI4
  loc_B9315D: FFreeVar var_10C = ""
  loc_B93164: BranchF loc_B93168
  loc_B93167: ExitProc
  loc_B93168: FLdRfVar var_A4
  loc_B9316B: NextStepVar var_2A4
  loc_B93171: LitI4 &HD
  loc_B93176: FLdRfVar var_10C
  loc_B93179: ImpAdCallFPR4  = Chr()
  loc_B9317E: FLdI2 arg_14
  loc_B93181: LitI2_Byte 1
  loc_B93183: AddI2
  loc_B93184: CVarI2 var_B8
  loc_B93187: PopAdLdVar
  loc_B93188: LitI4 0
  loc_B9318D: LitI4 -1
  loc_B93192: FLdRfVar var_10C
  loc_B93195: ILdI4 arg_24
  loc_B93198: FLdRfVar var_11C
  loc_B9319B: ImpAdCallFPR4  = Split(, , , )
  loc_B931A0: FLdRfVar var_11C
  loc_B931A3: VarIndexLdRfVarLock
  loc_B931AB: FStR4 var_A8
  loc_B931AE: LitVarI2 var_170, 1
  loc_B931B3: FLdI2 arg_10
  loc_B931B6: CI4UI1
  loc_B931B7: ILdRf var_A8
  loc_B931BA: FLdRfVar var_180
  loc_B931BD: ImpAdCallFPR4  = Mid(, , )
  loc_B931C2: AryUnlock
  loc_B931C5: FLdRfVar var_180
  loc_B931C8: CStrVarTmp
  loc_B931C9: FStStr var_90
  loc_B931CC: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = ""
  loc_B931D9: ILdRf var_90
  loc_B931DC: LitStr "O"
  loc_B931DF: EqStr
  loc_B931E1: ILdRf var_90
  loc_B931E4: LitStr "D"
  loc_B931E7: EqStr
  loc_B931E9: OrI4
  loc_B931EA: ILdRf var_90
  loc_B931ED: LitStr "R"
  loc_B931F0: EqStr
  loc_B931F2: OrI4
  loc_B931F3: ILdRf var_90
  loc_B931F6: LitStr "S"
  loc_B931F9: EqStr
  loc_B931FB: ILdRf var_90
  loc_B931FE: LitStr "L"
  loc_B93201: EqStr
  loc_B93203: OrI4
  loc_B93204: FLdI2 arg_14
  loc_B93207: LitI2_Byte 1
  loc_B93209: AddI2
  loc_B9320A: FLdI2 arg_1C
  loc_B9320D: EqI2
  loc_B9320E: AndI4
  loc_B9320F: FLdI2 arg_10
  loc_B93212: LitI2_Byte 1
  loc_B93214: SubI2
  loc_B93215: FLdI2 arg_18
  loc_B93218: EqI2
  loc_B93219: AndI4
  loc_B9321A: OrI4
  loc_B9321B: BranchF loc_B93562
  loc_B9321E: ILdRf var_90
  loc_B93221: LitStr "R"
  loc_B93224: EqStr
  loc_B93226: BranchF loc_B93376
  loc_B93229: LitI4 0
  loc_B9322E: FStStrCopy var_198
  loc_B93231: FLdRfVar var_198
  loc_B93234: ImpAdLdI4 MemVar_C0F044
  loc_B93237: LitStr "privaterooms\"
  loc_B9323A: ConcatStr
  loc_B9323B: FStStrNoPop var_18C
  loc_B9323E: ILdI2 arg_C
  loc_B93241: CI4UI1
  loc_B93242: ImpAdLdI4 MemVar_C0F100
  loc_B93245: Ary1LdPr
  loc_B93246: MemLdFPR8 global_224
  loc_B93249: CStrR8
  loc_B9324B: FStStrNoPop var_190
  loc_B9324E: ConcatStr
  loc_B9324F: FStStrNoPop var_194
  loc_B93252: LitStr "\rotation.txt"
  loc_B93255: ConcatStr
  loc_B93256: CVarStr var_11C
  loc_B93259: FLdI2 arg_10
  loc_B9325C: LitI2_Byte 1
  loc_B9325E: SubI2
  loc_B9325F: CStrUI1
  loc_B93261: FStStrNoPop var_FC
  loc_B93264: LitStr ","
  loc_B93267: ConcatStr
  loc_B93268: FStStrNoPop var_184
  loc_B9326B: FLdI2 arg_14
  loc_B9326E: LitI2_Byte 1
  loc_B93270: AddI2
  loc_B93271: CStrUI1
  loc_B93273: FStStrNoPop var_188
  loc_B93276: ConcatStr
  loc_B93277: CVarStr var_10C
  loc_B9327A: LitVarStr var_B8, "furnies"
  loc_B9327F: PopAdLdVar
  loc_B93280: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B93285: CVarStr var_15C
  loc_B93288: FStVar var_1A8
  loc_B9328C: FFreeStr var_FC = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_B9329D: FFreeVar var_10C = ""
  loc_B932A4: FLdRfVar var_1A8
  loc_B932A7: LitVarStr var_B8, vbNullString
  loc_B932AC: HardType
  loc_B932AD: NeVarBool
  loc_B932AF: BranchF loc_B93376
  loc_B932B2: FLdRfVar var_184
  loc_B932B5: FLdRfVar var_1AC
  loc_B932B8: LitI4 0
  loc_B932BD: LitI2_Byte 0
  loc_B932BF: LitI4 1
  loc_B932C4: ImpAdLdI4 MemVar_C0F044
  loc_B932C7: LitStr "furni\"
  loc_B932CA: ConcatStr
  loc_B932CB: CVarStr var_10C
  loc_B932CE: FLdRfVar var_1A8
  loc_B932D1: ConcatVar var_11C
  loc_B932D5: LitVarStr var_B8, "\type.txt"
  loc_B932DA: ConcatVar var_15C
  loc_B932DE: CStrVarVal var_FC
  loc_B932E2: ImpAdLdRf MemVar_C0F040
  loc_B932E5: NewIfNullPr IFileSystem3
  loc_B932E8: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B932ED: FLdPr var_1AC
  loc_B932F0:  = Me.ReadAll
  loc_B932F5: FLdZeroAd var_184
  loc_B932F8: CVarStr var_170
  loc_B932FB: FStVar var_1BC
  loc_B932FF: FFree1Str var_FC
  loc_B93302: FFree1Ad var_1AC
  loc_B93305: FFreeVar var_10C = "": var_11C = ""
  loc_B9330E: FLdRfVar var_1BC
  loc_B93311: LitVarStr var_B8, "rug"
  loc_B93316: HardType
  loc_B93317: EqVar var_10C
  loc_B9331B: NotVar var_11C
  loc_B9331F: FLdRfVar var_1BC
  loc_B93322: LitVarStr var_C8, "sit"
  loc_B93327: HardType
  loc_B93328: EqVar var_15C
  loc_B9332C: FLdRfVar var_1BC
  loc_B9332F: LitVarStr var_D8, "bed"
  loc_B93334: HardType
  loc_B93335: EqVar var_170
  loc_B93339: OrVar var_180
  loc_B9333D: FLdI2 arg_14
  loc_B93340: FLdI2 arg_1C
  loc_B93343: LitI2_Byte 1
  loc_B93345: AddI2
  loc_B93346: EqI2
  loc_B93347: CVarBoolI2 var_1CC
  loc_B9334B: AndVar var_1DC
  loc_B9334F: FLdI2 arg_10
  loc_B93352: LitI2_Byte 1
  loc_B93354: SubI2
  loc_B93355: FLdI2 arg_18
  loc_B93358: EqI2
  loc_B93359: CVarBoolI2 var_1EC
  loc_B9335D: AndVar var_1FC
  loc_B93361: NotVar var_20C
  loc_B93365: AndVar var_21C
  loc_B93369: CBoolVarNull
  loc_B9336B: FFreeVar var_1CC = ""
  loc_B93372: BranchF loc_B93376
  loc_B93375: ExitProc
  loc_B93376: FLdI2 arg_10
  loc_B93379: LitI2_Byte 1
  loc_B9337B: SubI2
  loc_B9337C: CStrUI1
  loc_B9337E: FStStrNoPop var_FC
  loc_B93381: LitStr ","
  loc_B93384: ConcatStr
  loc_B93385: FStStrNoPop var_184
  loc_B93388: FLdI2 arg_14
  loc_B9338B: LitI2_Byte 1
  loc_B9338D: AddI2
  loc_B9338E: CStrUI1
  loc_B93390: FStStrNoPop var_188
  loc_B93393: ConcatStr
  loc_B93394: FStStr var_88
  loc_B93397: FFreeStr var_FC = "": var_184 = ""
  loc_B933A0: LitStr "5,5"
  loc_B933A3: ILdI2 arg_C
  loc_B933A6: CI4UI1
  loc_B933A7: ImpAdLdI4 MemVar_C0F100
  loc_B933AA: Ary1LdPr
  loc_B933AB: MemStStrCopy
  loc_B933AF: ILdRf var_90
  loc_B933B2: LitStr "R"
  loc_B933B5: EqStr
  loc_B933B7: BranchF loc_B934B5
  loc_B933BA: LitI4 &HD
  loc_B933BF: FLdRfVar var_10C
  loc_B933C2: ImpAdCallFPR4  = Chr()
  loc_B933C7: FLdI2 arg_14
  loc_B933CA: LitI2_Byte 1
  loc_B933CC: AddI2
  loc_B933CD: CVarI2 var_B8
  loc_B933D0: PopAdLdVar
  loc_B933D1: LitI4 0
  loc_B933D6: LitI4 -1
  loc_B933DB: FLdRfVar var_10C
  loc_B933DE: ILdI4 arg_28
  loc_B933E1: FLdRfVar var_11C
  loc_B933E4: ImpAdCallFPR4  = Split(, , , )
  loc_B933E9: FLdRfVar var_11C
  loc_B933EC: VarIndexLdRfVarLock
  loc_B933F4: FStR4 var_A8
  loc_B933F7: LitVarI2 var_170, 1
  loc_B933FC: FLdI2 arg_10
  loc_B933FF: CI4UI1
  loc_B93400: ILdRf var_A8
  loc_B93403: FLdRfVar var_180
  loc_B93406: ImpAdCallFPR4  = Mid(, , )
  loc_B9340B: AryUnlock
  loc_B9340E: FLdRfVar var_180
  loc_B93411: CStrVarVal var_FC
  loc_B93415: ImpAdCallFPR4 push push Val()
  loc_B9341A: FStFPR8 var_224
  loc_B9341D: LitI4 0
  loc_B93422: LitI4 -1
  loc_B93427: LitI4 1
  loc_B9342C: LitStr "."
  loc_B9342F: LitStr ","
  loc_B93432: FLdFPR8 var_224
  loc_B93435: LitDate 0.4
  loc_B9343E: AddR8
  loc_B9343F: CStrR8
  loc_B93441: FStStrNoPop var_184
  loc_B93444: ImpAdCallI2 Replace(, , , , , )
  loc_B93449: FStStrNoPop var_188
  loc_B9344C: ILdI2 arg_C
  loc_B9344F: CI4UI1
  loc_B93450: ImpAdLdI4 MemVar_C0F100
  loc_B93453: Ary1LdPr
  loc_B93454: MemStStrCopy
  loc_B93458: FFreeStr var_FC = "": var_184 = ""
  loc_B93461: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = ""
  loc_B9346E: LitI4 1
  loc_B93473: ILdI2 arg_C
  loc_B93476: CI4UI1
  loc_B93477: ImpAdLdI4 MemVar_C0F100
  loc_B9347A: Ary1LdPr
  loc_B9347B: MemLdStr global_296
  loc_B9347E: LitStr "."
  loc_B93481: LitI4 0
  loc_B93486: FnInStr4
  loc_B93488: LitI4 0
  loc_B9348D: EqI4
  loc_B9348E: BranchF loc_B934B2
  loc_B93491: ILdI2 arg_C
  loc_B93494: CI4UI1
  loc_B93495: ImpAdLdI4 MemVar_C0F100
  loc_B93498: Ary1LdPr
  loc_B93499: MemLdStr global_296
  loc_B9349C: LitStr ".0"
  loc_B9349F: ConcatStr
  loc_B934A0: FStStrNoPop var_FC
  loc_B934A3: ILdI2 arg_C
  loc_B934A6: CI4UI1
  loc_B934A7: ImpAdLdI4 MemVar_C0F100
  loc_B934AA: Ary1LdPr
  loc_B934AB: MemStStrCopy
  loc_B934AF: FFree1Str var_FC
  loc_B934B2: Branch loc_B93537
  loc_B934B5: LitI4 &HD
  loc_B934BA: FLdRfVar var_10C
  loc_B934BD: ImpAdCallFPR4  = Chr()
  loc_B934C2: FLdI2 arg_14
  loc_B934C5: LitI2_Byte 1
  loc_B934C7: AddI2
  loc_B934C8: CVarI2 var_B8
  loc_B934CB: PopAdLdVar
  loc_B934CC: LitI4 0
  loc_B934D1: LitI4 -1
  loc_B934D6: FLdRfVar var_10C
  loc_B934D9: ILdI4 arg_28
  loc_B934DC: FLdRfVar var_11C
  loc_B934DF: ImpAdCallFPR4  = Split(, , , )
  loc_B934E4: FLdRfVar var_11C
  loc_B934E7: VarIndexLdRfVarLock
  loc_B934EF: FStR4 var_A8
  loc_B934F2: LitVarI2 var_170, 1
  loc_B934F7: FLdI2 arg_10
  loc_B934FA: CI4UI1
  loc_B934FB: ILdRf var_A8
  loc_B934FE: FLdRfVar var_180
  loc_B93501: ImpAdCallFPR4  = Mid(, , )
  loc_B93506: AryUnlock
  loc_B93509: FLdRfVar var_180
  loc_B9350C: LitVarStr var_1CC, ".0"
  loc_B93511: ConcatVar var_1DC
  loc_B93515: CStrVarTmp
  loc_B93516: FStStrNoPop var_FC
  loc_B93519: ILdI2 arg_C
  loc_B9351C: CI4UI1
  loc_B9351D: ImpAdLdI4 MemVar_C0F100
  loc_B93520: Ary1LdPr
  loc_B93521: MemStStrCopy
  loc_B93525: FFree1Str var_FC
  loc_B93528: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = "": var_180 = ""
  loc_B93537: LitI4 0
  loc_B9353C: ILdI2 arg_C
  loc_B9353F: CI4UI1
  loc_B93540: ImpAdLdI4 MemVar_C0F100
  loc_B93543: Ary1LdPr
  loc_B93544: MemStI4 global_332
  loc_B93547: LitI2_Byte 0
  loc_B93549: ILdI2 arg_C
  loc_B9354C: CI4UI1
  loc_B9354D: ImpAdLdI4 MemVar_C0F100
  loc_B93550: Ary1LdPr
  loc_B93551: MemStI2 global_308
  loc_B93554: LitI2_Byte 0
  loc_B93556: ILdI2 arg_C
  loc_B93559: CI4UI1
  loc_B9355A: ImpAdLdI4 MemVar_C0F100
  loc_B9355D: Ary1LdPr
  loc_B9355E: MemStI2 global_312
  loc_B93561: ExitProc
  loc_B93562: FLdI2 arg_10
  loc_B93565: FLdI2 arg_18
  loc_B93568: LtI2
  loc_B93569: FLdI2 arg_14
  loc_B9356C: FLdI2 arg_1C
  loc_B9356F: GtI2
  loc_B93570: AndI4
  loc_B93571: BranchF loc_B93ACB
  loc_B93574: LitVarI2 var_D8, 1
  loc_B93579: FLdRfVar var_A4
  loc_B9357C: FLdRfVar var_A8
  loc_B9357F: ImpAdLdRf MemVar_C0F018
  loc_B93582: NewIfNullPr frmMain
  loc_B93585: from_stack_1v = frmMain.SockIGet()
  loc_B9358A: ILdRf var_A8
  loc_B9358D: CVarI4
  loc_B93591: ForVar var_2C4
  loc_B93597: FLdRfVar var_A4
  loc_B9359A: CI4Var
  loc_B9359C: ImpAdLdI4 MemVar_C0F100
  loc_B9359F: Ary1LdPr
  loc_B935A0: MemLdFPR8 global_224
  loc_B935A3: FLdI2 arg_20
  loc_B935A6: CR8I2
  loc_B935A7: EqR4
  loc_B935A8: BranchF loc_B935D8
  loc_B935AB: FLdRfVar var_A4
  loc_B935AE: CI4Var
  loc_B935B0: ImpAdLdI4 MemVar_C0F100
  loc_B935B3: Ary1LdPr
  loc_B935B4: MemLdFPR8 global_232
  loc_B935B7: FLdI2 arg_10
  loc_B935BA: LitI2_Byte 1
  loc_B935BC: AddI2
  loc_B935BD: CR8I2
  loc_B935BE: EqR4
  loc_B935BF: FLdRfVar var_A4
  loc_B935C2: CI4Var
  loc_B935C4: ImpAdLdI4 MemVar_C0F100
  loc_B935C7: Ary1LdPr
  loc_B935C8: MemLdFPR8 global_240
  loc_B935CB: FLdI2 arg_14
  loc_B935CE: LitI2_Byte 1
  loc_B935D0: SubI2
  loc_B935D1: CR8I2
  loc_B935D2: EqR4
  loc_B935D3: AndI4
  loc_B935D4: BranchF loc_B935D8
  loc_B935D7: ExitProc
  loc_B935D8: FLdRfVar var_A4
  loc_B935DB: NextStepVar var_2C4
  loc_B935E1: FLdRfVar var_FC
  loc_B935E4: ImpAdLdRf MemVar_C0F018
  loc_B935E7: NewIfNullPr frmMain
  loc_B935EA: from_stack_1v = frmMain.HpetsGet()
  loc_B935EF: LitI4 0
  loc_B935F4: LitI4 -1
  loc_B935F9: LitVarStr var_B8, ";"
  loc_B935FE: FStVarCopyObj var_10C
  loc_B93601: FLdRfVar var_10C
  loc_B93604: ILdRf var_FC
  loc_B93607: FLdRfVar var_11C
  loc_B9360A: ImpAdCallFPR4  = Split(, , , )
  loc_B9360F: FLdRfVar var_11C
  loc_B93612: FStVar var_12C
  loc_B93616: FFree1Str var_FC
  loc_B93619: FFree1Var var_10C = ""
  loc_B9361C: LitVarI2 var_D8, 0
  loc_B93621: FLdRfVar var_A4
  loc_B93624: FLdRfVar var_12C
  loc_B93627: CRefVarAry
  loc_B93629: PopAdLd4
  loc_B9362A: LitI2_Byte 1
  loc_B9362C: FnUBound
  loc_B9362E: CVarI4
  loc_B93632: ForVar var_2E4
  loc_B93638: FLdRfVar var_A4
  loc_B9363B: CDargRef
  loc_B9363F: FLdRfVar var_12C
  loc_B93642: VarIndexLdVar
  loc_B93648: LitVarStr var_C8, vbNullString
  loc_B9364D: HardType
  loc_B9364E: NeVarBool
  loc_B93650: FFree1Var var_10C = ""
  loc_B93653: BranchF loc_B936C8
  loc_B93656: FLdRfVar var_A4
  loc_B93659: CDargRef
  loc_B9365D: FLdRfVar var_12C
  loc_B93660: VarIndexLdVar
  loc_B93666: CI4Var
  loc_B93668: ImpAdLdI4 MemVar_C0F160
  loc_B9366B: Ary1LdPr
  loc_B9366C: MemLdFPR8 global_16
  loc_B9366F: FLdI2 arg_20
  loc_B93672: CR8I2
  loc_B93673: EqR4
  loc_B93674: FFree1Var var_10C = ""
  loc_B93677: BranchF loc_B936C8
  loc_B9367A: FLdRfVar var_A4
  loc_B9367D: CDargRef
  loc_B93681: FLdRfVar var_12C
  loc_B93684: VarIndexLdVar
  loc_B9368A: CI4Var
  loc_B9368C: ImpAdLdI4 MemVar_C0F160
  loc_B9368F: Ary1LdPr
  loc_B93690: MemLdFPR8 global_44
  loc_B93693: FLdI2 arg_10
  loc_B93696: LitI2_Byte 1
  loc_B93698: AddI2
  loc_B93699: CR8I2
  loc_B9369A: EqR4
  loc_B9369B: FLdRfVar var_A4
  loc_B9369E: CDargRef
  loc_B936A2: FLdRfVar var_12C
  loc_B936A5: VarIndexLdVar
  loc_B936AB: CI4Var
  loc_B936AD: ImpAdLdI4 MemVar_C0F160
  loc_B936B0: Ary1LdPr
  loc_B936B1: MemLdFPR8 global_52
  loc_B936B4: FLdI2 arg_14
  loc_B936B7: LitI2_Byte 1
  loc_B936B9: SubI2
  loc_B936BA: CR8I2
  loc_B936BB: EqR4
  loc_B936BC: AndI4
  loc_B936BD: FFreeVar var_10C = ""
  loc_B936C4: BranchF loc_B936C8
  loc_B936C7: ExitProc
  loc_B936C8: FLdRfVar var_A4
  loc_B936CB: NextStepVar var_2E4
  loc_B936D1: LitI4 &HD
  loc_B936D6: FLdRfVar var_10C
  loc_B936D9: ImpAdCallFPR4  = Chr()
  loc_B936DE: FLdI2 arg_14
  loc_B936E1: LitI2_Byte 1
  loc_B936E3: SubI2
  loc_B936E4: CVarI2 var_B8
  loc_B936E7: PopAdLdVar
  loc_B936E8: LitI4 0
  loc_B936ED: LitI4 -1
  loc_B936F2: FLdRfVar var_10C
  loc_B936F5: ILdI4 arg_24
  loc_B936F8: FLdRfVar var_11C
  loc_B936FB: ImpAdCallFPR4  = Split(, , , )
  loc_B93700: FLdRfVar var_11C
  loc_B93703: VarIndexLdRfVarLock
  loc_B9370B: FStR4 var_A8
  loc_B9370E: LitVarI2 var_170, 1
  loc_B93713: FLdI2 arg_10
  loc_B93716: LitI2_Byte 2
  loc_B93718: AddI2
  loc_B93719: CI4UI1
  loc_B9371A: ILdRf var_A8
  loc_B9371D: FLdRfVar var_180
  loc_B93720: ImpAdCallFPR4  = Mid(, , )
  loc_B93725: AryUnlock
  loc_B93728: FLdRfVar var_180
  loc_B9372B: CStrVarTmp
  loc_B9372C: FStStr var_90
  loc_B9372F: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = ""
  loc_B9373C: ILdRf var_90
  loc_B9373F: LitStr "O"
  loc_B93742: EqStr
  loc_B93744: ILdRf var_90
  loc_B93747: LitStr "D"
  loc_B9374A: EqStr
  loc_B9374C: OrI4
  loc_B9374D: ILdRf var_90
  loc_B93750: LitStr "R"
  loc_B93753: EqStr
  loc_B93755: OrI4
  loc_B93756: ILdRf var_90
  loc_B93759: LitStr "S"
  loc_B9375C: EqStr
  loc_B9375E: ILdRf var_90
  loc_B93761: LitStr "L"
  loc_B93764: EqStr
  loc_B93766: OrI4
  loc_B93767: FLdI2 arg_14
  loc_B9376A: LitI2_Byte 1
  loc_B9376C: SubI2
  loc_B9376D: FLdI2 arg_1C
  loc_B93770: EqI2
  loc_B93771: AndI4
  loc_B93772: FLdI2 arg_10
  loc_B93775: LitI2_Byte 1
  loc_B93777: AddI2
  loc_B93778: FLdI2 arg_18
  loc_B9377B: EqI2
  loc_B9377C: AndI4
  loc_B9377D: OrI4
  loc_B9377E: BranchF loc_B93ACB
  loc_B93781: ILdRf var_90
  loc_B93784: LitStr "R"
  loc_B93787: EqStr
  loc_B93789: BranchF loc_B938D9
  loc_B9378C: LitI4 0
  loc_B93791: FStStrCopy var_198
  loc_B93794: FLdRfVar var_198
  loc_B93797: ImpAdLdI4 MemVar_C0F044
  loc_B9379A: LitStr "privaterooms\"
  loc_B9379D: ConcatStr
  loc_B9379E: FStStrNoPop var_18C
  loc_B937A1: ILdI2 arg_C
  loc_B937A4: CI4UI1
  loc_B937A5: ImpAdLdI4 MemVar_C0F100
  loc_B937A8: Ary1LdPr
  loc_B937A9: MemLdFPR8 global_224
  loc_B937AC: CStrR8
  loc_B937AE: FStStrNoPop var_190
  loc_B937B1: ConcatStr
  loc_B937B2: FStStrNoPop var_194
  loc_B937B5: LitStr "\rotation.txt"
  loc_B937B8: ConcatStr
  loc_B937B9: CVarStr var_11C
  loc_B937BC: FLdI2 arg_10
  loc_B937BF: LitI2_Byte 1
  loc_B937C1: AddI2
  loc_B937C2: CStrUI1
  loc_B937C4: FStStrNoPop var_FC
  loc_B937C7: LitStr ","
  loc_B937CA: ConcatStr
  loc_B937CB: FStStrNoPop var_184
  loc_B937CE: FLdI2 arg_14
  loc_B937D1: LitI2_Byte 1
  loc_B937D3: SubI2
  loc_B937D4: CStrUI1
  loc_B937D6: FStStrNoPop var_188
  loc_B937D9: ConcatStr
  loc_B937DA: CVarStr var_10C
  loc_B937DD: LitVarStr var_B8, "furnies"
  loc_B937E2: PopAdLdVar
  loc_B937E3: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B937E8: CVarStr var_15C
  loc_B937EB: FStVar var_1A8
  loc_B937EF: FFreeStr var_FC = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_B93800: FFreeVar var_10C = ""
  loc_B93807: FLdRfVar var_1A8
  loc_B9380A: LitVarStr var_B8, vbNullString
  loc_B9380F: HardType
  loc_B93810: NeVarBool
  loc_B93812: BranchF loc_B938D9
  loc_B93815: FLdRfVar var_184
  loc_B93818: FLdRfVar var_1AC
  loc_B9381B: LitI4 0
  loc_B93820: LitI2_Byte 0
  loc_B93822: LitI4 1
  loc_B93827: ImpAdLdI4 MemVar_C0F044
  loc_B9382A: LitStr "furni\"
  loc_B9382D: ConcatStr
  loc_B9382E: CVarStr var_10C
  loc_B93831: FLdRfVar var_1A8
  loc_B93834: ConcatVar var_11C
  loc_B93838: LitVarStr var_B8, "\type.txt"
  loc_B9383D: ConcatVar var_15C
  loc_B93841: CStrVarVal var_FC
  loc_B93845: ImpAdLdRf MemVar_C0F040
  loc_B93848: NewIfNullPr IFileSystem3
  loc_B9384B: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B93850: FLdPr var_1AC
  loc_B93853:  = Me.ReadAll
  loc_B93858: FLdZeroAd var_184
  loc_B9385B: CVarStr var_170
  loc_B9385E: FStVar var_1BC
  loc_B93862: FFree1Str var_FC
  loc_B93865: FFree1Ad var_1AC
  loc_B93868: FFreeVar var_10C = "": var_11C = ""
  loc_B93871: FLdRfVar var_1BC
  loc_B93874: LitVarStr var_B8, "rug"
  loc_B93879: HardType
  loc_B9387A: EqVar var_10C
  loc_B9387E: NotVar var_11C
  loc_B93882: FLdRfVar var_1BC
  loc_B93885: LitVarStr var_C8, "sit"
  loc_B9388A: HardType
  loc_B9388B: EqVar var_15C
  loc_B9388F: FLdRfVar var_1BC
  loc_B93892: LitVarStr var_D8, "bed"
  loc_B93897: HardType
  loc_B93898: EqVar var_170
  loc_B9389C: OrVar var_180
  loc_B938A0: FLdI2 arg_14
  loc_B938A3: FLdI2 arg_1C
  loc_B938A6: LitI2_Byte 1
  loc_B938A8: SubI2
  loc_B938A9: EqI2
  loc_B938AA: CVarBoolI2 var_1CC
  loc_B938AE: AndVar var_1DC
  loc_B938B2: FLdI2 arg_10
  loc_B938B5: LitI2_Byte 1
  loc_B938B7: AddI2
  loc_B938B8: FLdI2 arg_18
  loc_B938BB: EqI2
  loc_B938BC: CVarBoolI2 var_1EC
  loc_B938C0: AndVar var_1FC
  loc_B938C4: NotVar var_20C
  loc_B938C8: AndVar var_21C
  loc_B938CC: CBoolVarNull
  loc_B938CE: FFreeVar var_1CC = ""
  loc_B938D5: BranchF loc_B938D9
  loc_B938D8: ExitProc
  loc_B938D9: FLdI2 arg_10
  loc_B938DC: LitI2_Byte 1
  loc_B938DE: AddI2
  loc_B938DF: CStrUI1
  loc_B938E1: FStStrNoPop var_FC
  loc_B938E4: LitStr ","
  loc_B938E7: ConcatStr
  loc_B938E8: FStStrNoPop var_184
  loc_B938EB: FLdI2 arg_14
  loc_B938EE: LitI2_Byte 1
  loc_B938F0: SubI2
  loc_B938F1: CStrUI1
  loc_B938F3: FStStrNoPop var_188
  loc_B938F6: ConcatStr
  loc_B938F7: FStStr var_88
  loc_B938FA: FFreeStr var_FC = "": var_184 = ""
  loc_B93903: LitStr "1,1"
  loc_B93906: ILdI2 arg_C
  loc_B93909: CI4UI1
  loc_B9390A: ImpAdLdI4 MemVar_C0F100
  loc_B9390D: Ary1LdPr
  loc_B9390E: MemStStrCopy
  loc_B93912: ILdRf var_90
  loc_B93915: LitStr "R"
  loc_B93918: EqStr
  loc_B9391A: BranchF loc_B93A1B
  loc_B9391D: LitI4 &HD
  loc_B93922: FLdRfVar var_10C
  loc_B93925: ImpAdCallFPR4  = Chr()
  loc_B9392A: FLdI2 arg_14
  loc_B9392D: LitI2_Byte 1
  loc_B9392F: SubI2
  loc_B93930: CVarI2 var_B8
  loc_B93933: PopAdLdVar
  loc_B93934: LitI4 0
  loc_B93939: LitI4 -1
  loc_B9393E: FLdRfVar var_10C
  loc_B93941: ILdI4 arg_28
  loc_B93944: FLdRfVar var_11C
  loc_B93947: ImpAdCallFPR4  = Split(, , , )
  loc_B9394C: FLdRfVar var_11C
  loc_B9394F: VarIndexLdRfVarLock
  loc_B93957: FStR4 var_A8
  loc_B9395A: LitVarI2 var_170, 1
  loc_B9395F: FLdI2 arg_10
  loc_B93962: LitI2_Byte 2
  loc_B93964: AddI2
  loc_B93965: CI4UI1
  loc_B93966: ILdRf var_A8
  loc_B93969: FLdRfVar var_180
  loc_B9396C: ImpAdCallFPR4  = Mid(, , )
  loc_B93971: AryUnlock
  loc_B93974: FLdRfVar var_180
  loc_B93977: CStrVarVal var_FC
  loc_B9397B: ImpAdCallFPR4 push push Val()
  loc_B93980: FStFPR8 var_224
  loc_B93983: LitI4 0
  loc_B93988: LitI4 -1
  loc_B9398D: LitI4 1
  loc_B93992: LitStr "."
  loc_B93995: LitStr ","
  loc_B93998: FLdFPR8 var_224
  loc_B9399B: LitDate 0.4
  loc_B939A4: AddR8
  loc_B939A5: CStrR8
  loc_B939A7: FStStrNoPop var_184
  loc_B939AA: ImpAdCallI2 Replace(, , , , , )
  loc_B939AF: FStStrNoPop var_188
  loc_B939B2: ILdI2 arg_C
  loc_B939B5: CI4UI1
  loc_B939B6: ImpAdLdI4 MemVar_C0F100
  loc_B939B9: Ary1LdPr
  loc_B939BA: MemStStrCopy
  loc_B939BE: FFreeStr var_FC = "": var_184 = ""
  loc_B939C7: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = ""
  loc_B939D4: LitI4 1
  loc_B939D9: ILdI2 arg_C
  loc_B939DC: CI4UI1
  loc_B939DD: ImpAdLdI4 MemVar_C0F100
  loc_B939E0: Ary1LdPr
  loc_B939E1: MemLdStr global_296
  loc_B939E4: LitStr "."
  loc_B939E7: LitI4 0
  loc_B939EC: FnInStr4
  loc_B939EE: LitI4 0
  loc_B939F3: EqI4
  loc_B939F4: BranchF loc_B93A18
  loc_B939F7: ILdI2 arg_C
  loc_B939FA: CI4UI1
  loc_B939FB: ImpAdLdI4 MemVar_C0F100
  loc_B939FE: Ary1LdPr
  loc_B939FF: MemLdStr global_296
  loc_B93A02: LitStr ".0"
  loc_B93A05: ConcatStr
  loc_B93A06: FStStrNoPop var_FC
  loc_B93A09: ILdI2 arg_C
  loc_B93A0C: CI4UI1
  loc_B93A0D: ImpAdLdI4 MemVar_C0F100
  loc_B93A10: Ary1LdPr
  loc_B93A11: MemStStrCopy
  loc_B93A15: FFree1Str var_FC
  loc_B93A18: Branch loc_B93AA0
  loc_B93A1B: LitI4 &HD
  loc_B93A20: FLdRfVar var_10C
  loc_B93A23: ImpAdCallFPR4  = Chr()
  loc_B93A28: FLdI2 arg_14
  loc_B93A2B: LitI2_Byte 1
  loc_B93A2D: SubI2
  loc_B93A2E: CVarI2 var_B8
  loc_B93A31: PopAdLdVar
  loc_B93A32: LitI4 0
  loc_B93A37: LitI4 -1
  loc_B93A3C: FLdRfVar var_10C
  loc_B93A3F: ILdI4 arg_28
  loc_B93A42: FLdRfVar var_11C
  loc_B93A45: ImpAdCallFPR4  = Split(, , , )
  loc_B93A4A: FLdRfVar var_11C
  loc_B93A4D: VarIndexLdRfVarLock
  loc_B93A55: FStR4 var_A8
  loc_B93A58: LitVarI2 var_170, 1
  loc_B93A5D: FLdI2 arg_10
  loc_B93A60: LitI2_Byte 2
  loc_B93A62: AddI2
  loc_B93A63: CI4UI1
  loc_B93A64: ILdRf var_A8
  loc_B93A67: FLdRfVar var_180
  loc_B93A6A: ImpAdCallFPR4  = Mid(, , )
  loc_B93A6F: AryUnlock
  loc_B93A72: FLdRfVar var_180
  loc_B93A75: LitVarStr var_1CC, ".0"
  loc_B93A7A: ConcatVar var_1DC
  loc_B93A7E: CStrVarTmp
  loc_B93A7F: FStStrNoPop var_FC
  loc_B93A82: ILdI2 arg_C
  loc_B93A85: CI4UI1
  loc_B93A86: ImpAdLdI4 MemVar_C0F100
  loc_B93A89: Ary1LdPr
  loc_B93A8A: MemStStrCopy
  loc_B93A8E: FFree1Str var_FC
  loc_B93A91: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = "": var_180 = ""
  loc_B93AA0: LitI4 0
  loc_B93AA5: ILdI2 arg_C
  loc_B93AA8: CI4UI1
  loc_B93AA9: ImpAdLdI4 MemVar_C0F100
  loc_B93AAC: Ary1LdPr
  loc_B93AAD: MemStI4 global_332
  loc_B93AB0: LitI2_Byte 0
  loc_B93AB2: ILdI2 arg_C
  loc_B93AB5: CI4UI1
  loc_B93AB6: ImpAdLdI4 MemVar_C0F100
  loc_B93AB9: Ary1LdPr
  loc_B93ABA: MemStI2 global_308
  loc_B93ABD: LitI2_Byte 0
  loc_B93ABF: ILdI2 arg_C
  loc_B93AC2: CI4UI1
  loc_B93AC3: ImpAdLdI4 MemVar_C0F100
  loc_B93AC6: Ary1LdPr
  loc_B93AC7: MemStI2 global_312
  loc_B93ACA: ExitProc
  loc_B93ACB: FLdI2 arg_10
  loc_B93ACE: FLdI2 arg_18
  loc_B93AD1: GtI2
  loc_B93AD2: BranchF loc_B94008
  loc_B93AD5: LitVarI2 var_D8, 1
  loc_B93ADA: FLdRfVar var_A4
  loc_B93ADD: FLdRfVar var_A8
  loc_B93AE0: ImpAdLdRf MemVar_C0F018
  loc_B93AE3: NewIfNullPr frmMain
  loc_B93AE6: from_stack_1v = frmMain.SockIGet()
  loc_B93AEB: ILdRf var_A8
  loc_B93AEE: CVarI4
  loc_B93AF2: ForVar var_304
  loc_B93AF8: FLdRfVar var_A4
  loc_B93AFB: CI4Var
  loc_B93AFD: ImpAdLdI4 MemVar_C0F100
  loc_B93B00: Ary1LdPr
  loc_B93B01: MemLdFPR8 global_224
  loc_B93B04: FLdI2 arg_20
  loc_B93B07: CR8I2
  loc_B93B08: EqR4
  loc_B93B09: BranchF loc_B93B36
  loc_B93B0C: FLdRfVar var_A4
  loc_B93B0F: CI4Var
  loc_B93B11: ImpAdLdI4 MemVar_C0F100
  loc_B93B14: Ary1LdPr
  loc_B93B15: MemLdFPR8 global_232
  loc_B93B18: FLdI2 arg_10
  loc_B93B1B: LitI2_Byte 1
  loc_B93B1D: SubI2
  loc_B93B1E: CR8I2
  loc_B93B1F: EqR4
  loc_B93B20: FLdRfVar var_A4
  loc_B93B23: CI4Var
  loc_B93B25: ImpAdLdI4 MemVar_C0F100
  loc_B93B28: Ary1LdPr
  loc_B93B29: MemLdFPR8 global_240
  loc_B93B2C: FLdI2 arg_14
  loc_B93B2F: CR8I2
  loc_B93B30: EqR4
  loc_B93B31: AndI4
  loc_B93B32: BranchF loc_B93B36
  loc_B93B35: ExitProc
  loc_B93B36: FLdRfVar var_A4
  loc_B93B39: NextStepVar var_304
  loc_B93B3F: FLdRfVar var_FC
  loc_B93B42: ImpAdLdRf MemVar_C0F018
  loc_B93B45: NewIfNullPr frmMain
  loc_B93B48: from_stack_1v = frmMain.HpetsGet()
  loc_B93B4D: LitI4 0
  loc_B93B52: LitI4 -1
  loc_B93B57: LitVarStr var_B8, ";"
  loc_B93B5C: FStVarCopyObj var_10C
  loc_B93B5F: FLdRfVar var_10C
  loc_B93B62: ILdRf var_FC
  loc_B93B65: FLdRfVar var_11C
  loc_B93B68: ImpAdCallFPR4  = Split(, , , )
  loc_B93B6D: FLdRfVar var_11C
  loc_B93B70: FStVar var_12C
  loc_B93B74: FFree1Str var_FC
  loc_B93B77: FFree1Var var_10C = ""
  loc_B93B7A: LitVarI2 var_D8, 0
  loc_B93B7F: FLdRfVar var_A4
  loc_B93B82: FLdRfVar var_12C
  loc_B93B85: CRefVarAry
  loc_B93B87: PopAdLd4
  loc_B93B88: LitI2_Byte 1
  loc_B93B8A: FnUBound
  loc_B93B8C: CVarI4
  loc_B93B90: ForVar var_324
  loc_B93B96: FLdRfVar var_A4
  loc_B93B99: CDargRef
  loc_B93B9D: FLdRfVar var_12C
  loc_B93BA0: VarIndexLdVar
  loc_B93BA6: LitVarStr var_C8, vbNullString
  loc_B93BAB: HardType
  loc_B93BAC: NeVarBool
  loc_B93BAE: FFree1Var var_10C = ""
  loc_B93BB1: BranchF loc_B93C23
  loc_B93BB4: FLdRfVar var_A4
  loc_B93BB7: CDargRef
  loc_B93BBB: FLdRfVar var_12C
  loc_B93BBE: VarIndexLdVar
  loc_B93BC4: CI4Var
  loc_B93BC6: ImpAdLdI4 MemVar_C0F160
  loc_B93BC9: Ary1LdPr
  loc_B93BCA: MemLdFPR8 global_16
  loc_B93BCD: FLdI2 arg_20
  loc_B93BD0: CR8I2
  loc_B93BD1: EqR4
  loc_B93BD2: FFree1Var var_10C = ""
  loc_B93BD5: BranchF loc_B93C23
  loc_B93BD8: FLdRfVar var_A4
  loc_B93BDB: CDargRef
  loc_B93BDF: FLdRfVar var_12C
  loc_B93BE2: VarIndexLdVar
  loc_B93BE8: CI4Var
  loc_B93BEA: ImpAdLdI4 MemVar_C0F160
  loc_B93BED: Ary1LdPr
  loc_B93BEE: MemLdFPR8 global_44
  loc_B93BF1: FLdI2 arg_10
  loc_B93BF4: LitI2_Byte 1
  loc_B93BF6: SubI2
  loc_B93BF7: CR8I2
  loc_B93BF8: EqR4
  loc_B93BF9: FLdRfVar var_A4
  loc_B93BFC: CDargRef
  loc_B93C00: FLdRfVar var_12C
  loc_B93C03: VarIndexLdVar
  loc_B93C09: CI4Var
  loc_B93C0B: ImpAdLdI4 MemVar_C0F160
  loc_B93C0E: Ary1LdPr
  loc_B93C0F: MemLdFPR8 global_52
  loc_B93C12: FLdI2 arg_14
  loc_B93C15: CR8I2
  loc_B93C16: EqR4
  loc_B93C17: AndI4
  loc_B93C18: FFreeVar var_10C = ""
  loc_B93C1F: BranchF loc_B93C23
  loc_B93C22: ExitProc
  loc_B93C23: FLdRfVar var_A4
  loc_B93C26: NextStepVar var_324
  loc_B93C2C: LitI4 &HD
  loc_B93C31: FLdRfVar var_10C
  loc_B93C34: ImpAdCallFPR4  = Chr()
  loc_B93C39: FLdRfVar arg_14
  loc_B93C3C: CDargRef
  loc_B93C40: LitI4 0
  loc_B93C45: LitI4 -1
  loc_B93C4A: FLdRfVar var_10C
  loc_B93C4D: ILdI4 arg_24
  loc_B93C50: FLdRfVar var_11C
  loc_B93C53: ImpAdCallFPR4  = Split(, , , )
  loc_B93C58: FLdRfVar var_11C
  loc_B93C5B: VarIndexLdRfVarLock
  loc_B93C63: FStR4 var_A8
  loc_B93C66: LitVarI2 var_170, 1
  loc_B93C6B: FLdI2 arg_10
  loc_B93C6E: CI4UI1
  loc_B93C6F: ILdRf var_A8
  loc_B93C72: FLdRfVar var_180
  loc_B93C75: ImpAdCallFPR4  = Mid(, , )
  loc_B93C7A: AryUnlock
  loc_B93C7D: FLdRfVar var_180
  loc_B93C80: CStrVarTmp
  loc_B93C81: FStStr var_90
  loc_B93C84: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = ""
  loc_B93C91: ILdRf var_90
  loc_B93C94: LitStr "O"
  loc_B93C97: EqStr
  loc_B93C99: ILdRf var_90
  loc_B93C9C: LitStr "D"
  loc_B93C9F: EqStr
  loc_B93CA1: OrI4
  loc_B93CA2: ILdRf var_90
  loc_B93CA5: LitStr "R"
  loc_B93CA8: EqStr
  loc_B93CAA: OrI4
  loc_B93CAB: ILdRf var_90
  loc_B93CAE: LitStr "S"
  loc_B93CB1: EqStr
  loc_B93CB3: ILdRf var_90
  loc_B93CB6: LitStr "L"
  loc_B93CB9: EqStr
  loc_B93CBB: OrI4
  loc_B93CBC: FLdI2 arg_14
  loc_B93CBF: FLdI2 arg_1C
  loc_B93CC2: EqI2
  loc_B93CC3: AndI4
  loc_B93CC4: FLdI2 arg_10
  loc_B93CC7: LitI2_Byte 1
  loc_B93CC9: SubI2
  loc_B93CCA: FLdI2 arg_18
  loc_B93CCD: EqI2
  loc_B93CCE: AndI4
  loc_B93CCF: OrI4
  loc_B93CD0: BranchF loc_B94008
  loc_B93CD3: ILdRf var_90
  loc_B93CD6: LitStr "R"
  loc_B93CD9: EqStr
  loc_B93CDB: BranchF loc_B93E25
  loc_B93CDE: LitI4 0
  loc_B93CE3: FStStrCopy var_198
  loc_B93CE6: FLdRfVar var_198
  loc_B93CE9: ImpAdLdI4 MemVar_C0F044
  loc_B93CEC: LitStr "privaterooms\"
  loc_B93CEF: ConcatStr
  loc_B93CF0: FStStrNoPop var_18C
  loc_B93CF3: ILdI2 arg_C
  loc_B93CF6: CI4UI1
  loc_B93CF7: ImpAdLdI4 MemVar_C0F100
  loc_B93CFA: Ary1LdPr
  loc_B93CFB: MemLdFPR8 global_224
  loc_B93CFE: CStrR8
  loc_B93D00: FStStrNoPop var_190
  loc_B93D03: ConcatStr
  loc_B93D04: FStStrNoPop var_194
  loc_B93D07: LitStr "\rotation.txt"
  loc_B93D0A: ConcatStr
  loc_B93D0B: CVarStr var_11C
  loc_B93D0E: FLdI2 arg_10
  loc_B93D11: LitI2_Byte 1
  loc_B93D13: SubI2
  loc_B93D14: CStrUI1
  loc_B93D16: FStStrNoPop var_FC
  loc_B93D19: LitStr ","
  loc_B93D1C: ConcatStr
  loc_B93D1D: FStStrNoPop var_184
  loc_B93D20: FLdI2 arg_14
  loc_B93D23: CStrUI1
  loc_B93D25: FStStrNoPop var_188
  loc_B93D28: ConcatStr
  loc_B93D29: CVarStr var_10C
  loc_B93D2C: LitVarStr var_B8, "furnies"
  loc_B93D31: PopAdLdVar
  loc_B93D32: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B93D37: CVarStr var_15C
  loc_B93D3A: FStVar var_1A8
  loc_B93D3E: FFreeStr var_FC = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_B93D4F: FFreeVar var_10C = ""
  loc_B93D56: FLdRfVar var_1A8
  loc_B93D59: LitVarStr var_B8, vbNullString
  loc_B93D5E: HardType
  loc_B93D5F: NeVarBool
  loc_B93D61: BranchF loc_B93E25
  loc_B93D64: FLdRfVar var_184
  loc_B93D67: FLdRfVar var_1AC
  loc_B93D6A: LitI4 0
  loc_B93D6F: LitI2_Byte 0
  loc_B93D71: LitI4 1
  loc_B93D76: ImpAdLdI4 MemVar_C0F044
  loc_B93D79: LitStr "furni\"
  loc_B93D7C: ConcatStr
  loc_B93D7D: CVarStr var_10C
  loc_B93D80: FLdRfVar var_1A8
  loc_B93D83: ConcatVar var_11C
  loc_B93D87: LitVarStr var_B8, "\type.txt"
  loc_B93D8C: ConcatVar var_15C
  loc_B93D90: CStrVarVal var_FC
  loc_B93D94: ImpAdLdRf MemVar_C0F040
  loc_B93D97: NewIfNullPr IFileSystem3
  loc_B93D9A: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B93D9F: FLdPr var_1AC
  loc_B93DA2:  = Me.ReadAll
  loc_B93DA7: FLdZeroAd var_184
  loc_B93DAA: CVarStr var_170
  loc_B93DAD: FStVar var_1BC
  loc_B93DB1: FFree1Str var_FC
  loc_B93DB4: FFree1Ad var_1AC
  loc_B93DB7: FFreeVar var_10C = "": var_11C = ""
  loc_B93DC0: FLdRfVar var_1BC
  loc_B93DC3: LitVarStr var_B8, "rug"
  loc_B93DC8: HardType
  loc_B93DC9: EqVar var_10C
  loc_B93DCD: NotVar var_11C
  loc_B93DD1: FLdRfVar var_1BC
  loc_B93DD4: LitVarStr var_C8, "sit"
  loc_B93DD9: HardType
  loc_B93DDA: EqVar var_15C
  loc_B93DDE: FLdRfVar var_1BC
  loc_B93DE1: LitVarStr var_D8, "bed"
  loc_B93DE6: HardType
  loc_B93DE7: EqVar var_170
  loc_B93DEB: OrVar var_180
  loc_B93DEF: FLdI2 arg_14
  loc_B93DF2: FLdI2 arg_1C
  loc_B93DF5: EqI2
  loc_B93DF6: CVarBoolI2 var_1CC
  loc_B93DFA: AndVar var_1DC
  loc_B93DFE: FLdI2 arg_10
  loc_B93E01: LitI2_Byte 1
  loc_B93E03: SubI2
  loc_B93E04: FLdI2 arg_18
  loc_B93E07: EqI2
  loc_B93E08: CVarBoolI2 var_1EC
  loc_B93E0C: AndVar var_1FC
  loc_B93E10: NotVar var_20C
  loc_B93E14: AndVar var_21C
  loc_B93E18: CBoolVarNull
  loc_B93E1A: FFreeVar var_1CC = ""
  loc_B93E21: BranchF loc_B93E25
  loc_B93E24: ExitProc
  loc_B93E25: FLdI2 arg_10
  loc_B93E28: LitI2_Byte 1
  loc_B93E2A: SubI2
  loc_B93E2B: CStrUI1
  loc_B93E2D: FStStrNoPop var_FC
  loc_B93E30: LitStr ","
  loc_B93E33: ConcatStr
  loc_B93E34: FStStrNoPop var_184
  loc_B93E37: FLdI2 arg_14
  loc_B93E3A: CStrUI1
  loc_B93E3C: FStStrNoPop var_188
  loc_B93E3F: ConcatStr
  loc_B93E40: FStStr var_88
  loc_B93E43: FFreeStr var_FC = "": var_184 = ""
  loc_B93E4C: LitStr "6,6"
  loc_B93E4F: ILdI2 arg_C
  loc_B93E52: CI4UI1
  loc_B93E53: ImpAdLdI4 MemVar_C0F100
  loc_B93E56: Ary1LdPr
  loc_B93E57: MemStStrCopy
  loc_B93E5B: ILdRf var_90
  loc_B93E5E: LitStr "R"
  loc_B93E61: EqStr
  loc_B93E63: BranchF loc_B93F5E
  loc_B93E66: LitI4 &HD
  loc_B93E6B: FLdRfVar var_10C
  loc_B93E6E: ImpAdCallFPR4  = Chr()
  loc_B93E73: FLdRfVar arg_14
  loc_B93E76: CDargRef
  loc_B93E7A: LitI4 0
  loc_B93E7F: LitI4 -1
  loc_B93E84: FLdRfVar var_10C
  loc_B93E87: ILdI4 arg_28
  loc_B93E8A: FLdRfVar var_11C
  loc_B93E8D: ImpAdCallFPR4  = Split(, , , )
  loc_B93E92: FLdRfVar var_11C
  loc_B93E95: VarIndexLdRfVarLock
  loc_B93E9D: FStR4 var_A8
  loc_B93EA0: LitVarI2 var_170, 1
  loc_B93EA5: FLdI2 arg_10
  loc_B93EA8: CI4UI1
  loc_B93EA9: ILdRf var_A8
  loc_B93EAC: FLdRfVar var_180
  loc_B93EAF: ImpAdCallFPR4  = Mid(, , )
  loc_B93EB4: AryUnlock
  loc_B93EB7: FLdRfVar var_180
  loc_B93EBA: CStrVarVal var_FC
  loc_B93EBE: ImpAdCallFPR4 push push Val()
  loc_B93EC3: FStFPR8 var_224
  loc_B93EC6: LitI4 0
  loc_B93ECB: LitI4 -1
  loc_B93ED0: LitI4 1
  loc_B93ED5: LitStr "."
  loc_B93ED8: LitStr ","
  loc_B93EDB: FLdFPR8 var_224
  loc_B93EDE: LitDate 0.4
  loc_B93EE7: AddR8
  loc_B93EE8: CStrR8
  loc_B93EEA: FStStrNoPop var_184
  loc_B93EED: ImpAdCallI2 Replace(, , , , , )
  loc_B93EF2: FStStrNoPop var_188
  loc_B93EF5: ILdI2 arg_C
  loc_B93EF8: CI4UI1
  loc_B93EF9: ImpAdLdI4 MemVar_C0F100
  loc_B93EFC: Ary1LdPr
  loc_B93EFD: MemStStrCopy
  loc_B93F01: FFreeStr var_FC = "": var_184 = ""
  loc_B93F0A: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = ""
  loc_B93F17: LitI4 1
  loc_B93F1C: ILdI2 arg_C
  loc_B93F1F: CI4UI1
  loc_B93F20: ImpAdLdI4 MemVar_C0F100
  loc_B93F23: Ary1LdPr
  loc_B93F24: MemLdStr global_296
  loc_B93F27: LitStr "."
  loc_B93F2A: LitI4 0
  loc_B93F2F: FnInStr4
  loc_B93F31: LitI4 0
  loc_B93F36: EqI4
  loc_B93F37: BranchF loc_B93F5B
  loc_B93F3A: ILdI2 arg_C
  loc_B93F3D: CI4UI1
  loc_B93F3E: ImpAdLdI4 MemVar_C0F100
  loc_B93F41: Ary1LdPr
  loc_B93F42: MemLdStr global_296
  loc_B93F45: LitStr ".0"
  loc_B93F48: ConcatStr
  loc_B93F49: FStStrNoPop var_FC
  loc_B93F4C: ILdI2 arg_C
  loc_B93F4F: CI4UI1
  loc_B93F50: ImpAdLdI4 MemVar_C0F100
  loc_B93F53: Ary1LdPr
  loc_B93F54: MemStStrCopy
  loc_B93F58: FFree1Str var_FC
  loc_B93F5B: Branch loc_B93FDD
  loc_B93F5E: LitI4 &HD
  loc_B93F63: FLdRfVar var_10C
  loc_B93F66: ImpAdCallFPR4  = Chr()
  loc_B93F6B: FLdRfVar arg_14
  loc_B93F6E: CDargRef
  loc_B93F72: LitI4 0
  loc_B93F77: LitI4 -1
  loc_B93F7C: FLdRfVar var_10C
  loc_B93F7F: ILdI4 arg_28
  loc_B93F82: FLdRfVar var_11C
  loc_B93F85: ImpAdCallFPR4  = Split(, , , )
  loc_B93F8A: FLdRfVar var_11C
  loc_B93F8D: VarIndexLdRfVarLock
  loc_B93F95: FStR4 var_A8
  loc_B93F98: LitVarI2 var_170, 1
  loc_B93F9D: FLdI2 arg_10
  loc_B93FA0: CI4UI1
  loc_B93FA1: ILdRf var_A8
  loc_B93FA4: FLdRfVar var_180
  loc_B93FA7: ImpAdCallFPR4  = Mid(, , )
  loc_B93FAC: AryUnlock
  loc_B93FAF: FLdRfVar var_180
  loc_B93FB2: LitVarStr var_D8, ".0"
  loc_B93FB7: ConcatVar var_1DC
  loc_B93FBB: CStrVarTmp
  loc_B93FBC: FStStrNoPop var_FC
  loc_B93FBF: ILdI2 arg_C
  loc_B93FC2: CI4UI1
  loc_B93FC3: ImpAdLdI4 MemVar_C0F100
  loc_B93FC6: Ary1LdPr
  loc_B93FC7: MemStStrCopy
  loc_B93FCB: FFree1Str var_FC
  loc_B93FCE: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = "": var_180 = ""
  loc_B93FDD: LitI4 0
  loc_B93FE2: ILdI2 arg_C
  loc_B93FE5: CI4UI1
  loc_B93FE6: ImpAdLdI4 MemVar_C0F100
  loc_B93FE9: Ary1LdPr
  loc_B93FEA: MemStI4 global_332
  loc_B93FED: LitI2_Byte 0
  loc_B93FEF: ILdI2 arg_C
  loc_B93FF2: CI4UI1
  loc_B93FF3: ImpAdLdI4 MemVar_C0F100
  loc_B93FF6: Ary1LdPr
  loc_B93FF7: MemStI2 global_308
  loc_B93FFA: LitI2_Byte 0
  loc_B93FFC: ILdI2 arg_C
  loc_B93FFF: CI4UI1
  loc_B94000: ImpAdLdI4 MemVar_C0F100
  loc_B94003: Ary1LdPr
  loc_B94004: MemStI2 global_312
  loc_B94007: ExitProc
  loc_B94008: FLdI2 arg_10
  loc_B9400B: FLdI2 arg_18
  loc_B9400E: LtI2
  loc_B9400F: BranchF loc_B9454E
  loc_B94012: LitVarI2 var_D8, 1
  loc_B94017: FLdRfVar var_A4
  loc_B9401A: FLdRfVar var_A8
  loc_B9401D: ImpAdLdRf MemVar_C0F018
  loc_B94020: NewIfNullPr frmMain
  loc_B94023: from_stack_1v = frmMain.SockIGet()
  loc_B94028: ILdRf var_A8
  loc_B9402B: CVarI4
  loc_B9402F: ForVar var_344
  loc_B94035: FLdRfVar var_A4
  loc_B94038: CI4Var
  loc_B9403A: ImpAdLdI4 MemVar_C0F100
  loc_B9403D: Ary1LdPr
  loc_B9403E: MemLdFPR8 global_224
  loc_B94041: FLdI2 arg_20
  loc_B94044: CR8I2
  loc_B94045: EqR4
  loc_B94046: BranchF loc_B94073
  loc_B94049: FLdRfVar var_A4
  loc_B9404C: CI4Var
  loc_B9404E: ImpAdLdI4 MemVar_C0F100
  loc_B94051: Ary1LdPr
  loc_B94052: MemLdFPR8 global_232
  loc_B94055: FLdI2 arg_10
  loc_B94058: LitI2_Byte 1
  loc_B9405A: AddI2
  loc_B9405B: CR8I2
  loc_B9405C: EqR4
  loc_B9405D: FLdRfVar var_A4
  loc_B94060: CI4Var
  loc_B94062: ImpAdLdI4 MemVar_C0F100
  loc_B94065: Ary1LdPr
  loc_B94066: MemLdFPR8 global_240
  loc_B94069: FLdI2 arg_14
  loc_B9406C: CR8I2
  loc_B9406D: EqR4
  loc_B9406E: AndI4
  loc_B9406F: BranchF loc_B94073
  loc_B94072: ExitProc
  loc_B94073: FLdRfVar var_A4
  loc_B94076: NextStepVar var_344
  loc_B9407C: FLdRfVar var_FC
  loc_B9407F: ImpAdLdRf MemVar_C0F018
  loc_B94082: NewIfNullPr frmMain
  loc_B94085: from_stack_1v = frmMain.HpetsGet()
  loc_B9408A: LitI4 0
  loc_B9408F: LitI4 -1
  loc_B94094: LitVarStr var_B8, ";"
  loc_B94099: FStVarCopyObj var_10C
  loc_B9409C: FLdRfVar var_10C
  loc_B9409F: ILdRf var_FC
  loc_B940A2: FLdRfVar var_11C
  loc_B940A5: ImpAdCallFPR4  = Split(, , , )
  loc_B940AA: FLdRfVar var_11C
  loc_B940AD: FStVar var_12C
  loc_B940B1: FFree1Str var_FC
  loc_B940B4: FFree1Var var_10C = ""
  loc_B940B7: LitVarI2 var_D8, 0
  loc_B940BC: FLdRfVar var_A4
  loc_B940BF: FLdRfVar var_12C
  loc_B940C2: CRefVarAry
  loc_B940C4: PopAdLd4
  loc_B940C5: LitI2_Byte 1
  loc_B940C7: FnUBound
  loc_B940C9: CVarI4
  loc_B940CD: ForVar var_364
  loc_B940D3: FLdRfVar var_A4
  loc_B940D6: CDargRef
  loc_B940DA: FLdRfVar var_12C
  loc_B940DD: VarIndexLdVar
  loc_B940E3: LitVarStr var_C8, vbNullString
  loc_B940E8: HardType
  loc_B940E9: NeVarBool
  loc_B940EB: FFree1Var var_10C = ""
  loc_B940EE: BranchF loc_B94160
  loc_B940F1: FLdRfVar var_A4
  loc_B940F4: CDargRef
  loc_B940F8: FLdRfVar var_12C
  loc_B940FB: VarIndexLdVar
  loc_B94101: CI4Var
  loc_B94103: ImpAdLdI4 MemVar_C0F160
  loc_B94106: Ary1LdPr
  loc_B94107: MemLdFPR8 global_16
  loc_B9410A: FLdI2 arg_20
  loc_B9410D: CR8I2
  loc_B9410E: EqR4
  loc_B9410F: FFree1Var var_10C = ""
  loc_B94112: BranchF loc_B94160
  loc_B94115: FLdRfVar var_A4
  loc_B94118: CDargRef
  loc_B9411C: FLdRfVar var_12C
  loc_B9411F: VarIndexLdVar
  loc_B94125: CI4Var
  loc_B94127: ImpAdLdI4 MemVar_C0F160
  loc_B9412A: Ary1LdPr
  loc_B9412B: MemLdFPR8 global_44
  loc_B9412E: FLdI2 arg_10
  loc_B94131: LitI2_Byte 1
  loc_B94133: AddI2
  loc_B94134: CR8I2
  loc_B94135: EqR4
  loc_B94136: FLdRfVar var_A4
  loc_B94139: CDargRef
  loc_B9413D: FLdRfVar var_12C
  loc_B94140: VarIndexLdVar
  loc_B94146: CI4Var
  loc_B94148: ImpAdLdI4 MemVar_C0F160
  loc_B9414B: Ary1LdPr
  loc_B9414C: MemLdFPR8 global_52
  loc_B9414F: FLdI2 arg_14
  loc_B94152: CR8I2
  loc_B94153: EqR4
  loc_B94154: AndI4
  loc_B94155: FFreeVar var_10C = ""
  loc_B9415C: BranchF loc_B94160
  loc_B9415F: ExitProc
  loc_B94160: FLdRfVar var_A4
  loc_B94163: NextStepVar var_364
  loc_B94169: LitI4 &HD
  loc_B9416E: FLdRfVar var_10C
  loc_B94171: ImpAdCallFPR4  = Chr()
  loc_B94176: FLdRfVar arg_14
  loc_B94179: CDargRef
  loc_B9417D: LitI4 0
  loc_B94182: LitI4 -1
  loc_B94187: FLdRfVar var_10C
  loc_B9418A: ILdI4 arg_24
  loc_B9418D: FLdRfVar var_11C
  loc_B94190: ImpAdCallFPR4  = Split(, , , )
  loc_B94195: FLdRfVar var_11C
  loc_B94198: VarIndexLdRfVarLock
  loc_B941A0: FStR4 var_A8
  loc_B941A3: LitVarI2 var_170, 1
  loc_B941A8: FLdI2 arg_10
  loc_B941AB: LitI2_Byte 2
  loc_B941AD: AddI2
  loc_B941AE: CI4UI1
  loc_B941AF: ILdRf var_A8
  loc_B941B2: FLdRfVar var_180
  loc_B941B5: ImpAdCallFPR4  = Mid(, , )
  loc_B941BA: AryUnlock
  loc_B941BD: FLdRfVar var_180
  loc_B941C0: CStrVarTmp
  loc_B941C1: FStStr var_90
  loc_B941C4: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = ""
  loc_B941D1: ILdRf var_90
  loc_B941D4: LitStr "O"
  loc_B941D7: EqStr
  loc_B941D9: ILdRf var_90
  loc_B941DC: LitStr "D"
  loc_B941DF: EqStr
  loc_B941E1: OrI4
  loc_B941E2: ILdRf var_90
  loc_B941E5: LitStr "R"
  loc_B941E8: EqStr
  loc_B941EA: OrI4
  loc_B941EB: ILdRf var_90
  loc_B941EE: LitStr "S"
  loc_B941F1: EqStr
  loc_B941F3: ILdRf var_90
  loc_B941F6: LitStr "L"
  loc_B941F9: EqStr
  loc_B941FB: OrI4
  loc_B941FC: FLdI2 arg_14
  loc_B941FF: FLdI2 arg_1C
  loc_B94202: EqI2
  loc_B94203: AndI4
  loc_B94204: FLdI2 arg_10
  loc_B94207: LitI2_Byte 1
  loc_B94209: AddI2
  loc_B9420A: FLdI2 arg_18
  loc_B9420D: EqI2
  loc_B9420E: AndI4
  loc_B9420F: OrI4
  loc_B94210: BranchF loc_B9454E
  loc_B94213: ILdRf var_90
  loc_B94216: LitStr "R"
  loc_B94219: EqStr
  loc_B9421B: BranchF loc_B94365
  loc_B9421E: LitI4 0
  loc_B94223: FStStrCopy var_198
  loc_B94226: FLdRfVar var_198
  loc_B94229: ImpAdLdI4 MemVar_C0F044
  loc_B9422C: LitStr "privaterooms\"
  loc_B9422F: ConcatStr
  loc_B94230: FStStrNoPop var_18C
  loc_B94233: ILdI2 arg_C
  loc_B94236: CI4UI1
  loc_B94237: ImpAdLdI4 MemVar_C0F100
  loc_B9423A: Ary1LdPr
  loc_B9423B: MemLdFPR8 global_224
  loc_B9423E: CStrR8
  loc_B94240: FStStrNoPop var_190
  loc_B94243: ConcatStr
  loc_B94244: FStStrNoPop var_194
  loc_B94247: LitStr "\rotation.txt"
  loc_B9424A: ConcatStr
  loc_B9424B: CVarStr var_11C
  loc_B9424E: FLdI2 arg_10
  loc_B94251: LitI2_Byte 1
  loc_B94253: AddI2
  loc_B94254: CStrUI1
  loc_B94256: FStStrNoPop var_FC
  loc_B94259: LitStr ","
  loc_B9425C: ConcatStr
  loc_B9425D: FStStrNoPop var_184
  loc_B94260: FLdI2 arg_14
  loc_B94263: CStrUI1
  loc_B94265: FStStrNoPop var_188
  loc_B94268: ConcatStr
  loc_B94269: CVarStr var_10C
  loc_B9426C: LitVarStr var_B8, "furnies"
  loc_B94271: PopAdLdVar
  loc_B94272: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B94277: CVarStr var_15C
  loc_B9427A: FStVar var_1A8
  loc_B9427E: FFreeStr var_FC = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_B9428F: FFreeVar var_10C = ""
  loc_B94296: FLdRfVar var_1A8
  loc_B94299: LitVarStr var_B8, vbNullString
  loc_B9429E: HardType
  loc_B9429F: NeVarBool
  loc_B942A1: BranchF loc_B94365
  loc_B942A4: FLdRfVar var_184
  loc_B942A7: FLdRfVar var_1AC
  loc_B942AA: LitI4 0
  loc_B942AF: LitI2_Byte 0
  loc_B942B1: LitI4 1
  loc_B942B6: ImpAdLdI4 MemVar_C0F044
  loc_B942B9: LitStr "furni\"
  loc_B942BC: ConcatStr
  loc_B942BD: CVarStr var_10C
  loc_B942C0: FLdRfVar var_1A8
  loc_B942C3: ConcatVar var_11C
  loc_B942C7: LitVarStr var_B8, "\type.txt"
  loc_B942CC: ConcatVar var_15C
  loc_B942D0: CStrVarVal var_FC
  loc_B942D4: ImpAdLdRf MemVar_C0F040
  loc_B942D7: NewIfNullPr IFileSystem3
  loc_B942DA: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B942DF: FLdPr var_1AC
  loc_B942E2:  = Me.ReadAll
  loc_B942E7: FLdZeroAd var_184
  loc_B942EA: CVarStr var_170
  loc_B942ED: FStVar var_1BC
  loc_B942F1: FFree1Str var_FC
  loc_B942F4: FFree1Ad var_1AC
  loc_B942F7: FFreeVar var_10C = "": var_11C = ""
  loc_B94300: FLdRfVar var_1BC
  loc_B94303: LitVarStr var_B8, "rug"
  loc_B94308: HardType
  loc_B94309: EqVar var_10C
  loc_B9430D: NotVar var_11C
  loc_B94311: FLdRfVar var_1BC
  loc_B94314: LitVarStr var_C8, "sit"
  loc_B94319: HardType
  loc_B9431A: EqVar var_15C
  loc_B9431E: FLdRfVar var_1BC
  loc_B94321: LitVarStr var_D8, "bed"
  loc_B94326: HardType
  loc_B94327: EqVar var_170
  loc_B9432B: OrVar var_180
  loc_B9432F: FLdI2 arg_14
  loc_B94332: FLdI2 arg_1C
  loc_B94335: EqI2
  loc_B94336: CVarBoolI2 var_1CC
  loc_B9433A: AndVar var_1DC
  loc_B9433E: FLdI2 arg_10
  loc_B94341: LitI2_Byte 1
  loc_B94343: AddI2
  loc_B94344: FLdI2 arg_18
  loc_B94347: EqI2
  loc_B94348: CVarBoolI2 var_1EC
  loc_B9434C: AndVar var_1FC
  loc_B94350: NotVar var_20C
  loc_B94354: AndVar var_21C
  loc_B94358: CBoolVarNull
  loc_B9435A: FFreeVar var_1CC = ""
  loc_B94361: BranchF loc_B94365
  loc_B94364: ExitProc
  loc_B94365: FLdI2 arg_10
  loc_B94368: LitI2_Byte 1
  loc_B9436A: AddI2
  loc_B9436B: CStrUI1
  loc_B9436D: FStStrNoPop var_FC
  loc_B94370: LitStr ","
  loc_B94373: ConcatStr
  loc_B94374: FStStrNoPop var_184
  loc_B94377: FLdI2 arg_14
  loc_B9437A: CStrUI1
  loc_B9437C: FStStrNoPop var_188
  loc_B9437F: ConcatStr
  loc_B94380: FStStr var_88
  loc_B94383: FFreeStr var_FC = "": var_184 = ""
  loc_B9438C: LitStr "2,2"
  loc_B9438F: ILdI2 arg_C
  loc_B94392: CI4UI1
  loc_B94393: ImpAdLdI4 MemVar_C0F100
  loc_B94396: Ary1LdPr
  loc_B94397: MemStStrCopy
  loc_B9439B: ILdRf var_90
  loc_B9439E: LitStr "R"
  loc_B943A1: EqStr
  loc_B943A3: BranchF loc_B944A1
  loc_B943A6: LitI4 &HD
  loc_B943AB: FLdRfVar var_10C
  loc_B943AE: ImpAdCallFPR4  = Chr()
  loc_B943B3: FLdRfVar arg_14
  loc_B943B6: CDargRef
  loc_B943BA: LitI4 0
  loc_B943BF: LitI4 -1
  loc_B943C4: FLdRfVar var_10C
  loc_B943C7: ILdI4 arg_28
  loc_B943CA: FLdRfVar var_11C
  loc_B943CD: ImpAdCallFPR4  = Split(, , , )
  loc_B943D2: FLdRfVar var_11C
  loc_B943D5: VarIndexLdRfVarLock
  loc_B943DD: FStR4 var_A8
  loc_B943E0: LitVarI2 var_170, 1
  loc_B943E5: FLdI2 arg_10
  loc_B943E8: LitI2_Byte 2
  loc_B943EA: AddI2
  loc_B943EB: CI4UI1
  loc_B943EC: ILdRf var_A8
  loc_B943EF: FLdRfVar var_180
  loc_B943F2: ImpAdCallFPR4  = Mid(, , )
  loc_B943F7: AryUnlock
  loc_B943FA: FLdRfVar var_180
  loc_B943FD: CStrVarVal var_FC
  loc_B94401: ImpAdCallFPR4 push push Val()
  loc_B94406: FStFPR8 var_224
  loc_B94409: LitI4 0
  loc_B9440E: LitI4 -1
  loc_B94413: LitI4 1
  loc_B94418: LitStr "."
  loc_B9441B: LitStr ","
  loc_B9441E: FLdFPR8 var_224
  loc_B94421: LitDate 0.4
  loc_B9442A: AddR8
  loc_B9442B: CStrR8
  loc_B9442D: FStStrNoPop var_184
  loc_B94430: ImpAdCallI2 Replace(, , , , , )
  loc_B94435: FStStrNoPop var_188
  loc_B94438: ILdI2 arg_C
  loc_B9443B: CI4UI1
  loc_B9443C: ImpAdLdI4 MemVar_C0F100
  loc_B9443F: Ary1LdPr
  loc_B94440: MemStStrCopy
  loc_B94444: FFreeStr var_FC = "": var_184 = ""
  loc_B9444D: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = ""
  loc_B9445A: LitI4 1
  loc_B9445F: ILdI2 arg_C
  loc_B94462: CI4UI1
  loc_B94463: ImpAdLdI4 MemVar_C0F100
  loc_B94466: Ary1LdPr
  loc_B94467: MemLdStr global_296
  loc_B9446A: LitStr "."
  loc_B9446D: LitI4 0
  loc_B94472: FnInStr4
  loc_B94474: LitI4 0
  loc_B94479: EqI4
  loc_B9447A: BranchF loc_B9449E
  loc_B9447D: ILdI2 arg_C
  loc_B94480: CI4UI1
  loc_B94481: ImpAdLdI4 MemVar_C0F100
  loc_B94484: Ary1LdPr
  loc_B94485: MemLdStr global_296
  loc_B94488: LitStr ".0"
  loc_B9448B: ConcatStr
  loc_B9448C: FStStrNoPop var_FC
  loc_B9448F: ILdI2 arg_C
  loc_B94492: CI4UI1
  loc_B94493: ImpAdLdI4 MemVar_C0F100
  loc_B94496: Ary1LdPr
  loc_B94497: MemStStrCopy
  loc_B9449B: FFree1Str var_FC
  loc_B9449E: Branch loc_B94523
  loc_B944A1: LitI4 &HD
  loc_B944A6: FLdRfVar var_10C
  loc_B944A9: ImpAdCallFPR4  = Chr()
  loc_B944AE: FLdRfVar arg_14
  loc_B944B1: CDargRef
  loc_B944B5: LitI4 0
  loc_B944BA: LitI4 -1
  loc_B944BF: FLdRfVar var_10C
  loc_B944C2: ILdI4 arg_28
  loc_B944C5: FLdRfVar var_11C
  loc_B944C8: ImpAdCallFPR4  = Split(, , , )
  loc_B944CD: FLdRfVar var_11C
  loc_B944D0: VarIndexLdRfVarLock
  loc_B944D8: FStR4 var_A8
  loc_B944DB: LitVarI2 var_170, 1
  loc_B944E0: FLdI2 arg_10
  loc_B944E3: LitI2_Byte 2
  loc_B944E5: AddI2
  loc_B944E6: CI4UI1
  loc_B944E7: ILdRf var_A8
  loc_B944EA: FLdRfVar var_180
  loc_B944ED: ImpAdCallFPR4  = Mid(, , )
  loc_B944F2: AryUnlock
  loc_B944F5: FLdRfVar var_180
  loc_B944F8: LitVarStr var_D8, ".0"
  loc_B944FD: ConcatVar var_1DC
  loc_B94501: CStrVarTmp
  loc_B94502: FStStrNoPop var_FC
  loc_B94505: ILdI2 arg_C
  loc_B94508: CI4UI1
  loc_B94509: ImpAdLdI4 MemVar_C0F100
  loc_B9450C: Ary1LdPr
  loc_B9450D: MemStStrCopy
  loc_B94511: FFree1Str var_FC
  loc_B94514: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = "": var_180 = ""
  loc_B94523: LitI4 0
  loc_B94528: ILdI2 arg_C
  loc_B9452B: CI4UI1
  loc_B9452C: ImpAdLdI4 MemVar_C0F100
  loc_B9452F: Ary1LdPr
  loc_B94530: MemStI4 global_332
  loc_B94533: LitI2_Byte 0
  loc_B94535: ILdI2 arg_C
  loc_B94538: CI4UI1
  loc_B94539: ImpAdLdI4 MemVar_C0F100
  loc_B9453C: Ary1LdPr
  loc_B9453D: MemStI2 global_308
  loc_B94540: LitI2_Byte 0
  loc_B94542: ILdI2 arg_C
  loc_B94545: CI4UI1
  loc_B94546: ImpAdLdI4 MemVar_C0F100
  loc_B94549: Ary1LdPr
  loc_B9454A: MemStI2 global_312
  loc_B9454D: ExitProc
  loc_B9454E: FLdI2 arg_14
  loc_B94551: FLdI2 arg_1C
  loc_B94554: LtI2
  loc_B94555: BranchF loc_B94A9D
  loc_B94558: LitVarI2 var_D8, 1
  loc_B9455D: FLdRfVar var_A4
  loc_B94560: FLdRfVar var_A8
  loc_B94563: ImpAdLdRf MemVar_C0F018
  loc_B94566: NewIfNullPr frmMain
  loc_B94569: from_stack_1v = frmMain.SockIGet()
  loc_B9456E: ILdRf var_A8
  loc_B94571: CVarI4
  loc_B94575: ForVar var_384
  loc_B9457B: FLdRfVar var_A4
  loc_B9457E: CI4Var
  loc_B94580: ImpAdLdI4 MemVar_C0F100
  loc_B94583: Ary1LdPr
  loc_B94584: MemLdFPR8 global_224
  loc_B94587: FLdI2 arg_20
  loc_B9458A: CR8I2
  loc_B9458B: EqR4
  loc_B9458C: BranchF loc_B945B9
  loc_B9458F: FLdRfVar var_A4
  loc_B94592: CI4Var
  loc_B94594: ImpAdLdI4 MemVar_C0F100
  loc_B94597: Ary1LdPr
  loc_B94598: MemLdFPR8 global_232
  loc_B9459B: FLdI2 arg_10
  loc_B9459E: CR8I2
  loc_B9459F: EqR4
  loc_B945A0: FLdRfVar var_A4
  loc_B945A3: CI4Var
  loc_B945A5: ImpAdLdI4 MemVar_C0F100
  loc_B945A8: Ary1LdPr
  loc_B945A9: MemLdFPR8 global_240
  loc_B945AC: FLdI2 arg_14
  loc_B945AF: LitI2_Byte 1
  loc_B945B1: AddI2
  loc_B945B2: CR8I2
  loc_B945B3: EqR4
  loc_B945B4: AndI4
  loc_B945B5: BranchF loc_B945B9
  loc_B945B8: ExitProc
  loc_B945B9: FLdRfVar var_A4
  loc_B945BC: NextStepVar var_384
  loc_B945C2: FLdRfVar var_FC
  loc_B945C5: ImpAdLdRf MemVar_C0F018
  loc_B945C8: NewIfNullPr frmMain
  loc_B945CB: from_stack_1v = frmMain.HpetsGet()
  loc_B945D0: LitI4 0
  loc_B945D5: LitI4 -1
  loc_B945DA: LitVarStr var_B8, ";"
  loc_B945DF: FStVarCopyObj var_10C
  loc_B945E2: FLdRfVar var_10C
  loc_B945E5: ILdRf var_FC
  loc_B945E8: FLdRfVar var_11C
  loc_B945EB: ImpAdCallFPR4  = Split(, , , )
  loc_B945F0: FLdRfVar var_11C
  loc_B945F3: FStVar var_12C
  loc_B945F7: FFree1Str var_FC
  loc_B945FA: FFree1Var var_10C = ""
  loc_B945FD: LitVarI2 var_D8, 0
  loc_B94602: FLdRfVar var_A4
  loc_B94605: FLdRfVar var_12C
  loc_B94608: CRefVarAry
  loc_B9460A: PopAdLd4
  loc_B9460B: LitI2_Byte 1
  loc_B9460D: FnUBound
  loc_B9460F: CVarI4
  loc_B94613: ForVar var_3A4
  loc_B94619: FLdRfVar var_A4
  loc_B9461C: CDargRef
  loc_B94620: FLdRfVar var_12C
  loc_B94623: VarIndexLdVar
  loc_B94629: LitVarStr var_C8, vbNullString
  loc_B9462E: HardType
  loc_B9462F: NeVarBool
  loc_B94631: FFree1Var var_10C = ""
  loc_B94634: BranchF loc_B946A6
  loc_B94637: FLdRfVar var_A4
  loc_B9463A: CDargRef
  loc_B9463E: FLdRfVar var_12C
  loc_B94641: VarIndexLdVar
  loc_B94647: CI4Var
  loc_B94649: ImpAdLdI4 MemVar_C0F160
  loc_B9464C: Ary1LdPr
  loc_B9464D: MemLdFPR8 global_16
  loc_B94650: FLdI2 arg_20
  loc_B94653: CR8I2
  loc_B94654: EqR4
  loc_B94655: FFree1Var var_10C = ""
  loc_B94658: BranchF loc_B946A6
  loc_B9465B: FLdRfVar var_A4
  loc_B9465E: CDargRef
  loc_B94662: FLdRfVar var_12C
  loc_B94665: VarIndexLdVar
  loc_B9466B: CI4Var
  loc_B9466D: ImpAdLdI4 MemVar_C0F160
  loc_B94670: Ary1LdPr
  loc_B94671: MemLdFPR8 global_44
  loc_B94674: FLdI2 arg_10
  loc_B94677: CR8I2
  loc_B94678: EqR4
  loc_B94679: FLdRfVar var_A4
  loc_B9467C: CDargRef
  loc_B94680: FLdRfVar var_12C
  loc_B94683: VarIndexLdVar
  loc_B94689: CI4Var
  loc_B9468B: ImpAdLdI4 MemVar_C0F160
  loc_B9468E: Ary1LdPr
  loc_B9468F: MemLdFPR8 global_52
  loc_B94692: FLdI2 arg_14
  loc_B94695: LitI2_Byte 1
  loc_B94697: AddI2
  loc_B94698: CR8I2
  loc_B94699: EqR4
  loc_B9469A: AndI4
  loc_B9469B: FFreeVar var_10C = ""
  loc_B946A2: BranchF loc_B946A6
  loc_B946A5: ExitProc
  loc_B946A6: FLdRfVar var_A4
  loc_B946A9: NextStepVar var_3A4
  loc_B946AF: LitI4 &HD
  loc_B946B4: FLdRfVar var_10C
  loc_B946B7: ImpAdCallFPR4  = Chr()
  loc_B946BC: FLdI2 arg_14
  loc_B946BF: LitI2_Byte 1
  loc_B946C1: AddI2
  loc_B946C2: CVarI2 var_B8
  loc_B946C5: PopAdLdVar
  loc_B946C6: LitI4 0
  loc_B946CB: LitI4 -1
  loc_B946D0: FLdRfVar var_10C
  loc_B946D3: ILdI4 arg_24
  loc_B946D6: FLdRfVar var_11C
  loc_B946D9: ImpAdCallFPR4  = Split(, , , )
  loc_B946DE: FLdRfVar var_11C
  loc_B946E1: VarIndexLdRfVarLock
  loc_B946E9: FStR4 var_A8
  loc_B946EC: LitVarI2 var_170, 1
  loc_B946F1: FLdI2 arg_10
  loc_B946F4: LitI2_Byte 1
  loc_B946F6: AddI2
  loc_B946F7: CI4UI1
  loc_B946F8: ILdRf var_A8
  loc_B946FB: FLdRfVar var_180
  loc_B946FE: ImpAdCallFPR4  = Mid(, , )
  loc_B94703: AryUnlock
  loc_B94706: FLdRfVar var_180
  loc_B94709: CStrVarTmp
  loc_B9470A: FStStr var_90
  loc_B9470D: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = ""
  loc_B9471A: ILdRf var_90
  loc_B9471D: LitStr "O"
  loc_B94720: EqStr
  loc_B94722: ILdRf var_90
  loc_B94725: LitStr "D"
  loc_B94728: EqStr
  loc_B9472A: OrI4
  loc_B9472B: ILdRf var_90
  loc_B9472E: LitStr "R"
  loc_B94731: EqStr
  loc_B94733: OrI4
  loc_B94734: ILdRf var_90
  loc_B94737: LitStr "S"
  loc_B9473A: EqStr
  loc_B9473C: ILdRf var_90
  loc_B9473F: LitStr "L"
  loc_B94742: EqStr
  loc_B94744: OrI4
  loc_B94745: FLdI2 arg_14
  loc_B94748: LitI2_Byte 1
  loc_B9474A: AddI2
  loc_B9474B: FLdI2 arg_1C
  loc_B9474E: EqI2
  loc_B9474F: AndI4
  loc_B94750: FLdI2 arg_10
  loc_B94753: FLdI2 arg_18
  loc_B94756: EqI2
  loc_B94757: AndI4
  loc_B94758: OrI4
  loc_B94759: BranchF loc_B94A9D
  loc_B9475C: ILdRf var_90
  loc_B9475F: LitStr "R"
  loc_B94762: EqStr
  loc_B94764: BranchF loc_B948AE
  loc_B94767: LitI4 0
  loc_B9476C: FStStrCopy var_198
  loc_B9476F: FLdRfVar var_198
  loc_B94772: ImpAdLdI4 MemVar_C0F044
  loc_B94775: LitStr "privaterooms\"
  loc_B94778: ConcatStr
  loc_B94779: FStStrNoPop var_18C
  loc_B9477C: ILdI2 arg_C
  loc_B9477F: CI4UI1
  loc_B94780: ImpAdLdI4 MemVar_C0F100
  loc_B94783: Ary1LdPr
  loc_B94784: MemLdFPR8 global_224
  loc_B94787: CStrR8
  loc_B94789: FStStrNoPop var_190
  loc_B9478C: ConcatStr
  loc_B9478D: FStStrNoPop var_194
  loc_B94790: LitStr "\rotation.txt"
  loc_B94793: ConcatStr
  loc_B94794: CVarStr var_11C
  loc_B94797: FLdI2 arg_10
  loc_B9479A: CStrUI1
  loc_B9479C: FStStrNoPop var_FC
  loc_B9479F: LitStr ","
  loc_B947A2: ConcatStr
  loc_B947A3: FStStrNoPop var_184
  loc_B947A6: FLdI2 arg_14
  loc_B947A9: LitI2_Byte 1
  loc_B947AB: AddI2
  loc_B947AC: CStrUI1
  loc_B947AE: FStStrNoPop var_188
  loc_B947B1: ConcatStr
  loc_B947B2: CVarStr var_10C
  loc_B947B5: LitVarStr var_B8, "furnies"
  loc_B947BA: PopAdLdVar
  loc_B947BB: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B947C0: CVarStr var_15C
  loc_B947C3: FStVar var_1A8
  loc_B947C7: FFreeStr var_FC = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_B947D8: FFreeVar var_10C = ""
  loc_B947DF: FLdRfVar var_1A8
  loc_B947E2: LitVarStr var_B8, vbNullString
  loc_B947E7: HardType
  loc_B947E8: NeVarBool
  loc_B947EA: BranchF loc_B948AE
  loc_B947ED: FLdRfVar var_184
  loc_B947F0: FLdRfVar var_1AC
  loc_B947F3: LitI4 0
  loc_B947F8: LitI2_Byte 0
  loc_B947FA: LitI4 1
  loc_B947FF: ImpAdLdI4 MemVar_C0F044
  loc_B94802: LitStr "furni\"
  loc_B94805: ConcatStr
  loc_B94806: CVarStr var_10C
  loc_B94809: FLdRfVar var_1A8
  loc_B9480C: ConcatVar var_11C
  loc_B94810: LitVarStr var_B8, "\type.txt"
  loc_B94815: ConcatVar var_15C
  loc_B94819: CStrVarVal var_FC
  loc_B9481D: ImpAdLdRf MemVar_C0F040
  loc_B94820: NewIfNullPr IFileSystem3
  loc_B94823: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B94828: FLdPr var_1AC
  loc_B9482B:  = Me.ReadAll
  loc_B94830: FLdZeroAd var_184
  loc_B94833: CVarStr var_170
  loc_B94836: FStVar var_1BC
  loc_B9483A: FFree1Str var_FC
  loc_B9483D: FFree1Ad var_1AC
  loc_B94840: FFreeVar var_10C = "": var_11C = ""
  loc_B94849: FLdRfVar var_1BC
  loc_B9484C: LitVarStr var_B8, "rug"
  loc_B94851: HardType
  loc_B94852: EqVar var_10C
  loc_B94856: NotVar var_11C
  loc_B9485A: FLdRfVar var_1BC
  loc_B9485D: LitVarStr var_C8, "sit"
  loc_B94862: HardType
  loc_B94863: EqVar var_15C
  loc_B94867: FLdRfVar var_1BC
  loc_B9486A: LitVarStr var_D8, "bed"
  loc_B9486F: HardType
  loc_B94870: EqVar var_170
  loc_B94874: OrVar var_180
  loc_B94878: FLdI2 arg_14
  loc_B9487B: LitI2_Byte 1
  loc_B9487D: AddI2
  loc_B9487E: FLdI2 arg_1C
  loc_B94881: EqI2
  loc_B94882: CVarBoolI2 var_1CC
  loc_B94886: AndVar var_1DC
  loc_B9488A: FLdI2 arg_10
  loc_B9488D: FLdI2 arg_18
  loc_B94890: EqI2
  loc_B94891: CVarBoolI2 var_1EC
  loc_B94895: AndVar var_1FC
  loc_B94899: NotVar var_20C
  loc_B9489D: AndVar var_21C
  loc_B948A1: CBoolVarNull
  loc_B948A3: FFreeVar var_1CC = ""
  loc_B948AA: BranchF loc_B948AE
  loc_B948AD: ExitProc
  loc_B948AE: FLdI2 arg_10
  loc_B948B1: CStrUI1
  loc_B948B3: FStStrNoPop var_FC
  loc_B948B6: LitStr ","
  loc_B948B9: ConcatStr
  loc_B948BA: FStStrNoPop var_184
  loc_B948BD: FLdI2 arg_14
  loc_B948C0: LitI2_Byte 1
  loc_B948C2: AddI2
  loc_B948C3: CStrUI1
  loc_B948C5: FStStrNoPop var_188
  loc_B948C8: ConcatStr
  loc_B948C9: FStStr var_88
  loc_B948CC: FFreeStr var_FC = "": var_184 = ""
  loc_B948D5: LitStr "4,4"
  loc_B948D8: ILdI2 arg_C
  loc_B948DB: CI4UI1
  loc_B948DC: ImpAdLdI4 MemVar_C0F100
  loc_B948DF: Ary1LdPr
  loc_B948E0: MemStStrCopy
  loc_B948E4: ILdRf var_90
  loc_B948E7: LitStr "R"
  loc_B948EA: EqStr
  loc_B948EC: BranchF loc_B949ED
  loc_B948EF: LitI4 &HD
  loc_B948F4: FLdRfVar var_10C
  loc_B948F7: ImpAdCallFPR4  = Chr()
  loc_B948FC: FLdI2 arg_14
  loc_B948FF: LitI2_Byte 1
  loc_B94901: AddI2
  loc_B94902: CVarI2 var_B8
  loc_B94905: PopAdLdVar
  loc_B94906: LitI4 0
  loc_B9490B: LitI4 -1
  loc_B94910: FLdRfVar var_10C
  loc_B94913: ILdI4 arg_28
  loc_B94916: FLdRfVar var_11C
  loc_B94919: ImpAdCallFPR4  = Split(, , , )
  loc_B9491E: FLdRfVar var_11C
  loc_B94921: VarIndexLdRfVarLock
  loc_B94929: FStR4 var_A8
  loc_B9492C: LitVarI2 var_170, 1
  loc_B94931: FLdI2 arg_10
  loc_B94934: LitI2_Byte 1
  loc_B94936: AddI2
  loc_B94937: CI4UI1
  loc_B94938: ILdRf var_A8
  loc_B9493B: FLdRfVar var_180
  loc_B9493E: ImpAdCallFPR4  = Mid(, , )
  loc_B94943: AryUnlock
  loc_B94946: FLdRfVar var_180
  loc_B94949: CStrVarVal var_FC
  loc_B9494D: ImpAdCallFPR4 push push Val()
  loc_B94952: FStFPR8 var_224
  loc_B94955: LitI4 0
  loc_B9495A: LitI4 -1
  loc_B9495F: LitI4 1
  loc_B94964: LitStr "."
  loc_B94967: LitStr ","
  loc_B9496A: FLdFPR8 var_224
  loc_B9496D: LitDate 0.4
  loc_B94976: AddR8
  loc_B94977: CStrR8
  loc_B94979: FStStrNoPop var_184
  loc_B9497C: ImpAdCallI2 Replace(, , , , , )
  loc_B94981: FStStrNoPop var_188
  loc_B94984: ILdI2 arg_C
  loc_B94987: CI4UI1
  loc_B94988: ImpAdLdI4 MemVar_C0F100
  loc_B9498B: Ary1LdPr
  loc_B9498C: MemStStrCopy
  loc_B94990: FFreeStr var_FC = "": var_184 = ""
  loc_B94999: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = ""
  loc_B949A6: LitI4 1
  loc_B949AB: ILdI2 arg_C
  loc_B949AE: CI4UI1
  loc_B949AF: ImpAdLdI4 MemVar_C0F100
  loc_B949B2: Ary1LdPr
  loc_B949B3: MemLdStr global_296
  loc_B949B6: LitStr "."
  loc_B949B9: LitI4 0
  loc_B949BE: FnInStr4
  loc_B949C0: LitI4 0
  loc_B949C5: EqI4
  loc_B949C6: BranchF loc_B949EA
  loc_B949C9: ILdI2 arg_C
  loc_B949CC: CI4UI1
  loc_B949CD: ImpAdLdI4 MemVar_C0F100
  loc_B949D0: Ary1LdPr
  loc_B949D1: MemLdStr global_296
  loc_B949D4: LitStr ".0"
  loc_B949D7: ConcatStr
  loc_B949D8: FStStrNoPop var_FC
  loc_B949DB: ILdI2 arg_C
  loc_B949DE: CI4UI1
  loc_B949DF: ImpAdLdI4 MemVar_C0F100
  loc_B949E2: Ary1LdPr
  loc_B949E3: MemStStrCopy
  loc_B949E7: FFree1Str var_FC
  loc_B949EA: Branch loc_B94A72
  loc_B949ED: LitI4 &HD
  loc_B949F2: FLdRfVar var_10C
  loc_B949F5: ImpAdCallFPR4  = Chr()
  loc_B949FA: FLdI2 arg_14
  loc_B949FD: LitI2_Byte 1
  loc_B949FF: AddI2
  loc_B94A00: CVarI2 var_B8
  loc_B94A03: PopAdLdVar
  loc_B94A04: LitI4 0
  loc_B94A09: LitI4 -1
  loc_B94A0E: FLdRfVar var_10C
  loc_B94A11: ILdI4 arg_28
  loc_B94A14: FLdRfVar var_11C
  loc_B94A17: ImpAdCallFPR4  = Split(, , , )
  loc_B94A1C: FLdRfVar var_11C
  loc_B94A1F: VarIndexLdRfVarLock
  loc_B94A27: FStR4 var_A8
  loc_B94A2A: LitVarI2 var_170, 1
  loc_B94A2F: FLdI2 arg_10
  loc_B94A32: LitI2_Byte 1
  loc_B94A34: AddI2
  loc_B94A35: CI4UI1
  loc_B94A36: ILdRf var_A8
  loc_B94A39: FLdRfVar var_180
  loc_B94A3C: ImpAdCallFPR4  = Mid(, , )
  loc_B94A41: AryUnlock
  loc_B94A44: FLdRfVar var_180
  loc_B94A47: LitVarStr var_1CC, ".0"
  loc_B94A4C: ConcatVar var_1DC
  loc_B94A50: CStrVarTmp
  loc_B94A51: FStStrNoPop var_FC
  loc_B94A54: ILdI2 arg_C
  loc_B94A57: CI4UI1
  loc_B94A58: ImpAdLdI4 MemVar_C0F100
  loc_B94A5B: Ary1LdPr
  loc_B94A5C: MemStStrCopy
  loc_B94A60: FFree1Str var_FC
  loc_B94A63: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = "": var_180 = ""
  loc_B94A72: LitI4 0
  loc_B94A77: ILdI2 arg_C
  loc_B94A7A: CI4UI1
  loc_B94A7B: ImpAdLdI4 MemVar_C0F100
  loc_B94A7E: Ary1LdPr
  loc_B94A7F: MemStI4 global_332
  loc_B94A82: LitI2_Byte 0
  loc_B94A84: ILdI2 arg_C
  loc_B94A87: CI4UI1
  loc_B94A88: ImpAdLdI4 MemVar_C0F100
  loc_B94A8B: Ary1LdPr
  loc_B94A8C: MemStI2 global_308
  loc_B94A8F: LitI2_Byte 0
  loc_B94A91: ILdI2 arg_C
  loc_B94A94: CI4UI1
  loc_B94A95: ImpAdLdI4 MemVar_C0F100
  loc_B94A98: Ary1LdPr
  loc_B94A99: MemStI2 global_312
  loc_B94A9C: ExitProc
  loc_B94A9D: FLdI2 arg_14
  loc_B94AA0: FLdI2 arg_1C
  loc_B94AA3: GtI2
  loc_B94AA4: BranchF loc_B94FEC
  loc_B94AA7: LitVarI2 var_D8, 1
  loc_B94AAC: FLdRfVar var_A4
  loc_B94AAF: FLdRfVar var_A8
  loc_B94AB2: ImpAdLdRf MemVar_C0F018
  loc_B94AB5: NewIfNullPr frmMain
  loc_B94AB8: from_stack_1v = frmMain.SockIGet()
  loc_B94ABD: ILdRf var_A8
  loc_B94AC0: CVarI4
  loc_B94AC4: ForVar var_3C4
  loc_B94ACA: FLdRfVar var_A4
  loc_B94ACD: CI4Var
  loc_B94ACF: ImpAdLdI4 MemVar_C0F100
  loc_B94AD2: Ary1LdPr
  loc_B94AD3: MemLdFPR8 global_224
  loc_B94AD6: FLdI2 arg_20
  loc_B94AD9: CR8I2
  loc_B94ADA: EqR4
  loc_B94ADB: BranchF loc_B94B08
  loc_B94ADE: FLdRfVar var_A4
  loc_B94AE1: CI4Var
  loc_B94AE3: ImpAdLdI4 MemVar_C0F100
  loc_B94AE6: Ary1LdPr
  loc_B94AE7: MemLdFPR8 global_232
  loc_B94AEA: FLdI2 arg_10
  loc_B94AED: CR8I2
  loc_B94AEE: EqR4
  loc_B94AEF: FLdRfVar var_A4
  loc_B94AF2: CI4Var
  loc_B94AF4: ImpAdLdI4 MemVar_C0F100
  loc_B94AF7: Ary1LdPr
  loc_B94AF8: MemLdFPR8 global_240
  loc_B94AFB: FLdI2 arg_14
  loc_B94AFE: LitI2_Byte 1
  loc_B94B00: SubI2
  loc_B94B01: CR8I2
  loc_B94B02: EqR4
  loc_B94B03: AndI4
  loc_B94B04: BranchF loc_B94B08
  loc_B94B07: ExitProc
  loc_B94B08: FLdRfVar var_A4
  loc_B94B0B: NextStepVar var_3C4
  loc_B94B11: FLdRfVar var_FC
  loc_B94B14: ImpAdLdRf MemVar_C0F018
  loc_B94B17: NewIfNullPr frmMain
  loc_B94B1A: from_stack_1v = frmMain.HpetsGet()
  loc_B94B1F: LitI4 0
  loc_B94B24: LitI4 -1
  loc_B94B29: LitVarStr var_B8, ";"
  loc_B94B2E: FStVarCopyObj var_10C
  loc_B94B31: FLdRfVar var_10C
  loc_B94B34: ILdRf var_FC
  loc_B94B37: FLdRfVar var_11C
  loc_B94B3A: ImpAdCallFPR4  = Split(, , , )
  loc_B94B3F: FLdRfVar var_11C
  loc_B94B42: FStVar var_12C
  loc_B94B46: FFree1Str var_FC
  loc_B94B49: FFree1Var var_10C = ""
  loc_B94B4C: LitVarI2 var_D8, 0
  loc_B94B51: FLdRfVar var_A4
  loc_B94B54: FLdRfVar var_12C
  loc_B94B57: CRefVarAry
  loc_B94B59: PopAdLd4
  loc_B94B5A: LitI2_Byte 1
  loc_B94B5C: FnUBound
  loc_B94B5E: CVarI4
  loc_B94B62: ForVar var_3E4
  loc_B94B68: FLdRfVar var_A4
  loc_B94B6B: CDargRef
  loc_B94B6F: FLdRfVar var_12C
  loc_B94B72: VarIndexLdVar
  loc_B94B78: LitVarStr var_C8, vbNullString
  loc_B94B7D: HardType
  loc_B94B7E: NeVarBool
  loc_B94B80: FFree1Var var_10C = ""
  loc_B94B83: BranchF loc_B94BF5
  loc_B94B86: FLdRfVar var_A4
  loc_B94B89: CDargRef
  loc_B94B8D: FLdRfVar var_12C
  loc_B94B90: VarIndexLdVar
  loc_B94B96: CI4Var
  loc_B94B98: ImpAdLdI4 MemVar_C0F160
  loc_B94B9B: Ary1LdPr
  loc_B94B9C: MemLdFPR8 global_16
  loc_B94B9F: FLdI2 arg_20
  loc_B94BA2: CR8I2
  loc_B94BA3: EqR4
  loc_B94BA4: FFree1Var var_10C = ""
  loc_B94BA7: BranchF loc_B94BF5
  loc_B94BAA: FLdRfVar var_A4
  loc_B94BAD: CDargRef
  loc_B94BB1: FLdRfVar var_12C
  loc_B94BB4: VarIndexLdVar
  loc_B94BBA: CI4Var
  loc_B94BBC: ImpAdLdI4 MemVar_C0F160
  loc_B94BBF: Ary1LdPr
  loc_B94BC0: MemLdFPR8 global_44
  loc_B94BC3: FLdI2 arg_10
  loc_B94BC6: CR8I2
  loc_B94BC7: EqR4
  loc_B94BC8: FLdRfVar var_A4
  loc_B94BCB: CDargRef
  loc_B94BCF: FLdRfVar var_12C
  loc_B94BD2: VarIndexLdVar
  loc_B94BD8: CI4Var
  loc_B94BDA: ImpAdLdI4 MemVar_C0F160
  loc_B94BDD: Ary1LdPr
  loc_B94BDE: MemLdFPR8 global_52
  loc_B94BE1: FLdI2 arg_14
  loc_B94BE4: LitI2_Byte 1
  loc_B94BE6: SubI2
  loc_B94BE7: CR8I2
  loc_B94BE8: EqR4
  loc_B94BE9: AndI4
  loc_B94BEA: FFreeVar var_10C = ""
  loc_B94BF1: BranchF loc_B94BF5
  loc_B94BF4: ExitProc
  loc_B94BF5: FLdRfVar var_A4
  loc_B94BF8: NextStepVar var_3E4
  loc_B94BFE: LitI4 &HD
  loc_B94C03: FLdRfVar var_10C
  loc_B94C06: ImpAdCallFPR4  = Chr()
  loc_B94C0B: FLdI2 arg_14
  loc_B94C0E: LitI2_Byte 1
  loc_B94C10: SubI2
  loc_B94C11: CVarI2 var_B8
  loc_B94C14: PopAdLdVar
  loc_B94C15: LitI4 0
  loc_B94C1A: LitI4 -1
  loc_B94C1F: FLdRfVar var_10C
  loc_B94C22: ILdI4 arg_24
  loc_B94C25: FLdRfVar var_11C
  loc_B94C28: ImpAdCallFPR4  = Split(, , , )
  loc_B94C2D: FLdRfVar var_11C
  loc_B94C30: VarIndexLdRfVarLock
  loc_B94C38: FStR4 var_A8
  loc_B94C3B: LitVarI2 var_170, 1
  loc_B94C40: FLdI2 arg_10
  loc_B94C43: LitI2_Byte 1
  loc_B94C45: AddI2
  loc_B94C46: CI4UI1
  loc_B94C47: ILdRf var_A8
  loc_B94C4A: FLdRfVar var_180
  loc_B94C4D: ImpAdCallFPR4  = Mid(, , )
  loc_B94C52: AryUnlock
  loc_B94C55: FLdRfVar var_180
  loc_B94C58: CStrVarTmp
  loc_B94C59: FStStr var_90
  loc_B94C5C: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = ""
  loc_B94C69: ILdRf var_90
  loc_B94C6C: LitStr "O"
  loc_B94C6F: EqStr
  loc_B94C71: ILdRf var_90
  loc_B94C74: LitStr "D"
  loc_B94C77: EqStr
  loc_B94C79: OrI4
  loc_B94C7A: ILdRf var_90
  loc_B94C7D: LitStr "R"
  loc_B94C80: EqStr
  loc_B94C82: OrI4
  loc_B94C83: ILdRf var_90
  loc_B94C86: LitStr "S"
  loc_B94C89: EqStr
  loc_B94C8B: ILdRf var_90
  loc_B94C8E: LitStr "L"
  loc_B94C91: EqStr
  loc_B94C93: OrI4
  loc_B94C94: FLdI2 arg_14
  loc_B94C97: LitI2_Byte 1
  loc_B94C99: SubI2
  loc_B94C9A: FLdI2 arg_1C
  loc_B94C9D: EqI2
  loc_B94C9E: AndI4
  loc_B94C9F: FLdI2 arg_10
  loc_B94CA2: FLdI2 arg_18
  loc_B94CA5: EqI2
  loc_B94CA6: AndI4
  loc_B94CA7: OrI4
  loc_B94CA8: BranchF loc_B94FEC
  loc_B94CAB: ILdRf var_90
  loc_B94CAE: LitStr "R"
  loc_B94CB1: EqStr
  loc_B94CB3: BranchF loc_B94DFD
  loc_B94CB6: LitI4 0
  loc_B94CBB: FStStrCopy var_198
  loc_B94CBE: FLdRfVar var_198
  loc_B94CC1: ImpAdLdI4 MemVar_C0F044
  loc_B94CC4: LitStr "privaterooms\"
  loc_B94CC7: ConcatStr
  loc_B94CC8: FStStrNoPop var_18C
  loc_B94CCB: ILdI2 arg_C
  loc_B94CCE: CI4UI1
  loc_B94CCF: ImpAdLdI4 MemVar_C0F100
  loc_B94CD2: Ary1LdPr
  loc_B94CD3: MemLdFPR8 global_224
  loc_B94CD6: CStrR8
  loc_B94CD8: FStStrNoPop var_190
  loc_B94CDB: ConcatStr
  loc_B94CDC: FStStrNoPop var_194
  loc_B94CDF: LitStr "\rotation.txt"
  loc_B94CE2: ConcatStr
  loc_B94CE3: CVarStr var_11C
  loc_B94CE6: FLdI2 arg_10
  loc_B94CE9: CStrUI1
  loc_B94CEB: FStStrNoPop var_FC
  loc_B94CEE: LitStr ","
  loc_B94CF1: ConcatStr
  loc_B94CF2: FStStrNoPop var_184
  loc_B94CF5: FLdI2 arg_14
  loc_B94CF8: LitI2_Byte 1
  loc_B94CFA: SubI2
  loc_B94CFB: CStrUI1
  loc_B94CFD: FStStrNoPop var_188
  loc_B94D00: ConcatStr
  loc_B94D01: CVarStr var_10C
  loc_B94D04: LitVarStr var_B8, "furnies"
  loc_B94D09: PopAdLdVar
  loc_B94D0A: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B94D0F: CVarStr var_15C
  loc_B94D12: FStVar var_1A8
  loc_B94D16: FFreeStr var_FC = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_B94D27: FFreeVar var_10C = ""
  loc_B94D2E: FLdRfVar var_1A8
  loc_B94D31: LitVarStr var_B8, vbNullString
  loc_B94D36: HardType
  loc_B94D37: NeVarBool
  loc_B94D39: BranchF loc_B94DFD
  loc_B94D3C: FLdRfVar var_184
  loc_B94D3F: FLdRfVar var_1AC
  loc_B94D42: LitI4 0
  loc_B94D47: LitI2_Byte 0
  loc_B94D49: LitI4 1
  loc_B94D4E: ImpAdLdI4 MemVar_C0F044
  loc_B94D51: LitStr "furni\"
  loc_B94D54: ConcatStr
  loc_B94D55: CVarStr var_10C
  loc_B94D58: FLdRfVar var_1A8
  loc_B94D5B: ConcatVar var_11C
  loc_B94D5F: LitVarStr var_B8, "\type.txt"
  loc_B94D64: ConcatVar var_15C
  loc_B94D68: CStrVarVal var_FC
  loc_B94D6C: ImpAdLdRf MemVar_C0F040
  loc_B94D6F: NewIfNullPr IFileSystem3
  loc_B94D72: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B94D77: FLdPr var_1AC
  loc_B94D7A:  = Me.ReadAll
  loc_B94D7F: FLdZeroAd var_184
  loc_B94D82: CVarStr var_170
  loc_B94D85: FStVar var_1BC
  loc_B94D89: FFree1Str var_FC
  loc_B94D8C: FFree1Ad var_1AC
  loc_B94D8F: FFreeVar var_10C = "": var_11C = ""
  loc_B94D98: FLdRfVar var_1BC
  loc_B94D9B: LitVarStr var_B8, "rug"
  loc_B94DA0: HardType
  loc_B94DA1: EqVar var_10C
  loc_B94DA5: NotVar var_11C
  loc_B94DA9: FLdRfVar var_1BC
  loc_B94DAC: LitVarStr var_C8, "sit"
  loc_B94DB1: HardType
  loc_B94DB2: EqVar var_15C
  loc_B94DB6: FLdRfVar var_1BC
  loc_B94DB9: LitVarStr var_D8, "bed"
  loc_B94DBE: HardType
  loc_B94DBF: EqVar var_170
  loc_B94DC3: OrVar var_180
  loc_B94DC7: FLdI2 arg_14
  loc_B94DCA: LitI2_Byte 1
  loc_B94DCC: SubI2
  loc_B94DCD: FLdI2 arg_1C
  loc_B94DD0: EqI2
  loc_B94DD1: CVarBoolI2 var_1CC
  loc_B94DD5: AndVar var_1DC
  loc_B94DD9: FLdI2 arg_10
  loc_B94DDC: FLdI2 arg_18
  loc_B94DDF: EqI2
  loc_B94DE0: CVarBoolI2 var_1EC
  loc_B94DE4: AndVar var_1FC
  loc_B94DE8: NotVar var_20C
  loc_B94DEC: AndVar var_21C
  loc_B94DF0: CBoolVarNull
  loc_B94DF2: FFreeVar var_1CC = ""
  loc_B94DF9: BranchF loc_B94DFD
  loc_B94DFC: ExitProc
  loc_B94DFD: FLdI2 arg_10
  loc_B94E00: CStrUI1
  loc_B94E02: FStStrNoPop var_FC
  loc_B94E05: LitStr ","
  loc_B94E08: ConcatStr
  loc_B94E09: FStStrNoPop var_184
  loc_B94E0C: FLdI2 arg_14
  loc_B94E0F: LitI2_Byte 1
  loc_B94E11: SubI2
  loc_B94E12: CStrUI1
  loc_B94E14: FStStrNoPop var_188
  loc_B94E17: ConcatStr
  loc_B94E18: FStStr var_88
  loc_B94E1B: FFreeStr var_FC = "": var_184 = ""
  loc_B94E24: LitStr "0,0"
  loc_B94E27: ILdI2 arg_C
  loc_B94E2A: CI4UI1
  loc_B94E2B: ImpAdLdI4 MemVar_C0F100
  loc_B94E2E: Ary1LdPr
  loc_B94E2F: MemStStrCopy
  loc_B94E33: ILdRf var_90
  loc_B94E36: LitStr "R"
  loc_B94E39: EqStr
  loc_B94E3B: BranchF loc_B94F3C
  loc_B94E3E: LitI4 &HD
  loc_B94E43: FLdRfVar var_10C
  loc_B94E46: ImpAdCallFPR4  = Chr()
  loc_B94E4B: FLdI2 arg_14
  loc_B94E4E: LitI2_Byte 1
  loc_B94E50: SubI2
  loc_B94E51: CVarI2 var_B8
  loc_B94E54: PopAdLdVar
  loc_B94E55: LitI4 0
  loc_B94E5A: LitI4 -1
  loc_B94E5F: FLdRfVar var_10C
  loc_B94E62: ILdI4 arg_28
  loc_B94E65: FLdRfVar var_11C
  loc_B94E68: ImpAdCallFPR4  = Split(, , , )
  loc_B94E6D: FLdRfVar var_11C
  loc_B94E70: VarIndexLdRfVarLock
  loc_B94E78: FStR4 var_A8
  loc_B94E7B: LitVarI2 var_170, 1
  loc_B94E80: FLdI2 arg_10
  loc_B94E83: LitI2_Byte 1
  loc_B94E85: AddI2
  loc_B94E86: CI4UI1
  loc_B94E87: ILdRf var_A8
  loc_B94E8A: FLdRfVar var_180
  loc_B94E8D: ImpAdCallFPR4  = Mid(, , )
  loc_B94E92: AryUnlock
  loc_B94E95: FLdRfVar var_180
  loc_B94E98: CStrVarVal var_FC
  loc_B94E9C: ImpAdCallFPR4 push push Val()
  loc_B94EA1: FStFPR8 var_224
  loc_B94EA4: LitI4 0
  loc_B94EA9: LitI4 -1
  loc_B94EAE: LitI4 1
  loc_B94EB3: LitStr "."
  loc_B94EB6: LitStr ","
  loc_B94EB9: FLdFPR8 var_224
  loc_B94EBC: LitDate 0.4
  loc_B94EC5: AddR8
  loc_B94EC6: CStrR8
  loc_B94EC8: FStStrNoPop var_184
  loc_B94ECB: ImpAdCallI2 Replace(, , , , , )
  loc_B94ED0: FStStrNoPop var_188
  loc_B94ED3: ILdI2 arg_C
  loc_B94ED6: CI4UI1
  loc_B94ED7: ImpAdLdI4 MemVar_C0F100
  loc_B94EDA: Ary1LdPr
  loc_B94EDB: MemStStrCopy
  loc_B94EDF: FFreeStr var_FC = "": var_184 = ""
  loc_B94EE8: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = ""
  loc_B94EF5: LitI4 1
  loc_B94EFA: ILdI2 arg_C
  loc_B94EFD: CI4UI1
  loc_B94EFE: ImpAdLdI4 MemVar_C0F100
  loc_B94F01: Ary1LdPr
  loc_B94F02: MemLdStr global_296
  loc_B94F05: LitStr "."
  loc_B94F08: LitI4 0
  loc_B94F0D: FnInStr4
  loc_B94F0F: LitI4 0
  loc_B94F14: EqI4
  loc_B94F15: BranchF loc_B94F39
  loc_B94F18: ILdI2 arg_C
  loc_B94F1B: CI4UI1
  loc_B94F1C: ImpAdLdI4 MemVar_C0F100
  loc_B94F1F: Ary1LdPr
  loc_B94F20: MemLdStr global_296
  loc_B94F23: LitStr ".0"
  loc_B94F26: ConcatStr
  loc_B94F27: FStStrNoPop var_FC
  loc_B94F2A: ILdI2 arg_C
  loc_B94F2D: CI4UI1
  loc_B94F2E: ImpAdLdI4 MemVar_C0F100
  loc_B94F31: Ary1LdPr
  loc_B94F32: MemStStrCopy
  loc_B94F36: FFree1Str var_FC
  loc_B94F39: Branch loc_B94FC1
  loc_B94F3C: LitI4 &HD
  loc_B94F41: FLdRfVar var_10C
  loc_B94F44: ImpAdCallFPR4  = Chr()
  loc_B94F49: FLdI2 arg_14
  loc_B94F4C: LitI2_Byte 1
  loc_B94F4E: SubI2
  loc_B94F4F: CVarI2 var_B8
  loc_B94F52: PopAdLdVar
  loc_B94F53: LitI4 0
  loc_B94F58: LitI4 -1
  loc_B94F5D: FLdRfVar var_10C
  loc_B94F60: ILdI4 arg_28
  loc_B94F63: FLdRfVar var_11C
  loc_B94F66: ImpAdCallFPR4  = Split(, , , )
  loc_B94F6B: FLdRfVar var_11C
  loc_B94F6E: VarIndexLdRfVarLock
  loc_B94F76: FStR4 var_A8
  loc_B94F79: LitVarI2 var_170, 1
  loc_B94F7E: FLdI2 arg_10
  loc_B94F81: LitI2_Byte 1
  loc_B94F83: AddI2
  loc_B94F84: CI4UI1
  loc_B94F85: ILdRf var_A8
  loc_B94F88: FLdRfVar var_180
  loc_B94F8B: ImpAdCallFPR4  = Mid(, , )
  loc_B94F90: AryUnlock
  loc_B94F93: FLdRfVar var_180
  loc_B94F96: LitVarStr var_1CC, ".0"
  loc_B94F9B: ConcatVar var_1DC
  loc_B94F9F: CStrVarTmp
  loc_B94FA0: FStStrNoPop var_FC
  loc_B94FA3: ILdI2 arg_C
  loc_B94FA6: CI4UI1
  loc_B94FA7: ImpAdLdI4 MemVar_C0F100
  loc_B94FAA: Ary1LdPr
  loc_B94FAB: MemStStrCopy
  loc_B94FAF: FFree1Str var_FC
  loc_B94FB2: FFreeVar var_10C = "": var_11C = "": var_15C = "": var_170 = "": var_180 = ""
  loc_B94FC1: LitI4 0
  loc_B94FC6: ILdI2 arg_C
  loc_B94FC9: CI4UI1
  loc_B94FCA: ImpAdLdI4 MemVar_C0F100
  loc_B94FCD: Ary1LdPr
  loc_B94FCE: MemStI4 global_332
  loc_B94FD1: LitI2_Byte 0
  loc_B94FD3: ILdI2 arg_C
  loc_B94FD6: CI4UI1
  loc_B94FD7: ImpAdLdI4 MemVar_C0F100
  loc_B94FDA: Ary1LdPr
  loc_B94FDB: MemStI2 global_308
  loc_B94FDE: LitI2_Byte 0
  loc_B94FE0: ILdI2 arg_C
  loc_B94FE3: CI4UI1
  loc_B94FE4: ImpAdLdI4 MemVar_C0F100
  loc_B94FE7: Ary1LdPr
  loc_B94FE8: MemStI2 global_312
  loc_B94FEB: ExitProc
  loc_B94FEC: ExitProc
  loc_B94FED: LitI2 526
End Function

Private Function Proc_6_1_B97C3C(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28) 'B97C3C
  'Data Table: 53AAA8
  loc_B95104: LitStr "NoPath"
  loc_B95107: FStStrCopy var_88
  loc_B9510A: OnErrorGoto loc_B97C38
  loc_B9510D: FLdI2 arg_10
  loc_B95110: FLdI2 arg_18
  loc_B95113: GtI2
  loc_B95114: FLdI2 arg_14
  loc_B95117: FLdI2 arg_1C
  loc_B9511A: GtI2
  loc_B9511B: AndI4
  loc_B9511C: BranchF loc_B9567C
  loc_B9511F: LitVarI2 var_D4, 1
  loc_B95124: FLdRfVar var_A0
  loc_B95127: FLdRfVar var_A4
  loc_B9512A: ImpAdLdRf MemVar_C0F018
  loc_B9512D: NewIfNullPr frmMain
  loc_B95130: from_stack_1v = frmMain.SockIGet()
  loc_B95135: ILdRf var_A4
  loc_B95138: CVarI4
  loc_B9513C: ForVar var_F4
  loc_B95142: FLdRfVar var_A0
  loc_B95145: CI4Var
  loc_B95147: ImpAdLdI4 MemVar_C0F100
  loc_B9514A: Ary1LdPr
  loc_B9514B: MemLdFPR8 global_224
  loc_B9514E: FLdI2 arg_20
  loc_B95151: CR8I2
  loc_B95152: EqR4
  loc_B95153: BranchF loc_B95183
  loc_B95156: FLdRfVar var_A0
  loc_B95159: CI4Var
  loc_B9515B: ImpAdLdI4 MemVar_C0F100
  loc_B9515E: Ary1LdPr
  loc_B9515F: MemLdFPR8 global_232
  loc_B95162: FLdI2 arg_10
  loc_B95165: LitI2_Byte 1
  loc_B95167: SubI2
  loc_B95168: CR8I2
  loc_B95169: EqR4
  loc_B9516A: FLdRfVar var_A0
  loc_B9516D: CI4Var
  loc_B9516F: ImpAdLdI4 MemVar_C0F100
  loc_B95172: Ary1LdPr
  loc_B95173: MemLdFPR8 global_240
  loc_B95176: FLdI2 arg_14
  loc_B95179: LitI2_Byte 1
  loc_B9517B: SubI2
  loc_B9517C: CR8I2
  loc_B9517D: EqR4
  loc_B9517E: AndI4
  loc_B9517F: BranchF loc_B95183
  loc_B95182: ExitProc
  loc_B95183: FLdRfVar var_A0
  loc_B95186: NextStepVar var_F4
  loc_B9518C: FLdRfVar var_F8
  loc_B9518F: ImpAdLdRf MemVar_C0F018
  loc_B95192: NewIfNullPr frmMain
  loc_B95195: from_stack_1v = frmMain.HpetsGet()
  loc_B9519A: LitI4 0
  loc_B9519F: LitI4 -1
  loc_B951A4: LitVarStr var_B4, ";"
  loc_B951A9: FStVarCopyObj var_108
  loc_B951AC: FLdRfVar var_108
  loc_B951AF: ILdRf var_F8
  loc_B951B2: FLdRfVar var_118
  loc_B951B5: ImpAdCallFPR4  = Split(, , , )
  loc_B951BA: FLdRfVar var_118
  loc_B951BD: FStVar var_128
  loc_B951C1: FFree1Str var_F8
  loc_B951C4: FFree1Var var_108 = ""
  loc_B951C7: LitVarI2 var_D4, 0
  loc_B951CC: FLdRfVar var_A0
  loc_B951CF: FLdRfVar var_128
  loc_B951D2: CRefVarAry
  loc_B951D4: PopAdLd4
  loc_B951D5: LitI2_Byte 1
  loc_B951D7: FnUBound
  loc_B951D9: CVarI4
  loc_B951DD: ForVar var_148
  loc_B951E3: FLdRfVar var_A0
  loc_B951E6: CDargRef
  loc_B951EA: FLdRfVar var_128
  loc_B951ED: VarIndexLdVar
  loc_B951F3: LitVarStr var_C4, vbNullString
  loc_B951F8: HardType
  loc_B951F9: NeVarBool
  loc_B951FB: FFree1Var var_108 = ""
  loc_B951FE: BranchF loc_B95273
  loc_B95201: FLdRfVar var_A0
  loc_B95204: CDargRef
  loc_B95208: FLdRfVar var_128
  loc_B9520B: VarIndexLdVar
  loc_B95211: CI4Var
  loc_B95213: ImpAdLdI4 MemVar_C0F160
  loc_B95216: Ary1LdPr
  loc_B95217: MemLdFPR8 global_16
  loc_B9521A: FLdI2 arg_20
  loc_B9521D: CR8I2
  loc_B9521E: EqR4
  loc_B9521F: FFree1Var var_108 = ""
  loc_B95222: BranchF loc_B95273
  loc_B95225: FLdRfVar var_A0
  loc_B95228: CDargRef
  loc_B9522C: FLdRfVar var_128
  loc_B9522F: VarIndexLdVar
  loc_B95235: CI4Var
  loc_B95237: ImpAdLdI4 MemVar_C0F160
  loc_B9523A: Ary1LdPr
  loc_B9523B: MemLdFPR8 global_44
  loc_B9523E: FLdI2 arg_10
  loc_B95241: LitI2_Byte 1
  loc_B95243: SubI2
  loc_B95244: CR8I2
  loc_B95245: EqR4
  loc_B95246: FLdRfVar var_A0
  loc_B95249: CDargRef
  loc_B9524D: FLdRfVar var_128
  loc_B95250: VarIndexLdVar
  loc_B95256: CI4Var
  loc_B95258: ImpAdLdI4 MemVar_C0F160
  loc_B9525B: Ary1LdPr
  loc_B9525C: MemLdFPR8 global_52
  loc_B9525F: FLdI2 arg_14
  loc_B95262: LitI2_Byte 1
  loc_B95264: SubI2
  loc_B95265: CR8I2
  loc_B95266: EqR4
  loc_B95267: AndI4
  loc_B95268: FFreeVar var_108 = ""
  loc_B9526F: BranchF loc_B95273
  loc_B95272: ExitProc
  loc_B95273: FLdRfVar var_A0
  loc_B95276: NextStepVar var_148
  loc_B9527C: LitI4 &HD
  loc_B95281: FLdRfVar var_108
  loc_B95284: ImpAdCallFPR4  = Chr()
  loc_B95289: FLdI2 arg_14
  loc_B9528C: LitI2_Byte 1
  loc_B9528E: SubI2
  loc_B9528F: CVarI2 var_B4
  loc_B95292: PopAdLdVar
  loc_B95293: LitI4 0
  loc_B95298: LitI4 -1
  loc_B9529D: FLdRfVar var_108
  loc_B952A0: ILdI4 arg_24
  loc_B952A3: FLdRfVar var_118
  loc_B952A6: ImpAdCallFPR4  = Split(, , , )
  loc_B952AB: FLdRfVar var_118
  loc_B952AE: VarIndexLdRfVarLock
  loc_B952B6: FStR4 var_A4
  loc_B952B9: LitVarI2 var_16C, 1
  loc_B952BE: FLdI2 arg_10
  loc_B952C1: CI4UI1
  loc_B952C2: ILdRf var_A4
  loc_B952C5: FLdRfVar var_17C
  loc_B952C8: ImpAdCallFPR4  = Mid(, , )
  loc_B952CD: AryUnlock
  loc_B952D0: FLdRfVar var_17C
  loc_B952D3: CStrVarTmp
  loc_B952D4: FStStr var_90
  loc_B952D7: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = ""
  loc_B952E4: ILdRf var_90
  loc_B952E7: LitStr "O"
  loc_B952EA: EqStr
  loc_B952EC: ILdRf var_90
  loc_B952EF: LitStr "D"
  loc_B952F2: EqStr
  loc_B952F4: OrI4
  loc_B952F5: ILdRf var_90
  loc_B952F8: LitStr "R"
  loc_B952FB: EqStr
  loc_B952FD: OrI4
  loc_B952FE: ILdRf var_90
  loc_B95301: LitStr "S"
  loc_B95304: EqStr
  loc_B95306: ILdRf var_90
  loc_B95309: LitStr "L"
  loc_B9530C: EqStr
  loc_B9530E: OrI4
  loc_B9530F: FLdI2 arg_14
  loc_B95312: LitI2_Byte 1
  loc_B95314: SubI2
  loc_B95315: FLdI2 arg_1C
  loc_B95318: EqI2
  loc_B95319: AndI4
  loc_B9531A: FLdI2 arg_10
  loc_B9531D: LitI2_Byte 1
  loc_B9531F: SubI2
  loc_B95320: FLdI2 arg_18
  loc_B95323: EqI2
  loc_B95324: AndI4
  loc_B95325: OrI4
  loc_B95326: BranchF loc_B9567C
  loc_B95329: ILdRf var_90
  loc_B9532C: LitStr "R"
  loc_B9532F: EqStr
  loc_B95331: BranchF loc_B95481
  loc_B95334: LitI4 0
  loc_B95339: FStStrCopy var_194
  loc_B9533C: FLdRfVar var_194
  loc_B9533F: ImpAdLdI4 MemVar_C0F044
  loc_B95342: LitStr "privaterooms\"
  loc_B95345: ConcatStr
  loc_B95346: FStStrNoPop var_188
  loc_B95349: ILdI2 arg_C
  loc_B9534C: CI4UI1
  loc_B9534D: ImpAdLdI4 MemVar_C0F160
  loc_B95350: Ary1LdPr
  loc_B95351: MemLdFPR8 global_16
  loc_B95354: CStrR8
  loc_B95356: FStStrNoPop var_18C
  loc_B95359: ConcatStr
  loc_B9535A: FStStrNoPop var_190
  loc_B9535D: LitStr "\rotation.txt"
  loc_B95360: ConcatStr
  loc_B95361: CVarStr var_118
  loc_B95364: FLdI2 arg_10
  loc_B95367: LitI2_Byte 1
  loc_B95369: SubI2
  loc_B9536A: CStrUI1
  loc_B9536C: FStStrNoPop var_F8
  loc_B9536F: LitStr ","
  loc_B95372: ConcatStr
  loc_B95373: FStStrNoPop var_180
  loc_B95376: FLdI2 arg_14
  loc_B95379: LitI2_Byte 1
  loc_B9537B: SubI2
  loc_B9537C: CStrUI1
  loc_B9537E: FStStrNoPop var_184
  loc_B95381: ConcatStr
  loc_B95382: CVarStr var_108
  loc_B95385: LitVarStr var_B4, "furnies"
  loc_B9538A: PopAdLdVar
  loc_B9538B: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B95390: CVarStr var_158
  loc_B95393: FStVar var_1A4
  loc_B95397: FFreeStr var_F8 = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_B953A8: FFreeVar var_108 = ""
  loc_B953AF: FLdRfVar var_1A4
  loc_B953B2: LitVarStr var_B4, vbNullString
  loc_B953B7: HardType
  loc_B953B8: NeVarBool
  loc_B953BA: BranchF loc_B95481
  loc_B953BD: FLdRfVar var_180
  loc_B953C0: FLdRfVar var_1A8
  loc_B953C3: LitI4 0
  loc_B953C8: LitI2_Byte 0
  loc_B953CA: LitI4 1
  loc_B953CF: ImpAdLdI4 MemVar_C0F044
  loc_B953D2: LitStr "furni\"
  loc_B953D5: ConcatStr
  loc_B953D6: CVarStr var_108
  loc_B953D9: FLdRfVar var_1A4
  loc_B953DC: ConcatVar var_118
  loc_B953E0: LitVarStr var_B4, "\type.txt"
  loc_B953E5: ConcatVar var_158
  loc_B953E9: CStrVarVal var_F8
  loc_B953ED: ImpAdLdRf MemVar_C0F040
  loc_B953F0: NewIfNullPr IFileSystem3
  loc_B953F3: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B953F8: FLdPr var_1A8
  loc_B953FB:  = Me.ReadAll
  loc_B95400: FLdZeroAd var_180
  loc_B95403: CVarStr var_16C
  loc_B95406: FStVar var_1B8
  loc_B9540A: FFree1Str var_F8
  loc_B9540D: FFree1Ad var_1A8
  loc_B95410: FFreeVar var_108 = "": var_118 = ""
  loc_B95419: FLdRfVar var_1B8
  loc_B9541C: LitVarStr var_B4, "rug"
  loc_B95421: HardType
  loc_B95422: EqVar var_108
  loc_B95426: NotVar var_118
  loc_B9542A: FLdRfVar var_1B8
  loc_B9542D: LitVarStr var_C4, "sit"
  loc_B95432: HardType
  loc_B95433: EqVar var_158
  loc_B95437: FLdRfVar var_1B8
  loc_B9543A: LitVarStr var_D4, "bed"
  loc_B9543F: HardType
  loc_B95440: EqVar var_16C
  loc_B95444: OrVar var_17C
  loc_B95448: FLdI2 arg_14
  loc_B9544B: FLdI2 arg_1C
  loc_B9544E: LitI2_Byte 1
  loc_B95450: SubI2
  loc_B95451: EqI2
  loc_B95452: CVarBoolI2 var_1C8
  loc_B95456: AndVar var_1D8
  loc_B9545A: FLdI2 arg_10
  loc_B9545D: LitI2_Byte 1
  loc_B9545F: SubI2
  loc_B95460: FLdI2 arg_18
  loc_B95463: EqI2
  loc_B95464: CVarBoolI2 var_1E8
  loc_B95468: AndVar var_1F8
  loc_B9546C: NotVar var_208
  loc_B95470: AndVar var_218
  loc_B95474: CBoolVarNull
  loc_B95476: FFreeVar var_1C8 = ""
  loc_B9547D: BranchF loc_B95481
  loc_B95480: ExitProc
  loc_B95481: LitStr "7,7"
  loc_B95484: ILdI2 arg_C
  loc_B95487: CI4UI1
  loc_B95488: ImpAdLdI4 MemVar_C0F160
  loc_B9548B: Ary1LdPr
  loc_B9548C: MemStStrCopy
  loc_B95490: FLdI2 arg_10
  loc_B95493: LitI2_Byte 1
  loc_B95495: SubI2
  loc_B95496: CStrUI1
  loc_B95498: FStStrNoPop var_F8
  loc_B9549B: LitStr ","
  loc_B9549E: ConcatStr
  loc_B9549F: FStStrNoPop var_180
  loc_B954A2: FLdI2 arg_14
  loc_B954A5: LitI2_Byte 1
  loc_B954A7: SubI2
  loc_B954A8: CStrUI1
  loc_B954AA: FStStrNoPop var_184
  loc_B954AD: ConcatStr
  loc_B954AE: FStStr var_88
  loc_B954B1: FFreeStr var_F8 = "": var_180 = ""
  loc_B954BA: ILdRf var_90
  loc_B954BD: LitStr "R"
  loc_B954C0: EqStr
  loc_B954C2: BranchF loc_B955C0
  loc_B954C5: LitI4 &HD
  loc_B954CA: FLdRfVar var_108
  loc_B954CD: ImpAdCallFPR4  = Chr()
  loc_B954D2: FLdI2 arg_14
  loc_B954D5: LitI2_Byte 1
  loc_B954D7: SubI2
  loc_B954D8: CVarI2 var_B4
  loc_B954DB: PopAdLdVar
  loc_B954DC: LitI4 0
  loc_B954E1: LitI4 -1
  loc_B954E6: FLdRfVar var_108
  loc_B954E9: ILdI4 arg_28
  loc_B954EC: FLdRfVar var_118
  loc_B954EF: ImpAdCallFPR4  = Split(, , , )
  loc_B954F4: FLdRfVar var_118
  loc_B954F7: VarIndexLdRfVarLock
  loc_B954FF: FStR4 var_A4
  loc_B95502: LitVarI2 var_16C, 1
  loc_B95507: FLdI2 arg_10
  loc_B9550A: CI4UI1
  loc_B9550B: ILdRf var_A4
  loc_B9550E: FLdRfVar var_17C
  loc_B95511: ImpAdCallFPR4  = Mid(, , )
  loc_B95516: AryUnlock
  loc_B95519: FLdRfVar var_17C
  loc_B9551C: CStrVarVal var_F8
  loc_B95520: ImpAdCallFPR4 push push Val()
  loc_B95525: FStFPR8 var_220
  loc_B95528: LitI4 0
  loc_B9552D: LitI4 -1
  loc_B95532: LitI4 1
  loc_B95537: LitStr "."
  loc_B9553A: LitStr ","
  loc_B9553D: FLdFPR8 var_220
  loc_B95540: LitDate 0.4
  loc_B95549: AddR8
  loc_B9554A: CStrR8
  loc_B9554C: FStStrNoPop var_180
  loc_B9554F: ImpAdCallI2 Replace(, , , , , )
  loc_B95554: FStStrNoPop var_184
  loc_B95557: ILdI2 arg_C
  loc_B9555A: CI4UI1
  loc_B9555B: ImpAdLdI4 MemVar_C0F160
  loc_B9555E: Ary1LdPr
  loc_B9555F: MemStStrCopy
  loc_B95563: FFreeStr var_F8 = "": var_180 = ""
  loc_B9556C: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = ""
  loc_B95579: LitI4 1
  loc_B9557E: ILdI2 arg_C
  loc_B95581: CI4UI1
  loc_B95582: ImpAdLdI4 MemVar_C0F160
  loc_B95585: Ary1LdPr
  loc_B95586: MemLdStr global_96
  loc_B95589: LitStr "."
  loc_B9558C: LitI4 0
  loc_B95591: FnInStr4
  loc_B95593: LitI4 0
  loc_B95598: EqI4
  loc_B95599: BranchF loc_B955BD
  loc_B9559C: ILdI2 arg_C
  loc_B9559F: CI4UI1
  loc_B955A0: ImpAdLdI4 MemVar_C0F160
  loc_B955A3: Ary1LdPr
  loc_B955A4: MemLdStr global_96
  loc_B955A7: LitStr ".0"
  loc_B955AA: ConcatStr
  loc_B955AB: FStStrNoPop var_F8
  loc_B955AE: ILdI2 arg_C
  loc_B955B1: CI4UI1
  loc_B955B2: ImpAdLdI4 MemVar_C0F160
  loc_B955B5: Ary1LdPr
  loc_B955B6: MemStStrCopy
  loc_B955BA: FFree1Str var_F8
  loc_B955BD: Branch loc_B95642
  loc_B955C0: LitI4 &HD
  loc_B955C5: FLdRfVar var_108
  loc_B955C8: ImpAdCallFPR4  = Chr()
  loc_B955CD: FLdI2 arg_14
  loc_B955D0: LitI2_Byte 1
  loc_B955D2: SubI2
  loc_B955D3: CVarI2 var_B4
  loc_B955D6: PopAdLdVar
  loc_B955D7: LitI4 0
  loc_B955DC: LitI4 -1
  loc_B955E1: FLdRfVar var_108
  loc_B955E4: ILdI4 arg_28
  loc_B955E7: FLdRfVar var_118
  loc_B955EA: ImpAdCallFPR4  = Split(, , , )
  loc_B955EF: FLdRfVar var_118
  loc_B955F2: VarIndexLdRfVarLock
  loc_B955FA: FStR4 var_A4
  loc_B955FD: LitVarI2 var_16C, 1
  loc_B95602: FLdI2 arg_10
  loc_B95605: CI4UI1
  loc_B95606: ILdRf var_A4
  loc_B95609: FLdRfVar var_17C
  loc_B9560C: ImpAdCallFPR4  = Mid(, , )
  loc_B95611: AryUnlock
  loc_B95614: FLdRfVar var_17C
  loc_B95617: LitVarStr var_1C8, ".0"
  loc_B9561C: ConcatVar var_1D8
  loc_B95620: CStrVarTmp
  loc_B95621: FStStrNoPop var_F8
  loc_B95624: ILdI2 arg_C
  loc_B95627: CI4UI1
  loc_B95628: ImpAdLdI4 MemVar_C0F160
  loc_B9562B: Ary1LdPr
  loc_B9562C: MemStStrCopy
  loc_B95630: FFree1Str var_F8
  loc_B95633: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = "": var_17C = ""
  loc_B95642: LitI4 0
  loc_B95647: ILdI2 arg_C
  loc_B9564A: CI4UI1
  loc_B9564B: ImpAdLdI4 MemVar_C0F160
  loc_B9564E: Ary1LdPr
  loc_B9564F: MemStI4 global_8
  loc_B95652: LitI2_Byte 0
  loc_B95654: ILdI2 arg_C
  loc_B95657: CI4UI1
  loc_B95658: ImpAdLdI4 MemVar_C0F160
  loc_B9565B: Ary1LdPr
  loc_B9565C: MemStI2 global_104
  loc_B9565F: LitStr vbNullString
  loc_B95662: ILdI2 arg_C
  loc_B95665: CI4UI1
  loc_B95666: ImpAdLdI4 MemVar_C0F160
  loc_B95669: Ary1LdPr
  loc_B9566A: MemStStrCopy
  loc_B9566E: LitI2_Byte 0
  loc_B95670: ILdI2 arg_C
  loc_B95673: CI4UI1
  loc_B95674: ImpAdLdI4 MemVar_C0F160
  loc_B95677: Ary1LdPr
  loc_B95678: MemStI2 global_106
  loc_B9567B: ExitProc
  loc_B9567C: FLdI2 arg_10
  loc_B9567F: FLdI2 arg_18
  loc_B95682: LtI2
  loc_B95683: FLdI2 arg_14
  loc_B95686: FLdI2 arg_1C
  loc_B95689: LtI2
  loc_B9568A: AndI4
  loc_B9568B: BranchF loc_B95BF4
  loc_B9568E: LitVarI2 var_D4, 1
  loc_B95693: FLdRfVar var_A0
  loc_B95696: FLdRfVar var_A4
  loc_B95699: ImpAdLdRf MemVar_C0F018
  loc_B9569C: NewIfNullPr frmMain
  loc_B9569F: from_stack_1v = frmMain.SockIGet()
  loc_B956A4: ILdRf var_A4
  loc_B956A7: CVarI4
  loc_B956AB: ForVar var_240
  loc_B956B1: FLdRfVar var_A0
  loc_B956B4: CI4Var
  loc_B956B6: ImpAdLdI4 MemVar_C0F100
  loc_B956B9: Ary1LdPr
  loc_B956BA: MemLdFPR8 global_224
  loc_B956BD: FLdI2 arg_20
  loc_B956C0: CR8I2
  loc_B956C1: EqR4
  loc_B956C2: BranchF loc_B956F2
  loc_B956C5: FLdRfVar var_A0
  loc_B956C8: CI4Var
  loc_B956CA: ImpAdLdI4 MemVar_C0F100
  loc_B956CD: Ary1LdPr
  loc_B956CE: MemLdFPR8 global_232
  loc_B956D1: FLdI2 arg_10
  loc_B956D4: LitI2_Byte 1
  loc_B956D6: AddI2
  loc_B956D7: CR8I2
  loc_B956D8: EqR4
  loc_B956D9: FLdRfVar var_A0
  loc_B956DC: CI4Var
  loc_B956DE: ImpAdLdI4 MemVar_C0F100
  loc_B956E1: Ary1LdPr
  loc_B956E2: MemLdFPR8 global_240
  loc_B956E5: FLdI2 arg_14
  loc_B956E8: LitI2_Byte 1
  loc_B956EA: AddI2
  loc_B956EB: CR8I2
  loc_B956EC: EqR4
  loc_B956ED: AndI4
  loc_B956EE: BranchF loc_B956F2
  loc_B956F1: ExitProc
  loc_B956F2: FLdRfVar var_A0
  loc_B956F5: NextStepVar var_240
  loc_B956FB: FLdRfVar var_F8
  loc_B956FE: ImpAdLdRf MemVar_C0F018
  loc_B95701: NewIfNullPr frmMain
  loc_B95704: from_stack_1v = frmMain.HpetsGet()
  loc_B95709: LitI4 0
  loc_B9570E: LitI4 -1
  loc_B95713: LitVarStr var_B4, ";"
  loc_B95718: FStVarCopyObj var_108
  loc_B9571B: FLdRfVar var_108
  loc_B9571E: ILdRf var_F8
  loc_B95721: FLdRfVar var_118
  loc_B95724: ImpAdCallFPR4  = Split(, , , )
  loc_B95729: FLdRfVar var_118
  loc_B9572C: FStVar var_128
  loc_B95730: FFree1Str var_F8
  loc_B95733: FFree1Var var_108 = ""
  loc_B95736: LitVarI2 var_D4, 0
  loc_B9573B: FLdRfVar var_A0
  loc_B9573E: FLdRfVar var_128
  loc_B95741: CRefVarAry
  loc_B95743: PopAdLd4
  loc_B95744: LitI2_Byte 1
  loc_B95746: FnUBound
  loc_B95748: CVarI4
  loc_B9574C: ForVar var_260
  loc_B95752: FLdRfVar var_A0
  loc_B95755: CDargRef
  loc_B95759: FLdRfVar var_128
  loc_B9575C: VarIndexLdVar
  loc_B95762: LitVarStr var_C4, vbNullString
  loc_B95767: HardType
  loc_B95768: NeVarBool
  loc_B9576A: FFree1Var var_108 = ""
  loc_B9576D: BranchF loc_B957E2
  loc_B95770: FLdRfVar var_A0
  loc_B95773: CDargRef
  loc_B95777: FLdRfVar var_128
  loc_B9577A: VarIndexLdVar
  loc_B95780: CI4Var
  loc_B95782: ImpAdLdI4 MemVar_C0F160
  loc_B95785: Ary1LdPr
  loc_B95786: MemLdFPR8 global_16
  loc_B95789: FLdI2 arg_20
  loc_B9578C: CR8I2
  loc_B9578D: EqR4
  loc_B9578E: FFree1Var var_108 = ""
  loc_B95791: BranchF loc_B957E2
  loc_B95794: FLdRfVar var_A0
  loc_B95797: CDargRef
  loc_B9579B: FLdRfVar var_128
  loc_B9579E: VarIndexLdVar
  loc_B957A4: CI4Var
  loc_B957A6: ImpAdLdI4 MemVar_C0F160
  loc_B957A9: Ary1LdPr
  loc_B957AA: MemLdFPR8 global_44
  loc_B957AD: FLdI2 arg_10
  loc_B957B0: LitI2_Byte 1
  loc_B957B2: AddI2
  loc_B957B3: CR8I2
  loc_B957B4: EqR4
  loc_B957B5: FLdRfVar var_A0
  loc_B957B8: CDargRef
  loc_B957BC: FLdRfVar var_128
  loc_B957BF: VarIndexLdVar
  loc_B957C5: CI4Var
  loc_B957C7: ImpAdLdI4 MemVar_C0F160
  loc_B957CA: Ary1LdPr
  loc_B957CB: MemLdFPR8 global_52
  loc_B957CE: FLdI2 arg_14
  loc_B957D1: LitI2_Byte 1
  loc_B957D3: AddI2
  loc_B957D4: CR8I2
  loc_B957D5: EqR4
  loc_B957D6: AndI4
  loc_B957D7: FFreeVar var_108 = ""
  loc_B957DE: BranchF loc_B957E2
  loc_B957E1: ExitProc
  loc_B957E2: FLdRfVar var_A0
  loc_B957E5: NextStepVar var_260
  loc_B957EB: LitI4 &HD
  loc_B957F0: FLdRfVar var_108
  loc_B957F3: ImpAdCallFPR4  = Chr()
  loc_B957F8: FLdI2 arg_14
  loc_B957FB: LitI2_Byte 1
  loc_B957FD: AddI2
  loc_B957FE: CVarI2 var_B4
  loc_B95801: PopAdLdVar
  loc_B95802: LitI4 0
  loc_B95807: LitI4 -1
  loc_B9580C: FLdRfVar var_108
  loc_B9580F: ILdI4 arg_24
  loc_B95812: FLdRfVar var_118
  loc_B95815: ImpAdCallFPR4  = Split(, , , )
  loc_B9581A: FLdRfVar var_118
  loc_B9581D: VarIndexLdRfVarLock
  loc_B95825: FStR4 var_A4
  loc_B95828: LitVarI2 var_16C, 1
  loc_B9582D: FLdI2 arg_10
  loc_B95830: LitI2_Byte 2
  loc_B95832: AddI2
  loc_B95833: CI4UI1
  loc_B95834: ILdRf var_A4
  loc_B95837: FLdRfVar var_17C
  loc_B9583A: ImpAdCallFPR4  = Mid(, , )
  loc_B9583F: AryUnlock
  loc_B95842: FLdRfVar var_17C
  loc_B95845: CStrVarTmp
  loc_B95846: FStStr var_90
  loc_B95849: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = ""
  loc_B95856: ILdRf var_90
  loc_B95859: LitStr "O"
  loc_B9585C: EqStr
  loc_B9585E: ILdRf var_90
  loc_B95861: LitStr "D"
  loc_B95864: EqStr
  loc_B95866: OrI4
  loc_B95867: ILdRf var_90
  loc_B9586A: LitStr "R"
  loc_B9586D: EqStr
  loc_B9586F: OrI4
  loc_B95870: ILdRf var_90
  loc_B95873: LitStr "S"
  loc_B95876: EqStr
  loc_B95878: ILdRf var_90
  loc_B9587B: LitStr "L"
  loc_B9587E: EqStr
  loc_B95880: OrI4
  loc_B95881: FLdI2 arg_14
  loc_B95884: LitI2_Byte 1
  loc_B95886: AddI2
  loc_B95887: FLdI2 arg_1C
  loc_B9588A: EqI2
  loc_B9588B: AndI4
  loc_B9588C: FLdI2 arg_10
  loc_B9588F: LitI2_Byte 1
  loc_B95891: AddI2
  loc_B95892: FLdI2 arg_18
  loc_B95895: EqI2
  loc_B95896: AndI4
  loc_B95897: OrI4
  loc_B95898: BranchF loc_B95BF4
  loc_B9589B: ILdRf var_90
  loc_B9589E: LitStr "R"
  loc_B958A1: EqStr
  loc_B958A3: BranchF loc_B959F3
  loc_B958A6: LitI4 0
  loc_B958AB: FStStrCopy var_194
  loc_B958AE: FLdRfVar var_194
  loc_B958B1: ImpAdLdI4 MemVar_C0F044
  loc_B958B4: LitStr "privaterooms\"
  loc_B958B7: ConcatStr
  loc_B958B8: FStStrNoPop var_188
  loc_B958BB: ILdI2 arg_C
  loc_B958BE: CI4UI1
  loc_B958BF: ImpAdLdI4 MemVar_C0F160
  loc_B958C2: Ary1LdPr
  loc_B958C3: MemLdFPR8 global_16
  loc_B958C6: CStrR8
  loc_B958C8: FStStrNoPop var_18C
  loc_B958CB: ConcatStr
  loc_B958CC: FStStrNoPop var_190
  loc_B958CF: LitStr "\rotation.txt"
  loc_B958D2: ConcatStr
  loc_B958D3: CVarStr var_118
  loc_B958D6: FLdI2 arg_10
  loc_B958D9: LitI2_Byte 1
  loc_B958DB: AddI2
  loc_B958DC: CStrUI1
  loc_B958DE: FStStrNoPop var_F8
  loc_B958E1: LitStr ","
  loc_B958E4: ConcatStr
  loc_B958E5: FStStrNoPop var_180
  loc_B958E8: FLdI2 arg_14
  loc_B958EB: LitI2_Byte 1
  loc_B958ED: AddI2
  loc_B958EE: CStrUI1
  loc_B958F0: FStStrNoPop var_184
  loc_B958F3: ConcatStr
  loc_B958F4: CVarStr var_108
  loc_B958F7: LitVarStr var_B4, "furnies"
  loc_B958FC: PopAdLdVar
  loc_B958FD: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B95902: CVarStr var_158
  loc_B95905: FStVar var_1A4
  loc_B95909: FFreeStr var_F8 = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_B9591A: FFreeVar var_108 = ""
  loc_B95921: FLdRfVar var_1A4
  loc_B95924: LitVarStr var_B4, vbNullString
  loc_B95929: HardType
  loc_B9592A: NeVarBool
  loc_B9592C: BranchF loc_B959F3
  loc_B9592F: FLdRfVar var_180
  loc_B95932: FLdRfVar var_1A8
  loc_B95935: LitI4 0
  loc_B9593A: LitI2_Byte 0
  loc_B9593C: LitI4 1
  loc_B95941: ImpAdLdI4 MemVar_C0F044
  loc_B95944: LitStr "furni\"
  loc_B95947: ConcatStr
  loc_B95948: CVarStr var_108
  loc_B9594B: FLdRfVar var_1A4
  loc_B9594E: ConcatVar var_118
  loc_B95952: LitVarStr var_B4, "\type.txt"
  loc_B95957: ConcatVar var_158
  loc_B9595B: CStrVarVal var_F8
  loc_B9595F: ImpAdLdRf MemVar_C0F040
  loc_B95962: NewIfNullPr IFileSystem3
  loc_B95965: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B9596A: FLdPr var_1A8
  loc_B9596D:  = Me.ReadAll
  loc_B95972: FLdZeroAd var_180
  loc_B95975: CVarStr var_16C
  loc_B95978: FStVar var_1B8
  loc_B9597C: FFree1Str var_F8
  loc_B9597F: FFree1Ad var_1A8
  loc_B95982: FFreeVar var_108 = "": var_118 = ""
  loc_B9598B: FLdRfVar var_1B8
  loc_B9598E: LitVarStr var_B4, "rug"
  loc_B95993: HardType
  loc_B95994: EqVar var_108
  loc_B95998: NotVar var_118
  loc_B9599C: FLdRfVar var_1B8
  loc_B9599F: LitVarStr var_C4, "sit"
  loc_B959A4: HardType
  loc_B959A5: EqVar var_158
  loc_B959A9: FLdRfVar var_1B8
  loc_B959AC: LitVarStr var_D4, "bed"
  loc_B959B1: HardType
  loc_B959B2: EqVar var_16C
  loc_B959B6: OrVar var_17C
  loc_B959BA: FLdI2 arg_14
  loc_B959BD: FLdI2 arg_1C
  loc_B959C0: LitI2_Byte 1
  loc_B959C2: AddI2
  loc_B959C3: EqI2
  loc_B959C4: CVarBoolI2 var_1C8
  loc_B959C8: AndVar var_1D8
  loc_B959CC: FLdI2 arg_10
  loc_B959CF: LitI2_Byte 1
  loc_B959D1: AddI2
  loc_B959D2: FLdI2 arg_18
  loc_B959D5: EqI2
  loc_B959D6: CVarBoolI2 var_1E8
  loc_B959DA: AndVar var_1F8
  loc_B959DE: NotVar var_208
  loc_B959E2: AndVar var_218
  loc_B959E6: CBoolVarNull
  loc_B959E8: FFreeVar var_1C8 = ""
  loc_B959EF: BranchF loc_B959F3
  loc_B959F2: ExitProc
  loc_B959F3: FLdI2 arg_10
  loc_B959F6: LitI2_Byte 1
  loc_B959F8: AddI2
  loc_B959F9: CStrUI1
  loc_B959FB: FStStrNoPop var_F8
  loc_B959FE: LitStr ","
  loc_B95A01: ConcatStr
  loc_B95A02: FStStrNoPop var_180
  loc_B95A05: FLdI2 arg_14
  loc_B95A08: LitI2_Byte 1
  loc_B95A0A: AddI2
  loc_B95A0B: CStrUI1
  loc_B95A0D: FStStrNoPop var_184
  loc_B95A10: ConcatStr
  loc_B95A11: FStStr var_88
  loc_B95A14: FFreeStr var_F8 = "": var_180 = ""
  loc_B95A1D: LitStr "3,3"
  loc_B95A20: ILdI2 arg_C
  loc_B95A23: CI4UI1
  loc_B95A24: ImpAdLdI4 MemVar_C0F160
  loc_B95A27: Ary1LdPr
  loc_B95A28: MemStStrCopy
  loc_B95A2C: ILdRf var_90
  loc_B95A2F: LitStr "R"
  loc_B95A32: EqStr
  loc_B95A34: BranchF loc_B95B35
  loc_B95A37: LitI4 &HD
  loc_B95A3C: FLdRfVar var_108
  loc_B95A3F: ImpAdCallFPR4  = Chr()
  loc_B95A44: FLdI2 arg_14
  loc_B95A47: LitI2_Byte 1
  loc_B95A49: AddI2
  loc_B95A4A: CVarI2 var_B4
  loc_B95A4D: PopAdLdVar
  loc_B95A4E: LitI4 0
  loc_B95A53: LitI4 -1
  loc_B95A58: FLdRfVar var_108
  loc_B95A5B: ILdI4 arg_28
  loc_B95A5E: FLdRfVar var_118
  loc_B95A61: ImpAdCallFPR4  = Split(, , , )
  loc_B95A66: FLdRfVar var_118
  loc_B95A69: VarIndexLdRfVarLock
  loc_B95A71: FStR4 var_A4
  loc_B95A74: LitVarI2 var_16C, 1
  loc_B95A79: FLdI2 arg_10
  loc_B95A7C: LitI2_Byte 2
  loc_B95A7E: AddI2
  loc_B95A7F: CI4UI1
  loc_B95A80: ILdRf var_A4
  loc_B95A83: FLdRfVar var_17C
  loc_B95A86: ImpAdCallFPR4  = Mid(, , )
  loc_B95A8B: AryUnlock
  loc_B95A8E: FLdRfVar var_17C
  loc_B95A91: CStrVarVal var_F8
  loc_B95A95: ImpAdCallFPR4 push push Val()
  loc_B95A9A: FStFPR8 var_220
  loc_B95A9D: LitI4 0
  loc_B95AA2: LitI4 -1
  loc_B95AA7: LitI4 1
  loc_B95AAC: LitStr "."
  loc_B95AAF: LitStr ","
  loc_B95AB2: FLdFPR8 var_220
  loc_B95AB5: LitDate 0.4
  loc_B95ABE: AddR8
  loc_B95ABF: CStrR8
  loc_B95AC1: FStStrNoPop var_180
  loc_B95AC4: ImpAdCallI2 Replace(, , , , , )
  loc_B95AC9: FStStrNoPop var_184
  loc_B95ACC: ILdI2 arg_C
  loc_B95ACF: CI4UI1
  loc_B95AD0: ImpAdLdI4 MemVar_C0F160
  loc_B95AD3: Ary1LdPr
  loc_B95AD4: MemStStrCopy
  loc_B95AD8: FFreeStr var_F8 = "": var_180 = ""
  loc_B95AE1: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = ""
  loc_B95AEE: LitI4 1
  loc_B95AF3: ILdI2 arg_C
  loc_B95AF6: CI4UI1
  loc_B95AF7: ImpAdLdI4 MemVar_C0F160
  loc_B95AFA: Ary1LdPr
  loc_B95AFB: MemLdStr global_96
  loc_B95AFE: LitStr "."
  loc_B95B01: LitI4 0
  loc_B95B06: FnInStr4
  loc_B95B08: LitI4 0
  loc_B95B0D: EqI4
  loc_B95B0E: BranchF loc_B95B32
  loc_B95B11: ILdI2 arg_C
  loc_B95B14: CI4UI1
  loc_B95B15: ImpAdLdI4 MemVar_C0F160
  loc_B95B18: Ary1LdPr
  loc_B95B19: MemLdStr global_96
  loc_B95B1C: LitStr ".0"
  loc_B95B1F: ConcatStr
  loc_B95B20: FStStrNoPop var_F8
  loc_B95B23: ILdI2 arg_C
  loc_B95B26: CI4UI1
  loc_B95B27: ImpAdLdI4 MemVar_C0F160
  loc_B95B2A: Ary1LdPr
  loc_B95B2B: MemStStrCopy
  loc_B95B2F: FFree1Str var_F8
  loc_B95B32: Branch loc_B95BBA
  loc_B95B35: LitI4 &HD
  loc_B95B3A: FLdRfVar var_108
  loc_B95B3D: ImpAdCallFPR4  = Chr()
  loc_B95B42: FLdI2 arg_14
  loc_B95B45: LitI2_Byte 1
  loc_B95B47: AddI2
  loc_B95B48: CVarI2 var_B4
  loc_B95B4B: PopAdLdVar
  loc_B95B4C: LitI4 0
  loc_B95B51: LitI4 -1
  loc_B95B56: FLdRfVar var_108
  loc_B95B59: ILdI4 arg_28
  loc_B95B5C: FLdRfVar var_118
  loc_B95B5F: ImpAdCallFPR4  = Split(, , , )
  loc_B95B64: FLdRfVar var_118
  loc_B95B67: VarIndexLdRfVarLock
  loc_B95B6F: FStR4 var_A4
  loc_B95B72: LitVarI2 var_16C, 1
  loc_B95B77: FLdI2 arg_10
  loc_B95B7A: LitI2_Byte 2
  loc_B95B7C: AddI2
  loc_B95B7D: CI4UI1
  loc_B95B7E: ILdRf var_A4
  loc_B95B81: FLdRfVar var_17C
  loc_B95B84: ImpAdCallFPR4  = Mid(, , )
  loc_B95B89: AryUnlock
  loc_B95B8C: FLdRfVar var_17C
  loc_B95B8F: LitVarStr var_1C8, ".0"
  loc_B95B94: ConcatVar var_1D8
  loc_B95B98: CStrVarTmp
  loc_B95B99: FStStrNoPop var_F8
  loc_B95B9C: ILdI2 arg_C
  loc_B95B9F: CI4UI1
  loc_B95BA0: ImpAdLdI4 MemVar_C0F160
  loc_B95BA3: Ary1LdPr
  loc_B95BA4: MemStStrCopy
  loc_B95BA8: FFree1Str var_F8
  loc_B95BAB: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = "": var_17C = ""
  loc_B95BBA: LitI4 0
  loc_B95BBF: ILdI2 arg_C
  loc_B95BC2: CI4UI1
  loc_B95BC3: ImpAdLdI4 MemVar_C0F160
  loc_B95BC6: Ary1LdPr
  loc_B95BC7: MemStI4 global_8
  loc_B95BCA: LitStr vbNullString
  loc_B95BCD: ILdI2 arg_C
  loc_B95BD0: CI4UI1
  loc_B95BD1: ImpAdLdI4 MemVar_C0F160
  loc_B95BD4: Ary1LdPr
  loc_B95BD5: MemStStrCopy
  loc_B95BD9: LitI2_Byte 0
  loc_B95BDB: ILdI2 arg_C
  loc_B95BDE: CI4UI1
  loc_B95BDF: ImpAdLdI4 MemVar_C0F160
  loc_B95BE2: Ary1LdPr
  loc_B95BE3: MemStI2 global_104
  loc_B95BE6: LitI2_Byte 0
  loc_B95BE8: ILdI2 arg_C
  loc_B95BEB: CI4UI1
  loc_B95BEC: ImpAdLdI4 MemVar_C0F160
  loc_B95BEF: Ary1LdPr
  loc_B95BF0: MemStI2 global_106
  loc_B95BF3: ExitProc
  loc_B95BF4: FLdI2 arg_10
  loc_B95BF7: FLdI2 arg_18
  loc_B95BFA: GtI2
  loc_B95BFB: FLdI2 arg_14
  loc_B95BFE: FLdI2 arg_1C
  loc_B95C01: LtI2
  loc_B95C02: AndI4
  loc_B95C03: BranchF loc_B96163
  loc_B95C06: LitVarI2 var_D4, 1
  loc_B95C0B: FLdRfVar var_A0
  loc_B95C0E: FLdRfVar var_A4
  loc_B95C11: ImpAdLdRf MemVar_C0F018
  loc_B95C14: NewIfNullPr frmMain
  loc_B95C17: from_stack_1v = frmMain.SockIGet()
  loc_B95C1C: ILdRf var_A4
  loc_B95C1F: CVarI4
  loc_B95C23: ForVar var_280
  loc_B95C29: FLdRfVar var_A0
  loc_B95C2C: CI4Var
  loc_B95C2E: ImpAdLdI4 MemVar_C0F100
  loc_B95C31: Ary1LdPr
  loc_B95C32: MemLdFPR8 global_224
  loc_B95C35: FLdI2 arg_20
  loc_B95C38: CR8I2
  loc_B95C39: EqR4
  loc_B95C3A: BranchF loc_B95C6A
  loc_B95C3D: FLdRfVar var_A0
  loc_B95C40: CI4Var
  loc_B95C42: ImpAdLdI4 MemVar_C0F100
  loc_B95C45: Ary1LdPr
  loc_B95C46: MemLdFPR8 global_232
  loc_B95C49: FLdI2 arg_10
  loc_B95C4C: LitI2_Byte 1
  loc_B95C4E: SubI2
  loc_B95C4F: CR8I2
  loc_B95C50: EqR4
  loc_B95C51: FLdRfVar var_A0
  loc_B95C54: CI4Var
  loc_B95C56: ImpAdLdI4 MemVar_C0F100
  loc_B95C59: Ary1LdPr
  loc_B95C5A: MemLdFPR8 global_240
  loc_B95C5D: FLdI2 arg_14
  loc_B95C60: LitI2_Byte 1
  loc_B95C62: AddI2
  loc_B95C63: CR8I2
  loc_B95C64: EqR4
  loc_B95C65: AndI4
  loc_B95C66: BranchF loc_B95C6A
  loc_B95C69: ExitProc
  loc_B95C6A: FLdRfVar var_A0
  loc_B95C6D: NextStepVar var_280
  loc_B95C73: FLdRfVar var_F8
  loc_B95C76: ImpAdLdRf MemVar_C0F018
  loc_B95C79: NewIfNullPr frmMain
  loc_B95C7C: from_stack_1v = frmMain.HpetsGet()
  loc_B95C81: LitI4 0
  loc_B95C86: LitI4 -1
  loc_B95C8B: LitVarStr var_B4, ";"
  loc_B95C90: FStVarCopyObj var_108
  loc_B95C93: FLdRfVar var_108
  loc_B95C96: ILdRf var_F8
  loc_B95C99: FLdRfVar var_118
  loc_B95C9C: ImpAdCallFPR4  = Split(, , , )
  loc_B95CA1: FLdRfVar var_118
  loc_B95CA4: FStVar var_128
  loc_B95CA8: FFree1Str var_F8
  loc_B95CAB: FFree1Var var_108 = ""
  loc_B95CAE: LitVarI2 var_D4, 0
  loc_B95CB3: FLdRfVar var_A0
  loc_B95CB6: FLdRfVar var_128
  loc_B95CB9: CRefVarAry
  loc_B95CBB: PopAdLd4
  loc_B95CBC: LitI2_Byte 1
  loc_B95CBE: FnUBound
  loc_B95CC0: CVarI4
  loc_B95CC4: ForVar var_2A0
  loc_B95CCA: FLdRfVar var_A0
  loc_B95CCD: CDargRef
  loc_B95CD1: FLdRfVar var_128
  loc_B95CD4: VarIndexLdVar
  loc_B95CDA: LitVarStr var_C4, vbNullString
  loc_B95CDF: HardType
  loc_B95CE0: NeVarBool
  loc_B95CE2: FFree1Var var_108 = ""
  loc_B95CE5: BranchF loc_B95D5A
  loc_B95CE8: FLdRfVar var_A0
  loc_B95CEB: CDargRef
  loc_B95CEF: FLdRfVar var_128
  loc_B95CF2: VarIndexLdVar
  loc_B95CF8: CI4Var
  loc_B95CFA: ImpAdLdI4 MemVar_C0F160
  loc_B95CFD: Ary1LdPr
  loc_B95CFE: MemLdFPR8 global_16
  loc_B95D01: FLdI2 arg_20
  loc_B95D04: CR8I2
  loc_B95D05: EqR4
  loc_B95D06: FFree1Var var_108 = ""
  loc_B95D09: BranchF loc_B95D5A
  loc_B95D0C: FLdRfVar var_A0
  loc_B95D0F: CDargRef
  loc_B95D13: FLdRfVar var_128
  loc_B95D16: VarIndexLdVar
  loc_B95D1C: CI4Var
  loc_B95D1E: ImpAdLdI4 MemVar_C0F160
  loc_B95D21: Ary1LdPr
  loc_B95D22: MemLdFPR8 global_44
  loc_B95D25: FLdI2 arg_10
  loc_B95D28: LitI2_Byte 1
  loc_B95D2A: SubI2
  loc_B95D2B: CR8I2
  loc_B95D2C: EqR4
  loc_B95D2D: FLdRfVar var_A0
  loc_B95D30: CDargRef
  loc_B95D34: FLdRfVar var_128
  loc_B95D37: VarIndexLdVar
  loc_B95D3D: CI4Var
  loc_B95D3F: ImpAdLdI4 MemVar_C0F160
  loc_B95D42: Ary1LdPr
  loc_B95D43: MemLdFPR8 global_52
  loc_B95D46: FLdI2 arg_14
  loc_B95D49: LitI2_Byte 1
  loc_B95D4B: AddI2
  loc_B95D4C: CR8I2
  loc_B95D4D: EqR4
  loc_B95D4E: AndI4
  loc_B95D4F: FFreeVar var_108 = ""
  loc_B95D56: BranchF loc_B95D5A
  loc_B95D59: ExitProc
  loc_B95D5A: FLdRfVar var_A0
  loc_B95D5D: NextStepVar var_2A0
  loc_B95D63: LitI4 &HD
  loc_B95D68: FLdRfVar var_108
  loc_B95D6B: ImpAdCallFPR4  = Chr()
  loc_B95D70: FLdI2 arg_14
  loc_B95D73: LitI2_Byte 1
  loc_B95D75: AddI2
  loc_B95D76: CVarI2 var_B4
  loc_B95D79: PopAdLdVar
  loc_B95D7A: LitI4 0
  loc_B95D7F: LitI4 -1
  loc_B95D84: FLdRfVar var_108
  loc_B95D87: ILdI4 arg_24
  loc_B95D8A: FLdRfVar var_118
  loc_B95D8D: ImpAdCallFPR4  = Split(, , , )
  loc_B95D92: FLdRfVar var_118
  loc_B95D95: VarIndexLdRfVarLock
  loc_B95D9D: FStR4 var_A4
  loc_B95DA0: LitVarI2 var_16C, 1
  loc_B95DA5: FLdI2 arg_10
  loc_B95DA8: CI4UI1
  loc_B95DA9: ILdRf var_A4
  loc_B95DAC: FLdRfVar var_17C
  loc_B95DAF: ImpAdCallFPR4  = Mid(, , )
  loc_B95DB4: AryUnlock
  loc_B95DB7: FLdRfVar var_17C
  loc_B95DBA: CStrVarTmp
  loc_B95DBB: FStStr var_90
  loc_B95DBE: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = ""
  loc_B95DCB: ILdRf var_90
  loc_B95DCE: LitStr "O"
  loc_B95DD1: EqStr
  loc_B95DD3: ILdRf var_90
  loc_B95DD6: LitStr "D"
  loc_B95DD9: EqStr
  loc_B95DDB: OrI4
  loc_B95DDC: ILdRf var_90
  loc_B95DDF: LitStr "R"
  loc_B95DE2: EqStr
  loc_B95DE4: OrI4
  loc_B95DE5: ILdRf var_90
  loc_B95DE8: LitStr "S"
  loc_B95DEB: EqStr
  loc_B95DED: ILdRf var_90
  loc_B95DF0: LitStr "L"
  loc_B95DF3: EqStr
  loc_B95DF5: OrI4
  loc_B95DF6: FLdI2 arg_14
  loc_B95DF9: LitI2_Byte 1
  loc_B95DFB: AddI2
  loc_B95DFC: FLdI2 arg_1C
  loc_B95DFF: EqI2
  loc_B95E00: AndI4
  loc_B95E01: FLdI2 arg_10
  loc_B95E04: LitI2_Byte 1
  loc_B95E06: SubI2
  loc_B95E07: FLdI2 arg_18
  loc_B95E0A: EqI2
  loc_B95E0B: AndI4
  loc_B95E0C: OrI4
  loc_B95E0D: BranchF loc_B96163
  loc_B95E10: ILdRf var_90
  loc_B95E13: LitStr "R"
  loc_B95E16: EqStr
  loc_B95E18: BranchF loc_B95F68
  loc_B95E1B: LitI4 0
  loc_B95E20: FStStrCopy var_194
  loc_B95E23: FLdRfVar var_194
  loc_B95E26: ImpAdLdI4 MemVar_C0F044
  loc_B95E29: LitStr "privaterooms\"
  loc_B95E2C: ConcatStr
  loc_B95E2D: FStStrNoPop var_188
  loc_B95E30: ILdI2 arg_C
  loc_B95E33: CI4UI1
  loc_B95E34: ImpAdLdI4 MemVar_C0F160
  loc_B95E37: Ary1LdPr
  loc_B95E38: MemLdFPR8 global_16
  loc_B95E3B: CStrR8
  loc_B95E3D: FStStrNoPop var_18C
  loc_B95E40: ConcatStr
  loc_B95E41: FStStrNoPop var_190
  loc_B95E44: LitStr "\rotation.txt"
  loc_B95E47: ConcatStr
  loc_B95E48: CVarStr var_118
  loc_B95E4B: FLdI2 arg_10
  loc_B95E4E: LitI2_Byte 1
  loc_B95E50: SubI2
  loc_B95E51: CStrUI1
  loc_B95E53: FStStrNoPop var_F8
  loc_B95E56: LitStr ","
  loc_B95E59: ConcatStr
  loc_B95E5A: FStStrNoPop var_180
  loc_B95E5D: FLdI2 arg_14
  loc_B95E60: LitI2_Byte 1
  loc_B95E62: AddI2
  loc_B95E63: CStrUI1
  loc_B95E65: FStStrNoPop var_184
  loc_B95E68: ConcatStr
  loc_B95E69: CVarStr var_108
  loc_B95E6C: LitVarStr var_B4, "furnies"
  loc_B95E71: PopAdLdVar
  loc_B95E72: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B95E77: CVarStr var_158
  loc_B95E7A: FStVar var_1A4
  loc_B95E7E: FFreeStr var_F8 = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_B95E8F: FFreeVar var_108 = ""
  loc_B95E96: FLdRfVar var_1A4
  loc_B95E99: LitVarStr var_B4, vbNullString
  loc_B95E9E: HardType
  loc_B95E9F: NeVarBool
  loc_B95EA1: BranchF loc_B95F68
  loc_B95EA4: FLdRfVar var_180
  loc_B95EA7: FLdRfVar var_1A8
  loc_B95EAA: LitI4 0
  loc_B95EAF: LitI2_Byte 0
  loc_B95EB1: LitI4 1
  loc_B95EB6: ImpAdLdI4 MemVar_C0F044
  loc_B95EB9: LitStr "furni\"
  loc_B95EBC: ConcatStr
  loc_B95EBD: CVarStr var_108
  loc_B95EC0: FLdRfVar var_1A4
  loc_B95EC3: ConcatVar var_118
  loc_B95EC7: LitVarStr var_B4, "\type.txt"
  loc_B95ECC: ConcatVar var_158
  loc_B95ED0: CStrVarVal var_F8
  loc_B95ED4: ImpAdLdRf MemVar_C0F040
  loc_B95ED7: NewIfNullPr IFileSystem3
  loc_B95EDA: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B95EDF: FLdPr var_1A8
  loc_B95EE2:  = Me.ReadAll
  loc_B95EE7: FLdZeroAd var_180
  loc_B95EEA: CVarStr var_16C
  loc_B95EED: FStVar var_1B8
  loc_B95EF1: FFree1Str var_F8
  loc_B95EF4: FFree1Ad var_1A8
  loc_B95EF7: FFreeVar var_108 = "": var_118 = ""
  loc_B95F00: FLdRfVar var_1B8
  loc_B95F03: LitVarStr var_B4, "rug"
  loc_B95F08: HardType
  loc_B95F09: EqVar var_108
  loc_B95F0D: NotVar var_118
  loc_B95F11: FLdRfVar var_1B8
  loc_B95F14: LitVarStr var_C4, "sit"
  loc_B95F19: HardType
  loc_B95F1A: EqVar var_158
  loc_B95F1E: FLdRfVar var_1B8
  loc_B95F21: LitVarStr var_D4, "bed"
  loc_B95F26: HardType
  loc_B95F27: EqVar var_16C
  loc_B95F2B: OrVar var_17C
  loc_B95F2F: FLdI2 arg_14
  loc_B95F32: FLdI2 arg_1C
  loc_B95F35: LitI2_Byte 1
  loc_B95F37: AddI2
  loc_B95F38: EqI2
  loc_B95F39: CVarBoolI2 var_1C8
  loc_B95F3D: AndVar var_1D8
  loc_B95F41: FLdI2 arg_10
  loc_B95F44: LitI2_Byte 1
  loc_B95F46: SubI2
  loc_B95F47: FLdI2 arg_18
  loc_B95F4A: EqI2
  loc_B95F4B: CVarBoolI2 var_1E8
  loc_B95F4F: AndVar var_1F8
  loc_B95F53: NotVar var_208
  loc_B95F57: AndVar var_218
  loc_B95F5B: CBoolVarNull
  loc_B95F5D: FFreeVar var_1C8 = ""
  loc_B95F64: BranchF loc_B95F68
  loc_B95F67: ExitProc
  loc_B95F68: FLdI2 arg_10
  loc_B95F6B: LitI2_Byte 1
  loc_B95F6D: SubI2
  loc_B95F6E: CStrUI1
  loc_B95F70: FStStrNoPop var_F8
  loc_B95F73: LitStr ","
  loc_B95F76: ConcatStr
  loc_B95F77: FStStrNoPop var_180
  loc_B95F7A: FLdI2 arg_14
  loc_B95F7D: LitI2_Byte 1
  loc_B95F7F: AddI2
  loc_B95F80: CStrUI1
  loc_B95F82: FStStrNoPop var_184
  loc_B95F85: ConcatStr
  loc_B95F86: FStStr var_88
  loc_B95F89: FFreeStr var_F8 = "": var_180 = ""
  loc_B95F92: LitStr "5,5"
  loc_B95F95: ILdI2 arg_C
  loc_B95F98: CI4UI1
  loc_B95F99: ImpAdLdI4 MemVar_C0F160
  loc_B95F9C: Ary1LdPr
  loc_B95F9D: MemStStrCopy
  loc_B95FA1: ILdRf var_90
  loc_B95FA4: LitStr "R"
  loc_B95FA7: EqStr
  loc_B95FA9: BranchF loc_B960A7
  loc_B95FAC: LitI4 &HD
  loc_B95FB1: FLdRfVar var_108
  loc_B95FB4: ImpAdCallFPR4  = Chr()
  loc_B95FB9: FLdI2 arg_14
  loc_B95FBC: LitI2_Byte 1
  loc_B95FBE: AddI2
  loc_B95FBF: CVarI2 var_B4
  loc_B95FC2: PopAdLdVar
  loc_B95FC3: LitI4 0
  loc_B95FC8: LitI4 -1
  loc_B95FCD: FLdRfVar var_108
  loc_B95FD0: ILdI4 arg_28
  loc_B95FD3: FLdRfVar var_118
  loc_B95FD6: ImpAdCallFPR4  = Split(, , , )
  loc_B95FDB: FLdRfVar var_118
  loc_B95FDE: VarIndexLdRfVarLock
  loc_B95FE6: FStR4 var_A4
  loc_B95FE9: LitVarI2 var_16C, 1
  loc_B95FEE: FLdI2 arg_10
  loc_B95FF1: CI4UI1
  loc_B95FF2: ILdRf var_A4
  loc_B95FF5: FLdRfVar var_17C
  loc_B95FF8: ImpAdCallFPR4  = Mid(, , )
  loc_B95FFD: AryUnlock
  loc_B96000: FLdRfVar var_17C
  loc_B96003: CStrVarVal var_F8
  loc_B96007: ImpAdCallFPR4 push push Val()
  loc_B9600C: FStFPR8 var_220
  loc_B9600F: LitI4 0
  loc_B96014: LitI4 -1
  loc_B96019: LitI4 1
  loc_B9601E: LitStr "."
  loc_B96021: LitStr ","
  loc_B96024: FLdFPR8 var_220
  loc_B96027: LitDate 0.4
  loc_B96030: AddR8
  loc_B96031: CStrR8
  loc_B96033: FStStrNoPop var_180
  loc_B96036: ImpAdCallI2 Replace(, , , , , )
  loc_B9603B: FStStrNoPop var_184
  loc_B9603E: ILdI2 arg_C
  loc_B96041: CI4UI1
  loc_B96042: ImpAdLdI4 MemVar_C0F160
  loc_B96045: Ary1LdPr
  loc_B96046: MemStStrCopy
  loc_B9604A: FFreeStr var_F8 = "": var_180 = ""
  loc_B96053: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = ""
  loc_B96060: LitI4 1
  loc_B96065: ILdI2 arg_C
  loc_B96068: CI4UI1
  loc_B96069: ImpAdLdI4 MemVar_C0F160
  loc_B9606C: Ary1LdPr
  loc_B9606D: MemLdStr global_96
  loc_B96070: LitStr "."
  loc_B96073: LitI4 0
  loc_B96078: FnInStr4
  loc_B9607A: LitI4 0
  loc_B9607F: EqI4
  loc_B96080: BranchF loc_B960A4
  loc_B96083: ILdI2 arg_C
  loc_B96086: CI4UI1
  loc_B96087: ImpAdLdI4 MemVar_C0F160
  loc_B9608A: Ary1LdPr
  loc_B9608B: MemLdStr global_96
  loc_B9608E: LitStr ".0"
  loc_B96091: ConcatStr
  loc_B96092: FStStrNoPop var_F8
  loc_B96095: ILdI2 arg_C
  loc_B96098: CI4UI1
  loc_B96099: ImpAdLdI4 MemVar_C0F160
  loc_B9609C: Ary1LdPr
  loc_B9609D: MemStStrCopy
  loc_B960A1: FFree1Str var_F8
  loc_B960A4: Branch loc_B96129
  loc_B960A7: LitI4 &HD
  loc_B960AC: FLdRfVar var_108
  loc_B960AF: ImpAdCallFPR4  = Chr()
  loc_B960B4: FLdI2 arg_14
  loc_B960B7: LitI2_Byte 1
  loc_B960B9: AddI2
  loc_B960BA: CVarI2 var_B4
  loc_B960BD: PopAdLdVar
  loc_B960BE: LitI4 0
  loc_B960C3: LitI4 -1
  loc_B960C8: FLdRfVar var_108
  loc_B960CB: ILdI4 arg_28
  loc_B960CE: FLdRfVar var_118
  loc_B960D1: ImpAdCallFPR4  = Split(, , , )
  loc_B960D6: FLdRfVar var_118
  loc_B960D9: VarIndexLdRfVarLock
  loc_B960E1: FStR4 var_A4
  loc_B960E4: LitVarI2 var_16C, 1
  loc_B960E9: FLdI2 arg_10
  loc_B960EC: CI4UI1
  loc_B960ED: ILdRf var_A4
  loc_B960F0: FLdRfVar var_17C
  loc_B960F3: ImpAdCallFPR4  = Mid(, , )
  loc_B960F8: AryUnlock
  loc_B960FB: FLdRfVar var_17C
  loc_B960FE: LitVarStr var_1C8, ".0"
  loc_B96103: ConcatVar var_1D8
  loc_B96107: CStrVarTmp
  loc_B96108: FStStrNoPop var_F8
  loc_B9610B: ILdI2 arg_C
  loc_B9610E: CI4UI1
  loc_B9610F: ImpAdLdI4 MemVar_C0F160
  loc_B96112: Ary1LdPr
  loc_B96113: MemStStrCopy
  loc_B96117: FFree1Str var_F8
  loc_B9611A: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = "": var_17C = ""
  loc_B96129: LitI4 0
  loc_B9612E: ILdI2 arg_C
  loc_B96131: CI4UI1
  loc_B96132: ImpAdLdI4 MemVar_C0F160
  loc_B96135: Ary1LdPr
  loc_B96136: MemStI4 global_8
  loc_B96139: LitStr vbNullString
  loc_B9613C: ILdI2 arg_C
  loc_B9613F: CI4UI1
  loc_B96140: ImpAdLdI4 MemVar_C0F160
  loc_B96143: Ary1LdPr
  loc_B96144: MemStStrCopy
  loc_B96148: LitI2_Byte 0
  loc_B9614A: ILdI2 arg_C
  loc_B9614D: CI4UI1
  loc_B9614E: ImpAdLdI4 MemVar_C0F160
  loc_B96151: Ary1LdPr
  loc_B96152: MemStI2 global_104
  loc_B96155: LitI2_Byte 0
  loc_B96157: ILdI2 arg_C
  loc_B9615A: CI4UI1
  loc_B9615B: ImpAdLdI4 MemVar_C0F160
  loc_B9615E: Ary1LdPr
  loc_B9615F: MemStI2 global_106
  loc_B96162: ExitProc
  loc_B96163: FLdI2 arg_10
  loc_B96166: FLdI2 arg_18
  loc_B96169: LtI2
  loc_B9616A: FLdI2 arg_14
  loc_B9616D: FLdI2 arg_1C
  loc_B96170: GtI2
  loc_B96171: AndI4
  loc_B96172: BranchF loc_B966DB
  loc_B96175: LitVarI2 var_D4, 1
  loc_B9617A: FLdRfVar var_A0
  loc_B9617D: FLdRfVar var_A4
  loc_B96180: ImpAdLdRf MemVar_C0F018
  loc_B96183: NewIfNullPr frmMain
  loc_B96186: from_stack_1v = frmMain.SockIGet()
  loc_B9618B: ILdRf var_A4
  loc_B9618E: CVarI4
  loc_B96192: ForVar var_2C0
  loc_B96198: FLdRfVar var_A0
  loc_B9619B: CI4Var
  loc_B9619D: ImpAdLdI4 MemVar_C0F100
  loc_B961A0: Ary1LdPr
  loc_B961A1: MemLdFPR8 global_224
  loc_B961A4: FLdI2 arg_20
  loc_B961A7: CR8I2
  loc_B961A8: EqR4
  loc_B961A9: BranchF loc_B961D9
  loc_B961AC: FLdRfVar var_A0
  loc_B961AF: CI4Var
  loc_B961B1: ImpAdLdI4 MemVar_C0F100
  loc_B961B4: Ary1LdPr
  loc_B961B5: MemLdFPR8 global_232
  loc_B961B8: FLdI2 arg_10
  loc_B961BB: LitI2_Byte 1
  loc_B961BD: AddI2
  loc_B961BE: CR8I2
  loc_B961BF: EqR4
  loc_B961C0: FLdRfVar var_A0
  loc_B961C3: CI4Var
  loc_B961C5: ImpAdLdI4 MemVar_C0F100
  loc_B961C8: Ary1LdPr
  loc_B961C9: MemLdFPR8 global_240
  loc_B961CC: FLdI2 arg_14
  loc_B961CF: LitI2_Byte 1
  loc_B961D1: SubI2
  loc_B961D2: CR8I2
  loc_B961D3: EqR4
  loc_B961D4: AndI4
  loc_B961D5: BranchF loc_B961D9
  loc_B961D8: ExitProc
  loc_B961D9: FLdRfVar var_A0
  loc_B961DC: NextStepVar var_2C0
  loc_B961E2: FLdRfVar var_F8
  loc_B961E5: ImpAdLdRf MemVar_C0F018
  loc_B961E8: NewIfNullPr frmMain
  loc_B961EB: from_stack_1v = frmMain.HpetsGet()
  loc_B961F0: LitI4 0
  loc_B961F5: LitI4 -1
  loc_B961FA: LitVarStr var_B4, ";"
  loc_B961FF: FStVarCopyObj var_108
  loc_B96202: FLdRfVar var_108
  loc_B96205: ILdRf var_F8
  loc_B96208: FLdRfVar var_118
  loc_B9620B: ImpAdCallFPR4  = Split(, , , )
  loc_B96210: FLdRfVar var_118
  loc_B96213: FStVar var_128
  loc_B96217: FFree1Str var_F8
  loc_B9621A: FFree1Var var_108 = ""
  loc_B9621D: LitVarI2 var_D4, 0
  loc_B96222: FLdRfVar var_A0
  loc_B96225: FLdRfVar var_128
  loc_B96228: CRefVarAry
  loc_B9622A: PopAdLd4
  loc_B9622B: LitI2_Byte 1
  loc_B9622D: FnUBound
  loc_B9622F: CVarI4
  loc_B96233: ForVar var_2E0
  loc_B96239: FLdRfVar var_A0
  loc_B9623C: CDargRef
  loc_B96240: FLdRfVar var_128
  loc_B96243: VarIndexLdVar
  loc_B96249: LitVarStr var_C4, vbNullString
  loc_B9624E: HardType
  loc_B9624F: NeVarBool
  loc_B96251: FFree1Var var_108 = ""
  loc_B96254: BranchF loc_B962C9
  loc_B96257: FLdRfVar var_A0
  loc_B9625A: CDargRef
  loc_B9625E: FLdRfVar var_128
  loc_B96261: VarIndexLdVar
  loc_B96267: CI4Var
  loc_B96269: ImpAdLdI4 MemVar_C0F160
  loc_B9626C: Ary1LdPr
  loc_B9626D: MemLdFPR8 global_16
  loc_B96270: FLdI2 arg_20
  loc_B96273: CR8I2
  loc_B96274: EqR4
  loc_B96275: FFree1Var var_108 = ""
  loc_B96278: BranchF loc_B962C9
  loc_B9627B: FLdRfVar var_A0
  loc_B9627E: CDargRef
  loc_B96282: FLdRfVar var_128
  loc_B96285: VarIndexLdVar
  loc_B9628B: CI4Var
  loc_B9628D: ImpAdLdI4 MemVar_C0F160
  loc_B96290: Ary1LdPr
  loc_B96291: MemLdFPR8 global_44
  loc_B96294: FLdI2 arg_10
  loc_B96297: LitI2_Byte 1
  loc_B96299: AddI2
  loc_B9629A: CR8I2
  loc_B9629B: EqR4
  loc_B9629C: FLdRfVar var_A0
  loc_B9629F: CDargRef
  loc_B962A3: FLdRfVar var_128
  loc_B962A6: VarIndexLdVar
  loc_B962AC: CI4Var
  loc_B962AE: ImpAdLdI4 MemVar_C0F160
  loc_B962B1: Ary1LdPr
  loc_B962B2: MemLdFPR8 global_52
  loc_B962B5: FLdI2 arg_14
  loc_B962B8: LitI2_Byte 1
  loc_B962BA: SubI2
  loc_B962BB: CR8I2
  loc_B962BC: EqR4
  loc_B962BD: AndI4
  loc_B962BE: FFreeVar var_108 = ""
  loc_B962C5: BranchF loc_B962C9
  loc_B962C8: ExitProc
  loc_B962C9: FLdRfVar var_A0
  loc_B962CC: NextStepVar var_2E0
  loc_B962D2: LitI4 &HD
  loc_B962D7: FLdRfVar var_108
  loc_B962DA: ImpAdCallFPR4  = Chr()
  loc_B962DF: FLdI2 arg_14
  loc_B962E2: LitI2_Byte 1
  loc_B962E4: SubI2
  loc_B962E5: CVarI2 var_B4
  loc_B962E8: PopAdLdVar
  loc_B962E9: LitI4 0
  loc_B962EE: LitI4 -1
  loc_B962F3: FLdRfVar var_108
  loc_B962F6: ILdI4 arg_24
  loc_B962F9: FLdRfVar var_118
  loc_B962FC: ImpAdCallFPR4  = Split(, , , )
  loc_B96301: FLdRfVar var_118
  loc_B96304: VarIndexLdRfVarLock
  loc_B9630C: FStR4 var_A4
  loc_B9630F: LitVarI2 var_16C, 1
  loc_B96314: FLdI2 arg_10
  loc_B96317: LitI2_Byte 2
  loc_B96319: AddI2
  loc_B9631A: CI4UI1
  loc_B9631B: ILdRf var_A4
  loc_B9631E: FLdRfVar var_17C
  loc_B96321: ImpAdCallFPR4  = Mid(, , )
  loc_B96326: AryUnlock
  loc_B96329: FLdRfVar var_17C
  loc_B9632C: CStrVarTmp
  loc_B9632D: FStStr var_90
  loc_B96330: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = ""
  loc_B9633D: ILdRf var_90
  loc_B96340: LitStr "O"
  loc_B96343: EqStr
  loc_B96345: ILdRf var_90
  loc_B96348: LitStr "D"
  loc_B9634B: EqStr
  loc_B9634D: OrI4
  loc_B9634E: ILdRf var_90
  loc_B96351: LitStr "R"
  loc_B96354: EqStr
  loc_B96356: OrI4
  loc_B96357: ILdRf var_90
  loc_B9635A: LitStr "S"
  loc_B9635D: EqStr
  loc_B9635F: ILdRf var_90
  loc_B96362: LitStr "L"
  loc_B96365: EqStr
  loc_B96367: OrI4
  loc_B96368: FLdI2 arg_14
  loc_B9636B: LitI2_Byte 1
  loc_B9636D: SubI2
  loc_B9636E: FLdI2 arg_1C
  loc_B96371: EqI2
  loc_B96372: AndI4
  loc_B96373: FLdI2 arg_10
  loc_B96376: LitI2_Byte 1
  loc_B96378: AddI2
  loc_B96379: FLdI2 arg_18
  loc_B9637C: EqI2
  loc_B9637D: AndI4
  loc_B9637E: OrI4
  loc_B9637F: BranchF loc_B966DB
  loc_B96382: ILdRf var_90
  loc_B96385: LitStr "R"
  loc_B96388: EqStr
  loc_B9638A: BranchF loc_B964DA
  loc_B9638D: LitI4 0
  loc_B96392: FStStrCopy var_194
  loc_B96395: FLdRfVar var_194
  loc_B96398: ImpAdLdI4 MemVar_C0F044
  loc_B9639B: LitStr "privaterooms\"
  loc_B9639E: ConcatStr
  loc_B9639F: FStStrNoPop var_188
  loc_B963A2: ILdI2 arg_C
  loc_B963A5: CI4UI1
  loc_B963A6: ImpAdLdI4 MemVar_C0F160
  loc_B963A9: Ary1LdPr
  loc_B963AA: MemLdFPR8 global_16
  loc_B963AD: CStrR8
  loc_B963AF: FStStrNoPop var_18C
  loc_B963B2: ConcatStr
  loc_B963B3: FStStrNoPop var_190
  loc_B963B6: LitStr "\rotation.txt"
  loc_B963B9: ConcatStr
  loc_B963BA: CVarStr var_118
  loc_B963BD: FLdI2 arg_10
  loc_B963C0: LitI2_Byte 1
  loc_B963C2: AddI2
  loc_B963C3: CStrUI1
  loc_B963C5: FStStrNoPop var_F8
  loc_B963C8: LitStr ","
  loc_B963CB: ConcatStr
  loc_B963CC: FStStrNoPop var_180
  loc_B963CF: FLdI2 arg_14
  loc_B963D2: LitI2_Byte 1
  loc_B963D4: SubI2
  loc_B963D5: CStrUI1
  loc_B963D7: FStStrNoPop var_184
  loc_B963DA: ConcatStr
  loc_B963DB: CVarStr var_108
  loc_B963DE: LitVarStr var_B4, "furnies"
  loc_B963E3: PopAdLdVar
  loc_B963E4: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B963E9: CVarStr var_158
  loc_B963EC: FStVar var_1A4
  loc_B963F0: FFreeStr var_F8 = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_B96401: FFreeVar var_108 = ""
  loc_B96408: FLdRfVar var_1A4
  loc_B9640B: LitVarStr var_B4, vbNullString
  loc_B96410: HardType
  loc_B96411: NeVarBool
  loc_B96413: BranchF loc_B964DA
  loc_B96416: FLdRfVar var_180
  loc_B96419: FLdRfVar var_1A8
  loc_B9641C: LitI4 0
  loc_B96421: LitI2_Byte 0
  loc_B96423: LitI4 1
  loc_B96428: ImpAdLdI4 MemVar_C0F044
  loc_B9642B: LitStr "furni\"
  loc_B9642E: ConcatStr
  loc_B9642F: CVarStr var_108
  loc_B96432: FLdRfVar var_1A4
  loc_B96435: ConcatVar var_118
  loc_B96439: LitVarStr var_B4, "\type.txt"
  loc_B9643E: ConcatVar var_158
  loc_B96442: CStrVarVal var_F8
  loc_B96446: ImpAdLdRf MemVar_C0F040
  loc_B96449: NewIfNullPr IFileSystem3
  loc_B9644C: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B96451: FLdPr var_1A8
  loc_B96454:  = Me.ReadAll
  loc_B96459: FLdZeroAd var_180
  loc_B9645C: CVarStr var_16C
  loc_B9645F: FStVar var_1B8
  loc_B96463: FFree1Str var_F8
  loc_B96466: FFree1Ad var_1A8
  loc_B96469: FFreeVar var_108 = "": var_118 = ""
  loc_B96472: FLdRfVar var_1B8
  loc_B96475: LitVarStr var_B4, "rug"
  loc_B9647A: HardType
  loc_B9647B: EqVar var_108
  loc_B9647F: NotVar var_118
  loc_B96483: FLdRfVar var_1B8
  loc_B96486: LitVarStr var_C4, "sit"
  loc_B9648B: HardType
  loc_B9648C: EqVar var_158
  loc_B96490: FLdRfVar var_1B8
  loc_B96493: LitVarStr var_D4, "bed"
  loc_B96498: HardType
  loc_B96499: EqVar var_16C
  loc_B9649D: OrVar var_17C
  loc_B964A1: FLdI2 arg_14
  loc_B964A4: FLdI2 arg_1C
  loc_B964A7: LitI2_Byte 1
  loc_B964A9: SubI2
  loc_B964AA: EqI2
  loc_B964AB: CVarBoolI2 var_1C8
  loc_B964AF: AndVar var_1D8
  loc_B964B3: FLdI2 arg_10
  loc_B964B6: LitI2_Byte 1
  loc_B964B8: AddI2
  loc_B964B9: FLdI2 arg_18
  loc_B964BC: EqI2
  loc_B964BD: CVarBoolI2 var_1E8
  loc_B964C1: AndVar var_1F8
  loc_B964C5: NotVar var_208
  loc_B964C9: AndVar var_218
  loc_B964CD: CBoolVarNull
  loc_B964CF: FFreeVar var_1C8 = ""
  loc_B964D6: BranchF loc_B964DA
  loc_B964D9: ExitProc
  loc_B964DA: FLdI2 arg_10
  loc_B964DD: LitI2_Byte 1
  loc_B964DF: AddI2
  loc_B964E0: CStrUI1
  loc_B964E2: FStStrNoPop var_F8
  loc_B964E5: LitStr ","
  loc_B964E8: ConcatStr
  loc_B964E9: FStStrNoPop var_180
  loc_B964EC: FLdI2 arg_14
  loc_B964EF: LitI2_Byte 1
  loc_B964F1: SubI2
  loc_B964F2: CStrUI1
  loc_B964F4: FStStrNoPop var_184
  loc_B964F7: ConcatStr
  loc_B964F8: FStStr var_88
  loc_B964FB: FFreeStr var_F8 = "": var_180 = ""
  loc_B96504: LitStr "1,1"
  loc_B96507: ILdI2 arg_C
  loc_B9650A: CI4UI1
  loc_B9650B: ImpAdLdI4 MemVar_C0F160
  loc_B9650E: Ary1LdPr
  loc_B9650F: MemStStrCopy
  loc_B96513: ILdRf var_90
  loc_B96516: LitStr "R"
  loc_B96519: EqStr
  loc_B9651B: BranchF loc_B9661C
  loc_B9651E: LitI4 &HD
  loc_B96523: FLdRfVar var_108
  loc_B96526: ImpAdCallFPR4  = Chr()
  loc_B9652B: FLdI2 arg_14
  loc_B9652E: LitI2_Byte 1
  loc_B96530: SubI2
  loc_B96531: CVarI2 var_B4
  loc_B96534: PopAdLdVar
  loc_B96535: LitI4 0
  loc_B9653A: LitI4 -1
  loc_B9653F: FLdRfVar var_108
  loc_B96542: ILdI4 arg_28
  loc_B96545: FLdRfVar var_118
  loc_B96548: ImpAdCallFPR4  = Split(, , , )
  loc_B9654D: FLdRfVar var_118
  loc_B96550: VarIndexLdRfVarLock
  loc_B96558: FStR4 var_A4
  loc_B9655B: LitVarI2 var_16C, 1
  loc_B96560: FLdI2 arg_10
  loc_B96563: LitI2_Byte 2
  loc_B96565: AddI2
  loc_B96566: CI4UI1
  loc_B96567: ILdRf var_A4
  loc_B9656A: FLdRfVar var_17C
  loc_B9656D: ImpAdCallFPR4  = Mid(, , )
  loc_B96572: AryUnlock
  loc_B96575: FLdRfVar var_17C
  loc_B96578: CStrVarVal var_F8
  loc_B9657C: ImpAdCallFPR4 push push Val()
  loc_B96581: FStFPR8 var_220
  loc_B96584: LitI4 0
  loc_B96589: LitI4 -1
  loc_B9658E: LitI4 1
  loc_B96593: LitStr "."
  loc_B96596: LitStr ","
  loc_B96599: FLdFPR8 var_220
  loc_B9659C: LitDate 0.4
  loc_B965A5: AddR8
  loc_B965A6: CStrR8
  loc_B965A8: FStStrNoPop var_180
  loc_B965AB: ImpAdCallI2 Replace(, , , , , )
  loc_B965B0: FStStrNoPop var_184
  loc_B965B3: ILdI2 arg_C
  loc_B965B6: CI4UI1
  loc_B965B7: ImpAdLdI4 MemVar_C0F160
  loc_B965BA: Ary1LdPr
  loc_B965BB: MemStStrCopy
  loc_B965BF: FFreeStr var_F8 = "": var_180 = ""
  loc_B965C8: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = ""
  loc_B965D5: LitI4 1
  loc_B965DA: ILdI2 arg_C
  loc_B965DD: CI4UI1
  loc_B965DE: ImpAdLdI4 MemVar_C0F160
  loc_B965E1: Ary1LdPr
  loc_B965E2: MemLdStr global_96
  loc_B965E5: LitStr "."
  loc_B965E8: LitI4 0
  loc_B965ED: FnInStr4
  loc_B965EF: LitI4 0
  loc_B965F4: EqI4
  loc_B965F5: BranchF loc_B96619
  loc_B965F8: ILdI2 arg_C
  loc_B965FB: CI4UI1
  loc_B965FC: ImpAdLdI4 MemVar_C0F160
  loc_B965FF: Ary1LdPr
  loc_B96600: MemLdStr global_96
  loc_B96603: LitStr ".0"
  loc_B96606: ConcatStr
  loc_B96607: FStStrNoPop var_F8
  loc_B9660A: ILdI2 arg_C
  loc_B9660D: CI4UI1
  loc_B9660E: ImpAdLdI4 MemVar_C0F160
  loc_B96611: Ary1LdPr
  loc_B96612: MemStStrCopy
  loc_B96616: FFree1Str var_F8
  loc_B96619: Branch loc_B966A1
  loc_B9661C: LitI4 &HD
  loc_B96621: FLdRfVar var_108
  loc_B96624: ImpAdCallFPR4  = Chr()
  loc_B96629: FLdI2 arg_14
  loc_B9662C: LitI2_Byte 1
  loc_B9662E: SubI2
  loc_B9662F: CVarI2 var_B4
  loc_B96632: PopAdLdVar
  loc_B96633: LitI4 0
  loc_B96638: LitI4 -1
  loc_B9663D: FLdRfVar var_108
  loc_B96640: ILdI4 arg_28
  loc_B96643: FLdRfVar var_118
  loc_B96646: ImpAdCallFPR4  = Split(, , , )
  loc_B9664B: FLdRfVar var_118
  loc_B9664E: VarIndexLdRfVarLock
  loc_B96656: FStR4 var_A4
  loc_B96659: LitVarI2 var_16C, 1
  loc_B9665E: FLdI2 arg_10
  loc_B96661: LitI2_Byte 2
  loc_B96663: AddI2
  loc_B96664: CI4UI1
  loc_B96665: ILdRf var_A4
  loc_B96668: FLdRfVar var_17C
  loc_B9666B: ImpAdCallFPR4  = Mid(, , )
  loc_B96670: AryUnlock
  loc_B96673: FLdRfVar var_17C
  loc_B96676: LitVarStr var_1C8, ".0"
  loc_B9667B: ConcatVar var_1D8
  loc_B9667F: CStrVarTmp
  loc_B96680: FStStrNoPop var_F8
  loc_B96683: ILdI2 arg_C
  loc_B96686: CI4UI1
  loc_B96687: ImpAdLdI4 MemVar_C0F160
  loc_B9668A: Ary1LdPr
  loc_B9668B: MemStStrCopy
  loc_B9668F: FFree1Str var_F8
  loc_B96692: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = "": var_17C = ""
  loc_B966A1: LitI4 0
  loc_B966A6: ILdI2 arg_C
  loc_B966A9: CI4UI1
  loc_B966AA: ImpAdLdI4 MemVar_C0F160
  loc_B966AD: Ary1LdPr
  loc_B966AE: MemStI4 global_8
  loc_B966B1: LitStr vbNullString
  loc_B966B4: ILdI2 arg_C
  loc_B966B7: CI4UI1
  loc_B966B8: ImpAdLdI4 MemVar_C0F160
  loc_B966BB: Ary1LdPr
  loc_B966BC: MemStStrCopy
  loc_B966C0: LitI2_Byte 0
  loc_B966C2: ILdI2 arg_C
  loc_B966C5: CI4UI1
  loc_B966C6: ImpAdLdI4 MemVar_C0F160
  loc_B966C9: Ary1LdPr
  loc_B966CA: MemStI2 global_104
  loc_B966CD: LitI2_Byte 0
  loc_B966CF: ILdI2 arg_C
  loc_B966D2: CI4UI1
  loc_B966D3: ImpAdLdI4 MemVar_C0F160
  loc_B966D6: Ary1LdPr
  loc_B966D7: MemStI2 global_106
  loc_B966DA: ExitProc
  loc_B966DB: FLdI2 arg_10
  loc_B966DE: FLdI2 arg_18
  loc_B966E1: GtI2
  loc_B966E2: BranchF loc_B96C27
  loc_B966E5: LitVarI2 var_D4, 1
  loc_B966EA: FLdRfVar var_A0
  loc_B966ED: FLdRfVar var_A4
  loc_B966F0: ImpAdLdRf MemVar_C0F018
  loc_B966F3: NewIfNullPr frmMain
  loc_B966F6: from_stack_1v = frmMain.SockIGet()
  loc_B966FB: ILdRf var_A4
  loc_B966FE: CVarI4
  loc_B96702: ForVar var_300
  loc_B96708: FLdRfVar var_A0
  loc_B9670B: CI4Var
  loc_B9670D: ImpAdLdI4 MemVar_C0F100
  loc_B96710: Ary1LdPr
  loc_B96711: MemLdFPR8 global_224
  loc_B96714: FLdI2 arg_20
  loc_B96717: CR8I2
  loc_B96718: EqR4
  loc_B96719: BranchF loc_B96746
  loc_B9671C: FLdRfVar var_A0
  loc_B9671F: CI4Var
  loc_B96721: ImpAdLdI4 MemVar_C0F100
  loc_B96724: Ary1LdPr
  loc_B96725: MemLdFPR8 global_232
  loc_B96728: FLdI2 arg_10
  loc_B9672B: LitI2_Byte 1
  loc_B9672D: SubI2
  loc_B9672E: CR8I2
  loc_B9672F: EqR4
  loc_B96730: FLdRfVar var_A0
  loc_B96733: CI4Var
  loc_B96735: ImpAdLdI4 MemVar_C0F100
  loc_B96738: Ary1LdPr
  loc_B96739: MemLdFPR8 global_240
  loc_B9673C: FLdI2 arg_14
  loc_B9673F: CR8I2
  loc_B96740: EqR4
  loc_B96741: AndI4
  loc_B96742: BranchF loc_B96746
  loc_B96745: ExitProc
  loc_B96746: FLdRfVar var_A0
  loc_B96749: NextStepVar var_300
  loc_B9674F: FLdRfVar var_F8
  loc_B96752: ImpAdLdRf MemVar_C0F018
  loc_B96755: NewIfNullPr frmMain
  loc_B96758: from_stack_1v = frmMain.HpetsGet()
  loc_B9675D: LitI4 0
  loc_B96762: LitI4 -1
  loc_B96767: LitVarStr var_B4, ";"
  loc_B9676C: FStVarCopyObj var_108
  loc_B9676F: FLdRfVar var_108
  loc_B96772: ILdRf var_F8
  loc_B96775: FLdRfVar var_118
  loc_B96778: ImpAdCallFPR4  = Split(, , , )
  loc_B9677D: FLdRfVar var_118
  loc_B96780: FStVar var_128
  loc_B96784: FFree1Str var_F8
  loc_B96787: FFree1Var var_108 = ""
  loc_B9678A: LitVarI2 var_D4, 0
  loc_B9678F: FLdRfVar var_A0
  loc_B96792: FLdRfVar var_128
  loc_B96795: CRefVarAry
  loc_B96797: PopAdLd4
  loc_B96798: LitI2_Byte 1
  loc_B9679A: FnUBound
  loc_B9679C: CVarI4
  loc_B967A0: ForVar var_320
  loc_B967A6: FLdRfVar var_A0
  loc_B967A9: CDargRef
  loc_B967AD: FLdRfVar var_128
  loc_B967B0: VarIndexLdVar
  loc_B967B6: LitVarStr var_C4, vbNullString
  loc_B967BB: HardType
  loc_B967BC: NeVarBool
  loc_B967BE: FFree1Var var_108 = ""
  loc_B967C1: BranchF loc_B96833
  loc_B967C4: FLdRfVar var_A0
  loc_B967C7: CDargRef
  loc_B967CB: FLdRfVar var_128
  loc_B967CE: VarIndexLdVar
  loc_B967D4: CI4Var
  loc_B967D6: ImpAdLdI4 MemVar_C0F160
  loc_B967D9: Ary1LdPr
  loc_B967DA: MemLdFPR8 global_16
  loc_B967DD: FLdI2 arg_20
  loc_B967E0: CR8I2
  loc_B967E1: EqR4
  loc_B967E2: FFree1Var var_108 = ""
  loc_B967E5: BranchF loc_B96833
  loc_B967E8: FLdRfVar var_A0
  loc_B967EB: CDargRef
  loc_B967EF: FLdRfVar var_128
  loc_B967F2: VarIndexLdVar
  loc_B967F8: CI4Var
  loc_B967FA: ImpAdLdI4 MemVar_C0F160
  loc_B967FD: Ary1LdPr
  loc_B967FE: MemLdFPR8 global_44
  loc_B96801: FLdI2 arg_10
  loc_B96804: LitI2_Byte 1
  loc_B96806: SubI2
  loc_B96807: CR8I2
  loc_B96808: EqR4
  loc_B96809: FLdRfVar var_A0
  loc_B9680C: CDargRef
  loc_B96810: FLdRfVar var_128
  loc_B96813: VarIndexLdVar
  loc_B96819: CI4Var
  loc_B9681B: ImpAdLdI4 MemVar_C0F160
  loc_B9681E: Ary1LdPr
  loc_B9681F: MemLdFPR8 global_52
  loc_B96822: FLdI2 arg_14
  loc_B96825: CR8I2
  loc_B96826: EqR4
  loc_B96827: AndI4
  loc_B96828: FFreeVar var_108 = ""
  loc_B9682F: BranchF loc_B96833
  loc_B96832: ExitProc
  loc_B96833: FLdRfVar var_A0
  loc_B96836: NextStepVar var_320
  loc_B9683C: LitI4 &HD
  loc_B96841: FLdRfVar var_108
  loc_B96844: ImpAdCallFPR4  = Chr()
  loc_B96849: FLdRfVar arg_14
  loc_B9684C: CDargRef
  loc_B96850: LitI4 0
  loc_B96855: LitI4 -1
  loc_B9685A: FLdRfVar var_108
  loc_B9685D: ILdI4 arg_24
  loc_B96860: FLdRfVar var_118
  loc_B96863: ImpAdCallFPR4  = Split(, , , )
  loc_B96868: FLdRfVar var_118
  loc_B9686B: VarIndexLdRfVarLock
  loc_B96873: FStR4 var_A4
  loc_B96876: LitVarI2 var_16C, 1
  loc_B9687B: FLdI2 arg_10
  loc_B9687E: CI4UI1
  loc_B9687F: ILdRf var_A4
  loc_B96882: FLdRfVar var_17C
  loc_B96885: ImpAdCallFPR4  = Mid(, , )
  loc_B9688A: AryUnlock
  loc_B9688D: FLdRfVar var_17C
  loc_B96890: CStrVarTmp
  loc_B96891: FStStr var_90
  loc_B96894: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = ""
  loc_B968A1: ILdRf var_90
  loc_B968A4: LitStr "O"
  loc_B968A7: EqStr
  loc_B968A9: ILdRf var_90
  loc_B968AC: LitStr "D"
  loc_B968AF: EqStr
  loc_B968B1: OrI4
  loc_B968B2: ILdRf var_90
  loc_B968B5: LitStr "R"
  loc_B968B8: EqStr
  loc_B968BA: OrI4
  loc_B968BB: ILdRf var_90
  loc_B968BE: LitStr "S"
  loc_B968C1: EqStr
  loc_B968C3: ILdRf var_90
  loc_B968C6: LitStr "L"
  loc_B968C9: EqStr
  loc_B968CB: OrI4
  loc_B968CC: FLdI2 arg_14
  loc_B968CF: FLdI2 arg_1C
  loc_B968D2: EqI2
  loc_B968D3: AndI4
  loc_B968D4: FLdI2 arg_10
  loc_B968D7: LitI2_Byte 1
  loc_B968D9: SubI2
  loc_B968DA: FLdI2 arg_18
  loc_B968DD: EqI2
  loc_B968DE: AndI4
  loc_B968DF: OrI4
  loc_B968E0: BranchF loc_B96C27
  loc_B968E3: ILdRf var_90
  loc_B968E6: LitStr "R"
  loc_B968E9: EqStr
  loc_B968EB: BranchF loc_B96A35
  loc_B968EE: LitI4 0
  loc_B968F3: FStStrCopy var_194
  loc_B968F6: FLdRfVar var_194
  loc_B968F9: ImpAdLdI4 MemVar_C0F044
  loc_B968FC: LitStr "privaterooms\"
  loc_B968FF: ConcatStr
  loc_B96900: FStStrNoPop var_188
  loc_B96903: ILdI2 arg_C
  loc_B96906: CI4UI1
  loc_B96907: ImpAdLdI4 MemVar_C0F160
  loc_B9690A: Ary1LdPr
  loc_B9690B: MemLdFPR8 global_16
  loc_B9690E: CStrR8
  loc_B96910: FStStrNoPop var_18C
  loc_B96913: ConcatStr
  loc_B96914: FStStrNoPop var_190
  loc_B96917: LitStr "\rotation.txt"
  loc_B9691A: ConcatStr
  loc_B9691B: CVarStr var_118
  loc_B9691E: FLdI2 arg_10
  loc_B96921: LitI2_Byte 1
  loc_B96923: SubI2
  loc_B96924: CStrUI1
  loc_B96926: FStStrNoPop var_F8
  loc_B96929: LitStr ","
  loc_B9692C: ConcatStr
  loc_B9692D: FStStrNoPop var_180
  loc_B96930: FLdI2 arg_14
  loc_B96933: CStrUI1
  loc_B96935: FStStrNoPop var_184
  loc_B96938: ConcatStr
  loc_B96939: CVarStr var_108
  loc_B9693C: LitVarStr var_B4, "furnies"
  loc_B96941: PopAdLdVar
  loc_B96942: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B96947: CVarStr var_158
  loc_B9694A: FStVar var_1A4
  loc_B9694E: FFreeStr var_F8 = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_B9695F: FFreeVar var_108 = ""
  loc_B96966: FLdRfVar var_1A4
  loc_B96969: LitVarStr var_B4, vbNullString
  loc_B9696E: HardType
  loc_B9696F: NeVarBool
  loc_B96971: BranchF loc_B96A35
  loc_B96974: FLdRfVar var_180
  loc_B96977: FLdRfVar var_1A8
  loc_B9697A: LitI4 0
  loc_B9697F: LitI2_Byte 0
  loc_B96981: LitI4 1
  loc_B96986: ImpAdLdI4 MemVar_C0F044
  loc_B96989: LitStr "furni\"
  loc_B9698C: ConcatStr
  loc_B9698D: CVarStr var_108
  loc_B96990: FLdRfVar var_1A4
  loc_B96993: ConcatVar var_118
  loc_B96997: LitVarStr var_B4, "\type.txt"
  loc_B9699C: ConcatVar var_158
  loc_B969A0: CStrVarVal var_F8
  loc_B969A4: ImpAdLdRf MemVar_C0F040
  loc_B969A7: NewIfNullPr IFileSystem3
  loc_B969AA: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B969AF: FLdPr var_1A8
  loc_B969B2:  = Me.ReadAll
  loc_B969B7: FLdZeroAd var_180
  loc_B969BA: CVarStr var_16C
  loc_B969BD: FStVar var_1B8
  loc_B969C1: FFree1Str var_F8
  loc_B969C4: FFree1Ad var_1A8
  loc_B969C7: FFreeVar var_108 = "": var_118 = ""
  loc_B969D0: FLdRfVar var_1B8
  loc_B969D3: LitVarStr var_B4, "rug"
  loc_B969D8: HardType
  loc_B969D9: EqVar var_108
  loc_B969DD: NotVar var_118
  loc_B969E1: FLdRfVar var_1B8
  loc_B969E4: LitVarStr var_C4, "sit"
  loc_B969E9: HardType
  loc_B969EA: EqVar var_158
  loc_B969EE: FLdRfVar var_1B8
  loc_B969F1: LitVarStr var_D4, "bed"
  loc_B969F6: HardType
  loc_B969F7: EqVar var_16C
  loc_B969FB: OrVar var_17C
  loc_B969FF: FLdI2 arg_14
  loc_B96A02: FLdI2 arg_1C
  loc_B96A05: EqI2
  loc_B96A06: CVarBoolI2 var_1C8
  loc_B96A0A: AndVar var_1D8
  loc_B96A0E: FLdI2 arg_10
  loc_B96A11: LitI2_Byte 1
  loc_B96A13: SubI2
  loc_B96A14: FLdI2 arg_18
  loc_B96A17: EqI2
  loc_B96A18: CVarBoolI2 var_1E8
  loc_B96A1C: AndVar var_1F8
  loc_B96A20: NotVar var_208
  loc_B96A24: AndVar var_218
  loc_B96A28: CBoolVarNull
  loc_B96A2A: FFreeVar var_1C8 = ""
  loc_B96A31: BranchF loc_B96A35
  loc_B96A34: ExitProc
  loc_B96A35: FLdI2 arg_10
  loc_B96A38: LitI2_Byte 1
  loc_B96A3A: SubI2
  loc_B96A3B: CStrUI1
  loc_B96A3D: FStStrNoPop var_F8
  loc_B96A40: LitStr ","
  loc_B96A43: ConcatStr
  loc_B96A44: FStStrNoPop var_180
  loc_B96A47: FLdI2 arg_14
  loc_B96A4A: CStrUI1
  loc_B96A4C: FStStrNoPop var_184
  loc_B96A4F: ConcatStr
  loc_B96A50: FStStr var_88
  loc_B96A53: FFreeStr var_F8 = "": var_180 = ""
  loc_B96A5C: LitStr "6,6"
  loc_B96A5F: ILdI2 arg_C
  loc_B96A62: CI4UI1
  loc_B96A63: ImpAdLdI4 MemVar_C0F160
  loc_B96A66: Ary1LdPr
  loc_B96A67: MemStStrCopy
  loc_B96A6B: ILdRf var_90
  loc_B96A6E: LitStr "R"
  loc_B96A71: EqStr
  loc_B96A73: BranchF loc_B96B6E
  loc_B96A76: LitI4 &HD
  loc_B96A7B: FLdRfVar var_108
  loc_B96A7E: ImpAdCallFPR4  = Chr()
  loc_B96A83: FLdRfVar arg_14
  loc_B96A86: CDargRef
  loc_B96A8A: LitI4 0
  loc_B96A8F: LitI4 -1
  loc_B96A94: FLdRfVar var_108
  loc_B96A97: ILdI4 arg_28
  loc_B96A9A: FLdRfVar var_118
  loc_B96A9D: ImpAdCallFPR4  = Split(, , , )
  loc_B96AA2: FLdRfVar var_118
  loc_B96AA5: VarIndexLdRfVarLock
  loc_B96AAD: FStR4 var_A4
  loc_B96AB0: LitVarI2 var_16C, 1
  loc_B96AB5: FLdI2 arg_10
  loc_B96AB8: CI4UI1
  loc_B96AB9: ILdRf var_A4
  loc_B96ABC: FLdRfVar var_17C
  loc_B96ABF: ImpAdCallFPR4  = Mid(, , )
  loc_B96AC4: AryUnlock
  loc_B96AC7: FLdRfVar var_17C
  loc_B96ACA: CStrVarVal var_F8
  loc_B96ACE: ImpAdCallFPR4 push push Val()
  loc_B96AD3: FStFPR8 var_220
  loc_B96AD6: LitI4 0
  loc_B96ADB: LitI4 -1
  loc_B96AE0: LitI4 1
  loc_B96AE5: LitStr "."
  loc_B96AE8: LitStr ","
  loc_B96AEB: FLdFPR8 var_220
  loc_B96AEE: LitDate 0.4
  loc_B96AF7: AddR8
  loc_B96AF8: CStrR8
  loc_B96AFA: FStStrNoPop var_180
  loc_B96AFD: ImpAdCallI2 Replace(, , , , , )
  loc_B96B02: FStStrNoPop var_184
  loc_B96B05: ILdI2 arg_C
  loc_B96B08: CI4UI1
  loc_B96B09: ImpAdLdI4 MemVar_C0F160
  loc_B96B0C: Ary1LdPr
  loc_B96B0D: MemStStrCopy
  loc_B96B11: FFreeStr var_F8 = "": var_180 = ""
  loc_B96B1A: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = ""
  loc_B96B27: LitI4 1
  loc_B96B2C: ILdI2 arg_C
  loc_B96B2F: CI4UI1
  loc_B96B30: ImpAdLdI4 MemVar_C0F160
  loc_B96B33: Ary1LdPr
  loc_B96B34: MemLdStr global_96
  loc_B96B37: LitStr "."
  loc_B96B3A: LitI4 0
  loc_B96B3F: FnInStr4
  loc_B96B41: LitI4 0
  loc_B96B46: EqI4
  loc_B96B47: BranchF loc_B96B6B
  loc_B96B4A: ILdI2 arg_C
  loc_B96B4D: CI4UI1
  loc_B96B4E: ImpAdLdI4 MemVar_C0F160
  loc_B96B51: Ary1LdPr
  loc_B96B52: MemLdStr global_96
  loc_B96B55: LitStr ".0"
  loc_B96B58: ConcatStr
  loc_B96B59: FStStrNoPop var_F8
  loc_B96B5C: ILdI2 arg_C
  loc_B96B5F: CI4UI1
  loc_B96B60: ImpAdLdI4 MemVar_C0F160
  loc_B96B63: Ary1LdPr
  loc_B96B64: MemStStrCopy
  loc_B96B68: FFree1Str var_F8
  loc_B96B6B: Branch loc_B96BED
  loc_B96B6E: LitI4 &HD
  loc_B96B73: FLdRfVar var_108
  loc_B96B76: ImpAdCallFPR4  = Chr()
  loc_B96B7B: FLdRfVar arg_14
  loc_B96B7E: CDargRef
  loc_B96B82: LitI4 0
  loc_B96B87: LitI4 -1
  loc_B96B8C: FLdRfVar var_108
  loc_B96B8F: ILdI4 arg_28
  loc_B96B92: FLdRfVar var_118
  loc_B96B95: ImpAdCallFPR4  = Split(, , , )
  loc_B96B9A: FLdRfVar var_118
  loc_B96B9D: VarIndexLdRfVarLock
  loc_B96BA5: FStR4 var_A4
  loc_B96BA8: LitVarI2 var_16C, 1
  loc_B96BAD: FLdI2 arg_10
  loc_B96BB0: CI4UI1
  loc_B96BB1: ILdRf var_A4
  loc_B96BB4: FLdRfVar var_17C
  loc_B96BB7: ImpAdCallFPR4  = Mid(, , )
  loc_B96BBC: AryUnlock
  loc_B96BBF: FLdRfVar var_17C
  loc_B96BC2: LitVarStr var_D4, ".0"
  loc_B96BC7: ConcatVar var_1D8
  loc_B96BCB: CStrVarTmp
  loc_B96BCC: FStStrNoPop var_F8
  loc_B96BCF: ILdI2 arg_C
  loc_B96BD2: CI4UI1
  loc_B96BD3: ImpAdLdI4 MemVar_C0F160
  loc_B96BD6: Ary1LdPr
  loc_B96BD7: MemStStrCopy
  loc_B96BDB: FFree1Str var_F8
  loc_B96BDE: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = "": var_17C = ""
  loc_B96BED: LitI4 0
  loc_B96BF2: ILdI2 arg_C
  loc_B96BF5: CI4UI1
  loc_B96BF6: ImpAdLdI4 MemVar_C0F160
  loc_B96BF9: Ary1LdPr
  loc_B96BFA: MemStI4 global_8
  loc_B96BFD: LitStr vbNullString
  loc_B96C00: ILdI2 arg_C
  loc_B96C03: CI4UI1
  loc_B96C04: ImpAdLdI4 MemVar_C0F160
  loc_B96C07: Ary1LdPr
  loc_B96C08: MemStStrCopy
  loc_B96C0C: LitI2_Byte 0
  loc_B96C0E: ILdI2 arg_C
  loc_B96C11: CI4UI1
  loc_B96C12: ImpAdLdI4 MemVar_C0F160
  loc_B96C15: Ary1LdPr
  loc_B96C16: MemStI2 global_104
  loc_B96C19: LitI2_Byte 0
  loc_B96C1B: ILdI2 arg_C
  loc_B96C1E: CI4UI1
  loc_B96C1F: ImpAdLdI4 MemVar_C0F160
  loc_B96C22: Ary1LdPr
  loc_B96C23: MemStI2 global_106
  loc_B96C26: ExitProc
  loc_B96C27: FLdI2 arg_10
  loc_B96C2A: FLdI2 arg_18
  loc_B96C2D: LtI2
  loc_B96C2E: BranchF loc_B9717C
  loc_B96C31: LitVarI2 var_D4, 1
  loc_B96C36: FLdRfVar var_A0
  loc_B96C39: FLdRfVar var_A4
  loc_B96C3C: ImpAdLdRf MemVar_C0F018
  loc_B96C3F: NewIfNullPr frmMain
  loc_B96C42: from_stack_1v = frmMain.SockIGet()
  loc_B96C47: ILdRf var_A4
  loc_B96C4A: CVarI4
  loc_B96C4E: ForVar var_340
  loc_B96C54: FLdRfVar var_A0
  loc_B96C57: CI4Var
  loc_B96C59: ImpAdLdI4 MemVar_C0F100
  loc_B96C5C: Ary1LdPr
  loc_B96C5D: MemLdFPR8 global_224
  loc_B96C60: FLdI2 arg_20
  loc_B96C63: CR8I2
  loc_B96C64: EqR4
  loc_B96C65: BranchF loc_B96C92
  loc_B96C68: FLdRfVar var_A0
  loc_B96C6B: CI4Var
  loc_B96C6D: ImpAdLdI4 MemVar_C0F100
  loc_B96C70: Ary1LdPr
  loc_B96C71: MemLdFPR8 global_232
  loc_B96C74: FLdI2 arg_10
  loc_B96C77: LitI2_Byte 1
  loc_B96C79: AddI2
  loc_B96C7A: CR8I2
  loc_B96C7B: EqR4
  loc_B96C7C: FLdRfVar var_A0
  loc_B96C7F: CI4Var
  loc_B96C81: ImpAdLdI4 MemVar_C0F100
  loc_B96C84: Ary1LdPr
  loc_B96C85: MemLdFPR8 global_240
  loc_B96C88: FLdI2 arg_14
  loc_B96C8B: CR8I2
  loc_B96C8C: EqR4
  loc_B96C8D: AndI4
  loc_B96C8E: BranchF loc_B96C92
  loc_B96C91: ExitProc
  loc_B96C92: FLdRfVar var_A0
  loc_B96C95: NextStepVar var_340
  loc_B96C9B: FLdRfVar var_F8
  loc_B96C9E: ImpAdLdRf MemVar_C0F018
  loc_B96CA1: NewIfNullPr frmMain
  loc_B96CA4: from_stack_1v = frmMain.HpetsGet()
  loc_B96CA9: LitI4 0
  loc_B96CAE: LitI4 -1
  loc_B96CB3: LitVarStr var_B4, ";"
  loc_B96CB8: FStVarCopyObj var_108
  loc_B96CBB: FLdRfVar var_108
  loc_B96CBE: ILdRf var_F8
  loc_B96CC1: FLdRfVar var_118
  loc_B96CC4: ImpAdCallFPR4  = Split(, , , )
  loc_B96CC9: FLdRfVar var_118
  loc_B96CCC: FStVar var_128
  loc_B96CD0: FFree1Str var_F8
  loc_B96CD3: FFree1Var var_108 = ""
  loc_B96CD6: LitVarI2 var_D4, 0
  loc_B96CDB: FLdRfVar var_A0
  loc_B96CDE: FLdRfVar var_128
  loc_B96CE1: CRefVarAry
  loc_B96CE3: PopAdLd4
  loc_B96CE4: LitI2_Byte 1
  loc_B96CE6: FnUBound
  loc_B96CE8: CVarI4
  loc_B96CEC: ForVar var_360
  loc_B96CF2: FLdRfVar var_A0
  loc_B96CF5: CDargRef
  loc_B96CF9: FLdRfVar var_128
  loc_B96CFC: VarIndexLdVar
  loc_B96D02: LitVarStr var_C4, vbNullString
  loc_B96D07: HardType
  loc_B96D08: NeVarBool
  loc_B96D0A: FFree1Var var_108 = ""
  loc_B96D0D: BranchF loc_B96D7F
  loc_B96D10: FLdRfVar var_A0
  loc_B96D13: CDargRef
  loc_B96D17: FLdRfVar var_128
  loc_B96D1A: VarIndexLdVar
  loc_B96D20: CI4Var
  loc_B96D22: ImpAdLdI4 MemVar_C0F160
  loc_B96D25: Ary1LdPr
  loc_B96D26: MemLdFPR8 global_16
  loc_B96D29: FLdI2 arg_20
  loc_B96D2C: CR8I2
  loc_B96D2D: EqR4
  loc_B96D2E: FFree1Var var_108 = ""
  loc_B96D31: BranchF loc_B96D7F
  loc_B96D34: FLdRfVar var_A0
  loc_B96D37: CDargRef
  loc_B96D3B: FLdRfVar var_128
  loc_B96D3E: VarIndexLdVar
  loc_B96D44: CI4Var
  loc_B96D46: ImpAdLdI4 MemVar_C0F160
  loc_B96D49: Ary1LdPr
  loc_B96D4A: MemLdFPR8 global_44
  loc_B96D4D: FLdI2 arg_10
  loc_B96D50: LitI2_Byte 1
  loc_B96D52: AddI2
  loc_B96D53: CR8I2
  loc_B96D54: EqR4
  loc_B96D55: FLdRfVar var_A0
  loc_B96D58: CDargRef
  loc_B96D5C: FLdRfVar var_128
  loc_B96D5F: VarIndexLdVar
  loc_B96D65: CI4Var
  loc_B96D67: ImpAdLdI4 MemVar_C0F160
  loc_B96D6A: Ary1LdPr
  loc_B96D6B: MemLdFPR8 global_52
  loc_B96D6E: FLdI2 arg_14
  loc_B96D71: CR8I2
  loc_B96D72: EqR4
  loc_B96D73: AndI4
  loc_B96D74: FFreeVar var_108 = ""
  loc_B96D7B: BranchF loc_B96D7F
  loc_B96D7E: ExitProc
  loc_B96D7F: FLdRfVar var_A0
  loc_B96D82: NextStepVar var_360
  loc_B96D88: LitI4 &HD
  loc_B96D8D: FLdRfVar var_108
  loc_B96D90: ImpAdCallFPR4  = Chr()
  loc_B96D95: FLdRfVar arg_14
  loc_B96D98: CDargRef
  loc_B96D9C: LitI4 0
  loc_B96DA1: LitI4 -1
  loc_B96DA6: FLdRfVar var_108
  loc_B96DA9: ILdI4 arg_24
  loc_B96DAC: FLdRfVar var_118
  loc_B96DAF: ImpAdCallFPR4  = Split(, , , )
  loc_B96DB4: FLdRfVar var_118
  loc_B96DB7: VarIndexLdRfVarLock
  loc_B96DBF: FStR4 var_A4
  loc_B96DC2: LitVarI2 var_16C, 1
  loc_B96DC7: FLdI2 arg_10
  loc_B96DCA: LitI2_Byte 2
  loc_B96DCC: AddI2
  loc_B96DCD: CI4UI1
  loc_B96DCE: ILdRf var_A4
  loc_B96DD1: FLdRfVar var_17C
  loc_B96DD4: ImpAdCallFPR4  = Mid(, , )
  loc_B96DD9: AryUnlock
  loc_B96DDC: FLdRfVar var_17C
  loc_B96DDF: CStrVarTmp
  loc_B96DE0: FStStr var_90
  loc_B96DE3: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = ""
  loc_B96DF0: ILdRf var_90
  loc_B96DF3: LitStr "O"
  loc_B96DF6: EqStr
  loc_B96DF8: ILdRf var_90
  loc_B96DFB: LitStr "D"
  loc_B96DFE: EqStr
  loc_B96E00: OrI4
  loc_B96E01: ILdRf var_90
  loc_B96E04: LitStr "R"
  loc_B96E07: EqStr
  loc_B96E09: OrI4
  loc_B96E0A: ILdRf var_90
  loc_B96E0D: LitStr "S"
  loc_B96E10: EqStr
  loc_B96E12: ILdRf var_90
  loc_B96E15: LitStr "L"
  loc_B96E18: EqStr
  loc_B96E1A: OrI4
  loc_B96E1B: FLdI2 arg_14
  loc_B96E1E: FLdI2 arg_1C
  loc_B96E21: EqI2
  loc_B96E22: AndI4
  loc_B96E23: FLdI2 arg_10
  loc_B96E26: LitI2_Byte 1
  loc_B96E28: AddI2
  loc_B96E29: FLdI2 arg_18
  loc_B96E2C: EqI2
  loc_B96E2D: AndI4
  loc_B96E2E: OrI4
  loc_B96E2F: BranchF loc_B9717C
  loc_B96E32: ILdRf var_90
  loc_B96E35: LitStr "R"
  loc_B96E38: EqStr
  loc_B96E3A: BranchF loc_B96F84
  loc_B96E3D: LitI4 0
  loc_B96E42: FStStrCopy var_194
  loc_B96E45: FLdRfVar var_194
  loc_B96E48: ImpAdLdI4 MemVar_C0F044
  loc_B96E4B: LitStr "privaterooms\"
  loc_B96E4E: ConcatStr
  loc_B96E4F: FStStrNoPop var_188
  loc_B96E52: ILdI2 arg_C
  loc_B96E55: CI4UI1
  loc_B96E56: ImpAdLdI4 MemVar_C0F160
  loc_B96E59: Ary1LdPr
  loc_B96E5A: MemLdFPR8 global_16
  loc_B96E5D: CStrR8
  loc_B96E5F: FStStrNoPop var_18C
  loc_B96E62: ConcatStr
  loc_B96E63: FStStrNoPop var_190
  loc_B96E66: LitStr "\rotation.txt"
  loc_B96E69: ConcatStr
  loc_B96E6A: CVarStr var_118
  loc_B96E6D: FLdI2 arg_10
  loc_B96E70: LitI2_Byte 1
  loc_B96E72: AddI2
  loc_B96E73: CStrUI1
  loc_B96E75: FStStrNoPop var_F8
  loc_B96E78: LitStr ","
  loc_B96E7B: ConcatStr
  loc_B96E7C: FStStrNoPop var_180
  loc_B96E7F: FLdI2 arg_14
  loc_B96E82: CStrUI1
  loc_B96E84: FStStrNoPop var_184
  loc_B96E87: ConcatStr
  loc_B96E88: CVarStr var_108
  loc_B96E8B: LitVarStr var_B4, "furnies"
  loc_B96E90: PopAdLdVar
  loc_B96E91: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B96E96: CVarStr var_158
  loc_B96E99: FStVar var_1A4
  loc_B96E9D: FFreeStr var_F8 = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_B96EAE: FFreeVar var_108 = ""
  loc_B96EB5: FLdRfVar var_1A4
  loc_B96EB8: LitVarStr var_B4, vbNullString
  loc_B96EBD: HardType
  loc_B96EBE: NeVarBool
  loc_B96EC0: BranchF loc_B96F84
  loc_B96EC3: FLdRfVar var_180
  loc_B96EC6: FLdRfVar var_1A8
  loc_B96EC9: LitI4 0
  loc_B96ECE: LitI2_Byte 0
  loc_B96ED0: LitI4 1
  loc_B96ED5: ImpAdLdI4 MemVar_C0F044
  loc_B96ED8: LitStr "furni\"
  loc_B96EDB: ConcatStr
  loc_B96EDC: CVarStr var_108
  loc_B96EDF: FLdRfVar var_1A4
  loc_B96EE2: ConcatVar var_118
  loc_B96EE6: LitVarStr var_B4, "\type.txt"
  loc_B96EEB: ConcatVar var_158
  loc_B96EEF: CStrVarVal var_F8
  loc_B96EF3: ImpAdLdRf MemVar_C0F040
  loc_B96EF6: NewIfNullPr IFileSystem3
  loc_B96EF9: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B96EFE: FLdPr var_1A8
  loc_B96F01:  = Me.ReadAll
  loc_B96F06: FLdZeroAd var_180
  loc_B96F09: CVarStr var_16C
  loc_B96F0C: FStVar var_1B8
  loc_B96F10: FFree1Str var_F8
  loc_B96F13: FFree1Ad var_1A8
  loc_B96F16: FFreeVar var_108 = "": var_118 = ""
  loc_B96F1F: FLdRfVar var_1B8
  loc_B96F22: LitVarStr var_B4, "rug"
  loc_B96F27: HardType
  loc_B96F28: EqVar var_108
  loc_B96F2C: NotVar var_118
  loc_B96F30: FLdRfVar var_1B8
  loc_B96F33: LitVarStr var_C4, "sit"
  loc_B96F38: HardType
  loc_B96F39: EqVar var_158
  loc_B96F3D: FLdRfVar var_1B8
  loc_B96F40: LitVarStr var_D4, "bed"
  loc_B96F45: HardType
  loc_B96F46: EqVar var_16C
  loc_B96F4A: OrVar var_17C
  loc_B96F4E: FLdI2 arg_14
  loc_B96F51: FLdI2 arg_1C
  loc_B96F54: EqI2
  loc_B96F55: CVarBoolI2 var_1C8
  loc_B96F59: AndVar var_1D8
  loc_B96F5D: FLdI2 arg_10
  loc_B96F60: LitI2_Byte 1
  loc_B96F62: AddI2
  loc_B96F63: FLdI2 arg_18
  loc_B96F66: EqI2
  loc_B96F67: CVarBoolI2 var_1E8
  loc_B96F6B: AndVar var_1F8
  loc_B96F6F: NotVar var_208
  loc_B96F73: AndVar var_218
  loc_B96F77: CBoolVarNull
  loc_B96F79: FFreeVar var_1C8 = ""
  loc_B96F80: BranchF loc_B96F84
  loc_B96F83: ExitProc
  loc_B96F84: FLdI2 arg_10
  loc_B96F87: LitI2_Byte 1
  loc_B96F89: AddI2
  loc_B96F8A: CStrUI1
  loc_B96F8C: FStStrNoPop var_F8
  loc_B96F8F: LitStr ","
  loc_B96F92: ConcatStr
  loc_B96F93: FStStrNoPop var_180
  loc_B96F96: FLdI2 arg_14
  loc_B96F99: CStrUI1
  loc_B96F9B: FStStrNoPop var_184
  loc_B96F9E: ConcatStr
  loc_B96F9F: FStStr var_88
  loc_B96FA2: FFreeStr var_F8 = "": var_180 = ""
  loc_B96FAB: LitStr "2,2"
  loc_B96FAE: ILdI2 arg_C
  loc_B96FB1: CI4UI1
  loc_B96FB2: ImpAdLdI4 MemVar_C0F160
  loc_B96FB5: Ary1LdPr
  loc_B96FB6: MemStStrCopy
  loc_B96FBA: ILdRf var_90
  loc_B96FBD: LitStr "R"
  loc_B96FC0: EqStr
  loc_B96FC2: BranchF loc_B970C0
  loc_B96FC5: LitI4 &HD
  loc_B96FCA: FLdRfVar var_108
  loc_B96FCD: ImpAdCallFPR4  = Chr()
  loc_B96FD2: FLdRfVar arg_14
  loc_B96FD5: CDargRef
  loc_B96FD9: LitI4 0
  loc_B96FDE: LitI4 -1
  loc_B96FE3: FLdRfVar var_108
  loc_B96FE6: ILdI4 arg_28
  loc_B96FE9: FLdRfVar var_118
  loc_B96FEC: ImpAdCallFPR4  = Split(, , , )
  loc_B96FF1: FLdRfVar var_118
  loc_B96FF4: VarIndexLdRfVarLock
  loc_B96FFC: FStR4 var_A4
  loc_B96FFF: LitVarI2 var_16C, 1
  loc_B97004: FLdI2 arg_10
  loc_B97007: LitI2_Byte 2
  loc_B97009: AddI2
  loc_B9700A: CI4UI1
  loc_B9700B: ILdRf var_A4
  loc_B9700E: FLdRfVar var_17C
  loc_B97011: ImpAdCallFPR4  = Mid(, , )
  loc_B97016: AryUnlock
  loc_B97019: FLdRfVar var_17C
  loc_B9701C: CStrVarVal var_F8
  loc_B97020: ImpAdCallFPR4 push push Val()
  loc_B97025: FStFPR8 var_220
  loc_B97028: LitI4 0
  loc_B9702D: LitI4 -1
  loc_B97032: LitI4 1
  loc_B97037: LitStr "."
  loc_B9703A: LitStr ","
  loc_B9703D: FLdFPR8 var_220
  loc_B97040: LitDate 0.4
  loc_B97049: AddR8
  loc_B9704A: CStrR8
  loc_B9704C: FStStrNoPop var_180
  loc_B9704F: ImpAdCallI2 Replace(, , , , , )
  loc_B97054: FStStrNoPop var_184
  loc_B97057: ILdI2 arg_C
  loc_B9705A: CI4UI1
  loc_B9705B: ImpAdLdI4 MemVar_C0F160
  loc_B9705E: Ary1LdPr
  loc_B9705F: MemStStrCopy
  loc_B97063: FFreeStr var_F8 = "": var_180 = ""
  loc_B9706C: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = ""
  loc_B97079: LitI4 1
  loc_B9707E: ILdI2 arg_C
  loc_B97081: CI4UI1
  loc_B97082: ImpAdLdI4 MemVar_C0F160
  loc_B97085: Ary1LdPr
  loc_B97086: MemLdStr global_96
  loc_B97089: LitStr "."
  loc_B9708C: LitI4 0
  loc_B97091: FnInStr4
  loc_B97093: LitI4 0
  loc_B97098: EqI4
  loc_B97099: BranchF loc_B970BD
  loc_B9709C: ILdI2 arg_C
  loc_B9709F: CI4UI1
  loc_B970A0: ImpAdLdI4 MemVar_C0F160
  loc_B970A3: Ary1LdPr
  loc_B970A4: MemLdStr global_96
  loc_B970A7: LitStr ".0"
  loc_B970AA: ConcatStr
  loc_B970AB: FStStrNoPop var_F8
  loc_B970AE: ILdI2 arg_C
  loc_B970B1: CI4UI1
  loc_B970B2: ImpAdLdI4 MemVar_C0F160
  loc_B970B5: Ary1LdPr
  loc_B970B6: MemStStrCopy
  loc_B970BA: FFree1Str var_F8
  loc_B970BD: Branch loc_B97142
  loc_B970C0: LitI4 &HD
  loc_B970C5: FLdRfVar var_108
  loc_B970C8: ImpAdCallFPR4  = Chr()
  loc_B970CD: FLdRfVar arg_14
  loc_B970D0: CDargRef
  loc_B970D4: LitI4 0
  loc_B970D9: LitI4 -1
  loc_B970DE: FLdRfVar var_108
  loc_B970E1: ILdI4 arg_28
  loc_B970E4: FLdRfVar var_118
  loc_B970E7: ImpAdCallFPR4  = Split(, , , )
  loc_B970EC: FLdRfVar var_118
  loc_B970EF: VarIndexLdRfVarLock
  loc_B970F7: FStR4 var_A4
  loc_B970FA: LitVarI2 var_16C, 1
  loc_B970FF: FLdI2 arg_10
  loc_B97102: LitI2_Byte 2
  loc_B97104: AddI2
  loc_B97105: CI4UI1
  loc_B97106: ILdRf var_A4
  loc_B97109: FLdRfVar var_17C
  loc_B9710C: ImpAdCallFPR4  = Mid(, , )
  loc_B97111: AryUnlock
  loc_B97114: FLdRfVar var_17C
  loc_B97117: LitVarStr var_D4, ".0"
  loc_B9711C: ConcatVar var_1D8
  loc_B97120: CStrVarTmp
  loc_B97121: FStStrNoPop var_F8
  loc_B97124: ILdI2 arg_C
  loc_B97127: CI4UI1
  loc_B97128: ImpAdLdI4 MemVar_C0F160
  loc_B9712B: Ary1LdPr
  loc_B9712C: MemStStrCopy
  loc_B97130: FFree1Str var_F8
  loc_B97133: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = "": var_17C = ""
  loc_B97142: LitI4 0
  loc_B97147: ILdI2 arg_C
  loc_B9714A: CI4UI1
  loc_B9714B: ImpAdLdI4 MemVar_C0F160
  loc_B9714E: Ary1LdPr
  loc_B9714F: MemStI4 global_8
  loc_B97152: LitStr vbNullString
  loc_B97155: ILdI2 arg_C
  loc_B97158: CI4UI1
  loc_B97159: ImpAdLdI4 MemVar_C0F160
  loc_B9715C: Ary1LdPr
  loc_B9715D: MemStStrCopy
  loc_B97161: LitI2_Byte 0
  loc_B97163: ILdI2 arg_C
  loc_B97166: CI4UI1
  loc_B97167: ImpAdLdI4 MemVar_C0F160
  loc_B9716A: Ary1LdPr
  loc_B9716B: MemStI2 global_104
  loc_B9716E: LitI2_Byte 0
  loc_B97170: ILdI2 arg_C
  loc_B97173: CI4UI1
  loc_B97174: ImpAdLdI4 MemVar_C0F160
  loc_B97177: Ary1LdPr
  loc_B97178: MemStI2 global_106
  loc_B9717B: ExitProc
  loc_B9717C: FLdI2 arg_14
  loc_B9717F: FLdI2 arg_1C
  loc_B97182: LtI2
  loc_B97183: BranchF loc_B976DA
  loc_B97186: LitVarI2 var_D4, 1
  loc_B9718B: FLdRfVar var_A0
  loc_B9718E: FLdRfVar var_A4
  loc_B97191: ImpAdLdRf MemVar_C0F018
  loc_B97194: NewIfNullPr frmMain
  loc_B97197: from_stack_1v = frmMain.SockIGet()
  loc_B9719C: ILdRf var_A4
  loc_B9719F: CVarI4
  loc_B971A3: ForVar var_380
  loc_B971A9: FLdRfVar var_A0
  loc_B971AC: CI4Var
  loc_B971AE: ImpAdLdI4 MemVar_C0F100
  loc_B971B1: Ary1LdPr
  loc_B971B2: MemLdFPR8 global_224
  loc_B971B5: FLdI2 arg_20
  loc_B971B8: CR8I2
  loc_B971B9: EqR4
  loc_B971BA: BranchF loc_B971E7
  loc_B971BD: FLdRfVar var_A0
  loc_B971C0: CI4Var
  loc_B971C2: ImpAdLdI4 MemVar_C0F100
  loc_B971C5: Ary1LdPr
  loc_B971C6: MemLdFPR8 global_232
  loc_B971C9: FLdI2 arg_10
  loc_B971CC: CR8I2
  loc_B971CD: EqR4
  loc_B971CE: FLdRfVar var_A0
  loc_B971D1: CI4Var
  loc_B971D3: ImpAdLdI4 MemVar_C0F100
  loc_B971D6: Ary1LdPr
  loc_B971D7: MemLdFPR8 global_240
  loc_B971DA: FLdI2 arg_14
  loc_B971DD: LitI2_Byte 1
  loc_B971DF: AddI2
  loc_B971E0: CR8I2
  loc_B971E1: EqR4
  loc_B971E2: AndI4
  loc_B971E3: BranchF loc_B971E7
  loc_B971E6: ExitProc
  loc_B971E7: FLdRfVar var_A0
  loc_B971EA: NextStepVar var_380
  loc_B971F0: FLdRfVar var_F8
  loc_B971F3: ImpAdLdRf MemVar_C0F018
  loc_B971F6: NewIfNullPr frmMain
  loc_B971F9: from_stack_1v = frmMain.HpetsGet()
  loc_B971FE: LitI4 0
  loc_B97203: LitI4 -1
  loc_B97208: LitVarStr var_B4, ";"
  loc_B9720D: FStVarCopyObj var_108
  loc_B97210: FLdRfVar var_108
  loc_B97213: ILdRf var_F8
  loc_B97216: FLdRfVar var_118
  loc_B97219: ImpAdCallFPR4  = Split(, , , )
  loc_B9721E: FLdRfVar var_118
  loc_B97221: FStVar var_128
  loc_B97225: FFree1Str var_F8
  loc_B97228: FFree1Var var_108 = ""
  loc_B9722B: LitVarI2 var_D4, 0
  loc_B97230: FLdRfVar var_A0
  loc_B97233: FLdRfVar var_128
  loc_B97236: CRefVarAry
  loc_B97238: PopAdLd4
  loc_B97239: LitI2_Byte 1
  loc_B9723B: FnUBound
  loc_B9723D: CVarI4
  loc_B97241: ForVar var_3A0
  loc_B97247: FLdRfVar var_A0
  loc_B9724A: CDargRef
  loc_B9724E: FLdRfVar var_128
  loc_B97251: VarIndexLdVar
  loc_B97257: LitVarStr var_C4, vbNullString
  loc_B9725C: HardType
  loc_B9725D: NeVarBool
  loc_B9725F: FFree1Var var_108 = ""
  loc_B97262: BranchF loc_B972D4
  loc_B97265: FLdRfVar var_A0
  loc_B97268: CDargRef
  loc_B9726C: FLdRfVar var_128
  loc_B9726F: VarIndexLdVar
  loc_B97275: CI4Var
  loc_B97277: ImpAdLdI4 MemVar_C0F160
  loc_B9727A: Ary1LdPr
  loc_B9727B: MemLdFPR8 global_16
  loc_B9727E: FLdI2 arg_20
  loc_B97281: CR8I2
  loc_B97282: EqR4
  loc_B97283: FFree1Var var_108 = ""
  loc_B97286: BranchF loc_B972D4
  loc_B97289: FLdRfVar var_A0
  loc_B9728C: CDargRef
  loc_B97290: FLdRfVar var_128
  loc_B97293: VarIndexLdVar
  loc_B97299: CI4Var
  loc_B9729B: ImpAdLdI4 MemVar_C0F160
  loc_B9729E: Ary1LdPr
  loc_B9729F: MemLdFPR8 global_44
  loc_B972A2: FLdI2 arg_10
  loc_B972A5: CR8I2
  loc_B972A6: EqR4
  loc_B972A7: FLdRfVar var_A0
  loc_B972AA: CDargRef
  loc_B972AE: FLdRfVar var_128
  loc_B972B1: VarIndexLdVar
  loc_B972B7: CI4Var
  loc_B972B9: ImpAdLdI4 MemVar_C0F160
  loc_B972BC: Ary1LdPr
  loc_B972BD: MemLdFPR8 global_52
  loc_B972C0: FLdI2 arg_14
  loc_B972C3: LitI2_Byte 1
  loc_B972C5: AddI2
  loc_B972C6: CR8I2
  loc_B972C7: EqR4
  loc_B972C8: AndI4
  loc_B972C9: FFreeVar var_108 = ""
  loc_B972D0: BranchF loc_B972D4
  loc_B972D3: ExitProc
  loc_B972D4: FLdRfVar var_A0
  loc_B972D7: NextStepVar var_3A0
  loc_B972DD: LitI4 &HD
  loc_B972E2: FLdRfVar var_108
  loc_B972E5: ImpAdCallFPR4  = Chr()
  loc_B972EA: FLdI2 arg_14
  loc_B972ED: LitI2_Byte 1
  loc_B972EF: AddI2
  loc_B972F0: CVarI2 var_B4
  loc_B972F3: PopAdLdVar
  loc_B972F4: LitI4 0
  loc_B972F9: LitI4 -1
  loc_B972FE: FLdRfVar var_108
  loc_B97301: ILdI4 arg_24
  loc_B97304: FLdRfVar var_118
  loc_B97307: ImpAdCallFPR4  = Split(, , , )
  loc_B9730C: FLdRfVar var_118
  loc_B9730F: VarIndexLdRfVarLock
  loc_B97317: FStR4 var_A4
  loc_B9731A: LitVarI2 var_16C, 1
  loc_B9731F: FLdI2 arg_10
  loc_B97322: LitI2_Byte 1
  loc_B97324: AddI2
  loc_B97325: CI4UI1
  loc_B97326: ILdRf var_A4
  loc_B97329: FLdRfVar var_17C
  loc_B9732C: ImpAdCallFPR4  = Mid(, , )
  loc_B97331: AryUnlock
  loc_B97334: FLdRfVar var_17C
  loc_B97337: CStrVarTmp
  loc_B97338: FStStr var_90
  loc_B9733B: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = ""
  loc_B97348: ILdRf var_90
  loc_B9734B: LitStr "O"
  loc_B9734E: EqStr
  loc_B97350: ILdRf var_90
  loc_B97353: LitStr "D"
  loc_B97356: EqStr
  loc_B97358: OrI4
  loc_B97359: ILdRf var_90
  loc_B9735C: LitStr "R"
  loc_B9735F: EqStr
  loc_B97361: OrI4
  loc_B97362: ILdRf var_90
  loc_B97365: LitStr "S"
  loc_B97368: EqStr
  loc_B9736A: ILdRf var_90
  loc_B9736D: LitStr "L"
  loc_B97370: EqStr
  loc_B97372: OrI4
  loc_B97373: FLdI2 arg_14
  loc_B97376: LitI2_Byte 1
  loc_B97378: AddI2
  loc_B97379: FLdI2 arg_1C
  loc_B9737C: EqI2
  loc_B9737D: AndI4
  loc_B9737E: FLdI2 arg_10
  loc_B97381: FLdI2 arg_18
  loc_B97384: EqI2
  loc_B97385: AndI4
  loc_B97386: OrI4
  loc_B97387: BranchF loc_B976DA
  loc_B9738A: ILdRf var_90
  loc_B9738D: LitStr "R"
  loc_B97390: EqStr
  loc_B97392: BranchF loc_B974DC
  loc_B97395: LitI4 0
  loc_B9739A: FStStrCopy var_194
  loc_B9739D: FLdRfVar var_194
  loc_B973A0: ImpAdLdI4 MemVar_C0F044
  loc_B973A3: LitStr "privaterooms\"
  loc_B973A6: ConcatStr
  loc_B973A7: FStStrNoPop var_188
  loc_B973AA: ILdI2 arg_C
  loc_B973AD: CI4UI1
  loc_B973AE: ImpAdLdI4 MemVar_C0F160
  loc_B973B1: Ary1LdPr
  loc_B973B2: MemLdFPR8 global_16
  loc_B973B5: CStrR8
  loc_B973B7: FStStrNoPop var_18C
  loc_B973BA: ConcatStr
  loc_B973BB: FStStrNoPop var_190
  loc_B973BE: LitStr "\rotation.txt"
  loc_B973C1: ConcatStr
  loc_B973C2: CVarStr var_118
  loc_B973C5: FLdI2 arg_10
  loc_B973C8: CStrUI1
  loc_B973CA: FStStrNoPop var_F8
  loc_B973CD: LitStr ","
  loc_B973D0: ConcatStr
  loc_B973D1: FStStrNoPop var_180
  loc_B973D4: FLdI2 arg_14
  loc_B973D7: LitI2_Byte 1
  loc_B973D9: AddI2
  loc_B973DA: CStrUI1
  loc_B973DC: FStStrNoPop var_184
  loc_B973DF: ConcatStr
  loc_B973E0: CVarStr var_108
  loc_B973E3: LitVarStr var_B4, "furnies"
  loc_B973E8: PopAdLdVar
  loc_B973E9: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B973EE: CVarStr var_158
  loc_B973F1: FStVar var_1A4
  loc_B973F5: FFreeStr var_F8 = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_B97406: FFreeVar var_108 = ""
  loc_B9740D: FLdRfVar var_1A4
  loc_B97410: LitVarStr var_B4, vbNullString
  loc_B97415: HardType
  loc_B97416: NeVarBool
  loc_B97418: BranchF loc_B974DC
  loc_B9741B: FLdRfVar var_180
  loc_B9741E: FLdRfVar var_1A8
  loc_B97421: LitI4 0
  loc_B97426: LitI2_Byte 0
  loc_B97428: LitI4 1
  loc_B9742D: ImpAdLdI4 MemVar_C0F044
  loc_B97430: LitStr "furni\"
  loc_B97433: ConcatStr
  loc_B97434: CVarStr var_108
  loc_B97437: FLdRfVar var_1A4
  loc_B9743A: ConcatVar var_118
  loc_B9743E: LitVarStr var_B4, "\type.txt"
  loc_B97443: ConcatVar var_158
  loc_B97447: CStrVarVal var_F8
  loc_B9744B: ImpAdLdRf MemVar_C0F040
  loc_B9744E: NewIfNullPr IFileSystem3
  loc_B97451: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B97456: FLdPr var_1A8
  loc_B97459:  = Me.ReadAll
  loc_B9745E: FLdZeroAd var_180
  loc_B97461: CVarStr var_16C
  loc_B97464: FStVar var_1B8
  loc_B97468: FFree1Str var_F8
  loc_B9746B: FFree1Ad var_1A8
  loc_B9746E: FFreeVar var_108 = "": var_118 = ""
  loc_B97477: FLdRfVar var_1B8
  loc_B9747A: LitVarStr var_B4, "rug"
  loc_B9747F: HardType
  loc_B97480: EqVar var_108
  loc_B97484: NotVar var_118
  loc_B97488: FLdRfVar var_1B8
  loc_B9748B: LitVarStr var_C4, "sit"
  loc_B97490: HardType
  loc_B97491: EqVar var_158
  loc_B97495: FLdRfVar var_1B8
  loc_B97498: LitVarStr var_D4, "bed"
  loc_B9749D: HardType
  loc_B9749E: EqVar var_16C
  loc_B974A2: OrVar var_17C
  loc_B974A6: FLdI2 arg_14
  loc_B974A9: LitI2_Byte 1
  loc_B974AB: AddI2
  loc_B974AC: FLdI2 arg_1C
  loc_B974AF: EqI2
  loc_B974B0: CVarBoolI2 var_1C8
  loc_B974B4: AndVar var_1D8
  loc_B974B8: FLdI2 arg_10
  loc_B974BB: FLdI2 arg_18
  loc_B974BE: EqI2
  loc_B974BF: CVarBoolI2 var_1E8
  loc_B974C3: AndVar var_1F8
  loc_B974C7: NotVar var_208
  loc_B974CB: AndVar var_218
  loc_B974CF: CBoolVarNull
  loc_B974D1: FFreeVar var_1C8 = ""
  loc_B974D8: BranchF loc_B974DC
  loc_B974DB: ExitProc
  loc_B974DC: FLdI2 arg_10
  loc_B974DF: CStrUI1
  loc_B974E1: FStStrNoPop var_F8
  loc_B974E4: LitStr ","
  loc_B974E7: ConcatStr
  loc_B974E8: FStStrNoPop var_180
  loc_B974EB: FLdI2 arg_14
  loc_B974EE: LitI2_Byte 1
  loc_B974F0: AddI2
  loc_B974F1: CStrUI1
  loc_B974F3: FStStrNoPop var_184
  loc_B974F6: ConcatStr
  loc_B974F7: FStStr var_88
  loc_B974FA: FFreeStr var_F8 = "": var_180 = ""
  loc_B97503: LitStr "4,4"
  loc_B97506: ILdI2 arg_C
  loc_B97509: CI4UI1
  loc_B9750A: ImpAdLdI4 MemVar_C0F160
  loc_B9750D: Ary1LdPr
  loc_B9750E: MemStStrCopy
  loc_B97512: ILdRf var_90
  loc_B97515: LitStr "R"
  loc_B97518: EqStr
  loc_B9751A: BranchF loc_B9761B
  loc_B9751D: LitI4 &HD
  loc_B97522: FLdRfVar var_108
  loc_B97525: ImpAdCallFPR4  = Chr()
  loc_B9752A: FLdI2 arg_14
  loc_B9752D: LitI2_Byte 1
  loc_B9752F: AddI2
  loc_B97530: CVarI2 var_B4
  loc_B97533: PopAdLdVar
  loc_B97534: LitI4 0
  loc_B97539: LitI4 -1
  loc_B9753E: FLdRfVar var_108
  loc_B97541: ILdI4 arg_28
  loc_B97544: FLdRfVar var_118
  loc_B97547: ImpAdCallFPR4  = Split(, , , )
  loc_B9754C: FLdRfVar var_118
  loc_B9754F: VarIndexLdRfVarLock
  loc_B97557: FStR4 var_A4
  loc_B9755A: LitVarI2 var_16C, 1
  loc_B9755F: FLdI2 arg_10
  loc_B97562: LitI2_Byte 1
  loc_B97564: AddI2
  loc_B97565: CI4UI1
  loc_B97566: ILdRf var_A4
  loc_B97569: FLdRfVar var_17C
  loc_B9756C: ImpAdCallFPR4  = Mid(, , )
  loc_B97571: AryUnlock
  loc_B97574: FLdRfVar var_17C
  loc_B97577: CStrVarVal var_F8
  loc_B9757B: ImpAdCallFPR4 push push Val()
  loc_B97580: FStFPR8 var_220
  loc_B97583: LitI4 0
  loc_B97588: LitI4 -1
  loc_B9758D: LitI4 1
  loc_B97592: LitStr "."
  loc_B97595: LitStr ","
  loc_B97598: FLdFPR8 var_220
  loc_B9759B: LitDate 0.4
  loc_B975A4: AddR8
  loc_B975A5: CStrR8
  loc_B975A7: FStStrNoPop var_180
  loc_B975AA: ImpAdCallI2 Replace(, , , , , )
  loc_B975AF: FStStrNoPop var_184
  loc_B975B2: ILdI2 arg_C
  loc_B975B5: CI4UI1
  loc_B975B6: ImpAdLdI4 MemVar_C0F160
  loc_B975B9: Ary1LdPr
  loc_B975BA: MemStStrCopy
  loc_B975BE: FFreeStr var_F8 = "": var_180 = ""
  loc_B975C7: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = ""
  loc_B975D4: LitI4 1
  loc_B975D9: ILdI2 arg_C
  loc_B975DC: CI4UI1
  loc_B975DD: ImpAdLdI4 MemVar_C0F160
  loc_B975E0: Ary1LdPr
  loc_B975E1: MemLdStr global_96
  loc_B975E4: LitStr "."
  loc_B975E7: LitI4 0
  loc_B975EC: FnInStr4
  loc_B975EE: LitI4 0
  loc_B975F3: EqI4
  loc_B975F4: BranchF loc_B97618
  loc_B975F7: ILdI2 arg_C
  loc_B975FA: CI4UI1
  loc_B975FB: ImpAdLdI4 MemVar_C0F160
  loc_B975FE: Ary1LdPr
  loc_B975FF: MemLdStr global_96
  loc_B97602: LitStr ".0"
  loc_B97605: ConcatStr
  loc_B97606: FStStrNoPop var_F8
  loc_B97609: ILdI2 arg_C
  loc_B9760C: CI4UI1
  loc_B9760D: ImpAdLdI4 MemVar_C0F160
  loc_B97610: Ary1LdPr
  loc_B97611: MemStStrCopy
  loc_B97615: FFree1Str var_F8
  loc_B97618: Branch loc_B976A0
  loc_B9761B: LitI4 &HD
  loc_B97620: FLdRfVar var_108
  loc_B97623: ImpAdCallFPR4  = Chr()
  loc_B97628: FLdI2 arg_14
  loc_B9762B: LitI2_Byte 1
  loc_B9762D: AddI2
  loc_B9762E: CVarI2 var_B4
  loc_B97631: PopAdLdVar
  loc_B97632: LitI4 0
  loc_B97637: LitI4 -1
  loc_B9763C: FLdRfVar var_108
  loc_B9763F: ILdI4 arg_28
  loc_B97642: FLdRfVar var_118
  loc_B97645: ImpAdCallFPR4  = Split(, , , )
  loc_B9764A: FLdRfVar var_118
  loc_B9764D: VarIndexLdRfVarLock
  loc_B97655: FStR4 var_A4
  loc_B97658: LitVarI2 var_16C, 1
  loc_B9765D: FLdI2 arg_10
  loc_B97660: LitI2_Byte 1
  loc_B97662: AddI2
  loc_B97663: CI4UI1
  loc_B97664: ILdRf var_A4
  loc_B97667: FLdRfVar var_17C
  loc_B9766A: ImpAdCallFPR4  = Mid(, , )
  loc_B9766F: AryUnlock
  loc_B97672: FLdRfVar var_17C
  loc_B97675: LitVarStr var_1C8, ".0"
  loc_B9767A: ConcatVar var_1D8
  loc_B9767E: CStrVarTmp
  loc_B9767F: FStStrNoPop var_F8
  loc_B97682: ILdI2 arg_C
  loc_B97685: CI4UI1
  loc_B97686: ImpAdLdI4 MemVar_C0F160
  loc_B97689: Ary1LdPr
  loc_B9768A: MemStStrCopy
  loc_B9768E: FFree1Str var_F8
  loc_B97691: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = "": var_17C = ""
  loc_B976A0: LitI4 0
  loc_B976A5: ILdI2 arg_C
  loc_B976A8: CI4UI1
  loc_B976A9: ImpAdLdI4 MemVar_C0F160
  loc_B976AC: Ary1LdPr
  loc_B976AD: MemStI4 global_8
  loc_B976B0: LitStr vbNullString
  loc_B976B3: ILdI2 arg_C
  loc_B976B6: CI4UI1
  loc_B976B7: ImpAdLdI4 MemVar_C0F160
  loc_B976BA: Ary1LdPr
  loc_B976BB: MemStStrCopy
  loc_B976BF: LitI2_Byte 0
  loc_B976C1: ILdI2 arg_C
  loc_B976C4: CI4UI1
  loc_B976C5: ImpAdLdI4 MemVar_C0F160
  loc_B976C8: Ary1LdPr
  loc_B976C9: MemStI2 global_104
  loc_B976CC: LitI2_Byte 0
  loc_B976CE: ILdI2 arg_C
  loc_B976D1: CI4UI1
  loc_B976D2: ImpAdLdI4 MemVar_C0F160
  loc_B976D5: Ary1LdPr
  loc_B976D6: MemStI2 global_106
  loc_B976D9: ExitProc
  loc_B976DA: FLdI2 arg_14
  loc_B976DD: FLdI2 arg_1C
  loc_B976E0: GtI2
  loc_B976E1: BranchF loc_B97C38
  loc_B976E4: LitVarI2 var_D4, 1
  loc_B976E9: FLdRfVar var_A0
  loc_B976EC: FLdRfVar var_A4
  loc_B976EF: ImpAdLdRf MemVar_C0F018
  loc_B976F2: NewIfNullPr frmMain
  loc_B976F5: from_stack_1v = frmMain.SockIGet()
  loc_B976FA: ILdRf var_A4
  loc_B976FD: CVarI4
  loc_B97701: ForVar var_3C0
  loc_B97707: FLdRfVar var_A0
  loc_B9770A: CI4Var
  loc_B9770C: ImpAdLdI4 MemVar_C0F100
  loc_B9770F: Ary1LdPr
  loc_B97710: MemLdFPR8 global_224
  loc_B97713: FLdI2 arg_20
  loc_B97716: CR8I2
  loc_B97717: EqR4
  loc_B97718: BranchF loc_B97745
  loc_B9771B: FLdRfVar var_A0
  loc_B9771E: CI4Var
  loc_B97720: ImpAdLdI4 MemVar_C0F100
  loc_B97723: Ary1LdPr
  loc_B97724: MemLdFPR8 global_232
  loc_B97727: FLdI2 arg_10
  loc_B9772A: CR8I2
  loc_B9772B: EqR4
  loc_B9772C: FLdRfVar var_A0
  loc_B9772F: CI4Var
  loc_B97731: ImpAdLdI4 MemVar_C0F100
  loc_B97734: Ary1LdPr
  loc_B97735: MemLdFPR8 global_240
  loc_B97738: FLdI2 arg_14
  loc_B9773B: LitI2_Byte 1
  loc_B9773D: SubI2
  loc_B9773E: CR8I2
  loc_B9773F: EqR4
  loc_B97740: AndI4
  loc_B97741: BranchF loc_B97745
  loc_B97744: ExitProc
  loc_B97745: FLdRfVar var_A0
  loc_B97748: NextStepVar var_3C0
  loc_B9774E: FLdRfVar var_F8
  loc_B97751: ImpAdLdRf MemVar_C0F018
  loc_B97754: NewIfNullPr frmMain
  loc_B97757: from_stack_1v = frmMain.HpetsGet()
  loc_B9775C: LitI4 0
  loc_B97761: LitI4 -1
  loc_B97766: LitVarStr var_B4, ";"
  loc_B9776B: FStVarCopyObj var_108
  loc_B9776E: FLdRfVar var_108
  loc_B97771: ILdRf var_F8
  loc_B97774: FLdRfVar var_118
  loc_B97777: ImpAdCallFPR4  = Split(, , , )
  loc_B9777C: FLdRfVar var_118
  loc_B9777F: FStVar var_128
  loc_B97783: FFree1Str var_F8
  loc_B97786: FFree1Var var_108 = ""
  loc_B97789: LitVarI2 var_D4, 0
  loc_B9778E: FLdRfVar var_A0
  loc_B97791: FLdRfVar var_128
  loc_B97794: CRefVarAry
  loc_B97796: PopAdLd4
  loc_B97797: LitI2_Byte 1
  loc_B97799: FnUBound
  loc_B9779B: CVarI4
  loc_B9779F: ForVar var_3E0
  loc_B977A5: FLdRfVar var_A0
  loc_B977A8: CDargRef
  loc_B977AC: FLdRfVar var_128
  loc_B977AF: VarIndexLdVar
  loc_B977B5: LitVarStr var_C4, vbNullString
  loc_B977BA: HardType
  loc_B977BB: NeVarBool
  loc_B977BD: FFree1Var var_108 = ""
  loc_B977C0: BranchF loc_B97832
  loc_B977C3: FLdRfVar var_A0
  loc_B977C6: CDargRef
  loc_B977CA: FLdRfVar var_128
  loc_B977CD: VarIndexLdVar
  loc_B977D3: CI4Var
  loc_B977D5: ImpAdLdI4 MemVar_C0F160
  loc_B977D8: Ary1LdPr
  loc_B977D9: MemLdFPR8 global_16
  loc_B977DC: FLdI2 arg_20
  loc_B977DF: CR8I2
  loc_B977E0: EqR4
  loc_B977E1: FFree1Var var_108 = ""
  loc_B977E4: BranchF loc_B97832
  loc_B977E7: FLdRfVar var_A0
  loc_B977EA: CDargRef
  loc_B977EE: FLdRfVar var_128
  loc_B977F1: VarIndexLdVar
  loc_B977F7: CI4Var
  loc_B977F9: ImpAdLdI4 MemVar_C0F160
  loc_B977FC: Ary1LdPr
  loc_B977FD: MemLdFPR8 global_44
  loc_B97800: FLdI2 arg_10
  loc_B97803: CR8I2
  loc_B97804: EqR4
  loc_B97805: FLdRfVar var_A0
  loc_B97808: CDargRef
  loc_B9780C: FLdRfVar var_128
  loc_B9780F: VarIndexLdVar
  loc_B97815: CI4Var
  loc_B97817: ImpAdLdI4 MemVar_C0F160
  loc_B9781A: Ary1LdPr
  loc_B9781B: MemLdFPR8 global_52
  loc_B9781E: FLdI2 arg_14
  loc_B97821: LitI2_Byte 1
  loc_B97823: SubI2
  loc_B97824: CR8I2
  loc_B97825: EqR4
  loc_B97826: AndI4
  loc_B97827: FFreeVar var_108 = ""
  loc_B9782E: BranchF loc_B97832
  loc_B97831: ExitProc
  loc_B97832: FLdRfVar var_A0
  loc_B97835: NextStepVar var_3E0
  loc_B9783B: LitI4 &HD
  loc_B97840: FLdRfVar var_108
  loc_B97843: ImpAdCallFPR4  = Chr()
  loc_B97848: FLdI2 arg_14
  loc_B9784B: LitI2_Byte 1
  loc_B9784D: SubI2
  loc_B9784E: CVarI2 var_B4
  loc_B97851: PopAdLdVar
  loc_B97852: LitI4 0
  loc_B97857: LitI4 -1
  loc_B9785C: FLdRfVar var_108
  loc_B9785F: ILdI4 arg_24
  loc_B97862: FLdRfVar var_118
  loc_B97865: ImpAdCallFPR4  = Split(, , , )
  loc_B9786A: FLdRfVar var_118
  loc_B9786D: VarIndexLdRfVarLock
  loc_B97875: FStR4 var_A4
  loc_B97878: LitVarI2 var_16C, 1
  loc_B9787D: FLdI2 arg_10
  loc_B97880: LitI2_Byte 1
  loc_B97882: AddI2
  loc_B97883: CI4UI1
  loc_B97884: ILdRf var_A4
  loc_B97887: FLdRfVar var_17C
  loc_B9788A: ImpAdCallFPR4  = Mid(, , )
  loc_B9788F: AryUnlock
  loc_B97892: FLdRfVar var_17C
  loc_B97895: CStrVarTmp
  loc_B97896: FStStr var_90
  loc_B97899: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = ""
  loc_B978A6: ILdRf var_90
  loc_B978A9: LitStr "O"
  loc_B978AC: EqStr
  loc_B978AE: ILdRf var_90
  loc_B978B1: LitStr "D"
  loc_B978B4: EqStr
  loc_B978B6: OrI4
  loc_B978B7: ILdRf var_90
  loc_B978BA: LitStr "R"
  loc_B978BD: EqStr
  loc_B978BF: OrI4
  loc_B978C0: ILdRf var_90
  loc_B978C3: LitStr "S"
  loc_B978C6: EqStr
  loc_B978C8: ILdRf var_90
  loc_B978CB: LitStr "L"
  loc_B978CE: EqStr
  loc_B978D0: OrI4
  loc_B978D1: FLdI2 arg_14
  loc_B978D4: LitI2_Byte 1
  loc_B978D6: SubI2
  loc_B978D7: FLdI2 arg_1C
  loc_B978DA: EqI2
  loc_B978DB: AndI4
  loc_B978DC: FLdI2 arg_10
  loc_B978DF: FLdI2 arg_18
  loc_B978E2: EqI2
  loc_B978E3: AndI4
  loc_B978E4: OrI4
  loc_B978E5: BranchF loc_B97C38
  loc_B978E8: ILdRf var_90
  loc_B978EB: LitStr "R"
  loc_B978EE: EqStr
  loc_B978F0: BranchF loc_B97A3A
  loc_B978F3: LitI4 0
  loc_B978F8: FStStrCopy var_194
  loc_B978FB: FLdRfVar var_194
  loc_B978FE: ImpAdLdI4 MemVar_C0F044
  loc_B97901: LitStr "privaterooms\"
  loc_B97904: ConcatStr
  loc_B97905: FStStrNoPop var_188
  loc_B97908: ILdI2 arg_C
  loc_B9790B: CI4UI1
  loc_B9790C: ImpAdLdI4 MemVar_C0F160
  loc_B9790F: Ary1LdPr
  loc_B97910: MemLdFPR8 global_16
  loc_B97913: CStrR8
  loc_B97915: FStStrNoPop var_18C
  loc_B97918: ConcatStr
  loc_B97919: FStStrNoPop var_190
  loc_B9791C: LitStr "\rotation.txt"
  loc_B9791F: ConcatStr
  loc_B97920: CVarStr var_118
  loc_B97923: FLdI2 arg_10
  loc_B97926: CStrUI1
  loc_B97928: FStStrNoPop var_F8
  loc_B9792B: LitStr ","
  loc_B9792E: ConcatStr
  loc_B9792F: FStStrNoPop var_180
  loc_B97932: FLdI2 arg_14
  loc_B97935: LitI2_Byte 1
  loc_B97937: SubI2
  loc_B97938: CStrUI1
  loc_B9793A: FStStrNoPop var_184
  loc_B9793D: ConcatStr
  loc_B9793E: CVarStr var_108
  loc_B97941: LitVarStr var_B4, "furnies"
  loc_B97946: PopAdLdVar
  loc_B97947: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B9794C: CVarStr var_158
  loc_B9794F: FStVar var_1A4
  loc_B97953: FFreeStr var_F8 = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_B97964: FFreeVar var_108 = ""
  loc_B9796B: FLdRfVar var_1A4
  loc_B9796E: LitVarStr var_B4, vbNullString
  loc_B97973: HardType
  loc_B97974: NeVarBool
  loc_B97976: BranchF loc_B97A3A
  loc_B97979: FLdRfVar var_180
  loc_B9797C: FLdRfVar var_1A8
  loc_B9797F: LitI4 0
  loc_B97984: LitI2_Byte 0
  loc_B97986: LitI4 1
  loc_B9798B: ImpAdLdI4 MemVar_C0F044
  loc_B9798E: LitStr "furni\"
  loc_B97991: ConcatStr
  loc_B97992: CVarStr var_108
  loc_B97995: FLdRfVar var_1A4
  loc_B97998: ConcatVar var_118
  loc_B9799C: LitVarStr var_B4, "\type.txt"
  loc_B979A1: ConcatVar var_158
  loc_B979A5: CStrVarVal var_F8
  loc_B979A9: ImpAdLdRf MemVar_C0F040
  loc_B979AC: NewIfNullPr IFileSystem3
  loc_B979AF: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B979B4: FLdPr var_1A8
  loc_B979B7:  = Me.ReadAll
  loc_B979BC: FLdZeroAd var_180
  loc_B979BF: CVarStr var_16C
  loc_B979C2: FStVar var_1B8
  loc_B979C6: FFree1Str var_F8
  loc_B979C9: FFree1Ad var_1A8
  loc_B979CC: FFreeVar var_108 = "": var_118 = ""
  loc_B979D5: FLdRfVar var_1B8
  loc_B979D8: LitVarStr var_B4, "rug"
  loc_B979DD: HardType
  loc_B979DE: EqVar var_108
  loc_B979E2: NotVar var_118
  loc_B979E6: FLdRfVar var_1B8
  loc_B979E9: LitVarStr var_C4, "sit"
  loc_B979EE: HardType
  loc_B979EF: EqVar var_158
  loc_B979F3: FLdRfVar var_1B8
  loc_B979F6: LitVarStr var_D4, "bed"
  loc_B979FB: HardType
  loc_B979FC: EqVar var_16C
  loc_B97A00: OrVar var_17C
  loc_B97A04: FLdI2 arg_14
  loc_B97A07: LitI2_Byte 1
  loc_B97A09: SubI2
  loc_B97A0A: FLdI2 arg_1C
  loc_B97A0D: EqI2
  loc_B97A0E: CVarBoolI2 var_1C8
  loc_B97A12: AndVar var_1D8
  loc_B97A16: FLdI2 arg_10
  loc_B97A19: FLdI2 arg_18
  loc_B97A1C: EqI2
  loc_B97A1D: CVarBoolI2 var_1E8
  loc_B97A21: AndVar var_1F8
  loc_B97A25: NotVar var_208
  loc_B97A29: AndVar var_218
  loc_B97A2D: CBoolVarNull
  loc_B97A2F: FFreeVar var_1C8 = ""
  loc_B97A36: BranchF loc_B97A3A
  loc_B97A39: ExitProc
  loc_B97A3A: FLdI2 arg_10
  loc_B97A3D: CStrUI1
  loc_B97A3F: FStStrNoPop var_F8
  loc_B97A42: LitStr ","
  loc_B97A45: ConcatStr
  loc_B97A46: FStStrNoPop var_180
  loc_B97A49: FLdI2 arg_14
  loc_B97A4C: LitI2_Byte 1
  loc_B97A4E: SubI2
  loc_B97A4F: CStrUI1
  loc_B97A51: FStStrNoPop var_184
  loc_B97A54: ConcatStr
  loc_B97A55: FStStr var_88
  loc_B97A58: FFreeStr var_F8 = "": var_180 = ""
  loc_B97A61: LitStr "0,0"
  loc_B97A64: ILdI2 arg_C
  loc_B97A67: CI4UI1
  loc_B97A68: ImpAdLdI4 MemVar_C0F160
  loc_B97A6B: Ary1LdPr
  loc_B97A6C: MemStStrCopy
  loc_B97A70: ILdRf var_90
  loc_B97A73: LitStr "R"
  loc_B97A76: EqStr
  loc_B97A78: BranchF loc_B97B79
  loc_B97A7B: LitI4 &HD
  loc_B97A80: FLdRfVar var_108
  loc_B97A83: ImpAdCallFPR4  = Chr()
  loc_B97A88: FLdI2 arg_14
  loc_B97A8B: LitI2_Byte 1
  loc_B97A8D: SubI2
  loc_B97A8E: CVarI2 var_B4
  loc_B97A91: PopAdLdVar
  loc_B97A92: LitI4 0
  loc_B97A97: LitI4 -1
  loc_B97A9C: FLdRfVar var_108
  loc_B97A9F: ILdI4 arg_28
  loc_B97AA2: FLdRfVar var_118
  loc_B97AA5: ImpAdCallFPR4  = Split(, , , )
  loc_B97AAA: FLdRfVar var_118
  loc_B97AAD: VarIndexLdRfVarLock
  loc_B97AB5: FStR4 var_A4
  loc_B97AB8: LitVarI2 var_16C, 1
  loc_B97ABD: FLdI2 arg_10
  loc_B97AC0: LitI2_Byte 1
  loc_B97AC2: AddI2
  loc_B97AC3: CI4UI1
  loc_B97AC4: ILdRf var_A4
  loc_B97AC7: FLdRfVar var_17C
  loc_B97ACA: ImpAdCallFPR4  = Mid(, , )
  loc_B97ACF: AryUnlock
  loc_B97AD2: FLdRfVar var_17C
  loc_B97AD5: CStrVarVal var_F8
  loc_B97AD9: ImpAdCallFPR4 push push Val()
  loc_B97ADE: FStFPR8 var_220
  loc_B97AE1: LitI4 0
  loc_B97AE6: LitI4 -1
  loc_B97AEB: LitI4 1
  loc_B97AF0: LitStr "."
  loc_B97AF3: LitStr ","
  loc_B97AF6: FLdFPR8 var_220
  loc_B97AF9: LitDate 0.4
  loc_B97B02: AddR8
  loc_B97B03: CStrR8
  loc_B97B05: FStStrNoPop var_180
  loc_B97B08: ImpAdCallI2 Replace(, , , , , )
  loc_B97B0D: FStStrNoPop var_184
  loc_B97B10: ILdI2 arg_C
  loc_B97B13: CI4UI1
  loc_B97B14: ImpAdLdI4 MemVar_C0F160
  loc_B97B17: Ary1LdPr
  loc_B97B18: MemStStrCopy
  loc_B97B1C: FFreeStr var_F8 = "": var_180 = ""
  loc_B97B25: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = ""
  loc_B97B32: LitI4 1
  loc_B97B37: ILdI2 arg_C
  loc_B97B3A: CI4UI1
  loc_B97B3B: ImpAdLdI4 MemVar_C0F160
  loc_B97B3E: Ary1LdPr
  loc_B97B3F: MemLdStr global_96
  loc_B97B42: LitStr "."
  loc_B97B45: LitI4 0
  loc_B97B4A: FnInStr4
  loc_B97B4C: LitI4 0
  loc_B97B51: EqI4
  loc_B97B52: BranchF loc_B97B76
  loc_B97B55: ILdI2 arg_C
  loc_B97B58: CI4UI1
  loc_B97B59: ImpAdLdI4 MemVar_C0F160
  loc_B97B5C: Ary1LdPr
  loc_B97B5D: MemLdStr global_96
  loc_B97B60: LitStr ".0"
  loc_B97B63: ConcatStr
  loc_B97B64: FStStrNoPop var_F8
  loc_B97B67: ILdI2 arg_C
  loc_B97B6A: CI4UI1
  loc_B97B6B: ImpAdLdI4 MemVar_C0F160
  loc_B97B6E: Ary1LdPr
  loc_B97B6F: MemStStrCopy
  loc_B97B73: FFree1Str var_F8
  loc_B97B76: Branch loc_B97BFE
  loc_B97B79: LitI4 &HD
  loc_B97B7E: FLdRfVar var_108
  loc_B97B81: ImpAdCallFPR4  = Chr()
  loc_B97B86: FLdI2 arg_14
  loc_B97B89: LitI2_Byte 1
  loc_B97B8B: SubI2
  loc_B97B8C: CVarI2 var_B4
  loc_B97B8F: PopAdLdVar
  loc_B97B90: LitI4 0
  loc_B97B95: LitI4 -1
  loc_B97B9A: FLdRfVar var_108
  loc_B97B9D: ILdI4 arg_28
  loc_B97BA0: FLdRfVar var_118
  loc_B97BA3: ImpAdCallFPR4  = Split(, , , )
  loc_B97BA8: FLdRfVar var_118
  loc_B97BAB: VarIndexLdRfVarLock
  loc_B97BB3: FStR4 var_A4
  loc_B97BB6: LitVarI2 var_16C, 1
  loc_B97BBB: FLdI2 arg_10
  loc_B97BBE: LitI2_Byte 1
  loc_B97BC0: AddI2
  loc_B97BC1: CI4UI1
  loc_B97BC2: ILdRf var_A4
  loc_B97BC5: FLdRfVar var_17C
  loc_B97BC8: ImpAdCallFPR4  = Mid(, , )
  loc_B97BCD: AryUnlock
  loc_B97BD0: FLdRfVar var_17C
  loc_B97BD3: LitVarStr var_1C8, ".0"
  loc_B97BD8: ConcatVar var_1D8
  loc_B97BDC: CStrVarTmp
  loc_B97BDD: FStStrNoPop var_F8
  loc_B97BE0: ILdI2 arg_C
  loc_B97BE3: CI4UI1
  loc_B97BE4: ImpAdLdI4 MemVar_C0F160
  loc_B97BE7: Ary1LdPr
  loc_B97BE8: MemStStrCopy
  loc_B97BEC: FFree1Str var_F8
  loc_B97BEF: FFreeVar var_108 = "": var_118 = "": var_158 = "": var_16C = "": var_17C = ""
  loc_B97BFE: LitI4 0
  loc_B97C03: ILdI2 arg_C
  loc_B97C06: CI4UI1
  loc_B97C07: ImpAdLdI4 MemVar_C0F160
  loc_B97C0A: Ary1LdPr
  loc_B97C0B: MemStI4 global_8
  loc_B97C0E: LitStr vbNullString
  loc_B97C11: ILdI2 arg_C
  loc_B97C14: CI4UI1
  loc_B97C15: ImpAdLdI4 MemVar_C0F160
  loc_B97C18: Ary1LdPr
  loc_B97C19: MemStStrCopy
  loc_B97C1D: LitI2_Byte 0
  loc_B97C1F: ILdI2 arg_C
  loc_B97C22: CI4UI1
  loc_B97C23: ImpAdLdI4 MemVar_C0F160
  loc_B97C26: Ary1LdPr
  loc_B97C27: MemStI2 global_104
  loc_B97C2A: LitI2_Byte 0
  loc_B97C2C: ILdI2 arg_C
  loc_B97C2F: CI4UI1
  loc_B97C30: ImpAdLdI4 MemVar_C0F160
  loc_B97C33: Ary1LdPr
  loc_B97C34: MemStI2 global_106
  loc_B97C37: ExitProc
  loc_B97C38: ExitProc
End Function

Private Function Proc_6_2_B7450C(arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) 'B7450C
  'Data Table: 53AAA8
  loc_B72EC8: ILdRf arg_24
  loc_B72ECB: FStStrCopy var_98
  loc_B72ECE: LitVarStr var_B0, "NoPath"
  loc_B72ED3: FStVarCopy
  loc_B72ED7: OnErrorGoto loc_B74506
  loc_B72EDA: LitVarI2 var_B0, 0
  loc_B72EDF: FStVar var_C0
  loc_B72EE3: LitVarI2 var_F4, 1
  loc_B72EE8: FLdRfVar var_D0
  loc_B72EEB: FLdRfVar var_D4
  loc_B72EEE: ImpAdLdRf MemVar_C0F018
  loc_B72EF1: NewIfNullPr frmMain
  loc_B72EF4: from_stack_1v = frmMain.BotIGet()
  loc_B72EF9: ILdRf var_D4
  loc_B72EFC: CVarI4
  loc_B72F00: ForVar var_114
  loc_B72F06: FLdRfVar var_D0
  loc_B72F09: CI4Var
  loc_B72F0B: ImpAdLdI4 MemVar_C0F104
  loc_B72F0E: Ary1LdPr
  loc_B72F0F: MemLdI2 global_12
  loc_B72F12: ILdI2 arg_10
  loc_B72F15: CI4UI1
  loc_B72F16: ImpAdLdI4 MemVar_C0F100
  loc_B72F19: Ary1LdPr
  loc_B72F1A: MemLdI2 global_4
  loc_B72F1D: EqI2
  loc_B72F1E: BranchF loc_B72F2B
  loc_B72F21: FLdRfVar var_D0
  loc_B72F24: FStVarCopy
  loc_B72F28: Branch loc_B72F34
  loc_B72F2B: FLdRfVar var_D0
  loc_B72F2E: NextStepVar var_114
  loc_B72F34: FLdI2 arg_14
  loc_B72F37: FLdI2 arg_1C
  loc_B72F3A: GtI2
  loc_B72F3B: FLdI2 arg_18
  loc_B72F3E: FLdI2 arg_20
  loc_B72F41: GtI2
  loc_B72F42: AndI4
  loc_B72F43: BranchF loc_B731F5
  loc_B72F46: FLdRfVar var_C0
  loc_B72F49: CI4Var
  loc_B72F4B: ImpAdLdI4 MemVar_C0F104
  loc_B72F4E: Ary1LdPr
  loc_B72F4F: MemLdFPR8 global_28
  loc_B72F52: FLdI2 arg_14
  loc_B72F55: LitI2_Byte 1
  loc_B72F57: SubI2
  loc_B72F58: CR8I2
  loc_B72F59: EqR4
  loc_B72F5A: FLdRfVar var_C0
  loc_B72F5D: CI4Var
  loc_B72F5F: ImpAdLdI4 MemVar_C0F104
  loc_B72F62: Ary1LdPr
  loc_B72F63: MemLdFPR8 global_36
  loc_B72F66: FLdI2 arg_18
  loc_B72F69: LitI2_Byte 1
  loc_B72F6B: SubI2
  loc_B72F6C: CR8I2
  loc_B72F6D: EqR4
  loc_B72F6E: AndI4
  loc_B72F6F: BranchF loc_B72F76
  loc_B72F72: ExitProcCb
  loc_B72F76: LitVarI2 var_F4, 1
  loc_B72F7B: FLdRfVar var_D0
  loc_B72F7E: FLdRfVar var_D4
  loc_B72F81: ImpAdLdRf MemVar_C0F018
  loc_B72F84: NewIfNullPr frmMain
  loc_B72F87: from_stack_1v = frmMain.SockIGet()
  loc_B72F8C: ILdRf var_D4
  loc_B72F8F: CVarI4
  loc_B72F93: ForVar var_134
  loc_B72F99: FLdRfVar var_D0
  loc_B72F9C: CI4Var
  loc_B72F9E: ImpAdLdI4 MemVar_C0F100
  loc_B72FA1: Ary1LdPr
  loc_B72FA2: MemLdI2 global_4
  loc_B72FA5: ILdI2 arg_10
  loc_B72FA8: CI4UI1
  loc_B72FA9: ImpAdLdI4 MemVar_C0F100
  loc_B72FAC: Ary1LdPr
  loc_B72FAD: MemLdI2 global_4
  loc_B72FB0: EqI2
  loc_B72FB1: BranchF loc_B72FE4
  loc_B72FB4: FLdRfVar var_D0
  loc_B72FB7: CI4Var
  loc_B72FB9: ImpAdLdI4 MemVar_C0F100
  loc_B72FBC: Ary1LdPr
  loc_B72FBD: MemLdFPR8 global_232
  loc_B72FC0: FLdI2 arg_14
  loc_B72FC3: LitI2_Byte 1
  loc_B72FC5: SubI2
  loc_B72FC6: CR8I2
  loc_B72FC7: EqR4
  loc_B72FC8: FLdRfVar var_D0
  loc_B72FCB: CI4Var
  loc_B72FCD: ImpAdLdI4 MemVar_C0F100
  loc_B72FD0: Ary1LdPr
  loc_B72FD1: MemLdFPR8 global_240
  loc_B72FD4: FLdI2 arg_18
  loc_B72FD7: LitI2_Byte 1
  loc_B72FD9: SubI2
  loc_B72FDA: CR8I2
  loc_B72FDB: EqR4
  loc_B72FDC: AndI4
  loc_B72FDD: BranchF loc_B72FE4
  loc_B72FE0: ExitProcCb
  loc_B72FE4: FLdRfVar var_D0
  loc_B72FE7: NextStepVar var_134
  loc_B72FED: LitI4 &HD
  loc_B72FF2: FLdRfVar var_144
  loc_B72FF5: ImpAdCallFPR4  = Chr()
  loc_B72FFA: FLdI2 arg_18
  loc_B72FFD: LitI2_Byte 1
  loc_B72FFF: SubI2
  loc_B73000: CVarI2 var_B0
  loc_B73003: PopAdLdVar
  loc_B73004: LitI4 0
  loc_B73009: LitI4 -1
  loc_B7300E: FLdRfVar var_144
  loc_B73011: ILdRf var_98
  loc_B73014: FLdRfVar var_154
  loc_B73017: ImpAdCallFPR4  = Split(, , , )
  loc_B7301C: FLdRfVar var_154
  loc_B7301F: VarIndexLdRfVarLock
  loc_B73027: FStR4 var_D4
  loc_B7302A: LitVarI2 var_178, 1
  loc_B7302F: FLdI2 arg_14
  loc_B73032: CI4UI1
  loc_B73033: ILdRf var_D4
  loc_B73036: FLdRfVar var_188
  loc_B73039: ImpAdCallFPR4  = Mid(, , )
  loc_B7303E: AryUnlock
  loc_B73041: FLdRfVar var_188
  loc_B73044: CStrVarTmp
  loc_B73045: FStStr var_A0
  loc_B73048: FFreeVar var_144 = "": var_154 = "": var_164 = "": var_178 = ""
  loc_B73055: ILdI2 arg_10
  loc_B73058: CI4UI1
  loc_B73059: ImpAdLdI4 MemVar_C0F100
  loc_B7305C: Ary1LdPr
  loc_B7305D: MemLdI2 global_4
  loc_B73060: CI4UI1
  loc_B73061: FLdI2 arg_14
  loc_B73064: LitI2_Byte 1
  loc_B73066: SubI2
  loc_B73067: CI4UI1
  loc_B73068: FLdI2 arg_18
  loc_B7306B: LitI2_Byte 1
  loc_B7306D: SubI2
  loc_B7306E: CI4UI1
  loc_B7306F: ImpAdLdRf MemVar_C0F10C
  loc_B73072: AryLdPr
  loc_B73075: MemLdStr global_0
  loc_B73078: CVarStr var_B0
  loc_B7307B: FStVarCopy
  loc_B7307F: ILdRf var_A0
  loc_B73082: ImpAdCallFPR4 push push Val()
  loc_B73087: FStFPR8 var_1C4
  loc_B7308A: LitVarI2 var_E4, 0
  loc_B7308F: PopAdLdVar
  loc_B73090: LitI4 0
  loc_B73095: LitI4 -1
  loc_B7309A: LitVarStr var_B0, "."
  loc_B7309F: FStVarCopyObj var_144
  loc_B730A2: FLdRfVar var_144
  loc_B730A5: ILdI2 arg_10
  loc_B730A8: CI4UI1
  loc_B730A9: ImpAdLdI4 MemVar_C0F100
  loc_B730AC: Ary1LdPr
  loc_B730AD: MemLdStr global_296
  loc_B730B0: FLdRfVar var_154
  loc_B730B3: ImpAdCallFPR4  = Split(, , , )
  loc_B730B8: FLdRfVar var_154
  loc_B730BB: VarIndexLdVar
  loc_B730C1: CStrVarVal var_19C
  loc_B730C5: ImpAdCallFPR4 push push Val()
  loc_B730CA: FLdFPR8 var_1C4
  loc_B730CD: SubR4
  loc_B730CE: CVarR8
  loc_B730D2: FStVar var_1AC
  loc_B730D6: FFree1Str var_19C
  loc_B730D9: FFreeVar var_144 = "": var_154 = ""
  loc_B730E2: FLdRfVar var_1AC
  loc_B730E5: LitVarI2 var_B0, 1
  loc_B730EA: HardType
  loc_B730EB: GtVar var_144
  loc_B730EF: FLdRfVar var_1AC
  loc_B730F2: LitVarI2 var_E4, -1
  loc_B730F7: HardType
  loc_B730F8: LtVar var_154
  loc_B730FC: OrVar var_164
  loc_B73100: CBoolVarNull
  loc_B73102: BranchF loc_B73109
  loc_B73105: ExitProcCb
  loc_B73109: FLdRfVar var_198
  loc_B7310C: LitVarStr var_B0, vbNullString
  loc_B73111: HardType
  loc_B73112: EqVar var_144
  loc_B73116: FLdRfVar var_198
  loc_B73119: LitVarStr var_E4, "S"
  loc_B7311E: HardType
  loc_B7311F: EqVar var_154
  loc_B73123: FLdI2 arg_18
  loc_B73126: LitI2_Byte 1
  loc_B73128: SubI2
  loc_B73129: FLdI2 arg_20
  loc_B7312C: EqI2
  loc_B7312D: CVarBoolI2 var_F4
  loc_B73131: AndVar var_164
  loc_B73135: FLdI2 arg_14
  loc_B73138: LitI2_Byte 1
  loc_B7313A: SubI2
  loc_B7313B: FLdI2 arg_1C
  loc_B7313E: EqI2
  loc_B7313F: CVarBoolI2 var_1BC
  loc_B73143: AndVar var_178
  loc_B73147: OrVar var_188
  loc_B7314B: FLdRfVar var_A0
  loc_B7314E: CVarRef
  loc_B73153: ImpAdCallI2 IsNumeric()
  loc_B73158: LitI2_Byte &HFF
  loc_B7315A: EqI2
  loc_B7315B: CVarBoolI2 var_1E4
  loc_B7315F: AndVar var_1F4
  loc_B73163: CBoolVarNull
  loc_B73165: FFreeVar var_F4 = "": var_1BC = ""
  loc_B7316E: BranchF loc_B731F5
  loc_B73171: FLdI2 arg_14
  loc_B73174: LitI2_Byte 1
  loc_B73176: SubI2
  loc_B73177: CStrUI1
  loc_B73179: FStStrNoPop var_19C
  loc_B7317C: LitStr ","
  loc_B7317F: ConcatStr
  loc_B73180: FStStrNoPop var_1F8
  loc_B73183: FLdI2 arg_18
  loc_B73186: LitI2_Byte 1
  loc_B73188: SubI2
  loc_B73189: CStrUI1
  loc_B7318B: FStStrNoPop var_1FC
  loc_B7318E: ConcatStr
  loc_B7318F: CVarStr var_144
  loc_B73192: FStVar var_94
  loc_B73196: FFreeStr var_19C = "": var_1F8 = ""
  loc_B7319F: LitStr "7,7"
  loc_B731A2: ILdI2 arg_10
  loc_B731A5: CI4UI1
  loc_B731A6: ImpAdLdI4 MemVar_C0F100
  loc_B731A9: Ary1LdPr
  loc_B731AA: MemStStrCopy
  loc_B731AE: ILdRf var_A0
  loc_B731B1: LitStr ".0"
  loc_B731B4: ConcatStr
  loc_B731B5: FStStrNoPop var_19C
  loc_B731B8: ILdI2 arg_10
  loc_B731BB: CI4UI1
  loc_B731BC: ImpAdLdI4 MemVar_C0F100
  loc_B731BF: Ary1LdPr
  loc_B731C0: MemStStrCopy
  loc_B731C4: FFree1Str var_19C
  loc_B731C7: LitI2_Byte 0
  loc_B731C9: ILdI2 arg_10
  loc_B731CC: CI4UI1
  loc_B731CD: ImpAdLdI4 MemVar_C0F100
  loc_B731D0: Ary1LdPr
  loc_B731D1: MemStI2 global_308
  loc_B731D4: LitI4 0
  loc_B731D9: ILdI2 arg_10
  loc_B731DC: CI4UI1
  loc_B731DD: ImpAdLdI4 MemVar_C0F100
  loc_B731E0: Ary1LdPr
  loc_B731E1: MemStI4 global_332
  loc_B731E4: LitI2_Byte 0
  loc_B731E6: ILdI2 arg_10
  loc_B731E9: CI4UI1
  loc_B731EA: ImpAdLdI4 MemVar_C0F100
  loc_B731ED: Ary1LdPr
  loc_B731EE: MemStI2 global_312
  loc_B731F1: ExitProcCb
  loc_B731F5: FLdI2 arg_14
  loc_B731F8: FLdI2 arg_1C
  loc_B731FB: LtI2
  loc_B731FC: FLdI2 arg_18
  loc_B731FF: FLdI2 arg_20
  loc_B73202: LtI2
  loc_B73203: AndI4
  loc_B73204: BranchF loc_B734B9
  loc_B73207: FLdRfVar var_C0
  loc_B7320A: CI4Var
  loc_B7320C: ImpAdLdI4 MemVar_C0F104
  loc_B7320F: Ary1LdPr
  loc_B73210: MemLdFPR8 global_28
  loc_B73213: FLdI2 arg_14
  loc_B73216: LitI2_Byte 1
  loc_B73218: AddI2
  loc_B73219: CR8I2
  loc_B7321A: EqR4
  loc_B7321B: FLdRfVar var_C0
  loc_B7321E: CI4Var
  loc_B73220: ImpAdLdI4 MemVar_C0F104
  loc_B73223: Ary1LdPr
  loc_B73224: MemLdFPR8 global_36
  loc_B73227: FLdI2 arg_18
  loc_B7322A: LitI2_Byte 1
  loc_B7322C: AddI2
  loc_B7322D: CR8I2
  loc_B7322E: EqR4
  loc_B7322F: AndI4
  loc_B73230: BranchF loc_B73237
  loc_B73233: ExitProcCb
  loc_B73237: LitVarI2 var_F4, 1
  loc_B7323C: FLdRfVar var_D0
  loc_B7323F: FLdRfVar var_D4
  loc_B73242: ImpAdLdRf MemVar_C0F018
  loc_B73245: NewIfNullPr frmMain
  loc_B73248: from_stack_1v = frmMain.SockIGet()
  loc_B7324D: ILdRf var_D4
  loc_B73250: CVarI4
  loc_B73254: ForVar var_21C
  loc_B7325A: FLdRfVar var_D0
  loc_B7325D: CI4Var
  loc_B7325F: ImpAdLdI4 MemVar_C0F100
  loc_B73262: Ary1LdPr
  loc_B73263: MemLdI2 global_4
  loc_B73266: ILdI2 arg_10
  loc_B73269: CI4UI1
  loc_B7326A: ImpAdLdI4 MemVar_C0F100
  loc_B7326D: Ary1LdPr
  loc_B7326E: MemLdI2 global_4
  loc_B73271: EqI2
  loc_B73272: BranchF loc_B732A5
  loc_B73275: FLdRfVar var_D0
  loc_B73278: CI4Var
  loc_B7327A: ImpAdLdI4 MemVar_C0F100
  loc_B7327D: Ary1LdPr
  loc_B7327E: MemLdFPR8 global_232
  loc_B73281: FLdI2 arg_14
  loc_B73284: LitI2_Byte 1
  loc_B73286: AddI2
  loc_B73287: CR8I2
  loc_B73288: EqR4
  loc_B73289: FLdRfVar var_D0
  loc_B7328C: CI4Var
  loc_B7328E: ImpAdLdI4 MemVar_C0F100
  loc_B73291: Ary1LdPr
  loc_B73292: MemLdFPR8 global_240
  loc_B73295: FLdI2 arg_18
  loc_B73298: LitI2_Byte 1
  loc_B7329A: AddI2
  loc_B7329B: CR8I2
  loc_B7329C: EqR4
  loc_B7329D: AndI4
  loc_B7329E: BranchF loc_B732A5
  loc_B732A1: ExitProcCb
  loc_B732A5: FLdRfVar var_D0
  loc_B732A8: NextStepVar var_21C
  loc_B732AE: LitI4 &HD
  loc_B732B3: FLdRfVar var_144
  loc_B732B6: ImpAdCallFPR4  = Chr()
  loc_B732BB: FLdI2 arg_18
  loc_B732BE: LitI2_Byte 1
  loc_B732C0: AddI2
  loc_B732C1: CVarI2 var_B0
  loc_B732C4: PopAdLdVar
  loc_B732C5: LitI4 0
  loc_B732CA: LitI4 -1
  loc_B732CF: FLdRfVar var_144
  loc_B732D2: ILdRf var_98
  loc_B732D5: FLdRfVar var_154
  loc_B732D8: ImpAdCallFPR4  = Split(, , , )
  loc_B732DD: FLdRfVar var_154
  loc_B732E0: VarIndexLdRfVarLock
  loc_B732E8: FStR4 var_D4
  loc_B732EB: LitVarI2 var_178, 1
  loc_B732F0: FLdI2 arg_14
  loc_B732F3: LitI2_Byte 2
  loc_B732F5: AddI2
  loc_B732F6: CI4UI1
  loc_B732F7: ILdRf var_D4
  loc_B732FA: FLdRfVar var_188
  loc_B732FD: ImpAdCallFPR4  = Mid(, , )
  loc_B73302: AryUnlock
  loc_B73305: FLdRfVar var_188
  loc_B73308: CStrVarTmp
  loc_B73309: FStStr var_A0
  loc_B7330C: FFreeVar var_144 = "": var_154 = "": var_164 = "": var_178 = ""
  loc_B73319: ILdI2 arg_10
  loc_B7331C: CI4UI1
  loc_B7331D: ImpAdLdI4 MemVar_C0F100
  loc_B73320: Ary1LdPr
  loc_B73321: MemLdI2 global_4
  loc_B73324: CI4UI1
  loc_B73325: FLdI2 arg_14
  loc_B73328: LitI2_Byte 1
  loc_B7332A: AddI2
  loc_B7332B: CI4UI1
  loc_B7332C: FLdI2 arg_18
  loc_B7332F: LitI2_Byte 1
  loc_B73331: AddI2
  loc_B73332: CI4UI1
  loc_B73333: ImpAdLdRf MemVar_C0F10C
  loc_B73336: AryLdPr
  loc_B73339: MemLdStr global_0
  loc_B7333C: CVarStr var_B0
  loc_B7333F: FStVarCopy
  loc_B73343: ILdRf var_A0
  loc_B73346: ImpAdCallFPR4 push push Val()
  loc_B7334B: FStFPR8 var_1C4
  loc_B7334E: LitVarI2 var_E4, 0
  loc_B73353: PopAdLdVar
  loc_B73354: LitI4 0
  loc_B73359: LitI4 -1
  loc_B7335E: LitVarStr var_B0, "."
  loc_B73363: FStVarCopyObj var_144
  loc_B73366: FLdRfVar var_144
  loc_B73369: ILdI2 arg_10
  loc_B7336C: CI4UI1
  loc_B7336D: ImpAdLdI4 MemVar_C0F100
  loc_B73370: Ary1LdPr
  loc_B73371: MemLdStr global_296
  loc_B73374: FLdRfVar var_154
  loc_B73377: ImpAdCallFPR4  = Split(, , , )
  loc_B7337C: FLdRfVar var_154
  loc_B7337F: VarIndexLdVar
  loc_B73385: CStrVarVal var_19C
  loc_B73389: ImpAdCallFPR4 push push Val()
  loc_B7338E: FLdFPR8 var_1C4
  loc_B73391: SubR4
  loc_B73392: CVarR8
  loc_B73396: FStVar var_1AC
  loc_B7339A: FFree1Str var_19C
  loc_B7339D: FFreeVar var_144 = "": var_154 = ""
  loc_B733A6: FLdRfVar var_1AC
  loc_B733A9: LitVarI2 var_B0, 1
  loc_B733AE: HardType
  loc_B733AF: GtVar var_144
  loc_B733B3: FLdRfVar var_1AC
  loc_B733B6: LitVarI2 var_E4, -1
  loc_B733BB: HardType
  loc_B733BC: LtVar var_154
  loc_B733C0: OrVar var_164
  loc_B733C4: CBoolVarNull
  loc_B733C6: BranchF loc_B733CD
  loc_B733C9: ExitProcCb
  loc_B733CD: FLdRfVar var_198
  loc_B733D0: LitVarStr var_B0, vbNullString
  loc_B733D5: HardType
  loc_B733D6: EqVar var_144
  loc_B733DA: FLdRfVar var_198
  loc_B733DD: LitVarStr var_E4, "S"
  loc_B733E2: HardType
  loc_B733E3: EqVar var_154
  loc_B733E7: FLdI2 arg_18
  loc_B733EA: LitI2_Byte 1
  loc_B733EC: AddI2
  loc_B733ED: FLdI2 arg_20
  loc_B733F0: EqI2
  loc_B733F1: CVarBoolI2 var_F4
  loc_B733F5: AndVar var_164
  loc_B733F9: FLdI2 arg_14
  loc_B733FC: LitI2_Byte 1
  loc_B733FE: AddI2
  loc_B733FF: FLdI2 arg_1C
  loc_B73402: EqI2
  loc_B73403: CVarBoolI2 var_1BC
  loc_B73407: AndVar var_178
  loc_B7340B: OrVar var_188
  loc_B7340F: FLdRfVar var_A0
  loc_B73412: CVarRef
  loc_B73417: ImpAdCallI2 IsNumeric()
  loc_B7341C: LitI2_Byte &HFF
  loc_B7341E: EqI2
  loc_B7341F: CVarBoolI2 var_1E4
  loc_B73423: AndVar var_1F4
  loc_B73427: CBoolVarNull
  loc_B73429: FFreeVar var_F4 = "": var_1BC = ""
  loc_B73432: BranchF loc_B734B9
  loc_B73435: FLdI2 arg_14
  loc_B73438: LitI2_Byte 1
  loc_B7343A: AddI2
  loc_B7343B: CStrUI1
  loc_B7343D: FStStrNoPop var_19C
  loc_B73440: LitStr ","
  loc_B73443: ConcatStr
  loc_B73444: FStStrNoPop var_1F8
  loc_B73447: FLdI2 arg_18
  loc_B7344A: LitI2_Byte 1
  loc_B7344C: AddI2
  loc_B7344D: CStrUI1
  loc_B7344F: FStStrNoPop var_1FC
  loc_B73452: ConcatStr
  loc_B73453: CVarStr var_144
  loc_B73456: FStVar var_94
  loc_B7345A: FFreeStr var_19C = "": var_1F8 = ""
  loc_B73463: LitStr "3,3"
  loc_B73466: ILdI2 arg_10
  loc_B73469: CI4UI1
  loc_B7346A: ImpAdLdI4 MemVar_C0F100
  loc_B7346D: Ary1LdPr
  loc_B7346E: MemStStrCopy
  loc_B73472: ILdRf var_A0
  loc_B73475: LitStr ".0"
  loc_B73478: ConcatStr
  loc_B73479: FStStrNoPop var_19C
  loc_B7347C: ILdI2 arg_10
  loc_B7347F: CI4UI1
  loc_B73480: ImpAdLdI4 MemVar_C0F100
  loc_B73483: Ary1LdPr
  loc_B73484: MemStStrCopy
  loc_B73488: FFree1Str var_19C
  loc_B7348B: LitI4 0
  loc_B73490: ILdI2 arg_10
  loc_B73493: CI4UI1
  loc_B73494: ImpAdLdI4 MemVar_C0F100
  loc_B73497: Ary1LdPr
  loc_B73498: MemStI4 global_332
  loc_B7349B: LitI2_Byte 0
  loc_B7349D: ILdI2 arg_10
  loc_B734A0: CI4UI1
  loc_B734A1: ImpAdLdI4 MemVar_C0F100
  loc_B734A4: Ary1LdPr
  loc_B734A5: MemStI2 global_308
  loc_B734A8: LitI2_Byte 0
  loc_B734AA: ILdI2 arg_10
  loc_B734AD: CI4UI1
  loc_B734AE: ImpAdLdI4 MemVar_C0F100
  loc_B734B1: Ary1LdPr
  loc_B734B2: MemStI2 global_312
  loc_B734B5: ExitProcCb
  loc_B734B9: FLdI2 arg_14
  loc_B734BC: FLdI2 arg_1C
  loc_B734BF: GtI2
  loc_B734C0: FLdI2 arg_18
  loc_B734C3: FLdI2 arg_20
  loc_B734C6: LtI2
  loc_B734C7: AndI4
  loc_B734C8: BranchF loc_B73793
  loc_B734CB: FLdRfVar var_C0
  loc_B734CE: CI4Var
  loc_B734D0: ImpAdLdI4 MemVar_C0F104
  loc_B734D3: Ary1LdPr
  loc_B734D4: MemLdFPR8 global_28
  loc_B734D7: FLdI2 arg_14
  loc_B734DA: LitI2_Byte 1
  loc_B734DC: SubI2
  loc_B734DD: CR8I2
  loc_B734DE: EqR4
  loc_B734DF: FLdRfVar var_C0
  loc_B734E2: CI4Var
  loc_B734E4: ImpAdLdI4 MemVar_C0F104
  loc_B734E7: Ary1LdPr
  loc_B734E8: MemLdFPR8 global_36
  loc_B734EB: FLdI2 arg_18
  loc_B734EE: LitI2_Byte 1
  loc_B734F0: AddI2
  loc_B734F1: CR8I2
  loc_B734F2: EqR4
  loc_B734F3: AndI4
  loc_B734F4: BranchF loc_B734FB
  loc_B734F7: ExitProcCb
  loc_B734FB: LitVarI2 var_F4, 1
  loc_B73500: FLdRfVar var_D0
  loc_B73503: FLdRfVar var_D4
  loc_B73506: ImpAdLdRf MemVar_C0F018
  loc_B73509: NewIfNullPr frmMain
  loc_B7350C: from_stack_1v = frmMain.SockIGet()
  loc_B73511: ILdRf var_D4
  loc_B73514: CVarI4
  loc_B73518: ForVar var_23C
  loc_B7351E: FLdRfVar var_D0
  loc_B73521: CI4Var
  loc_B73523: ImpAdLdI4 MemVar_C0F100
  loc_B73526: Ary1LdPr
  loc_B73527: MemLdI2 global_4
  loc_B7352A: ILdI2 arg_10
  loc_B7352D: CI4UI1
  loc_B7352E: ImpAdLdI4 MemVar_C0F100
  loc_B73531: Ary1LdPr
  loc_B73532: MemLdI2 global_4
  loc_B73535: EqI2
  loc_B73536: BranchF loc_B73569
  loc_B73539: FLdRfVar var_D0
  loc_B7353C: CI4Var
  loc_B7353E: ImpAdLdI4 MemVar_C0F100
  loc_B73541: Ary1LdPr
  loc_B73542: MemLdFPR8 global_232
  loc_B73545: FLdI2 arg_14
  loc_B73548: LitI2_Byte 1
  loc_B7354A: SubI2
  loc_B7354B: CR8I2
  loc_B7354C: EqR4
  loc_B7354D: FLdRfVar var_D0
  loc_B73550: CI4Var
  loc_B73552: ImpAdLdI4 MemVar_C0F100
  loc_B73555: Ary1LdPr
  loc_B73556: MemLdFPR8 global_240
  loc_B73559: FLdI2 arg_18
  loc_B7355C: LitI2_Byte 1
  loc_B7355E: AddI2
  loc_B7355F: CR8I2
  loc_B73560: EqR4
  loc_B73561: AndI4
  loc_B73562: BranchF loc_B73569
  loc_B73565: ExitProcCb
  loc_B73569: FLdRfVar var_D0
  loc_B7356C: NextStepVar var_23C
  loc_B73572: LitI4 &HD
  loc_B73577: FLdRfVar var_144
  loc_B7357A: ImpAdCallFPR4  = Chr()
  loc_B7357F: FLdI2 arg_18
  loc_B73582: LitI2_Byte 1
  loc_B73584: AddI2
  loc_B73585: CVarI2 var_B0
  loc_B73588: PopAdLdVar
  loc_B73589: LitI4 0
  loc_B7358E: LitI4 -1
  loc_B73593: FLdRfVar var_144
  loc_B73596: ILdRf var_98
  loc_B73599: FLdRfVar var_154
  loc_B7359C: ImpAdCallFPR4  = Split(, , , )
  loc_B735A1: FLdRfVar var_154
  loc_B735A4: VarIndexLdRfVarLock
  loc_B735AC: FStR4 var_D4
  loc_B735AF: LitVarI2 var_178, 1
  loc_B735B4: FLdI2 arg_14
  loc_B735B7: CI4UI1
  loc_B735B8: ILdRf var_D4
  loc_B735BB: FLdRfVar var_188
  loc_B735BE: ImpAdCallFPR4  = Mid(, , )
  loc_B735C3: AryUnlock
  loc_B735C6: FLdRfVar var_188
  loc_B735C9: CStrVarTmp
  loc_B735CA: FStStr var_A0
  loc_B735CD: FFreeVar var_144 = "": var_154 = "": var_164 = "": var_178 = ""
  loc_B735DA: ILdI2 arg_10
  loc_B735DD: CI4UI1
  loc_B735DE: ImpAdLdI4 MemVar_C0F100
  loc_B735E1: Ary1LdPr
  loc_B735E2: MemLdI2 global_4
  loc_B735E5: CI4UI1
  loc_B735E6: FLdI2 arg_14
  loc_B735E9: LitI2_Byte 1
  loc_B735EB: SubI2
  loc_B735EC: CI4UI1
  loc_B735ED: FLdI2 arg_18
  loc_B735F0: LitI2_Byte 1
  loc_B735F2: AddI2
  loc_B735F3: CI4UI1
  loc_B735F4: ImpAdLdRf MemVar_C0F10C
  loc_B735F7: AryLdPr
  loc_B735FA: MemLdStr global_0
  loc_B735FD: CVarStr var_B0
  loc_B73600: FStVarCopy
  loc_B73604: ILdRf var_A0
  loc_B73607: ImpAdCallFPR4 push push Val()
  loc_B7360C: FStFPR8 var_1C4
  loc_B7360F: LitVarI2 var_E4, 0
  loc_B73614: PopAdLdVar
  loc_B73615: LitI4 0
  loc_B7361A: LitI4 -1
  loc_B7361F: LitVarStr var_B0, "."
  loc_B73624: FStVarCopyObj var_144
  loc_B73627: FLdRfVar var_144
  loc_B7362A: ILdI2 arg_10
  loc_B7362D: CI4UI1
  loc_B7362E: ImpAdLdI4 MemVar_C0F100
  loc_B73631: Ary1LdPr
  loc_B73632: MemLdStr global_296
  loc_B73635: FLdRfVar var_154
  loc_B73638: ImpAdCallFPR4  = Split(, , , )
  loc_B7363D: FLdRfVar var_154
  loc_B73640: VarIndexLdVar
  loc_B73646: CStrVarVal var_19C
  loc_B7364A: ImpAdCallFPR4 push push Val()
  loc_B7364F: FLdFPR8 var_1C4
  loc_B73652: SubR4
  loc_B73653: CVarR8
  loc_B73657: FStVar var_1AC
  loc_B7365B: FFree1Str var_19C
  loc_B7365E: FFreeVar var_144 = "": var_154 = ""
  loc_B73667: FLdRfVar var_1AC
  loc_B7366A: LitVarI2 var_B0, 1
  loc_B7366F: HardType
  loc_B73670: GtVar var_144
  loc_B73674: FLdRfVar var_1AC
  loc_B73677: LitVarI2 var_E4, -1
  loc_B7367C: HardType
  loc_B7367D: LtVar var_154
  loc_B73681: OrVar var_164
  loc_B73685: CBoolVarNull
  loc_B73687: BranchF loc_B7368E
  loc_B7368A: ExitProcCb
  loc_B7368E: FLdRfVar var_198
  loc_B73691: LitVarStr var_B0, vbNullString
  loc_B73696: HardType
  loc_B73697: EqVar var_144
  loc_B7369B: FLdRfVar var_198
  loc_B7369E: LitVarStr var_E4, "S"
  loc_B736A3: HardType
  loc_B736A4: EqVar var_154
  loc_B736A8: FLdI2 arg_18
  loc_B736AB: LitI2_Byte 1
  loc_B736AD: AddI2
  loc_B736AE: FLdI2 arg_20
  loc_B736B1: EqI2
  loc_B736B2: CVarBoolI2 var_F4
  loc_B736B6: AndVar var_164
  loc_B736BA: FLdI2 arg_14
  loc_B736BD: LitI2_Byte 1
  loc_B736BF: SubI2
  loc_B736C0: FLdI2 arg_1C
  loc_B736C3: EqI2
  loc_B736C4: CVarBoolI2 var_1BC
  loc_B736C8: AndVar var_178
  loc_B736CC: OrVar var_188
  loc_B736D0: FLdRfVar var_A0
  loc_B736D3: CVarRef
  loc_B736D8: ImpAdCallI2 IsNumeric()
  loc_B736DD: LitI2_Byte &HFF
  loc_B736DF: EqI2
  loc_B736E0: CVarBoolI2 var_1E4
  loc_B736E4: AndVar var_1F4
  loc_B736E8: CBoolVarNull
  loc_B736EA: FFreeVar var_F4 = "": var_1BC = ""
  loc_B736F3: BranchF loc_B73793
  loc_B736F6: FLdI2 arg_14
  loc_B736F9: LitI2_Byte 1
  loc_B736FB: SubI2
  loc_B736FC: CStrUI1
  loc_B736FE: FStStrNoPop var_19C
  loc_B73701: LitStr ","
  loc_B73704: ConcatStr
  loc_B73705: FStStrNoPop var_1F8
  loc_B73708: FLdI2 arg_18
  loc_B7370B: LitI2_Byte 1
  loc_B7370D: AddI2
  loc_B7370E: CStrUI1
  loc_B73710: FStStrNoPop var_1FC
  loc_B73713: ConcatStr
  loc_B73714: CVarStr var_144
  loc_B73717: FStVar var_94
  loc_B7371B: FFreeStr var_19C = "": var_1F8 = ""
  loc_B73724: LitStr "5,5"
  loc_B73727: ILdI2 arg_10
  loc_B7372A: CI4UI1
  loc_B7372B: ImpAdLdI4 MemVar_C0F100
  loc_B7372E: Ary1LdPr
  loc_B7372F: MemStStrCopy
  loc_B73733: FLdRfVar var_A0
  loc_B73736: CVarRef
  loc_B7373B: ImpAdCallI2 IsNumeric()
  loc_B73740: LitI2_Byte 0
  loc_B73742: EqI2
  loc_B73743: BranchF loc_B7374C
  loc_B73746: LitStr "1"
  loc_B73749: FStStrCopy var_A0
  loc_B7374C: ILdRf var_A0
  loc_B7374F: LitStr ".0"
  loc_B73752: ConcatStr
  loc_B73753: FStStrNoPop var_19C
  loc_B73756: ILdI2 arg_10
  loc_B73759: CI4UI1
  loc_B7375A: ImpAdLdI4 MemVar_C0F100
  loc_B7375D: Ary1LdPr
  loc_B7375E: MemStStrCopy
  loc_B73762: FFree1Str var_19C
  loc_B73765: LitI4 0
  loc_B7376A: ILdI2 arg_10
  loc_B7376D: CI4UI1
  loc_B7376E: ImpAdLdI4 MemVar_C0F100
  loc_B73771: Ary1LdPr
  loc_B73772: MemStI4 global_332
  loc_B73775: LitI2_Byte 0
  loc_B73777: ILdI2 arg_10
  loc_B7377A: CI4UI1
  loc_B7377B: ImpAdLdI4 MemVar_C0F100
  loc_B7377E: Ary1LdPr
  loc_B7377F: MemStI2 global_308
  loc_B73782: LitI2_Byte 0
  loc_B73784: ILdI2 arg_10
  loc_B73787: CI4UI1
  loc_B73788: ImpAdLdI4 MemVar_C0F100
  loc_B7378B: Ary1LdPr
  loc_B7378C: MemStI2 global_312
  loc_B7378F: ExitProcCb
  loc_B73793: FLdI2 arg_14
  loc_B73796: FLdI2 arg_1C
  loc_B73799: LtI2
  loc_B7379A: FLdI2 arg_18
  loc_B7379D: FLdI2 arg_20
  loc_B737A0: GtI2
  loc_B737A1: AndI4
  loc_B737A2: BranchF loc_B73A57
  loc_B737A5: FLdRfVar var_C0
  loc_B737A8: CI4Var
  loc_B737AA: ImpAdLdI4 MemVar_C0F104
  loc_B737AD: Ary1LdPr
  loc_B737AE: MemLdFPR8 global_28
  loc_B737B1: FLdI2 arg_14
  loc_B737B4: LitI2_Byte 1
  loc_B737B6: AddI2
  loc_B737B7: CR8I2
  loc_B737B8: EqR4
  loc_B737B9: FLdRfVar var_C0
  loc_B737BC: CI4Var
  loc_B737BE: ImpAdLdI4 MemVar_C0F104
  loc_B737C1: Ary1LdPr
  loc_B737C2: MemLdFPR8 global_36
  loc_B737C5: FLdI2 arg_18
  loc_B737C8: LitI2_Byte 1
  loc_B737CA: SubI2
  loc_B737CB: CR8I2
  loc_B737CC: EqR4
  loc_B737CD: AndI4
  loc_B737CE: BranchF loc_B737D5
  loc_B737D1: ExitProcCb
  loc_B737D5: LitVarI2 var_F4, 1
  loc_B737DA: FLdRfVar var_D0
  loc_B737DD: FLdRfVar var_D4
  loc_B737E0: ImpAdLdRf MemVar_C0F018
  loc_B737E3: NewIfNullPr frmMain
  loc_B737E6: from_stack_1v = frmMain.SockIGet()
  loc_B737EB: ILdRf var_D4
  loc_B737EE: CVarI4
  loc_B737F2: ForVar var_25C
  loc_B737F8: FLdRfVar var_D0
  loc_B737FB: CI4Var
  loc_B737FD: ImpAdLdI4 MemVar_C0F100
  loc_B73800: Ary1LdPr
  loc_B73801: MemLdI2 global_4
  loc_B73804: ILdI2 arg_10
  loc_B73807: CI4UI1
  loc_B73808: ImpAdLdI4 MemVar_C0F100
  loc_B7380B: Ary1LdPr
  loc_B7380C: MemLdI2 global_4
  loc_B7380F: EqI2
  loc_B73810: BranchF loc_B73843
  loc_B73813: FLdRfVar var_D0
  loc_B73816: CI4Var
  loc_B73818: ImpAdLdI4 MemVar_C0F100
  loc_B7381B: Ary1LdPr
  loc_B7381C: MemLdFPR8 global_232
  loc_B7381F: FLdI2 arg_14
  loc_B73822: LitI2_Byte 1
  loc_B73824: AddI2
  loc_B73825: CR8I2
  loc_B73826: EqR4
  loc_B73827: FLdRfVar var_D0
  loc_B7382A: CI4Var
  loc_B7382C: ImpAdLdI4 MemVar_C0F100
  loc_B7382F: Ary1LdPr
  loc_B73830: MemLdFPR8 global_240
  loc_B73833: FLdI2 arg_18
  loc_B73836: LitI2_Byte 1
  loc_B73838: SubI2
  loc_B73839: CR8I2
  loc_B7383A: EqR4
  loc_B7383B: AndI4
  loc_B7383C: BranchF loc_B73843
  loc_B7383F: ExitProcCb
  loc_B73843: FLdRfVar var_D0
  loc_B73846: NextStepVar var_25C
  loc_B7384C: LitI4 &HD
  loc_B73851: FLdRfVar var_144
  loc_B73854: ImpAdCallFPR4  = Chr()
  loc_B73859: FLdI2 arg_18
  loc_B7385C: LitI2_Byte 1
  loc_B7385E: SubI2
  loc_B7385F: CVarI2 var_B0
  loc_B73862: PopAdLdVar
  loc_B73863: LitI4 0
  loc_B73868: LitI4 -1
  loc_B7386D: FLdRfVar var_144
  loc_B73870: ILdRf var_98
  loc_B73873: FLdRfVar var_154
  loc_B73876: ImpAdCallFPR4  = Split(, , , )
  loc_B7387B: FLdRfVar var_154
  loc_B7387E: VarIndexLdRfVarLock
  loc_B73886: FStR4 var_D4
  loc_B73889: LitVarI2 var_178, 1
  loc_B7388E: FLdI2 arg_14
  loc_B73891: LitI2_Byte 2
  loc_B73893: AddI2
  loc_B73894: CI4UI1
  loc_B73895: ILdRf var_D4
  loc_B73898: FLdRfVar var_188
  loc_B7389B: ImpAdCallFPR4  = Mid(, , )
  loc_B738A0: AryUnlock
  loc_B738A3: FLdRfVar var_188
  loc_B738A6: CStrVarTmp
  loc_B738A7: FStStr var_A0
  loc_B738AA: FFreeVar var_144 = "": var_154 = "": var_164 = "": var_178 = ""
  loc_B738B7: ILdI2 arg_10
  loc_B738BA: CI4UI1
  loc_B738BB: ImpAdLdI4 MemVar_C0F100
  loc_B738BE: Ary1LdPr
  loc_B738BF: MemLdI2 global_4
  loc_B738C2: CI4UI1
  loc_B738C3: FLdI2 arg_14
  loc_B738C6: LitI2_Byte 1
  loc_B738C8: AddI2
  loc_B738C9: CI4UI1
  loc_B738CA: FLdI2 arg_18
  loc_B738CD: LitI2_Byte 1
  loc_B738CF: SubI2
  loc_B738D0: CI4UI1
  loc_B738D1: ImpAdLdRf MemVar_C0F10C
  loc_B738D4: AryLdPr
  loc_B738D7: MemLdStr global_0
  loc_B738DA: CVarStr var_B0
  loc_B738DD: FStVarCopy
  loc_B738E1: ILdRf var_A0
  loc_B738E4: ImpAdCallFPR4 push push Val()
  loc_B738E9: FStFPR8 var_1C4
  loc_B738EC: LitVarI2 var_E4, 0
  loc_B738F1: PopAdLdVar
  loc_B738F2: LitI4 0
  loc_B738F7: LitI4 -1
  loc_B738FC: LitVarStr var_B0, "."
  loc_B73901: FStVarCopyObj var_144
  loc_B73904: FLdRfVar var_144
  loc_B73907: ILdI2 arg_10
  loc_B7390A: CI4UI1
  loc_B7390B: ImpAdLdI4 MemVar_C0F100
  loc_B7390E: Ary1LdPr
  loc_B7390F: MemLdStr global_296
  loc_B73912: FLdRfVar var_154
  loc_B73915: ImpAdCallFPR4  = Split(, , , )
  loc_B7391A: FLdRfVar var_154
  loc_B7391D: VarIndexLdVar
  loc_B73923: CStrVarVal var_19C
  loc_B73927: ImpAdCallFPR4 push push Val()
  loc_B7392C: FLdFPR8 var_1C4
  loc_B7392F: SubR4
  loc_B73930: CVarR8
  loc_B73934: FStVar var_1AC
  loc_B73938: FFree1Str var_19C
  loc_B7393B: FFreeVar var_144 = "": var_154 = ""
  loc_B73944: FLdRfVar var_1AC
  loc_B73947: LitVarI2 var_B0, 1
  loc_B7394C: HardType
  loc_B7394D: GtVar var_144
  loc_B73951: FLdRfVar var_1AC
  loc_B73954: LitVarI2 var_E4, -1
  loc_B73959: HardType
  loc_B7395A: LtVar var_154
  loc_B7395E: OrVar var_164
  loc_B73962: CBoolVarNull
  loc_B73964: BranchF loc_B7396B
  loc_B73967: ExitProcCb
  loc_B7396B: FLdRfVar var_198
  loc_B7396E: LitVarStr var_B0, vbNullString
  loc_B73973: HardType
  loc_B73974: EqVar var_144
  loc_B73978: FLdRfVar var_198
  loc_B7397B: LitVarStr var_E4, "S"
  loc_B73980: HardType
  loc_B73981: EqVar var_154
  loc_B73985: FLdI2 arg_18
  loc_B73988: LitI2_Byte 1
  loc_B7398A: SubI2
  loc_B7398B: FLdI2 arg_20
  loc_B7398E: EqI2
  loc_B7398F: CVarBoolI2 var_F4
  loc_B73993: AndVar var_164
  loc_B73997: FLdI2 arg_14
  loc_B7399A: LitI2_Byte 1
  loc_B7399C: AddI2
  loc_B7399D: FLdI2 arg_1C
  loc_B739A0: EqI2
  loc_B739A1: CVarBoolI2 var_1BC
  loc_B739A5: AndVar var_178
  loc_B739A9: OrVar var_188
  loc_B739AD: FLdRfVar var_A0
  loc_B739B0: CVarRef
  loc_B739B5: ImpAdCallI2 IsNumeric()
  loc_B739BA: LitI2_Byte &HFF
  loc_B739BC: EqI2
  loc_B739BD: CVarBoolI2 var_1E4
  loc_B739C1: AndVar var_1F4
  loc_B739C5: CBoolVarNull
  loc_B739C7: FFreeVar var_F4 = "": var_1BC = ""
  loc_B739D0: BranchF loc_B73A57
  loc_B739D3: FLdI2 arg_14
  loc_B739D6: LitI2_Byte 1
  loc_B739D8: AddI2
  loc_B739D9: CStrUI1
  loc_B739DB: FStStrNoPop var_19C
  loc_B739DE: LitStr ","
  loc_B739E1: ConcatStr
  loc_B739E2: FStStrNoPop var_1F8
  loc_B739E5: FLdI2 arg_18
  loc_B739E8: LitI2_Byte 1
  loc_B739EA: SubI2
  loc_B739EB: CStrUI1
  loc_B739ED: FStStrNoPop var_1FC
  loc_B739F0: ConcatStr
  loc_B739F1: CVarStr var_144
  loc_B739F4: FStVar var_94
  loc_B739F8: FFreeStr var_19C = "": var_1F8 = ""
  loc_B73A01: LitStr "1,1"
  loc_B73A04: ILdI2 arg_10
  loc_B73A07: CI4UI1
  loc_B73A08: ImpAdLdI4 MemVar_C0F100
  loc_B73A0B: Ary1LdPr
  loc_B73A0C: MemStStrCopy
  loc_B73A10: ILdRf var_A0
  loc_B73A13: LitStr ".0"
  loc_B73A16: ConcatStr
  loc_B73A17: FStStrNoPop var_19C
  loc_B73A1A: ILdI2 arg_10
  loc_B73A1D: CI4UI1
  loc_B73A1E: ImpAdLdI4 MemVar_C0F100
  loc_B73A21: Ary1LdPr
  loc_B73A22: MemStStrCopy
  loc_B73A26: FFree1Str var_19C
  loc_B73A29: LitI4 0
  loc_B73A2E: ILdI2 arg_10
  loc_B73A31: CI4UI1
  loc_B73A32: ImpAdLdI4 MemVar_C0F100
  loc_B73A35: Ary1LdPr
  loc_B73A36: MemStI4 global_332
  loc_B73A39: LitI2_Byte 0
  loc_B73A3B: ILdI2 arg_10
  loc_B73A3E: CI4UI1
  loc_B73A3F: ImpAdLdI4 MemVar_C0F100
  loc_B73A42: Ary1LdPr
  loc_B73A43: MemStI2 global_308
  loc_B73A46: LitI2_Byte 0
  loc_B73A48: ILdI2 arg_10
  loc_B73A4B: CI4UI1
  loc_B73A4C: ImpAdLdI4 MemVar_C0F100
  loc_B73A4F: Ary1LdPr
  loc_B73A50: MemStI2 global_312
  loc_B73A53: ExitProcCb
  loc_B73A57: FLdI2 arg_14
  loc_B73A5A: FLdI2 arg_1C
  loc_B73A5D: GtI2
  loc_B73A5E: BranchF loc_B73CFE
  loc_B73A61: FLdRfVar var_C0
  loc_B73A64: CI4Var
  loc_B73A66: ImpAdLdI4 MemVar_C0F104
  loc_B73A69: Ary1LdPr
  loc_B73A6A: MemLdFPR8 global_28
  loc_B73A6D: FLdI2 arg_14
  loc_B73A70: LitI2_Byte 1
  loc_B73A72: SubI2
  loc_B73A73: CR8I2
  loc_B73A74: EqR4
  loc_B73A75: FLdRfVar var_C0
  loc_B73A78: CI4Var
  loc_B73A7A: ImpAdLdI4 MemVar_C0F104
  loc_B73A7D: Ary1LdPr
  loc_B73A7E: MemLdFPR8 global_36
  loc_B73A81: FLdI2 arg_18
  loc_B73A84: CR8I2
  loc_B73A85: EqR4
  loc_B73A86: AndI4
  loc_B73A87: BranchF loc_B73A8E
  loc_B73A8A: ExitProcCb
  loc_B73A8E: LitVarI2 var_F4, 1
  loc_B73A93: FLdRfVar var_D0
  loc_B73A96: FLdRfVar var_D4
  loc_B73A99: ImpAdLdRf MemVar_C0F018
  loc_B73A9C: NewIfNullPr frmMain
  loc_B73A9F: from_stack_1v = frmMain.SockIGet()
  loc_B73AA4: ILdRf var_D4
  loc_B73AA7: CVarI4
  loc_B73AAB: ForVar var_27C
  loc_B73AB1: FLdRfVar var_D0
  loc_B73AB4: CI4Var
  loc_B73AB6: ImpAdLdI4 MemVar_C0F100
  loc_B73AB9: Ary1LdPr
  loc_B73ABA: MemLdI2 global_4
  loc_B73ABD: ILdI2 arg_10
  loc_B73AC0: CI4UI1
  loc_B73AC1: ImpAdLdI4 MemVar_C0F100
  loc_B73AC4: Ary1LdPr
  loc_B73AC5: MemLdI2 global_4
  loc_B73AC8: EqI2
  loc_B73AC9: BranchF loc_B73AF9
  loc_B73ACC: FLdRfVar var_D0
  loc_B73ACF: CI4Var
  loc_B73AD1: ImpAdLdI4 MemVar_C0F100
  loc_B73AD4: Ary1LdPr
  loc_B73AD5: MemLdFPR8 global_232
  loc_B73AD8: FLdI2 arg_14
  loc_B73ADB: LitI2_Byte 1
  loc_B73ADD: SubI2
  loc_B73ADE: CR8I2
  loc_B73ADF: EqR4
  loc_B73AE0: FLdRfVar var_D0
  loc_B73AE3: CI4Var
  loc_B73AE5: ImpAdLdI4 MemVar_C0F100
  loc_B73AE8: Ary1LdPr
  loc_B73AE9: MemLdFPR8 global_240
  loc_B73AEC: FLdI2 arg_18
  loc_B73AEF: CR8I2
  loc_B73AF0: EqR4
  loc_B73AF1: AndI4
  loc_B73AF2: BranchF loc_B73AF9
  loc_B73AF5: ExitProcCb
  loc_B73AF9: FLdRfVar var_D0
  loc_B73AFC: NextStepVar var_27C
  loc_B73B02: LitI4 &HD
  loc_B73B07: FLdRfVar var_144
  loc_B73B0A: ImpAdCallFPR4  = Chr()
  loc_B73B0F: FLdRfVar arg_18
  loc_B73B12: CDargRef
  loc_B73B16: LitI4 0
  loc_B73B1B: LitI4 -1
  loc_B73B20: FLdRfVar var_144
  loc_B73B23: ILdRf var_98
  loc_B73B26: FLdRfVar var_154
  loc_B73B29: ImpAdCallFPR4  = Split(, , , )
  loc_B73B2E: FLdRfVar var_154
  loc_B73B31: VarIndexLdRfVarLock
  loc_B73B39: FStR4 var_D4
  loc_B73B3C: LitVarI2 var_178, 1
  loc_B73B41: FLdI2 arg_14
  loc_B73B44: CI4UI1
  loc_B73B45: ILdRf var_D4
  loc_B73B48: FLdRfVar var_188
  loc_B73B4B: ImpAdCallFPR4  = Mid(, , )
  loc_B73B50: AryUnlock
  loc_B73B53: FLdRfVar var_188
  loc_B73B56: CStrVarTmp
  loc_B73B57: FStStr var_A0
  loc_B73B5A: FFreeVar var_144 = "": var_154 = "": var_164 = "": var_178 = ""
  loc_B73B67: ILdI2 arg_10
  loc_B73B6A: CI4UI1
  loc_B73B6B: ImpAdLdI4 MemVar_C0F100
  loc_B73B6E: Ary1LdPr
  loc_B73B6F: MemLdI2 global_4
  loc_B73B72: CI4UI1
  loc_B73B73: FLdI2 arg_14
  loc_B73B76: LitI2_Byte 1
  loc_B73B78: SubI2
  loc_B73B79: CI4UI1
  loc_B73B7A: FLdI2 arg_18
  loc_B73B7D: CI4UI1
  loc_B73B7E: ImpAdLdRf MemVar_C0F10C
  loc_B73B81: AryLdPr
  loc_B73B84: MemLdStr global_0
  loc_B73B87: CVarStr var_B0
  loc_B73B8A: FStVarCopy
  loc_B73B8E: ILdRf var_A0
  loc_B73B91: ImpAdCallFPR4 push push Val()
  loc_B73B96: FStFPR8 var_1C4
  loc_B73B99: LitVarI2 var_E4, 0
  loc_B73B9E: PopAdLdVar
  loc_B73B9F: LitI4 0
  loc_B73BA4: LitI4 -1
  loc_B73BA9: LitVarStr var_B0, "."
  loc_B73BAE: FStVarCopyObj var_144
  loc_B73BB1: FLdRfVar var_144
  loc_B73BB4: ILdI2 arg_10
  loc_B73BB7: CI4UI1
  loc_B73BB8: ImpAdLdI4 MemVar_C0F100
  loc_B73BBB: Ary1LdPr
  loc_B73BBC: MemLdStr global_296
  loc_B73BBF: FLdRfVar var_154
  loc_B73BC2: ImpAdCallFPR4  = Split(, , , )
  loc_B73BC7: FLdRfVar var_154
  loc_B73BCA: VarIndexLdVar
  loc_B73BD0: CStrVarVal var_19C
  loc_B73BD4: ImpAdCallFPR4 push push Val()
  loc_B73BD9: FLdFPR8 var_1C4
  loc_B73BDC: SubR4
  loc_B73BDD: CVarR8
  loc_B73BE1: FStVar var_1AC
  loc_B73BE5: FFree1Str var_19C
  loc_B73BE8: FFreeVar var_144 = "": var_154 = ""
  loc_B73BF1: FLdRfVar var_1AC
  loc_B73BF4: LitVarI2 var_B0, 1
  loc_B73BF9: HardType
  loc_B73BFA: GtVar var_144
  loc_B73BFE: FLdRfVar var_1AC
  loc_B73C01: LitVarI2 var_E4, -1
  loc_B73C06: HardType
  loc_B73C07: LtVar var_154
  loc_B73C0B: OrVar var_164
  loc_B73C0F: CBoolVarNull
  loc_B73C11: BranchF loc_B73C18
  loc_B73C14: ExitProcCb
  loc_B73C18: FLdRfVar var_198
  loc_B73C1B: LitVarStr var_B0, vbNullString
  loc_B73C20: HardType
  loc_B73C21: EqVar var_144
  loc_B73C25: FLdRfVar var_198
  loc_B73C28: LitVarStr var_E4, "S"
  loc_B73C2D: HardType
  loc_B73C2E: EqVar var_154
  loc_B73C32: FLdI2 arg_18
  loc_B73C35: FLdI2 arg_20
  loc_B73C38: EqI2
  loc_B73C39: CVarBoolI2 var_F4
  loc_B73C3D: AndVar var_164
  loc_B73C41: FLdI2 arg_14
  loc_B73C44: LitI2_Byte 1
  loc_B73C46: SubI2
  loc_B73C47: FLdI2 arg_1C
  loc_B73C4A: EqI2
  loc_B73C4B: CVarBoolI2 var_1BC
  loc_B73C4F: AndVar var_178
  loc_B73C53: OrVar var_188
  loc_B73C57: FLdRfVar var_A0
  loc_B73C5A: CVarRef
  loc_B73C5F: ImpAdCallI2 IsNumeric()
  loc_B73C64: LitI2_Byte &HFF
  loc_B73C66: EqI2
  loc_B73C67: CVarBoolI2 var_1E4
  loc_B73C6B: AndVar var_1F4
  loc_B73C6F: CBoolVarNull
  loc_B73C71: FFreeVar var_F4 = "": var_1BC = ""
  loc_B73C7A: BranchF loc_B73CFE
  loc_B73C7D: FLdI2 arg_14
  loc_B73C80: LitI2_Byte 1
  loc_B73C82: SubI2
  loc_B73C83: CStrUI1
  loc_B73C85: FStStrNoPop var_19C
  loc_B73C88: LitStr ","
  loc_B73C8B: ConcatStr
  loc_B73C8C: FStStrNoPop var_1F8
  loc_B73C8F: FLdI2 arg_18
  loc_B73C92: CStrUI1
  loc_B73C94: FStStrNoPop var_1FC
  loc_B73C97: ConcatStr
  loc_B73C98: CVarStr var_144
  loc_B73C9B: FStVar var_94
  loc_B73C9F: FFreeStr var_19C = "": var_1F8 = ""
  loc_B73CA8: LitStr "6,6"
  loc_B73CAB: ILdI2 arg_10
  loc_B73CAE: CI4UI1
  loc_B73CAF: ImpAdLdI4 MemVar_C0F100
  loc_B73CB2: Ary1LdPr
  loc_B73CB3: MemStStrCopy
  loc_B73CB7: ILdRf var_A0
  loc_B73CBA: LitStr ".0"
  loc_B73CBD: ConcatStr
  loc_B73CBE: FStStrNoPop var_19C
  loc_B73CC1: ILdI2 arg_10
  loc_B73CC4: CI4UI1
  loc_B73CC5: ImpAdLdI4 MemVar_C0F100
  loc_B73CC8: Ary1LdPr
  loc_B73CC9: MemStStrCopy
  loc_B73CCD: FFree1Str var_19C
  loc_B73CD0: LitI4 0
  loc_B73CD5: ILdI2 arg_10
  loc_B73CD8: CI4UI1
  loc_B73CD9: ImpAdLdI4 MemVar_C0F100
  loc_B73CDC: Ary1LdPr
  loc_B73CDD: MemStI4 global_332
  loc_B73CE0: LitI2_Byte 0
  loc_B73CE2: ILdI2 arg_10
  loc_B73CE5: CI4UI1
  loc_B73CE6: ImpAdLdI4 MemVar_C0F100
  loc_B73CE9: Ary1LdPr
  loc_B73CEA: MemStI2 global_308
  loc_B73CED: LitI2_Byte 0
  loc_B73CEF: ILdI2 arg_10
  loc_B73CF2: CI4UI1
  loc_B73CF3: ImpAdLdI4 MemVar_C0F100
  loc_B73CF6: Ary1LdPr
  loc_B73CF7: MemStI2 global_312
  loc_B73CFA: ExitProcCb
  loc_B73CFE: FLdI2 arg_14
  loc_B73D01: FLdI2 arg_1C
  loc_B73D04: LtI2
  loc_B73D05: BranchF loc_B73FA8
  loc_B73D08: FLdRfVar var_C0
  loc_B73D0B: CI4Var
  loc_B73D0D: ImpAdLdI4 MemVar_C0F104
  loc_B73D10: Ary1LdPr
  loc_B73D11: MemLdFPR8 global_28
  loc_B73D14: FLdI2 arg_14
  loc_B73D17: LitI2_Byte 1
  loc_B73D19: AddI2
  loc_B73D1A: CR8I2
  loc_B73D1B: EqR4
  loc_B73D1C: FLdRfVar var_C0
  loc_B73D1F: CI4Var
  loc_B73D21: ImpAdLdI4 MemVar_C0F104
  loc_B73D24: Ary1LdPr
  loc_B73D25: MemLdFPR8 global_36
  loc_B73D28: FLdI2 arg_18
  loc_B73D2B: CR8I2
  loc_B73D2C: EqR4
  loc_B73D2D: AndI4
  loc_B73D2E: BranchF loc_B73D35
  loc_B73D31: ExitProcCb
  loc_B73D35: LitVarI2 var_F4, 1
  loc_B73D3A: FLdRfVar var_D0
  loc_B73D3D: FLdRfVar var_D4
  loc_B73D40: ImpAdLdRf MemVar_C0F018
  loc_B73D43: NewIfNullPr frmMain
  loc_B73D46: from_stack_1v = frmMain.SockIGet()
  loc_B73D4B: ILdRf var_D4
  loc_B73D4E: CVarI4
  loc_B73D52: ForVar var_29C
  loc_B73D58: FLdRfVar var_D0
  loc_B73D5B: CI4Var
  loc_B73D5D: ImpAdLdI4 MemVar_C0F100
  loc_B73D60: Ary1LdPr
  loc_B73D61: MemLdI2 global_4
  loc_B73D64: ILdI2 arg_10
  loc_B73D67: CI4UI1
  loc_B73D68: ImpAdLdI4 MemVar_C0F100
  loc_B73D6B: Ary1LdPr
  loc_B73D6C: MemLdI2 global_4
  loc_B73D6F: EqI2
  loc_B73D70: BranchF loc_B73DA0
  loc_B73D73: FLdRfVar var_D0
  loc_B73D76: CI4Var
  loc_B73D78: ImpAdLdI4 MemVar_C0F100
  loc_B73D7B: Ary1LdPr
  loc_B73D7C: MemLdFPR8 global_232
  loc_B73D7F: FLdI2 arg_14
  loc_B73D82: LitI2_Byte 1
  loc_B73D84: AddI2
  loc_B73D85: CR8I2
  loc_B73D86: EqR4
  loc_B73D87: FLdRfVar var_D0
  loc_B73D8A: CI4Var
  loc_B73D8C: ImpAdLdI4 MemVar_C0F100
  loc_B73D8F: Ary1LdPr
  loc_B73D90: MemLdFPR8 global_240
  loc_B73D93: FLdI2 arg_18
  loc_B73D96: CR8I2
  loc_B73D97: EqR4
  loc_B73D98: AndI4
  loc_B73D99: BranchF loc_B73DA0
  loc_B73D9C: ExitProcCb
  loc_B73DA0: FLdRfVar var_D0
  loc_B73DA3: NextStepVar var_29C
  loc_B73DA9: LitI4 &HD
  loc_B73DAE: FLdRfVar var_144
  loc_B73DB1: ImpAdCallFPR4  = Chr()
  loc_B73DB6: FLdRfVar arg_18
  loc_B73DB9: CDargRef
  loc_B73DBD: LitI4 0
  loc_B73DC2: LitI4 -1
  loc_B73DC7: FLdRfVar var_144
  loc_B73DCA: ILdRf var_98
  loc_B73DCD: FLdRfVar var_154
  loc_B73DD0: ImpAdCallFPR4  = Split(, , , )
  loc_B73DD5: FLdRfVar var_154
  loc_B73DD8: VarIndexLdRfVarLock
  loc_B73DE0: FStR4 var_D4
  loc_B73DE3: LitVarI2 var_178, 1
  loc_B73DE8: FLdI2 arg_14
  loc_B73DEB: LitI2_Byte 2
  loc_B73DED: AddI2
  loc_B73DEE: CI4UI1
  loc_B73DEF: ILdRf var_D4
  loc_B73DF2: FLdRfVar var_188
  loc_B73DF5: ImpAdCallFPR4  = Mid(, , )
  loc_B73DFA: AryUnlock
  loc_B73DFD: FLdRfVar var_188
  loc_B73E00: CStrVarTmp
  loc_B73E01: FStStr var_A0
  loc_B73E04: FFreeVar var_144 = "": var_154 = "": var_164 = "": var_178 = ""
  loc_B73E11: ILdI2 arg_10
  loc_B73E14: CI4UI1
  loc_B73E15: ImpAdLdI4 MemVar_C0F100
  loc_B73E18: Ary1LdPr
  loc_B73E19: MemLdI2 global_4
  loc_B73E1C: CI4UI1
  loc_B73E1D: FLdI2 arg_14
  loc_B73E20: LitI2_Byte 1
  loc_B73E22: AddI2
  loc_B73E23: CI4UI1
  loc_B73E24: FLdI2 arg_18
  loc_B73E27: CI4UI1
  loc_B73E28: ImpAdLdRf MemVar_C0F10C
  loc_B73E2B: AryLdPr
  loc_B73E2E: MemLdStr global_0
  loc_B73E31: CVarStr var_B0
  loc_B73E34: FStVarCopy
  loc_B73E38: ILdRf var_A0
  loc_B73E3B: ImpAdCallFPR4 push push Val()
  loc_B73E40: FStFPR8 var_1C4
  loc_B73E43: LitVarI2 var_E4, 0
  loc_B73E48: PopAdLdVar
  loc_B73E49: LitI4 0
  loc_B73E4E: LitI4 -1
  loc_B73E53: LitVarStr var_B0, "."
  loc_B73E58: FStVarCopyObj var_144
  loc_B73E5B: FLdRfVar var_144
  loc_B73E5E: ILdI2 arg_10
  loc_B73E61: CI4UI1
  loc_B73E62: ImpAdLdI4 MemVar_C0F100
  loc_B73E65: Ary1LdPr
  loc_B73E66: MemLdStr global_296
  loc_B73E69: FLdRfVar var_154
  loc_B73E6C: ImpAdCallFPR4  = Split(, , , )
  loc_B73E71: FLdRfVar var_154
  loc_B73E74: VarIndexLdVar
  loc_B73E7A: CStrVarVal var_19C
  loc_B73E7E: ImpAdCallFPR4 push push Val()
  loc_B73E83: FLdFPR8 var_1C4
  loc_B73E86: SubR4
  loc_B73E87: CVarR8
  loc_B73E8B: FStVar var_1AC
  loc_B73E8F: FFree1Str var_19C
  loc_B73E92: FFreeVar var_144 = "": var_154 = ""
  loc_B73E9B: FLdRfVar var_1AC
  loc_B73E9E: LitVarI2 var_B0, 1
  loc_B73EA3: HardType
  loc_B73EA4: GtVar var_144
  loc_B73EA8: FLdRfVar var_1AC
  loc_B73EAB: LitVarI2 var_E4, -1
  loc_B73EB0: HardType
  loc_B73EB1: LtVar var_154
  loc_B73EB5: OrVar var_164
  loc_B73EB9: CBoolVarNull
  loc_B73EBB: BranchF loc_B73EC2
  loc_B73EBE: ExitProcCb
  loc_B73EC2: FLdRfVar var_198
  loc_B73EC5: LitVarStr var_B0, vbNullString
  loc_B73ECA: HardType
  loc_B73ECB: EqVar var_144
  loc_B73ECF: FLdRfVar var_198
  loc_B73ED2: LitVarStr var_E4, "S"
  loc_B73ED7: HardType
  loc_B73ED8: EqVar var_154
  loc_B73EDC: FLdI2 arg_18
  loc_B73EDF: FLdI2 arg_20
  loc_B73EE2: EqI2
  loc_B73EE3: CVarBoolI2 var_F4
  loc_B73EE7: AndVar var_164
  loc_B73EEB: FLdI2 arg_14
  loc_B73EEE: LitI2_Byte 1
  loc_B73EF0: AddI2
  loc_B73EF1: FLdI2 arg_1C
  loc_B73EF4: EqI2
  loc_B73EF5: CVarBoolI2 var_1BC
  loc_B73EF9: AndVar var_178
  loc_B73EFD: OrVar var_188
  loc_B73F01: FLdRfVar var_A0
  loc_B73F04: CVarRef
  loc_B73F09: ImpAdCallI2 IsNumeric()
  loc_B73F0E: LitI2_Byte &HFF
  loc_B73F10: EqI2
  loc_B73F11: CVarBoolI2 var_1E4
  loc_B73F15: AndVar var_1F4
  loc_B73F19: CBoolVarNull
  loc_B73F1B: FFreeVar var_F4 = "": var_1BC = ""
  loc_B73F24: BranchF loc_B73FA8
  loc_B73F27: FLdI2 arg_14
  loc_B73F2A: LitI2_Byte 1
  loc_B73F2C: AddI2
  loc_B73F2D: CStrUI1
  loc_B73F2F: FStStrNoPop var_19C
  loc_B73F32: LitStr ","
  loc_B73F35: ConcatStr
  loc_B73F36: FStStrNoPop var_1F8
  loc_B73F39: FLdI2 arg_18
  loc_B73F3C: CStrUI1
  loc_B73F3E: FStStrNoPop var_1FC
  loc_B73F41: ConcatStr
  loc_B73F42: CVarStr var_144
  loc_B73F45: FStVar var_94
  loc_B73F49: FFreeStr var_19C = "": var_1F8 = ""
  loc_B73F52: LitStr "2,2"
  loc_B73F55: ILdI2 arg_10
  loc_B73F58: CI4UI1
  loc_B73F59: ImpAdLdI4 MemVar_C0F100
  loc_B73F5C: Ary1LdPr
  loc_B73F5D: MemStStrCopy
  loc_B73F61: ILdRf var_A0
  loc_B73F64: LitStr ".0"
  loc_B73F67: ConcatStr
  loc_B73F68: FStStrNoPop var_19C
  loc_B73F6B: ILdI2 arg_10
  loc_B73F6E: CI4UI1
  loc_B73F6F: ImpAdLdI4 MemVar_C0F100
  loc_B73F72: Ary1LdPr
  loc_B73F73: MemStStrCopy
  loc_B73F77: FFree1Str var_19C
  loc_B73F7A: LitI4 0
  loc_B73F7F: ILdI2 arg_10
  loc_B73F82: CI4UI1
  loc_B73F83: ImpAdLdI4 MemVar_C0F100
  loc_B73F86: Ary1LdPr
  loc_B73F87: MemStI4 global_332
  loc_B73F8A: LitI2_Byte 0
  loc_B73F8C: ILdI2 arg_10
  loc_B73F8F: CI4UI1
  loc_B73F90: ImpAdLdI4 MemVar_C0F100
  loc_B73F93: Ary1LdPr
  loc_B73F94: MemStI2 global_308
  loc_B73F97: LitI2_Byte 0
  loc_B73F99: ILdI2 arg_10
  loc_B73F9C: CI4UI1
  loc_B73F9D: ImpAdLdI4 MemVar_C0F100
  loc_B73FA0: Ary1LdPr
  loc_B73FA1: MemStI2 global_312
  loc_B73FA4: ExitProcCb
  loc_B73FA8: FLdI2 arg_18
  loc_B73FAB: FLdI2 arg_20
  loc_B73FAE: LtI2
  loc_B73FAF: BranchF loc_B74255
  loc_B73FB2: FLdRfVar var_C0
  loc_B73FB5: CI4Var
  loc_B73FB7: ImpAdLdI4 MemVar_C0F104
  loc_B73FBA: Ary1LdPr
  loc_B73FBB: MemLdFPR8 global_28
  loc_B73FBE: FLdI2 arg_14
  loc_B73FC1: CR8I2
  loc_B73FC2: EqR4
  loc_B73FC3: FLdRfVar var_C0
  loc_B73FC6: CI4Var
  loc_B73FC8: ImpAdLdI4 MemVar_C0F104
  loc_B73FCB: Ary1LdPr
  loc_B73FCC: MemLdFPR8 global_36
  loc_B73FCF: FLdI2 arg_18
  loc_B73FD2: LitI2_Byte 1
  loc_B73FD4: AddI2
  loc_B73FD5: CR8I2
  loc_B73FD6: EqR4
  loc_B73FD7: AndI4
  loc_B73FD8: BranchF loc_B73FDF
  loc_B73FDB: ExitProcCb
  loc_B73FDF: LitVarI2 var_F4, 1
  loc_B73FE4: FLdRfVar var_D0
  loc_B73FE7: FLdRfVar var_D4
  loc_B73FEA: ImpAdLdRf MemVar_C0F018
  loc_B73FED: NewIfNullPr frmMain
  loc_B73FF0: from_stack_1v = frmMain.SockIGet()
  loc_B73FF5: ILdRf var_D4
  loc_B73FF8: CVarI4
  loc_B73FFC: ForVar var_2BC
  loc_B74002: FLdRfVar var_D0
  loc_B74005: CI4Var
  loc_B74007: ImpAdLdI4 MemVar_C0F100
  loc_B7400A: Ary1LdPr
  loc_B7400B: MemLdI2 global_4
  loc_B7400E: ILdI2 arg_10
  loc_B74011: CI4UI1
  loc_B74012: ImpAdLdI4 MemVar_C0F100
  loc_B74015: Ary1LdPr
  loc_B74016: MemLdI2 global_4
  loc_B74019: EqI2
  loc_B7401A: BranchF loc_B7404A
  loc_B7401D: FLdRfVar var_D0
  loc_B74020: CI4Var
  loc_B74022: ImpAdLdI4 MemVar_C0F100
  loc_B74025: Ary1LdPr
  loc_B74026: MemLdFPR8 global_232
  loc_B74029: FLdI2 arg_14
  loc_B7402C: CR8I2
  loc_B7402D: EqR4
  loc_B7402E: FLdRfVar var_D0
  loc_B74031: CI4Var
  loc_B74033: ImpAdLdI4 MemVar_C0F100
  loc_B74036: Ary1LdPr
  loc_B74037: MemLdFPR8 global_240
  loc_B7403A: FLdI2 arg_18
  loc_B7403D: LitI2_Byte 1
  loc_B7403F: AddI2
  loc_B74040: CR8I2
  loc_B74041: EqR4
  loc_B74042: AndI4
  loc_B74043: BranchF loc_B7404A
  loc_B74046: ExitProcCb
  loc_B7404A: FLdRfVar var_D0
  loc_B7404D: NextStepVar var_2BC
  loc_B74053: LitI4 &HD
  loc_B74058: FLdRfVar var_144
  loc_B7405B: ImpAdCallFPR4  = Chr()
  loc_B74060: FLdI2 arg_18
  loc_B74063: LitI2_Byte 1
  loc_B74065: AddI2
  loc_B74066: CVarI2 var_B0
  loc_B74069: PopAdLdVar
  loc_B7406A: LitI4 0
  loc_B7406F: LitI4 -1
  loc_B74074: FLdRfVar var_144
  loc_B74077: ILdRf var_98
  loc_B7407A: FLdRfVar var_154
  loc_B7407D: ImpAdCallFPR4  = Split(, , , )
  loc_B74082: FLdRfVar var_154
  loc_B74085: VarIndexLdRfVarLock
  loc_B7408D: FStR4 var_D4
  loc_B74090: LitVarI2 var_178, 1
  loc_B74095: FLdI2 arg_14
  loc_B74098: LitI2_Byte 1
  loc_B7409A: AddI2
  loc_B7409B: CI4UI1
  loc_B7409C: ILdRf var_D4
  loc_B7409F: FLdRfVar var_188
  loc_B740A2: ImpAdCallFPR4  = Mid(, , )
  loc_B740A7: AryUnlock
  loc_B740AA: FLdRfVar var_188
  loc_B740AD: CStrVarTmp
  loc_B740AE: FStStr var_A0
  loc_B740B1: FFreeVar var_144 = "": var_154 = "": var_164 = "": var_178 = ""
  loc_B740BE: ILdI2 arg_10
  loc_B740C1: CI4UI1
  loc_B740C2: ImpAdLdI4 MemVar_C0F100
  loc_B740C5: Ary1LdPr
  loc_B740C6: MemLdI2 global_4
  loc_B740C9: CI4UI1
  loc_B740CA: FLdI2 arg_14
  loc_B740CD: CI4UI1
  loc_B740CE: FLdI2 arg_18
  loc_B740D1: LitI2_Byte 1
  loc_B740D3: AddI2
  loc_B740D4: CI4UI1
  loc_B740D5: ImpAdLdRf MemVar_C0F10C
  loc_B740D8: AryLdPr
  loc_B740DB: MemLdStr global_0
  loc_B740DE: CVarStr var_B0
  loc_B740E1: FStVarCopy
  loc_B740E5: ILdRf var_A0
  loc_B740E8: ImpAdCallFPR4 push push Val()
  loc_B740ED: FStFPR8 var_1C4
  loc_B740F0: LitVarI2 var_E4, 0
  loc_B740F5: PopAdLdVar
  loc_B740F6: LitI4 0
  loc_B740FB: LitI4 -1
  loc_B74100: LitVarStr var_B0, "."
  loc_B74105: FStVarCopyObj var_144
  loc_B74108: FLdRfVar var_144
  loc_B7410B: ILdI2 arg_10
  loc_B7410E: CI4UI1
  loc_B7410F: ImpAdLdI4 MemVar_C0F100
  loc_B74112: Ary1LdPr
  loc_B74113: MemLdStr global_296
  loc_B74116: FLdRfVar var_154
  loc_B74119: ImpAdCallFPR4  = Split(, , , )
  loc_B7411E: FLdRfVar var_154
  loc_B74121: VarIndexLdVar
  loc_B74127: CStrVarVal var_19C
  loc_B7412B: ImpAdCallFPR4 push push Val()
  loc_B74130: FLdFPR8 var_1C4
  loc_B74133: SubR4
  loc_B74134: CVarR8
  loc_B74138: FStVar var_1AC
  loc_B7413C: FFree1Str var_19C
  loc_B7413F: FFreeVar var_144 = "": var_154 = ""
  loc_B74148: FLdRfVar var_1AC
  loc_B7414B: LitVarI2 var_B0, 1
  loc_B74150: HardType
  loc_B74151: GtVar var_144
  loc_B74155: FLdRfVar var_1AC
  loc_B74158: LitVarI2 var_E4, -1
  loc_B7415D: HardType
  loc_B7415E: LtVar var_154
  loc_B74162: OrVar var_164
  loc_B74166: CBoolVarNull
  loc_B74168: BranchF loc_B7416F
  loc_B7416B: ExitProcCb
  loc_B7416F: FLdRfVar var_198
  loc_B74172: LitVarStr var_B0, vbNullString
  loc_B74177: HardType
  loc_B74178: EqVar var_144
  loc_B7417C: FLdRfVar var_198
  loc_B7417F: LitVarStr var_E4, "S"
  loc_B74184: HardType
  loc_B74185: EqVar var_154
  loc_B74189: FLdI2 arg_18
  loc_B7418C: LitI2_Byte 1
  loc_B7418E: AddI2
  loc_B7418F: FLdI2 arg_20
  loc_B74192: EqI2
  loc_B74193: CVarBoolI2 var_F4
  loc_B74197: AndVar var_164
  loc_B7419B: FLdI2 arg_14
  loc_B7419E: FLdI2 arg_1C
  loc_B741A1: EqI2
  loc_B741A2: CVarBoolI2 var_1BC
  loc_B741A6: AndVar var_178
  loc_B741AA: OrVar var_188
  loc_B741AE: FLdRfVar var_A0
  loc_B741B1: CVarRef
  loc_B741B6: ImpAdCallI2 IsNumeric()
  loc_B741BB: LitI2_Byte &HFF
  loc_B741BD: EqI2
  loc_B741BE: CVarBoolI2 var_1E4
  loc_B741C2: AndVar var_1F4
  loc_B741C6: CBoolVarNull
  loc_B741C8: FFreeVar var_F4 = "": var_1BC = ""
  loc_B741D1: BranchF loc_B74255
  loc_B741D4: FLdI2 arg_14
  loc_B741D7: CStrUI1
  loc_B741D9: FStStrNoPop var_19C
  loc_B741DC: LitStr ","
  loc_B741DF: ConcatStr
  loc_B741E0: FStStrNoPop var_1F8
  loc_B741E3: FLdI2 arg_18
  loc_B741E6: LitI2_Byte 1
  loc_B741E8: AddI2
  loc_B741E9: CStrUI1
  loc_B741EB: FStStrNoPop var_1FC
  loc_B741EE: ConcatStr
  loc_B741EF: CVarStr var_144
  loc_B741F2: FStVar var_94
  loc_B741F6: FFreeStr var_19C = "": var_1F8 = ""
  loc_B741FF: LitStr "4,4"
  loc_B74202: ILdI2 arg_10
  loc_B74205: CI4UI1
  loc_B74206: ImpAdLdI4 MemVar_C0F100
  loc_B74209: Ary1LdPr
  loc_B7420A: MemStStrCopy
  loc_B7420E: ILdRf var_A0
  loc_B74211: LitStr ".0"
  loc_B74214: ConcatStr
  loc_B74215: FStStrNoPop var_19C
  loc_B74218: ILdI2 arg_10
  loc_B7421B: CI4UI1
  loc_B7421C: ImpAdLdI4 MemVar_C0F100
  loc_B7421F: Ary1LdPr
  loc_B74220: MemStStrCopy
  loc_B74224: FFree1Str var_19C
  loc_B74227: LitI4 0
  loc_B7422C: ILdI2 arg_10
  loc_B7422F: CI4UI1
  loc_B74230: ImpAdLdI4 MemVar_C0F100
  loc_B74233: Ary1LdPr
  loc_B74234: MemStI4 global_332
  loc_B74237: LitI2_Byte 0
  loc_B74239: ILdI2 arg_10
  loc_B7423C: CI4UI1
  loc_B7423D: ImpAdLdI4 MemVar_C0F100
  loc_B74240: Ary1LdPr
  loc_B74241: MemStI2 global_308
  loc_B74244: LitI2_Byte 0
  loc_B74246: ILdI2 arg_10
  loc_B74249: CI4UI1
  loc_B7424A: ImpAdLdI4 MemVar_C0F100
  loc_B7424D: Ary1LdPr
  loc_B7424E: MemStI2 global_312
  loc_B74251: ExitProcCb
  loc_B74255: FLdI2 arg_18
  loc_B74258: FLdI2 arg_20
  loc_B7425B: GtI2
  loc_B7425C: BranchF loc_B74502
  loc_B7425F: FLdRfVar var_C0
  loc_B74262: CI4Var
  loc_B74264: ImpAdLdI4 MemVar_C0F104
  loc_B74267: Ary1LdPr
  loc_B74268: MemLdFPR8 global_28
  loc_B7426B: FLdI2 arg_14
  loc_B7426E: CR8I2
  loc_B7426F: EqR4
  loc_B74270: FLdRfVar var_C0
  loc_B74273: CI4Var
  loc_B74275: ImpAdLdI4 MemVar_C0F104
  loc_B74278: Ary1LdPr
  loc_B74279: MemLdFPR8 global_36
  loc_B7427C: FLdI2 arg_18
  loc_B7427F: LitI2_Byte 1
  loc_B74281: SubI2
  loc_B74282: CR8I2
  loc_B74283: EqR4
  loc_B74284: AndI4
  loc_B74285: BranchF loc_B7428C
  loc_B74288: ExitProcCb
  loc_B7428C: LitVarI2 var_F4, 1
  loc_B74291: FLdRfVar var_D0
  loc_B74294: FLdRfVar var_D4
  loc_B74297: ImpAdLdRf MemVar_C0F018
  loc_B7429A: NewIfNullPr frmMain
  loc_B7429D: from_stack_1v = frmMain.SockIGet()
  loc_B742A2: ILdRf var_D4
  loc_B742A5: CVarI4
  loc_B742A9: ForVar var_2DC
  loc_B742AF: FLdRfVar var_D0
  loc_B742B2: CI4Var
  loc_B742B4: ImpAdLdI4 MemVar_C0F100
  loc_B742B7: Ary1LdPr
  loc_B742B8: MemLdI2 global_4
  loc_B742BB: ILdI2 arg_10
  loc_B742BE: CI4UI1
  loc_B742BF: ImpAdLdI4 MemVar_C0F100
  loc_B742C2: Ary1LdPr
  loc_B742C3: MemLdI2 global_4
  loc_B742C6: EqI2
  loc_B742C7: BranchF loc_B742F7
  loc_B742CA: FLdRfVar var_D0
  loc_B742CD: CI4Var
  loc_B742CF: ImpAdLdI4 MemVar_C0F100
  loc_B742D2: Ary1LdPr
  loc_B742D3: MemLdFPR8 global_232
  loc_B742D6: FLdI2 arg_14
  loc_B742D9: CR8I2
  loc_B742DA: EqR4
  loc_B742DB: FLdRfVar var_D0
  loc_B742DE: CI4Var
  loc_B742E0: ImpAdLdI4 MemVar_C0F100
  loc_B742E3: Ary1LdPr
  loc_B742E4: MemLdFPR8 global_240
  loc_B742E7: FLdI2 arg_18
  loc_B742EA: LitI2_Byte 1
  loc_B742EC: SubI2
  loc_B742ED: CR8I2
  loc_B742EE: EqR4
  loc_B742EF: AndI4
  loc_B742F0: BranchF loc_B742F7
  loc_B742F3: ExitProcCb
  loc_B742F7: FLdRfVar var_D0
  loc_B742FA: NextStepVar var_2DC
  loc_B74300: LitI4 &HD
  loc_B74305: FLdRfVar var_144
  loc_B74308: ImpAdCallFPR4  = Chr()
  loc_B7430D: FLdI2 arg_18
  loc_B74310: LitI2_Byte 1
  loc_B74312: SubI2
  loc_B74313: CVarI2 var_B0
  loc_B74316: PopAdLdVar
  loc_B74317: LitI4 0
  loc_B7431C: LitI4 -1
  loc_B74321: FLdRfVar var_144
  loc_B74324: ILdRf var_98
  loc_B74327: FLdRfVar var_154
  loc_B7432A: ImpAdCallFPR4  = Split(, , , )
  loc_B7432F: FLdRfVar var_154
  loc_B74332: VarIndexLdRfVarLock
  loc_B7433A: FStR4 var_D4
  loc_B7433D: LitVarI2 var_178, 1
  loc_B74342: FLdI2 arg_14
  loc_B74345: LitI2_Byte 1
  loc_B74347: AddI2
  loc_B74348: CI4UI1
  loc_B74349: ILdRf var_D4
  loc_B7434C: FLdRfVar var_188
  loc_B7434F: ImpAdCallFPR4  = Mid(, , )
  loc_B74354: AryUnlock
  loc_B74357: FLdRfVar var_188
  loc_B7435A: CStrVarTmp
  loc_B7435B: FStStr var_A0
  loc_B7435E: FFreeVar var_144 = "": var_154 = "": var_164 = "": var_178 = ""
  loc_B7436B: ILdI2 arg_10
  loc_B7436E: CI4UI1
  loc_B7436F: ImpAdLdI4 MemVar_C0F100
  loc_B74372: Ary1LdPr
  loc_B74373: MemLdI2 global_4
  loc_B74376: CI4UI1
  loc_B74377: FLdI2 arg_14
  loc_B7437A: CI4UI1
  loc_B7437B: FLdI2 arg_18
  loc_B7437E: LitI2_Byte 1
  loc_B74380: SubI2
  loc_B74381: CI4UI1
  loc_B74382: ImpAdLdRf MemVar_C0F10C
  loc_B74385: AryLdPr
  loc_B74388: MemLdStr global_0
  loc_B7438B: CVarStr var_B0
  loc_B7438E: FStVarCopy
  loc_B74392: ILdRf var_A0
  loc_B74395: ImpAdCallFPR4 push push Val()
  loc_B7439A: FStFPR8 var_1C4
  loc_B7439D: LitVarI2 var_E4, 0
  loc_B743A2: PopAdLdVar
  loc_B743A3: LitI4 0
  loc_B743A8: LitI4 -1
  loc_B743AD: LitVarStr var_B0, "."
  loc_B743B2: FStVarCopyObj var_144
  loc_B743B5: FLdRfVar var_144
  loc_B743B8: ILdI2 arg_10
  loc_B743BB: CI4UI1
  loc_B743BC: ImpAdLdI4 MemVar_C0F100
  loc_B743BF: Ary1LdPr
  loc_B743C0: MemLdStr global_296
  loc_B743C3: FLdRfVar var_154
  loc_B743C6: ImpAdCallFPR4  = Split(, , , )
  loc_B743CB: FLdRfVar var_154
  loc_B743CE: VarIndexLdVar
  loc_B743D4: CStrVarVal var_19C
  loc_B743D8: ImpAdCallFPR4 push push Val()
  loc_B743DD: FLdFPR8 var_1C4
  loc_B743E0: SubR4
  loc_B743E1: CVarR8
  loc_B743E5: FStVar var_1AC
  loc_B743E9: FFree1Str var_19C
  loc_B743EC: FFreeVar var_144 = "": var_154 = ""
  loc_B743F5: FLdRfVar var_1AC
  loc_B743F8: LitVarI2 var_B0, 1
  loc_B743FD: HardType
  loc_B743FE: GtVar var_144
  loc_B74402: FLdRfVar var_1AC
  loc_B74405: LitVarI2 var_E4, -1
  loc_B7440A: HardType
  loc_B7440B: LtVar var_154
  loc_B7440F: OrVar var_164
  loc_B74413: CBoolVarNull
  loc_B74415: BranchF loc_B7441C
  loc_B74418: ExitProcCb
  loc_B7441C: FLdRfVar var_198
  loc_B7441F: LitVarStr var_B0, vbNullString
  loc_B74424: HardType
  loc_B74425: EqVar var_144
  loc_B74429: FLdRfVar var_198
  loc_B7442C: LitVarStr var_E4, "S"
  loc_B74431: HardType
  loc_B74432: EqVar var_154
  loc_B74436: FLdI2 arg_18
  loc_B74439: LitI2_Byte 1
  loc_B7443B: SubI2
  loc_B7443C: FLdI2 arg_20
  loc_B7443F: EqI2
  loc_B74440: CVarBoolI2 var_F4
  loc_B74444: AndVar var_164
  loc_B74448: FLdI2 arg_14
  loc_B7444B: FLdI2 arg_1C
  loc_B7444E: EqI2
  loc_B7444F: CVarBoolI2 var_1BC
  loc_B74453: AndVar var_178
  loc_B74457: OrVar var_188
  loc_B7445B: FLdRfVar var_A0
  loc_B7445E: CVarRef
  loc_B74463: ImpAdCallI2 IsNumeric()
  loc_B74468: LitI2_Byte &HFF
  loc_B7446A: EqI2
  loc_B7446B: CVarBoolI2 var_1E4
  loc_B7446F: AndVar var_1F4
  loc_B74473: CBoolVarNull
  loc_B74475: FFreeVar var_F4 = "": var_1BC = ""
  loc_B7447E: BranchF loc_B74502
  loc_B74481: FLdI2 arg_14
  loc_B74484: CStrUI1
  loc_B74486: FStStrNoPop var_19C
  loc_B74489: LitStr ","
  loc_B7448C: ConcatStr
  loc_B7448D: FStStrNoPop var_1F8
  loc_B74490: FLdI2 arg_18
  loc_B74493: LitI2_Byte 1
  loc_B74495: SubI2
  loc_B74496: CStrUI1
  loc_B74498: FStStrNoPop var_1FC
  loc_B7449B: ConcatStr
  loc_B7449C: CVarStr var_144
  loc_B7449F: FStVar var_94
  loc_B744A3: FFreeStr var_19C = "": var_1F8 = ""
  loc_B744AC: LitStr "0,0"
  loc_B744AF: ILdI2 arg_10
  loc_B744B2: CI4UI1
  loc_B744B3: ImpAdLdI4 MemVar_C0F100
  loc_B744B6: Ary1LdPr
  loc_B744B7: MemStStrCopy
  loc_B744BB: ILdRf var_A0
  loc_B744BE: LitStr ".0"
  loc_B744C1: ConcatStr
  loc_B744C2: FStStrNoPop var_19C
  loc_B744C5: ILdI2 arg_10
  loc_B744C8: CI4UI1
  loc_B744C9: ImpAdLdI4 MemVar_C0F100
  loc_B744CC: Ary1LdPr
  loc_B744CD: MemStStrCopy
  loc_B744D1: FFree1Str var_19C
  loc_B744D4: LitI4 0
  loc_B744D9: ILdI2 arg_10
  loc_B744DC: CI4UI1
  loc_B744DD: ImpAdLdI4 MemVar_C0F100
  loc_B744E0: Ary1LdPr
  loc_B744E1: MemStI4 global_332
  loc_B744E4: LitI2_Byte 0
  loc_B744E6: ILdI2 arg_10
  loc_B744E9: CI4UI1
  loc_B744EA: ImpAdLdI4 MemVar_C0F100
  loc_B744ED: Ary1LdPr
  loc_B744EE: MemStI2 global_308
  loc_B744F1: LitI2_Byte 0
  loc_B744F3: ILdI2 arg_10
  loc_B744F6: CI4UI1
  loc_B744F7: ImpAdLdI4 MemVar_C0F100
  loc_B744FA: Ary1LdPr
  loc_B744FB: MemStI2 global_312
  loc_B744FE: ExitProcCb
  loc_B74502: ExitProcCb
  loc_B74506: ExitProcCb
  loc_B7450A: FLdRfVar arg_7060
End Function

Private Function Proc_6_3_B6A17C(arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) 'B6A17C
  'Data Table: 53AAA8
  loc_B69024: ILdRf arg_24
  loc_B69027: FStStrCopy var_98
  loc_B6902A: LitVarStr var_B0, "NoPath"
  loc_B6902F: FStVarCopy
  loc_B69033: OnErrorGoto loc_B6A178
  loc_B69036: FLdI2 arg_14
  loc_B69039: FLdI2 arg_1C
  loc_B6903C: GtI2
  loc_B6903D: FLdI2 arg_18
  loc_B69040: FLdI2 arg_20
  loc_B69043: GtI2
  loc_B69044: AndI4
  loc_B69045: BranchF loc_B69262
  loc_B69048: LitVarI2 var_E4, 1
  loc_B6904D: FLdRfVar var_C0
  loc_B69050: FLdRfVar var_C4
  loc_B69053: ImpAdLdRf MemVar_C0F018
  loc_B69056: NewIfNullPr frmMain
  loc_B69059: from_stack_1v = frmMain.SockIGet()
  loc_B6905E: ILdRf var_C4
  loc_B69061: CVarI4
  loc_B69065: ForVar var_104
  loc_B6906B: FLdRfVar var_C0
  loc_B6906E: CI4Var
  loc_B69070: ImpAdLdI4 MemVar_C0F100
  loc_B69073: Ary1LdPr
  loc_B69074: MemLdI2 global_4
  loc_B69077: ILdI2 arg_10
  loc_B6907A: CI4UI1
  loc_B6907B: ImpAdLdI4 MemVar_C0F104
  loc_B6907E: Ary1LdPr
  loc_B6907F: MemLdI2 global_12
  loc_B69082: EqI2
  loc_B69083: BranchF loc_B690B6
  loc_B69086: FLdRfVar var_C0
  loc_B69089: CI4Var
  loc_B6908B: ImpAdLdI4 MemVar_C0F100
  loc_B6908E: Ary1LdPr
  loc_B6908F: MemLdFPR8 global_232
  loc_B69092: FLdI2 arg_14
  loc_B69095: LitI2_Byte 1
  loc_B69097: SubI2
  loc_B69098: CR8I2
  loc_B69099: EqR4
  loc_B6909A: FLdRfVar var_C0
  loc_B6909D: CI4Var
  loc_B6909F: ImpAdLdI4 MemVar_C0F100
  loc_B690A2: Ary1LdPr
  loc_B690A3: MemLdFPR8 global_240
  loc_B690A6: FLdI2 arg_18
  loc_B690A9: LitI2_Byte 1
  loc_B690AB: SubI2
  loc_B690AC: CR8I2
  loc_B690AD: EqR4
  loc_B690AE: AndI4
  loc_B690AF: BranchF loc_B690B6
  loc_B690B2: ExitProcCb
  loc_B690B6: FLdRfVar var_C0
  loc_B690B9: NextStepVar var_104
  loc_B690BF: LitI4 &HD
  loc_B690C4: FLdRfVar var_114
  loc_B690C7: ImpAdCallFPR4  = Chr()
  loc_B690CC: FLdI2 arg_18
  loc_B690CF: LitI2_Byte 1
  loc_B690D1: SubI2
  loc_B690D2: CVarI2 var_B0
  loc_B690D5: PopAdLdVar
  loc_B690D6: LitI4 0
  loc_B690DB: LitI4 -1
  loc_B690E0: FLdRfVar var_114
  loc_B690E3: ILdRf var_98
  loc_B690E6: FLdRfVar var_124
  loc_B690E9: ImpAdCallFPR4  = Split(, , , )
  loc_B690EE: FLdRfVar var_124
  loc_B690F1: VarIndexLdRfVarLock
  loc_B690F9: FStR4 var_C4
  loc_B690FC: LitVarI2 var_148, 1
  loc_B69101: FLdI2 arg_14
  loc_B69104: CI4UI1
  loc_B69105: ILdRf var_C4
  loc_B69108: FLdRfVar var_158
  loc_B6910B: ImpAdCallFPR4  = Mid(, , )
  loc_B69110: AryUnlock
  loc_B69113: FLdRfVar var_158
  loc_B69116: CStrVarTmp
  loc_B69117: FStStr var_A0
  loc_B6911A: FFreeVar var_114 = "": var_124 = "": var_134 = "": var_148 = ""
  loc_B69127: ILdI2 arg_10
  loc_B6912A: CI4UI1
  loc_B6912B: ImpAdLdI4 MemVar_C0F104
  loc_B6912E: Ary1LdPr
  loc_B6912F: MemLdI2 global_12
  loc_B69132: CI4UI1
  loc_B69133: FLdI2 arg_14
  loc_B69136: LitI2_Byte 1
  loc_B69138: SubI2
  loc_B69139: CI4UI1
  loc_B6913A: FLdI2 arg_18
  loc_B6913D: LitI2_Byte 1
  loc_B6913F: SubI2
  loc_B69140: CI4UI1
  loc_B69141: ImpAdLdRf MemVar_C0F10C
  loc_B69144: AryLdPr
  loc_B69147: MemLdStr global_0
  loc_B6914A: CVarStr var_B0
  loc_B6914D: FStVarCopy
  loc_B69151: ILdRf var_A0
  loc_B69154: ImpAdCallFPR4 push push Val()
  loc_B69159: FStFPR8 var_194
  loc_B6915C: LitVarI2 var_D4, 0
  loc_B69161: PopAdLdVar
  loc_B69162: LitI4 0
  loc_B69167: LitI4 -1
  loc_B6916C: LitVarStr var_B0, "."
  loc_B69171: FStVarCopyObj var_114
  loc_B69174: FLdRfVar var_114
  loc_B69177: ILdI2 arg_10
  loc_B6917A: CI4UI1
  loc_B6917B: ImpAdLdI4 MemVar_C0F104
  loc_B6917E: Ary1LdPr
  loc_B6917F: MemLdStr global_16
  loc_B69182: FLdRfVar var_124
  loc_B69185: ImpAdCallFPR4  = Split(, , , )
  loc_B6918A: FLdRfVar var_124
  loc_B6918D: VarIndexLdVar
  loc_B69193: CStrVarVal var_16C
  loc_B69197: ImpAdCallFPR4 push push Val()
  loc_B6919C: FLdFPR8 var_194
  loc_B6919F: SubR4
  loc_B691A0: CVarR8
  loc_B691A4: FStVar var_17C
  loc_B691A8: FFree1Str var_16C
  loc_B691AB: FFreeVar var_114 = "": var_124 = ""
  loc_B691B4: FLdRfVar var_17C
  loc_B691B7: LitVarI2 var_B0, 1
  loc_B691BC: HardType
  loc_B691BD: GtVar var_114
  loc_B691C1: FLdRfVar var_17C
  loc_B691C4: LitVarI2 var_D4, -1
  loc_B691C9: HardType
  loc_B691CA: LtVar var_124
  loc_B691CE: OrVar var_134
  loc_B691D2: CBoolVarNull
  loc_B691D4: BranchF loc_B691DB
  loc_B691D7: ExitProcCb
  loc_B691DB: FLdRfVar var_168
  loc_B691DE: LitVarStr var_B0, vbNullString
  loc_B691E3: HardType
  loc_B691E4: EqVar var_114
  loc_B691E8: FLdRfVar var_A0
  loc_B691EB: CVarRef
  loc_B691F0: ImpAdCallI2 IsNumeric()
  loc_B691F5: LitI2_Byte &HFF
  loc_B691F7: EqI2
  loc_B691F8: CVarBoolI2 var_E4
  loc_B691FC: AndVar var_124
  loc_B69200: CBoolVarNull
  loc_B69202: FFree1Var var_E4 = ""
  loc_B69205: BranchF loc_B69262
  loc_B69208: FLdI2 arg_14
  loc_B6920B: LitI2_Byte 1
  loc_B6920D: SubI2
  loc_B6920E: CStrUI1
  loc_B69210: FStStrNoPop var_16C
  loc_B69213: LitStr ","
  loc_B69216: ConcatStr
  loc_B69217: FStStrNoPop var_198
  loc_B6921A: FLdI2 arg_18
  loc_B6921D: LitI2_Byte 1
  loc_B6921F: SubI2
  loc_B69220: CStrUI1
  loc_B69222: FStStrNoPop var_19C
  loc_B69225: ConcatStr
  loc_B69226: CVarStr var_114
  loc_B69229: FStVar var_94
  loc_B6922D: FFreeStr var_16C = "": var_198 = ""
  loc_B69236: LitStr "7,7"
  loc_B69239: ILdI2 arg_10
  loc_B6923C: CI4UI1
  loc_B6923D: ImpAdLdI4 MemVar_C0F104
  loc_B69240: Ary1LdPr
  loc_B69241: MemStStrCopy
  loc_B69245: ILdRf var_A0
  loc_B69248: LitStr ".0"
  loc_B6924B: ConcatStr
  loc_B6924C: FStStrNoPop var_16C
  loc_B6924F: ILdI2 arg_10
  loc_B69252: CI4UI1
  loc_B69253: ImpAdLdI4 MemVar_C0F104
  loc_B69256: Ary1LdPr
  loc_B69257: MemStStrCopy
  loc_B6925B: FFree1Str var_16C
  loc_B6925E: ExitProcCb
  loc_B69262: FLdI2 arg_14
  loc_B69265: FLdI2 arg_1C
  loc_B69268: LtI2
  loc_B69269: FLdI2 arg_18
  loc_B6926C: FLdI2 arg_20
  loc_B6926F: LtI2
  loc_B69270: AndI4
  loc_B69271: BranchF loc_B69491
  loc_B69274: LitVarI2 var_E4, 1
  loc_B69279: FLdRfVar var_C0
  loc_B6927C: FLdRfVar var_C4
  loc_B6927F: ImpAdLdRf MemVar_C0F018
  loc_B69282: NewIfNullPr frmMain
  loc_B69285: from_stack_1v = frmMain.SockIGet()
  loc_B6928A: ILdRf var_C4
  loc_B6928D: CVarI4
  loc_B69291: ForVar var_1BC
  loc_B69297: FLdRfVar var_C0
  loc_B6929A: CI4Var
  loc_B6929C: ImpAdLdI4 MemVar_C0F100
  loc_B6929F: Ary1LdPr
  loc_B692A0: MemLdI2 global_4
  loc_B692A3: ILdI2 arg_10
  loc_B692A6: CI4UI1
  loc_B692A7: ImpAdLdI4 MemVar_C0F104
  loc_B692AA: Ary1LdPr
  loc_B692AB: MemLdI2 global_12
  loc_B692AE: EqI2
  loc_B692AF: BranchF loc_B692E2
  loc_B692B2: FLdRfVar var_C0
  loc_B692B5: CI4Var
  loc_B692B7: ImpAdLdI4 MemVar_C0F100
  loc_B692BA: Ary1LdPr
  loc_B692BB: MemLdFPR8 global_232
  loc_B692BE: FLdI2 arg_14
  loc_B692C1: LitI2_Byte 1
  loc_B692C3: AddI2
  loc_B692C4: CR8I2
  loc_B692C5: EqR4
  loc_B692C6: FLdRfVar var_C0
  loc_B692C9: CI4Var
  loc_B692CB: ImpAdLdI4 MemVar_C0F100
  loc_B692CE: Ary1LdPr
  loc_B692CF: MemLdFPR8 global_240
  loc_B692D2: FLdI2 arg_18
  loc_B692D5: LitI2_Byte 1
  loc_B692D7: AddI2
  loc_B692D8: CR8I2
  loc_B692D9: EqR4
  loc_B692DA: AndI4
  loc_B692DB: BranchF loc_B692E2
  loc_B692DE: ExitProcCb
  loc_B692E2: FLdRfVar var_C0
  loc_B692E5: NextStepVar var_1BC
  loc_B692EB: LitI4 &HD
  loc_B692F0: FLdRfVar var_114
  loc_B692F3: ImpAdCallFPR4  = Chr()
  loc_B692F8: FLdI2 arg_18
  loc_B692FB: LitI2_Byte 1
  loc_B692FD: AddI2
  loc_B692FE: CVarI2 var_B0
  loc_B69301: PopAdLdVar
  loc_B69302: LitI4 0
  loc_B69307: LitI4 -1
  loc_B6930C: FLdRfVar var_114
  loc_B6930F: ILdRf var_98
  loc_B69312: FLdRfVar var_124
  loc_B69315: ImpAdCallFPR4  = Split(, , , )
  loc_B6931A: FLdRfVar var_124
  loc_B6931D: VarIndexLdRfVarLock
  loc_B69325: FStR4 var_C4
  loc_B69328: LitVarI2 var_148, 1
  loc_B6932D: FLdI2 arg_14
  loc_B69330: LitI2_Byte 2
  loc_B69332: AddI2
  loc_B69333: CI4UI1
  loc_B69334: ILdRf var_C4
  loc_B69337: FLdRfVar var_158
  loc_B6933A: ImpAdCallFPR4  = Mid(, , )
  loc_B6933F: AryUnlock
  loc_B69342: FLdRfVar var_158
  loc_B69345: CStrVarTmp
  loc_B69346: FStStr var_A0
  loc_B69349: FFreeVar var_114 = "": var_124 = "": var_134 = "": var_148 = ""
  loc_B69356: ILdI2 arg_10
  loc_B69359: CI4UI1
  loc_B6935A: ImpAdLdI4 MemVar_C0F104
  loc_B6935D: Ary1LdPr
  loc_B6935E: MemLdI2 global_12
  loc_B69361: CI4UI1
  loc_B69362: FLdI2 arg_14
  loc_B69365: LitI2_Byte 1
  loc_B69367: AddI2
  loc_B69368: CI4UI1
  loc_B69369: FLdI2 arg_18
  loc_B6936C: LitI2_Byte 1
  loc_B6936E: AddI2
  loc_B6936F: CI4UI1
  loc_B69370: ImpAdLdRf MemVar_C0F10C
  loc_B69373: AryLdPr
  loc_B69376: MemLdStr global_0
  loc_B69379: CVarStr var_B0
  loc_B6937C: FStVarCopy
  loc_B69380: ILdRf var_A0
  loc_B69383: ImpAdCallFPR4 push push Val()
  loc_B69388: FStFPR8 var_194
  loc_B6938B: LitVarI2 var_D4, 0
  loc_B69390: PopAdLdVar
  loc_B69391: LitI4 0
  loc_B69396: LitI4 -1
  loc_B6939B: LitVarStr var_B0, "."
  loc_B693A0: FStVarCopyObj var_114
  loc_B693A3: FLdRfVar var_114
  loc_B693A6: ILdI2 arg_10
  loc_B693A9: CI4UI1
  loc_B693AA: ImpAdLdI4 MemVar_C0F104
  loc_B693AD: Ary1LdPr
  loc_B693AE: MemLdStr global_16
  loc_B693B1: FLdRfVar var_124
  loc_B693B4: ImpAdCallFPR4  = Split(, , , )
  loc_B693B9: FLdRfVar var_124
  loc_B693BC: VarIndexLdVar
  loc_B693C2: CStrVarVal var_16C
  loc_B693C6: ImpAdCallFPR4 push push Val()
  loc_B693CB: FLdFPR8 var_194
  loc_B693CE: SubR4
  loc_B693CF: CVarR8
  loc_B693D3: FStVar var_17C
  loc_B693D7: FFree1Str var_16C
  loc_B693DA: FFreeVar var_114 = "": var_124 = ""
  loc_B693E3: FLdRfVar var_17C
  loc_B693E6: LitVarI2 var_B0, 1
  loc_B693EB: HardType
  loc_B693EC: GtVar var_114
  loc_B693F0: FLdRfVar var_17C
  loc_B693F3: LitVarI2 var_D4, -1
  loc_B693F8: HardType
  loc_B693F9: LtVar var_124
  loc_B693FD: OrVar var_134
  loc_B69401: CBoolVarNull
  loc_B69403: BranchF loc_B6940A
  loc_B69406: ExitProcCb
  loc_B6940A: FLdRfVar var_168
  loc_B6940D: LitVarStr var_B0, vbNullString
  loc_B69412: HardType
  loc_B69413: EqVar var_114
  loc_B69417: FLdRfVar var_A0
  loc_B6941A: CVarRef
  loc_B6941F: ImpAdCallI2 IsNumeric()
  loc_B69424: LitI2_Byte &HFF
  loc_B69426: EqI2
  loc_B69427: CVarBoolI2 var_E4
  loc_B6942B: AndVar var_124
  loc_B6942F: CBoolVarNull
  loc_B69431: FFree1Var var_E4 = ""
  loc_B69434: BranchF loc_B69491
  loc_B69437: FLdI2 arg_14
  loc_B6943A: LitI2_Byte 1
  loc_B6943C: AddI2
  loc_B6943D: CStrUI1
  loc_B6943F: FStStrNoPop var_16C
  loc_B69442: LitStr ","
  loc_B69445: ConcatStr
  loc_B69446: FStStrNoPop var_198
  loc_B69449: FLdI2 arg_18
  loc_B6944C: LitI2_Byte 1
  loc_B6944E: AddI2
  loc_B6944F: CStrUI1
  loc_B69451: FStStrNoPop var_19C
  loc_B69454: ConcatStr
  loc_B69455: CVarStr var_114
  loc_B69458: FStVar var_94
  loc_B6945C: FFreeStr var_16C = "": var_198 = ""
  loc_B69465: LitStr "3,3"
  loc_B69468: ILdI2 arg_10
  loc_B6946B: CI4UI1
  loc_B6946C: ImpAdLdI4 MemVar_C0F104
  loc_B6946F: Ary1LdPr
  loc_B69470: MemStStrCopy
  loc_B69474: ILdRf var_A0
  loc_B69477: LitStr ".0"
  loc_B6947A: ConcatStr
  loc_B6947B: FStStrNoPop var_16C
  loc_B6947E: ILdI2 arg_10
  loc_B69481: CI4UI1
  loc_B69482: ImpAdLdI4 MemVar_C0F104
  loc_B69485: Ary1LdPr
  loc_B69486: MemStStrCopy
  loc_B6948A: FFree1Str var_16C
  loc_B6948D: ExitProcCb
  loc_B69491: FLdI2 arg_14
  loc_B69494: FLdI2 arg_1C
  loc_B69497: GtI2
  loc_B69498: FLdI2 arg_18
  loc_B6949B: FLdI2 arg_20
  loc_B6949E: LtI2
  loc_B6949F: AndI4
  loc_B694A0: BranchF loc_B696D6
  loc_B694A3: LitVarI2 var_E4, 1
  loc_B694A8: FLdRfVar var_C0
  loc_B694AB: FLdRfVar var_C4
  loc_B694AE: ImpAdLdRf MemVar_C0F018
  loc_B694B1: NewIfNullPr frmMain
  loc_B694B4: from_stack_1v = frmMain.SockIGet()
  loc_B694B9: ILdRf var_C4
  loc_B694BC: CVarI4
  loc_B694C0: ForVar var_1DC
  loc_B694C6: FLdRfVar var_C0
  loc_B694C9: CI4Var
  loc_B694CB: ImpAdLdI4 MemVar_C0F100
  loc_B694CE: Ary1LdPr
  loc_B694CF: MemLdI2 global_4
  loc_B694D2: ILdI2 arg_10
  loc_B694D5: CI4UI1
  loc_B694D6: ImpAdLdI4 MemVar_C0F104
  loc_B694D9: Ary1LdPr
  loc_B694DA: MemLdI2 global_12
  loc_B694DD: EqI2
  loc_B694DE: BranchF loc_B69511
  loc_B694E1: FLdRfVar var_C0
  loc_B694E4: CI4Var
  loc_B694E6: ImpAdLdI4 MemVar_C0F100
  loc_B694E9: Ary1LdPr
  loc_B694EA: MemLdFPR8 global_232
  loc_B694ED: FLdI2 arg_14
  loc_B694F0: LitI2_Byte 1
  loc_B694F2: SubI2
  loc_B694F3: CR8I2
  loc_B694F4: EqR4
  loc_B694F5: FLdRfVar var_C0
  loc_B694F8: CI4Var
  loc_B694FA: ImpAdLdI4 MemVar_C0F100
  loc_B694FD: Ary1LdPr
  loc_B694FE: MemLdFPR8 global_240
  loc_B69501: FLdI2 arg_18
  loc_B69504: LitI2_Byte 1
  loc_B69506: AddI2
  loc_B69507: CR8I2
  loc_B69508: EqR4
  loc_B69509: AndI4
  loc_B6950A: BranchF loc_B69511
  loc_B6950D: ExitProcCb
  loc_B69511: FLdRfVar var_C0
  loc_B69514: NextStepVar var_1DC
  loc_B6951A: LitI4 &HD
  loc_B6951F: FLdRfVar var_114
  loc_B69522: ImpAdCallFPR4  = Chr()
  loc_B69527: FLdI2 arg_18
  loc_B6952A: LitI2_Byte 1
  loc_B6952C: AddI2
  loc_B6952D: CVarI2 var_B0
  loc_B69530: PopAdLdVar
  loc_B69531: LitI4 0
  loc_B69536: LitI4 -1
  loc_B6953B: FLdRfVar var_114
  loc_B6953E: ILdRf var_98
  loc_B69541: FLdRfVar var_124
  loc_B69544: ImpAdCallFPR4  = Split(, , , )
  loc_B69549: FLdRfVar var_124
  loc_B6954C: VarIndexLdRfVarLock
  loc_B69554: FStR4 var_C4
  loc_B69557: LitVarI2 var_148, 1
  loc_B6955C: FLdI2 arg_14
  loc_B6955F: CI4UI1
  loc_B69560: ILdRf var_C4
  loc_B69563: FLdRfVar var_158
  loc_B69566: ImpAdCallFPR4  = Mid(, , )
  loc_B6956B: AryUnlock
  loc_B6956E: FLdRfVar var_158
  loc_B69571: CStrVarTmp
  loc_B69572: FStStr var_A0
  loc_B69575: FFreeVar var_114 = "": var_124 = "": var_134 = "": var_148 = ""
  loc_B69582: ILdI2 arg_10
  loc_B69585: CI4UI1
  loc_B69586: ImpAdLdI4 MemVar_C0F104
  loc_B69589: Ary1LdPr
  loc_B6958A: MemLdI2 global_12
  loc_B6958D: CI4UI1
  loc_B6958E: FLdI2 arg_14
  loc_B69591: LitI2_Byte 1
  loc_B69593: SubI2
  loc_B69594: CI4UI1
  loc_B69595: FLdI2 arg_18
  loc_B69598: LitI2_Byte 1
  loc_B6959A: AddI2
  loc_B6959B: CI4UI1
  loc_B6959C: ImpAdLdRf MemVar_C0F10C
  loc_B6959F: AryLdPr
  loc_B695A2: MemLdStr global_0
  loc_B695A5: CVarStr var_B0
  loc_B695A8: FStVarCopy
  loc_B695AC: ILdRf var_A0
  loc_B695AF: ImpAdCallFPR4 push push Val()
  loc_B695B4: FStFPR8 var_194
  loc_B695B7: LitVarI2 var_D4, 0
  loc_B695BC: PopAdLdVar
  loc_B695BD: LitI4 0
  loc_B695C2: LitI4 -1
  loc_B695C7: LitVarStr var_B0, "."
  loc_B695CC: FStVarCopyObj var_114
  loc_B695CF: FLdRfVar var_114
  loc_B695D2: ILdI2 arg_10
  loc_B695D5: CI4UI1
  loc_B695D6: ImpAdLdI4 MemVar_C0F104
  loc_B695D9: Ary1LdPr
  loc_B695DA: MemLdStr global_16
  loc_B695DD: FLdRfVar var_124
  loc_B695E0: ImpAdCallFPR4  = Split(, , , )
  loc_B695E5: FLdRfVar var_124
  loc_B695E8: VarIndexLdVar
  loc_B695EE: CStrVarVal var_16C
  loc_B695F2: ImpAdCallFPR4 push push Val()
  loc_B695F7: FLdFPR8 var_194
  loc_B695FA: SubR4
  loc_B695FB: CVarR8
  loc_B695FF: FStVar var_17C
  loc_B69603: FFree1Str var_16C
  loc_B69606: FFreeVar var_114 = "": var_124 = ""
  loc_B6960F: FLdRfVar var_17C
  loc_B69612: LitVarI2 var_B0, 1
  loc_B69617: HardType
  loc_B69618: GtVar var_114
  loc_B6961C: FLdRfVar var_17C
  loc_B6961F: LitVarI2 var_D4, -1
  loc_B69624: HardType
  loc_B69625: LtVar var_124
  loc_B69629: OrVar var_134
  loc_B6962D: CBoolVarNull
  loc_B6962F: BranchF loc_B69636
  loc_B69632: ExitProcCb
  loc_B69636: FLdRfVar var_168
  loc_B69639: LitVarStr var_B0, vbNullString
  loc_B6963E: HardType
  loc_B6963F: EqVar var_114
  loc_B69643: FLdRfVar var_A0
  loc_B69646: CVarRef
  loc_B6964B: ImpAdCallI2 IsNumeric()
  loc_B69650: LitI2_Byte &HFF
  loc_B69652: EqI2
  loc_B69653: CVarBoolI2 var_E4
  loc_B69657: AndVar var_124
  loc_B6965B: CBoolVarNull
  loc_B6965D: FFree1Var var_E4 = ""
  loc_B69660: BranchF loc_B696D6
  loc_B69663: FLdI2 arg_14
  loc_B69666: LitI2_Byte 1
  loc_B69668: SubI2
  loc_B69669: CStrUI1
  loc_B6966B: FStStrNoPop var_16C
  loc_B6966E: LitStr ","
  loc_B69671: ConcatStr
  loc_B69672: FStStrNoPop var_198
  loc_B69675: FLdI2 arg_18
  loc_B69678: LitI2_Byte 1
  loc_B6967A: AddI2
  loc_B6967B: CStrUI1
  loc_B6967D: FStStrNoPop var_19C
  loc_B69680: ConcatStr
  loc_B69681: CVarStr var_114
  loc_B69684: FStVar var_94
  loc_B69688: FFreeStr var_16C = "": var_198 = ""
  loc_B69691: LitStr "5,5"
  loc_B69694: ILdI2 arg_10
  loc_B69697: CI4UI1
  loc_B69698: ImpAdLdI4 MemVar_C0F104
  loc_B6969B: Ary1LdPr
  loc_B6969C: MemStStrCopy
  loc_B696A0: FLdRfVar var_A0
  loc_B696A3: CVarRef
  loc_B696A8: ImpAdCallI2 IsNumeric()
  loc_B696AD: LitI2_Byte 0
  loc_B696AF: EqI2
  loc_B696B0: BranchF loc_B696B9
  loc_B696B3: LitStr "1"
  loc_B696B6: FStStrCopy var_A0
  loc_B696B9: ILdRf var_A0
  loc_B696BC: LitStr ".0"
  loc_B696BF: ConcatStr
  loc_B696C0: FStStrNoPop var_16C
  loc_B696C3: ILdI2 arg_10
  loc_B696C6: CI4UI1
  loc_B696C7: ImpAdLdI4 MemVar_C0F104
  loc_B696CA: Ary1LdPr
  loc_B696CB: MemStStrCopy
  loc_B696CF: FFree1Str var_16C
  loc_B696D2: ExitProcCb
  loc_B696D6: FLdI2 arg_14
  loc_B696D9: FLdI2 arg_1C
  loc_B696DC: LtI2
  loc_B696DD: FLdI2 arg_18
  loc_B696E0: FLdI2 arg_20
  loc_B696E3: GtI2
  loc_B696E4: AndI4
  loc_B696E5: BranchF loc_B69905
  loc_B696E8: LitVarI2 var_E4, 1
  loc_B696ED: FLdRfVar var_C0
  loc_B696F0: FLdRfVar var_C4
  loc_B696F3: ImpAdLdRf MemVar_C0F018
  loc_B696F6: NewIfNullPr frmMain
  loc_B696F9: from_stack_1v = frmMain.SockIGet()
  loc_B696FE: ILdRf var_C4
  loc_B69701: CVarI4
  loc_B69705: ForVar var_1FC
  loc_B6970B: FLdRfVar var_C0
  loc_B6970E: CI4Var
  loc_B69710: ImpAdLdI4 MemVar_C0F100
  loc_B69713: Ary1LdPr
  loc_B69714: MemLdI2 global_4
  loc_B69717: ILdI2 arg_10
  loc_B6971A: CI4UI1
  loc_B6971B: ImpAdLdI4 MemVar_C0F104
  loc_B6971E: Ary1LdPr
  loc_B6971F: MemLdI2 global_12
  loc_B69722: EqI2
  loc_B69723: BranchF loc_B69756
  loc_B69726: FLdRfVar var_C0
  loc_B69729: CI4Var
  loc_B6972B: ImpAdLdI4 MemVar_C0F100
  loc_B6972E: Ary1LdPr
  loc_B6972F: MemLdFPR8 global_232
  loc_B69732: FLdI2 arg_14
  loc_B69735: LitI2_Byte 1
  loc_B69737: AddI2
  loc_B69738: CR8I2
  loc_B69739: EqR4
  loc_B6973A: FLdRfVar var_C0
  loc_B6973D: CI4Var
  loc_B6973F: ImpAdLdI4 MemVar_C0F100
  loc_B69742: Ary1LdPr
  loc_B69743: MemLdFPR8 global_240
  loc_B69746: FLdI2 arg_18
  loc_B69749: LitI2_Byte 1
  loc_B6974B: SubI2
  loc_B6974C: CR8I2
  loc_B6974D: EqR4
  loc_B6974E: AndI4
  loc_B6974F: BranchF loc_B69756
  loc_B69752: ExitProcCb
  loc_B69756: FLdRfVar var_C0
  loc_B69759: NextStepVar var_1FC
  loc_B6975F: LitI4 &HD
  loc_B69764: FLdRfVar var_114
  loc_B69767: ImpAdCallFPR4  = Chr()
  loc_B6976C: FLdI2 arg_18
  loc_B6976F: LitI2_Byte 1
  loc_B69771: SubI2
  loc_B69772: CVarI2 var_B0
  loc_B69775: PopAdLdVar
  loc_B69776: LitI4 0
  loc_B6977B: LitI4 -1
  loc_B69780: FLdRfVar var_114
  loc_B69783: ILdRf var_98
  loc_B69786: FLdRfVar var_124
  loc_B69789: ImpAdCallFPR4  = Split(, , , )
  loc_B6978E: FLdRfVar var_124
  loc_B69791: VarIndexLdRfVarLock
  loc_B69799: FStR4 var_C4
  loc_B6979C: LitVarI2 var_148, 1
  loc_B697A1: FLdI2 arg_14
  loc_B697A4: LitI2_Byte 2
  loc_B697A6: AddI2
  loc_B697A7: CI4UI1
  loc_B697A8: ILdRf var_C4
  loc_B697AB: FLdRfVar var_158
  loc_B697AE: ImpAdCallFPR4  = Mid(, , )
  loc_B697B3: AryUnlock
  loc_B697B6: FLdRfVar var_158
  loc_B697B9: CStrVarTmp
  loc_B697BA: FStStr var_A0
  loc_B697BD: FFreeVar var_114 = "": var_124 = "": var_134 = "": var_148 = ""
  loc_B697CA: ILdI2 arg_10
  loc_B697CD: CI4UI1
  loc_B697CE: ImpAdLdI4 MemVar_C0F104
  loc_B697D1: Ary1LdPr
  loc_B697D2: MemLdI2 global_12
  loc_B697D5: CI4UI1
  loc_B697D6: FLdI2 arg_14
  loc_B697D9: LitI2_Byte 1
  loc_B697DB: AddI2
  loc_B697DC: CI4UI1
  loc_B697DD: FLdI2 arg_18
  loc_B697E0: LitI2_Byte 1
  loc_B697E2: SubI2
  loc_B697E3: CI4UI1
  loc_B697E4: ImpAdLdRf MemVar_C0F10C
  loc_B697E7: AryLdPr
  loc_B697EA: MemLdStr global_0
  loc_B697ED: CVarStr var_B0
  loc_B697F0: FStVarCopy
  loc_B697F4: ILdRf var_A0
  loc_B697F7: ImpAdCallFPR4 push push Val()
  loc_B697FC: FStFPR8 var_194
  loc_B697FF: LitVarI2 var_D4, 0
  loc_B69804: PopAdLdVar
  loc_B69805: LitI4 0
  loc_B6980A: LitI4 -1
  loc_B6980F: LitVarStr var_B0, "."
  loc_B69814: FStVarCopyObj var_114
  loc_B69817: FLdRfVar var_114
  loc_B6981A: ILdI2 arg_10
  loc_B6981D: CI4UI1
  loc_B6981E: ImpAdLdI4 MemVar_C0F104
  loc_B69821: Ary1LdPr
  loc_B69822: MemLdStr global_16
  loc_B69825: FLdRfVar var_124
  loc_B69828: ImpAdCallFPR4  = Split(, , , )
  loc_B6982D: FLdRfVar var_124
  loc_B69830: VarIndexLdVar
  loc_B69836: CStrVarVal var_16C
  loc_B6983A: ImpAdCallFPR4 push push Val()
  loc_B6983F: FLdFPR8 var_194
  loc_B69842: SubR4
  loc_B69843: CVarR8
  loc_B69847: FStVar var_17C
  loc_B6984B: FFree1Str var_16C
  loc_B6984E: FFreeVar var_114 = "": var_124 = ""
  loc_B69857: FLdRfVar var_17C
  loc_B6985A: LitVarI2 var_B0, 1
  loc_B6985F: HardType
  loc_B69860: GtVar var_114
  loc_B69864: FLdRfVar var_17C
  loc_B69867: LitVarI2 var_D4, -1
  loc_B6986C: HardType
  loc_B6986D: LtVar var_124
  loc_B69871: OrVar var_134
  loc_B69875: CBoolVarNull
  loc_B69877: BranchF loc_B6987E
  loc_B6987A: ExitProcCb
  loc_B6987E: FLdRfVar var_168
  loc_B69881: LitVarStr var_B0, vbNullString
  loc_B69886: HardType
  loc_B69887: EqVar var_114
  loc_B6988B: FLdRfVar var_A0
  loc_B6988E: CVarRef
  loc_B69893: ImpAdCallI2 IsNumeric()
  loc_B69898: LitI2_Byte &HFF
  loc_B6989A: EqI2
  loc_B6989B: CVarBoolI2 var_E4
  loc_B6989F: AndVar var_124
  loc_B698A3: CBoolVarNull
  loc_B698A5: FFree1Var var_E4 = ""
  loc_B698A8: BranchF loc_B69905
  loc_B698AB: FLdI2 arg_14
  loc_B698AE: LitI2_Byte 1
  loc_B698B0: AddI2
  loc_B698B1: CStrUI1
  loc_B698B3: FStStrNoPop var_16C
  loc_B698B6: LitStr ","
  loc_B698B9: ConcatStr
  loc_B698BA: FStStrNoPop var_198
  loc_B698BD: FLdI2 arg_18
  loc_B698C0: LitI2_Byte 1
  loc_B698C2: SubI2
  loc_B698C3: CStrUI1
  loc_B698C5: FStStrNoPop var_19C
  loc_B698C8: ConcatStr
  loc_B698C9: CVarStr var_114
  loc_B698CC: FStVar var_94
  loc_B698D0: FFreeStr var_16C = "": var_198 = ""
  loc_B698D9: LitStr "1,1"
  loc_B698DC: ILdI2 arg_10
  loc_B698DF: CI4UI1
  loc_B698E0: ImpAdLdI4 MemVar_C0F104
  loc_B698E3: Ary1LdPr
  loc_B698E4: MemStStrCopy
  loc_B698E8: ILdRf var_A0
  loc_B698EB: LitStr ".0"
  loc_B698EE: ConcatStr
  loc_B698EF: FStStrNoPop var_16C
  loc_B698F2: ILdI2 arg_10
  loc_B698F5: CI4UI1
  loc_B698F6: ImpAdLdI4 MemVar_C0F104
  loc_B698F9: Ary1LdPr
  loc_B698FA: MemStStrCopy
  loc_B698FE: FFree1Str var_16C
  loc_B69901: ExitProcCb
  loc_B69905: FLdI2 arg_14
  loc_B69908: FLdI2 arg_1C
  loc_B6990B: GtI2
  loc_B6990C: BranchF loc_B69B1D
  loc_B6990F: LitVarI2 var_E4, 1
  loc_B69914: FLdRfVar var_C0
  loc_B69917: FLdRfVar var_C4
  loc_B6991A: ImpAdLdRf MemVar_C0F018
  loc_B6991D: NewIfNullPr frmMain
  loc_B69920: from_stack_1v = frmMain.SockIGet()
  loc_B69925: ILdRf var_C4
  loc_B69928: CVarI4
  loc_B6992C: ForVar var_21C
  loc_B69932: FLdRfVar var_C0
  loc_B69935: CI4Var
  loc_B69937: ImpAdLdI4 MemVar_C0F100
  loc_B6993A: Ary1LdPr
  loc_B6993B: MemLdI2 global_4
  loc_B6993E: ILdI2 arg_10
  loc_B69941: CI4UI1
  loc_B69942: ImpAdLdI4 MemVar_C0F104
  loc_B69945: Ary1LdPr
  loc_B69946: MemLdI2 global_12
  loc_B69949: EqI2
  loc_B6994A: BranchF loc_B6997A
  loc_B6994D: FLdRfVar var_C0
  loc_B69950: CI4Var
  loc_B69952: ImpAdLdI4 MemVar_C0F100
  loc_B69955: Ary1LdPr
  loc_B69956: MemLdFPR8 global_232
  loc_B69959: FLdI2 arg_14
  loc_B6995C: LitI2_Byte 1
  loc_B6995E: SubI2
  loc_B6995F: CR8I2
  loc_B69960: EqR4
  loc_B69961: FLdRfVar var_C0
  loc_B69964: CI4Var
  loc_B69966: ImpAdLdI4 MemVar_C0F100
  loc_B69969: Ary1LdPr
  loc_B6996A: MemLdFPR8 global_240
  loc_B6996D: FLdI2 arg_18
  loc_B69970: CR8I2
  loc_B69971: EqR4
  loc_B69972: AndI4
  loc_B69973: BranchF loc_B6997A
  loc_B69976: ExitProcCb
  loc_B6997A: FLdRfVar var_C0
  loc_B6997D: NextStepVar var_21C
  loc_B69983: LitI4 &HD
  loc_B69988: FLdRfVar var_114
  loc_B6998B: ImpAdCallFPR4  = Chr()
  loc_B69990: FLdRfVar arg_18
  loc_B69993: CDargRef
  loc_B69997: LitI4 0
  loc_B6999C: LitI4 -1
  loc_B699A1: FLdRfVar var_114
  loc_B699A4: ILdRf var_98
  loc_B699A7: FLdRfVar var_124
  loc_B699AA: ImpAdCallFPR4  = Split(, , , )
  loc_B699AF: FLdRfVar var_124
  loc_B699B2: VarIndexLdRfVarLock
  loc_B699BA: FStR4 var_C4
  loc_B699BD: LitVarI2 var_148, 1
  loc_B699C2: FLdI2 arg_14
  loc_B699C5: CI4UI1
  loc_B699C6: ILdRf var_C4
  loc_B699C9: FLdRfVar var_158
  loc_B699CC: ImpAdCallFPR4  = Mid(, , )
  loc_B699D1: AryUnlock
  loc_B699D4: FLdRfVar var_158
  loc_B699D7: CStrVarTmp
  loc_B699D8: FStStr var_A0
  loc_B699DB: FFreeVar var_114 = "": var_124 = "": var_134 = "": var_148 = ""
  loc_B699E8: ILdI2 arg_10
  loc_B699EB: CI4UI1
  loc_B699EC: ImpAdLdI4 MemVar_C0F104
  loc_B699EF: Ary1LdPr
  loc_B699F0: MemLdI2 global_12
  loc_B699F3: CI4UI1
  loc_B699F4: FLdI2 arg_14
  loc_B699F7: LitI2_Byte 1
  loc_B699F9: SubI2
  loc_B699FA: CI4UI1
  loc_B699FB: FLdI2 arg_18
  loc_B699FE: CI4UI1
  loc_B699FF: ImpAdLdRf MemVar_C0F10C
  loc_B69A02: AryLdPr
  loc_B69A05: MemLdStr global_0
  loc_B69A08: CVarStr var_B0
  loc_B69A0B: FStVarCopy
  loc_B69A0F: ILdRf var_A0
  loc_B69A12: ImpAdCallFPR4 push push Val()
  loc_B69A17: FStFPR8 var_194
  loc_B69A1A: LitVarI2 var_D4, 0
  loc_B69A1F: PopAdLdVar
  loc_B69A20: LitI4 0
  loc_B69A25: LitI4 -1
  loc_B69A2A: LitVarStr var_B0, "."
  loc_B69A2F: FStVarCopyObj var_114
  loc_B69A32: FLdRfVar var_114
  loc_B69A35: ILdI2 arg_10
  loc_B69A38: CI4UI1
  loc_B69A39: ImpAdLdI4 MemVar_C0F104
  loc_B69A3C: Ary1LdPr
  loc_B69A3D: MemLdStr global_16
  loc_B69A40: FLdRfVar var_124
  loc_B69A43: ImpAdCallFPR4  = Split(, , , )
  loc_B69A48: FLdRfVar var_124
  loc_B69A4B: VarIndexLdVar
  loc_B69A51: CStrVarVal var_16C
  loc_B69A55: ImpAdCallFPR4 push push Val()
  loc_B69A5A: FLdFPR8 var_194
  loc_B69A5D: SubR4
  loc_B69A5E: CVarR8
  loc_B69A62: FStVar var_17C
  loc_B69A66: FFree1Str var_16C
  loc_B69A69: FFreeVar var_114 = "": var_124 = ""
  loc_B69A72: FLdRfVar var_17C
  loc_B69A75: LitVarI2 var_B0, 1
  loc_B69A7A: HardType
  loc_B69A7B: GtVar var_114
  loc_B69A7F: FLdRfVar var_17C
  loc_B69A82: LitVarI2 var_D4, -1
  loc_B69A87: HardType
  loc_B69A88: LtVar var_124
  loc_B69A8C: OrVar var_134
  loc_B69A90: CBoolVarNull
  loc_B69A92: BranchF loc_B69A99
  loc_B69A95: ExitProcCb
  loc_B69A99: FLdRfVar var_168
  loc_B69A9C: LitVarStr var_B0, vbNullString
  loc_B69AA1: HardType
  loc_B69AA2: EqVar var_114
  loc_B69AA6: FLdRfVar var_A0
  loc_B69AA9: CVarRef
  loc_B69AAE: ImpAdCallI2 IsNumeric()
  loc_B69AB3: LitI2_Byte &HFF
  loc_B69AB5: EqI2
  loc_B69AB6: CVarBoolI2 var_E4
  loc_B69ABA: AndVar var_124
  loc_B69ABE: CBoolVarNull
  loc_B69AC0: FFree1Var var_E4 = ""
  loc_B69AC3: BranchF loc_B69B1D
  loc_B69AC6: FLdI2 arg_14
  loc_B69AC9: LitI2_Byte 1
  loc_B69ACB: SubI2
  loc_B69ACC: CStrUI1
  loc_B69ACE: FStStrNoPop var_16C
  loc_B69AD1: LitStr ","
  loc_B69AD4: ConcatStr
  loc_B69AD5: FStStrNoPop var_198
  loc_B69AD8: FLdI2 arg_18
  loc_B69ADB: CStrUI1
  loc_B69ADD: FStStrNoPop var_19C
  loc_B69AE0: ConcatStr
  loc_B69AE1: CVarStr var_114
  loc_B69AE4: FStVar var_94
  loc_B69AE8: FFreeStr var_16C = "": var_198 = ""
  loc_B69AF1: LitStr "6,6"
  loc_B69AF4: ILdI2 arg_10
  loc_B69AF7: CI4UI1
  loc_B69AF8: ImpAdLdI4 MemVar_C0F104
  loc_B69AFB: Ary1LdPr
  loc_B69AFC: MemStStrCopy
  loc_B69B00: ILdRf var_A0
  loc_B69B03: LitStr ".0"
  loc_B69B06: ConcatStr
  loc_B69B07: FStStrNoPop var_16C
  loc_B69B0A: ILdI2 arg_10
  loc_B69B0D: CI4UI1
  loc_B69B0E: ImpAdLdI4 MemVar_C0F104
  loc_B69B11: Ary1LdPr
  loc_B69B12: MemStStrCopy
  loc_B69B16: FFree1Str var_16C
  loc_B69B19: ExitProcCb
  loc_B69B1D: FLdI2 arg_14
  loc_B69B20: FLdI2 arg_1C
  loc_B69B23: LtI2
  loc_B69B24: BranchF loc_B69D38
  loc_B69B27: LitVarI2 var_E4, 1
  loc_B69B2C: FLdRfVar var_C0
  loc_B69B2F: FLdRfVar var_C4
  loc_B69B32: ImpAdLdRf MemVar_C0F018
  loc_B69B35: NewIfNullPr frmMain
  loc_B69B38: from_stack_1v = frmMain.SockIGet()
  loc_B69B3D: ILdRf var_C4
  loc_B69B40: CVarI4
  loc_B69B44: ForVar var_23C
  loc_B69B4A: FLdRfVar var_C0
  loc_B69B4D: CI4Var
  loc_B69B4F: ImpAdLdI4 MemVar_C0F100
  loc_B69B52: Ary1LdPr
  loc_B69B53: MemLdI2 global_4
  loc_B69B56: ILdI2 arg_10
  loc_B69B59: CI4UI1
  loc_B69B5A: ImpAdLdI4 MemVar_C0F104
  loc_B69B5D: Ary1LdPr
  loc_B69B5E: MemLdI2 global_12
  loc_B69B61: EqI2
  loc_B69B62: BranchF loc_B69B92
  loc_B69B65: FLdRfVar var_C0
  loc_B69B68: CI4Var
  loc_B69B6A: ImpAdLdI4 MemVar_C0F100
  loc_B69B6D: Ary1LdPr
  loc_B69B6E: MemLdFPR8 global_232
  loc_B69B71: FLdI2 arg_14
  loc_B69B74: LitI2_Byte 1
  loc_B69B76: AddI2
  loc_B69B77: CR8I2
  loc_B69B78: EqR4
  loc_B69B79: FLdRfVar var_C0
  loc_B69B7C: CI4Var
  loc_B69B7E: ImpAdLdI4 MemVar_C0F100
  loc_B69B81: Ary1LdPr
  loc_B69B82: MemLdFPR8 global_240
  loc_B69B85: FLdI2 arg_18
  loc_B69B88: CR8I2
  loc_B69B89: EqR4
  loc_B69B8A: AndI4
  loc_B69B8B: BranchF loc_B69B92
  loc_B69B8E: ExitProcCb
  loc_B69B92: FLdRfVar var_C0
  loc_B69B95: NextStepVar var_23C
  loc_B69B9B: LitI4 &HD
  loc_B69BA0: FLdRfVar var_114
  loc_B69BA3: ImpAdCallFPR4  = Chr()
  loc_B69BA8: FLdRfVar arg_18
  loc_B69BAB: CDargRef
  loc_B69BAF: LitI4 0
  loc_B69BB4: LitI4 -1
  loc_B69BB9: FLdRfVar var_114
  loc_B69BBC: ILdRf var_98
  loc_B69BBF: FLdRfVar var_124
  loc_B69BC2: ImpAdCallFPR4  = Split(, , , )
  loc_B69BC7: FLdRfVar var_124
  loc_B69BCA: VarIndexLdRfVarLock
  loc_B69BD2: FStR4 var_C4
  loc_B69BD5: LitVarI2 var_148, 1
  loc_B69BDA: FLdI2 arg_14
  loc_B69BDD: LitI2_Byte 2
  loc_B69BDF: AddI2
  loc_B69BE0: CI4UI1
  loc_B69BE1: ILdRf var_C4
  loc_B69BE4: FLdRfVar var_158
  loc_B69BE7: ImpAdCallFPR4  = Mid(, , )
  loc_B69BEC: AryUnlock
  loc_B69BEF: FLdRfVar var_158
  loc_B69BF2: CStrVarTmp
  loc_B69BF3: FStStr var_A0
  loc_B69BF6: FFreeVar var_114 = "": var_124 = "": var_134 = "": var_148 = ""
  loc_B69C03: ILdI2 arg_10
  loc_B69C06: CI4UI1
  loc_B69C07: ImpAdLdI4 MemVar_C0F104
  loc_B69C0A: Ary1LdPr
  loc_B69C0B: MemLdI2 global_12
  loc_B69C0E: CI4UI1
  loc_B69C0F: FLdI2 arg_14
  loc_B69C12: LitI2_Byte 1
  loc_B69C14: AddI2
  loc_B69C15: CI4UI1
  loc_B69C16: FLdI2 arg_18
  loc_B69C19: CI4UI1
  loc_B69C1A: ImpAdLdRf MemVar_C0F10C
  loc_B69C1D: AryLdPr
  loc_B69C20: MemLdStr global_0
  loc_B69C23: CVarStr var_B0
  loc_B69C26: FStVarCopy
  loc_B69C2A: ILdRf var_A0
  loc_B69C2D: ImpAdCallFPR4 push push Val()
  loc_B69C32: FStFPR8 var_194
  loc_B69C35: LitVarI2 var_D4, 0
  loc_B69C3A: PopAdLdVar
  loc_B69C3B: LitI4 0
  loc_B69C40: LitI4 -1
  loc_B69C45: LitVarStr var_B0, "."
  loc_B69C4A: FStVarCopyObj var_114
  loc_B69C4D: FLdRfVar var_114
  loc_B69C50: ILdI2 arg_10
  loc_B69C53: CI4UI1
  loc_B69C54: ImpAdLdI4 MemVar_C0F104
  loc_B69C57: Ary1LdPr
  loc_B69C58: MemLdStr global_16
  loc_B69C5B: FLdRfVar var_124
  loc_B69C5E: ImpAdCallFPR4  = Split(, , , )
  loc_B69C63: FLdRfVar var_124
  loc_B69C66: VarIndexLdVar
  loc_B69C6C: CStrVarVal var_16C
  loc_B69C70: ImpAdCallFPR4 push push Val()
  loc_B69C75: FLdFPR8 var_194
  loc_B69C78: SubR4
  loc_B69C79: CVarR8
  loc_B69C7D: FStVar var_17C
  loc_B69C81: FFree1Str var_16C
  loc_B69C84: FFreeVar var_114 = "": var_124 = ""
  loc_B69C8D: FLdRfVar var_17C
  loc_B69C90: LitVarI2 var_B0, 1
  loc_B69C95: HardType
  loc_B69C96: GtVar var_114
  loc_B69C9A: FLdRfVar var_17C
  loc_B69C9D: LitVarI2 var_D4, -1
  loc_B69CA2: HardType
  loc_B69CA3: LtVar var_124
  loc_B69CA7: OrVar var_134
  loc_B69CAB: CBoolVarNull
  loc_B69CAD: BranchF loc_B69CB4
  loc_B69CB0: ExitProcCb
  loc_B69CB4: FLdRfVar var_168
  loc_B69CB7: LitVarStr var_B0, vbNullString
  loc_B69CBC: HardType
  loc_B69CBD: EqVar var_114
  loc_B69CC1: FLdRfVar var_A0
  loc_B69CC4: CVarRef
  loc_B69CC9: ImpAdCallI2 IsNumeric()
  loc_B69CCE: LitI2_Byte &HFF
  loc_B69CD0: EqI2
  loc_B69CD1: CVarBoolI2 var_E4
  loc_B69CD5: AndVar var_124
  loc_B69CD9: CBoolVarNull
  loc_B69CDB: FFree1Var var_E4 = ""
  loc_B69CDE: BranchF loc_B69D38
  loc_B69CE1: FLdI2 arg_14
  loc_B69CE4: LitI2_Byte 1
  loc_B69CE6: AddI2
  loc_B69CE7: CStrUI1
  loc_B69CE9: FStStrNoPop var_16C
  loc_B69CEC: LitStr ","
  loc_B69CEF: ConcatStr
  loc_B69CF0: FStStrNoPop var_198
  loc_B69CF3: FLdI2 arg_18
  loc_B69CF6: CStrUI1
  loc_B69CF8: FStStrNoPop var_19C
  loc_B69CFB: ConcatStr
  loc_B69CFC: CVarStr var_114
  loc_B69CFF: FStVar var_94
  loc_B69D03: FFreeStr var_16C = "": var_198 = ""
  loc_B69D0C: LitStr "2,2"
  loc_B69D0F: ILdI2 arg_10
  loc_B69D12: CI4UI1
  loc_B69D13: ImpAdLdI4 MemVar_C0F104
  loc_B69D16: Ary1LdPr
  loc_B69D17: MemStStrCopy
  loc_B69D1B: ILdRf var_A0
  loc_B69D1E: LitStr ".0"
  loc_B69D21: ConcatStr
  loc_B69D22: FStStrNoPop var_16C
  loc_B69D25: ILdI2 arg_10
  loc_B69D28: CI4UI1
  loc_B69D29: ImpAdLdI4 MemVar_C0F104
  loc_B69D2C: Ary1LdPr
  loc_B69D2D: MemStStrCopy
  loc_B69D31: FFree1Str var_16C
  loc_B69D34: ExitProcCb
  loc_B69D38: FLdI2 arg_18
  loc_B69D3B: FLdI2 arg_20
  loc_B69D3E: LtI2
  loc_B69D3F: BranchF loc_B69F56
  loc_B69D42: LitVarI2 var_E4, 1
  loc_B69D47: FLdRfVar var_C0
  loc_B69D4A: FLdRfVar var_C4
  loc_B69D4D: ImpAdLdRf MemVar_C0F018
  loc_B69D50: NewIfNullPr frmMain
  loc_B69D53: from_stack_1v = frmMain.SockIGet()
  loc_B69D58: ILdRf var_C4
  loc_B69D5B: CVarI4
  loc_B69D5F: ForVar var_25C
  loc_B69D65: FLdRfVar var_C0
  loc_B69D68: CI4Var
  loc_B69D6A: ImpAdLdI4 MemVar_C0F100
  loc_B69D6D: Ary1LdPr
  loc_B69D6E: MemLdI2 global_4
  loc_B69D71: ILdI2 arg_10
  loc_B69D74: CI4UI1
  loc_B69D75: ImpAdLdI4 MemVar_C0F104
  loc_B69D78: Ary1LdPr
  loc_B69D79: MemLdI2 global_12
  loc_B69D7C: EqI2
  loc_B69D7D: BranchF loc_B69DAD
  loc_B69D80: FLdRfVar var_C0
  loc_B69D83: CI4Var
  loc_B69D85: ImpAdLdI4 MemVar_C0F100
  loc_B69D88: Ary1LdPr
  loc_B69D89: MemLdFPR8 global_232
  loc_B69D8C: FLdI2 arg_14
  loc_B69D8F: CR8I2
  loc_B69D90: EqR4
  loc_B69D91: FLdRfVar var_C0
  loc_B69D94: CI4Var
  loc_B69D96: ImpAdLdI4 MemVar_C0F100
  loc_B69D99: Ary1LdPr
  loc_B69D9A: MemLdFPR8 global_240
  loc_B69D9D: FLdI2 arg_18
  loc_B69DA0: LitI2_Byte 1
  loc_B69DA2: AddI2
  loc_B69DA3: CR8I2
  loc_B69DA4: EqR4
  loc_B69DA5: AndI4
  loc_B69DA6: BranchF loc_B69DAD
  loc_B69DA9: ExitProcCb
  loc_B69DAD: FLdRfVar var_C0
  loc_B69DB0: NextStepVar var_25C
  loc_B69DB6: LitI4 &HD
  loc_B69DBB: FLdRfVar var_114
  loc_B69DBE: ImpAdCallFPR4  = Chr()
  loc_B69DC3: FLdI2 arg_18
  loc_B69DC6: LitI2_Byte 1
  loc_B69DC8: AddI2
  loc_B69DC9: CVarI2 var_B0
  loc_B69DCC: PopAdLdVar
  loc_B69DCD: LitI4 0
  loc_B69DD2: LitI4 -1
  loc_B69DD7: FLdRfVar var_114
  loc_B69DDA: ILdRf var_98
  loc_B69DDD: FLdRfVar var_124
  loc_B69DE0: ImpAdCallFPR4  = Split(, , , )
  loc_B69DE5: FLdRfVar var_124
  loc_B69DE8: VarIndexLdRfVarLock
  loc_B69DF0: FStR4 var_C4
  loc_B69DF3: LitVarI2 var_148, 1
  loc_B69DF8: FLdI2 arg_14
  loc_B69DFB: LitI2_Byte 1
  loc_B69DFD: AddI2
  loc_B69DFE: CI4UI1
  loc_B69DFF: ILdRf var_C4
  loc_B69E02: FLdRfVar var_158
  loc_B69E05: ImpAdCallFPR4  = Mid(, , )
  loc_B69E0A: AryUnlock
  loc_B69E0D: FLdRfVar var_158
  loc_B69E10: CStrVarTmp
  loc_B69E11: FStStr var_A0
  loc_B69E14: FFreeVar var_114 = "": var_124 = "": var_134 = "": var_148 = ""
  loc_B69E21: ILdI2 arg_10
  loc_B69E24: CI4UI1
  loc_B69E25: ImpAdLdI4 MemVar_C0F104
  loc_B69E28: Ary1LdPr
  loc_B69E29: MemLdI2 global_12
  loc_B69E2C: CI4UI1
  loc_B69E2D: FLdI2 arg_14
  loc_B69E30: CI4UI1
  loc_B69E31: FLdI2 arg_18
  loc_B69E34: LitI2_Byte 1
  loc_B69E36: AddI2
  loc_B69E37: CI4UI1
  loc_B69E38: ImpAdLdRf MemVar_C0F10C
  loc_B69E3B: AryLdPr
  loc_B69E3E: MemLdStr global_0
  loc_B69E41: CVarStr var_B0
  loc_B69E44: FStVarCopy
  loc_B69E48: ILdRf var_A0
  loc_B69E4B: ImpAdCallFPR4 push push Val()
  loc_B69E50: FStFPR8 var_194
  loc_B69E53: LitVarI2 var_D4, 0
  loc_B69E58: PopAdLdVar
  loc_B69E59: LitI4 0
  loc_B69E5E: LitI4 -1
  loc_B69E63: LitVarStr var_B0, "."
  loc_B69E68: FStVarCopyObj var_114
  loc_B69E6B: FLdRfVar var_114
  loc_B69E6E: ILdI2 arg_10
  loc_B69E71: CI4UI1
  loc_B69E72: ImpAdLdI4 MemVar_C0F104
  loc_B69E75: Ary1LdPr
  loc_B69E76: MemLdStr global_16
  loc_B69E79: FLdRfVar var_124
  loc_B69E7C: ImpAdCallFPR4  = Split(, , , )
  loc_B69E81: FLdRfVar var_124
  loc_B69E84: VarIndexLdVar
  loc_B69E8A: CStrVarVal var_16C
  loc_B69E8E: ImpAdCallFPR4 push push Val()
  loc_B69E93: FLdFPR8 var_194
  loc_B69E96: SubR4
  loc_B69E97: CVarR8
  loc_B69E9B: FStVar var_17C
  loc_B69E9F: FFree1Str var_16C
  loc_B69EA2: FFreeVar var_114 = "": var_124 = ""
  loc_B69EAB: FLdRfVar var_17C
  loc_B69EAE: LitVarI2 var_B0, 1
  loc_B69EB3: HardType
  loc_B69EB4: GtVar var_114
  loc_B69EB8: FLdRfVar var_17C
  loc_B69EBB: LitVarI2 var_D4, -1
  loc_B69EC0: HardType
  loc_B69EC1: LtVar var_124
  loc_B69EC5: OrVar var_134
  loc_B69EC9: CBoolVarNull
  loc_B69ECB: BranchF loc_B69ED2
  loc_B69ECE: ExitProcCb
  loc_B69ED2: FLdRfVar var_168
  loc_B69ED5: LitVarStr var_B0, vbNullString
  loc_B69EDA: HardType
  loc_B69EDB: EqVar var_114
  loc_B69EDF: FLdRfVar var_A0
  loc_B69EE2: CVarRef
  loc_B69EE7: ImpAdCallI2 IsNumeric()
  loc_B69EEC: LitI2_Byte &HFF
  loc_B69EEE: EqI2
  loc_B69EEF: CVarBoolI2 var_E4
  loc_B69EF3: AndVar var_124
  loc_B69EF7: CBoolVarNull
  loc_B69EF9: FFree1Var var_E4 = ""
  loc_B69EFC: BranchF loc_B69F56
  loc_B69EFF: FLdI2 arg_14
  loc_B69F02: CStrUI1
  loc_B69F04: FStStrNoPop var_16C
  loc_B69F07: LitStr ","
  loc_B69F0A: ConcatStr
  loc_B69F0B: FStStrNoPop var_198
  loc_B69F0E: FLdI2 arg_18
  loc_B69F11: LitI2_Byte 1
  loc_B69F13: AddI2
  loc_B69F14: CStrUI1
  loc_B69F16: FStStrNoPop var_19C
  loc_B69F19: ConcatStr
  loc_B69F1A: CVarStr var_114
  loc_B69F1D: FStVar var_94
  loc_B69F21: FFreeStr var_16C = "": var_198 = ""
  loc_B69F2A: LitStr "4,4"
  loc_B69F2D: ILdI2 arg_10
  loc_B69F30: CI4UI1
  loc_B69F31: ImpAdLdI4 MemVar_C0F104
  loc_B69F34: Ary1LdPr
  loc_B69F35: MemStStrCopy
  loc_B69F39: ILdRf var_A0
  loc_B69F3C: LitStr ".0"
  loc_B69F3F: ConcatStr
  loc_B69F40: FStStrNoPop var_16C
  loc_B69F43: ILdI2 arg_10
  loc_B69F46: CI4UI1
  loc_B69F47: ImpAdLdI4 MemVar_C0F104
  loc_B69F4A: Ary1LdPr
  loc_B69F4B: MemStStrCopy
  loc_B69F4F: FFree1Str var_16C
  loc_B69F52: ExitProcCb
  loc_B69F56: FLdI2 arg_18
  loc_B69F59: FLdI2 arg_20
  loc_B69F5C: GtI2
  loc_B69F5D: BranchF loc_B6A174
  loc_B69F60: LitVarI2 var_E4, 1
  loc_B69F65: FLdRfVar var_C0
  loc_B69F68: FLdRfVar var_C4
  loc_B69F6B: ImpAdLdRf MemVar_C0F018
  loc_B69F6E: NewIfNullPr frmMain
  loc_B69F71: from_stack_1v = frmMain.SockIGet()
  loc_B69F76: ILdRf var_C4
  loc_B69F79: CVarI4
  loc_B69F7D: ForVar var_27C
  loc_B69F83: FLdRfVar var_C0
  loc_B69F86: CI4Var
  loc_B69F88: ImpAdLdI4 MemVar_C0F100
  loc_B69F8B: Ary1LdPr
  loc_B69F8C: MemLdI2 global_4
  loc_B69F8F: ILdI2 arg_10
  loc_B69F92: CI4UI1
  loc_B69F93: ImpAdLdI4 MemVar_C0F104
  loc_B69F96: Ary1LdPr
  loc_B69F97: MemLdI2 global_12
  loc_B69F9A: EqI2
  loc_B69F9B: BranchF loc_B69FCB
  loc_B69F9E: FLdRfVar var_C0
  loc_B69FA1: CI4Var
  loc_B69FA3: ImpAdLdI4 MemVar_C0F100
  loc_B69FA6: Ary1LdPr
  loc_B69FA7: MemLdFPR8 global_232
  loc_B69FAA: FLdI2 arg_14
  loc_B69FAD: CR8I2
  loc_B69FAE: EqR4
  loc_B69FAF: FLdRfVar var_C0
  loc_B69FB2: CI4Var
  loc_B69FB4: ImpAdLdI4 MemVar_C0F100
  loc_B69FB7: Ary1LdPr
  loc_B69FB8: MemLdFPR8 global_240
  loc_B69FBB: FLdI2 arg_18
  loc_B69FBE: LitI2_Byte 1
  loc_B69FC0: SubI2
  loc_B69FC1: CR8I2
  loc_B69FC2: EqR4
  loc_B69FC3: AndI4
  loc_B69FC4: BranchF loc_B69FCB
  loc_B69FC7: ExitProcCb
  loc_B69FCB: FLdRfVar var_C0
  loc_B69FCE: NextStepVar var_27C
  loc_B69FD4: LitI4 &HD
  loc_B69FD9: FLdRfVar var_114
  loc_B69FDC: ImpAdCallFPR4  = Chr()
  loc_B69FE1: FLdI2 arg_18
  loc_B69FE4: LitI2_Byte 1
  loc_B69FE6: SubI2
  loc_B69FE7: CVarI2 var_B0
  loc_B69FEA: PopAdLdVar
  loc_B69FEB: LitI4 0
  loc_B69FF0: LitI4 -1
  loc_B69FF5: FLdRfVar var_114
  loc_B69FF8: ILdRf var_98
  loc_B69FFB: FLdRfVar var_124
  loc_B69FFE: ImpAdCallFPR4  = Split(, , , )
  loc_B6A003: FLdRfVar var_124
  loc_B6A006: VarIndexLdRfVarLock
  loc_B6A00E: FStR4 var_C4
  loc_B6A011: LitVarI2 var_148, 1
  loc_B6A016: FLdI2 arg_14
  loc_B6A019: LitI2_Byte 1
  loc_B6A01B: AddI2
  loc_B6A01C: CI4UI1
  loc_B6A01D: ILdRf var_C4
  loc_B6A020: FLdRfVar var_158
  loc_B6A023: ImpAdCallFPR4  = Mid(, , )
  loc_B6A028: AryUnlock
  loc_B6A02B: FLdRfVar var_158
  loc_B6A02E: CStrVarTmp
  loc_B6A02F: FStStr var_A0
  loc_B6A032: FFreeVar var_114 = "": var_124 = "": var_134 = "": var_148 = ""
  loc_B6A03F: ILdI2 arg_10
  loc_B6A042: CI4UI1
  loc_B6A043: ImpAdLdI4 MemVar_C0F104
  loc_B6A046: Ary1LdPr
  loc_B6A047: MemLdI2 global_12
  loc_B6A04A: CI4UI1
  loc_B6A04B: FLdI2 arg_14
  loc_B6A04E: CI4UI1
  loc_B6A04F: FLdI2 arg_18
  loc_B6A052: LitI2_Byte 1
  loc_B6A054: SubI2
  loc_B6A055: CI4UI1
  loc_B6A056: ImpAdLdRf MemVar_C0F10C
  loc_B6A059: AryLdPr
  loc_B6A05C: MemLdStr global_0
  loc_B6A05F: CVarStr var_B0
  loc_B6A062: FStVarCopy
  loc_B6A066: ILdRf var_A0
  loc_B6A069: ImpAdCallFPR4 push push Val()
  loc_B6A06E: FStFPR8 var_194
  loc_B6A071: LitVarI2 var_D4, 0
  loc_B6A076: PopAdLdVar
  loc_B6A077: LitI4 0
  loc_B6A07C: LitI4 -1
  loc_B6A081: LitVarStr var_B0, "."
  loc_B6A086: FStVarCopyObj var_114
  loc_B6A089: FLdRfVar var_114
  loc_B6A08C: ILdI2 arg_10
  loc_B6A08F: CI4UI1
  loc_B6A090: ImpAdLdI4 MemVar_C0F104
  loc_B6A093: Ary1LdPr
  loc_B6A094: MemLdStr global_16
  loc_B6A097: FLdRfVar var_124
  loc_B6A09A: ImpAdCallFPR4  = Split(, , , )
  loc_B6A09F: FLdRfVar var_124
  loc_B6A0A2: VarIndexLdVar
  loc_B6A0A8: CStrVarVal var_16C
  loc_B6A0AC: ImpAdCallFPR4 push push Val()
  loc_B6A0B1: FLdFPR8 var_194
  loc_B6A0B4: SubR4
  loc_B6A0B5: CVarR8
  loc_B6A0B9: FStVar var_17C
  loc_B6A0BD: FFree1Str var_16C
  loc_B6A0C0: FFreeVar var_114 = "": var_124 = ""
  loc_B6A0C9: FLdRfVar var_17C
  loc_B6A0CC: LitVarI2 var_B0, 1
  loc_B6A0D1: HardType
  loc_B6A0D2: GtVar var_114
  loc_B6A0D6: FLdRfVar var_17C
  loc_B6A0D9: LitVarI2 var_D4, -1
  loc_B6A0DE: HardType
  loc_B6A0DF: LtVar var_124
  loc_B6A0E3: OrVar var_134
  loc_B6A0E7: CBoolVarNull
  loc_B6A0E9: BranchF loc_B6A0F0
  loc_B6A0EC: ExitProcCb
  loc_B6A0F0: FLdRfVar var_168
  loc_B6A0F3: LitVarStr var_B0, vbNullString
  loc_B6A0F8: HardType
  loc_B6A0F9: EqVar var_114
  loc_B6A0FD: FLdRfVar var_A0
  loc_B6A100: CVarRef
  loc_B6A105: ImpAdCallI2 IsNumeric()
  loc_B6A10A: LitI2_Byte &HFF
  loc_B6A10C: EqI2
  loc_B6A10D: CVarBoolI2 var_E4
  loc_B6A111: AndVar var_124
  loc_B6A115: CBoolVarNull
  loc_B6A117: FFree1Var var_E4 = ""
  loc_B6A11A: BranchF loc_B6A174
  loc_B6A11D: FLdI2 arg_14
  loc_B6A120: CStrUI1
  loc_B6A122: FStStrNoPop var_16C
  loc_B6A125: LitStr ","
  loc_B6A128: ConcatStr
  loc_B6A129: FStStrNoPop var_198
  loc_B6A12C: FLdI2 arg_18
  loc_B6A12F: LitI2_Byte 1
  loc_B6A131: SubI2
  loc_B6A132: CStrUI1
  loc_B6A134: FStStrNoPop var_19C
  loc_B6A137: ConcatStr
  loc_B6A138: CVarStr var_114
  loc_B6A13B: FStVar var_94
  loc_B6A13F: FFreeStr var_16C = "": var_198 = ""
  loc_B6A148: LitStr "0,0"
  loc_B6A14B: ILdI2 arg_10
  loc_B6A14E: CI4UI1
  loc_B6A14F: ImpAdLdI4 MemVar_C0F104
  loc_B6A152: Ary1LdPr
  loc_B6A153: MemStStrCopy
  loc_B6A157: ILdRf var_A0
  loc_B6A15A: LitStr ".0"
  loc_B6A15D: ConcatStr
  loc_B6A15E: FStStrNoPop var_16C
  loc_B6A161: ILdI2 arg_10
  loc_B6A164: CI4UI1
  loc_B6A165: ImpAdLdI4 MemVar_C0F104
  loc_B6A168: Ary1LdPr
  loc_B6A169: MemStStrCopy
  loc_B6A16D: FFree1Str var_16C
  loc_B6A170: ExitProcCb
  loc_B6A174: ExitProcCb
  loc_B6A178: ExitProcCb
End Function

Private Function Proc_6_4_BB02F0(arg_10) 'BB02F0
  'Data Table: 53AAA8
  loc_BAB8E0: ILdI2 arg_10
  loc_BAB8E3: CI4UI1
  loc_BAB8E4: ImpAdLdI4 MemVar_C0F100
  loc_BAB8E7: Ary1LdPr
  loc_BAB8E8: MemLdI2 global_4
  loc_BAB8EB: LitI2_Byte &H31
  loc_BAB8ED: EqI2
  loc_BAB8EE: BranchF loc_BAB9CF
  loc_BAB8F1: ILdI2 arg_10
  loc_BAB8F4: CI4UI1
  loc_BAB8F5: ImpAdLdI4 MemVar_C0F100
  loc_BAB8F8: Ary1LdPr
  loc_BAB8F9: MemLdFPR8 global_232
  loc_BAB8FC: LitI2_Byte &H10
  loc_BAB8FE: CR8I2
  loc_BAB8FF: EqR4
  loc_BAB900: ILdI2 arg_10
  loc_BAB903: CI4UI1
  loc_BAB904: ImpAdLdI4 MemVar_C0F100
  loc_BAB907: Ary1LdPr
  loc_BAB908: MemLdFPR8 global_240
  loc_BAB90B: LitI2_Byte &H12
  loc_BAB90D: CR8I2
  loc_BAB90E: EqR4
  loc_BAB90F: AndI4
  loc_BAB910: BranchF loc_BAB9CF
  loc_BAB913: LitI2_Byte &H32
  loc_BAB915: ILdI2 arg_10
  loc_BAB918: CI4UI1
  loc_BAB919: ImpAdLdI4 MemVar_C0F100
  loc_BAB91C: Ary1LdPr
  loc_BAB91D: MemStI2 global_4
  loc_BAB920: LitStr "I"
  loc_BAB923: ILdI2 arg_10
  loc_BAB926: CI4UI1
  loc_BAB927: ImpAdLdI4 MemVar_C0F100
  loc_BAB92A: Ary1LdPr
  loc_BAB92B: MemLdStr global_8
  loc_BAB92E: ConcatStr
  loc_BAB92F: FStStrNoPop var_98
  loc_BAB932: ILdI2 arg_10
  loc_BAB935: CI4UI1
  loc_BAB936: ImpAdLdI4 MemVar_C0F100
  loc_BAB939: Ary1LdPr
  loc_BAB93A: MemStStrCopy
  loc_BAB93E: FFree1Str var_98
  loc_BAB941: LitStr "AEold_skool1 15799"
  loc_BAB944: ILdI2 arg_10
  loc_BAB947: FLdRfVar var_A8
  loc_BAB94A: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAB94F: FFree1Var var_A8 = ""
  loc_BAB952: LitI4 1
  loc_BAB957: FLdRfVar var_A8
  loc_BAB95A: ImpAdCallFPR4  = Chr()
  loc_BAB95F: LitI4 &H31
  loc_BAB964: LitStr "@]"
  loc_BAB967: ILdI2 arg_10
  loc_BAB96A: CI4UI1
  loc_BAB96B: ImpAdLdI4 MemVar_C0F100
  loc_BAB96E: Ary1LdPr
  loc_BAB96F: MemLdStr global_420
  loc_BAB972: CStrI4
  loc_BAB974: FStStrNoPop var_98
  loc_BAB977: ConcatStr
  loc_BAB978: CVarStr var_B8
  loc_BAB97B: FLdRfVar var_A8
  loc_BAB97E: ConcatVar var_C8
  loc_BAB982: CStrVarVal var_CC
  loc_BAB986: FLdRfVar var_DC
  loc_BAB989: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAB98E: FFreeStr var_98 = ""
  loc_BAB995: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAB9A0: LitI2_Byte 0
  loc_BAB9A2: CR8I2
  loc_BAB9A3: ILdI2 arg_10
  loc_BAB9A6: CI4UI1
  loc_BAB9A7: ImpAdLdI4 MemVar_C0F100
  loc_BAB9AA: Ary1LdPr
  loc_BAB9AB: MemStFPR8 global_248
  loc_BAB9AE: LitI2_Byte 0
  loc_BAB9B0: CR8I2
  loc_BAB9B1: ILdI2 arg_10
  loc_BAB9B4: CI4UI1
  loc_BAB9B5: ImpAdLdI4 MemVar_C0F100
  loc_BAB9B8: Ary1LdPr
  loc_BAB9B9: MemStFPR8 global_256
  loc_BAB9BC: LitStr "6.0"
  loc_BAB9BF: ILdI2 arg_10
  loc_BAB9C2: CI4UI1
  loc_BAB9C3: ImpAdLdI4 MemVar_C0F100
  loc_BAB9C6: Ary1LdPr
  loc_BAB9C7: MemStStrCopy
  loc_BAB9CB: ExitProcCb
  loc_BAB9CF: ILdI2 arg_10
  loc_BAB9D2: CI4UI1
  loc_BAB9D3: ImpAdLdI4 MemVar_C0F100
  loc_BAB9D6: Ary1LdPr
  loc_BAB9D7: MemLdI2 global_4
  loc_BAB9DA: LitI2_Byte &H1F
  loc_BAB9DC: EqI2
  loc_BAB9DD: BranchF loc_BABAF0
  loc_BAB9E0: ILdI2 arg_10
  loc_BAB9E3: CI4UI1
  loc_BAB9E4: ImpAdLdI4 MemVar_C0F100
  loc_BAB9E7: Ary1LdPr
  loc_BAB9E8: MemLdFPR8 global_232
  loc_BAB9EB: LitI2_Byte &H10
  loc_BAB9ED: CR8I2
  loc_BAB9EE: EqR4
  loc_BAB9EF: ILdI2 arg_10
  loc_BAB9F2: CI4UI1
  loc_BAB9F3: ImpAdLdI4 MemVar_C0F100
  loc_BAB9F6: Ary1LdPr
  loc_BAB9F7: MemLdFPR8 global_232
  loc_BAB9FA: LitI2_Byte &HF
  loc_BAB9FC: CR8I2
  loc_BAB9FD: EqR4
  loc_BAB9FE: OrI4
  loc_BAB9FF: ILdI2 arg_10
  loc_BABA02: CI4UI1
  loc_BABA03: ImpAdLdI4 MemVar_C0F100
  loc_BABA06: Ary1LdPr
  loc_BABA07: MemLdFPR8 global_232
  loc_BABA0A: LitI2_Byte &HE
  loc_BABA0C: CR8I2
  loc_BABA0D: EqR4
  loc_BABA0E: OrI4
  loc_BABA0F: ILdI2 arg_10
  loc_BABA12: CI4UI1
  loc_BABA13: ImpAdLdI4 MemVar_C0F100
  loc_BABA16: Ary1LdPr
  loc_BABA17: MemLdFPR8 global_232
  loc_BABA1A: LitI2_Byte &HD
  loc_BABA1C: CR8I2
  loc_BABA1D: EqR4
  loc_BABA1E: ILdI2 arg_10
  loc_BABA21: CI4UI1
  loc_BABA22: ImpAdLdI4 MemVar_C0F100
  loc_BABA25: Ary1LdPr
  loc_BABA26: MemLdFPR8 global_240
  loc_BABA29: LitI2_Byte 0
  loc_BABA2B: CR8I2
  loc_BABA2C: EqR4
  loc_BABA2D: AndI4
  loc_BABA2E: OrI4
  loc_BABA2F: BranchF loc_BABAF0
  loc_BABA32: LitI2_Byte &H37
  loc_BABA34: ILdI2 arg_10
  loc_BABA37: CI4UI1
  loc_BABA38: ImpAdLdI4 MemVar_C0F100
  loc_BABA3B: Ary1LdPr
  loc_BABA3C: MemStI2 global_4
  loc_BABA3F: LitStr "I"
  loc_BABA42: ILdI2 arg_10
  loc_BABA45: CI4UI1
  loc_BABA46: ImpAdLdI4 MemVar_C0F100
  loc_BABA49: Ary1LdPr
  loc_BABA4A: MemLdStr global_8
  loc_BABA4D: ConcatStr
  loc_BABA4E: FStStrNoPop var_98
  loc_BABA51: ILdI2 arg_10
  loc_BABA54: CI4UI1
  loc_BABA55: ImpAdLdI4 MemVar_C0F100
  loc_BABA58: Ary1LdPr
  loc_BABA59: MemStStrCopy
  loc_BABA5D: FFree1Str var_98
  loc_BABA60: LitStr "Bfhttp://hotel-uk/client.pub.hallway.0"
  loc_BABA63: ILdI2 arg_10
  loc_BABA66: FLdRfVar var_A8
  loc_BABA69: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BABA6E: FFree1Var var_A8 = ""
  loc_BABA71: LitStr "AEhallway0 15191"
  loc_BABA74: ILdI2 arg_10
  loc_BABA77: FLdRfVar var_A8
  loc_BABA7A: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BABA7F: FFree1Var var_A8 = ""
  loc_BABA82: LitI4 1
  loc_BABA87: FLdRfVar var_A8
  loc_BABA8A: ImpAdCallFPR4  = Chr()
  loc_BABA8F: LitI4 &H1F
  loc_BABA94: LitStr "@]"
  loc_BABA97: ILdI2 arg_10
  loc_BABA9A: CI4UI1
  loc_BABA9B: ImpAdLdI4 MemVar_C0F100
  loc_BABA9E: Ary1LdPr
  loc_BABA9F: MemLdStr global_420
  loc_BABAA2: CStrI4
  loc_BABAA4: FStStrNoPop var_98
  loc_BABAA7: ConcatStr
  loc_BABAA8: CVarStr var_B8
  loc_BABAAB: FLdRfVar var_A8
  loc_BABAAE: ConcatVar var_C8
  loc_BABAB2: CStrVarVal var_CC
  loc_BABAB6: FLdRfVar var_DC
  loc_BABAB9: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BABABE: FFreeStr var_98 = ""
  loc_BABAC5: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BABAD0: LitI2_Byte 0
  loc_BABAD2: CR8I2
  loc_BABAD3: ILdI2 arg_10
  loc_BABAD6: CI4UI1
  loc_BABAD7: ImpAdLdI4 MemVar_C0F100
  loc_BABADA: Ary1LdPr
  loc_BABADB: MemStFPR8 global_248
  loc_BABADE: LitI2_Byte 0
  loc_BABAE0: CR8I2
  loc_BABAE1: ILdI2 arg_10
  loc_BABAE4: CI4UI1
  loc_BABAE5: ImpAdLdI4 MemVar_C0F100
  loc_BABAE8: Ary1LdPr
  loc_BABAE9: MemStFPR8 global_256
  loc_BABAEC: ExitProcCb
  loc_BABAF0: ILdI2 arg_10
  loc_BABAF3: CI4UI1
  loc_BABAF4: ImpAdLdI4 MemVar_C0F100
  loc_BABAF7: Ary1LdPr
  loc_BABAF8: MemLdI2 global_4
  loc_BABAFB: LitI2_Byte &H38
  loc_BABAFD: EqI2
  loc_BABAFE: BranchF loc_BABC11
  loc_BABB01: ILdI2 arg_10
  loc_BABB04: CI4UI1
  loc_BABB05: ImpAdLdI4 MemVar_C0F100
  loc_BABB08: Ary1LdPr
  loc_BABB09: MemLdFPR8 global_232
  loc_BABB0C: LitI2_Byte 0
  loc_BABB0E: CR8I2
  loc_BABB0F: EqR4
  loc_BABB10: ILdI2 arg_10
  loc_BABB13: CI4UI1
  loc_BABB14: ImpAdLdI4 MemVar_C0F100
  loc_BABB17: Ary1LdPr
  loc_BABB18: MemLdFPR8 global_232
  loc_BABB1B: LitI2_Byte 8
  loc_BABB1D: CR8I2
  loc_BABB1E: EqR4
  loc_BABB1F: OrI4
  loc_BABB20: ILdI2 arg_10
  loc_BABB23: CI4UI1
  loc_BABB24: ImpAdLdI4 MemVar_C0F100
  loc_BABB27: Ary1LdPr
  loc_BABB28: MemLdFPR8 global_232
  loc_BABB2B: LitI2_Byte 7
  loc_BABB2D: CR8I2
  loc_BABB2E: EqR4
  loc_BABB2F: OrI4
  loc_BABB30: ILdI2 arg_10
  loc_BABB33: CI4UI1
  loc_BABB34: ImpAdLdI4 MemVar_C0F100
  loc_BABB37: Ary1LdPr
  loc_BABB38: MemLdFPR8 global_232
  loc_BABB3B: LitI2_Byte 6
  loc_BABB3D: CR8I2
  loc_BABB3E: EqR4
  loc_BABB3F: ILdI2 arg_10
  loc_BABB42: CI4UI1
  loc_BABB43: ImpAdLdI4 MemVar_C0F100
  loc_BABB46: Ary1LdPr
  loc_BABB47: MemLdFPR8 global_240
  loc_BABB4A: LitI2_Byte 5
  loc_BABB4C: CR8I2
  loc_BABB4D: EqR4
  loc_BABB4E: AndI4
  loc_BABB4F: OrI4
  loc_BABB50: BranchF loc_BABC11
  loc_BABB53: LitI2_Byte &H37
  loc_BABB55: ILdI2 arg_10
  loc_BABB58: CI4UI1
  loc_BABB59: ImpAdLdI4 MemVar_C0F100
  loc_BABB5C: Ary1LdPr
  loc_BABB5D: MemStI2 global_4
  loc_BABB60: LitStr "I"
  loc_BABB63: ILdI2 arg_10
  loc_BABB66: CI4UI1
  loc_BABB67: ImpAdLdI4 MemVar_C0F100
  loc_BABB6A: Ary1LdPr
  loc_BABB6B: MemLdStr global_8
  loc_BABB6E: ConcatStr
  loc_BABB6F: FStStrNoPop var_98
  loc_BABB72: ILdI2 arg_10
  loc_BABB75: CI4UI1
  loc_BABB76: ImpAdLdI4 MemVar_C0F100
  loc_BABB79: Ary1LdPr
  loc_BABB7A: MemStStrCopy
  loc_BABB7E: FFree1Str var_98
  loc_BABB81: LitStr "Bfhttp://hotel-uk/client.pub.hallway.0"
  loc_BABB84: ILdI2 arg_10
  loc_BABB87: FLdRfVar var_A8
  loc_BABB8A: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BABB8F: FFree1Var var_A8 = ""
  loc_BABB92: LitStr "AEhallway0 15191"
  loc_BABB95: ILdI2 arg_10
  loc_BABB98: FLdRfVar var_A8
  loc_BABB9B: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BABBA0: FFree1Var var_A8 = ""
  loc_BABBA3: LitI4 1
  loc_BABBA8: FLdRfVar var_A8
  loc_BABBAB: ImpAdCallFPR4  = Chr()
  loc_BABBB0: LitI4 &H1F
  loc_BABBB5: LitStr "@]"
  loc_BABBB8: ILdI2 arg_10
  loc_BABBBB: CI4UI1
  loc_BABBBC: ImpAdLdI4 MemVar_C0F100
  loc_BABBBF: Ary1LdPr
  loc_BABBC0: MemLdStr global_420
  loc_BABBC3: CStrI4
  loc_BABBC5: FStStrNoPop var_98
  loc_BABBC8: ConcatStr
  loc_BABBC9: CVarStr var_B8
  loc_BABBCC: FLdRfVar var_A8
  loc_BABBCF: ConcatVar var_C8
  loc_BABBD3: CStrVarVal var_CC
  loc_BABBD7: FLdRfVar var_DC
  loc_BABBDA: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BABBDF: FFreeStr var_98 = ""
  loc_BABBE6: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BABBF1: LitI2_Byte 0
  loc_BABBF3: CR8I2
  loc_BABBF4: ILdI2 arg_10
  loc_BABBF7: CI4UI1
  loc_BABBF8: ImpAdLdI4 MemVar_C0F100
  loc_BABBFB: Ary1LdPr
  loc_BABBFC: MemStFPR8 global_248
  loc_BABBFF: LitI2_Byte 0
  loc_BABC01: CR8I2
  loc_BABC02: ILdI2 arg_10
  loc_BABC05: CI4UI1
  loc_BABC06: ImpAdLdI4 MemVar_C0F100
  loc_BABC09: Ary1LdPr
  loc_BABC0A: MemStFPR8 global_256
  loc_BABC0D: ExitProcCb
  loc_BABC11: ILdI2 arg_10
  loc_BABC14: CI4UI1
  loc_BABC15: ImpAdLdI4 MemVar_C0F100
  loc_BABC18: Ary1LdPr
  loc_BABC19: MemLdI2 global_4
  loc_BABC1C: LitI2_Byte &H37
  loc_BABC1E: EqI2
  loc_BABC1F: BranchF loc_BABD32
  loc_BABC22: ILdI2 arg_10
  loc_BABC25: CI4UI1
  loc_BABC26: ImpAdLdI4 MemVar_C0F100
  loc_BABC29: Ary1LdPr
  loc_BABC2A: MemLdFPR8 global_232
  loc_BABC2D: LitI2_Byte &H1F
  loc_BABC2F: CR8I2
  loc_BABC30: EqR4
  loc_BABC31: ILdI2 arg_10
  loc_BABC34: CI4UI1
  loc_BABC35: ImpAdLdI4 MemVar_C0F100
  loc_BABC38: Ary1LdPr
  loc_BABC39: MemLdFPR8 global_232
  loc_BABC3C: LitI2_Byte 5
  loc_BABC3E: CR8I2
  loc_BABC3F: EqR4
  loc_BABC40: OrI4
  loc_BABC41: ILdI2 arg_10
  loc_BABC44: CI4UI1
  loc_BABC45: ImpAdLdI4 MemVar_C0F100
  loc_BABC48: Ary1LdPr
  loc_BABC49: MemLdFPR8 global_232
  loc_BABC4C: LitI2_Byte 4
  loc_BABC4E: CR8I2
  loc_BABC4F: EqR4
  loc_BABC50: OrI4
  loc_BABC51: ILdI2 arg_10
  loc_BABC54: CI4UI1
  loc_BABC55: ImpAdLdI4 MemVar_C0F100
  loc_BABC58: Ary1LdPr
  loc_BABC59: MemLdFPR8 global_232
  loc_BABC5C: LitI2_Byte 3
  loc_BABC5E: CR8I2
  loc_BABC5F: EqR4
  loc_BABC60: ILdI2 arg_10
  loc_BABC63: CI4UI1
  loc_BABC64: ImpAdLdI4 MemVar_C0F100
  loc_BABC67: Ary1LdPr
  loc_BABC68: MemLdFPR8 global_240
  loc_BABC6B: LitI2_Byte 2
  loc_BABC6D: CR8I2
  loc_BABC6E: EqR4
  loc_BABC6F: AndI4
  loc_BABC70: OrI4
  loc_BABC71: BranchF loc_BABD32
  loc_BABC74: LitI2_Byte &H38
  loc_BABC76: ILdI2 arg_10
  loc_BABC79: CI4UI1
  loc_BABC7A: ImpAdLdI4 MemVar_C0F100
  loc_BABC7D: Ary1LdPr
  loc_BABC7E: MemStI2 global_4
  loc_BABC81: LitStr "I"
  loc_BABC84: ILdI2 arg_10
  loc_BABC87: CI4UI1
  loc_BABC88: ImpAdLdI4 MemVar_C0F100
  loc_BABC8B: Ary1LdPr
  loc_BABC8C: MemLdStr global_8
  loc_BABC8F: ConcatStr
  loc_BABC90: FStStrNoPop var_98
  loc_BABC93: ILdI2 arg_10
  loc_BABC96: CI4UI1
  loc_BABC97: ImpAdLdI4 MemVar_C0F100
  loc_BABC9A: Ary1LdPr
  loc_BABC9B: MemStStrCopy
  loc_BABC9F: FFree1Str var_98
  loc_BABCA2: LitStr "Bfhttp://hotel-uk/client.pub.hallway.0"
  loc_BABCA5: ILdI2 arg_10
  loc_BABCA8: FLdRfVar var_A8
  loc_BABCAB: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BABCB0: FFree1Var var_A8 = ""
  loc_BABCB3: LitStr "AEhallway2 15191"
  loc_BABCB6: ILdI2 arg_10
  loc_BABCB9: FLdRfVar var_A8
  loc_BABCBC: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BABCC1: FFree1Var var_A8 = ""
  loc_BABCC4: LitI4 1
  loc_BABCC9: FLdRfVar var_A8
  loc_BABCCC: ImpAdCallFPR4  = Chr()
  loc_BABCD1: LitI4 &H1F
  loc_BABCD6: LitStr "@]"
  loc_BABCD9: ILdI2 arg_10
  loc_BABCDC: CI4UI1
  loc_BABCDD: ImpAdLdI4 MemVar_C0F100
  loc_BABCE0: Ary1LdPr
  loc_BABCE1: MemLdStr global_420
  loc_BABCE4: CStrI4
  loc_BABCE6: FStStrNoPop var_98
  loc_BABCE9: ConcatStr
  loc_BABCEA: CVarStr var_B8
  loc_BABCED: FLdRfVar var_A8
  loc_BABCF0: ConcatVar var_C8
  loc_BABCF4: CStrVarVal var_CC
  loc_BABCF8: FLdRfVar var_DC
  loc_BABCFB: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BABD00: FFreeStr var_98 = ""
  loc_BABD07: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BABD12: LitI2_Byte 0
  loc_BABD14: CR8I2
  loc_BABD15: ILdI2 arg_10
  loc_BABD18: CI4UI1
  loc_BABD19: ImpAdLdI4 MemVar_C0F100
  loc_BABD1C: Ary1LdPr
  loc_BABD1D: MemStFPR8 global_248
  loc_BABD20: LitI2_Byte 0
  loc_BABD22: CR8I2
  loc_BABD23: ILdI2 arg_10
  loc_BABD26: CI4UI1
  loc_BABD27: ImpAdLdI4 MemVar_C0F100
  loc_BABD2A: Ary1LdPr
  loc_BABD2B: MemStFPR8 global_256
  loc_BABD2E: ExitProcCb
  loc_BABD32: ILdI2 arg_10
  loc_BABD35: CI4UI1
  loc_BABD36: ImpAdLdI4 MemVar_C0F100
  loc_BABD39: Ary1LdPr
  loc_BABD3A: MemLdI2 global_4
  loc_BABD3D: LitI2_Byte &H33
  loc_BABD3F: EqI2
  loc_BABD40: BranchF loc_BABE31
  loc_BABD43: ILdI2 arg_10
  loc_BABD46: CI4UI1
  loc_BABD47: ImpAdLdI4 MemVar_C0F100
  loc_BABD4A: Ary1LdPr
  loc_BABD4B: MemLdFPR8 global_232
  loc_BABD4E: LitI2_Byte &HA
  loc_BABD50: CR8I2
  loc_BABD51: EqR4
  loc_BABD52: ILdI2 arg_10
  loc_BABD55: CI4UI1
  loc_BABD56: ImpAdLdI4 MemVar_C0F100
  loc_BABD59: Ary1LdPr
  loc_BABD5A: MemLdFPR8 global_232
  loc_BABD5D: LitI2_Byte 9
  loc_BABD5F: CR8I2
  loc_BABD60: EqR4
  loc_BABD61: ILdI2 arg_10
  loc_BABD64: CI4UI1
  loc_BABD65: ImpAdLdI4 MemVar_C0F100
  loc_BABD68: Ary1LdPr
  loc_BABD69: MemLdFPR8 global_240
  loc_BABD6C: LitI2_Byte &H21
  loc_BABD6E: CR8I2
  loc_BABD6F: EqR4
  loc_BABD70: AndI4
  loc_BABD71: OrI4
  loc_BABD72: BranchF loc_BABE31
  loc_BABD75: LitI2_Byte &H32
  loc_BABD77: ILdI2 arg_10
  loc_BABD7A: CI4UI1
  loc_BABD7B: ImpAdLdI4 MemVar_C0F100
  loc_BABD7E: Ary1LdPr
  loc_BABD7F: MemStI2 global_4
  loc_BABD82: LitStr "I"
  loc_BABD85: ILdI2 arg_10
  loc_BABD88: CI4UI1
  loc_BABD89: ImpAdLdI4 MemVar_C0F100
  loc_BABD8C: Ary1LdPr
  loc_BABD8D: MemLdStr global_8
  loc_BABD90: ConcatStr
  loc_BABD91: FStStrNoPop var_98
  loc_BABD94: ILdI2 arg_10
  loc_BABD97: CI4UI1
  loc_BABD98: ImpAdLdI4 MemVar_C0F100
  loc_BABD9B: Ary1LdPr
  loc_BABD9C: MemStStrCopy
  loc_BABDA0: FFree1Str var_98
  loc_BABDA3: LitStr "AEold_skool1 15799"
  loc_BABDA6: ILdI2 arg_10
  loc_BABDA9: FLdRfVar var_A8
  loc_BABDAC: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BABDB1: FFree1Var var_A8 = ""
  loc_BABDB4: LitI4 1
  loc_BABDB9: FLdRfVar var_A8
  loc_BABDBC: ImpAdCallFPR4  = Chr()
  loc_BABDC1: LitI4 &H33
  loc_BABDC6: LitStr "@]"
  loc_BABDC9: ILdI2 arg_10
  loc_BABDCC: CI4UI1
  loc_BABDCD: ImpAdLdI4 MemVar_C0F100
  loc_BABDD0: Ary1LdPr
  loc_BABDD1: MemLdStr global_420
  loc_BABDD4: CStrI4
  loc_BABDD6: FStStrNoPop var_98
  loc_BABDD9: ConcatStr
  loc_BABDDA: CVarStr var_B8
  loc_BABDDD: FLdRfVar var_A8
  loc_BABDE0: ConcatVar var_C8
  loc_BABDE4: CStrVarVal var_CC
  loc_BABDE8: FLdRfVar var_DC
  loc_BABDEB: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BABDF0: FFreeStr var_98 = ""
  loc_BABDF7: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BABE02: LitI2_Byte 0
  loc_BABE04: CR8I2
  loc_BABE05: ILdI2 arg_10
  loc_BABE08: CI4UI1
  loc_BABE09: ImpAdLdI4 MemVar_C0F100
  loc_BABE0C: Ary1LdPr
  loc_BABE0D: MemStFPR8 global_248
  loc_BABE10: LitI2_Byte 0
  loc_BABE12: CR8I2
  loc_BABE13: ILdI2 arg_10
  loc_BABE16: CI4UI1
  loc_BABE17: ImpAdLdI4 MemVar_C0F100
  loc_BABE1A: Ary1LdPr
  loc_BABE1B: MemStFPR8 global_256
  loc_BABE1E: LitStr "6.0"
  loc_BABE21: ILdI2 arg_10
  loc_BABE24: CI4UI1
  loc_BABE25: ImpAdLdI4 MemVar_C0F100
  loc_BABE28: Ary1LdPr
  loc_BABE29: MemStStrCopy
  loc_BABE2D: ExitProcCb
  loc_BABE31: ILdI2 arg_10
  loc_BABE34: CI4UI1
  loc_BABE35: ImpAdLdI4 MemVar_C0F100
  loc_BABE38: Ary1LdPr
  loc_BABE39: MemLdI2 global_4
  loc_BABE3C: LitI2_Byte &H32
  loc_BABE3E: EqI2
  loc_BABE3F: BranchF loc_BABE77
  loc_BABE42: ILdI2 arg_10
  loc_BABE45: CI4UI1
  loc_BABE46: ImpAdLdI4 MemVar_C0F100
  loc_BABE49: Ary1LdPr
  loc_BABE4A: MemLdFPR8 global_232
  loc_BABE4D: LitI2_Byte 1
  loc_BABE4F: CR8I2
  loc_BABE50: EqR4
  loc_BABE51: ILdI2 arg_10
  loc_BABE54: CI4UI1
  loc_BABE55: ImpAdLdI4 MemVar_C0F100
  loc_BABE58: Ary1LdPr
  loc_BABE59: MemLdFPR8 global_240
  loc_BABE5C: LitI2_Byte 7
  loc_BABE5E: CR8I2
  loc_BABE5F: EqR4
  loc_BABE60: AndI4
  loc_BABE61: BranchF loc_BABE77
  loc_BABE64: LitStr "6.0"
  loc_BABE67: ILdI2 arg_10
  loc_BABE6A: CI4UI1
  loc_BABE6B: ImpAdLdI4 MemVar_C0F100
  loc_BABE6E: Ary1LdPr
  loc_BABE6F: MemStStrCopy
  loc_BABE73: ExitProcCb
  loc_BABE77: ILdI2 arg_10
  loc_BABE7A: CI4UI1
  loc_BABE7B: ImpAdLdI4 MemVar_C0F100
  loc_BABE7E: Ary1LdPr
  loc_BABE7F: MemLdI2 global_4
  loc_BABE82: LitI2_Byte &H35
  loc_BABE84: EqI2
  loc_BABE85: BranchF loc_BABFA6
  loc_BABE88: ILdI2 arg_10
  loc_BABE8B: CI4UI1
  loc_BABE8C: ImpAdLdI4 MemVar_C0F100
  loc_BABE8F: Ary1LdPr
  loc_BABE90: MemLdFPR8 global_232
  loc_BABE93: LitI2_Byte &H13
  loc_BABE95: CR8I2
  loc_BABE96: EqR4
  loc_BABE97: ILdI2 arg_10
  loc_BABE9A: CI4UI1
  loc_BABE9B: ImpAdLdI4 MemVar_C0F100
  loc_BABE9E: Ary1LdPr
  loc_BABE9F: MemLdFPR8 global_240
  loc_BABEA2: LitI2_Byte &H19
  loc_BABEA4: CR8I2
  loc_BABEA5: EqR4
  loc_BABEA6: AndI4
  loc_BABEA7: ILdI2 arg_10
  loc_BABEAA: CI4UI1
  loc_BABEAB: ImpAdLdI4 MemVar_C0F100
  loc_BABEAE: Ary1LdPr
  loc_BABEAF: MemLdFPR8 global_232
  loc_BABEB2: LitI2_Byte &H13
  loc_BABEB4: CR8I2
  loc_BABEB5: EqR4
  loc_BABEB6: ILdI2 arg_10
  loc_BABEB9: CI4UI1
  loc_BABEBA: ImpAdLdI4 MemVar_C0F100
  loc_BABEBD: Ary1LdPr
  loc_BABEBE: MemLdFPR8 global_240
  loc_BABEC1: LitI2_Byte &H17
  loc_BABEC3: CR8I2
  loc_BABEC4: EqR4
  loc_BABEC5: AndI4
  loc_BABEC6: OrI4
  loc_BABEC7: ILdI2 arg_10
  loc_BABECA: CI4UI1
  loc_BABECB: ImpAdLdI4 MemVar_C0F100
  loc_BABECE: Ary1LdPr
  loc_BABECF: MemLdFPR8 global_232
  loc_BABED2: LitI2_Byte &H13
  loc_BABED4: CR8I2
  loc_BABED5: EqR4
  loc_BABED6: ILdI2 arg_10
  loc_BABED9: CI4UI1
  loc_BABEDA: ImpAdLdI4 MemVar_C0F100
  loc_BABEDD: Ary1LdPr
  loc_BABEDE: MemLdFPR8 global_240
  loc_BABEE1: LitI2_Byte &H18
  loc_BABEE3: CR8I2
  loc_BABEE4: EqR4
  loc_BABEE5: AndI4
  loc_BABEE6: OrI4
  loc_BABEE7: BranchF loc_BABFA6
  loc_BABEEA: LitI2_Byte &H34
  loc_BABEEC: ILdI2 arg_10
  loc_BABEEF: CI4UI1
  loc_BABEF0: ImpAdLdI4 MemVar_C0F100
  loc_BABEF3: Ary1LdPr
  loc_BABEF4: MemStI2 global_4
  loc_BABEF7: LitStr "I"
  loc_BABEFA: ILdI2 arg_10
  loc_BABEFD: CI4UI1
  loc_BABEFE: ImpAdLdI4 MemVar_C0F100
  loc_BABF01: Ary1LdPr
  loc_BABF02: MemLdStr global_8
  loc_BABF05: ConcatStr
  loc_BABF06: FStStrNoPop var_98
  loc_BABF09: ILdI2 arg_10
  loc_BABF0C: CI4UI1
  loc_BABF0D: ImpAdLdI4 MemVar_C0F100
  loc_BABF10: Ary1LdPr
  loc_BABF11: MemStStrCopy
  loc_BABF15: FFree1Str var_98
  loc_BABF18: LitStr "AEbeauty_salon1 15287"
  loc_BABF1B: ILdI2 arg_10
  loc_BABF1E: FLdRfVar var_A8
  loc_BABF21: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BABF26: FFree1Var var_A8 = ""
  loc_BABF29: LitI4 1
  loc_BABF2E: FLdRfVar var_A8
  loc_BABF31: ImpAdCallFPR4  = Chr()
  loc_BABF36: LitI4 &H34
  loc_BABF3B: LitStr "@]"
  loc_BABF3E: ILdI2 arg_10
  loc_BABF41: CI4UI1
  loc_BABF42: ImpAdLdI4 MemVar_C0F100
  loc_BABF45: Ary1LdPr
  loc_BABF46: MemLdStr global_420
  loc_BABF49: CStrI4
  loc_BABF4B: FStStrNoPop var_98
  loc_BABF4E: ConcatStr
  loc_BABF4F: CVarStr var_B8
  loc_BABF52: FLdRfVar var_A8
  loc_BABF55: ConcatVar var_C8
  loc_BABF59: CStrVarVal var_CC
  loc_BABF5D: FLdRfVar var_DC
  loc_BABF60: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BABF65: FFreeStr var_98 = ""
  loc_BABF6C: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BABF77: LitI2_Byte 0
  loc_BABF79: CR8I2
  loc_BABF7A: ILdI2 arg_10
  loc_BABF7D: CI4UI1
  loc_BABF7E: ImpAdLdI4 MemVar_C0F100
  loc_BABF81: Ary1LdPr
  loc_BABF82: MemStFPR8 global_248
  loc_BABF85: LitI2_Byte 0
  loc_BABF87: CR8I2
  loc_BABF88: ILdI2 arg_10
  loc_BABF8B: CI4UI1
  loc_BABF8C: ImpAdLdI4 MemVar_C0F100
  loc_BABF8F: Ary1LdPr
  loc_BABF90: MemStFPR8 global_256
  loc_BABF93: LitStr "6.0"
  loc_BABF96: ILdI2 arg_10
  loc_BABF99: CI4UI1
  loc_BABF9A: ImpAdLdI4 MemVar_C0F100
  loc_BABF9D: Ary1LdPr
  loc_BABF9E: MemStStrCopy
  loc_BABFA2: ExitProcCb
  loc_BABFA6: ILdI2 arg_10
  loc_BABFA9: CI4UI1
  loc_BABFAA: ImpAdLdI4 MemVar_C0F100
  loc_BABFAD: Ary1LdPr
  loc_BABFAE: MemLdI2 global_4
  loc_BABFB1: LitI2_Byte &HE
  loc_BABFB3: EqI2
  loc_BABFB4: BranchF loc_BAC0DC
  loc_BABFB7: ILdI2 arg_10
  loc_BABFBA: CI4UI1
  loc_BABFBB: ImpAdLdI4 MemVar_C0F100
  loc_BABFBE: Ary1LdPr
  loc_BABFBF: MemLdFPR8 global_232
  loc_BABFC2: LitI2_Byte 9
  loc_BABFC4: CR8I2
  loc_BABFC5: EqR4
  loc_BABFC6: ILdI2 arg_10
  loc_BABFC9: CI4UI1
  loc_BABFCA: ImpAdLdI4 MemVar_C0F100
  loc_BABFCD: Ary1LdPr
  loc_BABFCE: MemLdFPR8 global_240
  loc_BABFD1: LitI2_Byte 4
  loc_BABFD3: CR8I2
  loc_BABFD4: EqR4
  loc_BABFD5: AndI4
  loc_BABFD6: ILdI2 arg_10
  loc_BABFD9: CI4UI1
  loc_BABFDA: ImpAdLdI4 MemVar_C0F100
  loc_BABFDD: Ary1LdPr
  loc_BABFDE: MemLdFPR8 global_232
  loc_BABFE1: LitI2_Byte &HA
  loc_BABFE3: CR8I2
  loc_BABFE4: EqR4
  loc_BABFE5: ILdI2 arg_10
  loc_BABFE8: CI4UI1
  loc_BABFE9: ImpAdLdI4 MemVar_C0F100
  loc_BABFEC: Ary1LdPr
  loc_BABFED: MemLdFPR8 global_240
  loc_BABFF0: LitI2_Byte 4
  loc_BABFF2: CR8I2
  loc_BABFF3: EqR4
  loc_BABFF4: AndI4
  loc_BABFF5: OrI4
  loc_BABFF6: ILdI2 arg_10
  loc_BABFF9: CI4UI1
  loc_BABFFA: ImpAdLdI4 MemVar_C0F100
  loc_BABFFD: Ary1LdPr
  loc_BABFFE: MemLdFPR8 global_232
  loc_BAC001: LitI2_Byte 9
  loc_BAC003: CR8I2
  loc_BAC004: EqR4
  loc_BAC005: ILdI2 arg_10
  loc_BAC008: CI4UI1
  loc_BAC009: ImpAdLdI4 MemVar_C0F100
  loc_BAC00C: Ary1LdPr
  loc_BAC00D: MemLdFPR8 global_240
  loc_BAC010: LitI2_Byte 3
  loc_BAC012: CR8I2
  loc_BAC013: EqR4
  loc_BAC014: AndI4
  loc_BAC015: OrI4
  loc_BAC016: BranchF loc_BAC0DC
  loc_BAC019: LitI2_Byte &H25
  loc_BAC01B: ILdI2 arg_10
  loc_BAC01E: CI4UI1
  loc_BAC01F: ImpAdLdI4 MemVar_C0F100
  loc_BAC022: Ary1LdPr
  loc_BAC023: MemStI2 global_4
  loc_BAC026: LitI2_Byte &H13
  loc_BAC028: CStrUI1
  loc_BAC02A: FStStrNoPop var_98
  loc_BAC02D: ILdI2 arg_10
  loc_BAC030: CI4UI1
  loc_BAC031: ImpAdLdI4 MemVar_C0F100
  loc_BAC034: Ary1LdPr
  loc_BAC035: MemStStrCopy
  loc_BAC039: FFree1Str var_98
  loc_BAC03C: LitStr "I"
  loc_BAC03F: ILdI2 arg_10
  loc_BAC042: CI4UI1
  loc_BAC043: ImpAdLdI4 MemVar_C0F100
  loc_BAC046: Ary1LdPr
  loc_BAC047: MemLdStr global_8
  loc_BAC04A: ConcatStr
  loc_BAC04B: FStStrNoPop var_98
  loc_BAC04E: ILdI2 arg_10
  loc_BAC051: CI4UI1
  loc_BAC052: ImpAdLdI4 MemVar_C0F100
  loc_BAC055: Ary1LdPr
  loc_BAC056: MemStStrCopy
  loc_BAC05A: FFree1Str var_98
  loc_BAC05D: LitStr "AErooftop_2 42431"
  loc_BAC060: ILdI2 arg_10
  loc_BAC063: FLdRfVar var_A8
  loc_BAC066: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAC06B: FFree1Var var_A8 = ""
  loc_BAC06E: LitI4 1
  loc_BAC073: FLdRfVar var_A8
  loc_BAC076: ImpAdCallFPR4  = Chr()
  loc_BAC07B: LitI4 &HE
  loc_BAC080: LitStr "@]"
  loc_BAC083: ILdI2 arg_10
  loc_BAC086: CI4UI1
  loc_BAC087: ImpAdLdI4 MemVar_C0F100
  loc_BAC08A: Ary1LdPr
  loc_BAC08B: MemLdStr global_420
  loc_BAC08E: CStrI4
  loc_BAC090: FStStrNoPop var_98
  loc_BAC093: ConcatStr
  loc_BAC094: CVarStr var_B8
  loc_BAC097: FLdRfVar var_A8
  loc_BAC09A: ConcatVar var_C8
  loc_BAC09E: CStrVarVal var_CC
  loc_BAC0A2: FLdRfVar var_DC
  loc_BAC0A5: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAC0AA: FFreeStr var_98 = ""
  loc_BAC0B1: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAC0BC: LitI2_Byte 0
  loc_BAC0BE: CR8I2
  loc_BAC0BF: ILdI2 arg_10
  loc_BAC0C2: CI4UI1
  loc_BAC0C3: ImpAdLdI4 MemVar_C0F100
  loc_BAC0C6: Ary1LdPr
  loc_BAC0C7: MemStFPR8 global_248
  loc_BAC0CA: LitI2_Byte 0
  loc_BAC0CC: CR8I2
  loc_BAC0CD: ILdI2 arg_10
  loc_BAC0D0: CI4UI1
  loc_BAC0D1: ImpAdLdI4 MemVar_C0F100
  loc_BAC0D4: Ary1LdPr
  loc_BAC0D5: MemStFPR8 global_256
  loc_BAC0D8: ExitProcCb
  loc_BAC0DC: ILdI2 arg_10
  loc_BAC0DF: CI4UI1
  loc_BAC0E0: ImpAdLdI4 MemVar_C0F100
  loc_BAC0E3: Ary1LdPr
  loc_BAC0E4: MemLdI2 global_4
  loc_BAC0E7: LitI2_Byte &H25
  loc_BAC0E9: EqI2
  loc_BAC0EA: BranchF loc_BAC1E7
  loc_BAC0ED: ILdI2 arg_10
  loc_BAC0F0: CI4UI1
  loc_BAC0F1: ImpAdLdI4 MemVar_C0F100
  loc_BAC0F4: Ary1LdPr
  loc_BAC0F5: MemLdFPR8 global_240
  loc_BAC0F8: LitI2_Byte 9
  loc_BAC0FA: CR8I2
  loc_BAC0FB: GtR4
  loc_BAC0FC: BranchF loc_BAC1E7
  loc_BAC0FF: LitI2_Byte &HE
  loc_BAC101: ILdI2 arg_10
  loc_BAC104: CI4UI1
  loc_BAC105: ImpAdLdI4 MemVar_C0F100
  loc_BAC108: Ary1LdPr
  loc_BAC109: MemStI2 global_4
  loc_BAC10C: LitI2_Byte 4
  loc_BAC10E: CR8I2
  loc_BAC10F: ILdI2 arg_10
  loc_BAC112: CI4UI1
  loc_BAC113: ImpAdLdI4 MemVar_C0F100
  loc_BAC116: Ary1LdPr
  loc_BAC117: MemStFPR8 global_240
  loc_BAC11A: LitI2_Byte 8
  loc_BAC11C: CR8I2
  loc_BAC11D: ILdI2 arg_10
  loc_BAC120: CI4UI1
  loc_BAC121: ImpAdLdI4 MemVar_C0F100
  loc_BAC124: Ary1LdPr
  loc_BAC125: MemStFPR8 global_272
  loc_BAC128: LitI2_Byte 4
  loc_BAC12A: CR8I2
  loc_BAC12B: ILdI2 arg_10
  loc_BAC12E: CI4UI1
  loc_BAC12F: ImpAdLdI4 MemVar_C0F100
  loc_BAC132: Ary1LdPr
  loc_BAC133: MemStFPR8 global_284
  loc_BAC136: LitI2_Byte 3
  loc_BAC138: CStrUI1
  loc_BAC13A: FStStrNoPop var_98
  loc_BAC13D: ILdI2 arg_10
  loc_BAC140: CI4UI1
  loc_BAC141: ImpAdLdI4 MemVar_C0F100
  loc_BAC144: Ary1LdPr
  loc_BAC145: MemStStrCopy
  loc_BAC149: FFree1Str var_98
  loc_BAC14C: LitStr "4,4"
  loc_BAC14F: ILdI2 arg_10
  loc_BAC152: CI4UI1
  loc_BAC153: ImpAdLdI4 MemVar_C0F100
  loc_BAC156: Ary1LdPr
  loc_BAC157: MemStStrCopy
  loc_BAC15B: LitI2_Byte &HFF
  loc_BAC15D: ILdI2 arg_10
  loc_BAC160: CI4UI1
  loc_BAC161: ImpAdLdI4 MemVar_C0F100
  loc_BAC164: Ary1LdPr
  loc_BAC165: MemStI2 global_0
  loc_BAC168: LitStr "AErooftop 42431"
  loc_BAC16B: ILdI2 arg_10
  loc_BAC16E: FLdRfVar var_A8
  loc_BAC171: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAC176: FFree1Var var_A8 = ""
  loc_BAC179: LitI4 1
  loc_BAC17E: FLdRfVar var_A8
  loc_BAC181: ImpAdCallFPR4  = Chr()
  loc_BAC186: LitI4 &H25
  loc_BAC18B: LitStr "@]"
  loc_BAC18E: ILdI2 arg_10
  loc_BAC191: CI4UI1
  loc_BAC192: ImpAdLdI4 MemVar_C0F100
  loc_BAC195: Ary1LdPr
  loc_BAC196: MemLdStr global_420
  loc_BAC199: CStrI4
  loc_BAC19B: FStStrNoPop var_98
  loc_BAC19E: ConcatStr
  loc_BAC19F: CVarStr var_B8
  loc_BAC1A2: FLdRfVar var_A8
  loc_BAC1A5: ConcatVar var_C8
  loc_BAC1A9: CStrVarVal var_CC
  loc_BAC1AD: FLdRfVar var_DC
  loc_BAC1B0: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAC1B5: FFreeStr var_98 = ""
  loc_BAC1BC: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAC1C7: LitI2_Byte 0
  loc_BAC1C9: CR8I2
  loc_BAC1CA: ILdI2 arg_10
  loc_BAC1CD: CI4UI1
  loc_BAC1CE: ImpAdLdI4 MemVar_C0F100
  loc_BAC1D1: Ary1LdPr
  loc_BAC1D2: MemStFPR8 global_248
  loc_BAC1D5: LitI2_Byte 0
  loc_BAC1D7: CR8I2
  loc_BAC1D8: ILdI2 arg_10
  loc_BAC1DB: CI4UI1
  loc_BAC1DC: ImpAdLdI4 MemVar_C0F100
  loc_BAC1DF: Ary1LdPr
  loc_BAC1E0: MemStFPR8 global_256
  loc_BAC1E3: ExitProcCb
  loc_BAC1E7: ILdI2 arg_10
  loc_BAC1EA: CI4UI1
  loc_BAC1EB: ImpAdLdI4 MemVar_C0F100
  loc_BAC1EE: Ary1LdPr
  loc_BAC1EF: MemLdI2 global_4
  loc_BAC1F2: LitI2_Byte &H1C
  loc_BAC1F4: EqI2
  loc_BAC1F5: BranchF loc_BAC314
  loc_BAC1F8: FLdRfVar var_E2
  loc_BAC1FB: ImpAdLdRf MemVar_C0F018
  loc_BAC1FE: NewIfNullPr frmMain
  loc_BAC201: VCallAd Control_ID_
  loc_BAC204: FStAdFunc var_E0
  loc_BAC207: FLdPr var_E0
  loc_BAC20A:  = frmMain.CheckBox.Value
  loc_BAC20F: FLdI2 var_E2
  loc_BAC212: CR8I2
  loc_BAC213: LitStr "1"
  loc_BAC216: CR8Str
  loc_BAC218: EqR4
  loc_BAC219: FFree1Ad var_E0
  loc_BAC21C: BranchF loc_BAC2E1
  loc_BAC21F: LitStr "AGbus open"
  loc_BAC222: ILdI2 arg_10
  loc_BAC225: FLdRfVar var_A8
  loc_BAC228: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAC22D: FFree1Var var_A8 = ""
  loc_BAC230: ILdI2 arg_10
  loc_BAC233: CI4UI1
  loc_BAC234: ImpAdLdI4 MemVar_C0F100
  loc_BAC237: Ary1LdPr
  loc_BAC238: MemLdFPR8 global_232
  loc_BAC23B: LitI2_Byte &H1C
  loc_BAC23D: CR8I2
  loc_BAC23E: EqR4
  loc_BAC23F: ILdI2 arg_10
  loc_BAC242: CI4UI1
  loc_BAC243: ImpAdLdI4 MemVar_C0F100
  loc_BAC246: Ary1LdPr
  loc_BAC247: MemLdFPR8 global_240
  loc_BAC24A: LitI2_Byte 5
  loc_BAC24C: CR8I2
  loc_BAC24D: EqR4
  loc_BAC24E: AndI4
  loc_BAC24F: BranchF loc_BAC2DE
  loc_BAC252: LitI2_Byte &H22
  loc_BAC254: ILdI2 arg_10
  loc_BAC257: CI4UI1
  loc_BAC258: ImpAdLdI4 MemVar_C0F100
  loc_BAC25B: Ary1LdPr
  loc_BAC25C: MemStI2 global_4
  loc_BAC25F: LitStr "AEpark_b 15190"
  loc_BAC262: ILdI2 arg_10
  loc_BAC265: FLdRfVar var_A8
  loc_BAC268: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAC26D: FFree1Var var_A8 = ""
  loc_BAC270: LitI4 1
  loc_BAC275: FLdRfVar var_A8
  loc_BAC278: ImpAdCallFPR4  = Chr()
  loc_BAC27D: LitI4 &H1C
  loc_BAC282: LitStr "@]"
  loc_BAC285: ILdI2 arg_10
  loc_BAC288: CI4UI1
  loc_BAC289: ImpAdLdI4 MemVar_C0F100
  loc_BAC28C: Ary1LdPr
  loc_BAC28D: MemLdStr global_420
  loc_BAC290: CStrI4
  loc_BAC292: FStStrNoPop var_98
  loc_BAC295: ConcatStr
  loc_BAC296: CVarStr var_B8
  loc_BAC299: FLdRfVar var_A8
  loc_BAC29C: ConcatVar var_C8
  loc_BAC2A0: CStrVarVal var_CC
  loc_BAC2A4: FLdRfVar var_DC
  loc_BAC2A7: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAC2AC: FFreeStr var_98 = ""
  loc_BAC2B3: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAC2BE: LitI2_Byte 0
  loc_BAC2C0: CR8I2
  loc_BAC2C1: ILdI2 arg_10
  loc_BAC2C4: CI4UI1
  loc_BAC2C5: ImpAdLdI4 MemVar_C0F100
  loc_BAC2C8: Ary1LdPr
  loc_BAC2C9: MemStFPR8 global_248
  loc_BAC2CC: LitI2_Byte 0
  loc_BAC2CE: CR8I2
  loc_BAC2CF: ILdI2 arg_10
  loc_BAC2D2: CI4UI1
  loc_BAC2D3: ImpAdLdI4 MemVar_C0F100
  loc_BAC2D6: Ary1LdPr
  loc_BAC2D7: MemStFPR8 global_256
  loc_BAC2DA: ExitProcCb
  loc_BAC2DE: Branch loc_BAC314
  loc_BAC2E1: LitStr "AGbus close"
  loc_BAC2E4: ILdI2 arg_10
  loc_BAC2E7: FLdRfVar var_A8
  loc_BAC2EA: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAC2EF: FFree1Var var_A8 = ""
  loc_BAC2F2: ILdI2 arg_10
  loc_BAC2F5: CI4UI1
  loc_BAC2F6: ImpAdLdI4 MemVar_C0F100
  loc_BAC2F9: Ary1LdPr
  loc_BAC2FA: MemLdFPR8 global_232
  loc_BAC2FD: LitI2_Byte &H1C
  loc_BAC2FF: CR8I2
  loc_BAC300: EqR4
  loc_BAC301: ILdI2 arg_10
  loc_BAC304: CI4UI1
  loc_BAC305: ImpAdLdI4 MemVar_C0F100
  loc_BAC308: Ary1LdPr
  loc_BAC309: MemLdFPR8 global_240
  loc_BAC30C: LitI2_Byte 5
  loc_BAC30E: CR8I2
  loc_BAC30F: EqR4
  loc_BAC310: AndI4
  loc_BAC311: BranchF loc_BAC314
  loc_BAC314: ILdI2 arg_10
  loc_BAC317: CI4UI1
  loc_BAC318: ImpAdLdI4 MemVar_C0F100
  loc_BAC31B: Ary1LdPr
  loc_BAC31C: MemLdI2 global_4
  loc_BAC31F: LitI2_Byte &H22
  loc_BAC321: EqI2
  loc_BAC322: BranchF loc_BAC447
  loc_BAC325: ILdI2 arg_10
  loc_BAC328: CI4UI1
  loc_BAC329: ImpAdLdI4 MemVar_C0F100
  loc_BAC32C: Ary1LdPr
  loc_BAC32D: MemLdFPR8 global_232
  loc_BAC330: LitI2_Byte &HA
  loc_BAC332: CR8I2
  loc_BAC333: EqR4
  loc_BAC334: ILdI2 arg_10
  loc_BAC337: CI4UI1
  loc_BAC338: ImpAdLdI4 MemVar_C0F100
  loc_BAC33B: Ary1LdPr
  loc_BAC33C: MemLdFPR8 global_240
  loc_BAC33F: LitI2_Byte 3
  loc_BAC341: CR8I2
  loc_BAC342: EqR4
  loc_BAC343: AndI4
  loc_BAC344: ILdI2 arg_10
  loc_BAC347: CI4UI1
  loc_BAC348: ImpAdLdI4 MemVar_C0F100
  loc_BAC34B: Ary1LdPr
  loc_BAC34C: MemLdFPR8 global_232
  loc_BAC34F: LitI2_Byte &HA
  loc_BAC351: CR8I2
  loc_BAC352: EqR4
  loc_BAC353: ILdI2 arg_10
  loc_BAC356: CI4UI1
  loc_BAC357: ImpAdLdI4 MemVar_C0F100
  loc_BAC35A: Ary1LdPr
  loc_BAC35B: MemLdFPR8 global_240
  loc_BAC35E: LitI2_Byte 2
  loc_BAC360: CR8I2
  loc_BAC361: EqR4
  loc_BAC362: AndI4
  loc_BAC363: OrI4
  loc_BAC364: BranchF loc_BAC447
  loc_BAC367: LitI2_Byte &H1C
  loc_BAC369: ILdI2 arg_10
  loc_BAC36C: CI4UI1
  loc_BAC36D: ImpAdLdI4 MemVar_C0F100
  loc_BAC370: Ary1LdPr
  loc_BAC371: MemStI2 global_4
  loc_BAC374: LitI2_Byte &H1C
  loc_BAC376: CR8I2
  loc_BAC377: ILdI2 arg_10
  loc_BAC37A: CI4UI1
  loc_BAC37B: ImpAdLdI4 MemVar_C0F100
  loc_BAC37E: Ary1LdPr
  loc_BAC37F: MemStFPR8 global_232
  loc_BAC382: LitI2_Byte 5
  loc_BAC384: CR8I2
  loc_BAC385: ILdI2 arg_10
  loc_BAC388: CI4UI1
  loc_BAC389: ImpAdLdI4 MemVar_C0F100
  loc_BAC38C: Ary1LdPr
  loc_BAC38D: MemStFPR8 global_240
  loc_BAC390: LitI2_Byte &H1C
  loc_BAC392: CR8I2
  loc_BAC393: ILdI2 arg_10
  loc_BAC396: CI4UI1
  loc_BAC397: ImpAdLdI4 MemVar_C0F100
  loc_BAC39A: Ary1LdPr
  loc_BAC39B: MemStFPR8 global_272
  loc_BAC39E: LitI2_Byte 6
  loc_BAC3A0: CR8I2
  loc_BAC3A1: ILdI2 arg_10
  loc_BAC3A4: CI4UI1
  loc_BAC3A5: ImpAdLdI4 MemVar_C0F100
  loc_BAC3A8: Ary1LdPr
  loc_BAC3A9: MemStFPR8 global_284
  loc_BAC3AC: LitStr "4,4"
  loc_BAC3AF: ILdI2 arg_10
  loc_BAC3B2: CI4UI1
  loc_BAC3B3: ImpAdLdI4 MemVar_C0F100
  loc_BAC3B6: Ary1LdPr
  loc_BAC3B7: MemStStrCopy
  loc_BAC3BB: LitI2_Byte 0
  loc_BAC3BD: ILdI2 arg_10
  loc_BAC3C0: CI4UI1
  loc_BAC3C1: ImpAdLdI4 MemVar_C0F100
  loc_BAC3C4: Ary1LdPr
  loc_BAC3C5: MemStI2 global_0
  loc_BAC3C8: LitStr "AEpark_a 15190"
  loc_BAC3CB: ILdI2 arg_10
  loc_BAC3CE: FLdRfVar var_A8
  loc_BAC3D1: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAC3D6: FFree1Var var_A8 = ""
  loc_BAC3D9: LitI4 1
  loc_BAC3DE: FLdRfVar var_A8
  loc_BAC3E1: ImpAdCallFPR4  = Chr()
  loc_BAC3E6: LitI4 &H22
  loc_BAC3EB: LitStr "@]"
  loc_BAC3EE: ILdI2 arg_10
  loc_BAC3F1: CI4UI1
  loc_BAC3F2: ImpAdLdI4 MemVar_C0F100
  loc_BAC3F5: Ary1LdPr
  loc_BAC3F6: MemLdStr global_420
  loc_BAC3F9: CStrI4
  loc_BAC3FB: FStStrNoPop var_98
  loc_BAC3FE: ConcatStr
  loc_BAC3FF: CVarStr var_B8
  loc_BAC402: FLdRfVar var_A8
  loc_BAC405: ConcatVar var_C8
  loc_BAC409: CStrVarVal var_CC
  loc_BAC40D: FLdRfVar var_DC
  loc_BAC410: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAC415: FFreeStr var_98 = ""
  loc_BAC41C: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAC427: LitI2_Byte 0
  loc_BAC429: CR8I2
  loc_BAC42A: ILdI2 arg_10
  loc_BAC42D: CI4UI1
  loc_BAC42E: ImpAdLdI4 MemVar_C0F100
  loc_BAC431: Ary1LdPr
  loc_BAC432: MemStFPR8 global_248
  loc_BAC435: LitI2_Byte 0
  loc_BAC437: CR8I2
  loc_BAC438: ILdI2 arg_10
  loc_BAC43B: CI4UI1
  loc_BAC43C: ImpAdLdI4 MemVar_C0F100
  loc_BAC43F: Ary1LdPr
  loc_BAC440: MemStFPR8 global_256
  loc_BAC443: ExitProcCb
  loc_BAC447: ILdI2 arg_10
  loc_BAC44A: CI4UI1
  loc_BAC44B: ImpAdLdI4 MemVar_C0F100
  loc_BAC44E: Ary1LdPr
  loc_BAC44F: MemLdI2 global_4
  loc_BAC452: CR8I2
  loc_BAC453: LitStr "36"
  loc_BAC456: CR8Str
  loc_BAC458: EqR4
  loc_BAC459: BranchF loc_BAC6DC
  loc_BAC45C: ILdI2 arg_10
  loc_BAC45F: CI4UI1
  loc_BAC460: ImpAdLdI4 MemVar_C0F100
  loc_BAC463: Ary1LdPr
  loc_BAC464: MemLdFPR8 global_232
  loc_BAC467: LitI2_Byte 0
  loc_BAC469: CR8I2
  loc_BAC46A: EqR4
  loc_BAC46B: ILdI2 arg_10
  loc_BAC46E: CI4UI1
  loc_BAC46F: ImpAdLdI4 MemVar_C0F100
  loc_BAC472: Ary1LdPr
  loc_BAC473: MemLdFPR8 global_240
  loc_BAC476: LitI2_Byte 0
  loc_BAC478: CR8I2
  loc_BAC479: EqR4
  loc_BAC47A: AndI4
  loc_BAC47B: ILdI2 arg_10
  loc_BAC47E: CI4UI1
  loc_BAC47F: ImpAdLdI4 MemVar_C0F100
  loc_BAC482: Ary1LdPr
  loc_BAC483: MemLdFPR8 global_232
  loc_BAC486: LitI2_Byte 1
  loc_BAC488: CR8I2
  loc_BAC489: EqR4
  loc_BAC48A: CI4UI1
  loc_BAC48B: ILdI2 arg_10
  loc_BAC48E: CI4UI1
  loc_BAC48F: ImpAdLdI4 MemVar_C0F100
  loc_BAC492: Ary1LdPr
  loc_BAC493: MemLdFPR8 global_240
  loc_BAC496: CI4R8
  loc_BAC497: AndI4
  loc_BAC498: LitI4 &HE
  loc_BAC49D: EqI4
  loc_BAC49E: OrI4
  loc_BAC49F: ILdI2 arg_10
  loc_BAC4A2: CI4UI1
  loc_BAC4A3: ImpAdLdI4 MemVar_C0F100
  loc_BAC4A6: Ary1LdPr
  loc_BAC4A7: MemLdFPR8 global_232
  loc_BAC4AA: LitI2_Byte 2
  loc_BAC4AC: CR8I2
  loc_BAC4AD: EqR4
  loc_BAC4AE: ILdI2 arg_10
  loc_BAC4B1: CI4UI1
  loc_BAC4B2: ImpAdLdI4 MemVar_C0F100
  loc_BAC4B5: Ary1LdPr
  loc_BAC4B6: MemLdFPR8 global_240
  loc_BAC4B9: LitI2_Byte &HF
  loc_BAC4BB: CR8I2
  loc_BAC4BC: EqR4
  loc_BAC4BD: AndI4
  loc_BAC4BE: OrI4
  loc_BAC4BF: ILdI2 arg_10
  loc_BAC4C2: CI4UI1
  loc_BAC4C3: ImpAdLdI4 MemVar_C0F100
  loc_BAC4C6: Ary1LdPr
  loc_BAC4C7: MemLdFPR8 global_232
  loc_BAC4CA: LitI2_Byte 3
  loc_BAC4CC: CR8I2
  loc_BAC4CD: EqR4
  loc_BAC4CE: ILdI2 arg_10
  loc_BAC4D1: CI4UI1
  loc_BAC4D2: ImpAdLdI4 MemVar_C0F100
  loc_BAC4D5: Ary1LdPr
  loc_BAC4D6: MemLdFPR8 global_240
  loc_BAC4D9: LitI2_Byte &H10
  loc_BAC4DB: CR8I2
  loc_BAC4DC: EqR4
  loc_BAC4DD: AndI4
  loc_BAC4DE: OrI4
  loc_BAC4DF: ILdI2 arg_10
  loc_BAC4E2: CI4UI1
  loc_BAC4E3: ImpAdLdI4 MemVar_C0F100
  loc_BAC4E6: Ary1LdPr
  loc_BAC4E7: MemLdFPR8 global_232
  loc_BAC4EA: LitI2_Byte 4
  loc_BAC4EC: CR8I2
  loc_BAC4ED: EqR4
  loc_BAC4EE: ILdI2 arg_10
  loc_BAC4F1: CI4UI1
  loc_BAC4F2: ImpAdLdI4 MemVar_C0F100
  loc_BAC4F5: Ary1LdPr
  loc_BAC4F6: MemLdFPR8 global_240
  loc_BAC4F9: LitI2_Byte &H11
  loc_BAC4FB: CR8I2
  loc_BAC4FC: EqR4
  loc_BAC4FD: AndI4
  loc_BAC4FE: OrI4
  loc_BAC4FF: ILdI2 arg_10
  loc_BAC502: CI4UI1
  loc_BAC503: ImpAdLdI4 MemVar_C0F100
  loc_BAC506: Ary1LdPr
  loc_BAC507: MemLdFPR8 global_232
  loc_BAC50A: LitI2_Byte 5
  loc_BAC50C: CR8I2
  loc_BAC50D: EqR4
  loc_BAC50E: ILdI2 arg_10
  loc_BAC511: CI4UI1
  loc_BAC512: ImpAdLdI4 MemVar_C0F100
  loc_BAC515: Ary1LdPr
  loc_BAC516: MemLdFPR8 global_240
  loc_BAC519: LitI2_Byte &H12
  loc_BAC51B: CR8I2
  loc_BAC51C: EqR4
  loc_BAC51D: AndI4
  loc_BAC51E: OrI4
  loc_BAC51F: ILdI2 arg_10
  loc_BAC522: CI4UI1
  loc_BAC523: ImpAdLdI4 MemVar_C0F100
  loc_BAC526: Ary1LdPr
  loc_BAC527: MemLdFPR8 global_232
  loc_BAC52A: LitI2_Byte 6
  loc_BAC52C: CR8I2
  loc_BAC52D: EqR4
  loc_BAC52E: ILdI2 arg_10
  loc_BAC531: CI4UI1
  loc_BAC532: ImpAdLdI4 MemVar_C0F100
  loc_BAC535: Ary1LdPr
  loc_BAC536: MemLdFPR8 global_240
  loc_BAC539: LitI2_Byte &H13
  loc_BAC53B: CR8I2
  loc_BAC53C: EqR4
  loc_BAC53D: AndI4
  loc_BAC53E: OrI4
  loc_BAC53F: ILdI2 arg_10
  loc_BAC542: CI4UI1
  loc_BAC543: ImpAdLdI4 MemVar_C0F100
  loc_BAC546: Ary1LdPr
  loc_BAC547: MemLdFPR8 global_232
  loc_BAC54A: LitI2_Byte 7
  loc_BAC54C: CR8I2
  loc_BAC54D: EqR4
  loc_BAC54E: ILdI2 arg_10
  loc_BAC551: CI4UI1
  loc_BAC552: ImpAdLdI4 MemVar_C0F100
  loc_BAC555: Ary1LdPr
  loc_BAC556: MemLdFPR8 global_240
  loc_BAC559: LitI2_Byte &H14
  loc_BAC55B: CR8I2
  loc_BAC55C: EqR4
  loc_BAC55D: AndI4
  loc_BAC55E: OrI4
  loc_BAC55F: ILdI2 arg_10
  loc_BAC562: CI4UI1
  loc_BAC563: ImpAdLdI4 MemVar_C0F100
  loc_BAC566: Ary1LdPr
  loc_BAC567: MemLdFPR8 global_232
  loc_BAC56A: LitI2_Byte 8
  loc_BAC56C: CR8I2
  loc_BAC56D: EqR4
  loc_BAC56E: ILdI2 arg_10
  loc_BAC571: CI4UI1
  loc_BAC572: ImpAdLdI4 MemVar_C0F100
  loc_BAC575: Ary1LdPr
  loc_BAC576: MemLdFPR8 global_240
  loc_BAC579: LitI2_Byte &H15
  loc_BAC57B: CR8I2
  loc_BAC57C: EqR4
  loc_BAC57D: AndI4
  loc_BAC57E: OrI4
  loc_BAC57F: ILdI2 arg_10
  loc_BAC582: CI4UI1
  loc_BAC583: ImpAdLdI4 MemVar_C0F100
  loc_BAC586: Ary1LdPr
  loc_BAC587: MemLdFPR8 global_232
  loc_BAC58A: LitI2_Byte 9
  loc_BAC58C: CR8I2
  loc_BAC58D: EqR4
  loc_BAC58E: ILdI2 arg_10
  loc_BAC591: CI4UI1
  loc_BAC592: ImpAdLdI4 MemVar_C0F100
  loc_BAC595: Ary1LdPr
  loc_BAC596: MemLdFPR8 global_240
  loc_BAC599: LitI2_Byte &H16
  loc_BAC59B: CR8I2
  loc_BAC59C: EqR4
  loc_BAC59D: AndI4
  loc_BAC59E: OrI4
  loc_BAC59F: ILdI2 arg_10
  loc_BAC5A2: CI4UI1
  loc_BAC5A3: ImpAdLdI4 MemVar_C0F100
  loc_BAC5A6: Ary1LdPr
  loc_BAC5A7: MemLdFPR8 global_232
  loc_BAC5AA: LitI2_Byte &HA
  loc_BAC5AC: CR8I2
  loc_BAC5AD: EqR4
  loc_BAC5AE: ILdI2 arg_10
  loc_BAC5B1: CI4UI1
  loc_BAC5B2: ImpAdLdI4 MemVar_C0F100
  loc_BAC5B5: Ary1LdPr
  loc_BAC5B6: MemLdFPR8 global_240
  loc_BAC5B9: LitI2_Byte &H15
  loc_BAC5BB: CR8I2
  loc_BAC5BC: EqR4
  loc_BAC5BD: AndI4
  loc_BAC5BE: OrI4
  loc_BAC5BF: ILdI2 arg_10
  loc_BAC5C2: CI4UI1
  loc_BAC5C3: ImpAdLdI4 MemVar_C0F100
  loc_BAC5C6: Ary1LdPr
  loc_BAC5C7: MemLdFPR8 global_232
  loc_BAC5CA: LitI2_Byte &HB
  loc_BAC5CC: CR8I2
  loc_BAC5CD: EqR4
  loc_BAC5CE: ILdI2 arg_10
  loc_BAC5D1: CI4UI1
  loc_BAC5D2: ImpAdLdI4 MemVar_C0F100
  loc_BAC5D5: Ary1LdPr
  loc_BAC5D6: MemLdFPR8 global_240
  loc_BAC5D9: LitI2_Byte &H18
  loc_BAC5DB: CR8I2
  loc_BAC5DC: EqR4
  loc_BAC5DD: AndI4
  loc_BAC5DE: OrI4
  loc_BAC5DF: ILdI2 arg_10
  loc_BAC5E2: CI4UI1
  loc_BAC5E3: ImpAdLdI4 MemVar_C0F100
  loc_BAC5E6: Ary1LdPr
  loc_BAC5E7: MemLdFPR8 global_232
  loc_BAC5EA: LitI2_Byte &HC
  loc_BAC5EC: CR8I2
  loc_BAC5ED: EqR4
  loc_BAC5EE: ILdI2 arg_10
  loc_BAC5F1: CI4UI1
  loc_BAC5F2: ImpAdLdI4 MemVar_C0F100
  loc_BAC5F5: Ary1LdPr
  loc_BAC5F6: MemLdFPR8 global_240
  loc_BAC5F9: LitI2_Byte &H19
  loc_BAC5FB: CR8I2
  loc_BAC5FC: EqR4
  loc_BAC5FD: AndI4
  loc_BAC5FE: OrI4
  loc_BAC5FF: BranchF loc_BAC6DC
  loc_BAC602: LitI2_Byte &H19
  loc_BAC604: ILdI2 arg_10
  loc_BAC607: CI4UI1
  loc_BAC608: ImpAdLdI4 MemVar_C0F100
  loc_BAC60B: Ary1LdPr
  loc_BAC60C: MemStI2 global_4
  loc_BAC60F: LitI2_Byte &H16
  loc_BAC611: CR8I2
  loc_BAC612: ILdI2 arg_10
  loc_BAC615: CI4UI1
  loc_BAC616: ImpAdLdI4 MemVar_C0F100
  loc_BAC619: Ary1LdPr
  loc_BAC61A: MemStFPR8 global_232
  loc_BAC61D: LitI2_Byte 7
  loc_BAC61F: CR8I2
  loc_BAC620: ILdI2 arg_10
  loc_BAC623: CI4UI1
  loc_BAC624: ImpAdLdI4 MemVar_C0F100
  loc_BAC627: Ary1LdPr
  loc_BAC628: MemStFPR8 global_240
  loc_BAC62B: LitI2_Byte &H16
  loc_BAC62D: CR8I2
  loc_BAC62E: ILdI2 arg_10
  loc_BAC631: CI4UI1
  loc_BAC632: ImpAdLdI4 MemVar_C0F100
  loc_BAC635: Ary1LdPr
  loc_BAC636: MemStFPR8 global_272
  loc_BAC639: LitI2_Byte 7
  loc_BAC63B: CR8I2
  loc_BAC63C: ILdI2 arg_10
  loc_BAC63F: CI4UI1
  loc_BAC640: ImpAdLdI4 MemVar_C0F100
  loc_BAC643: Ary1LdPr
  loc_BAC644: MemStFPR8 global_284
  loc_BAC647: LitI2_Byte 7
  loc_BAC649: CStrUI1
  loc_BAC64B: FStStrNoPop var_98
  loc_BAC64E: ILdI2 arg_10
  loc_BAC651: CI4UI1
  loc_BAC652: ImpAdLdI4 MemVar_C0F100
  loc_BAC655: Ary1LdPr
  loc_BAC656: MemStStrCopy
  loc_BAC65A: FFree1Str var_98
  loc_BAC65D: LitStr "4,4"
  loc_BAC660: ILdI2 arg_10
  loc_BAC663: CI4UI1
  loc_BAC664: ImpAdLdI4 MemVar_C0F100
  loc_BAC667: Ary1LdPr
  loc_BAC668: MemStStrCopy
  loc_BAC66C: LitI2_Byte &HFF
  loc_BAC66E: ILdI2 arg_10
  loc_BAC671: CI4UI1
  loc_BAC672: ImpAdLdI4 MemVar_C0F100
  loc_BAC675: Ary1LdPr
  loc_BAC676: MemStI2 global_0
  loc_BAC679: LitStr "AEpool_a 15188"
  loc_BAC67C: ILdI2 arg_10
  loc_BAC67F: FLdRfVar var_A8
  loc_BAC682: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAC687: FFree1Var var_A8 = ""
  loc_BAC68A: LitI4 1
  loc_BAC68F: FLdRfVar var_A8
  loc_BAC692: ImpAdCallFPR4  = Chr()
  loc_BAC697: LitI4 &H24
  loc_BAC69C: LitStr "@]"
  loc_BAC69F: ILdI2 arg_10
  loc_BAC6A2: CI4UI1
  loc_BAC6A3: ImpAdLdI4 MemVar_C0F100
  loc_BAC6A6: Ary1LdPr
  loc_BAC6A7: MemLdStr global_420
  loc_BAC6AA: CStrI4
  loc_BAC6AC: FStStrNoPop var_98
  loc_BAC6AF: ConcatStr
  loc_BAC6B0: CVarStr var_B8
  loc_BAC6B3: FLdRfVar var_A8
  loc_BAC6B6: ConcatVar var_C8
  loc_BAC6BA: CStrVarVal var_CC
  loc_BAC6BE: FLdRfVar var_DC
  loc_BAC6C1: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAC6C6: FFreeStr var_98 = ""
  loc_BAC6CD: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAC6D8: ExitProcCb
  loc_BAC6DC: ILdI2 arg_10
  loc_BAC6DF: CI4UI1
  loc_BAC6E0: ImpAdLdI4 MemVar_C0F100
  loc_BAC6E3: Ary1LdPr
  loc_BAC6E4: MemLdI2 global_4
  loc_BAC6E7: CR8I2
  loc_BAC6E8: LitStr "25"
  loc_BAC6EB: CR8Str
  loc_BAC6ED: EqR4
  loc_BAC6EE: BranchF loc_BAC8B4
  loc_BAC6F1: ILdI2 arg_10
  loc_BAC6F4: CI4UI1
  loc_BAC6F5: ImpAdLdI4 MemVar_C0F100
  loc_BAC6F8: Ary1LdPr
  loc_BAC6F9: MemLdFPR8 global_232
  loc_BAC6FC: LitI2_Byte &H1A
  loc_BAC6FE: CR8I2
  loc_BAC6FF: EqR4
  loc_BAC700: ILdI2 arg_10
  loc_BAC703: CI4UI1
  loc_BAC704: ImpAdLdI4 MemVar_C0F100
  loc_BAC707: Ary1LdPr
  loc_BAC708: MemLdFPR8 global_240
  loc_BAC70B: LitI2_Byte &HA
  loc_BAC70D: CR8I2
  loc_BAC70E: EqR4
  loc_BAC70F: AndI4
  loc_BAC710: ILdI2 arg_10
  loc_BAC713: CI4UI1
  loc_BAC714: ImpAdLdI4 MemVar_C0F100
  loc_BAC717: Ary1LdPr
  loc_BAC718: MemLdFPR8 global_232
  loc_BAC71B: LitI2_Byte &H19
  loc_BAC71D: CR8I2
  loc_BAC71E: EqR4
  loc_BAC71F: CI4UI1
  loc_BAC720: ILdI2 arg_10
  loc_BAC723: CI4UI1
  loc_BAC724: ImpAdLdI4 MemVar_C0F100
  loc_BAC727: Ary1LdPr
  loc_BAC728: MemLdFPR8 global_240
  loc_BAC72B: CI4R8
  loc_BAC72C: AndI4
  loc_BAC72D: LitI4 9
  loc_BAC732: EqI4
  loc_BAC733: OrI4
  loc_BAC734: ILdI2 arg_10
  loc_BAC737: CI4UI1
  loc_BAC738: ImpAdLdI4 MemVar_C0F100
  loc_BAC73B: Ary1LdPr
  loc_BAC73C: MemLdFPR8 global_232
  loc_BAC73F: LitI2_Byte &H18
  loc_BAC741: CR8I2
  loc_BAC742: EqR4
  loc_BAC743: ILdI2 arg_10
  loc_BAC746: CI4UI1
  loc_BAC747: ImpAdLdI4 MemVar_C0F100
  loc_BAC74A: Ary1LdPr
  loc_BAC74B: MemLdFPR8 global_240
  loc_BAC74E: LitI2_Byte 8
  loc_BAC750: CR8I2
  loc_BAC751: EqR4
  loc_BAC752: AndI4
  loc_BAC753: OrI4
  loc_BAC754: ILdI2 arg_10
  loc_BAC757: CI4UI1
  loc_BAC758: ImpAdLdI4 MemVar_C0F100
  loc_BAC75B: Ary1LdPr
  loc_BAC75C: MemLdFPR8 global_232
  loc_BAC75F: LitI2_Byte &H17
  loc_BAC761: CR8I2
  loc_BAC762: EqR4
  loc_BAC763: ILdI2 arg_10
  loc_BAC766: CI4UI1
  loc_BAC767: ImpAdLdI4 MemVar_C0F100
  loc_BAC76A: Ary1LdPr
  loc_BAC76B: MemLdFPR8 global_240
  loc_BAC76E: LitI2_Byte 7
  loc_BAC770: CR8I2
  loc_BAC771: EqR4
  loc_BAC772: AndI4
  loc_BAC773: OrI4
  loc_BAC774: ILdI2 arg_10
  loc_BAC777: CI4UI1
  loc_BAC778: ImpAdLdI4 MemVar_C0F100
  loc_BAC77B: Ary1LdPr
  loc_BAC77C: MemLdFPR8 global_232
  loc_BAC77F: LitI2_Byte &H16
  loc_BAC781: CR8I2
  loc_BAC782: EqR4
  loc_BAC783: ILdI2 arg_10
  loc_BAC786: CI4UI1
  loc_BAC787: ImpAdLdI4 MemVar_C0F100
  loc_BAC78A: Ary1LdPr
  loc_BAC78B: MemLdFPR8 global_240
  loc_BAC78E: LitI2_Byte 6
  loc_BAC790: CR8I2
  loc_BAC791: EqR4
  loc_BAC792: AndI4
  loc_BAC793: OrI4
  loc_BAC794: ILdI2 arg_10
  loc_BAC797: CI4UI1
  loc_BAC798: ImpAdLdI4 MemVar_C0F100
  loc_BAC79B: Ary1LdPr
  loc_BAC79C: MemLdFPR8 global_232
  loc_BAC79F: LitI2_Byte &H15
  loc_BAC7A1: CR8I2
  loc_BAC7A2: EqR4
  loc_BAC7A3: ILdI2 arg_10
  loc_BAC7A6: CI4UI1
  loc_BAC7A7: ImpAdLdI4 MemVar_C0F100
  loc_BAC7AA: Ary1LdPr
  loc_BAC7AB: MemLdFPR8 global_240
  loc_BAC7AE: LitI2_Byte 5
  loc_BAC7B0: CR8I2
  loc_BAC7B1: EqR4
  loc_BAC7B2: AndI4
  loc_BAC7B3: OrI4
  loc_BAC7B4: ILdI2 arg_10
  loc_BAC7B7: CI4UI1
  loc_BAC7B8: ImpAdLdI4 MemVar_C0F100
  loc_BAC7BB: Ary1LdPr
  loc_BAC7BC: MemLdFPR8 global_232
  loc_BAC7BF: LitI2_Byte &H14
  loc_BAC7C1: CR8I2
  loc_BAC7C2: EqR4
  loc_BAC7C3: ILdI2 arg_10
  loc_BAC7C6: CI4UI1
  loc_BAC7C7: ImpAdLdI4 MemVar_C0F100
  loc_BAC7CA: Ary1LdPr
  loc_BAC7CB: MemLdFPR8 global_240
  loc_BAC7CE: LitI2_Byte 4
  loc_BAC7D0: CR8I2
  loc_BAC7D1: EqR4
  loc_BAC7D2: AndI4
  loc_BAC7D3: OrI4
  loc_BAC7D4: BranchF loc_BAC8B4
  loc_BAC7D7: LitStr "36"
  loc_BAC7DA: CI2Str
  loc_BAC7DC: ILdI2 arg_10
  loc_BAC7DF: CI4UI1
  loc_BAC7E0: ImpAdLdI4 MemVar_C0F100
  loc_BAC7E3: Ary1LdPr
  loc_BAC7E4: MemStI2 global_4
  loc_BAC7E7: LitI2_Byte 7
  loc_BAC7E9: CR8I2
  loc_BAC7EA: ILdI2 arg_10
  loc_BAC7ED: CI4UI1
  loc_BAC7EE: ImpAdLdI4 MemVar_C0F100
  loc_BAC7F1: Ary1LdPr
  loc_BAC7F2: MemStFPR8 global_232
  loc_BAC7F5: LitI2_Byte &H13
  loc_BAC7F7: CR8I2
  loc_BAC7F8: ILdI2 arg_10
  loc_BAC7FB: CI4UI1
  loc_BAC7FC: ImpAdLdI4 MemVar_C0F100
  loc_BAC7FF: Ary1LdPr
  loc_BAC800: MemStFPR8 global_240
  loc_BAC803: LitI2_Byte 7
  loc_BAC805: CR8I2
  loc_BAC806: ILdI2 arg_10
  loc_BAC809: CI4UI1
  loc_BAC80A: ImpAdLdI4 MemVar_C0F100
  loc_BAC80D: Ary1LdPr
  loc_BAC80E: MemStFPR8 global_272
  loc_BAC811: LitI2_Byte &H13
  loc_BAC813: CR8I2
  loc_BAC814: ILdI2 arg_10
  loc_BAC817: CI4UI1
  loc_BAC818: ImpAdLdI4 MemVar_C0F100
  loc_BAC81B: Ary1LdPr
  loc_BAC81C: MemStFPR8 global_284
  loc_BAC81F: LitI2_Byte 7
  loc_BAC821: CStrUI1
  loc_BAC823: FStStrNoPop var_98
  loc_BAC826: ILdI2 arg_10
  loc_BAC829: CI4UI1
  loc_BAC82A: ImpAdLdI4 MemVar_C0F100
  loc_BAC82D: Ary1LdPr
  loc_BAC82E: MemStStrCopy
  loc_BAC832: FFree1Str var_98
  loc_BAC835: LitStr "2,2"
  loc_BAC838: ILdI2 arg_10
  loc_BAC83B: CI4UI1
  loc_BAC83C: ImpAdLdI4 MemVar_C0F100
  loc_BAC83F: Ary1LdPr
  loc_BAC840: MemStStrCopy
  loc_BAC844: LitI2_Byte &HFF
  loc_BAC846: ILdI2 arg_10
  loc_BAC849: CI4UI1
  loc_BAC84A: ImpAdLdI4 MemVar_C0F100
  loc_BAC84D: Ary1LdPr
  loc_BAC84E: MemStI2 global_0
  loc_BAC851: LitStr "AEpool_b 15188"
  loc_BAC854: ILdI2 arg_10
  loc_BAC857: FLdRfVar var_A8
  loc_BAC85A: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAC85F: FFree1Var var_A8 = ""
  loc_BAC862: LitI4 1
  loc_BAC867: FLdRfVar var_A8
  loc_BAC86A: ImpAdCallFPR4  = Chr()
  loc_BAC86F: LitI4 &H19
  loc_BAC874: LitStr "@]"
  loc_BAC877: ILdI2 arg_10
  loc_BAC87A: CI4UI1
  loc_BAC87B: ImpAdLdI4 MemVar_C0F100
  loc_BAC87E: Ary1LdPr
  loc_BAC87F: MemLdStr global_420
  loc_BAC882: CStrI4
  loc_BAC884: FStStrNoPop var_98
  loc_BAC887: ConcatStr
  loc_BAC888: CVarStr var_B8
  loc_BAC88B: FLdRfVar var_A8
  loc_BAC88E: ConcatVar var_C8
  loc_BAC892: CStrVarVal var_CC
  loc_BAC896: FLdRfVar var_DC
  loc_BAC899: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAC89E: FFreeStr var_98 = ""
  loc_BAC8A5: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAC8B0: ExitProcCb
  loc_BAC8B4: ILdI2 arg_10
  loc_BAC8B7: CI4UI1
  loc_BAC8B8: ImpAdLdI4 MemVar_C0F100
  loc_BAC8BB: Ary1LdPr
  loc_BAC8BC: MemLdI2 global_4
  loc_BAC8BF: CR8I2
  loc_BAC8C0: LitStr "36"
  loc_BAC8C3: CR8Str
  loc_BAC8C5: EqR4
  loc_BAC8C6: BranchF loc_BACA9F
  loc_BAC8C9: ILdI2 arg_10
  loc_BAC8CC: CI4UI1
  loc_BAC8CD: ImpAdLdI4 MemVar_C0F100
  loc_BAC8D0: AryLock
  loc_BAC8D3: Ary1LdPr
  loc_BAC8D4: MemLdRfVar from_stack_1.global_204
  loc_BAC8D7: CVarRef
  loc_BAC8DC: FLdRfVar var_A8
  loc_BAC8DF: ImpAdCallFPR4  = LCase()
  loc_BAC8E4: AryUnlock
  loc_BAC8E7: FLdRfVar var_CC
  loc_BAC8EA: FLdRfVar var_E0
  loc_BAC8ED: LitI4 0
  loc_BAC8F2: LitI2_Byte 0
  loc_BAC8F4: LitI4 1
  loc_BAC8F9: ImpAdLdI4 MemVar_C0F044
  loc_BAC8FC: LitStr "habbos\"
  loc_BAC8FF: ConcatStr
  loc_BAC900: CVarStr var_B8
  loc_BAC903: FLdRfVar var_A8
  loc_BAC906: ConcatVar var_C8
  loc_BAC90A: LitVarStr var_108, "\tickets.txt"
  loc_BAC90F: ConcatVar var_DC
  loc_BAC913: CStrVarVal var_98
  loc_BAC917: ImpAdLdRf MemVar_C0F040
  loc_BAC91A: NewIfNullPr IFileSystem3
  loc_BAC91D: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_BAC922: FLdPr var_E0
  loc_BAC925:  = Me.ReadAll
  loc_BAC92A: FLdZeroAd var_CC
  loc_BAC92D: CVarStr var_128
  loc_BAC930: FStVar var_118
  loc_BAC934: FFree1Str var_98
  loc_BAC937: FFree1Ad var_E0
  loc_BAC93A: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAC945: ILdI2 arg_10
  loc_BAC948: CI4UI1
  loc_BAC949: ImpAdLdI4 MemVar_C0F100
  loc_BAC94C: Ary1LdPr
  loc_BAC94D: MemLdFPR8 global_232
  loc_BAC950: LitStr "21"
  loc_BAC953: CR8Str
  loc_BAC955: EqR4
  loc_BAC956: ILdI2 arg_10
  loc_BAC959: CI4UI1
  loc_BAC95A: ImpAdLdI4 MemVar_C0F100
  loc_BAC95D: Ary1LdPr
  loc_BAC95E: MemLdFPR8 global_240
  loc_BAC961: LitStr "9"
  loc_BAC964: CR8Str
  loc_BAC966: EqR4
  loc_BAC967: AndI4
  loc_BAC968: BranchF loc_BACA9F
  loc_BAC96B: FLdRfVar var_118
  loc_BAC96E: LitVarStr var_F4, "0"
  loc_BAC973: HardType
  loc_BAC974: EqVar var_A8
  loc_BAC978: LitVar_FALSE
  loc_BAC97C: HardType
  loc_BAC97D: EqVar var_B8
  loc_BAC981: ILdI2 arg_10
  loc_BAC984: CI4UI1
  loc_BAC985: ImpAdLdI4 MemVar_C0F100
  loc_BAC988: Ary1LdPr
  loc_BAC989: MemLdStr global_348
  loc_BAC98C: LitStr "."
  loc_BAC98F: EqStr
  loc_BAC991: LitI2_Byte 0
  loc_BAC993: EqI2
  loc_BAC994: CVarBoolI2 var_138
  loc_BAC998: AndVar var_C8
  loc_BAC99C: FLdRfVar var_E2
  loc_BAC99F: ImpAdLdRf MemVar_C0F018
  loc_BAC9A2: NewIfNullPr frmMain
  loc_BAC9A5: VCallAd Control_ID_
  loc_BAC9A8: FStAdFunc var_E0
  loc_BAC9AB: FLdPr var_E0
  loc_BAC9AE:  = frmMain.CheckBox.Value
  loc_BAC9B3: FLdI2 var_E2
  loc_BAC9B6: CR8I2
  loc_BAC9B7: LitStr "1"
  loc_BAC9BA: CR8Str
  loc_BAC9BC: EqR4
  loc_BAC9BD: CVarBoolI2 var_148
  loc_BAC9C1: AndVar var_DC
  loc_BAC9C5: CBoolVarNull
  loc_BAC9C7: FFree1Ad var_E0
  loc_BAC9CA: FFreeVar var_138 = ""
  loc_BAC9D1: BranchF loc_BAC9F7
  loc_BAC9D4: LitStr "21"
  loc_BAC9D7: CR8Str
  loc_BAC9D9: ILdI2 arg_10
  loc_BAC9DC: CI4UI1
  loc_BAC9DD: ImpAdLdI4 MemVar_C0F100
  loc_BAC9E0: Ary1LdPr
  loc_BAC9E1: MemStFPR8 global_272
  loc_BAC9E4: LitStr "8"
  loc_BAC9E7: CR8Str
  loc_BAC9E9: ILdI2 arg_10
  loc_BAC9EC: CI4UI1
  loc_BAC9ED: ImpAdLdI4 MemVar_C0F100
  loc_BAC9F0: Ary1LdPr
  loc_BAC9F1: MemStFPR8 global_284
  loc_BAC9F4: Branch loc_BACA9F
  loc_BAC9F7: FLdRfVar var_118
  loc_BAC9FA: LitVarStr var_F4, "0"
  loc_BAC9FF: HardType
  loc_BACA00: EqVar var_A8
  loc_BACA04: LitVar_TRUE var_108
  loc_BACA07: HardType
  loc_BACA08: EqVar var_B8
  loc_BACA0C: ILdI2 arg_10
  loc_BACA0F: CI4UI1
  loc_BACA10: ImpAdLdI4 MemVar_C0F100
  loc_BACA13: Ary1LdPr
  loc_BACA14: MemLdStr global_348
  loc_BACA17: LitStr "."
  loc_BACA1A: EqStr
  loc_BACA1C: LitI2_Byte &HFF
  loc_BACA1E: EqI2
  loc_BACA1F: CVarBoolI2 var_138
  loc_BACA23: OrVar var_C8
  loc_BACA27: FLdRfVar var_E2
  loc_BACA2A: ImpAdLdRf MemVar_C0F018
  loc_BACA2D: NewIfNullPr frmMain
  loc_BACA30: VCallAd Control_ID_
  loc_BACA33: FStAdFunc var_E0
  loc_BACA36: FLdPr var_E0
  loc_BACA39:  = frmMain.CheckBox.Value
  loc_BACA3E: FLdI2 var_E2
  loc_BACA41: CR8I2
  loc_BACA42: LitStr "0"
  loc_BACA45: CR8Str
  loc_BACA47: EqR4
  loc_BACA48: CVarBoolI2 var_148
  loc_BACA4C: OrVar var_DC
  loc_BACA50: CBoolVarNull
  loc_BACA52: FFree1Ad var_E0
  loc_BACA55: FFreeVar var_138 = ""
  loc_BACA5C: BranchF loc_BACA9F
  loc_BACA5F: LitStr "20"
  loc_BACA62: CR8Str
  loc_BACA64: ILdI2 arg_10
  loc_BACA67: CI4UI1
  loc_BACA68: ImpAdLdI4 MemVar_C0F100
  loc_BACA6B: Ary1LdPr
  loc_BACA6C: MemStFPR8 global_232
  loc_BACA6F: LitStr "9"
  loc_BACA72: CR8Str
  loc_BACA74: ILdI2 arg_10
  loc_BACA77: CI4UI1
  loc_BACA78: ImpAdLdI4 MemVar_C0F100
  loc_BACA7B: Ary1LdPr
  loc_BACA7C: MemStFPR8 global_240
  loc_BACA7F: LitStr "20"
  loc_BACA82: CR8Str
  loc_BACA84: ILdI2 arg_10
  loc_BACA87: CI4UI1
  loc_BACA88: ImpAdLdI4 MemVar_C0F100
  loc_BACA8B: Ary1LdPr
  loc_BACA8C: MemStFPR8 global_272
  loc_BACA8F: LitStr "9"
  loc_BACA92: CR8Str
  loc_BACA94: ILdI2 arg_10
  loc_BACA97: CI4UI1
  loc_BACA98: ImpAdLdI4 MemVar_C0F100
  loc_BACA9B: Ary1LdPr
  loc_BACA9C: MemStFPR8 global_284
  loc_BACA9F: ILdI2 arg_10
  loc_BACAA2: CI4UI1
  loc_BACAA3: ImpAdLdI4 MemVar_C0F100
  loc_BACAA6: Ary1LdPr
  loc_BACAA7: MemLdI2 global_4
  loc_BACAAA: CR8I2
  loc_BACAAB: LitStr "36"
  loc_BACAAE: CR8Str
  loc_BACAB0: EqR4
  loc_BACAB1: BranchF loc_BACC8A
  loc_BACAB4: ILdI2 arg_10
  loc_BACAB7: CI4UI1
  loc_BACAB8: ImpAdLdI4 MemVar_C0F100
  loc_BACABB: AryLock
  loc_BACABE: Ary1LdPr
  loc_BACABF: MemLdRfVar from_stack_1.global_204
  loc_BACAC2: CVarRef
  loc_BACAC7: FLdRfVar var_A8
  loc_BACACA: ImpAdCallFPR4  = LCase()
  loc_BACACF: AryUnlock
  loc_BACAD2: FLdRfVar var_CC
  loc_BACAD5: FLdRfVar var_E0
  loc_BACAD8: LitI4 0
  loc_BACADD: LitI2_Byte 0
  loc_BACADF: LitI4 1
  loc_BACAE4: ImpAdLdI4 MemVar_C0F044
  loc_BACAE7: LitStr "habbos\"
  loc_BACAEA: ConcatStr
  loc_BACAEB: CVarStr var_B8
  loc_BACAEE: FLdRfVar var_A8
  loc_BACAF1: ConcatVar var_C8
  loc_BACAF5: LitVarStr var_108, "\tickets.txt"
  loc_BACAFA: ConcatVar var_DC
  loc_BACAFE: CStrVarVal var_98
  loc_BACB02: ImpAdLdRf MemVar_C0F040
  loc_BACB05: NewIfNullPr IFileSystem3
  loc_BACB08: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_BACB0D: FLdPr var_E0
  loc_BACB10:  = Me.ReadAll
  loc_BACB15: FLdZeroAd var_CC
  loc_BACB18: CVarStr var_128
  loc_BACB1B: FStVar var_118
  loc_BACB1F: FFree1Str var_98
  loc_BACB22: FFree1Ad var_E0
  loc_BACB25: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BACB30: ILdI2 arg_10
  loc_BACB33: CI4UI1
  loc_BACB34: ImpAdLdI4 MemVar_C0F100
  loc_BACB37: Ary1LdPr
  loc_BACB38: MemLdFPR8 global_232
  loc_BACB3B: LitStr "21"
  loc_BACB3E: CR8Str
  loc_BACB40: EqR4
  loc_BACB41: ILdI2 arg_10
  loc_BACB44: CI4UI1
  loc_BACB45: ImpAdLdI4 MemVar_C0F100
  loc_BACB48: Ary1LdPr
  loc_BACB49: MemLdFPR8 global_240
  loc_BACB4C: LitStr "8"
  loc_BACB4F: CR8Str
  loc_BACB51: EqR4
  loc_BACB52: AndI4
  loc_BACB53: BranchF loc_BACC8A
  loc_BACB56: FLdRfVar var_118
  loc_BACB59: LitVarStr var_F4, "0"
  loc_BACB5E: HardType
  loc_BACB5F: EqVar var_A8
  loc_BACB63: LitVar_FALSE
  loc_BACB67: HardType
  loc_BACB68: EqVar var_B8
  loc_BACB6C: ILdI2 arg_10
  loc_BACB6F: CI4UI1
  loc_BACB70: ImpAdLdI4 MemVar_C0F100
  loc_BACB73: Ary1LdPr
  loc_BACB74: MemLdStr global_348
  loc_BACB77: LitStr "."
  loc_BACB7A: EqStr
  loc_BACB7C: LitI2_Byte 0
  loc_BACB7E: EqI2
  loc_BACB7F: CVarBoolI2 var_138
  loc_BACB83: AndVar var_C8
  loc_BACB87: FLdRfVar var_E2
  loc_BACB8A: ImpAdLdRf MemVar_C0F018
  loc_BACB8D: NewIfNullPr frmMain
  loc_BACB90: VCallAd Control_ID_
  loc_BACB93: FStAdFunc var_E0
  loc_BACB96: FLdPr var_E0
  loc_BACB99:  = frmMain.CheckBox.Value
  loc_BACB9E: FLdI2 var_E2
  loc_BACBA1: CR8I2
  loc_BACBA2: LitStr "1"
  loc_BACBA5: CR8Str
  loc_BACBA7: EqR4
  loc_BACBA8: CVarBoolI2 var_148
  loc_BACBAC: AndVar var_DC
  loc_BACBB0: CBoolVarNull
  loc_BACBB2: FFree1Ad var_E0
  loc_BACBB5: FFreeVar var_138 = ""
  loc_BACBBC: BranchF loc_BACBE2
  loc_BACBBF: LitStr "21"
  loc_BACBC2: CR8Str
  loc_BACBC4: ILdI2 arg_10
  loc_BACBC7: CI4UI1
  loc_BACBC8: ImpAdLdI4 MemVar_C0F100
  loc_BACBCB: Ary1LdPr
  loc_BACBCC: MemStFPR8 global_272
  loc_BACBCF: LitStr "7"
  loc_BACBD2: CR8Str
  loc_BACBD4: ILdI2 arg_10
  loc_BACBD7: CI4UI1
  loc_BACBD8: ImpAdLdI4 MemVar_C0F100
  loc_BACBDB: Ary1LdPr
  loc_BACBDC: MemStFPR8 global_284
  loc_BACBDF: Branch loc_BACC8A
  loc_BACBE2: FLdRfVar var_118
  loc_BACBE5: LitVarStr var_F4, "0"
  loc_BACBEA: HardType
  loc_BACBEB: EqVar var_A8
  loc_BACBEF: LitVar_TRUE var_108
  loc_BACBF2: HardType
  loc_BACBF3: EqVar var_B8
  loc_BACBF7: ILdI2 arg_10
  loc_BACBFA: CI4UI1
  loc_BACBFB: ImpAdLdI4 MemVar_C0F100
  loc_BACBFE: Ary1LdPr
  loc_BACBFF: MemLdStr global_348
  loc_BACC02: LitStr "."
  loc_BACC05: EqStr
  loc_BACC07: LitI2_Byte &HFF
  loc_BACC09: EqI2
  loc_BACC0A: CVarBoolI2 var_138
  loc_BACC0E: OrVar var_C8
  loc_BACC12: FLdRfVar var_E2
  loc_BACC15: ImpAdLdRf MemVar_C0F018
  loc_BACC18: NewIfNullPr frmMain
  loc_BACC1B: VCallAd Control_ID_
  loc_BACC1E: FStAdFunc var_E0
  loc_BACC21: FLdPr var_E0
  loc_BACC24:  = frmMain.CheckBox.Value
  loc_BACC29: FLdI2 var_E2
  loc_BACC2C: CR8I2
  loc_BACC2D: LitStr "0"
  loc_BACC30: CR8Str
  loc_BACC32: EqR4
  loc_BACC33: CVarBoolI2 var_148
  loc_BACC37: OrVar var_DC
  loc_BACC3B: CBoolVarNull
  loc_BACC3D: FFree1Ad var_E0
  loc_BACC40: FFreeVar var_138 = ""
  loc_BACC47: BranchF loc_BACC8A
  loc_BACC4A: LitStr "20"
  loc_BACC4D: CR8Str
  loc_BACC4F: ILdI2 arg_10
  loc_BACC52: CI4UI1
  loc_BACC53: ImpAdLdI4 MemVar_C0F100
  loc_BACC56: Ary1LdPr
  loc_BACC57: MemStFPR8 global_232
  loc_BACC5A: LitStr "8"
  loc_BACC5D: CR8Str
  loc_BACC5F: ILdI2 arg_10
  loc_BACC62: CI4UI1
  loc_BACC63: ImpAdLdI4 MemVar_C0F100
  loc_BACC66: Ary1LdPr
  loc_BACC67: MemStFPR8 global_240
  loc_BACC6A: LitStr "20"
  loc_BACC6D: CR8Str
  loc_BACC6F: ILdI2 arg_10
  loc_BACC72: CI4UI1
  loc_BACC73: ImpAdLdI4 MemVar_C0F100
  loc_BACC76: Ary1LdPr
  loc_BACC77: MemStFPR8 global_272
  loc_BACC7A: LitStr "8"
  loc_BACC7D: CR8Str
  loc_BACC7F: ILdI2 arg_10
  loc_BACC82: CI4UI1
  loc_BACC83: ImpAdLdI4 MemVar_C0F100
  loc_BACC86: Ary1LdPr
  loc_BACC87: MemStFPR8 global_284
  loc_BACC8A: ILdI2 arg_10
  loc_BACC8D: CI4UI1
  loc_BACC8E: ImpAdLdI4 MemVar_C0F100
  loc_BACC91: Ary1LdPr
  loc_BACC92: MemLdI2 global_4
  loc_BACC95: CR8I2
  loc_BACC96: LitStr "36"
  loc_BACC99: CR8Str
  loc_BACC9B: EqR4
  loc_BACC9C: BranchF loc_BACE75
  loc_BACC9F: ILdI2 arg_10
  loc_BACCA2: CI4UI1
  loc_BACCA3: ImpAdLdI4 MemVar_C0F100
  loc_BACCA6: AryLock
  loc_BACCA9: Ary1LdPr
  loc_BACCAA: MemLdRfVar from_stack_1.global_204
  loc_BACCAD: CVarRef
  loc_BACCB2: FLdRfVar var_A8
  loc_BACCB5: ImpAdCallFPR4  = LCase()
  loc_BACCBA: AryUnlock
  loc_BACCBD: FLdRfVar var_CC
  loc_BACCC0: FLdRfVar var_E0
  loc_BACCC3: LitI4 0
  loc_BACCC8: LitI2_Byte 0
  loc_BACCCA: LitI4 1
  loc_BACCCF: ImpAdLdI4 MemVar_C0F044
  loc_BACCD2: LitStr "habbos\"
  loc_BACCD5: ConcatStr
  loc_BACCD6: CVarStr var_B8
  loc_BACCD9: FLdRfVar var_A8
  loc_BACCDC: ConcatVar var_C8
  loc_BACCE0: LitVarStr var_108, "\tickets.txt"
  loc_BACCE5: ConcatVar var_DC
  loc_BACCE9: CStrVarVal var_98
  loc_BACCED: ImpAdLdRf MemVar_C0F040
  loc_BACCF0: NewIfNullPr IFileSystem3
  loc_BACCF3: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_BACCF8: FLdPr var_E0
  loc_BACCFB:  = Me.ReadAll
  loc_BACD00: FLdZeroAd var_CC
  loc_BACD03: CVarStr var_128
  loc_BACD06: FStVar var_118
  loc_BACD0A: FFree1Str var_98
  loc_BACD0D: FFree1Ad var_E0
  loc_BACD10: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BACD1B: ILdI2 arg_10
  loc_BACD1E: CI4UI1
  loc_BACD1F: ImpAdLdI4 MemVar_C0F100
  loc_BACD22: Ary1LdPr
  loc_BACD23: MemLdFPR8 global_232
  loc_BACD26: LitStr "21"
  loc_BACD29: CR8Str
  loc_BACD2B: EqR4
  loc_BACD2C: ILdI2 arg_10
  loc_BACD2F: CI4UI1
  loc_BACD30: ImpAdLdI4 MemVar_C0F100
  loc_BACD33: Ary1LdPr
  loc_BACD34: MemLdFPR8 global_240
  loc_BACD37: LitStr "7"
  loc_BACD3A: CR8Str
  loc_BACD3C: EqR4
  loc_BACD3D: AndI4
  loc_BACD3E: BranchF loc_BACE75
  loc_BACD41: FLdRfVar var_118
  loc_BACD44: LitVarStr var_F4, "0"
  loc_BACD49: HardType
  loc_BACD4A: EqVar var_A8
  loc_BACD4E: LitVar_FALSE
  loc_BACD52: HardType
  loc_BACD53: EqVar var_B8
  loc_BACD57: ILdI2 arg_10
  loc_BACD5A: CI4UI1
  loc_BACD5B: ImpAdLdI4 MemVar_C0F100
  loc_BACD5E: Ary1LdPr
  loc_BACD5F: MemLdStr global_348
  loc_BACD62: LitStr "."
  loc_BACD65: EqStr
  loc_BACD67: LitI2_Byte 0
  loc_BACD69: EqI2
  loc_BACD6A: CVarBoolI2 var_138
  loc_BACD6E: AndVar var_C8
  loc_BACD72: FLdRfVar var_E2
  loc_BACD75: ImpAdLdRf MemVar_C0F018
  loc_BACD78: NewIfNullPr frmMain
  loc_BACD7B: VCallAd Control_ID_
  loc_BACD7E: FStAdFunc var_E0
  loc_BACD81: FLdPr var_E0
  loc_BACD84:  = frmMain.CheckBox.Value
  loc_BACD89: FLdI2 var_E2
  loc_BACD8C: CR8I2
  loc_BACD8D: LitStr "1"
  loc_BACD90: CR8Str
  loc_BACD92: EqR4
  loc_BACD93: CVarBoolI2 var_148
  loc_BACD97: AndVar var_DC
  loc_BACD9B: CBoolVarNull
  loc_BACD9D: FFree1Ad var_E0
  loc_BACDA0: FFreeVar var_138 = ""
  loc_BACDA7: BranchF loc_BACDCD
  loc_BACDAA: LitStr "22"
  loc_BACDAD: CR8Str
  loc_BACDAF: ILdI2 arg_10
  loc_BACDB2: CI4UI1
  loc_BACDB3: ImpAdLdI4 MemVar_C0F100
  loc_BACDB6: Ary1LdPr
  loc_BACDB7: MemStFPR8 global_272
  loc_BACDBA: LitStr "7"
  loc_BACDBD: CR8Str
  loc_BACDBF: ILdI2 arg_10
  loc_BACDC2: CI4UI1
  loc_BACDC3: ImpAdLdI4 MemVar_C0F100
  loc_BACDC6: Ary1LdPr
  loc_BACDC7: MemStFPR8 global_284
  loc_BACDCA: Branch loc_BACE75
  loc_BACDCD: FLdRfVar var_118
  loc_BACDD0: LitVarStr var_F4, "0"
  loc_BACDD5: HardType
  loc_BACDD6: EqVar var_A8
  loc_BACDDA: LitVar_TRUE var_108
  loc_BACDDD: HardType
  loc_BACDDE: EqVar var_B8
  loc_BACDE2: ILdI2 arg_10
  loc_BACDE5: CI4UI1
  loc_BACDE6: ImpAdLdI4 MemVar_C0F100
  loc_BACDE9: Ary1LdPr
  loc_BACDEA: MemLdStr global_348
  loc_BACDED: LitStr "."
  loc_BACDF0: EqStr
  loc_BACDF2: LitI2_Byte &HFF
  loc_BACDF4: EqI2
  loc_BACDF5: CVarBoolI2 var_138
  loc_BACDF9: OrVar var_C8
  loc_BACDFD: FLdRfVar var_E2
  loc_BACE00: ImpAdLdRf MemVar_C0F018
  loc_BACE03: NewIfNullPr frmMain
  loc_BACE06: VCallAd Control_ID_
  loc_BACE09: FStAdFunc var_E0
  loc_BACE0C: FLdPr var_E0
  loc_BACE0F:  = frmMain.CheckBox.Value
  loc_BACE14: FLdI2 var_E2
  loc_BACE17: CR8I2
  loc_BACE18: LitStr "0"
  loc_BACE1B: CR8Str
  loc_BACE1D: EqR4
  loc_BACE1E: CVarBoolI2 var_148
  loc_BACE22: OrVar var_DC
  loc_BACE26: CBoolVarNull
  loc_BACE28: FFree1Ad var_E0
  loc_BACE2B: FFreeVar var_138 = ""
  loc_BACE32: BranchF loc_BACE75
  loc_BACE35: LitStr "20"
  loc_BACE38: CR8Str
  loc_BACE3A: ILdI2 arg_10
  loc_BACE3D: CI4UI1
  loc_BACE3E: ImpAdLdI4 MemVar_C0F100
  loc_BACE41: Ary1LdPr
  loc_BACE42: MemStFPR8 global_232
  loc_BACE45: LitStr "7"
  loc_BACE48: CR8Str
  loc_BACE4A: ILdI2 arg_10
  loc_BACE4D: CI4UI1
  loc_BACE4E: ImpAdLdI4 MemVar_C0F100
  loc_BACE51: Ary1LdPr
  loc_BACE52: MemStFPR8 global_240
  loc_BACE55: LitStr "20"
  loc_BACE58: CR8Str
  loc_BACE5A: ILdI2 arg_10
  loc_BACE5D: CI4UI1
  loc_BACE5E: ImpAdLdI4 MemVar_C0F100
  loc_BACE61: Ary1LdPr
  loc_BACE62: MemStFPR8 global_272
  loc_BACE65: LitStr "7"
  loc_BACE68: CR8Str
  loc_BACE6A: ILdI2 arg_10
  loc_BACE6D: CI4UI1
  loc_BACE6E: ImpAdLdI4 MemVar_C0F100
  loc_BACE71: Ary1LdPr
  loc_BACE72: MemStFPR8 global_284
  loc_BACE75: ILdI2 arg_10
  loc_BACE78: CI4UI1
  loc_BACE79: ImpAdLdI4 MemVar_C0F100
  loc_BACE7C: Ary1LdPr
  loc_BACE7D: MemLdI2 global_4
  loc_BACE80: CR8I2
  loc_BACE81: LitStr "36"
  loc_BACE84: CR8Str
  loc_BACE86: EqR4
  loc_BACE87: BranchF loc_BAD060
  loc_BACE8A: ILdI2 arg_10
  loc_BACE8D: CI4UI1
  loc_BACE8E: ImpAdLdI4 MemVar_C0F100
  loc_BACE91: AryLock
  loc_BACE94: Ary1LdPr
  loc_BACE95: MemLdRfVar from_stack_1.global_204
  loc_BACE98: CVarRef
  loc_BACE9D: FLdRfVar var_A8
  loc_BACEA0: ImpAdCallFPR4  = LCase()
  loc_BACEA5: AryUnlock
  loc_BACEA8: FLdRfVar var_CC
  loc_BACEAB: FLdRfVar var_E0
  loc_BACEAE: LitI4 0
  loc_BACEB3: LitI2_Byte 0
  loc_BACEB5: LitI4 1
  loc_BACEBA: ImpAdLdI4 MemVar_C0F044
  loc_BACEBD: LitStr "habbos\"
  loc_BACEC0: ConcatStr
  loc_BACEC1: CVarStr var_B8
  loc_BACEC4: FLdRfVar var_A8
  loc_BACEC7: ConcatVar var_C8
  loc_BACECB: LitVarStr var_108, "\tickets.txt"
  loc_BACED0: ConcatVar var_DC
  loc_BACED4: CStrVarVal var_98
  loc_BACED8: ImpAdLdRf MemVar_C0F040
  loc_BACEDB: NewIfNullPr IFileSystem3
  loc_BACEDE: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_BACEE3: FLdPr var_E0
  loc_BACEE6:  = Me.ReadAll
  loc_BACEEB: FLdZeroAd var_CC
  loc_BACEEE: CVarStr var_128
  loc_BACEF1: FStVar var_118
  loc_BACEF5: FFree1Str var_98
  loc_BACEF8: FFree1Ad var_E0
  loc_BACEFB: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BACF06: ILdI2 arg_10
  loc_BACF09: CI4UI1
  loc_BACF0A: ImpAdLdI4 MemVar_C0F100
  loc_BACF0D: Ary1LdPr
  loc_BACF0E: MemLdFPR8 global_232
  loc_BACF11: LitStr "22"
  loc_BACF14: CR8Str
  loc_BACF16: EqR4
  loc_BACF17: ILdI2 arg_10
  loc_BACF1A: CI4UI1
  loc_BACF1B: ImpAdLdI4 MemVar_C0F100
  loc_BACF1E: Ary1LdPr
  loc_BACF1F: MemLdFPR8 global_240
  loc_BACF22: LitStr "7"
  loc_BACF25: CR8Str
  loc_BACF27: EqR4
  loc_BACF28: AndI4
  loc_BACF29: BranchF loc_BAD060
  loc_BACF2C: FLdRfVar var_118
  loc_BACF2F: LitVarStr var_F4, "0"
  loc_BACF34: HardType
  loc_BACF35: EqVar var_A8
  loc_BACF39: LitVar_FALSE
  loc_BACF3D: HardType
  loc_BACF3E: EqVar var_B8
  loc_BACF42: ILdI2 arg_10
  loc_BACF45: CI4UI1
  loc_BACF46: ImpAdLdI4 MemVar_C0F100
  loc_BACF49: Ary1LdPr
  loc_BACF4A: MemLdStr global_348
  loc_BACF4D: LitStr "."
  loc_BACF50: EqStr
  loc_BACF52: LitI2_Byte 0
  loc_BACF54: EqI2
  loc_BACF55: CVarBoolI2 var_138
  loc_BACF59: AndVar var_C8
  loc_BACF5D: FLdRfVar var_E2
  loc_BACF60: ImpAdLdRf MemVar_C0F018
  loc_BACF63: NewIfNullPr frmMain
  loc_BACF66: VCallAd Control_ID_
  loc_BACF69: FStAdFunc var_E0
  loc_BACF6C: FLdPr var_E0
  loc_BACF6F:  = frmMain.CheckBox.Value
  loc_BACF74: FLdI2 var_E2
  loc_BACF77: CR8I2
  loc_BACF78: LitStr "1"
  loc_BACF7B: CR8Str
  loc_BACF7D: EqR4
  loc_BACF7E: CVarBoolI2 var_148
  loc_BACF82: AndVar var_DC
  loc_BACF86: CBoolVarNull
  loc_BACF88: FFree1Ad var_E0
  loc_BACF8B: FFreeVar var_138 = ""
  loc_BACF92: BranchF loc_BACFB8
  loc_BACF95: LitStr "23"
  loc_BACF98: CR8Str
  loc_BACF9A: ILdI2 arg_10
  loc_BACF9D: CI4UI1
  loc_BACF9E: ImpAdLdI4 MemVar_C0F100
  loc_BACFA1: Ary1LdPr
  loc_BACFA2: MemStFPR8 global_272
  loc_BACFA5: LitStr "7"
  loc_BACFA8: CR8Str
  loc_BACFAA: ILdI2 arg_10
  loc_BACFAD: CI4UI1
  loc_BACFAE: ImpAdLdI4 MemVar_C0F100
  loc_BACFB1: Ary1LdPr
  loc_BACFB2: MemStFPR8 global_284
  loc_BACFB5: Branch loc_BAD060
  loc_BACFB8: FLdRfVar var_118
  loc_BACFBB: LitVarStr var_F4, "0"
  loc_BACFC0: HardType
  loc_BACFC1: EqVar var_A8
  loc_BACFC5: LitVar_TRUE var_108
  loc_BACFC8: HardType
  loc_BACFC9: EqVar var_B8
  loc_BACFCD: ILdI2 arg_10
  loc_BACFD0: CI4UI1
  loc_BACFD1: ImpAdLdI4 MemVar_C0F100
  loc_BACFD4: Ary1LdPr
  loc_BACFD5: MemLdStr global_348
  loc_BACFD8: LitStr "."
  loc_BACFDB: EqStr
  loc_BACFDD: LitI2_Byte &HFF
  loc_BACFDF: EqI2
  loc_BACFE0: CVarBoolI2 var_138
  loc_BACFE4: OrVar var_C8
  loc_BACFE8: FLdRfVar var_E2
  loc_BACFEB: ImpAdLdRf MemVar_C0F018
  loc_BACFEE: NewIfNullPr frmMain
  loc_BACFF1: VCallAd Control_ID_
  loc_BACFF4: FStAdFunc var_E0
  loc_BACFF7: FLdPr var_E0
  loc_BACFFA:  = frmMain.CheckBox.Value
  loc_BACFFF: FLdI2 var_E2
  loc_BAD002: CR8I2
  loc_BAD003: LitStr "0"
  loc_BAD006: CR8Str
  loc_BAD008: EqR4
  loc_BAD009: CVarBoolI2 var_148
  loc_BAD00D: OrVar var_DC
  loc_BAD011: CBoolVarNull
  loc_BAD013: FFree1Ad var_E0
  loc_BAD016: FFreeVar var_138 = ""
  loc_BAD01D: BranchF loc_BAD060
  loc_BAD020: LitStr "22"
  loc_BAD023: CR8Str
  loc_BAD025: ILdI2 arg_10
  loc_BAD028: CI4UI1
  loc_BAD029: ImpAdLdI4 MemVar_C0F100
  loc_BAD02C: Ary1LdPr
  loc_BAD02D: MemStFPR8 global_232
  loc_BAD030: LitStr "6"
  loc_BAD033: CR8Str
  loc_BAD035: ILdI2 arg_10
  loc_BAD038: CI4UI1
  loc_BAD039: ImpAdLdI4 MemVar_C0F100
  loc_BAD03C: Ary1LdPr
  loc_BAD03D: MemStFPR8 global_240
  loc_BAD040: LitStr "22"
  loc_BAD043: CR8Str
  loc_BAD045: ILdI2 arg_10
  loc_BAD048: CI4UI1
  loc_BAD049: ImpAdLdI4 MemVar_C0F100
  loc_BAD04C: Ary1LdPr
  loc_BAD04D: MemStFPR8 global_272
  loc_BAD050: LitStr "6"
  loc_BAD053: CR8Str
  loc_BAD055: ILdI2 arg_10
  loc_BAD058: CI4UI1
  loc_BAD059: ImpAdLdI4 MemVar_C0F100
  loc_BAD05C: Ary1LdPr
  loc_BAD05D: MemStFPR8 global_284
  loc_BAD060: ILdI2 arg_10
  loc_BAD063: CI4UI1
  loc_BAD064: ImpAdLdI4 MemVar_C0F100
  loc_BAD067: Ary1LdPr
  loc_BAD068: MemLdI2 global_4
  loc_BAD06B: CR8I2
  loc_BAD06C: LitStr "36"
  loc_BAD06F: CR8Str
  loc_BAD071: EqR4
  loc_BAD072: BranchF loc_BAD24B
  loc_BAD075: ILdI2 arg_10
  loc_BAD078: CI4UI1
  loc_BAD079: ImpAdLdI4 MemVar_C0F100
  loc_BAD07C: AryLock
  loc_BAD07F: Ary1LdPr
  loc_BAD080: MemLdRfVar from_stack_1.global_204
  loc_BAD083: CVarRef
  loc_BAD088: FLdRfVar var_A8
  loc_BAD08B: ImpAdCallFPR4  = LCase()
  loc_BAD090: AryUnlock
  loc_BAD093: FLdRfVar var_CC
  loc_BAD096: FLdRfVar var_E0
  loc_BAD099: LitI4 0
  loc_BAD09E: LitI2_Byte 0
  loc_BAD0A0: LitI4 1
  loc_BAD0A5: ImpAdLdI4 MemVar_C0F044
  loc_BAD0A8: LitStr "habbos\"
  loc_BAD0AB: ConcatStr
  loc_BAD0AC: CVarStr var_B8
  loc_BAD0AF: FLdRfVar var_A8
  loc_BAD0B2: ConcatVar var_C8
  loc_BAD0B6: LitVarStr var_108, "\tickets.txt"
  loc_BAD0BB: ConcatVar var_DC
  loc_BAD0BF: CStrVarVal var_98
  loc_BAD0C3: ImpAdLdRf MemVar_C0F040
  loc_BAD0C6: NewIfNullPr IFileSystem3
  loc_BAD0C9: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_BAD0CE: FLdPr var_E0
  loc_BAD0D1:  = Me.ReadAll
  loc_BAD0D6: FLdZeroAd var_CC
  loc_BAD0D9: CVarStr var_128
  loc_BAD0DC: FStVar var_118
  loc_BAD0E0: FFree1Str var_98
  loc_BAD0E3: FFree1Ad var_E0
  loc_BAD0E6: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAD0F1: ILdI2 arg_10
  loc_BAD0F4: CI4UI1
  loc_BAD0F5: ImpAdLdI4 MemVar_C0F100
  loc_BAD0F8: Ary1LdPr
  loc_BAD0F9: MemLdFPR8 global_232
  loc_BAD0FC: LitStr "23"
  loc_BAD0FF: CR8Str
  loc_BAD101: EqR4
  loc_BAD102: ILdI2 arg_10
  loc_BAD105: CI4UI1
  loc_BAD106: ImpAdLdI4 MemVar_C0F100
  loc_BAD109: Ary1LdPr
  loc_BAD10A: MemLdFPR8 global_240
  loc_BAD10D: LitStr "7"
  loc_BAD110: CR8Str
  loc_BAD112: EqR4
  loc_BAD113: AndI4
  loc_BAD114: BranchF loc_BAD24B
  loc_BAD117: FLdRfVar var_118
  loc_BAD11A: LitVarStr var_F4, "0"
  loc_BAD11F: HardType
  loc_BAD120: EqVar var_A8
  loc_BAD124: LitVar_FALSE
  loc_BAD128: HardType
  loc_BAD129: EqVar var_B8
  loc_BAD12D: ILdI2 arg_10
  loc_BAD130: CI4UI1
  loc_BAD131: ImpAdLdI4 MemVar_C0F100
  loc_BAD134: Ary1LdPr
  loc_BAD135: MemLdStr global_348
  loc_BAD138: LitStr "."
  loc_BAD13B: EqStr
  loc_BAD13D: LitI2_Byte 0
  loc_BAD13F: EqI2
  loc_BAD140: CVarBoolI2 var_138
  loc_BAD144: AndVar var_C8
  loc_BAD148: FLdRfVar var_E2
  loc_BAD14B: ImpAdLdRf MemVar_C0F018
  loc_BAD14E: NewIfNullPr frmMain
  loc_BAD151: VCallAd Control_ID_
  loc_BAD154: FStAdFunc var_E0
  loc_BAD157: FLdPr var_E0
  loc_BAD15A:  = frmMain.CheckBox.Value
  loc_BAD15F: FLdI2 var_E2
  loc_BAD162: CR8I2
  loc_BAD163: LitStr "1"
  loc_BAD166: CR8Str
  loc_BAD168: EqR4
  loc_BAD169: CVarBoolI2 var_148
  loc_BAD16D: AndVar var_DC
  loc_BAD171: CBoolVarNull
  loc_BAD173: FFree1Ad var_E0
  loc_BAD176: FFreeVar var_138 = ""
  loc_BAD17D: BranchF loc_BAD1A3
  loc_BAD180: LitStr "24"
  loc_BAD183: CR8Str
  loc_BAD185: ILdI2 arg_10
  loc_BAD188: CI4UI1
  loc_BAD189: ImpAdLdI4 MemVar_C0F100
  loc_BAD18C: Ary1LdPr
  loc_BAD18D: MemStFPR8 global_272
  loc_BAD190: LitStr "7"
  loc_BAD193: CR8Str
  loc_BAD195: ILdI2 arg_10
  loc_BAD198: CI4UI1
  loc_BAD199: ImpAdLdI4 MemVar_C0F100
  loc_BAD19C: Ary1LdPr
  loc_BAD19D: MemStFPR8 global_284
  loc_BAD1A0: Branch loc_BAD24B
  loc_BAD1A3: FLdRfVar var_118
  loc_BAD1A6: LitVarStr var_F4, "0"
  loc_BAD1AB: HardType
  loc_BAD1AC: EqVar var_A8
  loc_BAD1B0: LitVar_TRUE var_108
  loc_BAD1B3: HardType
  loc_BAD1B4: EqVar var_B8
  loc_BAD1B8: ILdI2 arg_10
  loc_BAD1BB: CI4UI1
  loc_BAD1BC: ImpAdLdI4 MemVar_C0F100
  loc_BAD1BF: Ary1LdPr
  loc_BAD1C0: MemLdStr global_348
  loc_BAD1C3: LitStr "."
  loc_BAD1C6: EqStr
  loc_BAD1C8: LitI2_Byte &HFF
  loc_BAD1CA: EqI2
  loc_BAD1CB: CVarBoolI2 var_138
  loc_BAD1CF: OrVar var_C8
  loc_BAD1D3: FLdRfVar var_E2
  loc_BAD1D6: ImpAdLdRf MemVar_C0F018
  loc_BAD1D9: NewIfNullPr frmMain
  loc_BAD1DC: VCallAd Control_ID_
  loc_BAD1DF: FStAdFunc var_E0
  loc_BAD1E2: FLdPr var_E0
  loc_BAD1E5:  = frmMain.CheckBox.Value
  loc_BAD1EA: FLdI2 var_E2
  loc_BAD1ED: CR8I2
  loc_BAD1EE: LitStr "0"
  loc_BAD1F1: CR8Str
  loc_BAD1F3: EqR4
  loc_BAD1F4: CVarBoolI2 var_148
  loc_BAD1F8: OrVar var_DC
  loc_BAD1FC: CBoolVarNull
  loc_BAD1FE: FFree1Ad var_E0
  loc_BAD201: FFreeVar var_138 = ""
  loc_BAD208: BranchF loc_BAD24B
  loc_BAD20B: LitStr "23"
  loc_BAD20E: CR8Str
  loc_BAD210: ILdI2 arg_10
  loc_BAD213: CI4UI1
  loc_BAD214: ImpAdLdI4 MemVar_C0F100
  loc_BAD217: Ary1LdPr
  loc_BAD218: MemStFPR8 global_232
  loc_BAD21B: LitStr "6"
  loc_BAD21E: CR8Str
  loc_BAD220: ILdI2 arg_10
  loc_BAD223: CI4UI1
  loc_BAD224: ImpAdLdI4 MemVar_C0F100
  loc_BAD227: Ary1LdPr
  loc_BAD228: MemStFPR8 global_240
  loc_BAD22B: LitStr "23"
  loc_BAD22E: CR8Str
  loc_BAD230: ILdI2 arg_10
  loc_BAD233: CI4UI1
  loc_BAD234: ImpAdLdI4 MemVar_C0F100
  loc_BAD237: Ary1LdPr
  loc_BAD238: MemStFPR8 global_272
  loc_BAD23B: LitStr "6"
  loc_BAD23E: CR8Str
  loc_BAD240: ILdI2 arg_10
  loc_BAD243: CI4UI1
  loc_BAD244: ImpAdLdI4 MemVar_C0F100
  loc_BAD247: Ary1LdPr
  loc_BAD248: MemStFPR8 global_284
  loc_BAD24B: ILdI2 arg_10
  loc_BAD24E: CI4UI1
  loc_BAD24F: ImpAdLdI4 MemVar_C0F100
  loc_BAD252: Ary1LdPr
  loc_BAD253: MemLdI2 global_4
  loc_BAD256: CR8I2
  loc_BAD257: LitStr "36"
  loc_BAD25A: CR8Str
  loc_BAD25C: EqR4
  loc_BAD25D: BranchF loc_BAD436
  loc_BAD260: ILdI2 arg_10
  loc_BAD263: CI4UI1
  loc_BAD264: ImpAdLdI4 MemVar_C0F100
  loc_BAD267: AryLock
  loc_BAD26A: Ary1LdPr
  loc_BAD26B: MemLdRfVar from_stack_1.global_204
  loc_BAD26E: CVarRef
  loc_BAD273: FLdRfVar var_A8
  loc_BAD276: ImpAdCallFPR4  = LCase()
  loc_BAD27B: AryUnlock
  loc_BAD27E: FLdRfVar var_CC
  loc_BAD281: FLdRfVar var_E0
  loc_BAD284: LitI4 0
  loc_BAD289: LitI2_Byte 0
  loc_BAD28B: LitI4 1
  loc_BAD290: ImpAdLdI4 MemVar_C0F044
  loc_BAD293: LitStr "habbos\"
  loc_BAD296: ConcatStr
  loc_BAD297: CVarStr var_B8
  loc_BAD29A: FLdRfVar var_A8
  loc_BAD29D: ConcatVar var_C8
  loc_BAD2A1: LitVarStr var_108, "\tickets.txt"
  loc_BAD2A6: ConcatVar var_DC
  loc_BAD2AA: CStrVarVal var_98
  loc_BAD2AE: ImpAdLdRf MemVar_C0F040
  loc_BAD2B1: NewIfNullPr IFileSystem3
  loc_BAD2B4: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_BAD2B9: FLdPr var_E0
  loc_BAD2BC:  = Me.ReadAll
  loc_BAD2C1: FLdZeroAd var_CC
  loc_BAD2C4: CVarStr var_128
  loc_BAD2C7: FStVar var_118
  loc_BAD2CB: FFree1Str var_98
  loc_BAD2CE: FFree1Ad var_E0
  loc_BAD2D1: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAD2DC: ILdI2 arg_10
  loc_BAD2DF: CI4UI1
  loc_BAD2E0: ImpAdLdI4 MemVar_C0F100
  loc_BAD2E3: Ary1LdPr
  loc_BAD2E4: MemLdFPR8 global_232
  loc_BAD2E7: LitStr "24"
  loc_BAD2EA: CR8Str
  loc_BAD2EC: EqR4
  loc_BAD2ED: ILdI2 arg_10
  loc_BAD2F0: CI4UI1
  loc_BAD2F1: ImpAdLdI4 MemVar_C0F100
  loc_BAD2F4: Ary1LdPr
  loc_BAD2F5: MemLdFPR8 global_240
  loc_BAD2F8: LitStr "7"
  loc_BAD2FB: CR8Str
  loc_BAD2FD: EqR4
  loc_BAD2FE: AndI4
  loc_BAD2FF: BranchF loc_BAD436
  loc_BAD302: FLdRfVar var_118
  loc_BAD305: LitVarStr var_F4, "0"
  loc_BAD30A: HardType
  loc_BAD30B: EqVar var_A8
  loc_BAD30F: LitVar_FALSE
  loc_BAD313: HardType
  loc_BAD314: EqVar var_B8
  loc_BAD318: ILdI2 arg_10
  loc_BAD31B: CI4UI1
  loc_BAD31C: ImpAdLdI4 MemVar_C0F100
  loc_BAD31F: Ary1LdPr
  loc_BAD320: MemLdStr global_348
  loc_BAD323: LitStr "."
  loc_BAD326: EqStr
  loc_BAD328: LitI2_Byte 0
  loc_BAD32A: EqI2
  loc_BAD32B: CVarBoolI2 var_138
  loc_BAD32F: AndVar var_C8
  loc_BAD333: FLdRfVar var_E2
  loc_BAD336: ImpAdLdRf MemVar_C0F018
  loc_BAD339: NewIfNullPr frmMain
  loc_BAD33C: VCallAd Control_ID_
  loc_BAD33F: FStAdFunc var_E0
  loc_BAD342: FLdPr var_E0
  loc_BAD345:  = frmMain.CheckBox.Value
  loc_BAD34A: FLdI2 var_E2
  loc_BAD34D: CR8I2
  loc_BAD34E: LitStr "1"
  loc_BAD351: CR8Str
  loc_BAD353: EqR4
  loc_BAD354: CVarBoolI2 var_148
  loc_BAD358: AndVar var_DC
  loc_BAD35C: CBoolVarNull
  loc_BAD35E: FFree1Ad var_E0
  loc_BAD361: FFreeVar var_138 = ""
  loc_BAD368: BranchF loc_BAD38E
  loc_BAD36B: LitStr "25"
  loc_BAD36E: CR8Str
  loc_BAD370: ILdI2 arg_10
  loc_BAD373: CI4UI1
  loc_BAD374: ImpAdLdI4 MemVar_C0F100
  loc_BAD377: Ary1LdPr
  loc_BAD378: MemStFPR8 global_272
  loc_BAD37B: LitStr "7"
  loc_BAD37E: CR8Str
  loc_BAD380: ILdI2 arg_10
  loc_BAD383: CI4UI1
  loc_BAD384: ImpAdLdI4 MemVar_C0F100
  loc_BAD387: Ary1LdPr
  loc_BAD388: MemStFPR8 global_284
  loc_BAD38B: Branch loc_BAD436
  loc_BAD38E: FLdRfVar var_118
  loc_BAD391: LitVarStr var_F4, "0"
  loc_BAD396: HardType
  loc_BAD397: EqVar var_A8
  loc_BAD39B: LitVar_TRUE var_108
  loc_BAD39E: HardType
  loc_BAD39F: EqVar var_B8
  loc_BAD3A3: ILdI2 arg_10
  loc_BAD3A6: CI4UI1
  loc_BAD3A7: ImpAdLdI4 MemVar_C0F100
  loc_BAD3AA: Ary1LdPr
  loc_BAD3AB: MemLdStr global_348
  loc_BAD3AE: LitStr "."
  loc_BAD3B1: EqStr
  loc_BAD3B3: LitI2_Byte &HFF
  loc_BAD3B5: EqI2
  loc_BAD3B6: CVarBoolI2 var_138
  loc_BAD3BA: OrVar var_C8
  loc_BAD3BE: FLdRfVar var_E2
  loc_BAD3C1: ImpAdLdRf MemVar_C0F018
  loc_BAD3C4: NewIfNullPr frmMain
  loc_BAD3C7: VCallAd Control_ID_
  loc_BAD3CA: FStAdFunc var_E0
  loc_BAD3CD: FLdPr var_E0
  loc_BAD3D0:  = frmMain.CheckBox.Value
  loc_BAD3D5: FLdI2 var_E2
  loc_BAD3D8: CR8I2
  loc_BAD3D9: LitStr "0"
  loc_BAD3DC: CR8Str
  loc_BAD3DE: EqR4
  loc_BAD3DF: CVarBoolI2 var_148
  loc_BAD3E3: OrVar var_DC
  loc_BAD3E7: CBoolVarNull
  loc_BAD3E9: FFree1Ad var_E0
  loc_BAD3EC: FFreeVar var_138 = ""
  loc_BAD3F3: BranchF loc_BAD436
  loc_BAD3F6: LitStr "24"
  loc_BAD3F9: CR8Str
  loc_BAD3FB: ILdI2 arg_10
  loc_BAD3FE: CI4UI1
  loc_BAD3FF: ImpAdLdI4 MemVar_C0F100
  loc_BAD402: Ary1LdPr
  loc_BAD403: MemStFPR8 global_232
  loc_BAD406: LitStr "6"
  loc_BAD409: CR8Str
  loc_BAD40B: ILdI2 arg_10
  loc_BAD40E: CI4UI1
  loc_BAD40F: ImpAdLdI4 MemVar_C0F100
  loc_BAD412: Ary1LdPr
  loc_BAD413: MemStFPR8 global_240
  loc_BAD416: LitStr "24"
  loc_BAD419: CR8Str
  loc_BAD41B: ILdI2 arg_10
  loc_BAD41E: CI4UI1
  loc_BAD41F: ImpAdLdI4 MemVar_C0F100
  loc_BAD422: Ary1LdPr
  loc_BAD423: MemStFPR8 global_272
  loc_BAD426: LitStr "6"
  loc_BAD429: CR8Str
  loc_BAD42B: ILdI2 arg_10
  loc_BAD42E: CI4UI1
  loc_BAD42F: ImpAdLdI4 MemVar_C0F100
  loc_BAD432: Ary1LdPr
  loc_BAD433: MemStFPR8 global_284
  loc_BAD436: ILdI2 arg_10
  loc_BAD439: CI4UI1
  loc_BAD43A: ImpAdLdI4 MemVar_C0F100
  loc_BAD43D: Ary1LdPr
  loc_BAD43E: MemLdI2 global_4
  loc_BAD441: CR8I2
  loc_BAD442: LitStr "36"
  loc_BAD445: CR8Str
  loc_BAD447: EqR4
  loc_BAD448: BranchF loc_BAD621
  loc_BAD44B: ILdI2 arg_10
  loc_BAD44E: CI4UI1
  loc_BAD44F: ImpAdLdI4 MemVar_C0F100
  loc_BAD452: AryLock
  loc_BAD455: Ary1LdPr
  loc_BAD456: MemLdRfVar from_stack_1.global_204
  loc_BAD459: CVarRef
  loc_BAD45E: FLdRfVar var_A8
  loc_BAD461: ImpAdCallFPR4  = LCase()
  loc_BAD466: AryUnlock
  loc_BAD469: FLdRfVar var_CC
  loc_BAD46C: FLdRfVar var_E0
  loc_BAD46F: LitI4 0
  loc_BAD474: LitI2_Byte 0
  loc_BAD476: LitI4 1
  loc_BAD47B: ImpAdLdI4 MemVar_C0F044
  loc_BAD47E: LitStr "habbos\"
  loc_BAD481: ConcatStr
  loc_BAD482: CVarStr var_B8
  loc_BAD485: FLdRfVar var_A8
  loc_BAD488: ConcatVar var_C8
  loc_BAD48C: LitVarStr var_108, "\tickets.txt"
  loc_BAD491: ConcatVar var_DC
  loc_BAD495: CStrVarVal var_98
  loc_BAD499: ImpAdLdRf MemVar_C0F040
  loc_BAD49C: NewIfNullPr IFileSystem3
  loc_BAD49F: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_BAD4A4: FLdPr var_E0
  loc_BAD4A7:  = Me.ReadAll
  loc_BAD4AC: FLdZeroAd var_CC
  loc_BAD4AF: CVarStr var_128
  loc_BAD4B2: FStVar var_118
  loc_BAD4B6: FFree1Str var_98
  loc_BAD4B9: FFree1Ad var_E0
  loc_BAD4BC: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAD4C7: ILdI2 arg_10
  loc_BAD4CA: CI4UI1
  loc_BAD4CB: ImpAdLdI4 MemVar_C0F100
  loc_BAD4CE: Ary1LdPr
  loc_BAD4CF: MemLdFPR8 global_232
  loc_BAD4D2: LitStr "25"
  loc_BAD4D5: CR8Str
  loc_BAD4D7: EqR4
  loc_BAD4D8: ILdI2 arg_10
  loc_BAD4DB: CI4UI1
  loc_BAD4DC: ImpAdLdI4 MemVar_C0F100
  loc_BAD4DF: Ary1LdPr
  loc_BAD4E0: MemLdFPR8 global_240
  loc_BAD4E3: LitStr "7"
  loc_BAD4E6: CR8Str
  loc_BAD4E8: EqR4
  loc_BAD4E9: AndI4
  loc_BAD4EA: BranchF loc_BAD621
  loc_BAD4ED: FLdRfVar var_118
  loc_BAD4F0: LitVarStr var_F4, "0"
  loc_BAD4F5: HardType
  loc_BAD4F6: EqVar var_A8
  loc_BAD4FA: LitVar_FALSE
  loc_BAD4FE: HardType
  loc_BAD4FF: EqVar var_B8
  loc_BAD503: ILdI2 arg_10
  loc_BAD506: CI4UI1
  loc_BAD507: ImpAdLdI4 MemVar_C0F100
  loc_BAD50A: Ary1LdPr
  loc_BAD50B: MemLdStr global_348
  loc_BAD50E: LitStr "."
  loc_BAD511: EqStr
  loc_BAD513: LitI2_Byte 0
  loc_BAD515: EqI2
  loc_BAD516: CVarBoolI2 var_138
  loc_BAD51A: AndVar var_C8
  loc_BAD51E: FLdRfVar var_E2
  loc_BAD521: ImpAdLdRf MemVar_C0F018
  loc_BAD524: NewIfNullPr frmMain
  loc_BAD527: VCallAd Control_ID_
  loc_BAD52A: FStAdFunc var_E0
  loc_BAD52D: FLdPr var_E0
  loc_BAD530:  = frmMain.CheckBox.Value
  loc_BAD535: FLdI2 var_E2
  loc_BAD538: CR8I2
  loc_BAD539: LitStr "1"
  loc_BAD53C: CR8Str
  loc_BAD53E: EqR4
  loc_BAD53F: CVarBoolI2 var_148
  loc_BAD543: AndVar var_DC
  loc_BAD547: CBoolVarNull
  loc_BAD549: FFree1Ad var_E0
  loc_BAD54C: FFreeVar var_138 = ""
  loc_BAD553: BranchF loc_BAD579
  loc_BAD556: LitStr "26"
  loc_BAD559: CR8Str
  loc_BAD55B: ILdI2 arg_10
  loc_BAD55E: CI4UI1
  loc_BAD55F: ImpAdLdI4 MemVar_C0F100
  loc_BAD562: Ary1LdPr
  loc_BAD563: MemStFPR8 global_272
  loc_BAD566: LitStr "7"
  loc_BAD569: CR8Str
  loc_BAD56B: ILdI2 arg_10
  loc_BAD56E: CI4UI1
  loc_BAD56F: ImpAdLdI4 MemVar_C0F100
  loc_BAD572: Ary1LdPr
  loc_BAD573: MemStFPR8 global_284
  loc_BAD576: Branch loc_BAD621
  loc_BAD579: FLdRfVar var_118
  loc_BAD57C: LitVarStr var_F4, "0"
  loc_BAD581: HardType
  loc_BAD582: EqVar var_A8
  loc_BAD586: LitVar_TRUE var_108
  loc_BAD589: HardType
  loc_BAD58A: EqVar var_B8
  loc_BAD58E: ILdI2 arg_10
  loc_BAD591: CI4UI1
  loc_BAD592: ImpAdLdI4 MemVar_C0F100
  loc_BAD595: Ary1LdPr
  loc_BAD596: MemLdStr global_348
  loc_BAD599: LitStr "."
  loc_BAD59C: EqStr
  loc_BAD59E: LitI2_Byte &HFF
  loc_BAD5A0: EqI2
  loc_BAD5A1: CVarBoolI2 var_138
  loc_BAD5A5: OrVar var_C8
  loc_BAD5A9: FLdRfVar var_E2
  loc_BAD5AC: ImpAdLdRf MemVar_C0F018
  loc_BAD5AF: NewIfNullPr frmMain
  loc_BAD5B2: VCallAd Control_ID_
  loc_BAD5B5: FStAdFunc var_E0
  loc_BAD5B8: FLdPr var_E0
  loc_BAD5BB:  = frmMain.CheckBox.Value
  loc_BAD5C0: FLdI2 var_E2
  loc_BAD5C3: CR8I2
  loc_BAD5C4: LitStr "0"
  loc_BAD5C7: CR8Str
  loc_BAD5C9: EqR4
  loc_BAD5CA: CVarBoolI2 var_148
  loc_BAD5CE: OrVar var_DC
  loc_BAD5D2: CBoolVarNull
  loc_BAD5D4: FFree1Ad var_E0
  loc_BAD5D7: FFreeVar var_138 = ""
  loc_BAD5DE: BranchF loc_BAD621
  loc_BAD5E1: LitStr "25"
  loc_BAD5E4: CR8Str
  loc_BAD5E6: ILdI2 arg_10
  loc_BAD5E9: CI4UI1
  loc_BAD5EA: ImpAdLdI4 MemVar_C0F100
  loc_BAD5ED: Ary1LdPr
  loc_BAD5EE: MemStFPR8 global_232
  loc_BAD5F1: LitStr "6"
  loc_BAD5F4: CR8Str
  loc_BAD5F6: ILdI2 arg_10
  loc_BAD5F9: CI4UI1
  loc_BAD5FA: ImpAdLdI4 MemVar_C0F100
  loc_BAD5FD: Ary1LdPr
  loc_BAD5FE: MemStFPR8 global_240
  loc_BAD601: LitStr "25"
  loc_BAD604: CR8Str
  loc_BAD606: ILdI2 arg_10
  loc_BAD609: CI4UI1
  loc_BAD60A: ImpAdLdI4 MemVar_C0F100
  loc_BAD60D: Ary1LdPr
  loc_BAD60E: MemStFPR8 global_272
  loc_BAD611: LitStr "6"
  loc_BAD614: CR8Str
  loc_BAD616: ILdI2 arg_10
  loc_BAD619: CI4UI1
  loc_BAD61A: ImpAdLdI4 MemVar_C0F100
  loc_BAD61D: Ary1LdPr
  loc_BAD61E: MemStFPR8 global_284
  loc_BAD621: ILdI2 arg_10
  loc_BAD624: CI4UI1
  loc_BAD625: ImpAdLdI4 MemVar_C0F100
  loc_BAD628: Ary1LdPr
  loc_BAD629: MemLdI2 global_4
  loc_BAD62C: CR8I2
  loc_BAD62D: LitStr "36"
  loc_BAD630: CR8Str
  loc_BAD632: EqR4
  loc_BAD633: BranchF loc_BAD80C
  loc_BAD636: ILdI2 arg_10
  loc_BAD639: CI4UI1
  loc_BAD63A: ImpAdLdI4 MemVar_C0F100
  loc_BAD63D: AryLock
  loc_BAD640: Ary1LdPr
  loc_BAD641: MemLdRfVar from_stack_1.global_204
  loc_BAD644: CVarRef
  loc_BAD649: FLdRfVar var_A8
  loc_BAD64C: ImpAdCallFPR4  = LCase()
  loc_BAD651: AryUnlock
  loc_BAD654: FLdRfVar var_CC
  loc_BAD657: FLdRfVar var_E0
  loc_BAD65A: LitI4 0
  loc_BAD65F: LitI2_Byte 0
  loc_BAD661: LitI4 1
  loc_BAD666: ImpAdLdI4 MemVar_C0F044
  loc_BAD669: LitStr "habbos\"
  loc_BAD66C: ConcatStr
  loc_BAD66D: CVarStr var_B8
  loc_BAD670: FLdRfVar var_A8
  loc_BAD673: ConcatVar var_C8
  loc_BAD677: LitVarStr var_108, "\tickets.txt"
  loc_BAD67C: ConcatVar var_DC
  loc_BAD680: CStrVarVal var_98
  loc_BAD684: ImpAdLdRf MemVar_C0F040
  loc_BAD687: NewIfNullPr IFileSystem3
  loc_BAD68A: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_BAD68F: FLdPr var_E0
  loc_BAD692:  = Me.ReadAll
  loc_BAD697: FLdZeroAd var_CC
  loc_BAD69A: CVarStr var_128
  loc_BAD69D: FStVar var_118
  loc_BAD6A1: FFree1Str var_98
  loc_BAD6A4: FFree1Ad var_E0
  loc_BAD6A7: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAD6B2: ILdI2 arg_10
  loc_BAD6B5: CI4UI1
  loc_BAD6B6: ImpAdLdI4 MemVar_C0F100
  loc_BAD6B9: Ary1LdPr
  loc_BAD6BA: MemLdFPR8 global_232
  loc_BAD6BD: LitStr "26"
  loc_BAD6C0: CR8Str
  loc_BAD6C2: EqR4
  loc_BAD6C3: ILdI2 arg_10
  loc_BAD6C6: CI4UI1
  loc_BAD6C7: ImpAdLdI4 MemVar_C0F100
  loc_BAD6CA: Ary1LdPr
  loc_BAD6CB: MemLdFPR8 global_240
  loc_BAD6CE: LitStr "7"
  loc_BAD6D1: CR8Str
  loc_BAD6D3: EqR4
  loc_BAD6D4: AndI4
  loc_BAD6D5: BranchF loc_BAD80C
  loc_BAD6D8: FLdRfVar var_118
  loc_BAD6DB: LitVarStr var_F4, "0"
  loc_BAD6E0: HardType
  loc_BAD6E1: EqVar var_A8
  loc_BAD6E5: LitVar_FALSE
  loc_BAD6E9: HardType
  loc_BAD6EA: EqVar var_B8
  loc_BAD6EE: ILdI2 arg_10
  loc_BAD6F1: CI4UI1
  loc_BAD6F2: ImpAdLdI4 MemVar_C0F100
  loc_BAD6F5: Ary1LdPr
  loc_BAD6F6: MemLdStr global_348
  loc_BAD6F9: LitStr "."
  loc_BAD6FC: EqStr
  loc_BAD6FE: LitI2_Byte 0
  loc_BAD700: EqI2
  loc_BAD701: CVarBoolI2 var_138
  loc_BAD705: AndVar var_C8
  loc_BAD709: FLdRfVar var_E2
  loc_BAD70C: ImpAdLdRf MemVar_C0F018
  loc_BAD70F: NewIfNullPr frmMain
  loc_BAD712: VCallAd Control_ID_
  loc_BAD715: FStAdFunc var_E0
  loc_BAD718: FLdPr var_E0
  loc_BAD71B:  = frmMain.CheckBox.Value
  loc_BAD720: FLdI2 var_E2
  loc_BAD723: CR8I2
  loc_BAD724: LitStr "1"
  loc_BAD727: CR8Str
  loc_BAD729: EqR4
  loc_BAD72A: CVarBoolI2 var_148
  loc_BAD72E: AndVar var_DC
  loc_BAD732: CBoolVarNull
  loc_BAD734: FFree1Ad var_E0
  loc_BAD737: FFreeVar var_138 = ""
  loc_BAD73E: BranchF loc_BAD764
  loc_BAD741: LitStr "26"
  loc_BAD744: CR8Str
  loc_BAD746: ILdI2 arg_10
  loc_BAD749: CI4UI1
  loc_BAD74A: ImpAdLdI4 MemVar_C0F100
  loc_BAD74D: Ary1LdPr
  loc_BAD74E: MemStFPR8 global_272
  loc_BAD751: LitStr "6"
  loc_BAD754: CR8Str
  loc_BAD756: ILdI2 arg_10
  loc_BAD759: CI4UI1
  loc_BAD75A: ImpAdLdI4 MemVar_C0F100
  loc_BAD75D: Ary1LdPr
  loc_BAD75E: MemStFPR8 global_284
  loc_BAD761: Branch loc_BAD80C
  loc_BAD764: FLdRfVar var_118
  loc_BAD767: LitVarStr var_F4, "0"
  loc_BAD76C: HardType
  loc_BAD76D: EqVar var_A8
  loc_BAD771: LitVar_TRUE var_108
  loc_BAD774: HardType
  loc_BAD775: EqVar var_B8
  loc_BAD779: ILdI2 arg_10
  loc_BAD77C: CI4UI1
  loc_BAD77D: ImpAdLdI4 MemVar_C0F100
  loc_BAD780: Ary1LdPr
  loc_BAD781: MemLdStr global_348
  loc_BAD784: LitStr "."
  loc_BAD787: EqStr
  loc_BAD789: LitI2_Byte &HFF
  loc_BAD78B: EqI2
  loc_BAD78C: CVarBoolI2 var_138
  loc_BAD790: OrVar var_C8
  loc_BAD794: FLdRfVar var_E2
  loc_BAD797: ImpAdLdRf MemVar_C0F018
  loc_BAD79A: NewIfNullPr frmMain
  loc_BAD79D: VCallAd Control_ID_
  loc_BAD7A0: FStAdFunc var_E0
  loc_BAD7A3: FLdPr var_E0
  loc_BAD7A6:  = frmMain.CheckBox.Value
  loc_BAD7AB: FLdI2 var_E2
  loc_BAD7AE: CR8I2
  loc_BAD7AF: LitStr "0"
  loc_BAD7B2: CR8Str
  loc_BAD7B4: EqR4
  loc_BAD7B5: CVarBoolI2 var_148
  loc_BAD7B9: OrVar var_DC
  loc_BAD7BD: CBoolVarNull
  loc_BAD7BF: FFree1Ad var_E0
  loc_BAD7C2: FFreeVar var_138 = ""
  loc_BAD7C9: BranchF loc_BAD80C
  loc_BAD7CC: LitStr "27"
  loc_BAD7CF: CR8Str
  loc_BAD7D1: ILdI2 arg_10
  loc_BAD7D4: CI4UI1
  loc_BAD7D5: ImpAdLdI4 MemVar_C0F100
  loc_BAD7D8: Ary1LdPr
  loc_BAD7D9: MemStFPR8 global_232
  loc_BAD7DC: LitStr "7"
  loc_BAD7DF: CR8Str
  loc_BAD7E1: ILdI2 arg_10
  loc_BAD7E4: CI4UI1
  loc_BAD7E5: ImpAdLdI4 MemVar_C0F100
  loc_BAD7E8: Ary1LdPr
  loc_BAD7E9: MemStFPR8 global_240
  loc_BAD7EC: LitStr "27"
  loc_BAD7EF: CR8Str
  loc_BAD7F1: ILdI2 arg_10
  loc_BAD7F4: CI4UI1
  loc_BAD7F5: ImpAdLdI4 MemVar_C0F100
  loc_BAD7F8: Ary1LdPr
  loc_BAD7F9: MemStFPR8 global_272
  loc_BAD7FC: LitStr "7"
  loc_BAD7FF: CR8Str
  loc_BAD801: ILdI2 arg_10
  loc_BAD804: CI4UI1
  loc_BAD805: ImpAdLdI4 MemVar_C0F100
  loc_BAD808: Ary1LdPr
  loc_BAD809: MemStFPR8 global_284
  loc_BAD80C: ILdI2 arg_10
  loc_BAD80F: CI4UI1
  loc_BAD810: ImpAdLdI4 MemVar_C0F100
  loc_BAD813: Ary1LdPr
  loc_BAD814: MemLdI2 global_4
  loc_BAD817: CR8I2
  loc_BAD818: LitStr "36"
  loc_BAD81B: CR8Str
  loc_BAD81D: EqR4
  loc_BAD81E: BranchF loc_BAD9F7
  loc_BAD821: ILdI2 arg_10
  loc_BAD824: CI4UI1
  loc_BAD825: ImpAdLdI4 MemVar_C0F100
  loc_BAD828: AryLock
  loc_BAD82B: Ary1LdPr
  loc_BAD82C: MemLdRfVar from_stack_1.global_204
  loc_BAD82F: CVarRef
  loc_BAD834: FLdRfVar var_A8
  loc_BAD837: ImpAdCallFPR4  = LCase()
  loc_BAD83C: AryUnlock
  loc_BAD83F: FLdRfVar var_CC
  loc_BAD842: FLdRfVar var_E0
  loc_BAD845: LitI4 0
  loc_BAD84A: LitI2_Byte 0
  loc_BAD84C: LitI4 1
  loc_BAD851: ImpAdLdI4 MemVar_C0F044
  loc_BAD854: LitStr "habbos\"
  loc_BAD857: ConcatStr
  loc_BAD858: CVarStr var_B8
  loc_BAD85B: FLdRfVar var_A8
  loc_BAD85E: ConcatVar var_C8
  loc_BAD862: LitVarStr var_108, "\tickets.txt"
  loc_BAD867: ConcatVar var_DC
  loc_BAD86B: CStrVarVal var_98
  loc_BAD86F: ImpAdLdRf MemVar_C0F040
  loc_BAD872: NewIfNullPr IFileSystem3
  loc_BAD875: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_BAD87A: FLdPr var_E0
  loc_BAD87D:  = Me.ReadAll
  loc_BAD882: FLdZeroAd var_CC
  loc_BAD885: CVarStr var_128
  loc_BAD888: FStVar var_118
  loc_BAD88C: FFree1Str var_98
  loc_BAD88F: FFree1Ad var_E0
  loc_BAD892: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAD89D: ILdI2 arg_10
  loc_BAD8A0: CI4UI1
  loc_BAD8A1: ImpAdLdI4 MemVar_C0F100
  loc_BAD8A4: Ary1LdPr
  loc_BAD8A5: MemLdFPR8 global_232
  loc_BAD8A8: LitStr "26"
  loc_BAD8AB: CR8Str
  loc_BAD8AD: EqR4
  loc_BAD8AE: ILdI2 arg_10
  loc_BAD8B1: CI4UI1
  loc_BAD8B2: ImpAdLdI4 MemVar_C0F100
  loc_BAD8B5: Ary1LdPr
  loc_BAD8B6: MemLdFPR8 global_240
  loc_BAD8B9: LitStr "6"
  loc_BAD8BC: CR8Str
  loc_BAD8BE: EqR4
  loc_BAD8BF: AndI4
  loc_BAD8C0: BranchF loc_BAD9F7
  loc_BAD8C3: FLdRfVar var_118
  loc_BAD8C6: LitVarStr var_F4, "0"
  loc_BAD8CB: HardType
  loc_BAD8CC: EqVar var_A8
  loc_BAD8D0: LitVar_FALSE
  loc_BAD8D4: HardType
  loc_BAD8D5: EqVar var_B8
  loc_BAD8D9: ILdI2 arg_10
  loc_BAD8DC: CI4UI1
  loc_BAD8DD: ImpAdLdI4 MemVar_C0F100
  loc_BAD8E0: Ary1LdPr
  loc_BAD8E1: MemLdStr global_348
  loc_BAD8E4: LitStr "."
  loc_BAD8E7: EqStr
  loc_BAD8E9: LitI2_Byte 0
  loc_BAD8EB: EqI2
  loc_BAD8EC: CVarBoolI2 var_138
  loc_BAD8F0: AndVar var_C8
  loc_BAD8F4: FLdRfVar var_E2
  loc_BAD8F7: ImpAdLdRf MemVar_C0F018
  loc_BAD8FA: NewIfNullPr frmMain
  loc_BAD8FD: VCallAd Control_ID_
  loc_BAD900: FStAdFunc var_E0
  loc_BAD903: FLdPr var_E0
  loc_BAD906:  = frmMain.CheckBox.Value
  loc_BAD90B: FLdI2 var_E2
  loc_BAD90E: CR8I2
  loc_BAD90F: LitStr "1"
  loc_BAD912: CR8Str
  loc_BAD914: EqR4
  loc_BAD915: CVarBoolI2 var_148
  loc_BAD919: AndVar var_DC
  loc_BAD91D: CBoolVarNull
  loc_BAD91F: FFree1Ad var_E0
  loc_BAD922: FFreeVar var_138 = ""
  loc_BAD929: BranchF loc_BAD94F
  loc_BAD92C: LitStr "26"
  loc_BAD92F: CR8Str
  loc_BAD931: ILdI2 arg_10
  loc_BAD934: CI4UI1
  loc_BAD935: ImpAdLdI4 MemVar_C0F100
  loc_BAD938: Ary1LdPr
  loc_BAD939: MemStFPR8 global_272
  loc_BAD93C: LitStr "5"
  loc_BAD93F: CR8Str
  loc_BAD941: ILdI2 arg_10
  loc_BAD944: CI4UI1
  loc_BAD945: ImpAdLdI4 MemVar_C0F100
  loc_BAD948: Ary1LdPr
  loc_BAD949: MemStFPR8 global_284
  loc_BAD94C: Branch loc_BAD9F7
  loc_BAD94F: FLdRfVar var_118
  loc_BAD952: LitVarStr var_F4, "0"
  loc_BAD957: HardType
  loc_BAD958: EqVar var_A8
  loc_BAD95C: LitVar_TRUE var_108
  loc_BAD95F: HardType
  loc_BAD960: EqVar var_B8
  loc_BAD964: ILdI2 arg_10
  loc_BAD967: CI4UI1
  loc_BAD968: ImpAdLdI4 MemVar_C0F100
  loc_BAD96B: Ary1LdPr
  loc_BAD96C: MemLdStr global_348
  loc_BAD96F: LitStr "."
  loc_BAD972: EqStr
  loc_BAD974: LitI2_Byte &HFF
  loc_BAD976: EqI2
  loc_BAD977: CVarBoolI2 var_138
  loc_BAD97B: OrVar var_C8
  loc_BAD97F: FLdRfVar var_E2
  loc_BAD982: ImpAdLdRf MemVar_C0F018
  loc_BAD985: NewIfNullPr frmMain
  loc_BAD988: VCallAd Control_ID_
  loc_BAD98B: FStAdFunc var_E0
  loc_BAD98E: FLdPr var_E0
  loc_BAD991:  = frmMain.CheckBox.Value
  loc_BAD996: FLdI2 var_E2
  loc_BAD999: CR8I2
  loc_BAD99A: LitStr "0"
  loc_BAD99D: CR8Str
  loc_BAD99F: EqR4
  loc_BAD9A0: CVarBoolI2 var_148
  loc_BAD9A4: OrVar var_DC
  loc_BAD9A8: CBoolVarNull
  loc_BAD9AA: FFree1Ad var_E0
  loc_BAD9AD: FFreeVar var_138 = ""
  loc_BAD9B4: BranchF loc_BAD9F7
  loc_BAD9B7: LitStr "27"
  loc_BAD9BA: CR8Str
  loc_BAD9BC: ILdI2 arg_10
  loc_BAD9BF: CI4UI1
  loc_BAD9C0: ImpAdLdI4 MemVar_C0F100
  loc_BAD9C3: Ary1LdPr
  loc_BAD9C4: MemStFPR8 global_232
  loc_BAD9C7: LitStr "6"
  loc_BAD9CA: CR8Str
  loc_BAD9CC: ILdI2 arg_10
  loc_BAD9CF: CI4UI1
  loc_BAD9D0: ImpAdLdI4 MemVar_C0F100
  loc_BAD9D3: Ary1LdPr
  loc_BAD9D4: MemStFPR8 global_240
  loc_BAD9D7: LitStr "27"
  loc_BAD9DA: CR8Str
  loc_BAD9DC: ILdI2 arg_10
  loc_BAD9DF: CI4UI1
  loc_BAD9E0: ImpAdLdI4 MemVar_C0F100
  loc_BAD9E3: Ary1LdPr
  loc_BAD9E4: MemStFPR8 global_272
  loc_BAD9E7: LitStr "6"
  loc_BAD9EA: CR8Str
  loc_BAD9EC: ILdI2 arg_10
  loc_BAD9EF: CI4UI1
  loc_BAD9F0: ImpAdLdI4 MemVar_C0F100
  loc_BAD9F3: Ary1LdPr
  loc_BAD9F4: MemStFPR8 global_284
  loc_BAD9F7: ILdI2 arg_10
  loc_BAD9FA: CI4UI1
  loc_BAD9FB: ImpAdLdI4 MemVar_C0F100
  loc_BAD9FE: Ary1LdPr
  loc_BAD9FF: MemLdI2 global_4
  loc_BADA02: CR8I2
  loc_BADA03: LitStr "36"
  loc_BADA06: CR8Str
  loc_BADA08: EqR4
  loc_BADA09: BranchF loc_BADC12
  loc_BADA0C: ILdI2 arg_10
  loc_BADA0F: CI4UI1
  loc_BADA10: ImpAdLdI4 MemVar_C0F100
  loc_BADA13: AryLock
  loc_BADA16: Ary1LdPr
  loc_BADA17: MemLdRfVar from_stack_1.global_204
  loc_BADA1A: CVarRef
  loc_BADA1F: FLdRfVar var_A8
  loc_BADA22: ImpAdCallFPR4  = LCase()
  loc_BADA27: AryUnlock
  loc_BADA2A: FLdRfVar var_CC
  loc_BADA2D: FLdRfVar var_E0
  loc_BADA30: LitI4 0
  loc_BADA35: LitI2_Byte 0
  loc_BADA37: LitI4 1
  loc_BADA3C: ImpAdLdI4 MemVar_C0F044
  loc_BADA3F: LitStr "habbos\"
  loc_BADA42: ConcatStr
  loc_BADA43: CVarStr var_B8
  loc_BADA46: FLdRfVar var_A8
  loc_BADA49: ConcatVar var_C8
  loc_BADA4D: LitVarStr var_108, "\tickets.txt"
  loc_BADA52: ConcatVar var_DC
  loc_BADA56: CStrVarVal var_98
  loc_BADA5A: ImpAdLdRf MemVar_C0F040
  loc_BADA5D: NewIfNullPr IFileSystem3
  loc_BADA60: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_BADA65: FLdPr var_E0
  loc_BADA68:  = Me.ReadAll
  loc_BADA6D: FLdZeroAd var_CC
  loc_BADA70: CVarStr var_128
  loc_BADA73: FStVar var_118
  loc_BADA77: FFree1Str var_98
  loc_BADA7A: FFree1Ad var_E0
  loc_BADA7D: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BADA88: ILdI2 arg_10
  loc_BADA8B: CI4UI1
  loc_BADA8C: ImpAdLdI4 MemVar_C0F100
  loc_BADA8F: Ary1LdPr
  loc_BADA90: MemLdFPR8 global_232
  loc_BADA93: LitStr "26"
  loc_BADA96: CR8Str
  loc_BADA98: EqR4
  loc_BADA99: ILdI2 arg_10
  loc_BADA9C: CI4UI1
  loc_BADA9D: ImpAdLdI4 MemVar_C0F100
  loc_BADAA0: Ary1LdPr
  loc_BADAA1: MemLdFPR8 global_240
  loc_BADAA4: LitStr "5"
  loc_BADAA7: CR8Str
  loc_BADAA9: EqR4
  loc_BADAAA: AndI4
  loc_BADAAB: BranchF loc_BADC12
  loc_BADAAE: FLdRfVar var_118
  loc_BADAB1: LitVarStr var_F4, "0"
  loc_BADAB6: HardType
  loc_BADAB7: EqVar var_A8
  loc_BADABB: LitVar_FALSE
  loc_BADABF: HardType
  loc_BADAC0: EqVar var_B8
  loc_BADAC4: ILdI2 arg_10
  loc_BADAC7: CI4UI1
  loc_BADAC8: ImpAdLdI4 MemVar_C0F100
  loc_BADACB: Ary1LdPr
  loc_BADACC: MemLdStr global_348
  loc_BADACF: LitStr "."
  loc_BADAD2: EqStr
  loc_BADAD4: LitI2_Byte 0
  loc_BADAD6: EqI2
  loc_BADAD7: CVarBoolI2 var_138
  loc_BADADB: AndVar var_C8
  loc_BADADF: FLdRfVar var_E2
  loc_BADAE2: ImpAdLdRf MemVar_C0F018
  loc_BADAE5: NewIfNullPr frmMain
  loc_BADAE8: VCallAd Control_ID_
  loc_BADAEB: FStAdFunc var_E0
  loc_BADAEE: FLdPr var_E0
  loc_BADAF1:  = frmMain.CheckBox.Value
  loc_BADAF6: FLdI2 var_E2
  loc_BADAF9: CR8I2
  loc_BADAFA: LitStr "1"
  loc_BADAFD: CR8Str
  loc_BADAFF: EqR4
  loc_BADB00: CVarBoolI2 var_148
  loc_BADB04: AndVar var_DC
  loc_BADB08: FLdRfVar var_98
  loc_BADB0B: ImpAdLdRf MemVar_C0F018
  loc_BADB0E: NewIfNullPr frmMain
  loc_BADB11: VCallAd Control_ID_
  loc_BADB14: FStAdFunc var_14C
  loc_BADB17: FLdPr var_14C
  loc_BADB1A:  = frmMain.TextBox.Text
  loc_BADB1F: ILdRf var_98
  loc_BADB22: LitStr "0"
  loc_BADB25: EqStr
  loc_BADB27: CVarBoolI2 var_15C
  loc_BADB2B: AndVar var_128
  loc_BADB2F: CBoolVarNull
  loc_BADB31: FFree1Str var_98
  loc_BADB34: FFreeAd var_E0 = ""
  loc_BADB3B: FFreeVar var_138 = "": var_148 = ""
  loc_BADB44: BranchF loc_BADB6A
  loc_BADB47: LitStr "26"
  loc_BADB4A: CR8Str
  loc_BADB4C: ILdI2 arg_10
  loc_BADB4F: CI4UI1
  loc_BADB50: ImpAdLdI4 MemVar_C0F100
  loc_BADB53: Ary1LdPr
  loc_BADB54: MemStFPR8 global_272
  loc_BADB57: LitStr "4"
  loc_BADB5A: CR8Str
  loc_BADB5C: ILdI2 arg_10
  loc_BADB5F: CI4UI1
  loc_BADB60: ImpAdLdI4 MemVar_C0F100
  loc_BADB63: Ary1LdPr
  loc_BADB64: MemStFPR8 global_284
  loc_BADB67: Branch loc_BADC12
  loc_BADB6A: FLdRfVar var_118
  loc_BADB6D: LitVarStr var_F4, "0"
  loc_BADB72: HardType
  loc_BADB73: EqVar var_A8
  loc_BADB77: LitVar_TRUE var_108
  loc_BADB7A: HardType
  loc_BADB7B: EqVar var_B8
  loc_BADB7F: ILdI2 arg_10
  loc_BADB82: CI4UI1
  loc_BADB83: ImpAdLdI4 MemVar_C0F100
  loc_BADB86: Ary1LdPr
  loc_BADB87: MemLdStr global_348
  loc_BADB8A: LitStr "."
  loc_BADB8D: EqStr
  loc_BADB8F: LitI2_Byte &HFF
  loc_BADB91: EqI2
  loc_BADB92: CVarBoolI2 var_138
  loc_BADB96: OrVar var_C8
  loc_BADB9A: FLdRfVar var_E2
  loc_BADB9D: ImpAdLdRf MemVar_C0F018
  loc_BADBA0: NewIfNullPr frmMain
  loc_BADBA3: VCallAd Control_ID_
  loc_BADBA6: FStAdFunc var_E0
  loc_BADBA9: FLdPr var_E0
  loc_BADBAC:  = frmMain.CheckBox.Value
  loc_BADBB1: FLdI2 var_E2
  loc_BADBB4: CR8I2
  loc_BADBB5: LitStr "0"
  loc_BADBB8: CR8Str
  loc_BADBBA: EqR4
  loc_BADBBB: CVarBoolI2 var_148
  loc_BADBBF: OrVar var_DC
  loc_BADBC3: CBoolVarNull
  loc_BADBC5: FFree1Ad var_E0
  loc_BADBC8: FFreeVar var_138 = ""
  loc_BADBCF: BranchF loc_BADC12
  loc_BADBD2: LitStr "27"
  loc_BADBD5: CR8Str
  loc_BADBD7: ILdI2 arg_10
  loc_BADBDA: CI4UI1
  loc_BADBDB: ImpAdLdI4 MemVar_C0F100
  loc_BADBDE: Ary1LdPr
  loc_BADBDF: MemStFPR8 global_232
  loc_BADBE2: LitStr "6"
  loc_BADBE5: CR8Str
  loc_BADBE7: ILdI2 arg_10
  loc_BADBEA: CI4UI1
  loc_BADBEB: ImpAdLdI4 MemVar_C0F100
  loc_BADBEE: Ary1LdPr
  loc_BADBEF: MemStFPR8 global_240
  loc_BADBF2: LitStr "27"
  loc_BADBF5: CR8Str
  loc_BADBF7: ILdI2 arg_10
  loc_BADBFA: CI4UI1
  loc_BADBFB: ImpAdLdI4 MemVar_C0F100
  loc_BADBFE: Ary1LdPr
  loc_BADBFF: MemStFPR8 global_272
  loc_BADC02: LitStr "6"
  loc_BADC05: CR8Str
  loc_BADC07: ILdI2 arg_10
  loc_BADC0A: CI4UI1
  loc_BADC0B: ImpAdLdI4 MemVar_C0F100
  loc_BADC0E: Ary1LdPr
  loc_BADC0F: MemStFPR8 global_284
  loc_BADC12: ILdI2 arg_10
  loc_BADC15: CI4UI1
  loc_BADC16: ImpAdLdI4 MemVar_C0F100
  loc_BADC19: Ary1LdPr
  loc_BADC1A: MemLdI2 global_4
  loc_BADC1D: CR8I2
  loc_BADC1E: LitStr "28"
  loc_BADC21: CR8Str
  loc_BADC23: EqR4
  loc_BADC24: ILdI2 arg_10
  loc_BADC27: CI4UI1
  loc_BADC28: ImpAdLdI4 MemVar_C0F100
  loc_BADC2B: Ary1LdPr
  loc_BADC2C: MemLdFPR8 global_232
  loc_BADC2F: LitStr "18"
  loc_BADC32: CR8Str
  loc_BADC34: EqR4
  loc_BADC35: AndI4
  loc_BADC36: ILdI2 arg_10
  loc_BADC39: CI4UI1
  loc_BADC3A: ImpAdLdI4 MemVar_C0F100
  loc_BADC3D: Ary1LdPr
  loc_BADC3E: MemLdFPR8 global_240
  loc_BADC41: LitStr "7"
  loc_BADC44: CR8Str
  loc_BADC46: EqR4
  loc_BADC47: AndI4
  loc_BADC48: BranchF loc_BADC6B
  loc_BADC4B: LitStr "18"
  loc_BADC4E: CR8Str
  loc_BADC50: ILdI2 arg_10
  loc_BADC53: CI4UI1
  loc_BADC54: ImpAdLdI4 MemVar_C0F100
  loc_BADC57: Ary1LdPr
  loc_BADC58: MemStFPR8 global_272
  loc_BADC5B: LitStr "8"
  loc_BADC5E: CR8Str
  loc_BADC60: ILdI2 arg_10
  loc_BADC63: CI4UI1
  loc_BADC64: ImpAdLdI4 MemVar_C0F100
  loc_BADC67: Ary1LdPr
  loc_BADC68: MemStFPR8 global_284
  loc_BADC6B: ILdI2 arg_10
  loc_BADC6E: CI4UI1
  loc_BADC6F: ImpAdLdI4 MemVar_C0F100
  loc_BADC72: Ary1LdPr
  loc_BADC73: MemLdI2 global_4
  loc_BADC76: CR8I2
  loc_BADC77: LitStr "28"
  loc_BADC7A: CR8Str
  loc_BADC7C: EqR4
  loc_BADC7D: ILdI2 arg_10
  loc_BADC80: CI4UI1
  loc_BADC81: ImpAdLdI4 MemVar_C0F100
  loc_BADC84: Ary1LdPr
  loc_BADC85: MemLdFPR8 global_232
  loc_BADC88: LitStr "18"
  loc_BADC8B: CR8Str
  loc_BADC8D: EqR4
  loc_BADC8E: AndI4
  loc_BADC8F: ILdI2 arg_10
  loc_BADC92: CI4UI1
  loc_BADC93: ImpAdLdI4 MemVar_C0F100
  loc_BADC96: Ary1LdPr
  loc_BADC97: MemLdFPR8 global_240
  loc_BADC9A: LitStr "8"
  loc_BADC9D: CR8Str
  loc_BADC9F: EqR4
  loc_BADCA0: AndI4
  loc_BADCA1: BranchF loc_BADCC4
  loc_BADCA4: LitStr "18"
  loc_BADCA7: CR8Str
  loc_BADCA9: ILdI2 arg_10
  loc_BADCAC: CI4UI1
  loc_BADCAD: ImpAdLdI4 MemVar_C0F100
  loc_BADCB0: Ary1LdPr
  loc_BADCB1: MemStFPR8 global_272
  loc_BADCB4: LitStr "9"
  loc_BADCB7: CR8Str
  loc_BADCB9: ILdI2 arg_10
  loc_BADCBC: CI4UI1
  loc_BADCBD: ImpAdLdI4 MemVar_C0F100
  loc_BADCC0: Ary1LdPr
  loc_BADCC1: MemStFPR8 global_284
  loc_BADCC4: ILdI2 arg_10
  loc_BADCC7: CI4UI1
  loc_BADCC8: ImpAdLdI4 MemVar_C0F100
  loc_BADCCB: Ary1LdPr
  loc_BADCCC: MemLdI2 global_4
  loc_BADCCF: CR8I2
  loc_BADCD0: LitStr "28"
  loc_BADCD3: CR8Str
  loc_BADCD5: EqR4
  loc_BADCD6: ILdI2 arg_10
  loc_BADCD9: CI4UI1
  loc_BADCDA: ImpAdLdI4 MemVar_C0F100
  loc_BADCDD: Ary1LdPr
  loc_BADCDE: MemLdFPR8 global_232
  loc_BADCE1: LitStr "18"
  loc_BADCE4: CR8Str
  loc_BADCE6: EqR4
  loc_BADCE7: AndI4
  loc_BADCE8: ILdI2 arg_10
  loc_BADCEB: CI4UI1
  loc_BADCEC: ImpAdLdI4 MemVar_C0F100
  loc_BADCEF: Ary1LdPr
  loc_BADCF0: MemLdFPR8 global_240
  loc_BADCF3: LitStr "9"
  loc_BADCF6: CR8Str
  loc_BADCF8: EqR4
  loc_BADCF9: AndI4
  loc_BADCFA: BranchF loc_BADD1D
  loc_BADCFD: LitStr "18"
  loc_BADD00: CR8Str
  loc_BADD02: ILdI2 arg_10
  loc_BADD05: CI4UI1
  loc_BADD06: ImpAdLdI4 MemVar_C0F100
  loc_BADD09: Ary1LdPr
  loc_BADD0A: MemStFPR8 global_272
  loc_BADD0D: LitStr "10"
  loc_BADD10: CR8Str
  loc_BADD12: ILdI2 arg_10
  loc_BADD15: CI4UI1
  loc_BADD16: ImpAdLdI4 MemVar_C0F100
  loc_BADD19: Ary1LdPr
  loc_BADD1A: MemStFPR8 global_284
  loc_BADD1D: ILdI2 arg_10
  loc_BADD20: CI4UI1
  loc_BADD21: ImpAdLdI4 MemVar_C0F100
  loc_BADD24: Ary1LdPr
  loc_BADD25: MemLdI2 global_4
  loc_BADD28: CR8I2
  loc_BADD29: LitStr "28"
  loc_BADD2C: CR8Str
  loc_BADD2E: EqR4
  loc_BADD2F: ILdI2 arg_10
  loc_BADD32: CI4UI1
  loc_BADD33: ImpAdLdI4 MemVar_C0F100
  loc_BADD36: Ary1LdPr
  loc_BADD37: MemLdFPR8 global_232
  loc_BADD3A: LitStr "18"
  loc_BADD3D: CR8Str
  loc_BADD3F: EqR4
  loc_BADD40: AndI4
  loc_BADD41: ILdI2 arg_10
  loc_BADD44: CI4UI1
  loc_BADD45: ImpAdLdI4 MemVar_C0F100
  loc_BADD48: Ary1LdPr
  loc_BADD49: MemLdFPR8 global_240
  loc_BADD4C: LitStr "10"
  loc_BADD4F: CR8Str
  loc_BADD51: EqR4
  loc_BADD52: AndI4
  loc_BADD53: BranchF loc_BADD76
  loc_BADD56: LitStr "19"
  loc_BADD59: CR8Str
  loc_BADD5B: ILdI2 arg_10
  loc_BADD5E: CI4UI1
  loc_BADD5F: ImpAdLdI4 MemVar_C0F100
  loc_BADD62: Ary1LdPr
  loc_BADD63: MemStFPR8 global_272
  loc_BADD66: LitStr "10"
  loc_BADD69: CR8Str
  loc_BADD6B: ILdI2 arg_10
  loc_BADD6E: CI4UI1
  loc_BADD6F: ImpAdLdI4 MemVar_C0F100
  loc_BADD72: Ary1LdPr
  loc_BADD73: MemStFPR8 global_284
  loc_BADD76: ILdI2 arg_10
  loc_BADD79: CI4UI1
  loc_BADD7A: ImpAdLdI4 MemVar_C0F100
  loc_BADD7D: Ary1LdPr
  loc_BADD7E: MemLdI2 global_4
  loc_BADD81: CR8I2
  loc_BADD82: LitStr "28"
  loc_BADD85: CR8Str
  loc_BADD87: EqR4
  loc_BADD88: ILdI2 arg_10
  loc_BADD8B: CI4UI1
  loc_BADD8C: ImpAdLdI4 MemVar_C0F100
  loc_BADD8F: Ary1LdPr
  loc_BADD90: MemLdFPR8 global_232
  loc_BADD93: LitStr "19"
  loc_BADD96: CR8Str
  loc_BADD98: EqR4
  loc_BADD99: AndI4
  loc_BADD9A: ILdI2 arg_10
  loc_BADD9D: CI4UI1
  loc_BADD9E: ImpAdLdI4 MemVar_C0F100
  loc_BADDA1: Ary1LdPr
  loc_BADDA2: MemLdFPR8 global_240
  loc_BADDA5: LitStr "10"
  loc_BADDA8: CR8Str
  loc_BADDAA: EqR4
  loc_BADDAB: AndI4
  loc_BADDAC: BranchF loc_BADDCF
  loc_BADDAF: LitStr "20"
  loc_BADDB2: CR8Str
  loc_BADDB4: ILdI2 arg_10
  loc_BADDB7: CI4UI1
  loc_BADDB8: ImpAdLdI4 MemVar_C0F100
  loc_BADDBB: Ary1LdPr
  loc_BADDBC: MemStFPR8 global_272
  loc_BADDBF: LitStr "10"
  loc_BADDC2: CR8Str
  loc_BADDC4: ILdI2 arg_10
  loc_BADDC7: CI4UI1
  loc_BADDC8: ImpAdLdI4 MemVar_C0F100
  loc_BADDCB: Ary1LdPr
  loc_BADDCC: MemStFPR8 global_284
  loc_BADDCF: ILdI2 arg_10
  loc_BADDD2: CI4UI1
  loc_BADDD3: ImpAdLdI4 MemVar_C0F100
  loc_BADDD6: Ary1LdPr
  loc_BADDD7: MemLdI2 global_4
  loc_BADDDA: CR8I2
  loc_BADDDB: LitStr "28"
  loc_BADDDE: CR8Str
  loc_BADDE0: EqR4
  loc_BADDE1: ILdI2 arg_10
  loc_BADDE4: CI4UI1
  loc_BADDE5: ImpAdLdI4 MemVar_C0F100
  loc_BADDE8: Ary1LdPr
  loc_BADDE9: MemLdFPR8 global_232
  loc_BADDEC: LitStr "20"
  loc_BADDEF: CR8Str
  loc_BADDF1: EqR4
  loc_BADDF2: AndI4
  loc_BADDF3: ILdI2 arg_10
  loc_BADDF6: CI4UI1
  loc_BADDF7: ImpAdLdI4 MemVar_C0F100
  loc_BADDFA: Ary1LdPr
  loc_BADDFB: MemLdFPR8 global_240
  loc_BADDFE: LitStr "10"
  loc_BADE01: CR8Str
  loc_BADE03: EqR4
  loc_BADE04: AndI4
  loc_BADE05: BranchF loc_BADE28
  loc_BADE08: LitStr "20"
  loc_BADE0B: CR8Str
  loc_BADE0D: ILdI2 arg_10
  loc_BADE10: CI4UI1
  loc_BADE11: ImpAdLdI4 MemVar_C0F100
  loc_BADE14: Ary1LdPr
  loc_BADE15: MemStFPR8 global_272
  loc_BADE18: LitStr "9"
  loc_BADE1B: CR8Str
  loc_BADE1D: ILdI2 arg_10
  loc_BADE20: CI4UI1
  loc_BADE21: ImpAdLdI4 MemVar_C0F100
  loc_BADE24: Ary1LdPr
  loc_BADE25: MemStFPR8 global_284
  loc_BADE28: ILdI2 arg_10
  loc_BADE2B: CI4UI1
  loc_BADE2C: ImpAdLdI4 MemVar_C0F100
  loc_BADE2F: Ary1LdPr
  loc_BADE30: MemLdI2 global_4
  loc_BADE33: CR8I2
  loc_BADE34: LitStr "28"
  loc_BADE37: CR8Str
  loc_BADE39: EqR4
  loc_BADE3A: ILdI2 arg_10
  loc_BADE3D: CI4UI1
  loc_BADE3E: ImpAdLdI4 MemVar_C0F100
  loc_BADE41: Ary1LdPr
  loc_BADE42: MemLdFPR8 global_232
  loc_BADE45: LitStr "20"
  loc_BADE48: CR8Str
  loc_BADE4A: EqR4
  loc_BADE4B: AndI4
  loc_BADE4C: ILdI2 arg_10
  loc_BADE4F: CI4UI1
  loc_BADE50: ImpAdLdI4 MemVar_C0F100
  loc_BADE53: Ary1LdPr
  loc_BADE54: MemLdFPR8 global_240
  loc_BADE57: LitStr "9"
  loc_BADE5A: CR8Str
  loc_BADE5C: EqR4
  loc_BADE5D: AndI4
  loc_BADE5E: BranchF loc_BADE81
  loc_BADE61: LitStr "20"
  loc_BADE64: CR8Str
  loc_BADE66: ILdI2 arg_10
  loc_BADE69: CI4UI1
  loc_BADE6A: ImpAdLdI4 MemVar_C0F100
  loc_BADE6D: Ary1LdPr
  loc_BADE6E: MemStFPR8 global_272
  loc_BADE71: LitStr "8"
  loc_BADE74: CR8Str
  loc_BADE76: ILdI2 arg_10
  loc_BADE79: CI4UI1
  loc_BADE7A: ImpAdLdI4 MemVar_C0F100
  loc_BADE7D: Ary1LdPr
  loc_BADE7E: MemStFPR8 global_284
  loc_BADE81: ILdI2 arg_10
  loc_BADE84: CI4UI1
  loc_BADE85: ImpAdLdI4 MemVar_C0F100
  loc_BADE88: Ary1LdPr
  loc_BADE89: MemLdI2 global_4
  loc_BADE8C: CR8I2
  loc_BADE8D: LitStr "28"
  loc_BADE90: CR8Str
  loc_BADE92: EqR4
  loc_BADE93: ILdI2 arg_10
  loc_BADE96: CI4UI1
  loc_BADE97: ImpAdLdI4 MemVar_C0F100
  loc_BADE9A: Ary1LdPr
  loc_BADE9B: MemLdFPR8 global_232
  loc_BADE9E: LitStr "20"
  loc_BADEA1: CR8Str
  loc_BADEA3: EqR4
  loc_BADEA4: AndI4
  loc_BADEA5: ILdI2 arg_10
  loc_BADEA8: CI4UI1
  loc_BADEA9: ImpAdLdI4 MemVar_C0F100
  loc_BADEAC: Ary1LdPr
  loc_BADEAD: MemLdFPR8 global_240
  loc_BADEB0: LitStr "8"
  loc_BADEB3: CR8Str
  loc_BADEB5: EqR4
  loc_BADEB6: AndI4
  loc_BADEB7: BranchF loc_BADEDA
  loc_BADEBA: LitStr "20"
  loc_BADEBD: CR8Str
  loc_BADEBF: ILdI2 arg_10
  loc_BADEC2: CI4UI1
  loc_BADEC3: ImpAdLdI4 MemVar_C0F100
  loc_BADEC6: Ary1LdPr
  loc_BADEC7: MemStFPR8 global_272
  loc_BADECA: LitStr "7"
  loc_BADECD: CR8Str
  loc_BADECF: ILdI2 arg_10
  loc_BADED2: CI4UI1
  loc_BADED3: ImpAdLdI4 MemVar_C0F100
  loc_BADED6: Ary1LdPr
  loc_BADED7: MemStFPR8 global_284
  loc_BADEDA: ILdI2 arg_10
  loc_BADEDD: CI4UI1
  loc_BADEDE: ImpAdLdI4 MemVar_C0F100
  loc_BADEE1: Ary1LdPr
  loc_BADEE2: MemLdI2 global_4
  loc_BADEE5: CR8I2
  loc_BADEE6: LitStr "28"
  loc_BADEE9: CR8Str
  loc_BADEEB: EqR4
  loc_BADEEC: ILdI2 arg_10
  loc_BADEEF: CI4UI1
  loc_BADEF0: ImpAdLdI4 MemVar_C0F100
  loc_BADEF3: Ary1LdPr
  loc_BADEF4: MemLdFPR8 global_232
  loc_BADEF7: LitStr "20"
  loc_BADEFA: CR8Str
  loc_BADEFC: EqR4
  loc_BADEFD: AndI4
  loc_BADEFE: ILdI2 arg_10
  loc_BADF01: CI4UI1
  loc_BADF02: ImpAdLdI4 MemVar_C0F100
  loc_BADF05: Ary1LdPr
  loc_BADF06: MemLdFPR8 global_240
  loc_BADF09: LitStr "7"
  loc_BADF0C: CR8Str
  loc_BADF0E: EqR4
  loc_BADF0F: AndI4
  loc_BADF10: BranchF loc_BADF33
  loc_BADF13: LitStr "21"
  loc_BADF16: CR8Str
  loc_BADF18: ILdI2 arg_10
  loc_BADF1B: CI4UI1
  loc_BADF1C: ImpAdLdI4 MemVar_C0F100
  loc_BADF1F: Ary1LdPr
  loc_BADF20: MemStFPR8 global_272
  loc_BADF23: LitStr "7"
  loc_BADF26: CR8Str
  loc_BADF28: ILdI2 arg_10
  loc_BADF2B: CI4UI1
  loc_BADF2C: ImpAdLdI4 MemVar_C0F100
  loc_BADF2F: Ary1LdPr
  loc_BADF30: MemStFPR8 global_284
  loc_BADF33: ILdI2 arg_10
  loc_BADF36: CI4UI1
  loc_BADF37: ImpAdLdI4 MemVar_C0F100
  loc_BADF3A: Ary1LdPr
  loc_BADF3B: MemLdI2 global_4
  loc_BADF3E: CR8I2
  loc_BADF3F: LitStr "28"
  loc_BADF42: CR8Str
  loc_BADF44: EqR4
  loc_BADF45: ILdI2 arg_10
  loc_BADF48: CI4UI1
  loc_BADF49: ImpAdLdI4 MemVar_C0F100
  loc_BADF4C: Ary1LdPr
  loc_BADF4D: MemLdFPR8 global_232
  loc_BADF50: LitStr "21"
  loc_BADF53: CR8Str
  loc_BADF55: EqR4
  loc_BADF56: AndI4
  loc_BADF57: ILdI2 arg_10
  loc_BADF5A: CI4UI1
  loc_BADF5B: ImpAdLdI4 MemVar_C0F100
  loc_BADF5E: Ary1LdPr
  loc_BADF5F: MemLdFPR8 global_240
  loc_BADF62: LitStr "7"
  loc_BADF65: CR8Str
  loc_BADF67: EqR4
  loc_BADF68: AndI4
  loc_BADF69: BranchF loc_BADF8C
  loc_BADF6C: LitStr "22"
  loc_BADF6F: CR8Str
  loc_BADF71: ILdI2 arg_10
  loc_BADF74: CI4UI1
  loc_BADF75: ImpAdLdI4 MemVar_C0F100
  loc_BADF78: Ary1LdPr
  loc_BADF79: MemStFPR8 global_272
  loc_BADF7C: LitStr "7"
  loc_BADF7F: CR8Str
  loc_BADF81: ILdI2 arg_10
  loc_BADF84: CI4UI1
  loc_BADF85: ImpAdLdI4 MemVar_C0F100
  loc_BADF88: Ary1LdPr
  loc_BADF89: MemStFPR8 global_284
  loc_BADF8C: ILdI2 arg_10
  loc_BADF8F: CI4UI1
  loc_BADF90: ImpAdLdI4 MemVar_C0F100
  loc_BADF93: Ary1LdPr
  loc_BADF94: MemLdI2 global_4
  loc_BADF97: CR8I2
  loc_BADF98: LitStr "28"
  loc_BADF9B: CR8Str
  loc_BADF9D: EqR4
  loc_BADF9E: ILdI2 arg_10
  loc_BADFA1: CI4UI1
  loc_BADFA2: ImpAdLdI4 MemVar_C0F100
  loc_BADFA5: Ary1LdPr
  loc_BADFA6: MemLdFPR8 global_232
  loc_BADFA9: LitStr "22"
  loc_BADFAC: CR8Str
  loc_BADFAE: EqR4
  loc_BADFAF: AndI4
  loc_BADFB0: ILdI2 arg_10
  loc_BADFB3: CI4UI1
  loc_BADFB4: ImpAdLdI4 MemVar_C0F100
  loc_BADFB7: Ary1LdPr
  loc_BADFB8: MemLdFPR8 global_240
  loc_BADFBB: LitStr "7"
  loc_BADFBE: CR8Str
  loc_BADFC0: EqR4
  loc_BADFC1: AndI4
  loc_BADFC2: BranchF loc_BADFE5
  loc_BADFC5: LitStr "22"
  loc_BADFC8: CR8Str
  loc_BADFCA: ILdI2 arg_10
  loc_BADFCD: CI4UI1
  loc_BADFCE: ImpAdLdI4 MemVar_C0F100
  loc_BADFD1: Ary1LdPr
  loc_BADFD2: MemStFPR8 global_272
  loc_BADFD5: LitStr "8"
  loc_BADFD8: CR8Str
  loc_BADFDA: ILdI2 arg_10
  loc_BADFDD: CI4UI1
  loc_BADFDE: ImpAdLdI4 MemVar_C0F100
  loc_BADFE1: Ary1LdPr
  loc_BADFE2: MemStFPR8 global_284
  loc_BADFE5: ILdI2 arg_10
  loc_BADFE8: CI4UI1
  loc_BADFE9: ImpAdLdI4 MemVar_C0F100
  loc_BADFEC: Ary1LdPr
  loc_BADFED: MemLdI2 global_4
  loc_BADFF0: CR8I2
  loc_BADFF1: LitStr "28"
  loc_BADFF4: CR8Str
  loc_BADFF6: EqR4
  loc_BADFF7: ILdI2 arg_10
  loc_BADFFA: CI4UI1
  loc_BADFFB: ImpAdLdI4 MemVar_C0F100
  loc_BADFFE: Ary1LdPr
  loc_BADFFF: MemLdFPR8 global_232
  loc_BAE002: LitStr "22"
  loc_BAE005: CR8Str
  loc_BAE007: EqR4
  loc_BAE008: AndI4
  loc_BAE009: ILdI2 arg_10
  loc_BAE00C: CI4UI1
  loc_BAE00D: ImpAdLdI4 MemVar_C0F100
  loc_BAE010: Ary1LdPr
  loc_BAE011: MemLdFPR8 global_240
  loc_BAE014: LitStr "8"
  loc_BAE017: CR8Str
  loc_BAE019: EqR4
  loc_BAE01A: AndI4
  loc_BAE01B: BranchF loc_BAE03E
  loc_BAE01E: LitStr "22"
  loc_BAE021: CR8Str
  loc_BAE023: ILdI2 arg_10
  loc_BAE026: CI4UI1
  loc_BAE027: ImpAdLdI4 MemVar_C0F100
  loc_BAE02A: Ary1LdPr
  loc_BAE02B: MemStFPR8 global_272
  loc_BAE02E: LitStr "9"
  loc_BAE031: CR8Str
  loc_BAE033: ILdI2 arg_10
  loc_BAE036: CI4UI1
  loc_BAE037: ImpAdLdI4 MemVar_C0F100
  loc_BAE03A: Ary1LdPr
  loc_BAE03B: MemStFPR8 global_284
  loc_BAE03E: ILdI2 arg_10
  loc_BAE041: CI4UI1
  loc_BAE042: ImpAdLdI4 MemVar_C0F100
  loc_BAE045: Ary1LdPr
  loc_BAE046: MemLdI2 global_4
  loc_BAE049: CR8I2
  loc_BAE04A: LitStr "28"
  loc_BAE04D: CR8Str
  loc_BAE04F: EqR4
  loc_BAE050: ILdI2 arg_10
  loc_BAE053: CI4UI1
  loc_BAE054: ImpAdLdI4 MemVar_C0F100
  loc_BAE057: Ary1LdPr
  loc_BAE058: MemLdFPR8 global_232
  loc_BAE05B: LitStr "22"
  loc_BAE05E: CR8Str
  loc_BAE060: EqR4
  loc_BAE061: AndI4
  loc_BAE062: ILdI2 arg_10
  loc_BAE065: CI4UI1
  loc_BAE066: ImpAdLdI4 MemVar_C0F100
  loc_BAE069: Ary1LdPr
  loc_BAE06A: MemLdFPR8 global_240
  loc_BAE06D: LitStr "9"
  loc_BAE070: CR8Str
  loc_BAE072: EqR4
  loc_BAE073: AndI4
  loc_BAE074: BranchF loc_BAE097
  loc_BAE077: LitStr "22"
  loc_BAE07A: CR8Str
  loc_BAE07C: ILdI2 arg_10
  loc_BAE07F: CI4UI1
  loc_BAE080: ImpAdLdI4 MemVar_C0F100
  loc_BAE083: Ary1LdPr
  loc_BAE084: MemStFPR8 global_272
  loc_BAE087: LitStr "10"
  loc_BAE08A: CR8Str
  loc_BAE08C: ILdI2 arg_10
  loc_BAE08F: CI4UI1
  loc_BAE090: ImpAdLdI4 MemVar_C0F100
  loc_BAE093: Ary1LdPr
  loc_BAE094: MemStFPR8 global_284
  loc_BAE097: ILdI2 arg_10
  loc_BAE09A: CI4UI1
  loc_BAE09B: ImpAdLdI4 MemVar_C0F100
  loc_BAE09E: Ary1LdPr
  loc_BAE09F: MemLdI2 global_4
  loc_BAE0A2: CR8I2
  loc_BAE0A3: LitStr "28"
  loc_BAE0A6: CR8Str
  loc_BAE0A8: EqR4
  loc_BAE0A9: ILdI2 arg_10
  loc_BAE0AC: CI4UI1
  loc_BAE0AD: ImpAdLdI4 MemVar_C0F100
  loc_BAE0B0: Ary1LdPr
  loc_BAE0B1: MemLdFPR8 global_232
  loc_BAE0B4: LitStr "22"
  loc_BAE0B7: CR8Str
  loc_BAE0B9: EqR4
  loc_BAE0BA: AndI4
  loc_BAE0BB: ILdI2 arg_10
  loc_BAE0BE: CI4UI1
  loc_BAE0BF: ImpAdLdI4 MemVar_C0F100
  loc_BAE0C2: Ary1LdPr
  loc_BAE0C3: MemLdFPR8 global_240
  loc_BAE0C6: LitStr "10"
  loc_BAE0C9: CR8Str
  loc_BAE0CB: EqR4
  loc_BAE0CC: AndI4
  loc_BAE0CD: BranchF loc_BAE0F0
  loc_BAE0D0: LitStr "23"
  loc_BAE0D3: CR8Str
  loc_BAE0D5: ILdI2 arg_10
  loc_BAE0D8: CI4UI1
  loc_BAE0D9: ImpAdLdI4 MemVar_C0F100
  loc_BAE0DC: Ary1LdPr
  loc_BAE0DD: MemStFPR8 global_272
  loc_BAE0E0: LitStr "10"
  loc_BAE0E3: CR8Str
  loc_BAE0E5: ILdI2 arg_10
  loc_BAE0E8: CI4UI1
  loc_BAE0E9: ImpAdLdI4 MemVar_C0F100
  loc_BAE0EC: Ary1LdPr
  loc_BAE0ED: MemStFPR8 global_284
  loc_BAE0F0: ILdI2 arg_10
  loc_BAE0F3: CI4UI1
  loc_BAE0F4: ImpAdLdI4 MemVar_C0F100
  loc_BAE0F7: Ary1LdPr
  loc_BAE0F8: MemLdI2 global_4
  loc_BAE0FB: CR8I2
  loc_BAE0FC: LitStr "28"
  loc_BAE0FF: CR8Str
  loc_BAE101: EqR4
  loc_BAE102: ILdI2 arg_10
  loc_BAE105: CI4UI1
  loc_BAE106: ImpAdLdI4 MemVar_C0F100
  loc_BAE109: Ary1LdPr
  loc_BAE10A: MemLdFPR8 global_232
  loc_BAE10D: LitStr "23"
  loc_BAE110: CR8Str
  loc_BAE112: EqR4
  loc_BAE113: AndI4
  loc_BAE114: ILdI2 arg_10
  loc_BAE117: CI4UI1
  loc_BAE118: ImpAdLdI4 MemVar_C0F100
  loc_BAE11B: Ary1LdPr
  loc_BAE11C: MemLdFPR8 global_240
  loc_BAE11F: LitStr "10"
  loc_BAE122: CR8Str
  loc_BAE124: EqR4
  loc_BAE125: AndI4
  loc_BAE126: BranchF loc_BAE149
  loc_BAE129: LitStr "24"
  loc_BAE12C: CR8Str
  loc_BAE12E: ILdI2 arg_10
  loc_BAE131: CI4UI1
  loc_BAE132: ImpAdLdI4 MemVar_C0F100
  loc_BAE135: Ary1LdPr
  loc_BAE136: MemStFPR8 global_272
  loc_BAE139: LitStr "10"
  loc_BAE13C: CR8Str
  loc_BAE13E: ILdI2 arg_10
  loc_BAE141: CI4UI1
  loc_BAE142: ImpAdLdI4 MemVar_C0F100
  loc_BAE145: Ary1LdPr
  loc_BAE146: MemStFPR8 global_284
  loc_BAE149: ILdI2 arg_10
  loc_BAE14C: CI4UI1
  loc_BAE14D: ImpAdLdI4 MemVar_C0F100
  loc_BAE150: Ary1LdPr
  loc_BAE151: MemLdI2 global_4
  loc_BAE154: CR8I2
  loc_BAE155: LitStr "28"
  loc_BAE158: CR8Str
  loc_BAE15A: EqR4
  loc_BAE15B: ILdI2 arg_10
  loc_BAE15E: CI4UI1
  loc_BAE15F: ImpAdLdI4 MemVar_C0F100
  loc_BAE162: Ary1LdPr
  loc_BAE163: MemLdFPR8 global_232
  loc_BAE166: LitStr "24"
  loc_BAE169: CR8Str
  loc_BAE16B: EqR4
  loc_BAE16C: AndI4
  loc_BAE16D: ILdI2 arg_10
  loc_BAE170: CI4UI1
  loc_BAE171: ImpAdLdI4 MemVar_C0F100
  loc_BAE174: Ary1LdPr
  loc_BAE175: MemLdFPR8 global_240
  loc_BAE178: LitStr "10"
  loc_BAE17B: CR8Str
  loc_BAE17D: EqR4
  loc_BAE17E: AndI4
  loc_BAE17F: BranchF loc_BAE1A2
  loc_BAE182: LitStr "24"
  loc_BAE185: CR8Str
  loc_BAE187: ILdI2 arg_10
  loc_BAE18A: CI4UI1
  loc_BAE18B: ImpAdLdI4 MemVar_C0F100
  loc_BAE18E: Ary1LdPr
  loc_BAE18F: MemStFPR8 global_272
  loc_BAE192: LitStr "9"
  loc_BAE195: CR8Str
  loc_BAE197: ILdI2 arg_10
  loc_BAE19A: CI4UI1
  loc_BAE19B: ImpAdLdI4 MemVar_C0F100
  loc_BAE19E: Ary1LdPr
  loc_BAE19F: MemStFPR8 global_284
  loc_BAE1A2: ILdI2 arg_10
  loc_BAE1A5: CI4UI1
  loc_BAE1A6: ImpAdLdI4 MemVar_C0F100
  loc_BAE1A9: Ary1LdPr
  loc_BAE1AA: MemLdI2 global_4
  loc_BAE1AD: CR8I2
  loc_BAE1AE: LitStr "28"
  loc_BAE1B1: CR8Str
  loc_BAE1B3: EqR4
  loc_BAE1B4: ILdI2 arg_10
  loc_BAE1B7: CI4UI1
  loc_BAE1B8: ImpAdLdI4 MemVar_C0F100
  loc_BAE1BB: Ary1LdPr
  loc_BAE1BC: MemLdFPR8 global_232
  loc_BAE1BF: LitStr "24"
  loc_BAE1C2: CR8Str
  loc_BAE1C4: EqR4
  loc_BAE1C5: AndI4
  loc_BAE1C6: ILdI2 arg_10
  loc_BAE1C9: CI4UI1
  loc_BAE1CA: ImpAdLdI4 MemVar_C0F100
  loc_BAE1CD: Ary1LdPr
  loc_BAE1CE: MemLdFPR8 global_240
  loc_BAE1D1: LitStr "9"
  loc_BAE1D4: CR8Str
  loc_BAE1D6: EqR4
  loc_BAE1D7: AndI4
  loc_BAE1D8: BranchF loc_BAE1FB
  loc_BAE1DB: LitStr "24"
  loc_BAE1DE: CR8Str
  loc_BAE1E0: ILdI2 arg_10
  loc_BAE1E3: CI4UI1
  loc_BAE1E4: ImpAdLdI4 MemVar_C0F100
  loc_BAE1E7: Ary1LdPr
  loc_BAE1E8: MemStFPR8 global_272
  loc_BAE1EB: LitStr "8"
  loc_BAE1EE: CR8Str
  loc_BAE1F0: ILdI2 arg_10
  loc_BAE1F3: CI4UI1
  loc_BAE1F4: ImpAdLdI4 MemVar_C0F100
  loc_BAE1F7: Ary1LdPr
  loc_BAE1F8: MemStFPR8 global_284
  loc_BAE1FB: ILdI2 arg_10
  loc_BAE1FE: CI4UI1
  loc_BAE1FF: ImpAdLdI4 MemVar_C0F100
  loc_BAE202: Ary1LdPr
  loc_BAE203: MemLdI2 global_4
  loc_BAE206: CR8I2
  loc_BAE207: LitStr "28"
  loc_BAE20A: CR8Str
  loc_BAE20C: EqR4
  loc_BAE20D: ILdI2 arg_10
  loc_BAE210: CI4UI1
  loc_BAE211: ImpAdLdI4 MemVar_C0F100
  loc_BAE214: Ary1LdPr
  loc_BAE215: MemLdFPR8 global_232
  loc_BAE218: LitStr "24"
  loc_BAE21B: CR8Str
  loc_BAE21D: EqR4
  loc_BAE21E: AndI4
  loc_BAE21F: ILdI2 arg_10
  loc_BAE222: CI4UI1
  loc_BAE223: ImpAdLdI4 MemVar_C0F100
  loc_BAE226: Ary1LdPr
  loc_BAE227: MemLdFPR8 global_240
  loc_BAE22A: LitStr "8"
  loc_BAE22D: CR8Str
  loc_BAE22F: EqR4
  loc_BAE230: AndI4
  loc_BAE231: BranchF loc_BAE254
  loc_BAE234: LitStr "24"
  loc_BAE237: CR8Str
  loc_BAE239: ILdI2 arg_10
  loc_BAE23C: CI4UI1
  loc_BAE23D: ImpAdLdI4 MemVar_C0F100
  loc_BAE240: Ary1LdPr
  loc_BAE241: MemStFPR8 global_272
  loc_BAE244: LitStr "7"
  loc_BAE247: CR8Str
  loc_BAE249: ILdI2 arg_10
  loc_BAE24C: CI4UI1
  loc_BAE24D: ImpAdLdI4 MemVar_C0F100
  loc_BAE250: Ary1LdPr
  loc_BAE251: MemStFPR8 global_284
  loc_BAE254: ILdI2 arg_10
  loc_BAE257: CI4UI1
  loc_BAE258: ImpAdLdI4 MemVar_C0F100
  loc_BAE25B: Ary1LdPr
  loc_BAE25C: MemLdI2 global_4
  loc_BAE25F: CR8I2
  loc_BAE260: LitStr "28"
  loc_BAE263: CR8Str
  loc_BAE265: EqR4
  loc_BAE266: ILdI2 arg_10
  loc_BAE269: CI4UI1
  loc_BAE26A: ImpAdLdI4 MemVar_C0F100
  loc_BAE26D: Ary1LdPr
  loc_BAE26E: MemLdFPR8 global_232
  loc_BAE271: LitStr "24"
  loc_BAE274: CR8Str
  loc_BAE276: EqR4
  loc_BAE277: AndI4
  loc_BAE278: ILdI2 arg_10
  loc_BAE27B: CI4UI1
  loc_BAE27C: ImpAdLdI4 MemVar_C0F100
  loc_BAE27F: Ary1LdPr
  loc_BAE280: MemLdFPR8 global_240
  loc_BAE283: LitStr "7"
  loc_BAE286: CR8Str
  loc_BAE288: EqR4
  loc_BAE289: AndI4
  loc_BAE28A: BranchF loc_BAE2AD
  loc_BAE28D: LitStr "25"
  loc_BAE290: CR8Str
  loc_BAE292: ILdI2 arg_10
  loc_BAE295: CI4UI1
  loc_BAE296: ImpAdLdI4 MemVar_C0F100
  loc_BAE299: Ary1LdPr
  loc_BAE29A: MemStFPR8 global_272
  loc_BAE29D: LitStr "7"
  loc_BAE2A0: CR8Str
  loc_BAE2A2: ILdI2 arg_10
  loc_BAE2A5: CI4UI1
  loc_BAE2A6: ImpAdLdI4 MemVar_C0F100
  loc_BAE2A9: Ary1LdPr
  loc_BAE2AA: MemStFPR8 global_284
  loc_BAE2AD: ILdI2 arg_10
  loc_BAE2B0: CI4UI1
  loc_BAE2B1: ImpAdLdI4 MemVar_C0F100
  loc_BAE2B4: Ary1LdPr
  loc_BAE2B5: MemLdI2 global_4
  loc_BAE2B8: CR8I2
  loc_BAE2B9: LitStr "28"
  loc_BAE2BC: CR8Str
  loc_BAE2BE: EqR4
  loc_BAE2BF: ILdI2 arg_10
  loc_BAE2C2: CI4UI1
  loc_BAE2C3: ImpAdLdI4 MemVar_C0F100
  loc_BAE2C6: Ary1LdPr
  loc_BAE2C7: MemLdFPR8 global_232
  loc_BAE2CA: LitStr "25"
  loc_BAE2CD: CR8Str
  loc_BAE2CF: EqR4
  loc_BAE2D0: AndI4
  loc_BAE2D1: ILdI2 arg_10
  loc_BAE2D4: CI4UI1
  loc_BAE2D5: ImpAdLdI4 MemVar_C0F100
  loc_BAE2D8: Ary1LdPr
  loc_BAE2D9: MemLdFPR8 global_240
  loc_BAE2DC: LitStr "7"
  loc_BAE2DF: CR8Str
  loc_BAE2E1: EqR4
  loc_BAE2E2: AndI4
  loc_BAE2E3: BranchF loc_BAE306
  loc_BAE2E6: LitStr "26"
  loc_BAE2E9: CR8Str
  loc_BAE2EB: ILdI2 arg_10
  loc_BAE2EE: CI4UI1
  loc_BAE2EF: ImpAdLdI4 MemVar_C0F100
  loc_BAE2F2: Ary1LdPr
  loc_BAE2F3: MemStFPR8 global_272
  loc_BAE2F6: LitStr "7"
  loc_BAE2F9: CR8Str
  loc_BAE2FB: ILdI2 arg_10
  loc_BAE2FE: CI4UI1
  loc_BAE2FF: ImpAdLdI4 MemVar_C0F100
  loc_BAE302: Ary1LdPr
  loc_BAE303: MemStFPR8 global_284
  loc_BAE306: ILdI2 arg_10
  loc_BAE309: CI4UI1
  loc_BAE30A: ImpAdLdI4 MemVar_C0F100
  loc_BAE30D: Ary1LdPr
  loc_BAE30E: MemLdI2 global_4
  loc_BAE311: CR8I2
  loc_BAE312: LitStr "28"
  loc_BAE315: CR8Str
  loc_BAE317: EqR4
  loc_BAE318: ILdI2 arg_10
  loc_BAE31B: CI4UI1
  loc_BAE31C: ImpAdLdI4 MemVar_C0F100
  loc_BAE31F: Ary1LdPr
  loc_BAE320: MemLdFPR8 global_232
  loc_BAE323: LitStr "26"
  loc_BAE326: CR8Str
  loc_BAE328: EqR4
  loc_BAE329: AndI4
  loc_BAE32A: ILdI2 arg_10
  loc_BAE32D: CI4UI1
  loc_BAE32E: ImpAdLdI4 MemVar_C0F100
  loc_BAE331: Ary1LdPr
  loc_BAE332: MemLdFPR8 global_240
  loc_BAE335: LitStr "7"
  loc_BAE338: CR8Str
  loc_BAE33A: EqR4
  loc_BAE33B: AndI4
  loc_BAE33C: BranchF loc_BAE35F
  loc_BAE33F: LitStr "26"
  loc_BAE342: CR8Str
  loc_BAE344: ILdI2 arg_10
  loc_BAE347: CI4UI1
  loc_BAE348: ImpAdLdI4 MemVar_C0F100
  loc_BAE34B: Ary1LdPr
  loc_BAE34C: MemStFPR8 global_272
  loc_BAE34F: LitStr "8"
  loc_BAE352: CR8Str
  loc_BAE354: ILdI2 arg_10
  loc_BAE357: CI4UI1
  loc_BAE358: ImpAdLdI4 MemVar_C0F100
  loc_BAE35B: Ary1LdPr
  loc_BAE35C: MemStFPR8 global_284
  loc_BAE35F: ILdI2 arg_10
  loc_BAE362: CI4UI1
  loc_BAE363: ImpAdLdI4 MemVar_C0F100
  loc_BAE366: Ary1LdPr
  loc_BAE367: MemLdI2 global_4
  loc_BAE36A: CR8I2
  loc_BAE36B: LitStr "28"
  loc_BAE36E: CR8Str
  loc_BAE370: EqR4
  loc_BAE371: ILdI2 arg_10
  loc_BAE374: CI4UI1
  loc_BAE375: ImpAdLdI4 MemVar_C0F100
  loc_BAE378: Ary1LdPr
  loc_BAE379: MemLdFPR8 global_232
  loc_BAE37C: LitStr "26"
  loc_BAE37F: CR8Str
  loc_BAE381: EqR4
  loc_BAE382: AndI4
  loc_BAE383: ILdI2 arg_10
  loc_BAE386: CI4UI1
  loc_BAE387: ImpAdLdI4 MemVar_C0F100
  loc_BAE38A: Ary1LdPr
  loc_BAE38B: MemLdFPR8 global_240
  loc_BAE38E: LitStr "8"
  loc_BAE391: CR8Str
  loc_BAE393: EqR4
  loc_BAE394: AndI4
  loc_BAE395: BranchF loc_BAE3B8
  loc_BAE398: LitStr "26"
  loc_BAE39B: CR8Str
  loc_BAE39D: ILdI2 arg_10
  loc_BAE3A0: CI4UI1
  loc_BAE3A1: ImpAdLdI4 MemVar_C0F100
  loc_BAE3A4: Ary1LdPr
  loc_BAE3A5: MemStFPR8 global_272
  loc_BAE3A8: LitStr "9"
  loc_BAE3AB: CR8Str
  loc_BAE3AD: ILdI2 arg_10
  loc_BAE3B0: CI4UI1
  loc_BAE3B1: ImpAdLdI4 MemVar_C0F100
  loc_BAE3B4: Ary1LdPr
  loc_BAE3B5: MemStFPR8 global_284
  loc_BAE3B8: ILdI2 arg_10
  loc_BAE3BB: CI4UI1
  loc_BAE3BC: ImpAdLdI4 MemVar_C0F100
  loc_BAE3BF: Ary1LdPr
  loc_BAE3C0: MemLdI2 global_4
  loc_BAE3C3: CR8I2
  loc_BAE3C4: LitStr "28"
  loc_BAE3C7: CR8Str
  loc_BAE3C9: EqR4
  loc_BAE3CA: ILdI2 arg_10
  loc_BAE3CD: CI4UI1
  loc_BAE3CE: ImpAdLdI4 MemVar_C0F100
  loc_BAE3D1: Ary1LdPr
  loc_BAE3D2: MemLdFPR8 global_232
  loc_BAE3D5: LitStr "26"
  loc_BAE3D8: CR8Str
  loc_BAE3DA: EqR4
  loc_BAE3DB: AndI4
  loc_BAE3DC: ILdI2 arg_10
  loc_BAE3DF: CI4UI1
  loc_BAE3E0: ImpAdLdI4 MemVar_C0F100
  loc_BAE3E3: Ary1LdPr
  loc_BAE3E4: MemLdFPR8 global_240
  loc_BAE3E7: LitStr "9"
  loc_BAE3EA: CR8Str
  loc_BAE3EC: EqR4
  loc_BAE3ED: AndI4
  loc_BAE3EE: BranchF loc_BAE411
  loc_BAE3F1: LitStr "26"
  loc_BAE3F4: CR8Str
  loc_BAE3F6: ILdI2 arg_10
  loc_BAE3F9: CI4UI1
  loc_BAE3FA: ImpAdLdI4 MemVar_C0F100
  loc_BAE3FD: Ary1LdPr
  loc_BAE3FE: MemStFPR8 global_272
  loc_BAE401: LitStr "10"
  loc_BAE404: CR8Str
  loc_BAE406: ILdI2 arg_10
  loc_BAE409: CI4UI1
  loc_BAE40A: ImpAdLdI4 MemVar_C0F100
  loc_BAE40D: Ary1LdPr
  loc_BAE40E: MemStFPR8 global_284
  loc_BAE411: ILdI2 arg_10
  loc_BAE414: CI4UI1
  loc_BAE415: ImpAdLdI4 MemVar_C0F100
  loc_BAE418: Ary1LdPr
  loc_BAE419: MemLdI2 global_4
  loc_BAE41C: CR8I2
  loc_BAE41D: LitStr "28"
  loc_BAE420: CR8Str
  loc_BAE422: EqR4
  loc_BAE423: ILdI2 arg_10
  loc_BAE426: CI4UI1
  loc_BAE427: ImpAdLdI4 MemVar_C0F100
  loc_BAE42A: Ary1LdPr
  loc_BAE42B: MemLdFPR8 global_232
  loc_BAE42E: LitStr "26"
  loc_BAE431: CR8Str
  loc_BAE433: EqR4
  loc_BAE434: AndI4
  loc_BAE435: ILdI2 arg_10
  loc_BAE438: CI4UI1
  loc_BAE439: ImpAdLdI4 MemVar_C0F100
  loc_BAE43C: Ary1LdPr
  loc_BAE43D: MemLdFPR8 global_240
  loc_BAE440: LitStr "10"
  loc_BAE443: CR8Str
  loc_BAE445: EqR4
  loc_BAE446: AndI4
  loc_BAE447: BranchF loc_BAE46A
  loc_BAE44A: LitStr "27"
  loc_BAE44D: CR8Str
  loc_BAE44F: ILdI2 arg_10
  loc_BAE452: CI4UI1
  loc_BAE453: ImpAdLdI4 MemVar_C0F100
  loc_BAE456: Ary1LdPr
  loc_BAE457: MemStFPR8 global_272
  loc_BAE45A: LitStr "10"
  loc_BAE45D: CR8Str
  loc_BAE45F: ILdI2 arg_10
  loc_BAE462: CI4UI1
  loc_BAE463: ImpAdLdI4 MemVar_C0F100
  loc_BAE466: Ary1LdPr
  loc_BAE467: MemStFPR8 global_284
  loc_BAE46A: ILdI2 arg_10
  loc_BAE46D: CI4UI1
  loc_BAE46E: ImpAdLdI4 MemVar_C0F100
  loc_BAE471: Ary1LdPr
  loc_BAE472: MemLdI2 global_4
  loc_BAE475: CR8I2
  loc_BAE476: LitStr "28"
  loc_BAE479: CR8Str
  loc_BAE47B: EqR4
  loc_BAE47C: ILdI2 arg_10
  loc_BAE47F: CI4UI1
  loc_BAE480: ImpAdLdI4 MemVar_C0F100
  loc_BAE483: Ary1LdPr
  loc_BAE484: MemLdFPR8 global_232
  loc_BAE487: LitStr "27"
  loc_BAE48A: CR8Str
  loc_BAE48C: EqR4
  loc_BAE48D: AndI4
  loc_BAE48E: ILdI2 arg_10
  loc_BAE491: CI4UI1
  loc_BAE492: ImpAdLdI4 MemVar_C0F100
  loc_BAE495: Ary1LdPr
  loc_BAE496: MemLdFPR8 global_240
  loc_BAE499: LitStr "10"
  loc_BAE49C: CR8Str
  loc_BAE49E: EqR4
  loc_BAE49F: AndI4
  loc_BAE4A0: BranchF loc_BAE4C3
  loc_BAE4A3: LitStr "28"
  loc_BAE4A6: CR8Str
  loc_BAE4A8: ILdI2 arg_10
  loc_BAE4AB: CI4UI1
  loc_BAE4AC: ImpAdLdI4 MemVar_C0F100
  loc_BAE4AF: Ary1LdPr
  loc_BAE4B0: MemStFPR8 global_272
  loc_BAE4B3: LitStr "10"
  loc_BAE4B6: CR8Str
  loc_BAE4B8: ILdI2 arg_10
  loc_BAE4BB: CI4UI1
  loc_BAE4BC: ImpAdLdI4 MemVar_C0F100
  loc_BAE4BF: Ary1LdPr
  loc_BAE4C0: MemStFPR8 global_284
  loc_BAE4C3: ILdI2 arg_10
  loc_BAE4C6: CI4UI1
  loc_BAE4C7: ImpAdLdI4 MemVar_C0F100
  loc_BAE4CA: Ary1LdPr
  loc_BAE4CB: MemLdI2 global_4
  loc_BAE4CE: CR8I2
  loc_BAE4CF: LitStr "28"
  loc_BAE4D2: CR8Str
  loc_BAE4D4: EqR4
  loc_BAE4D5: ILdI2 arg_10
  loc_BAE4D8: CI4UI1
  loc_BAE4D9: ImpAdLdI4 MemVar_C0F100
  loc_BAE4DC: Ary1LdPr
  loc_BAE4DD: MemLdFPR8 global_232
  loc_BAE4E0: LitStr "28"
  loc_BAE4E3: CR8Str
  loc_BAE4E5: EqR4
  loc_BAE4E6: AndI4
  loc_BAE4E7: ILdI2 arg_10
  loc_BAE4EA: CI4UI1
  loc_BAE4EB: ImpAdLdI4 MemVar_C0F100
  loc_BAE4EE: Ary1LdPr
  loc_BAE4EF: MemLdFPR8 global_240
  loc_BAE4F2: LitStr "10"
  loc_BAE4F5: CR8Str
  loc_BAE4F7: EqR4
  loc_BAE4F8: AndI4
  loc_BAE4F9: BranchF loc_BAE51C
  loc_BAE4FC: LitStr "28"
  loc_BAE4FF: CR8Str
  loc_BAE501: ILdI2 arg_10
  loc_BAE504: CI4UI1
  loc_BAE505: ImpAdLdI4 MemVar_C0F100
  loc_BAE508: Ary1LdPr
  loc_BAE509: MemStFPR8 global_272
  loc_BAE50C: LitStr "9"
  loc_BAE50F: CR8Str
  loc_BAE511: ILdI2 arg_10
  loc_BAE514: CI4UI1
  loc_BAE515: ImpAdLdI4 MemVar_C0F100
  loc_BAE518: Ary1LdPr
  loc_BAE519: MemStFPR8 global_284
  loc_BAE51C: ILdI2 arg_10
  loc_BAE51F: CI4UI1
  loc_BAE520: ImpAdLdI4 MemVar_C0F100
  loc_BAE523: Ary1LdPr
  loc_BAE524: MemLdI2 global_4
  loc_BAE527: CR8I2
  loc_BAE528: LitStr "28"
  loc_BAE52B: CR8Str
  loc_BAE52D: EqR4
  loc_BAE52E: ILdI2 arg_10
  loc_BAE531: CI4UI1
  loc_BAE532: ImpAdLdI4 MemVar_C0F100
  loc_BAE535: Ary1LdPr
  loc_BAE536: MemLdFPR8 global_232
  loc_BAE539: LitStr "28"
  loc_BAE53C: CR8Str
  loc_BAE53E: EqR4
  loc_BAE53F: AndI4
  loc_BAE540: ILdI2 arg_10
  loc_BAE543: CI4UI1
  loc_BAE544: ImpAdLdI4 MemVar_C0F100
  loc_BAE547: Ary1LdPr
  loc_BAE548: MemLdFPR8 global_240
  loc_BAE54B: LitStr "9"
  loc_BAE54E: CR8Str
  loc_BAE550: EqR4
  loc_BAE551: AndI4
  loc_BAE552: BranchF loc_BAE575
  loc_BAE555: LitStr "28"
  loc_BAE558: CR8Str
  loc_BAE55A: ILdI2 arg_10
  loc_BAE55D: CI4UI1
  loc_BAE55E: ImpAdLdI4 MemVar_C0F100
  loc_BAE561: Ary1LdPr
  loc_BAE562: MemStFPR8 global_272
  loc_BAE565: LitStr "8"
  loc_BAE568: CR8Str
  loc_BAE56A: ILdI2 arg_10
  loc_BAE56D: CI4UI1
  loc_BAE56E: ImpAdLdI4 MemVar_C0F100
  loc_BAE571: Ary1LdPr
  loc_BAE572: MemStFPR8 global_284
  loc_BAE575: ILdI2 arg_10
  loc_BAE578: CI4UI1
  loc_BAE579: ImpAdLdI4 MemVar_C0F100
  loc_BAE57C: Ary1LdPr
  loc_BAE57D: MemLdI2 global_4
  loc_BAE580: CR8I2
  loc_BAE581: LitStr "28"
  loc_BAE584: CR8Str
  loc_BAE586: EqR4
  loc_BAE587: ILdI2 arg_10
  loc_BAE58A: CI4UI1
  loc_BAE58B: ImpAdLdI4 MemVar_C0F100
  loc_BAE58E: Ary1LdPr
  loc_BAE58F: MemLdFPR8 global_232
  loc_BAE592: LitStr "28"
  loc_BAE595: CR8Str
  loc_BAE597: EqR4
  loc_BAE598: AndI4
  loc_BAE599: ILdI2 arg_10
  loc_BAE59C: CI4UI1
  loc_BAE59D: ImpAdLdI4 MemVar_C0F100
  loc_BAE5A0: Ary1LdPr
  loc_BAE5A1: MemLdFPR8 global_240
  loc_BAE5A4: LitStr "8"
  loc_BAE5A7: CR8Str
  loc_BAE5A9: EqR4
  loc_BAE5AA: AndI4
  loc_BAE5AB: BranchF loc_BAE5CE
  loc_BAE5AE: LitStr "28"
  loc_BAE5B1: CR8Str
  loc_BAE5B3: ILdI2 arg_10
  loc_BAE5B6: CI4UI1
  loc_BAE5B7: ImpAdLdI4 MemVar_C0F100
  loc_BAE5BA: Ary1LdPr
  loc_BAE5BB: MemStFPR8 global_272
  loc_BAE5BE: LitStr "7"
  loc_BAE5C1: CR8Str
  loc_BAE5C3: ILdI2 arg_10
  loc_BAE5C6: CI4UI1
  loc_BAE5C7: ImpAdLdI4 MemVar_C0F100
  loc_BAE5CA: Ary1LdPr
  loc_BAE5CB: MemStFPR8 global_284
  loc_BAE5CE: ILdI2 arg_10
  loc_BAE5D1: CI4UI1
  loc_BAE5D2: ImpAdLdI4 MemVar_C0F100
  loc_BAE5D5: Ary1LdPr
  loc_BAE5D6: MemLdI2 global_4
  loc_BAE5D9: CR8I2
  loc_BAE5DA: LitStr "28"
  loc_BAE5DD: CR8Str
  loc_BAE5DF: EqR4
  loc_BAE5E0: ILdI2 arg_10
  loc_BAE5E3: CI4UI1
  loc_BAE5E4: ImpAdLdI4 MemVar_C0F100
  loc_BAE5E7: Ary1LdPr
  loc_BAE5E8: MemLdFPR8 global_232
  loc_BAE5EB: LitStr "28"
  loc_BAE5EE: CR8Str
  loc_BAE5F0: EqR4
  loc_BAE5F1: AndI4
  loc_BAE5F2: ILdI2 arg_10
  loc_BAE5F5: CI4UI1
  loc_BAE5F6: ImpAdLdI4 MemVar_C0F100
  loc_BAE5F9: Ary1LdPr
  loc_BAE5FA: MemLdFPR8 global_240
  loc_BAE5FD: LitStr "7"
  loc_BAE600: CR8Str
  loc_BAE602: EqR4
  loc_BAE603: AndI4
  loc_BAE604: BranchF loc_BAE627
  loc_BAE607: LitStr "28"
  loc_BAE60A: CR8Str
  loc_BAE60C: ILdI2 arg_10
  loc_BAE60F: CI4UI1
  loc_BAE610: ImpAdLdI4 MemVar_C0F100
  loc_BAE613: Ary1LdPr
  loc_BAE614: MemStFPR8 global_272
  loc_BAE617: LitStr "5"
  loc_BAE61A: CR8Str
  loc_BAE61C: ILdI2 arg_10
  loc_BAE61F: CI4UI1
  loc_BAE620: ImpAdLdI4 MemVar_C0F100
  loc_BAE623: Ary1LdPr
  loc_BAE624: MemStFPR8 global_284
  loc_BAE627: ILdI2 arg_10
  loc_BAE62A: CI4UI1
  loc_BAE62B: ImpAdLdI4 MemVar_C0F100
  loc_BAE62E: Ary1LdPr
  loc_BAE62F: MemLdI2 global_4
  loc_BAE632: CR8I2
  loc_BAE633: LitStr "28"
  loc_BAE636: CR8Str
  loc_BAE638: EqR4
  loc_BAE639: ILdI2 arg_10
  loc_BAE63C: CI4UI1
  loc_BAE63D: ImpAdLdI4 MemVar_C0F100
  loc_BAE640: Ary1LdPr
  loc_BAE641: MemLdFPR8 global_232
  loc_BAE644: LitStr "28"
  loc_BAE647: CR8Str
  loc_BAE649: EqR4
  loc_BAE64A: AndI4
  loc_BAE64B: ILdI2 arg_10
  loc_BAE64E: CI4UI1
  loc_BAE64F: ImpAdLdI4 MemVar_C0F100
  loc_BAE652: Ary1LdPr
  loc_BAE653: MemLdFPR8 global_240
  loc_BAE656: LitStr "5"
  loc_BAE659: CR8Str
  loc_BAE65B: EqR4
  loc_BAE65C: AndI4
  loc_BAE65D: BranchF loc_BAE6F1
  loc_BAE660: FLdRfVar var_E2
  loc_BAE663: ImpAdLdRf MemVar_C0F018
  loc_BAE666: NewIfNullPr frmMain
  loc_BAE669: VCallAd Control_ID_
  loc_BAE66C: FStAdFunc var_E0
  loc_BAE66F: FLdPr var_E0
  loc_BAE672:  = frmMain.CheckBox.Value
  loc_BAE677: FLdI2 var_E2
  loc_BAE67A: CR8I2
  loc_BAE67B: LitStr "1"
  loc_BAE67E: CR8Str
  loc_BAE680: EqR4
  loc_BAE681: FFree1Ad var_E0
  loc_BAE684: BranchF loc_BAE6AA
  loc_BAE687: LitStr "28"
  loc_BAE68A: CR8Str
  loc_BAE68C: ILdI2 arg_10
  loc_BAE68F: CI4UI1
  loc_BAE690: ImpAdLdI4 MemVar_C0F100
  loc_BAE693: Ary1LdPr
  loc_BAE694: MemStFPR8 global_272
  loc_BAE697: LitStr "5"
  loc_BAE69A: CR8Str
  loc_BAE69C: ILdI2 arg_10
  loc_BAE69F: CI4UI1
  loc_BAE6A0: ImpAdLdI4 MemVar_C0F100
  loc_BAE6A3: Ary1LdPr
  loc_BAE6A4: MemStFPR8 global_284
  loc_BAE6A7: Branch loc_BAE6F1
  loc_BAE6AA: FLdRfVar var_E2
  loc_BAE6AD: ImpAdLdRf MemVar_C0F018
  loc_BAE6B0: NewIfNullPr frmMain
  loc_BAE6B3: VCallAd Control_ID_
  loc_BAE6B6: FStAdFunc var_E0
  loc_BAE6B9: FLdPr var_E0
  loc_BAE6BC:  = frmMain.CheckBox.Value
  loc_BAE6C1: FLdI2 var_E2
  loc_BAE6C4: CR8I2
  loc_BAE6C5: LitStr "0"
  loc_BAE6C8: CR8Str
  loc_BAE6CA: EqR4
  loc_BAE6CB: FFree1Ad var_E0
  loc_BAE6CE: BranchF loc_BAE6F1
  loc_BAE6D1: LitStr "29"
  loc_BAE6D4: CR8Str
  loc_BAE6D6: ILdI2 arg_10
  loc_BAE6D9: CI4UI1
  loc_BAE6DA: ImpAdLdI4 MemVar_C0F100
  loc_BAE6DD: Ary1LdPr
  loc_BAE6DE: MemStFPR8 global_272
  loc_BAE6E1: LitStr "5"
  loc_BAE6E4: CR8Str
  loc_BAE6E6: ILdI2 arg_10
  loc_BAE6E9: CI4UI1
  loc_BAE6EA: ImpAdLdI4 MemVar_C0F100
  loc_BAE6ED: Ary1LdPr
  loc_BAE6EE: MemStFPR8 global_284
  loc_BAE6F1: ILdI2 arg_10
  loc_BAE6F4: CI4UI1
  loc_BAE6F5: ImpAdLdI4 MemVar_C0F100
  loc_BAE6F8: Ary1LdPr
  loc_BAE6F9: MemLdI2 global_4
  loc_BAE6FC: CR8I2
  loc_BAE6FD: LitStr "25"
  loc_BAE700: CR8Str
  loc_BAE702: EqR4
  loc_BAE703: BranchF loc_BAE7C8
  loc_BAE706: ILdI2 arg_10
  loc_BAE709: CI4UI1
  loc_BAE70A: ImpAdLdI4 MemVar_C0F100
  loc_BAE70D: Ary1LdPr
  loc_BAE70E: MemLdFPR8 global_232
  loc_BAE711: LitI2_Byte &H14
  loc_BAE713: CR8I2
  loc_BAE714: EqR4
  loc_BAE715: ILdI2 arg_10
  loc_BAE718: CI4UI1
  loc_BAE719: ImpAdLdI4 MemVar_C0F100
  loc_BAE71C: Ary1LdPr
  loc_BAE71D: MemLdFPR8 global_240
  loc_BAE720: LitI2_Byte &H1C
  loc_BAE722: CR8I2
  loc_BAE723: EqR4
  loc_BAE724: AndI4
  loc_BAE725: ILdI2 arg_10
  loc_BAE728: CI4UI1
  loc_BAE729: ImpAdLdI4 MemVar_C0F100
  loc_BAE72C: Ary1LdPr
  loc_BAE72D: MemLdStr global_348
  loc_BAE730: LitStr "."
  loc_BAE733: EqStr
  loc_BAE735: LitI2_Byte 0
  loc_BAE737: EqI2
  loc_BAE738: AndI4
  loc_BAE739: BranchF loc_BAE7C8
  loc_BAE73C: LitI2_Byte &H16
  loc_BAE73E: ILdI2 arg_10
  loc_BAE741: CI4UI1
  loc_BAE742: ImpAdLdI4 MemVar_C0F100
  loc_BAE745: Ary1LdPr
  loc_BAE746: MemLdFPR8 global_284
  loc_BAE749: LitI2_Byte &H1C
  loc_BAE74B: CR8I2
  loc_BAE74C: EqR4
  loc_BAE74D: AndI4
  loc_BAE74E: CR8I2
  loc_BAE74F: ILdI2 arg_10
  loc_BAE752: CI4UI1
  loc_BAE753: ImpAdLdI4 MemVar_C0F100
  loc_BAE756: Ary1LdPr
  loc_BAE757: MemStFPR8 global_272
  loc_BAE75A: LitStr "2,2"
  loc_BAE75D: ILdI2 arg_10
  loc_BAE760: CI4UI1
  loc_BAE761: ImpAdLdI4 MemVar_C0F100
  loc_BAE764: Ary1LdPr
  loc_BAE765: MemStStrCopy
  loc_BAE769: LitI4 &H19
  loc_BAE76E: LitStr "AGSplash0 enter"
  loc_BAE771: FLdRfVar var_A8
  loc_BAE774: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAE779: FFree1Var var_A8 = ""
  loc_BAE77C: LitI2_Byte &HFF
  loc_BAE77E: ILdI2 arg_10
  loc_BAE781: CI4UI1
  loc_BAE782: ImpAdLdI4 MemVar_C0F100
  loc_BAE785: Ary1LdPr
  loc_BAE786: MemStI2 global_316
  loc_BAE789: LitStr "Swim"
  loc_BAE78C: ILdI2 arg_10
  loc_BAE78F: CI4UI1
  loc_BAE790: ImpAdLdI4 MemVar_C0F100
  loc_BAE793: Ary1LdPr
  loc_BAE794: MemStStrCopy
  loc_BAE798: LitI2_Byte 0
  loc_BAE79A: CStrBool
  loc_BAE79C: FStStrNoPop var_98
  loc_BAE79F: ILdI2 arg_10
  loc_BAE7A2: CI4UI1
  loc_BAE7A3: ImpAdLdI4 MemVar_C0F100
  loc_BAE7A6: Ary1LdPr
  loc_BAE7A7: MemStStrCopy
  loc_BAE7AB: FFree1Str var_98
  loc_BAE7AE: LitI2_Byte 3
  loc_BAE7B0: CStrUI1
  loc_BAE7B2: FStStrNoPop var_98
  loc_BAE7B5: ILdI2 arg_10
  loc_BAE7B8: CI4UI1
  loc_BAE7B9: ImpAdLdI4 MemVar_C0F100
  loc_BAE7BC: Ary1LdPr
  loc_BAE7BD: MemStStrCopy
  loc_BAE7C1: FFree1Str var_98
  loc_BAE7C4: ExitProcCb
  loc_BAE7C8: ILdI2 arg_10
  loc_BAE7CB: CI4UI1
  loc_BAE7CC: ImpAdLdI4 MemVar_C0F100
  loc_BAE7CF: Ary1LdPr
  loc_BAE7D0: MemLdI2 global_4
  loc_BAE7D3: CR8I2
  loc_BAE7D4: LitStr "25"
  loc_BAE7D7: CR8Str
  loc_BAE7D9: EqR4
  loc_BAE7DA: BranchF loc_BAE8A0
  loc_BAE7DD: ILdI2 arg_10
  loc_BAE7E0: CI4UI1
  loc_BAE7E1: ImpAdLdI4 MemVar_C0F100
  loc_BAE7E4: Ary1LdPr
  loc_BAE7E5: MemLdFPR8 global_232
  loc_BAE7E8: LitI2_Byte &H15
  loc_BAE7EA: CR8I2
  loc_BAE7EB: EqR4
  loc_BAE7EC: ILdI2 arg_10
  loc_BAE7EF: CI4UI1
  loc_BAE7F0: ImpAdLdI4 MemVar_C0F100
  loc_BAE7F3: Ary1LdPr
  loc_BAE7F4: MemLdFPR8 global_240
  loc_BAE7F7: LitI2_Byte &H1C
  loc_BAE7F9: CR8I2
  loc_BAE7FA: EqR4
  loc_BAE7FB: AndI4
  loc_BAE7FC: BranchF loc_BAE8A0
  loc_BAE7FF: LitI2_Byte &H13
  loc_BAE801: ILdI2 arg_10
  loc_BAE804: CI4UI1
  loc_BAE805: ImpAdLdI4 MemVar_C0F100
  loc_BAE808: Ary1LdPr
  loc_BAE809: MemLdFPR8 global_284
  loc_BAE80C: LitI2_Byte &H1C
  loc_BAE80E: CR8I2
  loc_BAE80F: EqR4
  loc_BAE810: AndI4
  loc_BAE811: CR8I2
  loc_BAE812: ILdI2 arg_10
  loc_BAE815: CI4UI1
  loc_BAE816: ImpAdLdI4 MemVar_C0F100
  loc_BAE819: Ary1LdPr
  loc_BAE81A: MemStFPR8 global_272
  loc_BAE81D: LitI2_Byte 0
  loc_BAE81F: FLdRfVar var_14C
  loc_BAE822: ILdI2 arg_10
  loc_BAE825: ImpAdLdRf MemVar_C0F018
  loc_BAE828: NewIfNullPr frmMain
  loc_BAE82B: VCallAd Control_ID_
  loc_BAE82E: FStAdFunc var_E0
  loc_BAE831: FLdPr var_E0
  loc_BAE834: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAE839: FLdPr var_14C
  loc_BAE83C: Me.Enabled = from_stack_1b
  loc_BAE841: FFreeAd var_E0 = ""
  loc_BAE848: LitI4 &H19
  loc_BAE84D: LitStr "AGSplash0 exit"
  loc_BAE850: FLdRfVar var_A8
  loc_BAE853: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAE858: FFree1Var var_A8 = ""
  loc_BAE85B: LitI2_Byte 8
  loc_BAE85D: CStrUI1
  loc_BAE85F: FStStrNoPop var_98
  loc_BAE862: ILdI2 arg_10
  loc_BAE865: CI4UI1
  loc_BAE866: ImpAdLdI4 MemVar_C0F100
  loc_BAE869: Ary1LdPr
  loc_BAE86A: MemStStrCopy
  loc_BAE86E: FFree1Str var_98
  loc_BAE871: LitStr "6,6"
  loc_BAE874: ILdI2 arg_10
  loc_BAE877: CI4UI1
  loc_BAE878: ImpAdLdI4 MemVar_C0F100
  loc_BAE87B: Ary1LdPr
  loc_BAE87C: MemStStrCopy
  loc_BAE880: LitI2_Byte 0
  loc_BAE882: ILdI2 arg_10
  loc_BAE885: CI4UI1
  loc_BAE886: ImpAdLdI4 MemVar_C0F100
  loc_BAE889: Ary1LdPr
  loc_BAE88A: MemStI2 global_316
  loc_BAE88D: LitStr "walk"
  loc_BAE890: ILdI2 arg_10
  loc_BAE893: CI4UI1
  loc_BAE894: ImpAdLdI4 MemVar_C0F100
  loc_BAE897: Ary1LdPr
  loc_BAE898: MemStStrCopy
  loc_BAE89C: ExitProcCb
  loc_BAE8A0: ILdI2 arg_10
  loc_BAE8A3: CI4UI1
  loc_BAE8A4: ImpAdLdI4 MemVar_C0F100
  loc_BAE8A7: Ary1LdPr
  loc_BAE8A8: MemLdI2 global_4
  loc_BAE8AB: CR8I2
  loc_BAE8AC: LitStr "36"
  loc_BAE8AF: CR8Str
  loc_BAE8B1: EqR4
  loc_BAE8B2: BranchF loc_BAE975
  loc_BAE8B5: ILdI2 arg_10
  loc_BAE8B8: CI4UI1
  loc_BAE8B9: ImpAdLdI4 MemVar_C0F100
  loc_BAE8BC: Ary1LdPr
  loc_BAE8BD: MemLdFPR8 global_232
  loc_BAE8C0: LitI2_Byte &H11
  loc_BAE8C2: CR8I2
  loc_BAE8C3: EqR4
  loc_BAE8C4: ILdI2 arg_10
  loc_BAE8C7: CI4UI1
  loc_BAE8C8: ImpAdLdI4 MemVar_C0F100
  loc_BAE8CB: Ary1LdPr
  loc_BAE8CC: MemLdFPR8 global_240
  loc_BAE8CF: LitI2_Byte &H15
  loc_BAE8D1: CR8I2
  loc_BAE8D2: EqR4
  loc_BAE8D3: AndI4
  loc_BAE8D4: ILdI2 arg_10
  loc_BAE8D7: CI4UI1
  loc_BAE8D8: ImpAdLdI4 MemVar_C0F100
  loc_BAE8DB: Ary1LdPr
  loc_BAE8DC: MemLdStr global_348
  loc_BAE8DF: LitStr "."
  loc_BAE8E2: EqStr
  loc_BAE8E4: LitI2_Byte 0
  loc_BAE8E6: EqI2
  loc_BAE8E7: AndI4
  loc_BAE8E8: BranchF loc_BAE975
  loc_BAE8EB: LitStr "4,4"
  loc_BAE8EE: ILdI2 arg_10
  loc_BAE8F1: CI4UI1
  loc_BAE8F2: ImpAdLdI4 MemVar_C0F100
  loc_BAE8F5: Ary1LdPr
  loc_BAE8F6: MemStStrCopy
  loc_BAE8FA: LitI4 &H24
  loc_BAE8FF: LitStr "AGSplash0 enter"
  loc_BAE902: FLdRfVar var_A8
  loc_BAE905: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAE90A: FFree1Var var_A8 = ""
  loc_BAE90D: LitI2_Byte 0
  loc_BAE90F: CStrUI1
  loc_BAE911: FStStrNoPop var_98
  loc_BAE914: ILdI2 arg_10
  loc_BAE917: CI4UI1
  loc_BAE918: ImpAdLdI4 MemVar_C0F100
  loc_BAE91B: Ary1LdPr
  loc_BAE91C: MemStStrCopy
  loc_BAE920: FFree1Str var_98
  loc_BAE923: LitStr "Swim"
  loc_BAE926: ILdI2 arg_10
  loc_BAE929: CI4UI1
  loc_BAE92A: ImpAdLdI4 MemVar_C0F100
  loc_BAE92D: Ary1LdPr
  loc_BAE92E: MemStStrCopy
  loc_BAE932: LitI2_Byte &HFF
  loc_BAE934: ILdI2 arg_10
  loc_BAE937: CI4UI1
  loc_BAE938: ImpAdLdI4 MemVar_C0F100
  loc_BAE93B: Ary1LdPr
  loc_BAE93C: MemStI2 global_316
  loc_BAE93F: LitI2_Byte 0
  loc_BAE941: CStrBool
  loc_BAE943: FStStrNoPop var_98
  loc_BAE946: ILdI2 arg_10
  loc_BAE949: CI4UI1
  loc_BAE94A: ImpAdLdI4 MemVar_C0F100
  loc_BAE94D: Ary1LdPr
  loc_BAE94E: MemStStrCopy
  loc_BAE952: FFree1Str var_98
  loc_BAE955: LitI2_Byte &H11
  loc_BAE957: CR8I2
  loc_BAE958: ILdI2 arg_10
  loc_BAE95B: CI4UI1
  loc_BAE95C: ImpAdLdI4 MemVar_C0F100
  loc_BAE95F: Ary1LdPr
  loc_BAE960: MemStFPR8 global_272
  loc_BAE963: LitI2_Byte &H17
  loc_BAE965: CR8I2
  loc_BAE966: ILdI2 arg_10
  loc_BAE969: CI4UI1
  loc_BAE96A: ImpAdLdI4 MemVar_C0F100
  loc_BAE96D: Ary1LdPr
  loc_BAE96E: MemStFPR8 global_284
  loc_BAE971: ExitProcCb
  loc_BAE975: ILdI2 arg_10
  loc_BAE978: CI4UI1
  loc_BAE979: ImpAdLdI4 MemVar_C0F100
  loc_BAE97C: Ary1LdPr
  loc_BAE97D: MemLdI2 global_4
  loc_BAE980: CR8I2
  loc_BAE981: LitStr "36"
  loc_BAE984: CR8Str
  loc_BAE986: EqR4
  loc_BAE987: BranchF loc_BAEA4B
  loc_BAE98A: ILdI2 arg_10
  loc_BAE98D: CI4UI1
  loc_BAE98E: ImpAdLdI4 MemVar_C0F100
  loc_BAE991: Ary1LdPr
  loc_BAE992: MemLdFPR8 global_232
  loc_BAE995: LitI2_Byte &H11
  loc_BAE997: CR8I2
  loc_BAE998: EqR4
  loc_BAE999: ILdI2 arg_10
  loc_BAE99C: CI4UI1
  loc_BAE99D: ImpAdLdI4 MemVar_C0F100
  loc_BAE9A0: Ary1LdPr
  loc_BAE9A1: MemLdFPR8 global_240
  loc_BAE9A4: LitI2_Byte &H16
  loc_BAE9A6: CR8I2
  loc_BAE9A7: EqR4
  loc_BAE9A8: AndI4
  loc_BAE9A9: BranchF loc_BAEA4B
  loc_BAE9AC: LitStr "0,0"
  loc_BAE9AF: ILdI2 arg_10
  loc_BAE9B2: CI4UI1
  loc_BAE9B3: ImpAdLdI4 MemVar_C0F100
  loc_BAE9B6: Ary1LdPr
  loc_BAE9B7: MemStStrCopy
  loc_BAE9BB: LitI2_Byte 0
  loc_BAE9BD: FLdRfVar var_14C
  loc_BAE9C0: ILdI2 arg_10
  loc_BAE9C3: ImpAdLdRf MemVar_C0F018
  loc_BAE9C6: NewIfNullPr frmMain
  loc_BAE9C9: VCallAd Control_ID_
  loc_BAE9CC: FStAdFunc var_E0
  loc_BAE9CF: FLdPr var_E0
  loc_BAE9D2: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAE9D7: FLdPr var_14C
  loc_BAE9DA: Me.Enabled = from_stack_1b
  loc_BAE9DF: FFreeAd var_E0 = ""
  loc_BAE9E6: LitI4 &H24
  loc_BAE9EB: LitStr "AGSplash0 exit"
  loc_BAE9EE: FLdRfVar var_A8
  loc_BAE9F1: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAE9F6: FFree1Var var_A8 = ""
  loc_BAE9F9: LitI2_Byte 0
  loc_BAE9FB: ILdI2 arg_10
  loc_BAE9FE: CI4UI1
  loc_BAE9FF: ImpAdLdI4 MemVar_C0F100
  loc_BAEA02: Ary1LdPr
  loc_BAEA03: MemStI2 global_316
  loc_BAEA06: LitStr "walk"
  loc_BAEA09: ILdI2 arg_10
  loc_BAEA0C: CI4UI1
  loc_BAEA0D: ImpAdLdI4 MemVar_C0F100
  loc_BAEA10: Ary1LdPr
  loc_BAEA11: MemStStrCopy
  loc_BAEA15: LitI2_Byte 8
  loc_BAEA17: CStrUI1
  loc_BAEA19: FStStrNoPop var_98
  loc_BAEA1C: ILdI2 arg_10
  loc_BAEA1F: CI4UI1
  loc_BAEA20: ImpAdLdI4 MemVar_C0F100
  loc_BAEA23: Ary1LdPr
  loc_BAEA24: MemStStrCopy
  loc_BAEA28: FFree1Str var_98
  loc_BAEA2B: LitI2_Byte &H11
  loc_BAEA2D: CR8I2
  loc_BAEA2E: ILdI2 arg_10
  loc_BAEA31: CI4UI1
  loc_BAEA32: ImpAdLdI4 MemVar_C0F100
  loc_BAEA35: Ary1LdPr
  loc_BAEA36: MemStFPR8 global_272
  loc_BAEA39: LitI2_Byte &H14
  loc_BAEA3B: CR8I2
  loc_BAEA3C: ILdI2 arg_10
  loc_BAEA3F: CI4UI1
  loc_BAEA40: ImpAdLdI4 MemVar_C0F100
  loc_BAEA43: Ary1LdPr
  loc_BAEA44: MemStFPR8 global_284
  loc_BAEA47: ExitProcCb
  loc_BAEA4B: ILdI2 arg_10
  loc_BAEA4E: CI4UI1
  loc_BAEA4F: ImpAdLdI4 MemVar_C0F100
  loc_BAEA52: Ary1LdPr
  loc_BAEA53: MemLdI2 global_4
  loc_BAEA56: CR8I2
  loc_BAEA57: LitStr "36"
  loc_BAEA5A: CR8Str
  loc_BAEA5C: EqR4
  loc_BAEA5D: BranchF loc_BAEB20
  loc_BAEA60: ILdI2 arg_10
  loc_BAEA63: CI4UI1
  loc_BAEA64: ImpAdLdI4 MemVar_C0F100
  loc_BAEA67: Ary1LdPr
  loc_BAEA68: MemLdFPR8 global_232
  loc_BAEA6B: LitI2_Byte &H1F
  loc_BAEA6D: CR8I2
  loc_BAEA6E: EqR4
  loc_BAEA6F: ILdI2 arg_10
  loc_BAEA72: CI4UI1
  loc_BAEA73: ImpAdLdI4 MemVar_C0F100
  loc_BAEA76: Ary1LdPr
  loc_BAEA77: MemLdFPR8 global_240
  loc_BAEA7A: LitI2_Byte &HA
  loc_BAEA7C: CR8I2
  loc_BAEA7D: EqR4
  loc_BAEA7E: AndI4
  loc_BAEA7F: ILdI2 arg_10
  loc_BAEA82: CI4UI1
  loc_BAEA83: ImpAdLdI4 MemVar_C0F100
  loc_BAEA86: Ary1LdPr
  loc_BAEA87: MemLdStr global_348
  loc_BAEA8A: LitStr "."
  loc_BAEA8D: EqStr
  loc_BAEA8F: LitI2_Byte 0
  loc_BAEA91: EqI2
  loc_BAEA92: AndI4
  loc_BAEA93: BranchF loc_BAEB20
  loc_BAEA96: LitStr "4,4"
  loc_BAEA99: ILdI2 arg_10
  loc_BAEA9C: CI4UI1
  loc_BAEA9D: ImpAdLdI4 MemVar_C0F100
  loc_BAEAA0: Ary1LdPr
  loc_BAEAA1: MemStStrCopy
  loc_BAEAA5: LitI4 &H24
  loc_BAEAAA: LitStr "AGSplash2 enter"
  loc_BAEAAD: FLdRfVar var_A8
  loc_BAEAB0: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAEAB5: FFree1Var var_A8 = ""
  loc_BAEAB8: LitI2_Byte 0
  loc_BAEABA: CStrUI1
  loc_BAEABC: FStStrNoPop var_98
  loc_BAEABF: ILdI2 arg_10
  loc_BAEAC2: CI4UI1
  loc_BAEAC3: ImpAdLdI4 MemVar_C0F100
  loc_BAEAC6: Ary1LdPr
  loc_BAEAC7: MemStStrCopy
  loc_BAEACB: FFree1Str var_98
  loc_BAEACE: LitI2_Byte &H1F
  loc_BAEAD0: CR8I2
  loc_BAEAD1: ILdI2 arg_10
  loc_BAEAD4: CI4UI1
  loc_BAEAD5: ImpAdLdI4 MemVar_C0F100
  loc_BAEAD8: Ary1LdPr
  loc_BAEAD9: MemStFPR8 global_272
  loc_BAEADC: LitI2_Byte &HC
  loc_BAEADE: CR8I2
  loc_BAEADF: ILdI2 arg_10
  loc_BAEAE2: CI4UI1
  loc_BAEAE3: ImpAdLdI4 MemVar_C0F100
  loc_BAEAE6: Ary1LdPr
  loc_BAEAE7: MemStFPR8 global_284
  loc_BAEAEA: LitStr "Swim"
  loc_BAEAED: ILdI2 arg_10
  loc_BAEAF0: CI4UI1
  loc_BAEAF1: ImpAdLdI4 MemVar_C0F100
  loc_BAEAF4: Ary1LdPr
  loc_BAEAF5: MemStStrCopy
  loc_BAEAF9: LitI2_Byte &HFF
  loc_BAEAFB: ILdI2 arg_10
  loc_BAEAFE: CI4UI1
  loc_BAEAFF: ImpAdLdI4 MemVar_C0F100
  loc_BAEB02: Ary1LdPr
  loc_BAEB03: MemStI2 global_316
  loc_BAEB06: LitI2_Byte 0
  loc_BAEB08: CStrBool
  loc_BAEB0A: FStStrNoPop var_98
  loc_BAEB0D: ILdI2 arg_10
  loc_BAEB10: CI4UI1
  loc_BAEB11: ImpAdLdI4 MemVar_C0F100
  loc_BAEB14: Ary1LdPr
  loc_BAEB15: MemStStrCopy
  loc_BAEB19: FFree1Str var_98
  loc_BAEB1C: ExitProcCb
  loc_BAEB20: ILdI2 arg_10
  loc_BAEB23: CI4UI1
  loc_BAEB24: ImpAdLdI4 MemVar_C0F100
  loc_BAEB27: Ary1LdPr
  loc_BAEB28: MemLdI2 global_4
  loc_BAEB2B: CR8I2
  loc_BAEB2C: LitStr "36"
  loc_BAEB2F: CR8Str
  loc_BAEB31: EqR4
  loc_BAEB32: BranchF loc_BAEBF6
  loc_BAEB35: ILdI2 arg_10
  loc_BAEB38: CI4UI1
  loc_BAEB39: ImpAdLdI4 MemVar_C0F100
  loc_BAEB3C: Ary1LdPr
  loc_BAEB3D: MemLdFPR8 global_232
  loc_BAEB40: LitI2_Byte &H1F
  loc_BAEB42: CR8I2
  loc_BAEB43: EqR4
  loc_BAEB44: ILdI2 arg_10
  loc_BAEB47: CI4UI1
  loc_BAEB48: ImpAdLdI4 MemVar_C0F100
  loc_BAEB4B: Ary1LdPr
  loc_BAEB4C: MemLdFPR8 global_240
  loc_BAEB4F: LitI2_Byte &HB
  loc_BAEB51: CR8I2
  loc_BAEB52: EqR4
  loc_BAEB53: AndI4
  loc_BAEB54: BranchF loc_BAEBF6
  loc_BAEB57: LitStr "0,0"
  loc_BAEB5A: ILdI2 arg_10
  loc_BAEB5D: CI4UI1
  loc_BAEB5E: ImpAdLdI4 MemVar_C0F100
  loc_BAEB61: Ary1LdPr
  loc_BAEB62: MemStStrCopy
  loc_BAEB66: LitI2_Byte 0
  loc_BAEB68: FLdRfVar var_14C
  loc_BAEB6B: ILdI2 arg_10
  loc_BAEB6E: ImpAdLdRf MemVar_C0F018
  loc_BAEB71: NewIfNullPr frmMain
  loc_BAEB74: VCallAd Control_ID_
  loc_BAEB77: FStAdFunc var_E0
  loc_BAEB7A: FLdPr var_E0
  loc_BAEB7D: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAEB82: FLdPr var_14C
  loc_BAEB85: Me.Enabled = from_stack_1b
  loc_BAEB8A: FFreeAd var_E0 = ""
  loc_BAEB91: LitI4 &H24
  loc_BAEB96: LitStr "AGSplash2 exit"
  loc_BAEB99: FLdRfVar var_A8
  loc_BAEB9C: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAEBA1: FFree1Var var_A8 = ""
  loc_BAEBA4: LitI2_Byte 0
  loc_BAEBA6: ILdI2 arg_10
  loc_BAEBA9: CI4UI1
  loc_BAEBAA: ImpAdLdI4 MemVar_C0F100
  loc_BAEBAD: Ary1LdPr
  loc_BAEBAE: MemStI2 global_316
  loc_BAEBB1: LitStr "walk"
  loc_BAEBB4: ILdI2 arg_10
  loc_BAEBB7: CI4UI1
  loc_BAEBB8: ImpAdLdI4 MemVar_C0F100
  loc_BAEBBB: Ary1LdPr
  loc_BAEBBC: MemStStrCopy
  loc_BAEBC0: LitI2_Byte 8
  loc_BAEBC2: CStrUI1
  loc_BAEBC4: FStStrNoPop var_98
  loc_BAEBC7: ILdI2 arg_10
  loc_BAEBCA: CI4UI1
  loc_BAEBCB: ImpAdLdI4 MemVar_C0F100
  loc_BAEBCE: Ary1LdPr
  loc_BAEBCF: MemStStrCopy
  loc_BAEBD3: FFree1Str var_98
  loc_BAEBD6: LitI2_Byte &H1F
  loc_BAEBD8: CR8I2
  loc_BAEBD9: ILdI2 arg_10
  loc_BAEBDC: CI4UI1
  loc_BAEBDD: ImpAdLdI4 MemVar_C0F100
  loc_BAEBE0: Ary1LdPr
  loc_BAEBE1: MemStFPR8 global_272
  loc_BAEBE4: LitI2_Byte 9
  loc_BAEBE6: CR8I2
  loc_BAEBE7: ILdI2 arg_10
  loc_BAEBEA: CI4UI1
  loc_BAEBEB: ImpAdLdI4 MemVar_C0F100
  loc_BAEBEE: Ary1LdPr
  loc_BAEBEF: MemStFPR8 global_284
  loc_BAEBF2: ExitProcCb
  loc_BAEBF6: ILdI2 arg_10
  loc_BAEBF9: CI4UI1
  loc_BAEBFA: ImpAdLdI4 MemVar_C0F100
  loc_BAEBFD: Ary1LdPr
  loc_BAEBFE: MemLdI2 global_4
  loc_BAEC01: CR8I2
  loc_BAEC02: LitStr "36"
  loc_BAEC05: CR8Str
  loc_BAEC07: EqR4
  loc_BAEC08: BranchF loc_BAECBD
  loc_BAEC0B: ILdI2 arg_10
  loc_BAEC0E: CI4UI1
  loc_BAEC0F: ImpAdLdI4 MemVar_C0F100
  loc_BAEC12: Ary1LdPr
  loc_BAEC13: MemLdFPR8 global_232
  loc_BAEC16: LitI2_Byte &H14
  loc_BAEC18: CR8I2
  loc_BAEC19: EqR4
  loc_BAEC1A: ILdI2 arg_10
  loc_BAEC1D: CI4UI1
  loc_BAEC1E: ImpAdLdI4 MemVar_C0F100
  loc_BAEC21: Ary1LdPr
  loc_BAEC22: MemLdFPR8 global_240
  loc_BAEC25: LitI2_Byte &H13
  loc_BAEC27: CR8I2
  loc_BAEC28: EqR4
  loc_BAEC29: AndI4
  loc_BAEC2A: BranchF loc_BAECBD
  loc_BAEC2D: LitI2_Byte 0
  loc_BAEC2F: FLdRfVar var_14C
  loc_BAEC32: ILdI2 arg_10
  loc_BAEC35: ImpAdLdRf MemVar_C0F018
  loc_BAEC38: NewIfNullPr frmMain
  loc_BAEC3B: VCallAd Control_ID_
  loc_BAEC3E: FStAdFunc var_E0
  loc_BAEC41: FLdPr var_E0
  loc_BAEC44: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAEC49: FLdPr var_14C
  loc_BAEC4C: Me.Enabled = from_stack_1b
  loc_BAEC51: FFreeAd var_E0 = ""
  loc_BAEC58: LitI4 &H24
  loc_BAEC5D: LitStr "AGSplash1 exit"
  loc_BAEC60: FLdRfVar var_A8
  loc_BAEC63: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAEC68: FFree1Var var_A8 = ""
  loc_BAEC6B: LitI2_Byte 0
  loc_BAEC6D: ILdI2 arg_10
  loc_BAEC70: CI4UI1
  loc_BAEC71: ImpAdLdI4 MemVar_C0F100
  loc_BAEC74: Ary1LdPr
  loc_BAEC75: MemStI2 global_316
  loc_BAEC78: LitStr "walk"
  loc_BAEC7B: ILdI2 arg_10
  loc_BAEC7E: CI4UI1
  loc_BAEC7F: ImpAdLdI4 MemVar_C0F100
  loc_BAEC82: Ary1LdPr
  loc_BAEC83: MemStStrCopy
  loc_BAEC87: LitI2_Byte 8
  loc_BAEC89: CStrUI1
  loc_BAEC8B: FStStrNoPop var_98
  loc_BAEC8E: ILdI2 arg_10
  loc_BAEC91: CI4UI1
  loc_BAEC92: ImpAdLdI4 MemVar_C0F100
  loc_BAEC95: Ary1LdPr
  loc_BAEC96: MemStStrCopy
  loc_BAEC9A: FFree1Str var_98
  loc_BAEC9D: LitI2_Byte &H12
  loc_BAEC9F: CR8I2
  loc_BAECA0: ILdI2 arg_10
  loc_BAECA3: CI4UI1
  loc_BAECA4: ImpAdLdI4 MemVar_C0F100
  loc_BAECA7: Ary1LdPr
  loc_BAECA8: MemStFPR8 global_272
  loc_BAECAB: LitI2_Byte &H13
  loc_BAECAD: CR8I2
  loc_BAECAE: ILdI2 arg_10
  loc_BAECB1: CI4UI1
  loc_BAECB2: ImpAdLdI4 MemVar_C0F100
  loc_BAECB5: Ary1LdPr
  loc_BAECB6: MemStFPR8 global_284
  loc_BAECB9: ExitProcCb
  loc_BAECBD: ILdI2 arg_10
  loc_BAECC0: CI4UI1
  loc_BAECC1: ImpAdLdI4 MemVar_C0F100
  loc_BAECC4: Ary1LdPr
  loc_BAECC5: MemLdI2 global_4
  loc_BAECC8: CR8I2
  loc_BAECC9: LitStr "27"
  loc_BAECCC: CR8Str
  loc_BAECCE: EqR4
  loc_BAECCF: BranchF loc_BAEDBA
  loc_BAECD2: ILdI2 arg_10
  loc_BAECD5: CI4UI1
  loc_BAECD6: ImpAdLdI4 MemVar_C0F100
  loc_BAECD9: Ary1LdPr
  loc_BAECDA: MemLdFPR8 global_232
  loc_BAECDD: LitI2_Byte &HB
  loc_BAECDF: CR8I2
  loc_BAECE0: EqR4
  loc_BAECE1: ILdI2 arg_10
  loc_BAECE4: CI4UI1
  loc_BAECE5: ImpAdLdI4 MemVar_C0F100
  loc_BAECE8: Ary1LdPr
  loc_BAECE9: MemLdFPR8 global_240
  loc_BAECEC: LitI2_Byte &HB
  loc_BAECEE: CR8I2
  loc_BAECEF: EqR4
  loc_BAECF0: AndI4
  loc_BAECF1: ILdI2 arg_10
  loc_BAECF4: CI4UI1
  loc_BAECF5: ImpAdLdI4 MemVar_C0F100
  loc_BAECF8: Ary1LdPr
  loc_BAECF9: MemLdStr global_348
  loc_BAECFC: LitStr "."
  loc_BAECFF: EqStr
  loc_BAED01: LitI2_Byte 0
  loc_BAED03: EqI2
  loc_BAED04: AndI4
  loc_BAED05: ILdI2 arg_10
  loc_BAED08: CI4UI1
  loc_BAED09: ImpAdLdI4 MemVar_C0F100
  loc_BAED0C: Ary1LdPr
  loc_BAED0D: MemLdStr global_296
  loc_BAED10: LitStr "7.0"
  loc_BAED13: EqStr
  loc_BAED15: AndI4
  loc_BAED16: BranchF loc_BAEDBA
  loc_BAED19: LitI2_Byte &HB
  loc_BAED1B: ILdI2 arg_10
  loc_BAED1E: CI4UI1
  loc_BAED1F: ImpAdLdI4 MemVar_C0F100
  loc_BAED22: Ary1LdPr
  loc_BAED23: MemLdFPR8 global_240
  loc_BAED26: LitI2_Byte &HB
  loc_BAED28: CR8I2
  loc_BAED29: EqR4
  loc_BAED2A: AndI4
  loc_BAED2B: CR8I2
  loc_BAED2C: ILdI2 arg_10
  loc_BAED2F: CI4UI1
  loc_BAED30: ImpAdLdI4 MemVar_C0F100
  loc_BAED33: Ary1LdPr
  loc_BAED34: MemStFPR8 global_232
  loc_BAED37: LitI2_Byte &HD
  loc_BAED39: CR8I2
  loc_BAED3A: ILdI2 arg_10
  loc_BAED3D: CI4UI1
  loc_BAED3E: ImpAdLdI4 MemVar_C0F100
  loc_BAED41: Ary1LdPr
  loc_BAED42: MemStFPR8 global_272
  loc_BAED45: LitI2_Byte &HC
  loc_BAED47: CR8I2
  loc_BAED48: ILdI2 arg_10
  loc_BAED4B: CI4UI1
  loc_BAED4C: ImpAdLdI4 MemVar_C0F100
  loc_BAED4F: Ary1LdPr
  loc_BAED50: MemStFPR8 global_284
  loc_BAED53: LitStr "2,2"
  loc_BAED56: ILdI2 arg_10
  loc_BAED59: CI4UI1
  loc_BAED5A: ImpAdLdI4 MemVar_C0F100
  loc_BAED5D: Ary1LdPr
  loc_BAED5E: MemStStrCopy
  loc_BAED62: LitI4 &H1B
  loc_BAED67: LitStr "AGSplash0 enter"
  loc_BAED6A: FLdRfVar var_A8
  loc_BAED6D: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAED72: FFree1Var var_A8 = ""
  loc_BAED75: LitI2_Byte &HFF
  loc_BAED77: ILdI2 arg_10
  loc_BAED7A: CI4UI1
  loc_BAED7B: ImpAdLdI4 MemVar_C0F100
  loc_BAED7E: Ary1LdPr
  loc_BAED7F: MemStI2 global_316
  loc_BAED82: LitStr "Swim"
  loc_BAED85: ILdI2 arg_10
  loc_BAED88: CI4UI1
  loc_BAED89: ImpAdLdI4 MemVar_C0F100
  loc_BAED8C: Ary1LdPr
  loc_BAED8D: MemStStrCopy
  loc_BAED91: LitI2_Byte 0
  loc_BAED93: CStrBool
  loc_BAED95: FStStrNoPop var_98
  loc_BAED98: ILdI2 arg_10
  loc_BAED9B: CI4UI1
  loc_BAED9C: ImpAdLdI4 MemVar_C0F100
  loc_BAED9F: Ary1LdPr
  loc_BAEDA0: MemStStrCopy
  loc_BAEDA4: FFree1Str var_98
  loc_BAEDA7: LitStr "4.0"
  loc_BAEDAA: ILdI2 arg_10
  loc_BAEDAD: CI4UI1
  loc_BAEDAE: ImpAdLdI4 MemVar_C0F100
  loc_BAEDB1: Ary1LdPr
  loc_BAEDB2: MemStStrCopy
  loc_BAEDB6: ExitProcCb
  loc_BAEDBA: ILdI2 arg_10
  loc_BAEDBD: CI4UI1
  loc_BAEDBE: ImpAdLdI4 MemVar_C0F100
  loc_BAEDC1: Ary1LdPr
  loc_BAEDC2: MemLdI2 global_4
  loc_BAEDC5: CR8I2
  loc_BAEDC6: LitStr "27"
  loc_BAEDC9: CR8Str
  loc_BAEDCB: EqR4
  loc_BAEDCC: BranchF loc_BAEE8B
  loc_BAEDCF: ILdI2 arg_10
  loc_BAEDD2: CI4UI1
  loc_BAEDD3: ImpAdLdI4 MemVar_C0F100
  loc_BAEDD6: Ary1LdPr
  loc_BAEDD7: MemLdFPR8 global_232
  loc_BAEDDA: LitI2_Byte &HC
  loc_BAEDDC: CR8I2
  loc_BAEDDD: EqR4
  loc_BAEDDE: ILdI2 arg_10
  loc_BAEDE1: CI4UI1
  loc_BAEDE2: ImpAdLdI4 MemVar_C0F100
  loc_BAEDE5: Ary1LdPr
  loc_BAEDE6: MemLdFPR8 global_240
  loc_BAEDE9: LitI2_Byte &HC
  loc_BAEDEB: CR8I2
  loc_BAEDEC: EqR4
  loc_BAEDED: AndI4
  loc_BAEDEE: ILdI2 arg_10
  loc_BAEDF1: CI4UI1
  loc_BAEDF2: ImpAdLdI4 MemVar_C0F100
  loc_BAEDF5: Ary1LdPr
  loc_BAEDF6: MemLdStr global_296
  loc_BAEDF9: LitStr "4.0"
  loc_BAEDFC: EqStr
  loc_BAEDFE: AndI4
  loc_BAEDFF: BranchF loc_BAEE8B
  loc_BAEE02: LitI2_Byte 0
  loc_BAEE04: FLdRfVar var_14C
  loc_BAEE07: ILdI2 arg_10
  loc_BAEE0A: ImpAdLdRf MemVar_C0F018
  loc_BAEE0D: NewIfNullPr frmMain
  loc_BAEE10: VCallAd Control_ID_
  loc_BAEE13: FStAdFunc var_E0
  loc_BAEE16: FLdPr var_E0
  loc_BAEE19: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAEE1E: FLdPr var_14C
  loc_BAEE21: Me.Enabled = from_stack_1b
  loc_BAEE26: FFreeAd var_E0 = ""
  loc_BAEE2D: LitI4 &H1B
  loc_BAEE32: LitStr "AGSplash0 exit"
  loc_BAEE35: FLdRfVar var_A8
  loc_BAEE38: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAEE3D: FFree1Var var_A8 = ""
  loc_BAEE40: LitStr "7.0"
  loc_BAEE43: ILdI2 arg_10
  loc_BAEE46: CI4UI1
  loc_BAEE47: ImpAdLdI4 MemVar_C0F100
  loc_BAEE4A: Ary1LdPr
  loc_BAEE4B: MemStStrCopy
  loc_BAEE4F: LitI2_Byte 0
  loc_BAEE51: ILdI2 arg_10
  loc_BAEE54: CI4UI1
  loc_BAEE55: ImpAdLdI4 MemVar_C0F100
  loc_BAEE58: Ary1LdPr
  loc_BAEE59: MemStI2 global_316
  loc_BAEE5C: LitStr "walk"
  loc_BAEE5F: ILdI2 arg_10
  loc_BAEE62: CI4UI1
  loc_BAEE63: ImpAdLdI4 MemVar_C0F100
  loc_BAEE66: Ary1LdPr
  loc_BAEE67: MemStStrCopy
  loc_BAEE6B: LitI2_Byte &HA
  loc_BAEE6D: CR8I2
  loc_BAEE6E: ILdI2 arg_10
  loc_BAEE71: CI4UI1
  loc_BAEE72: ImpAdLdI4 MemVar_C0F100
  loc_BAEE75: Ary1LdPr
  loc_BAEE76: MemStFPR8 global_272
  loc_BAEE79: LitI2_Byte &HB
  loc_BAEE7B: CR8I2
  loc_BAEE7C: ILdI2 arg_10
  loc_BAEE7F: CI4UI1
  loc_BAEE80: ImpAdLdI4 MemVar_C0F100
  loc_BAEE83: Ary1LdPr
  loc_BAEE84: MemStFPR8 global_284
  loc_BAEE87: ExitProcCb
  loc_BAEE8B: ILdI2 arg_10
  loc_BAEE8E: CI4UI1
  loc_BAEE8F: ImpAdLdI4 MemVar_C0F100
  loc_BAEE92: Ary1LdPr
  loc_BAEE93: MemLdI2 global_4
  loc_BAEE96: CR8I2
  loc_BAEE97: LitStr "25"
  loc_BAEE9A: CR8Str
  loc_BAEE9C: EqR4
  loc_BAEE9D: ILdI2 arg_10
  loc_BAEEA0: CI4UI1
  loc_BAEEA1: ImpAdLdI4 MemVar_C0F100
  loc_BAEEA4: Ary1LdPr
  loc_BAEEA5: MemLdFPR8 global_232
  loc_BAEEA8: LitI2_Byte &H11
  loc_BAEEAA: CR8I2
  loc_BAEEAB: EqR4
  loc_BAEEAC: AndI4
  loc_BAEEAD: ILdI2 arg_10
  loc_BAEEB0: CI4UI1
  loc_BAEEB1: ImpAdLdI4 MemVar_C0F100
  loc_BAEEB4: Ary1LdPr
  loc_BAEEB5: MemLdFPR8 global_240
  loc_BAEEB8: LitI2_Byte &HB
  loc_BAEEBA: CR8I2
  loc_BAEEBB: EqR4
  loc_BAEEBC: AndI4
  loc_BAEEBD: BranchF loc_BAEFF9
  loc_BAEEC0: FLdRfVar var_98
  loc_BAEEC3: ImpAdLdRf MemVar_C0F018
  loc_BAEEC6: NewIfNullPr frmMain
  loc_BAEEC9: VCallAd Control_ID_
  loc_BAEECC: FStAdFunc var_E0
  loc_BAEECF: FLdPr var_E0
  loc_BAEED2:  = frmMain.TextBox.Text
  loc_BAEED7: ILdRf var_98
  loc_BAEEDA: LitStr "0"
  loc_BAEEDD: EqStr
  loc_BAEEDF: FFree1Str var_98
  loc_BAEEE2: FFree1Ad var_E0
  loc_BAEEE5: BranchF loc_BAEFF9
  loc_BAEEE8: LitStr "1"
  loc_BAEEEB: ImpAdLdRf MemVar_C0F018
  loc_BAEEEE: NewIfNullPr frmMain
  loc_BAEEF1: VCallAd Control_ID_
  loc_BAEEF4: FStAdFunc var_E0
  loc_BAEEF7: FLdPr var_E0
  loc_BAEEFA: frmMain.TextBox.Text = from_stack_1
  loc_BAEEFF: FFree1Ad var_E0
  loc_BAEF02: LitVarI2 var_138, 1
  loc_BAEF07: FLdRfVar var_16C
  loc_BAEF0A: FLdRfVar var_170
  loc_BAEF0D: ImpAdLdRf MemVar_C0F018
  loc_BAEF10: NewIfNullPr frmMain
  loc_BAEF13: from_stack_1v = frmMain.SockIGet()
  loc_BAEF18: ILdRf var_170
  loc_BAEF1B: CVarI4
  loc_BAEF1F: ForVar var_190
  loc_BAEF25: FLdRfVar var_14C
  loc_BAEF28: FLdRfVar var_16C
  loc_BAEF2B: CI2Var
  loc_BAEF2C: ImpAdLdRf MemVar_C0F018
  loc_BAEF2F: NewIfNullPr frmMain
  loc_BAEF32: VCallAd Control_ID_
  loc_BAEF35: FStAdFunc var_E0
  loc_BAEF38: FLdPr var_E0
  loc_BAEF3B: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAEF40: FLdPr var_14C
  loc_BAEF43: LateIdLdVar var_A8 DispID_8 0
  loc_BAEF4A: CI2Var
  loc_BAEF4B: CI4UI1
  loc_BAEF4C: LitI4 7
  loc_BAEF51: EqI4
  loc_BAEF52: FLdRfVar var_16C
  loc_BAEF55: CI4Var
  loc_BAEF57: ImpAdLdI4 MemVar_C0F100
  loc_BAEF5A: Ary1LdPr
  loc_BAEF5B: MemLdI2 global_4
  loc_BAEF5E: ILdI2 arg_10
  loc_BAEF61: CI4UI1
  loc_BAEF62: ImpAdLdI4 MemVar_C0F100
  loc_BAEF65: Ary1LdPr
  loc_BAEF66: MemLdI2 global_4
  loc_BAEF69: EqI2
  loc_BAEF6A: AndI4
  loc_BAEF6B: FFreeAd var_E0 = ""
  loc_BAEF72: FFree1Var var_A8 = ""
  loc_BAEF75: BranchF loc_BAEFC6
  loc_BAEF78: LitVarStr var_F4, "AGcurtains1 close"
  loc_BAEF7D: LitI4 1
  loc_BAEF82: FLdRfVar var_A8
  loc_BAEF85: ImpAdCallFPR4  = Chr()
  loc_BAEF8A: FLdRfVar var_A8
  loc_BAEF8D: ConcatVar var_B8
  loc_BAEF91: PopAdLdVar
  loc_BAEF92: FLdRfVar var_14C
  loc_BAEF95: FLdRfVar var_16C
  loc_BAEF98: CI2Var
  loc_BAEF99: ImpAdLdRf MemVar_C0F018
  loc_BAEF9C: NewIfNullPr frmMain
  loc_BAEF9F: VCallAd Control_ID_
  loc_BAEFA2: FStAdFunc var_E0
  loc_BAEFA5: FLdPr var_E0
  loc_BAEFA8: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAEFAD: FLdPr var_14C
  loc_BAEFB0: LateIdCall
  loc_BAEFB8: FFreeAd var_E0 = ""
  loc_BAEFBF: FFreeVar var_A8 = ""
  loc_BAEFC6: FLdRfVar var_16C
  loc_BAEFC9: NextStepVar var_190
  loc_BAEFCF: LitI2_Byte &HFF
  loc_BAEFD1: ImpAdLdRf MemVar_C0F018
  loc_BAEFD4: NewIfNullPr frmMain
  loc_BAEFD7: VCallAd Control_ID_
  loc_BAEFDA: FStAdFunc var_E0
  loc_BAEFDD: FLdPr var_E0
  loc_BAEFE0: frmMain.Timer.Enabled = from_stack_1b
  loc_BAEFE5: FFree1Ad var_E0
  loc_BAEFE8: LitStr "A"
  loc_BAEFEB: ILdI2 arg_10
  loc_BAEFEE: FLdRfVar var_A8
  loc_BAEFF1: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAEFF6: FFree1Var var_A8 = ""
  loc_BAEFF9: FLdRfVar var_98
  loc_BAEFFC: ImpAdLdRf MemVar_C0F018
  loc_BAEFFF: NewIfNullPr frmMain
  loc_BAF002: VCallAd Control_ID_
  loc_BAF005: FStAdFunc var_E0
  loc_BAF008: FLdPr var_E0
  loc_BAF00B:  = frmMain.TextBox.Text
  loc_BAF010: ILdRf var_98
  loc_BAF013: LitStr "3"
  loc_BAF016: EqStr
  loc_BAF018: FFree1Str var_98
  loc_BAF01B: FFree1Ad var_E0
  loc_BAF01E: BranchF loc_BAF135
  loc_BAF021: LitVarI2 var_138, 1
  loc_BAF026: FLdRfVar var_16C
  loc_BAF029: FLdRfVar var_170
  loc_BAF02C: ImpAdLdRf MemVar_C0F018
  loc_BAF02F: NewIfNullPr frmMain
  loc_BAF032: from_stack_1v = frmMain.SockIGet()
  loc_BAF037: ILdRf var_170
  loc_BAF03A: CVarI4
  loc_BAF03E: ForVar var_1B0
  loc_BAF044: FLdRfVar var_14C
  loc_BAF047: FLdRfVar var_16C
  loc_BAF04A: CI2Var
  loc_BAF04B: ImpAdLdRf MemVar_C0F018
  loc_BAF04E: NewIfNullPr frmMain
  loc_BAF051: VCallAd Control_ID_
  loc_BAF054: FStAdFunc var_E0
  loc_BAF057: FLdPr var_E0
  loc_BAF05A: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAF05F: FLdPr var_14C
  loc_BAF062: LateIdLdVar var_A8 DispID_8 0
  loc_BAF069: CI2Var
  loc_BAF06A: CI4UI1
  loc_BAF06B: LitI4 7
  loc_BAF070: EqI4
  loc_BAF071: FLdRfVar var_16C
  loc_BAF074: CI4Var
  loc_BAF076: ImpAdLdI4 MemVar_C0F100
  loc_BAF079: Ary1LdPr
  loc_BAF07A: MemLdI2 global_4
  loc_BAF07D: ILdI2 arg_10
  loc_BAF080: CI4UI1
  loc_BAF081: ImpAdLdI4 MemVar_C0F100
  loc_BAF084: Ary1LdPr
  loc_BAF085: MemLdI2 global_4
  loc_BAF088: EqI2
  loc_BAF089: AndI4
  loc_BAF08A: FFreeAd var_E0 = ""
  loc_BAF091: FFree1Var var_A8 = ""
  loc_BAF094: BranchF loc_BAF0E5
  loc_BAF097: LitVarStr var_F4, "AGcurtains1 open"
  loc_BAF09C: LitI4 1
  loc_BAF0A1: FLdRfVar var_A8
  loc_BAF0A4: ImpAdCallFPR4  = Chr()
  loc_BAF0A9: FLdRfVar var_A8
  loc_BAF0AC: ConcatVar var_B8
  loc_BAF0B0: PopAdLdVar
  loc_BAF0B1: FLdRfVar var_14C
  loc_BAF0B4: FLdRfVar var_16C
  loc_BAF0B7: CI2Var
  loc_BAF0B8: ImpAdLdRf MemVar_C0F018
  loc_BAF0BB: NewIfNullPr frmMain
  loc_BAF0BE: VCallAd Control_ID_
  loc_BAF0C1: FStAdFunc var_E0
  loc_BAF0C4: FLdPr var_E0
  loc_BAF0C7: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAF0CC: FLdPr var_14C
  loc_BAF0CF: LateIdCall
  loc_BAF0D7: FFreeAd var_E0 = ""
  loc_BAF0DE: FFreeVar var_A8 = ""
  loc_BAF0E5: FLdRfVar var_16C
  loc_BAF0E8: NextStepVar var_1B0
  loc_BAF0EE: LitStr "0"
  loc_BAF0F1: ImpAdLdRf MemVar_C0F018
  loc_BAF0F4: NewIfNullPr frmMain
  loc_BAF0F7: VCallAd Control_ID_
  loc_BAF0FA: FStAdFunc var_E0
  loc_BAF0FD: FLdPr var_E0
  loc_BAF100: frmMain.TextBox.Text = from_stack_1
  loc_BAF105: FFree1Ad var_E0
  loc_BAF108: LitStr "Aa"
  loc_BAF10B: ILdI2 arg_10
  loc_BAF10E: FLdRfVar var_A8
  loc_BAF111: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAF116: FFree1Var var_A8 = ""
  loc_BAF119: LitI2_Byte &H13
  loc_BAF11B: CR8I2
  loc_BAF11C: ILdI2 arg_10
  loc_BAF11F: CI4UI1
  loc_BAF120: ImpAdLdI4 MemVar_C0F100
  loc_BAF123: Ary1LdPr
  loc_BAF124: MemStFPR8 global_272
  loc_BAF127: LitI2_Byte &HB
  loc_BAF129: CR8I2
  loc_BAF12A: ILdI2 arg_10
  loc_BAF12D: CI4UI1
  loc_BAF12E: ImpAdLdI4 MemVar_C0F100
  loc_BAF131: Ary1LdPr
  loc_BAF132: MemStFPR8 global_284
  loc_BAF135: ILdI2 arg_10
  loc_BAF138: CI4UI1
  loc_BAF139: ImpAdLdI4 MemVar_C0F100
  loc_BAF13C: Ary1LdPr
  loc_BAF13D: MemLdI2 global_4
  loc_BAF140: CR8I2
  loc_BAF141: LitStr "25"
  loc_BAF144: CR8Str
  loc_BAF146: EqR4
  loc_BAF147: ILdI2 arg_10
  loc_BAF14A: CI4UI1
  loc_BAF14B: ImpAdLdI4 MemVar_C0F100
  loc_BAF14E: Ary1LdPr
  loc_BAF14F: MemLdFPR8 global_232
  loc_BAF152: LitI2_Byte &H11
  loc_BAF154: CR8I2
  loc_BAF155: EqR4
  loc_BAF156: AndI4
  loc_BAF157: ILdI2 arg_10
  loc_BAF15A: CI4UI1
  loc_BAF15B: ImpAdLdI4 MemVar_C0F100
  loc_BAF15E: Ary1LdPr
  loc_BAF15F: MemLdFPR8 global_240
  loc_BAF162: LitI2_Byte 9
  loc_BAF164: CR8I2
  loc_BAF165: EqR4
  loc_BAF166: AndI4
  loc_BAF167: BranchF loc_BAF2A3
  loc_BAF16A: FLdRfVar var_98
  loc_BAF16D: ImpAdLdRf MemVar_C0F018
  loc_BAF170: NewIfNullPr frmMain
  loc_BAF173: VCallAd Control_ID_
  loc_BAF176: FStAdFunc var_E0
  loc_BAF179: FLdPr var_E0
  loc_BAF17C:  = frmMain.TextBox.Text
  loc_BAF181: ILdRf var_98
  loc_BAF184: LitStr "0"
  loc_BAF187: EqStr
  loc_BAF189: FFree1Str var_98
  loc_BAF18C: FFree1Ad var_E0
  loc_BAF18F: BranchF loc_BAF2A3
  loc_BAF192: LitStr "1"
  loc_BAF195: ImpAdLdRf MemVar_C0F018
  loc_BAF198: NewIfNullPr frmMain
  loc_BAF19B: VCallAd Control_ID_
  loc_BAF19E: FStAdFunc var_E0
  loc_BAF1A1: FLdPr var_E0
  loc_BAF1A4: frmMain.TextBox.Text = from_stack_1
  loc_BAF1A9: FFree1Ad var_E0
  loc_BAF1AC: LitVarI2 var_138, 1
  loc_BAF1B1: FLdRfVar var_16C
  loc_BAF1B4: FLdRfVar var_170
  loc_BAF1B7: ImpAdLdRf MemVar_C0F018
  loc_BAF1BA: NewIfNullPr frmMain
  loc_BAF1BD: from_stack_1v = frmMain.SockIGet()
  loc_BAF1C2: ILdRf var_170
  loc_BAF1C5: CVarI4
  loc_BAF1C9: ForVar var_1D0
  loc_BAF1CF: FLdRfVar var_14C
  loc_BAF1D2: FLdRfVar var_16C
  loc_BAF1D5: CI2Var
  loc_BAF1D6: ImpAdLdRf MemVar_C0F018
  loc_BAF1D9: NewIfNullPr frmMain
  loc_BAF1DC: VCallAd Control_ID_
  loc_BAF1DF: FStAdFunc var_E0
  loc_BAF1E2: FLdPr var_E0
  loc_BAF1E5: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAF1EA: FLdPr var_14C
  loc_BAF1ED: LateIdLdVar var_A8 DispID_8 0
  loc_BAF1F4: CI2Var
  loc_BAF1F5: CI4UI1
  loc_BAF1F6: LitI4 7
  loc_BAF1FB: EqI4
  loc_BAF1FC: FLdRfVar var_16C
  loc_BAF1FF: CI4Var
  loc_BAF201: ImpAdLdI4 MemVar_C0F100
  loc_BAF204: Ary1LdPr
  loc_BAF205: MemLdI2 global_4
  loc_BAF208: ILdI2 arg_10
  loc_BAF20B: CI4UI1
  loc_BAF20C: ImpAdLdI4 MemVar_C0F100
  loc_BAF20F: Ary1LdPr
  loc_BAF210: MemLdI2 global_4
  loc_BAF213: EqI2
  loc_BAF214: AndI4
  loc_BAF215: FFreeAd var_E0 = ""
  loc_BAF21C: FFree1Var var_A8 = ""
  loc_BAF21F: BranchF loc_BAF270
  loc_BAF222: LitVarStr var_F4, "AGcurtains2 close"
  loc_BAF227: LitI4 1
  loc_BAF22C: FLdRfVar var_A8
  loc_BAF22F: ImpAdCallFPR4  = Chr()
  loc_BAF234: FLdRfVar var_A8
  loc_BAF237: ConcatVar var_B8
  loc_BAF23B: PopAdLdVar
  loc_BAF23C: FLdRfVar var_14C
  loc_BAF23F: FLdRfVar var_16C
  loc_BAF242: CI2Var
  loc_BAF243: ImpAdLdRf MemVar_C0F018
  loc_BAF246: NewIfNullPr frmMain
  loc_BAF249: VCallAd Control_ID_
  loc_BAF24C: FStAdFunc var_E0
  loc_BAF24F: FLdPr var_E0
  loc_BAF252: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAF257: FLdPr var_14C
  loc_BAF25A: LateIdCall
  loc_BAF262: FFreeAd var_E0 = ""
  loc_BAF269: FFreeVar var_A8 = ""
  loc_BAF270: FLdRfVar var_16C
  loc_BAF273: NextStepVar var_1D0
  loc_BAF279: LitI2_Byte &HFF
  loc_BAF27B: ImpAdLdRf MemVar_C0F018
  loc_BAF27E: NewIfNullPr frmMain
  loc_BAF281: VCallAd Control_ID_
  loc_BAF284: FStAdFunc var_E0
  loc_BAF287: FLdPr var_E0
  loc_BAF28A: frmMain.Timer.Enabled = from_stack_1b
  loc_BAF28F: FFree1Ad var_E0
  loc_BAF292: LitStr "A"
  loc_BAF295: ILdI2 arg_10
  loc_BAF298: FLdRfVar var_A8
  loc_BAF29B: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAF2A0: FFree1Var var_A8 = ""
  loc_BAF2A3: FLdRfVar var_98
  loc_BAF2A6: ImpAdLdRf MemVar_C0F018
  loc_BAF2A9: NewIfNullPr frmMain
  loc_BAF2AC: VCallAd Control_ID_
  loc_BAF2AF: FStAdFunc var_E0
  loc_BAF2B2: FLdPr var_E0
  loc_BAF2B5:  = frmMain.TextBox.Text
  loc_BAF2BA: ILdRf var_98
  loc_BAF2BD: LitStr "3"
  loc_BAF2C0: EqStr
  loc_BAF2C2: FFree1Str var_98
  loc_BAF2C5: FFree1Ad var_E0
  loc_BAF2C8: BranchF loc_BAF3DF
  loc_BAF2CB: LitVarI2 var_138, 1
  loc_BAF2D0: FLdRfVar var_16C
  loc_BAF2D3: FLdRfVar var_170
  loc_BAF2D6: ImpAdLdRf MemVar_C0F018
  loc_BAF2D9: NewIfNullPr frmMain
  loc_BAF2DC: from_stack_1v = frmMain.SockIGet()
  loc_BAF2E1: ILdRf var_170
  loc_BAF2E4: CVarI4
  loc_BAF2E8: ForVar var_1F0
  loc_BAF2EE: FLdRfVar var_14C
  loc_BAF2F1: FLdRfVar var_16C
  loc_BAF2F4: CI2Var
  loc_BAF2F5: ImpAdLdRf MemVar_C0F018
  loc_BAF2F8: NewIfNullPr frmMain
  loc_BAF2FB: VCallAd Control_ID_
  loc_BAF2FE: FStAdFunc var_E0
  loc_BAF301: FLdPr var_E0
  loc_BAF304: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAF309: FLdPr var_14C
  loc_BAF30C: LateIdLdVar var_A8 DispID_8 0
  loc_BAF313: CI2Var
  loc_BAF314: CI4UI1
  loc_BAF315: LitI4 7
  loc_BAF31A: EqI4
  loc_BAF31B: FLdRfVar var_16C
  loc_BAF31E: CI4Var
  loc_BAF320: ImpAdLdI4 MemVar_C0F100
  loc_BAF323: Ary1LdPr
  loc_BAF324: MemLdI2 global_4
  loc_BAF327: ILdI2 arg_10
  loc_BAF32A: CI4UI1
  loc_BAF32B: ImpAdLdI4 MemVar_C0F100
  loc_BAF32E: Ary1LdPr
  loc_BAF32F: MemLdI2 global_4
  loc_BAF332: EqI2
  loc_BAF333: AndI4
  loc_BAF334: FFreeAd var_E0 = ""
  loc_BAF33B: FFree1Var var_A8 = ""
  loc_BAF33E: BranchF loc_BAF38F
  loc_BAF341: LitVarStr var_F4, "AGcurtains2 open"
  loc_BAF346: LitI4 1
  loc_BAF34B: FLdRfVar var_A8
  loc_BAF34E: ImpAdCallFPR4  = Chr()
  loc_BAF353: FLdRfVar var_A8
  loc_BAF356: ConcatVar var_B8
  loc_BAF35A: PopAdLdVar
  loc_BAF35B: FLdRfVar var_14C
  loc_BAF35E: FLdRfVar var_16C
  loc_BAF361: CI2Var
  loc_BAF362: ImpAdLdRf MemVar_C0F018
  loc_BAF365: NewIfNullPr frmMain
  loc_BAF368: VCallAd Control_ID_
  loc_BAF36B: FStAdFunc var_E0
  loc_BAF36E: FLdPr var_E0
  loc_BAF371: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAF376: FLdPr var_14C
  loc_BAF379: LateIdCall
  loc_BAF381: FFreeAd var_E0 = ""
  loc_BAF388: FFreeVar var_A8 = ""
  loc_BAF38F: FLdRfVar var_16C
  loc_BAF392: NextStepVar var_1F0
  loc_BAF398: LitStr "0"
  loc_BAF39B: ImpAdLdRf MemVar_C0F018
  loc_BAF39E: NewIfNullPr frmMain
  loc_BAF3A1: VCallAd Control_ID_
  loc_BAF3A4: FStAdFunc var_E0
  loc_BAF3A7: FLdPr var_E0
  loc_BAF3AA: frmMain.TextBox.Text = from_stack_1
  loc_BAF3AF: FFree1Ad var_E0
  loc_BAF3B2: LitStr "Aa"
  loc_BAF3B5: ILdI2 arg_10
  loc_BAF3B8: FLdRfVar var_A8
  loc_BAF3BB: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAF3C0: FFree1Var var_A8 = ""
  loc_BAF3C3: LitI2_Byte &H13
  loc_BAF3C5: CR8I2
  loc_BAF3C6: ILdI2 arg_10
  loc_BAF3C9: CI4UI1
  loc_BAF3CA: ImpAdLdI4 MemVar_C0F100
  loc_BAF3CD: Ary1LdPr
  loc_BAF3CE: MemStFPR8 global_272
  loc_BAF3D1: LitI2_Byte 9
  loc_BAF3D3: CR8I2
  loc_BAF3D4: ILdI2 arg_10
  loc_BAF3D7: CI4UI1
  loc_BAF3D8: ImpAdLdI4 MemVar_C0F100
  loc_BAF3DB: Ary1LdPr
  loc_BAF3DC: MemStFPR8 global_284
  loc_BAF3DF: ILdI2 arg_10
  loc_BAF3E2: CI4UI1
  loc_BAF3E3: ImpAdLdI4 MemVar_C0F100
  loc_BAF3E6: Ary1LdPr
  loc_BAF3E7: MemLdI2 global_4
  loc_BAF3EA: CR8I2
  loc_BAF3EB: LitStr "27"
  loc_BAF3EE: CR8Str
  loc_BAF3F0: EqR4
  loc_BAF3F1: ILdI2 arg_10
  loc_BAF3F4: CI4UI1
  loc_BAF3F5: ImpAdLdI4 MemVar_C0F100
  loc_BAF3F8: Ary1LdPr
  loc_BAF3F9: MemLdFPR8 global_232
  loc_BAF3FC: LitI2_Byte 8
  loc_BAF3FE: CR8I2
  loc_BAF3FF: EqR4
  loc_BAF400: AndI4
  loc_BAF401: ILdI2 arg_10
  loc_BAF404: CI4UI1
  loc_BAF405: ImpAdLdI4 MemVar_C0F100
  loc_BAF408: Ary1LdPr
  loc_BAF409: MemLdFPR8 global_240
  loc_BAF40C: LitI2_Byte 0
  loc_BAF40E: CR8I2
  loc_BAF40F: EqR4
  loc_BAF410: AndI4
  loc_BAF411: BranchF loc_BAF54D
  loc_BAF414: FLdRfVar var_98
  loc_BAF417: ImpAdLdRf MemVar_C0F018
  loc_BAF41A: NewIfNullPr frmMain
  loc_BAF41D: VCallAd Control_ID_
  loc_BAF420: FStAdFunc var_E0
  loc_BAF423: FLdPr var_E0
  loc_BAF426:  = frmMain.TextBox.Text
  loc_BAF42B: ILdRf var_98
  loc_BAF42E: LitStr "0"
  loc_BAF431: EqStr
  loc_BAF433: FFree1Str var_98
  loc_BAF436: FFree1Ad var_E0
  loc_BAF439: BranchF loc_BAF54D
  loc_BAF43C: LitStr "1"
  loc_BAF43F: ImpAdLdRf MemVar_C0F018
  loc_BAF442: NewIfNullPr frmMain
  loc_BAF445: VCallAd Control_ID_
  loc_BAF448: FStAdFunc var_E0
  loc_BAF44B: FLdPr var_E0
  loc_BAF44E: frmMain.TextBox.Text = from_stack_1
  loc_BAF453: FFree1Ad var_E0
  loc_BAF456: LitVarI2 var_138, 1
  loc_BAF45B: FLdRfVar var_16C
  loc_BAF45E: FLdRfVar var_170
  loc_BAF461: ImpAdLdRf MemVar_C0F018
  loc_BAF464: NewIfNullPr frmMain
  loc_BAF467: from_stack_1v = frmMain.SockIGet()
  loc_BAF46C: ILdRf var_170
  loc_BAF46F: CVarI4
  loc_BAF473: ForVar var_210
  loc_BAF479: FLdRfVar var_14C
  loc_BAF47C: FLdRfVar var_16C
  loc_BAF47F: CI2Var
  loc_BAF480: ImpAdLdRf MemVar_C0F018
  loc_BAF483: NewIfNullPr frmMain
  loc_BAF486: VCallAd Control_ID_
  loc_BAF489: FStAdFunc var_E0
  loc_BAF48C: FLdPr var_E0
  loc_BAF48F: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAF494: FLdPr var_14C
  loc_BAF497: LateIdLdVar var_A8 DispID_8 0
  loc_BAF49E: CI2Var
  loc_BAF49F: CI4UI1
  loc_BAF4A0: LitI4 7
  loc_BAF4A5: EqI4
  loc_BAF4A6: FLdRfVar var_16C
  loc_BAF4A9: CI4Var
  loc_BAF4AB: ImpAdLdI4 MemVar_C0F100
  loc_BAF4AE: Ary1LdPr
  loc_BAF4AF: MemLdI2 global_4
  loc_BAF4B2: ILdI2 arg_10
  loc_BAF4B5: CI4UI1
  loc_BAF4B6: ImpAdLdI4 MemVar_C0F100
  loc_BAF4B9: Ary1LdPr
  loc_BAF4BA: MemLdI2 global_4
  loc_BAF4BD: EqI2
  loc_BAF4BE: AndI4
  loc_BAF4BF: FFreeAd var_E0 = ""
  loc_BAF4C6: FFree1Var var_A8 = ""
  loc_BAF4C9: BranchF loc_BAF51A
  loc_BAF4CC: LitVarStr var_F4, "AGcurtains1 close"
  loc_BAF4D1: LitI4 1
  loc_BAF4D6: FLdRfVar var_A8
  loc_BAF4D9: ImpAdCallFPR4  = Chr()
  loc_BAF4DE: FLdRfVar var_A8
  loc_BAF4E1: ConcatVar var_B8
  loc_BAF4E5: PopAdLdVar
  loc_BAF4E6: FLdRfVar var_14C
  loc_BAF4E9: FLdRfVar var_16C
  loc_BAF4EC: CI2Var
  loc_BAF4ED: ImpAdLdRf MemVar_C0F018
  loc_BAF4F0: NewIfNullPr frmMain
  loc_BAF4F3: VCallAd Control_ID_
  loc_BAF4F6: FStAdFunc var_E0
  loc_BAF4F9: FLdPr var_E0
  loc_BAF4FC: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAF501: FLdPr var_14C
  loc_BAF504: LateIdCall
  loc_BAF50C: FFreeAd var_E0 = ""
  loc_BAF513: FFreeVar var_A8 = ""
  loc_BAF51A: FLdRfVar var_16C
  loc_BAF51D: NextStepVar var_210
  loc_BAF523: LitI2_Byte &HFF
  loc_BAF525: ImpAdLdRf MemVar_C0F018
  loc_BAF528: NewIfNullPr frmMain
  loc_BAF52B: VCallAd Control_ID_
  loc_BAF52E: FStAdFunc var_E0
  loc_BAF531: FLdPr var_E0
  loc_BAF534: frmMain.Timer.Enabled = from_stack_1b
  loc_BAF539: FFree1Ad var_E0
  loc_BAF53C: LitStr "A"
  loc_BAF53F: ILdI2 arg_10
  loc_BAF542: FLdRfVar var_A8
  loc_BAF545: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAF54A: FFree1Var var_A8 = ""
  loc_BAF54D: FLdRfVar var_98
  loc_BAF550: ImpAdLdRf MemVar_C0F018
  loc_BAF553: NewIfNullPr frmMain
  loc_BAF556: VCallAd Control_ID_
  loc_BAF559: FStAdFunc var_E0
  loc_BAF55C: FLdPr var_E0
  loc_BAF55F:  = frmMain.TextBox.Text
  loc_BAF564: ILdRf var_98
  loc_BAF567: LitStr "3"
  loc_BAF56A: EqStr
  loc_BAF56C: FFree1Str var_98
  loc_BAF56F: FFree1Ad var_E0
  loc_BAF572: BranchF loc_BAF689
  loc_BAF575: LitVarI2 var_138, 1
  loc_BAF57A: FLdRfVar var_16C
  loc_BAF57D: FLdRfVar var_170
  loc_BAF580: ImpAdLdRf MemVar_C0F018
  loc_BAF583: NewIfNullPr frmMain
  loc_BAF586: from_stack_1v = frmMain.SockIGet()
  loc_BAF58B: ILdRf var_170
  loc_BAF58E: CVarI4
  loc_BAF592: ForVar var_230
  loc_BAF598: FLdRfVar var_14C
  loc_BAF59B: FLdRfVar var_16C
  loc_BAF59E: CI2Var
  loc_BAF59F: ImpAdLdRf MemVar_C0F018
  loc_BAF5A2: NewIfNullPr frmMain
  loc_BAF5A5: VCallAd Control_ID_
  loc_BAF5A8: FStAdFunc var_E0
  loc_BAF5AB: FLdPr var_E0
  loc_BAF5AE: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAF5B3: FLdPr var_14C
  loc_BAF5B6: LateIdLdVar var_A8 DispID_8 0
  loc_BAF5BD: CI2Var
  loc_BAF5BE: CI4UI1
  loc_BAF5BF: LitI4 7
  loc_BAF5C4: EqI4
  loc_BAF5C5: FLdRfVar var_16C
  loc_BAF5C8: CI4Var
  loc_BAF5CA: ImpAdLdI4 MemVar_C0F100
  loc_BAF5CD: Ary1LdPr
  loc_BAF5CE: MemLdI2 global_4
  loc_BAF5D1: ILdI2 arg_10
  loc_BAF5D4: CI4UI1
  loc_BAF5D5: ImpAdLdI4 MemVar_C0F100
  loc_BAF5D8: Ary1LdPr
  loc_BAF5D9: MemLdI2 global_4
  loc_BAF5DC: EqI2
  loc_BAF5DD: AndI4
  loc_BAF5DE: FFreeAd var_E0 = ""
  loc_BAF5E5: FFree1Var var_A8 = ""
  loc_BAF5E8: BranchF loc_BAF639
  loc_BAF5EB: LitVarStr var_F4, "AGcurtains1 open"
  loc_BAF5F0: LitI4 1
  loc_BAF5F5: FLdRfVar var_A8
  loc_BAF5F8: ImpAdCallFPR4  = Chr()
  loc_BAF5FD: FLdRfVar var_A8
  loc_BAF600: ConcatVar var_B8
  loc_BAF604: PopAdLdVar
  loc_BAF605: FLdRfVar var_14C
  loc_BAF608: FLdRfVar var_16C
  loc_BAF60B: CI2Var
  loc_BAF60C: ImpAdLdRf MemVar_C0F018
  loc_BAF60F: NewIfNullPr frmMain
  loc_BAF612: VCallAd Control_ID_
  loc_BAF615: FStAdFunc var_E0
  loc_BAF618: FLdPr var_E0
  loc_BAF61B: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAF620: FLdPr var_14C
  loc_BAF623: LateIdCall
  loc_BAF62B: FFreeAd var_E0 = ""
  loc_BAF632: FFreeVar var_A8 = ""
  loc_BAF639: FLdRfVar var_16C
  loc_BAF63C: NextStepVar var_230
  loc_BAF642: LitStr "0"
  loc_BAF645: ImpAdLdRf MemVar_C0F018
  loc_BAF648: NewIfNullPr frmMain
  loc_BAF64B: VCallAd Control_ID_
  loc_BAF64E: FStAdFunc var_E0
  loc_BAF651: FLdPr var_E0
  loc_BAF654: frmMain.TextBox.Text = from_stack_1
  loc_BAF659: FFree1Ad var_E0
  loc_BAF65C: LitStr "Aa"
  loc_BAF65F: ILdI2 arg_10
  loc_BAF662: FLdRfVar var_A8
  loc_BAF665: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAF66A: FFree1Var var_A8 = ""
  loc_BAF66D: LitI2_Byte 9
  loc_BAF66F: CR8I2
  loc_BAF670: ILdI2 arg_10
  loc_BAF673: CI4UI1
  loc_BAF674: ImpAdLdI4 MemVar_C0F100
  loc_BAF677: Ary1LdPr
  loc_BAF678: MemStFPR8 global_272
  loc_BAF67B: LitI2_Byte 2
  loc_BAF67D: CR8I2
  loc_BAF67E: ILdI2 arg_10
  loc_BAF681: CI4UI1
  loc_BAF682: ImpAdLdI4 MemVar_C0F100
  loc_BAF685: Ary1LdPr
  loc_BAF686: MemStFPR8 global_284
  loc_BAF689: ILdI2 arg_10
  loc_BAF68C: CI4UI1
  loc_BAF68D: ImpAdLdI4 MemVar_C0F100
  loc_BAF690: Ary1LdPr
  loc_BAF691: MemLdI2 global_4
  loc_BAF694: CR8I2
  loc_BAF695: LitStr "27"
  loc_BAF698: CR8Str
  loc_BAF69A: EqR4
  loc_BAF69B: ILdI2 arg_10
  loc_BAF69E: CI4UI1
  loc_BAF69F: ImpAdLdI4 MemVar_C0F100
  loc_BAF6A2: Ary1LdPr
  loc_BAF6A3: MemLdFPR8 global_232
  loc_BAF6A6: LitI2_Byte 9
  loc_BAF6A8: CR8I2
  loc_BAF6A9: EqR4
  loc_BAF6AA: AndI4
  loc_BAF6AB: ILdI2 arg_10
  loc_BAF6AE: CI4UI1
  loc_BAF6AF: ImpAdLdI4 MemVar_C0F100
  loc_BAF6B2: Ary1LdPr
  loc_BAF6B3: MemLdFPR8 global_240
  loc_BAF6B6: LitI2_Byte 0
  loc_BAF6B8: CR8I2
  loc_BAF6B9: EqR4
  loc_BAF6BA: AndI4
  loc_BAF6BB: BranchF loc_BAF7F7
  loc_BAF6BE: FLdRfVar var_98
  loc_BAF6C1: ImpAdLdRf MemVar_C0F018
  loc_BAF6C4: NewIfNullPr frmMain
  loc_BAF6C7: VCallAd Control_ID_
  loc_BAF6CA: FStAdFunc var_E0
  loc_BAF6CD: FLdPr var_E0
  loc_BAF6D0:  = frmMain.TextBox.Text
  loc_BAF6D5: ILdRf var_98
  loc_BAF6D8: LitStr "0"
  loc_BAF6DB: EqStr
  loc_BAF6DD: FFree1Str var_98
  loc_BAF6E0: FFree1Ad var_E0
  loc_BAF6E3: BranchF loc_BAF7F7
  loc_BAF6E6: LitStr "1"
  loc_BAF6E9: ImpAdLdRf MemVar_C0F018
  loc_BAF6EC: NewIfNullPr frmMain
  loc_BAF6EF: VCallAd Control_ID_
  loc_BAF6F2: FStAdFunc var_E0
  loc_BAF6F5: FLdPr var_E0
  loc_BAF6F8: frmMain.TextBox.Text = from_stack_1
  loc_BAF6FD: FFree1Ad var_E0
  loc_BAF700: LitVarI2 var_138, 1
  loc_BAF705: FLdRfVar var_16C
  loc_BAF708: FLdRfVar var_170
  loc_BAF70B: ImpAdLdRf MemVar_C0F018
  loc_BAF70E: NewIfNullPr frmMain
  loc_BAF711: from_stack_1v = frmMain.SockIGet()
  loc_BAF716: ILdRf var_170
  loc_BAF719: CVarI4
  loc_BAF71D: ForVar var_250
  loc_BAF723: FLdRfVar var_14C
  loc_BAF726: FLdRfVar var_16C
  loc_BAF729: CI2Var
  loc_BAF72A: ImpAdLdRf MemVar_C0F018
  loc_BAF72D: NewIfNullPr frmMain
  loc_BAF730: VCallAd Control_ID_
  loc_BAF733: FStAdFunc var_E0
  loc_BAF736: FLdPr var_E0
  loc_BAF739: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAF73E: FLdPr var_14C
  loc_BAF741: LateIdLdVar var_A8 DispID_8 0
  loc_BAF748: CI2Var
  loc_BAF749: CI4UI1
  loc_BAF74A: LitI4 7
  loc_BAF74F: EqI4
  loc_BAF750: FLdRfVar var_16C
  loc_BAF753: CI4Var
  loc_BAF755: ImpAdLdI4 MemVar_C0F100
  loc_BAF758: Ary1LdPr
  loc_BAF759: MemLdI2 global_4
  loc_BAF75C: ILdI2 arg_10
  loc_BAF75F: CI4UI1
  loc_BAF760: ImpAdLdI4 MemVar_C0F100
  loc_BAF763: Ary1LdPr
  loc_BAF764: MemLdI2 global_4
  loc_BAF767: EqI2
  loc_BAF768: AndI4
  loc_BAF769: FFreeAd var_E0 = ""
  loc_BAF770: FFree1Var var_A8 = ""
  loc_BAF773: BranchF loc_BAF7C4
  loc_BAF776: LitVarStr var_F4, "AGcurtains2 close"
  loc_BAF77B: LitI4 1
  loc_BAF780: FLdRfVar var_A8
  loc_BAF783: ImpAdCallFPR4  = Chr()
  loc_BAF788: FLdRfVar var_A8
  loc_BAF78B: ConcatVar var_B8
  loc_BAF78F: PopAdLdVar
  loc_BAF790: FLdRfVar var_14C
  loc_BAF793: FLdRfVar var_16C
  loc_BAF796: CI2Var
  loc_BAF797: ImpAdLdRf MemVar_C0F018
  loc_BAF79A: NewIfNullPr frmMain
  loc_BAF79D: VCallAd Control_ID_
  loc_BAF7A0: FStAdFunc var_E0
  loc_BAF7A3: FLdPr var_E0
  loc_BAF7A6: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAF7AB: FLdPr var_14C
  loc_BAF7AE: LateIdCall
  loc_BAF7B6: FFreeAd var_E0 = ""
  loc_BAF7BD: FFreeVar var_A8 = ""
  loc_BAF7C4: FLdRfVar var_16C
  loc_BAF7C7: NextStepVar var_250
  loc_BAF7CD: LitI2_Byte &HFF
  loc_BAF7CF: ImpAdLdRf MemVar_C0F018
  loc_BAF7D2: NewIfNullPr frmMain
  loc_BAF7D5: VCallAd Control_ID_
  loc_BAF7D8: FStAdFunc var_E0
  loc_BAF7DB: FLdPr var_E0
  loc_BAF7DE: frmMain.Timer.Enabled = from_stack_1b
  loc_BAF7E3: FFree1Ad var_E0
  loc_BAF7E6: LitStr "A"
  loc_BAF7E9: ILdI2 arg_10
  loc_BAF7EC: FLdRfVar var_A8
  loc_BAF7EF: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAF7F4: FFree1Var var_A8 = ""
  loc_BAF7F7: FLdRfVar var_98
  loc_BAF7FA: ImpAdLdRf MemVar_C0F018
  loc_BAF7FD: NewIfNullPr frmMain
  loc_BAF800: VCallAd Control_ID_
  loc_BAF803: FStAdFunc var_E0
  loc_BAF806: FLdPr var_E0
  loc_BAF809:  = frmMain.TextBox.Text
  loc_BAF80E: ILdRf var_98
  loc_BAF811: LitStr "3"
  loc_BAF814: EqStr
  loc_BAF816: FFree1Str var_98
  loc_BAF819: FFree1Ad var_E0
  loc_BAF81C: BranchF loc_BAF933
  loc_BAF81F: LitVarI2 var_138, 1
  loc_BAF824: FLdRfVar var_16C
  loc_BAF827: FLdRfVar var_170
  loc_BAF82A: ImpAdLdRf MemVar_C0F018
  loc_BAF82D: NewIfNullPr frmMain
  loc_BAF830: from_stack_1v = frmMain.SockIGet()
  loc_BAF835: ILdRf var_170
  loc_BAF838: CVarI4
  loc_BAF83C: ForVar var_270
  loc_BAF842: FLdRfVar var_14C
  loc_BAF845: FLdRfVar var_16C
  loc_BAF848: CI2Var
  loc_BAF849: ImpAdLdRf MemVar_C0F018
  loc_BAF84C: NewIfNullPr frmMain
  loc_BAF84F: VCallAd Control_ID_
  loc_BAF852: FStAdFunc var_E0
  loc_BAF855: FLdPr var_E0
  loc_BAF858: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAF85D: FLdPr var_14C
  loc_BAF860: LateIdLdVar var_A8 DispID_8 0
  loc_BAF867: CI2Var
  loc_BAF868: CI4UI1
  loc_BAF869: LitI4 7
  loc_BAF86E: EqI4
  loc_BAF86F: FLdRfVar var_16C
  loc_BAF872: CI4Var
  loc_BAF874: ImpAdLdI4 MemVar_C0F100
  loc_BAF877: Ary1LdPr
  loc_BAF878: MemLdI2 global_4
  loc_BAF87B: ILdI2 arg_10
  loc_BAF87E: CI4UI1
  loc_BAF87F: ImpAdLdI4 MemVar_C0F100
  loc_BAF882: Ary1LdPr
  loc_BAF883: MemLdI2 global_4
  loc_BAF886: EqI2
  loc_BAF887: AndI4
  loc_BAF888: FFreeAd var_E0 = ""
  loc_BAF88F: FFree1Var var_A8 = ""
  loc_BAF892: BranchF loc_BAF8E3
  loc_BAF895: LitVarStr var_F4, "AGcurtains2 open"
  loc_BAF89A: LitI4 1
  loc_BAF89F: FLdRfVar var_A8
  loc_BAF8A2: ImpAdCallFPR4  = Chr()
  loc_BAF8A7: FLdRfVar var_A8
  loc_BAF8AA: ConcatVar var_B8
  loc_BAF8AE: PopAdLdVar
  loc_BAF8AF: FLdRfVar var_14C
  loc_BAF8B2: FLdRfVar var_16C
  loc_BAF8B5: CI2Var
  loc_BAF8B6: ImpAdLdRf MemVar_C0F018
  loc_BAF8B9: NewIfNullPr frmMain
  loc_BAF8BC: VCallAd Control_ID_
  loc_BAF8BF: FStAdFunc var_E0
  loc_BAF8C2: FLdPr var_E0
  loc_BAF8C5: Set from_stack_2 = frmMain(from_stack_1)
  loc_BAF8CA: FLdPr var_14C
  loc_BAF8CD: LateIdCall
  loc_BAF8D5: FFreeAd var_E0 = ""
  loc_BAF8DC: FFreeVar var_A8 = ""
  loc_BAF8E3: FLdRfVar var_16C
  loc_BAF8E6: NextStepVar var_270
  loc_BAF8EC: LitStr "0"
  loc_BAF8EF: ImpAdLdRf MemVar_C0F018
  loc_BAF8F2: NewIfNullPr frmMain
  loc_BAF8F5: VCallAd Control_ID_
  loc_BAF8F8: FStAdFunc var_E0
  loc_BAF8FB: FLdPr var_E0
  loc_BAF8FE: frmMain.TextBox.Text = from_stack_1
  loc_BAF903: FFree1Ad var_E0
  loc_BAF906: LitStr "Aa"
  loc_BAF909: ILdI2 arg_10
  loc_BAF90C: FLdRfVar var_A8
  loc_BAF90F: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAF914: FFree1Var var_A8 = ""
  loc_BAF917: LitI2_Byte &H13
  loc_BAF919: CR8I2
  loc_BAF91A: ILdI2 arg_10
  loc_BAF91D: CI4UI1
  loc_BAF91E: ImpAdLdI4 MemVar_C0F100
  loc_BAF921: Ary1LdPr
  loc_BAF922: MemStFPR8 global_272
  loc_BAF925: LitI2_Byte 9
  loc_BAF927: CR8I2
  loc_BAF928: ILdI2 arg_10
  loc_BAF92B: CI4UI1
  loc_BAF92C: ImpAdLdI4 MemVar_C0F100
  loc_BAF92F: Ary1LdPr
  loc_BAF930: MemStFPR8 global_284
  loc_BAF933: ILdI2 arg_10
  loc_BAF936: CI4UI1
  loc_BAF937: ImpAdLdI4 MemVar_C0F100
  loc_BAF93A: Ary1LdPr
  loc_BAF93B: MemLdI2 global_4
  loc_BAF93E: CR8I2
  loc_BAF93F: LitStr "25"
  loc_BAF942: CR8Str
  loc_BAF944: EqR4
  loc_BAF945: BranchF loc_BAFB43
  loc_BAF948: ILdI2 arg_10
  loc_BAF94B: CI4UI1
  loc_BAF94C: ImpAdLdI4 MemVar_C0F100
  loc_BAF94F: Ary1LdPr
  loc_BAF950: MemLdFPR8 global_232
  loc_BAF953: LitI2_Byte &H20
  loc_BAF955: CR8I2
  loc_BAF956: EqR4
  loc_BAF957: ILdI2 arg_10
  loc_BAF95A: CI4UI1
  loc_BAF95B: ImpAdLdI4 MemVar_C0F100
  loc_BAF95E: Ary1LdPr
  loc_BAF95F: MemLdFPR8 global_240
  loc_BAF962: LitI2_Byte &H10
  loc_BAF964: CR8I2
  loc_BAF965: EqR4
  loc_BAF966: AndI4
  loc_BAF967: ILdI2 arg_10
  loc_BAF96A: CI4UI1
  loc_BAF96B: ImpAdLdI4 MemVar_C0F100
  loc_BAF96E: Ary1LdPr
  loc_BAF96F: MemLdFPR8 global_232
  loc_BAF972: LitI2_Byte &H21
  loc_BAF974: CR8I2
  loc_BAF975: EqR4
  loc_BAF976: ILdI2 arg_10
  loc_BAF979: CI4UI1
  loc_BAF97A: ImpAdLdI4 MemVar_C0F100
  loc_BAF97D: Ary1LdPr
  loc_BAF97E: MemLdFPR8 global_240
  loc_BAF981: LitI2_Byte &H11
  loc_BAF983: CR8I2
  loc_BAF984: EqR4
  loc_BAF985: AndI4
  loc_BAF986: OrI4
  loc_BAF987: ILdI2 arg_10
  loc_BAF98A: CI4UI1
  loc_BAF98B: ImpAdLdI4 MemVar_C0F100
  loc_BAF98E: Ary1LdPr
  loc_BAF98F: MemLdFPR8 global_232
  loc_BAF992: LitI2_Byte &H22
  loc_BAF994: CR8I2
  loc_BAF995: EqR4
  loc_BAF996: ILdI2 arg_10
  loc_BAF999: CI4UI1
  loc_BAF99A: ImpAdLdI4 MemVar_C0F100
  loc_BAF99D: Ary1LdPr
  loc_BAF99E: MemLdFPR8 global_240
  loc_BAF9A1: LitI2_Byte &H12
  loc_BAF9A3: CR8I2
  loc_BAF9A4: EqR4
  loc_BAF9A5: AndI4
  loc_BAF9A6: OrI4
  loc_BAF9A7: ILdI2 arg_10
  loc_BAF9AA: CI4UI1
  loc_BAF9AB: ImpAdLdI4 MemVar_C0F100
  loc_BAF9AE: Ary1LdPr
  loc_BAF9AF: MemLdFPR8 global_232
  loc_BAF9B2: LitI2_Byte &H23
  loc_BAF9B4: CR8I2
  loc_BAF9B5: EqR4
  loc_BAF9B6: ILdI2 arg_10
  loc_BAF9B9: CI4UI1
  loc_BAF9BA: ImpAdLdI4 MemVar_C0F100
  loc_BAF9BD: Ary1LdPr
  loc_BAF9BE: MemLdFPR8 global_240
  loc_BAF9C1: LitI2_Byte &H13
  loc_BAF9C3: CR8I2
  loc_BAF9C4: EqR4
  loc_BAF9C5: AndI4
  loc_BAF9C6: OrI4
  loc_BAF9C7: ILdI2 arg_10
  loc_BAF9CA: CI4UI1
  loc_BAF9CB: ImpAdLdI4 MemVar_C0F100
  loc_BAF9CE: Ary1LdPr
  loc_BAF9CF: MemLdFPR8 global_232
  loc_BAF9D2: LitI2_Byte &H24
  loc_BAF9D4: CR8I2
  loc_BAF9D5: EqR4
  loc_BAF9D6: ILdI2 arg_10
  loc_BAF9D9: CI4UI1
  loc_BAF9DA: ImpAdLdI4 MemVar_C0F100
  loc_BAF9DD: Ary1LdPr
  loc_BAF9DE: MemLdFPR8 global_240
  loc_BAF9E1: LitI2_Byte &H14
  loc_BAF9E3: CR8I2
  loc_BAF9E4: EqR4
  loc_BAF9E5: AndI4
  loc_BAF9E6: OrI4
  loc_BAF9E7: ILdI2 arg_10
  loc_BAF9EA: CI4UI1
  loc_BAF9EB: ImpAdLdI4 MemVar_C0F100
  loc_BAF9EE: Ary1LdPr
  loc_BAF9EF: MemLdFPR8 global_232
  loc_BAF9F2: LitI2_Byte &H25
  loc_BAF9F4: CR8I2
  loc_BAF9F5: EqR4
  loc_BAF9F6: ILdI2 arg_10
  loc_BAF9F9: CI4UI1
  loc_BAF9FA: ImpAdLdI4 MemVar_C0F100
  loc_BAF9FD: Ary1LdPr
  loc_BAF9FE: MemLdFPR8 global_240
  loc_BAFA01: LitI2_Byte &H15
  loc_BAFA03: CR8I2
  loc_BAFA04: EqR4
  loc_BAFA05: AndI4
  loc_BAFA06: OrI4
  loc_BAFA07: ILdI2 arg_10
  loc_BAFA0A: CI4UI1
  loc_BAFA0B: ImpAdLdI4 MemVar_C0F100
  loc_BAFA0E: Ary1LdPr
  loc_BAFA0F: MemLdFPR8 global_232
  loc_BAFA12: LitI2_Byte &H26
  loc_BAFA14: CR8I2
  loc_BAFA15: EqR4
  loc_BAFA16: ILdI2 arg_10
  loc_BAFA19: CI4UI1
  loc_BAFA1A: ImpAdLdI4 MemVar_C0F100
  loc_BAFA1D: Ary1LdPr
  loc_BAFA1E: MemLdFPR8 global_240
  loc_BAFA21: LitI2_Byte &H16
  loc_BAFA23: CR8I2
  loc_BAFA24: EqR4
  loc_BAFA25: AndI4
  loc_BAFA26: OrI4
  loc_BAFA27: ILdI2 arg_10
  loc_BAFA2A: CI4UI1
  loc_BAFA2B: ImpAdLdI4 MemVar_C0F100
  loc_BAFA2E: Ary1LdPr
  loc_BAFA2F: MemLdStr global_328
  loc_BAFA32: LitStr "Swim"
  loc_BAFA35: EqStr
  loc_BAFA37: AndI4
  loc_BAFA38: ILdI2 arg_10
  loc_BAFA3B: CI4UI1
  loc_BAFA3C: ImpAdLdI4 MemVar_C0F100
  loc_BAFA3F: Ary1LdPr
  loc_BAFA40: MemLdI2 global_316
  loc_BAFA43: LitI2_Byte &HFF
  loc_BAFA45: EqI2
  loc_BAFA46: AndI4
  loc_BAFA47: BranchF loc_BAFB43
  loc_BAFA4A: LitStr "36"
  loc_BAFA4D: CI2Str
  loc_BAFA4F: ILdI2 arg_10
  loc_BAFA52: CI4UI1
  loc_BAFA53: ImpAdLdI4 MemVar_C0F100
  loc_BAFA56: Ary1LdPr
  loc_BAFA57: MemStI2 global_4
  loc_BAFA5A: LitStr "AEpool_b 15188"
  loc_BAFA5D: ILdI2 arg_10
  loc_BAFA60: FLdRfVar var_A8
  loc_BAFA63: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAFA68: FFree1Var var_A8 = ""
  loc_BAFA6B: LitI4 1
  loc_BAFA70: FLdRfVar var_A8
  loc_BAFA73: ImpAdCallFPR4  = Chr()
  loc_BAFA78: LitI4 &H19
  loc_BAFA7D: LitStr "@]"
  loc_BAFA80: ILdI2 arg_10
  loc_BAFA83: CI4UI1
  loc_BAFA84: ImpAdLdI4 MemVar_C0F100
  loc_BAFA87: Ary1LdPr
  loc_BAFA88: MemLdStr global_420
  loc_BAFA8B: CStrI4
  loc_BAFA8D: FStStrNoPop var_98
  loc_BAFA90: ConcatStr
  loc_BAFA91: CVarStr var_B8
  loc_BAFA94: FLdRfVar var_A8
  loc_BAFA97: ConcatVar var_C8
  loc_BAFA9B: CStrVarVal var_CC
  loc_BAFA9F: FLdRfVar var_DC
  loc_BAFAA2: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAFAA7: FFreeStr var_98 = ""
  loc_BAFAAE: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAFAB9: LitI2_Byte &HFF
  loc_BAFABB: ILdI2 arg_10
  loc_BAFABE: CI4UI1
  loc_BAFABF: ImpAdLdI4 MemVar_C0F100
  loc_BAFAC2: Ary1LdPr
  loc_BAFAC3: MemStI2 global_316
  loc_BAFAC6: LitStr "Swim"
  loc_BAFAC9: ILdI2 arg_10
  loc_BAFACC: CI4UI1
  loc_BAFACD: ImpAdLdI4 MemVar_C0F100
  loc_BAFAD0: Ary1LdPr
  loc_BAFAD1: MemStStrCopy
  loc_BAFAD5: LitI2_Byte &H11
  loc_BAFAD7: CR8I2
  loc_BAFAD8: ILdI2 arg_10
  loc_BAFADB: CI4UI1
  loc_BAFADC: ImpAdLdI4 MemVar_C0F100
  loc_BAFADF: Ary1LdPr
  loc_BAFAE0: MemStFPR8 global_232
  loc_BAFAE3: LitI2_Byte &H1D
  loc_BAFAE5: CR8I2
  loc_BAFAE6: ILdI2 arg_10
  loc_BAFAE9: CI4UI1
  loc_BAFAEA: ImpAdLdI4 MemVar_C0F100
  loc_BAFAED: Ary1LdPr
  loc_BAFAEE: MemStFPR8 global_240
  loc_BAFAF1: LitI2_Byte &H11
  loc_BAFAF3: CR8I2
  loc_BAFAF4: ILdI2 arg_10
  loc_BAFAF7: CI4UI1
  loc_BAFAF8: ImpAdLdI4 MemVar_C0F100
  loc_BAFAFB: Ary1LdPr
  loc_BAFAFC: MemStFPR8 global_272
  loc_BAFAFF: LitI2_Byte &H1D
  loc_BAFB01: CR8I2
  loc_BAFB02: ILdI2 arg_10
  loc_BAFB05: CI4UI1
  loc_BAFB06: ImpAdLdI4 MemVar_C0F100
  loc_BAFB09: Ary1LdPr
  loc_BAFB0A: MemStFPR8 global_284
  loc_BAFB0D: LitI2_Byte 0
  loc_BAFB0F: CStrUI1
  loc_BAFB11: FStStrNoPop var_98
  loc_BAFB14: ILdI2 arg_10
  loc_BAFB17: CI4UI1
  loc_BAFB18: ImpAdLdI4 MemVar_C0F100
  loc_BAFB1B: Ary1LdPr
  loc_BAFB1C: MemStStrCopy
  loc_BAFB20: FFree1Str var_98
  loc_BAFB23: LitStr "2,2"
  loc_BAFB26: ILdI2 arg_10
  loc_BAFB29: CI4UI1
  loc_BAFB2A: ImpAdLdI4 MemVar_C0F100
  loc_BAFB2D: Ary1LdPr
  loc_BAFB2E: MemStStrCopy
  loc_BAFB32: LitI2_Byte &HFF
  loc_BAFB34: ILdI2 arg_10
  loc_BAFB37: CI4UI1
  loc_BAFB38: ImpAdLdI4 MemVar_C0F100
  loc_BAFB3B: Ary1LdPr
  loc_BAFB3C: MemStI2 global_0
  loc_BAFB3F: ExitProcCb
  loc_BAFB43: ILdI2 arg_10
  loc_BAFB46: CI4UI1
  loc_BAFB47: ImpAdLdI4 MemVar_C0F100
  loc_BAFB4A: Ary1LdPr
  loc_BAFB4B: MemLdI2 global_4
  loc_BAFB4E: CR8I2
  loc_BAFB4F: LitStr "36"
  loc_BAFB52: CR8Str
  loc_BAFB54: EqR4
  loc_BAFB55: BranchF loc_BAFDF3
  loc_BAFB58: ILdI2 arg_10
  loc_BAFB5B: CI4UI1
  loc_BAFB5C: ImpAdLdI4 MemVar_C0F100
  loc_BAFB5F: Ary1LdPr
  loc_BAFB60: MemLdFPR8 global_232
  loc_BAFB63: LitI2_Byte &HD
  loc_BAFB65: CR8I2
  loc_BAFB66: EqR4
  loc_BAFB67: ILdI2 arg_10
  loc_BAFB6A: CI4UI1
  loc_BAFB6B: ImpAdLdI4 MemVar_C0F100
  loc_BAFB6E: Ary1LdPr
  loc_BAFB6F: MemLdFPR8 global_240
  loc_BAFB72: LitI2_Byte &H1A
  loc_BAFB74: CR8I2
  loc_BAFB75: EqR4
  loc_BAFB76: AndI4
  loc_BAFB77: ILdI2 arg_10
  loc_BAFB7A: CI4UI1
  loc_BAFB7B: ImpAdLdI4 MemVar_C0F100
  loc_BAFB7E: Ary1LdPr
  loc_BAFB7F: MemLdFPR8 global_232
  loc_BAFB82: LitI2_Byte &HE
  loc_BAFB84: CR8I2
  loc_BAFB85: EqR4
  loc_BAFB86: ILdI2 arg_10
  loc_BAFB89: CI4UI1
  loc_BAFB8A: ImpAdLdI4 MemVar_C0F100
  loc_BAFB8D: Ary1LdPr
  loc_BAFB8E: MemLdFPR8 global_240
  loc_BAFB91: LitI2_Byte &H1B
  loc_BAFB93: CR8I2
  loc_BAFB94: EqR4
  loc_BAFB95: AndI4
  loc_BAFB96: OrI4
  loc_BAFB97: ILdI2 arg_10
  loc_BAFB9A: CI4UI1
  loc_BAFB9B: ImpAdLdI4 MemVar_C0F100
  loc_BAFB9E: Ary1LdPr
  loc_BAFB9F: MemLdFPR8 global_232
  loc_BAFBA2: LitI2_Byte &HF
  loc_BAFBA4: CR8I2
  loc_BAFBA5: EqR4
  loc_BAFBA6: ILdI2 arg_10
  loc_BAFBA9: CI4UI1
  loc_BAFBAA: ImpAdLdI4 MemVar_C0F100
  loc_BAFBAD: Ary1LdPr
  loc_BAFBAE: MemLdFPR8 global_240
  loc_BAFBB1: LitI2_Byte &H1C
  loc_BAFBB3: CR8I2
  loc_BAFBB4: EqR4
  loc_BAFBB5: AndI4
  loc_BAFBB6: OrI4
  loc_BAFBB7: ILdI2 arg_10
  loc_BAFBBA: CI4UI1
  loc_BAFBBB: ImpAdLdI4 MemVar_C0F100
  loc_BAFBBE: Ary1LdPr
  loc_BAFBBF: MemLdFPR8 global_232
  loc_BAFBC2: LitI2_Byte &H10
  loc_BAFBC4: CR8I2
  loc_BAFBC5: EqR4
  loc_BAFBC6: ILdI2 arg_10
  loc_BAFBC9: CI4UI1
  loc_BAFBCA: ImpAdLdI4 MemVar_C0F100
  loc_BAFBCD: Ary1LdPr
  loc_BAFBCE: MemLdFPR8 global_240
  loc_BAFBD1: LitI2_Byte &H1D
  loc_BAFBD3: CR8I2
  loc_BAFBD4: EqR4
  loc_BAFBD5: AndI4
  loc_BAFBD6: OrI4
  loc_BAFBD7: ILdI2 arg_10
  loc_BAFBDA: CI4UI1
  loc_BAFBDB: ImpAdLdI4 MemVar_C0F100
  loc_BAFBDE: Ary1LdPr
  loc_BAFBDF: MemLdFPR8 global_232
  loc_BAFBE2: LitI2_Byte &H11
  loc_BAFBE4: CR8I2
  loc_BAFBE5: EqR4
  loc_BAFBE6: ILdI2 arg_10
  loc_BAFBE9: CI4UI1
  loc_BAFBEA: ImpAdLdI4 MemVar_C0F100
  loc_BAFBED: Ary1LdPr
  loc_BAFBEE: MemLdFPR8 global_240
  loc_BAFBF1: LitI2_Byte &H1E
  loc_BAFBF3: CR8I2
  loc_BAFBF4: EqR4
  loc_BAFBF5: AndI4
  loc_BAFBF6: OrI4
  loc_BAFBF7: ILdI2 arg_10
  loc_BAFBFA: CI4UI1
  loc_BAFBFB: ImpAdLdI4 MemVar_C0F100
  loc_BAFBFE: Ary1LdPr
  loc_BAFBFF: MemLdFPR8 global_232
  loc_BAFC02: LitI2_Byte &H12
  loc_BAFC04: CR8I2
  loc_BAFC05: EqR4
  loc_BAFC06: ILdI2 arg_10
  loc_BAFC09: CI4UI1
  loc_BAFC0A: ImpAdLdI4 MemVar_C0F100
  loc_BAFC0D: Ary1LdPr
  loc_BAFC0E: MemLdFPR8 global_240
  loc_BAFC11: LitI2_Byte &H1F
  loc_BAFC13: CR8I2
  loc_BAFC14: EqR4
  loc_BAFC15: AndI4
  loc_BAFC16: OrI4
  loc_BAFC17: ILdI2 arg_10
  loc_BAFC1A: CI4UI1
  loc_BAFC1B: ImpAdLdI4 MemVar_C0F100
  loc_BAFC1E: Ary1LdPr
  loc_BAFC1F: MemLdFPR8 global_232
  loc_BAFC22: LitI2_Byte &H13
  loc_BAFC24: CR8I2
  loc_BAFC25: EqR4
  loc_BAFC26: ILdI2 arg_10
  loc_BAFC29: CI4UI1
  loc_BAFC2A: ImpAdLdI4 MemVar_C0F100
  loc_BAFC2D: Ary1LdPr
  loc_BAFC2E: MemLdFPR8 global_240
  loc_BAFC31: LitI2_Byte &H20
  loc_BAFC33: CR8I2
  loc_BAFC34: EqR4
  loc_BAFC35: AndI4
  loc_BAFC36: OrI4
  loc_BAFC37: ILdI2 arg_10
  loc_BAFC3A: CI4UI1
  loc_BAFC3B: ImpAdLdI4 MemVar_C0F100
  loc_BAFC3E: Ary1LdPr
  loc_BAFC3F: MemLdFPR8 global_232
  loc_BAFC42: LitI2_Byte &H14
  loc_BAFC44: CR8I2
  loc_BAFC45: EqR4
  loc_BAFC46: ILdI2 arg_10
  loc_BAFC49: CI4UI1
  loc_BAFC4A: ImpAdLdI4 MemVar_C0F100
  loc_BAFC4D: Ary1LdPr
  loc_BAFC4E: MemLdFPR8 global_240
  loc_BAFC51: LitI2_Byte &H21
  loc_BAFC53: CR8I2
  loc_BAFC54: EqR4
  loc_BAFC55: AndI4
  loc_BAFC56: OrI4
  loc_BAFC57: ILdI2 arg_10
  loc_BAFC5A: CI4UI1
  loc_BAFC5B: ImpAdLdI4 MemVar_C0F100
  loc_BAFC5E: Ary1LdPr
  loc_BAFC5F: MemLdFPR8 global_232
  loc_BAFC62: LitI2_Byte &H15
  loc_BAFC64: CR8I2
  loc_BAFC65: EqR4
  loc_BAFC66: ILdI2 arg_10
  loc_BAFC69: CI4UI1
  loc_BAFC6A: ImpAdLdI4 MemVar_C0F100
  loc_BAFC6D: Ary1LdPr
  loc_BAFC6E: MemLdFPR8 global_240
  loc_BAFC71: LitI2_Byte &H22
  loc_BAFC73: CR8I2
  loc_BAFC74: EqR4
  loc_BAFC75: AndI4
  loc_BAFC76: OrI4
  loc_BAFC77: ILdI2 arg_10
  loc_BAFC7A: CI4UI1
  loc_BAFC7B: ImpAdLdI4 MemVar_C0F100
  loc_BAFC7E: Ary1LdPr
  loc_BAFC7F: MemLdFPR8 global_232
  loc_BAFC82: LitI2_Byte &H16
  loc_BAFC84: CR8I2
  loc_BAFC85: EqR4
  loc_BAFC86: ILdI2 arg_10
  loc_BAFC89: CI4UI1
  loc_BAFC8A: ImpAdLdI4 MemVar_C0F100
  loc_BAFC8D: Ary1LdPr
  loc_BAFC8E: MemLdFPR8 global_240
  loc_BAFC91: LitI2_Byte &H23
  loc_BAFC93: CR8I2
  loc_BAFC94: EqR4
  loc_BAFC95: AndI4
  loc_BAFC96: OrI4
  loc_BAFC97: ILdI2 arg_10
  loc_BAFC9A: CI4UI1
  loc_BAFC9B: ImpAdLdI4 MemVar_C0F100
  loc_BAFC9E: Ary1LdPr
  loc_BAFC9F: MemLdFPR8 global_232
  loc_BAFCA2: LitI2_Byte &H17
  loc_BAFCA4: CR8I2
  loc_BAFCA5: EqR4
  loc_BAFCA6: ILdI2 arg_10
  loc_BAFCA9: CI4UI1
  loc_BAFCAA: ImpAdLdI4 MemVar_C0F100
  loc_BAFCAD: Ary1LdPr
  loc_BAFCAE: MemLdFPR8 global_240
  loc_BAFCB1: LitI2_Byte &H24
  loc_BAFCB3: CR8I2
  loc_BAFCB4: EqR4
  loc_BAFCB5: AndI4
  loc_BAFCB6: OrI4
  loc_BAFCB7: ILdI2 arg_10
  loc_BAFCBA: CI4UI1
  loc_BAFCBB: ImpAdLdI4 MemVar_C0F100
  loc_BAFCBE: Ary1LdPr
  loc_BAFCBF: MemLdFPR8 global_232
  loc_BAFCC2: LitI2_Byte &H18
  loc_BAFCC4: CR8I2
  loc_BAFCC5: EqR4
  loc_BAFCC6: ILdI2 arg_10
  loc_BAFCC9: CI4UI1
  loc_BAFCCA: ImpAdLdI4 MemVar_C0F100
  loc_BAFCCD: Ary1LdPr
  loc_BAFCCE: MemLdFPR8 global_240
  loc_BAFCD1: LitI2_Byte &H25
  loc_BAFCD3: CR8I2
  loc_BAFCD4: EqR4
  loc_BAFCD5: AndI4
  loc_BAFCD6: OrI4
  loc_BAFCD7: ILdI2 arg_10
  loc_BAFCDA: CI4UI1
  loc_BAFCDB: ImpAdLdI4 MemVar_C0F100
  loc_BAFCDE: Ary1LdPr
  loc_BAFCDF: MemLdStr global_328
  loc_BAFCE2: LitStr "Swim"
  loc_BAFCE5: EqStr
  loc_BAFCE7: AndI4
  loc_BAFCE8: ILdI2 arg_10
  loc_BAFCEB: CI4UI1
  loc_BAFCEC: ImpAdLdI4 MemVar_C0F100
  loc_BAFCEF: Ary1LdPr
  loc_BAFCF0: MemLdI2 global_316
  loc_BAFCF3: LitI2_Byte &HFF
  loc_BAFCF5: EqI2
  loc_BAFCF6: AndI4
  loc_BAFCF7: BranchF loc_BAFDF3
  loc_BAFCFA: LitStr "25"
  loc_BAFCFD: CI2Str
  loc_BAFCFF: ILdI2 arg_10
  loc_BAFD02: CI4UI1
  loc_BAFD03: ImpAdLdI4 MemVar_C0F100
  loc_BAFD06: Ary1LdPr
  loc_BAFD07: MemStI2 global_4
  loc_BAFD0A: LitStr "AEpool_a 15188"
  loc_BAFD0D: ILdI2 arg_10
  loc_BAFD10: FLdRfVar var_A8
  loc_BAFD13: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BAFD18: FFree1Var var_A8 = ""
  loc_BAFD1B: LitI4 1
  loc_BAFD20: FLdRfVar var_A8
  loc_BAFD23: ImpAdCallFPR4  = Chr()
  loc_BAFD28: LitI4 &H24
  loc_BAFD2D: LitStr "@]"
  loc_BAFD30: ILdI2 arg_10
  loc_BAFD33: CI4UI1
  loc_BAFD34: ImpAdLdI4 MemVar_C0F100
  loc_BAFD37: Ary1LdPr
  loc_BAFD38: MemLdStr global_420
  loc_BAFD3B: CStrI4
  loc_BAFD3D: FStStrNoPop var_98
  loc_BAFD40: ConcatStr
  loc_BAFD41: CVarStr var_B8
  loc_BAFD44: FLdRfVar var_A8
  loc_BAFD47: ConcatVar var_C8
  loc_BAFD4B: CStrVarVal var_CC
  loc_BAFD4F: FLdRfVar var_DC
  loc_BAFD52: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BAFD57: FFreeStr var_98 = ""
  loc_BAFD5E: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAFD69: LitI2_Byte &HFF
  loc_BAFD6B: ILdI2 arg_10
  loc_BAFD6E: CI4UI1
  loc_BAFD6F: ImpAdLdI4 MemVar_C0F100
  loc_BAFD72: Ary1LdPr
  loc_BAFD73: MemStI2 global_316
  loc_BAFD76: LitStr "Swim"
  loc_BAFD79: ILdI2 arg_10
  loc_BAFD7C: CI4UI1
  loc_BAFD7D: ImpAdLdI4 MemVar_C0F100
  loc_BAFD80: Ary1LdPr
  loc_BAFD81: MemStStrCopy
  loc_BAFD85: LitI2_Byte &H20
  loc_BAFD87: CR8I2
  loc_BAFD88: ILdI2 arg_10
  loc_BAFD8B: CI4UI1
  loc_BAFD8C: ImpAdLdI4 MemVar_C0F100
  loc_BAFD8F: Ary1LdPr
  loc_BAFD90: MemStFPR8 global_232
  loc_BAFD93: LitI2_Byte &H11
  loc_BAFD95: CR8I2
  loc_BAFD96: ILdI2 arg_10
  loc_BAFD99: CI4UI1
  loc_BAFD9A: ImpAdLdI4 MemVar_C0F100
  loc_BAFD9D: Ary1LdPr
  loc_BAFD9E: MemStFPR8 global_240
  loc_BAFDA1: LitI2_Byte &H20
  loc_BAFDA3: CR8I2
  loc_BAFDA4: ILdI2 arg_10
  loc_BAFDA7: CI4UI1
  loc_BAFDA8: ImpAdLdI4 MemVar_C0F100
  loc_BAFDAB: Ary1LdPr
  loc_BAFDAC: MemStFPR8 global_272
  loc_BAFDAF: LitI2_Byte &H11
  loc_BAFDB1: CR8I2
  loc_BAFDB2: ILdI2 arg_10
  loc_BAFDB5: CI4UI1
  loc_BAFDB6: ImpAdLdI4 MemVar_C0F100
  loc_BAFDB9: Ary1LdPr
  loc_BAFDBA: MemStFPR8 global_284
  loc_BAFDBD: LitI2_Byte 1
  loc_BAFDBF: CStrUI1
  loc_BAFDC1: FStStrNoPop var_98
  loc_BAFDC4: ILdI2 arg_10
  loc_BAFDC7: CI4UI1
  loc_BAFDC8: ImpAdLdI4 MemVar_C0F100
  loc_BAFDCB: Ary1LdPr
  loc_BAFDCC: MemStStrCopy
  loc_BAFDD0: FFree1Str var_98
  loc_BAFDD3: LitStr "4,4"
  loc_BAFDD6: ILdI2 arg_10
  loc_BAFDD9: CI4UI1
  loc_BAFDDA: ImpAdLdI4 MemVar_C0F100
  loc_BAFDDD: Ary1LdPr
  loc_BAFDDE: MemStStrCopy
  loc_BAFDE2: LitI2_Byte &HFF
  loc_BAFDE4: ILdI2 arg_10
  loc_BAFDE7: CI4UI1
  loc_BAFDE8: ImpAdLdI4 MemVar_C0F100
  loc_BAFDEB: Ary1LdPr
  loc_BAFDEC: MemStI2 global_0
  loc_BAFDEF: ExitProcCb
  loc_BAFDF3: ILdI2 arg_10
  loc_BAFDF6: CI4UI1
  loc_BAFDF7: ImpAdLdI4 MemVar_C0F100
  loc_BAFDFA: Ary1LdPr
  loc_BAFDFB: MemLdI2 global_4
  loc_BAFDFE: CR8I2
  loc_BAFDFF: LitStr "36"
  loc_BAFE02: CR8Str
  loc_BAFE04: EqR4
  loc_BAFE05: ILdI2 arg_10
  loc_BAFE08: CI4UI1
  loc_BAFE09: ImpAdLdI4 MemVar_C0F100
  loc_BAFE0C: Ary1LdPr
  loc_BAFE0D: MemLdFPR8 global_232
  loc_BAFE10: LitI2_Byte &H1A
  loc_BAFE12: CR8I2
  loc_BAFE13: EqR4
  loc_BAFE14: AndI4
  loc_BAFE15: ILdI2 arg_10
  loc_BAFE18: CI4UI1
  loc_BAFE19: ImpAdLdI4 MemVar_C0F100
  loc_BAFE1C: Ary1LdPr
  loc_BAFE1D: MemLdFPR8 global_240
  loc_BAFE20: LitI2_Byte 4
  loc_BAFE22: CR8I2
  loc_BAFE23: EqR4
  loc_BAFE24: AndI4
  loc_BAFE25: BranchF loc_BB01F2
  loc_BAFE28: ILdI2 arg_10
  loc_BAFE2B: CI4UI1
  loc_BAFE2C: ImpAdLdI4 MemVar_C0F100
  loc_BAFE2F: AryLock
  loc_BAFE32: Ary1LdPr
  loc_BAFE33: MemLdRfVar from_stack_1.global_204
  loc_BAFE36: CVarRef
  loc_BAFE3B: FLdRfVar var_A8
  loc_BAFE3E: ImpAdCallFPR4  = LCase()
  loc_BAFE43: AryUnlock
  loc_BAFE46: FLdRfVar var_CC
  loc_BAFE49: FLdRfVar var_E0
  loc_BAFE4C: LitI4 0
  loc_BAFE51: LitI2_Byte 0
  loc_BAFE53: LitI4 1
  loc_BAFE58: ImpAdLdI4 MemVar_C0F044
  loc_BAFE5B: LitStr "habbos\"
  loc_BAFE5E: ConcatStr
  loc_BAFE5F: CVarStr var_B8
  loc_BAFE62: FLdRfVar var_A8
  loc_BAFE65: ConcatVar var_C8
  loc_BAFE69: LitVarStr var_108, "\tickets.txt"
  loc_BAFE6E: ConcatVar var_DC
  loc_BAFE72: CStrVarVal var_98
  loc_BAFE76: ImpAdLdRf MemVar_C0F040
  loc_BAFE79: NewIfNullPr IFileSystem3
  loc_BAFE7C: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_BAFE81: FLdPr var_E0
  loc_BAFE84:  = Me.ReadAll
  loc_BAFE89: FLdZeroAd var_CC
  loc_BAFE8C: CVarStr var_128
  loc_BAFE8F: FStVar var_280
  loc_BAFE93: FFree1Str var_98
  loc_BAFE96: FFree1Ad var_E0
  loc_BAFE99: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAFEA4: FLdRfVar var_280
  loc_BAFEA7: LitVarI2 var_F4, 1
  loc_BAFEAC: SubVar var_A8
  loc_BAFEB0: FStVar var_290
  loc_BAFEB4: FLdRfVar var_E2
  loc_BAFEB7: ImpAdLdRf MemVar_C0F018
  loc_BAFEBA: NewIfNullPr frmMain
  loc_BAFEBD: VCallAd Control_ID_
  loc_BAFEC0: FStAdFunc var_E0
  loc_BAFEC3: FLdPr var_E0
  loc_BAFEC6:  = frmMain.CheckBox.Value
  loc_BAFECB: FLdI2 var_E2
  loc_BAFECE: CR8I2
  loc_BAFECF: LitStr "1"
  loc_BAFED2: CR8Str
  loc_BAFED4: EqR4
  loc_BAFED5: FLdRfVar var_98
  loc_BAFED8: ImpAdLdRf MemVar_C0F018
  loc_BAFEDB: NewIfNullPr frmMain
  loc_BAFEDE: VCallAd Control_ID_
  loc_BAFEE1: FStAdFunc var_14C
  loc_BAFEE4: FLdPr var_14C
  loc_BAFEE7:  = frmMain.TextBox.Text
  loc_BAFEEC: ILdRf var_98
  loc_BAFEEF: LitStr "0"
  loc_BAFEF2: EqStr
  loc_BAFEF4: AndI4
  loc_BAFEF5: ILdI2 arg_10
  loc_BAFEF8: CI4UI1
  loc_BAFEF9: ImpAdLdI4 MemVar_C0F100
  loc_BAFEFC: Ary1LdPr
  loc_BAFEFD: MemLdStr global_348
  loc_BAFF00: LitStr "."
  loc_BAFF03: EqStr
  loc_BAFF05: LitI2_Byte 0
  loc_BAFF07: EqI2
  loc_BAFF08: AndI4
  loc_BAFF09: FLdRfVar var_CC
  loc_BAFF0C: ImpAdLdRf MemVar_C0F018
  loc_BAFF0F: NewIfNullPr frmMain
  loc_BAFF12: VCallAd Control_ID_
  loc_BAFF15: FStAdFunc var_294
  loc_BAFF18: FLdPr var_294
  loc_BAFF1B:  = frmMain.TextBox.Text
  loc_BAFF20: ILdRf var_CC
  loc_BAFF23: LitStr "1"
  loc_BAFF26: EqStr
  loc_BAFF28: AndI4
  loc_BAFF29: ILdI2 arg_10
  loc_BAFF2C: CI4UI1
  loc_BAFF2D: ImpAdLdI4 MemVar_C0F100
  loc_BAFF30: Ary1LdPr
  loc_BAFF31: MemLdI2 global_344
  loc_BAFF34: LitI2_Byte 0
  loc_BAFF36: EqI2
  loc_BAFF37: AndI4
  loc_BAFF38: CVarBoolI2 var_138
  loc_BAFF3C: FLdRfVar var_280
  loc_BAFF3F: LitVarI2 var_F4, 0
  loc_BAFF44: HardType
  loc_BAFF45: EqVar var_A8
  loc_BAFF49: LitVar_FALSE
  loc_BAFF4D: HardType
  loc_BAFF4E: EqVar var_B8
  loc_BAFF52: AndVar var_C8
  loc_BAFF56: CBoolVarNull
  loc_BAFF58: FFreeStr var_98 = ""
  loc_BAFF5F: FFreeAd var_E0 = "": var_14C = ""
  loc_BAFF68: FFree1Var var_138 = ""
  loc_BAFF6B: BranchF loc_BB01A7
  loc_BAFF6E: ILdI2 arg_10
  loc_BAFF71: CI4UI1
  loc_BAFF72: ImpAdLdI4 MemVar_C0F100
  loc_BAFF75: AryLock
  loc_BAFF78: Ary1LdPr
  loc_BAFF79: MemLdRfVar from_stack_1.global_204
  loc_BAFF7C: CVarRef
  loc_BAFF81: FLdRfVar var_A8
  loc_BAFF84: ImpAdCallFPR4  = LCase()
  loc_BAFF89: AryUnlock
  loc_BAFF8C: FLdRfVar var_290
  loc_BAFF8F: CStrVarVal var_CC
  loc_BAFF93: FLdRfVar var_E0
  loc_BAFF96: LitI4 0
  loc_BAFF9B: LitI2_Byte 0
  loc_BAFF9D: LitI4 2
  loc_BAFFA2: ImpAdLdI4 MemVar_C0F044
  loc_BAFFA5: LitStr "habbos\"
  loc_BAFFA8: ConcatStr
  loc_BAFFA9: CVarStr var_B8
  loc_BAFFAC: FLdRfVar var_A8
  loc_BAFFAF: ConcatVar var_C8
  loc_BAFFB3: LitVarStr var_108, "\tickets.txt"
  loc_BAFFB8: ConcatVar var_DC
  loc_BAFFBC: CStrVarVal var_98
  loc_BAFFC0: ImpAdLdRf MemVar_C0F040
  loc_BAFFC3: NewIfNullPr IFileSystem3
  loc_BAFFC6: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_BAFFCB: FLdPr var_E0
  loc_BAFFCE: from_stack_2 = Me.Write(from_stack_1v)
  loc_BAFFD3: FFreeStr var_98 = ""
  loc_BAFFDA: FFree1Ad var_E0
  loc_BAFFDD: FFreeVar var_B8 = "": var_A8 = "": var_C8 = ""
  loc_BAFFE8: LitVarStr var_F4, "A|"
  loc_BAFFED: FLdRfVar var_290
  loc_BAFFF0: ConcatVar var_A8
  loc_BAFFF4: LitI4 1
  loc_BAFFF9: FLdRfVar var_B8
  loc_BAFFFC: ImpAdCallFPR4  = Chr()
  loc_BB0001: FLdRfVar var_B8
  loc_BB0004: ConcatVar var_C8
  loc_BB0008: CStrVarVal var_98
  loc_BB000C: ILdI2 arg_10
  loc_BB000F: FLdRfVar var_DC
  loc_BB0012: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BB0017: FFree1Str var_98
  loc_BB001A: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_BB0025: LitStr "1"
  loc_BB0028: ImpAdLdRf MemVar_C0F018
  loc_BB002B: NewIfNullPr frmMain
  loc_BB002E: VCallAd Control_ID_
  loc_BB0031: FStAdFunc var_E0
  loc_BB0034: FLdPr var_E0
  loc_BB0037: frmMain.TextBox.Text = from_stack_1
  loc_BB003C: FFree1Ad var_E0
  loc_BB003F: LitStr "26"
  loc_BB0042: CR8Str
  loc_BB0044: ILdI2 arg_10
  loc_BB0047: CI4UI1
  loc_BB0048: ImpAdLdI4 MemVar_C0F100
  loc_BB004B: Ary1LdPr
  loc_BB004C: MemStFPR8 global_272
  loc_BB004F: LitStr "3"
  loc_BB0052: CR8Str
  loc_BB0054: ILdI2 arg_10
  loc_BB0057: CI4UI1
  loc_BB0058: ImpAdLdI4 MemVar_C0F100
  loc_BB005B: Ary1LdPr
  loc_BB005C: MemStFPR8 global_284
  loc_BB005F: LitStr "0"
  loc_BB0062: ImpAdLdRf MemVar_C0F018
  loc_BB0065: NewIfNullPr frmMain
  loc_BB0068: VCallAd Control_ID_
  loc_BB006B: FStAdFunc var_E0
  loc_BB006E: FLdPr var_E0
  loc_BB0071: frmMain.TextBox.Text = from_stack_1
  loc_BB0076: FFree1Ad var_E0
  loc_BB0079: LitVarI2 var_138, 1
  loc_BB007E: FLdRfVar var_16C
  loc_BB0081: FLdRfVar var_170
  loc_BB0084: ImpAdLdRf MemVar_C0F018
  loc_BB0087: NewIfNullPr frmMain
  loc_BB008A: from_stack_1v = frmMain.SockIGet()
  loc_BB008F: ILdRf var_170
  loc_BB0092: CVarI4
  loc_BB0096: ForVar var_2B4
  loc_BB009C: FLdRfVar var_14C
  loc_BB009F: FLdRfVar var_16C
  loc_BB00A2: CI2Var
  loc_BB00A3: ImpAdLdRf MemVar_C0F018
  loc_BB00A6: NewIfNullPr frmMain
  loc_BB00A9: VCallAd Control_ID_
  loc_BB00AC: FStAdFunc var_E0
  loc_BB00AF: FLdPr var_E0
  loc_BB00B2: Set from_stack_2 = frmMain(from_stack_1)
  loc_BB00B7: FLdPr var_14C
  loc_BB00BA: LateIdLdVar var_A8 DispID_8 0
  loc_BB00C1: CI2Var
  loc_BB00C2: CI4UI1
  loc_BB00C3: LitI4 7
  loc_BB00C8: EqI4
  loc_BB00C9: FLdRfVar var_16C
  loc_BB00CC: CI4Var
  loc_BB00CE: ImpAdLdI4 MemVar_C0F100
  loc_BB00D1: Ary1LdPr
  loc_BB00D2: MemLdI2 global_4
  loc_BB00D5: ILdI2 arg_10
  loc_BB00D8: CI4UI1
  loc_BB00D9: ImpAdLdI4 MemVar_C0F100
  loc_BB00DC: Ary1LdPr
  loc_BB00DD: MemLdI2 global_4
  loc_BB00E0: EqI2
  loc_BB00E1: AndI4
  loc_BB00E2: FFreeAd var_E0 = ""
  loc_BB00E9: FFree1Var var_A8 = ""
  loc_BB00EC: BranchF loc_BB013D
  loc_BB00EF: LitVarStr var_F4, "AGdoor close"
  loc_BB00F4: LitI4 1
  loc_BB00F9: FLdRfVar var_A8
  loc_BB00FC: ImpAdCallFPR4  = Chr()
  loc_BB0101: FLdRfVar var_A8
  loc_BB0104: ConcatVar var_B8
  loc_BB0108: PopAdLdVar
  loc_BB0109: FLdRfVar var_14C
  loc_BB010C: FLdRfVar var_16C
  loc_BB010F: CI2Var
  loc_BB0110: ImpAdLdRf MemVar_C0F018
  loc_BB0113: NewIfNullPr frmMain
  loc_BB0116: VCallAd Control_ID_
  loc_BB0119: FStAdFunc var_E0
  loc_BB011C: FLdPr var_E0
  loc_BB011F: Set from_stack_2 = frmMain(from_stack_1)
  loc_BB0124: FLdPr var_14C
  loc_BB0127: LateIdCall
  loc_BB012F: FFreeAd var_E0 = ""
  loc_BB0136: FFreeVar var_A8 = ""
  loc_BB013D: FLdRfVar var_16C
  loc_BB0140: NextStepVar var_2B4
  loc_BB0146: LitI2_Byte &HFF
  loc_BB0148: ILdI2 arg_10
  loc_BB014B: CI4UI1
  loc_BB014C: ImpAdLdI4 MemVar_C0F100
  loc_BB014F: Ary1LdPr
  loc_BB0150: MemStI2 global_344
  loc_BB0153: LitI2_Byte 0
  loc_BB0155: CStrBool
  loc_BB0157: FStStrNoPop var_98
  loc_BB015A: ILdI2 arg_10
  loc_BB015D: CI4UI1
  loc_BB015E: ImpAdLdI4 MemVar_C0F100
  loc_BB0161: Ary1LdPr
  loc_BB0162: MemStStrCopy
  loc_BB0166: FFree1Str var_98
  loc_BB0169: LitI2_Byte 0
  loc_BB016B: ILdI2 arg_10
  loc_BB016E: CI4UI1
  loc_BB016F: ImpAdLdI4 MemVar_C0F100
  loc_BB0172: Ary1LdPr
  loc_BB0173: MemStI2 global_342
  loc_BB0176: LitStr "A}"
  loc_BB0179: ILdI2 arg_10
  loc_BB017C: FLdRfVar var_A8
  loc_BB017F: ImpAdCallFPR4  = Proc_2_20_B1B384(, )
  loc_BB0184: FFree1Var var_A8 = ""
  loc_BB0187: LitI2_Byte &HFF
  loc_BB0189: ImpAdLdRf MemVar_C0F018
  loc_BB018C: NewIfNullPr frmMain
  loc_BB018F: VCallAd Control_ID_
  loc_BB0192: FStAdFunc var_E0
  loc_BB0195: FLdPr var_E0
  loc_BB0198: frmMain.Timer.Enabled = from_stack_1b
  loc_BB019D: FFree1Ad var_E0
  loc_BB01A0: ExitProcCb
  loc_BB01A4: Branch loc_BB01F2
  loc_BB01A7: LitI2_Byte &H1A
  loc_BB01A9: CR8I2
  loc_BB01AA: ILdI2 arg_10
  loc_BB01AD: CI4UI1
  loc_BB01AE: ImpAdLdI4 MemVar_C0F100
  loc_BB01B1: Ary1LdPr
  loc_BB01B2: MemStFPR8 global_232
  loc_BB01B5: LitI2_Byte 5
  loc_BB01B7: CR8I2
  loc_BB01B8: ILdI2 arg_10
  loc_BB01BB: CI4UI1
  loc_BB01BC: ImpAdLdI4 MemVar_C0F100
  loc_BB01BF: Ary1LdPr
  loc_BB01C0: MemStFPR8 global_240
  loc_BB01C3: LitI2_Byte &H1A
  loc_BB01C5: CR8I2
  loc_BB01C6: ILdI2 arg_10
  loc_BB01C9: CI4UI1
  loc_BB01CA: ImpAdLdI4 MemVar_C0F100
  loc_BB01CD: Ary1LdPr
  loc_BB01CE: MemStFPR8 global_272
  loc_BB01D1: LitI2_Byte 5
  loc_BB01D3: CR8I2
  loc_BB01D4: ILdI2 arg_10
  loc_BB01D7: CI4UI1
  loc_BB01D8: ImpAdLdI4 MemVar_C0F100
  loc_BB01DB: Ary1LdPr
  loc_BB01DC: MemStFPR8 global_284
  loc_BB01DF: LitStr "0,0"
  loc_BB01E2: ILdI2 arg_10
  loc_BB01E5: CI4UI1
  loc_BB01E6: ImpAdLdI4 MemVar_C0F100
  loc_BB01E9: Ary1LdPr
  loc_BB01EA: MemStStrCopy
  loc_BB01EE: ExitProcCb
  loc_BB01F2: ILdI2 arg_10
  loc_BB01F5: CI4UI1
  loc_BB01F6: ImpAdLdI4 MemVar_C0F100
  loc_BB01F9: Ary1LdPr
  loc_BB01FA: MemLdI2 global_4
  loc_BB01FD: CR8I2
  loc_BB01FE: LitStr "36"
  loc_BB0201: CR8Str
  loc_BB0203: EqR4
  loc_BB0204: ILdI2 arg_10
  loc_BB0207: CI4UI1
  loc_BB0208: ImpAdLdI4 MemVar_C0F100
  loc_BB020B: Ary1LdPr
  loc_BB020C: MemLdFPR8 global_232
  loc_BB020F: LitStr "20"
  loc_BB0212: CR8Str
  loc_BB0214: EqR4
  loc_BB0215: ILdI2 arg_10
  loc_BB0218: CI4UI1
  loc_BB0219: ImpAdLdI4 MemVar_C0F100
  loc_BB021C: Ary1LdPr
  loc_BB021D: MemLdFPR8 global_240
  loc_BB0220: LitStr "19"
  loc_BB0223: CR8Str
  loc_BB0225: EqR4
  loc_BB0226: AndI4
  loc_BB0227: AndI4
  loc_BB0228: BranchF loc_BB02E9
  loc_BB022B: LitStr "6,6"
  loc_BB022E: ILdI2 arg_10
  loc_BB0231: CI4UI1
  loc_BB0232: ImpAdLdI4 MemVar_C0F100
  loc_BB0235: Ary1LdPr
  loc_BB0236: MemStStrCopy
  loc_BB023A: LitI4 1
  loc_BB023F: FLdRfVar var_A8
  loc_BB0242: ImpAdCallFPR4  = Chr()
  loc_BB0247: LitI4 &H24
  loc_BB024C: LitVarStr var_F4, "AGSplash1 exit"
  loc_BB0251: FLdRfVar var_A8
  loc_BB0254: ConcatVar var_B8
  loc_BB0258: CStrVarVal var_98
  loc_BB025C: FLdRfVar var_C8
  loc_BB025F: ImpAdCallFPR4  = Proc_2_8_B229C4(, )
  loc_BB0264: FFree1Str var_98
  loc_BB0267: FFreeVar var_A8 = "": var_B8 = ""
  loc_BB0270: LitI2_Byte 0
  loc_BB0272: FLdRfVar var_14C
  loc_BB0275: ILdI2 arg_10
  loc_BB0278: ImpAdLdRf MemVar_C0F018
  loc_BB027B: NewIfNullPr frmMain
  loc_BB027E: VCallAd Control_ID_
  loc_BB0281: FStAdFunc var_E0
  loc_BB0284: FLdPr var_E0
  loc_BB0287: Set from_stack_2 = frmMain(from_stack_1)
  loc_BB028C: FLdPr var_14C
  loc_BB028F: Me.Enabled = from_stack_1b
  loc_BB0294: FFreeAd var_E0 = ""
  loc_BB029B: LitStr "walk"
  loc_BB029E: ILdI2 arg_10
  loc_BB02A1: CI4UI1
  loc_BB02A2: ImpAdLdI4 MemVar_C0F100
  loc_BB02A5: Ary1LdPr
  loc_BB02A6: MemStStrCopy
  loc_BB02AA: LitI2_Byte 8
  loc_BB02AC: CStrUI1
  loc_BB02AE: FStStrNoPop var_98
  loc_BB02B1: ILdI2 arg_10
  loc_BB02B4: CI4UI1
  loc_BB02B5: ImpAdLdI4 MemVar_C0F100
  loc_BB02B8: Ary1LdPr
  loc_BB02B9: MemStStrCopy
  loc_BB02BD: FFree1Str var_98
  loc_BB02C0: LitI2_Byte 0
  loc_BB02C2: ILdI2 arg_10
  loc_BB02C5: CI4UI1
  loc_BB02C6: ImpAdLdI4 MemVar_C0F100
  loc_BB02C9: Ary1LdPr
  loc_BB02CA: MemStI2 global_316
  loc_BB02CD: LitI2_Byte &H13
  loc_BB02CF: CR8I2
  loc_BB02D0: ILdI2 arg_10
  loc_BB02D3: CI4UI1
  loc_BB02D4: ImpAdLdI4 MemVar_C0F100
  loc_BB02D7: Ary1LdPr
  loc_BB02D8: MemStFPR8 global_272
  loc_BB02DB: LitI2_Byte &H13
  loc_BB02DD: CR8I2
  loc_BB02DE: ILdI2 arg_10
  loc_BB02E1: CI4UI1
  loc_BB02E2: ImpAdLdI4 MemVar_C0F100
  loc_BB02E5: Ary1LdPr
  loc_BB02E6: MemStFPR8 global_284
  loc_BB02E9: ExitProcCb
  loc_BB02ED: UMiI4
  loc_BB02EE: FLdPrThis
End Function
