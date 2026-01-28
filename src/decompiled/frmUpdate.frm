VERSION 5.00
Begin VB.Form frmUpdate
  Caption = "HabLog"
  BackColor = &HC0FFFF&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmUpdate.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 3450
  ClientHeight = 1815
  StartUpPosition = 1 'CenterOwner
  Begin VB.Label Label1
    Left = 240
    Top = 720
    Width = 2895
    Height = 255
    TabIndex = 0
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

Attribute VB_Name = "frmUpdate"


Private Sub Form_Load() 'B1A03C
  'Data Table: 53AF94
  loc_B1A020: LitVar_Missing var_A4
  loc_B1A023: PopAdLdVar
  loc_B1A024: LitVar_Missing var_94
  loc_B1A027: PopAdLdVar
  loc_B1A028: FLdPr Me
  loc_B1A02B: Me.Show from_stack_1, from_stack_2
  loc_B1A030: FLdRfVar var_B4
  loc_B1A033: Call Proc_9_1_B51A88()
  loc_B1A038: FFree1Var var_B4 = ""
  loc_B1A03B: ExitProcHresult
End Sub

Private Function Proc_9_1_B51A88(arg_10) 'B51A88
  'Data Table: 53AF94
  loc_B51208: ZeroRetValVar
  loc_B5120A: LitStr "Updating users.."
  loc_B5120D: FLdPrThis
  loc_B5120E: VCallAd Control_ID_Label1
  loc_B51211: FStAdFunc var_98
  loc_B51214: FLdPr var_98
  loc_B51217: Me.Caption = from_stack_1
  loc_B5121C: FFree1Ad var_98
  loc_B5121F: ImpAdCallFPR4 DoEvents()
  loc_B51224: FLdRfVar var_A0
  loc_B51227: FLdRfVar var_98
  loc_B5122A: ImpAdLdI4 MemVar_C0F044
  loc_B5122D: LitStr "habbos"
  loc_B51230: ConcatStr
  loc_B51231: FStStrNoPop var_9C
  loc_B51234: ImpAdLdRf MemVar_C0F040
  loc_B51237: NewIfNullPr IFileSystem3
  loc_B5123A: from_stack_2 = IFileSystem3.IFileSystem.GetFolder(from_stack_1v)
  loc_B5123F: FLdPr var_98
  loc_B51242:  = Me.SubFolders
  loc_B51247: FLdZeroAd var_A0
  loc_B5124A: FStAdFuncNoPop
  loc_B5124D: FLdPr Me
  loc_B51250: MemLdRfVar from_stack_1.global_52
  loc_B51253: FFree1Str var_9C
  loc_B51256: FFree1Ad var_98
  loc_B51259: ForEachCollObj
  loc_B51261: LitStr "Updating account "
  loc_B51264: LitI4 &H10
  loc_B51269: FLdPr Me
  loc_B5126C: MemLdStr global_52
  loc_B5126F: FStAd var_98 
  loc_B51273: FLdRfVar var_98
  loc_B51276: CVarRef
  loc_B5127B: ImpAdCallI2 push Dir(, )
  loc_B51280: FStStr var_9C
  loc_B51283: ILdRf var_98
  loc_B51286: CastAd
  loc_B51289: FLdPr Me
  loc_B5128C: MemStAdFunc
  loc_B51290: ILdRf var_9C
  loc_B51293: ConcatStr
  loc_B51294: FStStrNoPop var_BC
  loc_B51297: FLdPrThis
  loc_B51298: VCallAd Control_ID_Label1
  loc_B5129B: FStAdFunc var_A0
  loc_B5129E: FLdPr var_A0
  loc_B512A1: Me.Caption = from_stack_1
  loc_B512A6: FFreeStr var_9C = ""
  loc_B512AD: FFreeAd var_98 = ""
  loc_B512B4: ImpAdCallFPR4 DoEvents()
  loc_B512B9: FLdRfVar var_BE
  loc_B512BC: FLdRfVar var_9C
  loc_B512BF: FLdPr Me
  loc_B512C2: MemLdPr global_52
  loc_B512C5:  = Me.Path
  loc_B512CA: ILdRf var_9C
  loc_B512CD: LitStr "\directmail"
  loc_B512D0: ConcatStr
  loc_B512D1: FStStrNoPop var_BC
  loc_B512D4: ImpAdLdRf MemVar_C0F040
  loc_B512D7: NewIfNullPr IFileSystem3
  loc_B512DA: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B512DF: FLdI2 var_BE
  loc_B512E2: LitI2_Byte &HFF
  loc_B512E4: EqI2
  loc_B512E5: FFreeStr var_9C = ""
  loc_B512EC: BranchF loc_B51392
  loc_B512EF: LitI2_Byte 0
  loc_B512F1: FLdRfVar var_9C
  loc_B512F4: FLdPr Me
  loc_B512F7: MemLdPr global_52
  loc_B512FA:  = Me.Path
  loc_B512FF: ILdRf var_9C
  loc_B51302: LitStr "\directmail"
  loc_B51305: ConcatStr
  loc_B51306: FStStrNoPop var_BC
  loc_B51309: ImpAdLdRf MemVar_C0F040
  loc_B5130C: NewIfNullPr IFileSystem3
  loc_B5130F: from_stack_3 = IFileSystem3.IFileSystem.DeleteFolder(from_stack_1v, from_stack_2b)
  loc_B51314: FFreeStr var_9C = ""
  loc_B5131B: FLdRfVar var_98
  loc_B5131E: FLdRfVar var_9C
  loc_B51321: FLdPr Me
  loc_B51324: MemLdPr global_52
  loc_B51327:  = Me.Path
  loc_B5132C: ILdRf var_9C
  loc_B5132F: LitStr "\directmail"
  loc_B51332: ConcatStr
  loc_B51333: FStStrNoPop var_BC
  loc_B51336: ImpAdLdRf MemVar_C0F040
  loc_B51339: NewIfNullPr IFileSystem3
  loc_B5133C: from_stack_2 = IFileSystem3.IFileSystem.CreateFolder(from_stack_1v)
  loc_B51341: FFreeStr var_9C = ""
  loc_B51348: FFree1Ad var_98
  loc_B5134B: FLdRfVar var_9C
  loc_B5134E: FLdPr Me
  loc_B51351: MemLdPr global_52
  loc_B51354:  = Me.Path
  loc_B51359: LitStr "0"
  loc_B5135C: FLdRfVar var_98
  loc_B5135F: LitI4 0
  loc_B51364: LitI2_Byte &HFF
  loc_B51366: LitI4 2
  loc_B5136B: ILdRf var_9C
  loc_B5136E: LitStr "\directmail\count.txt"
  loc_B51371: ConcatStr
  loc_B51372: FStStrNoPop var_BC
  loc_B51375: ImpAdLdRf MemVar_C0F040
  loc_B51378: NewIfNullPr IFileSystem3
  loc_B5137B: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B51380: FLdPr var_98
  loc_B51383: from_stack_2 = Me.Write(from_stack_1v)
  loc_B51388: FFreeStr var_9C = ""
  loc_B5138F: FFree1Ad var_98
  loc_B51392: FLdRfVar var_BE
  loc_B51395: FLdRfVar var_9C
  loc_B51398: FLdPr Me
  loc_B5139B: MemLdPr global_52
  loc_B5139E:  = Me.Path
  loc_B513A3: ILdRf var_9C
  loc_B513A6: LitStr "\roomlist.txt"
  loc_B513A9: ConcatStr
  loc_B513AA: FStStrNoPop var_BC
  loc_B513AD: ImpAdLdRf MemVar_C0F040
  loc_B513B0: NewIfNullPr IFileSystem3
  loc_B513B3: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B513B8: FLdI2 var_BE
  loc_B513BB: LitI2_Byte &HFF
  loc_B513BD: EqI2
  loc_B513BE: FFreeStr var_9C = ""
  loc_B513C5: BranchF loc_B515F0
  loc_B513C8: FLdRfVar var_9C
  loc_B513CB: FLdPr Me
  loc_B513CE: MemLdPr global_52
  loc_B513D1:  = Me.Path
  loc_B513D6: FLdRfVar var_BE
  loc_B513D9: FLdRfVar var_98
  loc_B513DC: LitI4 0
  loc_B513E1: LitI2_Byte 0
  loc_B513E3: LitI4 1
  loc_B513E8: ILdRf var_9C
  loc_B513EB: LitStr "\roomlist.txt"
  loc_B513EE: ConcatStr
  loc_B513EF: FStStrNoPop var_BC
  loc_B513F2: ImpAdLdRf MemVar_C0F040
  loc_B513F5: NewIfNullPr IFileSystem3
  loc_B513F8: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B513FD: FLdPr var_98
  loc_B51400:  = Me.AtEndOfStream
  loc_B51405: FLdI2 var_BE
  loc_B51408: LitI2_Byte 0
  loc_B5140A: EqI2
  loc_B5140B: FFreeStr var_9C = ""
  loc_B51412: FFree1Ad var_98
  loc_B51415: BranchF loc_B515A6
  loc_B51418: FLdRfVar var_9C
  loc_B5141B: FLdPr Me
  loc_B5141E: MemLdPr global_52
  loc_B51421:  = Me.Path
  loc_B51426: FLdRfVar var_C4
  loc_B51429: FLdRfVar var_98
  loc_B5142C: LitI4 0
  loc_B51431: LitI2_Byte 0
  loc_B51433: LitI4 1
  loc_B51438: ILdRf var_9C
  loc_B5143B: LitStr "\roomlist.txt"
  loc_B5143E: ConcatStr
  loc_B5143F: FStStrNoPop var_BC
  loc_B51442: ImpAdLdRf MemVar_C0F040
  loc_B51445: NewIfNullPr IFileSystem3
  loc_B51448: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B5144D: FLdPr var_98
  loc_B51450:  = Me.ReadAll
  loc_B51455: LitI4 0
  loc_B5145A: LitI4 -1
  loc_B5145F: LitVarStr var_B8, "<"
  loc_B51464: FStVarCopyObj var_D4
  loc_B51467: FLdRfVar var_D4
  loc_B5146A: ILdRf var_C4
  loc_B5146D: FLdRfVar var_E4
  loc_B51470: ImpAdCallFPR4  = Split(, , , )
  loc_B51475: FLdRfVar var_E4
  loc_B51478: FStVar var_F4
  loc_B5147C: FFreeStr var_9C = "": var_BC = ""
  loc_B51485: FFree1Ad var_98
  loc_B51488: FFree1Var var_D4 = ""
  loc_B5148B: LitVarI2 var_B8, 0
  loc_B51490: FStVar var_104
  loc_B51494: LitVarI2 var_134, 1
  loc_B51499: FLdRfVar var_114
  loc_B5149C: FLdRfVar var_F4
  loc_B5149F: CRefVarAry
  loc_B514A1: PopAdLd4
  loc_B514A2: LitI2_Byte 1
  loc_B514A4: FnUBound
  loc_B514A6: CVarI4
  loc_B514AA: ForVar var_154
  loc_B514B0: FLdRfVar var_114
  loc_B514B3: CDargRef
  loc_B514B7: FLdRfVar var_F4
  loc_B514BA: VarIndexLdVar
  loc_B514C0: FnLenVar var_E4
  loc_B514C4: LitVarI2 var_124, 1
  loc_B514C9: HardType
  loc_B514CA: GtVarBool
  loc_B514CC: FFree1Var var_D4 = ""
  loc_B514CF: BranchF loc_B514E2
  loc_B514D2: FLdRfVar var_104
  loc_B514D5: LitVarI2 var_B8, 1
  loc_B514DA: AddVar var_D4
  loc_B514DE: FStVar var_104
  loc_B514E2: FLdRfVar var_114
  loc_B514E5: NextStepVar var_154
  loc_B514EB: FLdRfVar var_BC
  loc_B514EE: FLdPr Me
  loc_B514F1: MemLdPr global_52
  loc_B514F4:  = Me.Path
  loc_B514F9: FLdRfVar var_168
  loc_B514FC: FLdRfVar var_98
  loc_B514FF: LitI4 0
  loc_B51504: LitI2_Byte 0
  loc_B51506: LitI4 1
  loc_B5150B: ILdRf var_BC
  loc_B5150E: LitStr "\rooms.txt"
  loc_B51511: ConcatStr
  loc_B51512: FStStrNoPop var_C4
  loc_B51515: ImpAdLdRf MemVar_C0F040
  loc_B51518: NewIfNullPr IFileSystem3
  loc_B5151B: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B51520: FLdPr var_98
  loc_B51523:  = Me.ReadAll
  loc_B51528: ILdRf var_168
  loc_B5152B: ImpAdCallFPR4 push push Val()
  loc_B51530: FStFPR8 var_170
  loc_B51533: FLdRfVar var_104
  loc_B51536: CStrVarVal var_9C
  loc_B5153A: ImpAdCallFPR4 push push Val()
  loc_B5153F: CR8R8
  loc_B51540: FLdFPR8 var_170
  loc_B51543: CR8R8
  loc_B51544: NeR8
  loc_B51545: FFreeStr var_9C = "": var_BC = "": var_C4 = ""
  loc_B51550: FFree1Ad var_98
  loc_B51553: BranchF loc_B515A3
  loc_B51556: FLdRfVar var_9C
  loc_B51559: FLdPr Me
  loc_B5155C: MemLdPr global_52
  loc_B5155F:  = Me.Path
  loc_B51564: FLdRfVar var_104
  loc_B51567: CStrVarVal var_C4
  loc_B5156B: FLdRfVar var_98
  loc_B5156E: LitI4 0
  loc_B51573: LitI2_Byte 0
  loc_B51575: LitI4 2
  loc_B5157A: ILdRf var_9C
  loc_B5157D: LitStr "\rooms.txt"
  loc_B51580: ConcatStr
  loc_B51581: FStStrNoPop var_BC
  loc_B51584: ImpAdLdRf MemVar_C0F040
  loc_B51587: NewIfNullPr IFileSystem3
  loc_B5158A: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B5158F: FLdPr var_98
  loc_B51592: from_stack_2 = Me.Write(from_stack_1v)
  loc_B51597: FFreeStr var_9C = "": var_BC = ""
  loc_B515A0: FFree1Ad var_98
  loc_B515A3: Branch loc_B515ED
  loc_B515A6: FLdRfVar var_9C
  loc_B515A9: FLdPr Me
  loc_B515AC: MemLdPr global_52
  loc_B515AF:  = Me.Path
  loc_B515B4: LitStr "0"
  loc_B515B7: FLdRfVar var_98
  loc_B515BA: LitI4 0
  loc_B515BF: LitI2_Byte 0
  loc_B515C1: LitI4 2
  loc_B515C6: ILdRf var_9C
  loc_B515C9: LitStr "\rooms.txt"
  loc_B515CC: ConcatStr
  loc_B515CD: FStStrNoPop var_BC
  loc_B515D0: ImpAdLdRf MemVar_C0F040
  loc_B515D3: NewIfNullPr IFileSystem3
  loc_B515D6: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B515DB: FLdPr var_98
  loc_B515DE: from_stack_2 = Me.Write(from_stack_1v)
  loc_B515E3: FFreeStr var_9C = ""
  loc_B515EA: FFree1Ad var_98
  loc_B515ED: Branch loc_B5166B
  loc_B515F0: FLdRfVar var_98
  loc_B515F3: LitI2_Byte 0
  loc_B515F5: LitI2_Byte &HFF
  loc_B515F7: FLdRfVar var_9C
  loc_B515FA: FLdPr Me
  loc_B515FD: MemLdPr global_52
  loc_B51600:  = Me.Path
  loc_B51605: ILdRf var_9C
  loc_B51608: LitStr "\roomlist.txt"
  loc_B5160B: ConcatStr
  loc_B5160C: FStStrNoPop var_BC
  loc_B5160F: ImpAdLdRf MemVar_C0F040
  loc_B51612: NewIfNullPr IFileSystem3
  loc_B51615: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B5161A: FFreeStr var_9C = ""
  loc_B51621: FFree1Ad var_98
  loc_B51624: FLdRfVar var_9C
  loc_B51627: FLdPr Me
  loc_B5162A: MemLdPr global_52
  loc_B5162D:  = Me.Path
  loc_B51632: LitStr "0"
  loc_B51635: FLdRfVar var_98
  loc_B51638: LitI4 0
  loc_B5163D: LitI2_Byte &HFF
  loc_B5163F: LitI4 2
  loc_B51644: ILdRf var_9C
  loc_B51647: LitStr "\rooms.txt"
  loc_B5164A: ConcatStr
  loc_B5164B: FStStrNoPop var_BC
  loc_B5164E: ImpAdLdRf MemVar_C0F040
  loc_B51651: NewIfNullPr IFileSystem3
  loc_B51654: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B51659: FLdPr var_98
  loc_B5165C: from_stack_2 = Me.Write(from_stack_1v)
  loc_B51661: FFreeStr var_9C = ""
  loc_B51668: FFree1Ad var_98
  loc_B5166B: FLdRfVar var_BE
  loc_B5166E: FLdRfVar var_9C
  loc_B51671: FLdPr Me
  loc_B51674: MemLdPr global_52
  loc_B51677:  = Me.Path
  loc_B5167C: ILdRf var_9C
  loc_B5167F: LitStr "\num.txt"
  loc_B51682: ConcatStr
  loc_B51683: FStStrNoPop var_BC
  loc_B51686: ImpAdLdRf MemVar_C0F040
  loc_B51689: NewIfNullPr IFileSystem3
  loc_B5168C: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B51691: FLdI2 var_BE
  loc_B51694: LitI2_Byte &HFF
  loc_B51696: EqI2
  loc_B51697: FFreeStr var_9C = ""
  loc_B5169E: BranchF loc_B51833
  loc_B516A1: FLdRfVar var_9C
  loc_B516A4: FLdPr Me
  loc_B516A7: MemLdPr global_52
  loc_B516AA:  = Me.Path
  loc_B516AF: FLdRfVar var_C4
  loc_B516B2: FLdRfVar var_98
  loc_B516B5: LitI4 0
  loc_B516BA: LitI2_Byte 0
  loc_B516BC: LitI4 1
  loc_B516C1: ILdRf var_9C
  loc_B516C4: LitStr "\num.txt"
  loc_B516C7: ConcatStr
  loc_B516C8: FStStrNoPop var_BC
  loc_B516CB: ImpAdLdRf MemVar_C0F040
  loc_B516CE: NewIfNullPr IFileSystem3
  loc_B516D1: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B516D6: FLdPr var_98
  loc_B516D9:  = Me.ReadAll
  loc_B516DE: FLdZeroAd var_C4
  loc_B516E1: CVarStr var_D4
  loc_B516E4: FStVar var_180
  loc_B516E8: FFreeStr var_9C = ""
  loc_B516EF: FFree1Ad var_98
  loc_B516F2: FLdRfVar var_180
  loc_B516F5: LitVarI2 var_B8, 4
  loc_B516FA: HardType
  loc_B516FB: LtVar var_D4
  loc_B516FF: FLdRfVar var_180
  loc_B51702: CR4Var
  loc_B51703: PopFPR8
  loc_B51704: ImpAdCallI2  = Proc_1_1_B21858()
  loc_B51709: FStStrNoPop var_9C
  loc_B5170C: ImpAdCallI2 Proc_1_2_B29968()
  loc_B51711: CVarStr var_E4
  loc_B51714: HardType
  loc_B51715: FLdRfVar var_180
  loc_B51718: NeVar var_164
  loc_B5171C: OrVar var_190
  loc_B51720: CBoolVarNull
  loc_B51722: FFree1Str var_9C
  loc_B51725: FFree1Var var_E4 = ""
  loc_B51728: BranchF loc_B51830
  loc_B5172B: FLdRfVar var_BC
  loc_B5172E: FLdRfVar var_98
  loc_B51731: LitI4 0
  loc_B51736: LitI2_Byte 0
  loc_B51738: LitI4 1
  loc_B5173D: ImpAdLdI4 MemVar_C0F044
  loc_B51740: LitStr "habbos\count.txt"
  loc_B51743: ConcatStr
  loc_B51744: FStStrNoPop var_9C
  loc_B51747: ImpAdLdRf MemVar_C0F040
  loc_B5174A: NewIfNullPr IFileSystem3
  loc_B5174D: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B51752: FLdPr var_98
  loc_B51755:  = Me.ReadAll
  loc_B5175A: ILdRf var_BC
  loc_B5175D: ImpAdCallFPR4 push push Val()
  loc_B51762: LitI2_Byte 1
  loc_B51764: CR8I2
  loc_B51765: AddR8
  loc_B51766: CVarR8
  loc_B5176A: FStVar var_1A0
  loc_B5176E: FFreeStr var_9C = ""
  loc_B51775: FFree1Ad var_98
  loc_B51778: FLdRfVar var_9C
  loc_B5177B: FLdPr Me
  loc_B5177E: MemLdPr global_52
  loc_B51781:  = Me.Path
  loc_B51786: FLdRfVar var_1A0
  loc_B51789: CStrVarVal var_C4
  loc_B5178D: FLdRfVar var_98
  loc_B51790: LitI4 0
  loc_B51795: LitI2_Byte 0
  loc_B51797: LitI4 2
  loc_B5179C: ILdRf var_9C
  loc_B5179F: LitStr "\num.txt"
  loc_B517A2: ConcatStr
  loc_B517A3: FStStrNoPop var_BC
  loc_B517A6: ImpAdLdRf MemVar_C0F040
  loc_B517A9: NewIfNullPr IFileSystem3
  loc_B517AC: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B517B1: FLdPr var_98
  loc_B517B4: from_stack_2 = Me.Write(from_stack_1v)
  loc_B517B9: FFreeStr var_9C = "": var_BC = ""
  loc_B517C2: FFree1Ad var_98
  loc_B517C5: FLdRfVar var_1A0
  loc_B517C8: CStrVarVal var_BC
  loc_B517CC: FLdRfVar var_98
  loc_B517CF: LitI4 0
  loc_B517D4: LitI2_Byte 0
  loc_B517D6: LitI4 2
  loc_B517DB: ImpAdLdI4 MemVar_C0F044
  loc_B517DE: LitStr "habbos\count.txt"
  loc_B517E1: ConcatStr
  loc_B517E2: FStStrNoPop var_9C
  loc_B517E5: ImpAdLdRf MemVar_C0F040
  loc_B517E8: NewIfNullPr IFileSystem3
  loc_B517EB: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B517F0: FLdPr var_98
  loc_B517F3: from_stack_2 = Me.Write(from_stack_1v)
  loc_B517F8: FFreeStr var_9C = ""
  loc_B517FF: FFree1Ad var_98
  loc_B51802: FLdRfVar var_1A0
  loc_B51805: FStVarCopy
  loc_B51809: FLdRfVar var_180
  loc_B5180C: CR4Var
  loc_B5180D: PopFPR8
  loc_B5180E: ImpAdCallI2  = Proc_1_1_B21858()
  loc_B51813: FStStrNoPop var_9C
  loc_B51816: ImpAdCallI2 Proc_1_2_B29968()
  loc_B5181B: CVarStr var_D4
  loc_B5181E: HardType
  loc_B5181F: FLdRfVar var_180
  loc_B51822: NeVarBool
  loc_B51824: FFree1Str var_9C
  loc_B51827: FFree1Var var_D4 = ""
  loc_B5182A: BranchF loc_B51830
  loc_B5182D: Branch loc_B5172B
  loc_B51830: Branch loc_B51938
  loc_B51833: FLdRfVar var_BC
  loc_B51836: FLdRfVar var_98
  loc_B51839: LitI4 0
  loc_B5183E: LitI2_Byte 0
  loc_B51840: LitI4 1
  loc_B51845: ImpAdLdI4 MemVar_C0F044
  loc_B51848: LitStr "habbos\count.txt"
  loc_B5184B: ConcatStr
  loc_B5184C: FStStrNoPop var_9C
  loc_B5184F: ImpAdLdRf MemVar_C0F040
  loc_B51852: NewIfNullPr IFileSystem3
  loc_B51855: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B5185A: FLdPr var_98
  loc_B5185D:  = Me.ReadAll
  loc_B51862: ILdRf var_BC
  loc_B51865: ImpAdCallFPR4 push push Val()
  loc_B5186A: LitI2_Byte 1
  loc_B5186C: CR8I2
  loc_B5186D: AddR8
  loc_B5186E: CVarR8
  loc_B51872: FStVar var_1A0
  loc_B51876: FFreeStr var_9C = ""
  loc_B5187D: FFree1Ad var_98
  loc_B51880: FLdRfVar var_9C
  loc_B51883: FLdPr Me
  loc_B51886: MemLdPr global_52
  loc_B51889:  = Me.Path
  loc_B5188E: FLdRfVar var_1A0
  loc_B51891: CStrVarVal var_C4
  loc_B51895: FLdRfVar var_98
  loc_B51898: LitI4 0
  loc_B5189D: LitI2_Byte &HFF
  loc_B5189F: LitI4 2
  loc_B518A4: ILdRf var_9C
  loc_B518A7: LitStr "\num.txt"
  loc_B518AA: ConcatStr
  loc_B518AB: FStStrNoPop var_BC
  loc_B518AE: ImpAdLdRf MemVar_C0F040
  loc_B518B1: NewIfNullPr IFileSystem3
  loc_B518B4: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B518B9: FLdPr var_98
  loc_B518BC: from_stack_2 = Me.Write(from_stack_1v)
  loc_B518C1: FFreeStr var_9C = "": var_BC = ""
  loc_B518CA: FFree1Ad var_98
  loc_B518CD: FLdRfVar var_1A0
  loc_B518D0: CStrVarVal var_BC
  loc_B518D4: FLdRfVar var_98
  loc_B518D7: LitI4 0
  loc_B518DC: LitI2_Byte 0
  loc_B518DE: LitI4 2
  loc_B518E3: ImpAdLdI4 MemVar_C0F044
  loc_B518E6: LitStr "habbos\count.txt"
  loc_B518E9: ConcatStr
  loc_B518EA: FStStrNoPop var_9C
  loc_B518ED: ImpAdLdRf MemVar_C0F040
  loc_B518F0: NewIfNullPr IFileSystem3
  loc_B518F3: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B518F8: FLdPr var_98
  loc_B518FB: from_stack_2 = Me.Write(from_stack_1v)
  loc_B51900: FFreeStr var_9C = ""
  loc_B51907: FFree1Ad var_98
  loc_B5190A: FLdRfVar var_1A0
  loc_B5190D: FStVarCopy
  loc_B51911: FLdRfVar var_180
  loc_B51914: CR4Var
  loc_B51915: PopFPR8
  loc_B51916: ImpAdCallI2  = Proc_1_1_B21858()
  loc_B5191B: FStStrNoPop var_9C
  loc_B5191E: ImpAdCallI2 Proc_1_2_B29968()
  loc_B51923: CVarStr var_D4
  loc_B51926: HardType
  loc_B51927: FLdRfVar var_180
  loc_B5192A: NeVarBool
  loc_B5192C: FFree1Str var_9C
  loc_B5192F: FFree1Var var_D4 = ""
  loc_B51932: BranchF loc_B51938
  loc_B51935: Branch loc_B51833
  loc_B51938: FLdRfVar var_BE
  loc_B5193B: FLdRfVar var_9C
  loc_B5193E: FLdPr Me
  loc_B51941: MemLdPr global_52
  loc_B51944:  = Me.Path
  loc_B51949: ILdRf var_9C
  loc_B5194C: LitStr "\hcupdate.txt"
  loc_B5194F: ConcatStr
  loc_B51950: FStStrNoPop var_BC
  loc_B51953: ImpAdLdRf MemVar_C0F040
  loc_B51956: NewIfNullPr IFileSystem3
  loc_B51959: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B5195E: FLdI2 var_BE
  loc_B51961: LitI2_Byte &HFF
  loc_B51963: EqI2
  loc_B51964: FFreeStr var_9C = ""
  loc_B5196B: BranchF loc_B51A19
  loc_B5196E: FLdRfVar var_9C
  loc_B51971: FLdPr Me
  loc_B51974: MemLdPr global_52
  loc_B51977:  = Me.Path
  loc_B5197C: FLdRfVar var_BE
  loc_B5197F: FLdRfVar var_98
  loc_B51982: LitI4 0
  loc_B51987: LitI2_Byte 0
  loc_B51989: LitI4 1
  loc_B5198E: ILdRf var_9C
  loc_B51991: LitStr "\hcupdate.txt"
  loc_B51994: ConcatStr
  loc_B51995: FStStrNoPop var_BC
  loc_B51998: ImpAdLdRf MemVar_C0F040
  loc_B5199B: NewIfNullPr IFileSystem3
  loc_B5199E: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B519A3: FLdPr var_98
  loc_B519A6:  = Me.AtEndOfStream
  loc_B519AB: FLdI2 var_BE
  loc_B519AE: LitI2_Byte &HFF
  loc_B519B0: EqI2
  loc_B519B1: FFreeStr var_9C = ""
  loc_B519B8: FFree1Ad var_98
  loc_B519BB: BranchF loc_B51A16
  loc_B519BE: FLdRfVar var_9C
  loc_B519C1: FLdPr Me
  loc_B519C4: MemLdPr global_52
  loc_B519C7:  = Me.Path
  loc_B519CC: FLdRfVar var_D4
  loc_B519CF: ImpAdCallFPR4  = Now
  loc_B519D4: FLdRfVar var_D4
  loc_B519D7: CStrVarVal var_C4
  loc_B519DB: FLdRfVar var_98
  loc_B519DE: LitI4 0
  loc_B519E3: LitI2_Byte 0
  loc_B519E5: LitI4 2
  loc_B519EA: ILdRf var_9C
  loc_B519ED: LitStr "\hcupdate.txt"
  loc_B519F0: ConcatStr
  loc_B519F1: FStStrNoPop var_BC
  loc_B519F4: ImpAdLdRf MemVar_C0F040
  loc_B519F7: NewIfNullPr IFileSystem3
  loc_B519FA: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B519FF: FLdPr var_98
  loc_B51A02: from_stack_2 = Me.Write(from_stack_1v)
  loc_B51A07: FFreeStr var_9C = "": var_BC = ""
  loc_B51A10: FFree1Ad var_98
  loc_B51A13: FFree1Var var_D4 = ""
  loc_B51A16: Branch loc_B51A71
  loc_B51A19: FLdRfVar var_9C
  loc_B51A1C: FLdPr Me
  loc_B51A1F: MemLdPr global_52
  loc_B51A22:  = Me.Path
  loc_B51A27: FLdRfVar var_D4
  loc_B51A2A: ImpAdCallFPR4  = Now
  loc_B51A2F: FLdRfVar var_D4
  loc_B51A32: CStrVarVal var_C4
  loc_B51A36: FLdRfVar var_98
  loc_B51A39: LitI4 0
  loc_B51A3E: LitI2_Byte &HFF
  loc_B51A40: LitI4 2
  loc_B51A45: ILdRf var_9C
  loc_B51A48: LitStr "\hcupdate.txt"
  loc_B51A4B: ConcatStr
  loc_B51A4C: FStStrNoPop var_BC
  loc_B51A4F: ImpAdLdRf MemVar_C0F040
  loc_B51A52: NewIfNullPr IFileSystem3
  loc_B51A55: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B51A5A: FLdPr var_98
  loc_B51A5D: from_stack_2 = Me.Write(from_stack_1v)
  loc_B51A62: FFreeStr var_9C = "": var_BC = ""
  loc_B51A6B: FFree1Ad var_98
  loc_B51A6E: FFree1Var var_D4 = ""
  loc_B51A71: FLdPr Me
  loc_B51A74: MemLdRfVar from_stack_1.global_52
  loc_B51A77: NextEachCollObj
  loc_B51A7F: ExitProcCbHresult
  loc_B51A85: ILdI2 arg_10
End Function
