
Private Function Proc_27_0_B266BC() 'B266BC
  'Data Table: 53B72C
  loc_B26538: On Error Resume Next
  loc_B2653D: LitVarStr var_A4, "tab_main"
  loc_B26542: PopAdLdVar
  loc_B26543: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B26548: FStStrNoPop var_A8
  loc_B2654B: ImpAdLdRf MemVar_C0F3D4
  loc_B2654E: NewIfNullPr frmSettings
  loc_B26551: VCallAd Control_ID_Label1
  loc_B26554: FStAdFunc var_AC
  loc_B26557: FLdPr var_AC
  loc_B2655A: frmSettings.Label.Caption = from_stack_1
  loc_B2655F: FFree1Str var_A8
  loc_B26562: FFree1Ad var_AC
  loc_B26567: LitVarStr var_A4, "tab_limits"
  loc_B2656C: PopAdLdVar
  loc_B2656D: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B26572: FStStrNoPop var_A8
  loc_B26575: ImpAdLdRf MemVar_C0F3D4
  loc_B26578: NewIfNullPr frmSettings
  loc_B2657B: VCallAd Control_ID_Label2
  loc_B2657E: FStAdFunc var_AC
  loc_B26581: FLdPr var_AC
  loc_B26584: frmSettings.Label.Caption = from_stack_1
  loc_B26589: FFree1Str var_A8
  loc_B2658C: FFree1Ad var_AC
  loc_B26591: LitVarStr var_A4, "tab_filter"
  loc_B26596: PopAdLdVar
  loc_B26597: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B2659C: FStStrNoPop var_A8
  loc_B2659F: ImpAdLdRf MemVar_C0F3D4
  loc_B265A2: NewIfNullPr frmSettings
  loc_B265A5: VCallAd Control_ID_Label3
  loc_B265A8: FStAdFunc var_AC
  loc_B265AB: FLdPr var_AC
  loc_B265AE: frmSettings.Label.Caption = from_stack_1
  loc_B265B3: FFree1Str var_A8
  loc_B265B6: FFree1Ad var_AC
  loc_B265BB: LitVarStr var_A4, "tab_habbos"
  loc_B265C0: PopAdLdVar
  loc_B265C1: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B265C6: FStStrNoPop var_A8
  loc_B265C9: ImpAdLdRf MemVar_C0F3D4
  loc_B265CC: NewIfNullPr frmSettings
  loc_B265CF: VCallAd Control_ID_Label4
  loc_B265D2: FStAdFunc var_AC
  loc_B265D5: FLdPr var_AC
  loc_B265D8: frmSettings.Label.Caption = from_stack_1
  loc_B265DD: FFree1Str var_A8
  loc_B265E0: FFree1Ad var_AC
  loc_B265E5: LitVarStr var_A4, "tab_guestrooms"
  loc_B265EA: PopAdLdVar
  loc_B265EB: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B265F0: FStStrNoPop var_A8
  loc_B265F3: ImpAdLdRf MemVar_C0F3D4
  loc_B265F6: NewIfNullPr frmSettings
  loc_B265F9: VCallAd Control_ID_Label5
  loc_B265FC: FStAdFunc var_AC
  loc_B265FF: FLdPr var_AC
  loc_B26602: frmSettings.Label.Caption = from_stack_1
  loc_B26607: FFree1Str var_A8
  loc_B2660A: FFree1Ad var_AC
  loc_B2660F: LitVarStr var_A4, "tab_publicrooms"
  loc_B26614: PopAdLdVar
  loc_B26615: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B2661A: FStStrNoPop var_A8
  loc_B2661D: ImpAdLdRf MemVar_C0F3D4
  loc_B26620: NewIfNullPr frmSettings
  loc_B26623: VCallAd Control_ID_Label6
  loc_B26626: FStAdFunc var_AC
  loc_B26629: FLdPr var_AC
  loc_B2662C: frmSettings.Label.Caption = from_stack_1
  loc_B26631: FFree1Str var_A8
  loc_B26634: FFree1Ad var_AC
  loc_B26639: LitVarStr var_A4, "tab_ranks"
  loc_B2663E: PopAdLdVar
  loc_B2663F: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B26644: FStStrNoPop var_A8
  loc_B26647: ImpAdLdRf MemVar_C0F3D4
  loc_B2664A: NewIfNullPr frmSettings
  loc_B2664D: VCallAd Control_ID_Label7
  loc_B26650: FStAdFunc var_AC
  loc_B26653: FLdPr var_AC
  loc_B26656: frmSettings.Label.Caption = from_stack_1
  loc_B2665B: FFree1Str var_A8
  loc_B2665E: FFree1Ad var_AC
  loc_B26663: LitVarStr var_A4, "tab_club"
  loc_B26668: PopAdLdVar
  loc_B26669: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B2666E: FStStrNoPop var_A8
  loc_B26671: ImpAdLdRf MemVar_C0F3D4
  loc_B26674: NewIfNullPr frmSettings
  loc_B26677: VCallAd Control_ID_Label8
  loc_B2667A: FStAdFunc var_AC
  loc_B2667D: FLdPr var_AC
  loc_B26680: frmSettings.Label.Caption = from_stack_1
  loc_B26685: FFree1Str var_A8
  loc_B26688: FFree1Ad var_AC
  loc_B2668D: LitVarStr var_A4, "tab_console"
  loc_B26692: PopAdLdVar
  loc_B26693: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B26698: FStStrNoPop var_A8
  loc_B2669B: ImpAdLdRf MemVar_C0F3D4
  loc_B2669E: NewIfNullPr frmSettings
  loc_B266A1: VCallAd Control_ID_Label9
  loc_B266A4: FStAdFunc var_AC
  loc_B266A7: FLdPr var_AC
  loc_B266AA: frmSettings.Label.Caption = from_stack_1
  loc_B266AF: FFree1Str var_A8
  loc_B266B2: FFree1Ad var_AC
  loc_B266B7: ExitProcCb
End Function

Private Function Proc_27_1_B570C0() 'B570C0
  'Data Table: 53B72C
  loc_B56704: On Error Resume Next
  loc_B56709: LitI2 1440
  loc_B5670C: CR8I2
  loc_B5670D: PopFPR4
  loc_B5670E: ImpAdLdRf MemVar_C0F3D4
  loc_B56711: NewIfNullPr frmSettings
  loc_B56714: VCallAd Control_ID_Pictab_main
  loc_B56717: FStAdFunc var_98
  loc_B5671A: FLdPr var_98
  loc_B5671D: frmSettings.PictureBox.Top = from_stack_1s
  loc_B56722: FFree1Ad var_98
  loc_B56727: LitI2 2160
  loc_B5672A: CR8I2
  loc_B5672B: PopFPR4
  loc_B5672C: ImpAdLdRf MemVar_C0F3D4
  loc_B5672F: NewIfNullPr frmSettings
  loc_B56732: VCallAd Control_ID_Pictab_main
  loc_B56735: FStAdFunc var_98
  loc_B56738: FLdPr var_98
  loc_B5673B: frmSettings.PictureBox.Left = from_stack_1s
  loc_B56740: FFree1Ad var_98
  loc_B56745: LitI2_Byte &HFF
  loc_B56747: ImpAdLdRf MemVar_C0F3D4
  loc_B5674A: NewIfNullPr frmSettings
  loc_B5674D: VCallAd Control_ID_Pictab_main
  loc_B56750: FStAdFunc var_98
  loc_B56753: FLdPr var_98
  loc_B56756: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B5675B: FFree1Ad var_98
  loc_B56760: LitI2_Byte 0
  loc_B56762: ImpAdLdRf MemVar_C0F3D4
  loc_B56765: NewIfNullPr frmSettings
  loc_B56768: VCallAd Control_ID_Pictab_limits
  loc_B5676B: FStAdFunc var_98
  loc_B5676E: FLdPr var_98
  loc_B56771: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B56776: FFree1Ad var_98
  loc_B5677B: LitI2_Byte 0
  loc_B5677D: ImpAdLdRf MemVar_C0F3D4
  loc_B56780: NewIfNullPr frmSettings
  loc_B56783: VCallAd Control_ID_Pictab_filter
  loc_B56786: FStAdFunc var_98
  loc_B56789: FLdPr var_98
  loc_B5678C: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B56791: FFree1Ad var_98
  loc_B56796: LitI2_Byte 0
  loc_B56798: ImpAdLdRf MemVar_C0F3D4
  loc_B5679B: NewIfNullPr frmSettings
  loc_B5679E: VCallAd Control_ID_Pictab_habbos
  loc_B567A1: FStAdFunc var_98
  loc_B567A4: FLdPr var_98
  loc_B567A7: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B567AC: FFree1Ad var_98
  loc_B567B1: LitI2_Byte 0
  loc_B567B3: ImpAdLdRf MemVar_C0F3D4
  loc_B567B6: NewIfNullPr frmSettings
  loc_B567B9: VCallAd Control_ID_Pictab_guest
  loc_B567BC: FStAdFunc var_98
  loc_B567BF: FLdPr var_98
  loc_B567C2: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B567C7: FFree1Ad var_98
  loc_B567CC: LitI2_Byte 0
  loc_B567CE: ImpAdLdRf MemVar_C0F3D4
  loc_B567D1: NewIfNullPr frmSettings
  loc_B567D4: VCallAd Control_ID_Pictab_public
  loc_B567D7: FStAdFunc var_98
  loc_B567DA: FLdPr var_98
  loc_B567DD: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B567E2: FFree1Ad var_98
  loc_B567E7: LitI2_Byte 0
  loc_B567E9: ImpAdLdRf MemVar_C0F3D4
  loc_B567EC: NewIfNullPr frmSettings
  loc_B567EF: VCallAd Control_ID_Pictab_ranks
  loc_B567F2: FStAdFunc var_98
  loc_B567F5: FLdPr var_98
  loc_B567F8: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B567FD: FFree1Ad var_98
  loc_B56802: LitI2_Byte 0
  loc_B56804: ImpAdLdRf MemVar_C0F3D4
  loc_B56807: NewIfNullPr frmSettings
  loc_B5680A: VCallAd Control_ID_Pictab_club
  loc_B5680D: FStAdFunc var_98
  loc_B56810: FLdPr var_98
  loc_B56813: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B56818: FFree1Ad var_98
  loc_B5681D: LitVar_TRUE var_AC
  loc_B56820: PopAdLdVar
  loc_B56821: FLdRfVar var_9C
  loc_B56824: ImpAdLdRf MemVar_C0F3D4
  loc_B56827: NewIfNullPr frmSettings
  loc_B5682A: VCallAd Control_ID_Label1
  loc_B5682D: FStAdFunc var_98
  loc_B56830: FLdPr var_98
  loc_B56833:  = frmSettings.Label.Font
  loc_B56838: FLdPr var_9C
  loc_B5683B: LateIdSt
  loc_B56840: FFreeAd var_98 = ""
  loc_B56849: LitVar_FALSE
  loc_B5684D: PopAdLdVar
  loc_B5684E: FLdRfVar var_9C
  loc_B56851: ImpAdLdRf MemVar_C0F3D4
  loc_B56854: NewIfNullPr frmSettings
  loc_B56857: VCallAd Control_ID_Label2
  loc_B5685A: FStAdFunc var_98
  loc_B5685D: FLdPr var_98
  loc_B56860:  = frmSettings.Label.Font
  loc_B56865: FLdPr var_9C
  loc_B56868: LateIdSt
  loc_B5686D: FFreeAd var_98 = ""
  loc_B56876: LitVar_FALSE
  loc_B5687A: PopAdLdVar
  loc_B5687B: FLdRfVar var_9C
  loc_B5687E: ImpAdLdRf MemVar_C0F3D4
  loc_B56881: NewIfNullPr frmSettings
  loc_B56884: VCallAd Control_ID_Label3
  loc_B56887: FStAdFunc var_98
  loc_B5688A: FLdPr var_98
  loc_B5688D:  = frmSettings.Label.Font
  loc_B56892: FLdPr var_9C
  loc_B56895: LateIdSt
  loc_B5689A: FFreeAd var_98 = ""
  loc_B568A3: LitVar_FALSE
  loc_B568A7: PopAdLdVar
  loc_B568A8: FLdRfVar var_9C
  loc_B568AB: ImpAdLdRf MemVar_C0F3D4
  loc_B568AE: NewIfNullPr frmSettings
  loc_B568B1: VCallAd Control_ID_Label4
  loc_B568B4: FStAdFunc var_98
  loc_B568B7: FLdPr var_98
  loc_B568BA:  = frmSettings.Label.Font
  loc_B568BF: FLdPr var_9C
  loc_B568C2: LateIdSt
  loc_B568C7: FFreeAd var_98 = ""
  loc_B568D0: LitVar_FALSE
  loc_B568D4: PopAdLdVar
  loc_B568D5: FLdRfVar var_9C
  loc_B568D8: ImpAdLdRf MemVar_C0F3D4
  loc_B568DB: NewIfNullPr frmSettings
  loc_B568DE: VCallAd Control_ID_Label5
  loc_B568E1: FStAdFunc var_98
  loc_B568E4: FLdPr var_98
  loc_B568E7:  = frmSettings.Label.Font
  loc_B568EC: FLdPr var_9C
  loc_B568EF: LateIdSt
  loc_B568F4: FFreeAd var_98 = ""
  loc_B568FD: LitVar_FALSE
  loc_B56901: PopAdLdVar
  loc_B56902: FLdRfVar var_9C
  loc_B56905: ImpAdLdRf MemVar_C0F3D4
  loc_B56908: NewIfNullPr frmSettings
  loc_B5690B: VCallAd Control_ID_Label6
  loc_B5690E: FStAdFunc var_98
  loc_B56911: FLdPr var_98
  loc_B56914:  = frmSettings.Label.Font
  loc_B56919: FLdPr var_9C
  loc_B5691C: LateIdSt
  loc_B56921: FFreeAd var_98 = ""
  loc_B5692A: LitVar_FALSE
  loc_B5692E: PopAdLdVar
  loc_B5692F: FLdRfVar var_9C
  loc_B56932: ImpAdLdRf MemVar_C0F3D4
  loc_B56935: NewIfNullPr frmSettings
  loc_B56938: VCallAd Control_ID_Label7
  loc_B5693B: FStAdFunc var_98
  loc_B5693E: FLdPr var_98
  loc_B56941:  = frmSettings.Label.Font
  loc_B56946: FLdPr var_9C
  loc_B56949: LateIdSt
  loc_B5694E: FFreeAd var_98 = ""
  loc_B56957: LitVar_FALSE
  loc_B5695B: PopAdLdVar
  loc_B5695C: FLdRfVar var_9C
  loc_B5695F: ImpAdLdRf MemVar_C0F3D4
  loc_B56962: NewIfNullPr frmSettings
  loc_B56965: VCallAd Control_ID_Label8
  loc_B56968: FStAdFunc var_98
  loc_B5696B: FLdPr var_98
  loc_B5696E:  = frmSettings.Label.Font
  loc_B56973: FLdPr var_9C
  loc_B56976: LateIdSt
  loc_B5697B: FFreeAd var_98 = ""
  loc_B56984: LitVar_FALSE
  loc_B56988: PopAdLdVar
  loc_B56989: FLdRfVar var_9C
  loc_B5698C: ImpAdLdRf MemVar_C0F3D4
  loc_B5698F: NewIfNullPr frmSettings
  loc_B56992: VCallAd Control_ID_Label9
  loc_B56995: FStAdFunc var_98
  loc_B56998: FLdPr var_98
  loc_B5699B:  = frmSettings.Label.Font
  loc_B569A0: FLdPr var_9C
  loc_B569A3: LateIdSt
  loc_B569A8: FFreeAd var_98 = ""
  loc_B569B1: LitVarStr var_AC, "tab_main"
  loc_B569B6: PopAdLdVar
  loc_B569B7: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B569BC: FStStrNoPop var_C0
  loc_B569BF: ImpAdLdRf MemVar_C0F3D4
  loc_B569C2: NewIfNullPr frmSettings
  loc_B569C5: VCallAd Control_ID_title
  loc_B569C8: FStAdFunc var_98
  loc_B569CB: FLdPr var_98
  loc_B569CE: frmSettings.Label.Caption = from_stack_1
  loc_B569D3: FFree1Str var_C0
  loc_B569D6: FFree1Ad var_98
  loc_B569DB: LitVarStr var_AC, "mainLabel1"
  loc_B569E0: PopAdLdVar
  loc_B569E1: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B569E6: FStStrNoPop var_C0
  loc_B569E9: ImpAdLdRf MemVar_C0F3D4
  loc_B569EC: NewIfNullPr frmSettings
  loc_B569EF: VCallAd Control_ID_mainLabel1
  loc_B569F2: FStAdFunc var_98
  loc_B569F5: FLdPr var_98
  loc_B569F8: frmSettings.Label.Caption = from_stack_1
  loc_B569FD: FFree1Str var_C0
  loc_B56A00: FFree1Ad var_98
  loc_B56A05: LitVarStr var_AC, "mainLabel2"
  loc_B56A0A: PopAdLdVar
  loc_B56A0B: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B56A10: FStStrNoPop var_C0
  loc_B56A13: ImpAdLdRf MemVar_C0F3D4
  loc_B56A16: NewIfNullPr frmSettings
  loc_B56A19: VCallAd Control_ID_mainLabel2
  loc_B56A1C: FStAdFunc var_98
  loc_B56A1F: FLdPr var_98
  loc_B56A22: frmSettings.Label.Caption = from_stack_1
  loc_B56A27: FFree1Str var_C0
  loc_B56A2A: FFree1Ad var_98
  loc_B56A2F: LitVarStr var_AC, "mainLabel3"
  loc_B56A34: PopAdLdVar
  loc_B56A35: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B56A3A: FStStrNoPop var_C0
  loc_B56A3D: ImpAdLdRf MemVar_C0F3D4
  loc_B56A40: NewIfNullPr frmSettings
  loc_B56A43: VCallAd Control_ID_mainLabel3
  loc_B56A46: FStAdFunc var_98
  loc_B56A49: FLdPr var_98
  loc_B56A4C: frmSettings.Label.Caption = from_stack_1
  loc_B56A51: FFree1Str var_C0
  loc_B56A54: FFree1Ad var_98
  loc_B56A59: LitVarStr var_AC, "mainCheck1"
  loc_B56A5E: PopAdLdVar
  loc_B56A5F: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B56A64: FStStrNoPop var_C0
  loc_B56A67: ImpAdLdRf MemVar_C0F3D4
  loc_B56A6A: NewIfNullPr frmSettings
  loc_B56A6D: VCallAd Control_ID_mainCheck1
  loc_B56A70: FStAdFunc var_98
  loc_B56A73: FLdPr var_98
  loc_B56A76: frmSettings.CheckBox.Caption = from_stack_1
  loc_B56A7B: FFree1Str var_C0
  loc_B56A7E: FFree1Ad var_98
  loc_B56A83: LitVarStr var_AC, "mainCheck2"
  loc_B56A88: PopAdLdVar
  loc_B56A89: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B56A8E: FStStrNoPop var_C0
  loc_B56A91: ImpAdLdRf MemVar_C0F3D4
  loc_B56A94: NewIfNullPr frmSettings
  loc_B56A97: VCallAd Control_ID_mainCheck2
  loc_B56A9A: FStAdFunc var_98
  loc_B56A9D: FLdPr var_98
  loc_B56AA0: frmSettings.CheckBox.Caption = from_stack_1
  loc_B56AA5: FFree1Str var_C0
  loc_B56AA8: FFree1Ad var_98
  loc_B56AAD: LitVarStr var_AC, "mainCheck3"
  loc_B56AB2: PopAdLdVar
  loc_B56AB3: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B56AB8: FStStrNoPop var_C0
  loc_B56ABB: ImpAdLdRf MemVar_C0F3D4
  loc_B56ABE: NewIfNullPr frmSettings
  loc_B56AC1: VCallAd Control_ID_mainCheck3
  loc_B56AC4: FStAdFunc var_98
  loc_B56AC7: FLdPr var_98
  loc_B56ACA: frmSettings.CheckBox.Caption = from_stack_1
  loc_B56ACF: FFree1Str var_C0
  loc_B56AD2: FFree1Ad var_98
  loc_B56AD7: LitVarStr var_AC, "mainCheck4"
  loc_B56ADC: PopAdLdVar
  loc_B56ADD: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B56AE2: FStStrNoPop var_C0
  loc_B56AE5: ImpAdLdRf MemVar_C0F3D4
  loc_B56AE8: NewIfNullPr frmSettings
  loc_B56AEB: VCallAd Control_ID_mainCheck4
  loc_B56AEE: FStAdFunc var_98
  loc_B56AF1: FLdPr var_98
  loc_B56AF4: frmSettings.CheckBox.Caption = from_stack_1
  loc_B56AF9: FFree1Str var_C0
  loc_B56AFC: FFree1Ad var_98
  loc_B56B01: LitVarStr var_AC, "mainCheck5"
  loc_B56B06: PopAdLdVar
  loc_B56B07: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B56B0C: FStStrNoPop var_C0
  loc_B56B0F: ImpAdLdRf MemVar_C0F3D4
  loc_B56B12: NewIfNullPr frmSettings
  loc_B56B15: VCallAd Control_ID_mainCheck5
  loc_B56B18: FStAdFunc var_98
  loc_B56B1B: FLdPr var_98
  loc_B56B1E: frmSettings.CheckBox.Caption = from_stack_1
  loc_B56B23: FFree1Str var_C0
  loc_B56B26: FFree1Ad var_98
  loc_B56B2B: LitVarStr var_AC, "savebutton"
  loc_B56B30: PopAdLdVar
  loc_B56B31: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B56B36: FStStrNoPop var_C0
  loc_B56B39: ImpAdLdRf MemVar_C0F3D4
  loc_B56B3C: NewIfNullPr frmSettings
  loc_B56B3F: VCallAd Control_ID_mainCommand1
  loc_B56B42: FStAdFunc var_98
  loc_B56B45: FLdPr var_98
  loc_B56B48: frmSettings.CommandButton.Caption = from_stack_1
  loc_B56B4D: FFree1Str var_C0
  loc_B56B50: FFree1Ad var_98
  loc_B56B55: LitVarStr var_AC, "restorebutton"
  loc_B56B5A: PopAdLdVar
  loc_B56B5B: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B56B60: FStStrNoPop var_C0
  loc_B56B63: ImpAdLdRf MemVar_C0F3D4
  loc_B56B66: NewIfNullPr frmSettings
  loc_B56B69: VCallAd Control_ID_mainCommand2
  loc_B56B6C: FStAdFunc var_98
  loc_B56B6F: FLdPr var_98
  loc_B56B72: frmSettings.CommandButton.Caption = from_stack_1
  loc_B56B77: FFree1Str var_C0
  loc_B56B7A: FFree1Ad var_98
  loc_B56B7F: LitI2 200
  loc_B56B82: LitI2 164
  loc_B56B85: LitI2_Byte &H65
  loc_B56B87: ImpAdCallI2 RGB(, , )
  loc_B56B8C: ImpAdLdRf MemVar_C0F3D4
  loc_B56B8F: NewIfNullPr frmSettings
  loc_B56B92: VCallAd Control_ID_Pictab_main
  loc_B56B95: FStAdFunc var_98
  loc_B56B98: FLdPr var_98
  loc_B56B9B: frmSettings.PictureBox.BackColor = from_stack_1
  loc_B56BA0: FFree1Ad var_98
  loc_B56BA5: LitI2 200
  loc_B56BA8: LitI2 164
  loc_B56BAB: LitI2_Byte &H65
  loc_B56BAD: ImpAdCallI2 RGB(, , )
  loc_B56BB2: ImpAdLdRf MemVar_C0F3D4
  loc_B56BB5: NewIfNullPr frmSettings
  loc_B56BB8: VCallAd Control_ID_mainCheck1
  loc_B56BBB: FStAdFunc var_98
  loc_B56BBE: FLdPr var_98
  loc_B56BC1: frmSettings.CheckBox.BackColor = from_stack_1
  loc_B56BC6: FFree1Ad var_98
  loc_B56BCB: LitI2 200
  loc_B56BCE: LitI2 164
  loc_B56BD1: LitI2_Byte &H65
  loc_B56BD3: ImpAdCallI2 RGB(, , )
  loc_B56BD8: ImpAdLdRf MemVar_C0F3D4
  loc_B56BDB: NewIfNullPr frmSettings
  loc_B56BDE: VCallAd Control_ID_mainCheck2
  loc_B56BE1: FStAdFunc var_98
  loc_B56BE4: FLdPr var_98
  loc_B56BE7: frmSettings.CheckBox.BackColor = from_stack_1
  loc_B56BEC: FFree1Ad var_98
  loc_B56BF1: LitI2 200
  loc_B56BF4: LitI2 164
  loc_B56BF7: LitI2_Byte &H65
  loc_B56BF9: ImpAdCallI2 RGB(, , )
  loc_B56BFE: ImpAdLdRf MemVar_C0F3D4
  loc_B56C01: NewIfNullPr frmSettings
  loc_B56C04: VCallAd Control_ID_mainCheck3
  loc_B56C07: FStAdFunc var_98
  loc_B56C0A: FLdPr var_98
  loc_B56C0D: frmSettings.CheckBox.BackColor = from_stack_1
  loc_B56C12: FFree1Ad var_98
  loc_B56C17: LitI2 200
  loc_B56C1A: LitI2 164
  loc_B56C1D: LitI2_Byte &H65
  loc_B56C1F: ImpAdCallI2 RGB(, , )
  loc_B56C24: ImpAdLdRf MemVar_C0F3D4
  loc_B56C27: NewIfNullPr frmSettings
  loc_B56C2A: VCallAd Control_ID_mainCheck4
  loc_B56C2D: FStAdFunc var_98
  loc_B56C30: FLdPr var_98
  loc_B56C33: frmSettings.CheckBox.BackColor = from_stack_1
  loc_B56C38: FFree1Ad var_98
  loc_B56C3D: LitI2 200
  loc_B56C40: LitI2 164
  loc_B56C43: LitI2_Byte &H65
  loc_B56C45: ImpAdCallI2 RGB(, , )
  loc_B56C4A: ImpAdLdRf MemVar_C0F3D4
  loc_B56C4D: NewIfNullPr frmSettings
  loc_B56C50: VCallAd Control_ID_mainCheck5
  loc_B56C53: FStAdFunc var_98
  loc_B56C56: FLdPr var_98
  loc_B56C59: frmSettings.CheckBox.BackColor = from_stack_1
  loc_B56C5E: FFree1Ad var_98
  loc_B56C63: LitI4 0
  loc_B56C68: FStStrCopy var_C0
  loc_B56C6B: FLdRfVar var_C0
  loc_B56C6E: ImpAdLdRf MemVar_C0F03C
  loc_B56C71: CVarRef
  loc_B56C76: LitVarStr var_BC, "port"
  loc_B56C7B: FStVarCopyObj var_D0
  loc_B56C7E: FLdRfVar var_D0
  loc_B56C81: LitVarStr var_AC, "server"
  loc_B56C86: PopAdLdVar
  loc_B56C87: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B56C8C: FStStrNoPop var_E4
  loc_B56C8F: ImpAdLdRf MemVar_C0F3D4
  loc_B56C92: NewIfNullPr frmSettings
  loc_B56C95: VCallAd Control_ID_mainText1
  loc_B56C98: FStAdFunc var_98
  loc_B56C9B: FLdPr var_98
  loc_B56C9E: frmSettings.TextBox.Text = from_stack_1
  loc_B56CA3: FFreeStr var_C0 = ""
  loc_B56CAA: FFree1Ad var_98
  loc_B56CAD: FFree1Var var_D0 = ""
  loc_B56CB2: LitI4 0
  loc_B56CB7: FStStrCopy var_C0
  loc_B56CBA: FLdRfVar var_C0
  loc_B56CBD: ImpAdLdRf MemVar_C0F03C
  loc_B56CC0: CVarRef
  loc_B56CC5: LitVarStr var_BC, "connection_limit"
  loc_B56CCA: FStVarCopyObj var_D0
  loc_B56CCD: FLdRfVar var_D0
  loc_B56CD0: LitVarStr var_AC, "server"
  loc_B56CD5: PopAdLdVar
  loc_B56CD6: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B56CDB: FStStrNoPop var_E4
  loc_B56CDE: ImpAdLdRf MemVar_C0F3D4
  loc_B56CE1: NewIfNullPr frmSettings
  loc_B56CE4: VCallAd Control_ID_mainText2
  loc_B56CE7: FStAdFunc var_98
  loc_B56CEA: FLdPr var_98
  loc_B56CED: frmSettings.TextBox.Text = from_stack_1
  loc_B56CF2: FFreeStr var_C0 = ""
  loc_B56CF9: FFree1Ad var_98
  loc_B56CFC: FFree1Var var_D0 = ""
  loc_B56D01: LitI4 0
  loc_B56D06: FStStrCopy var_C0
  loc_B56D09: FLdRfVar var_C0
  loc_B56D0C: ImpAdLdRf MemVar_C0F03C
  loc_B56D0F: CVarRef
  loc_B56D14: LitVarStr var_BC, "bobba_filter"
  loc_B56D19: FStVarCopyObj var_D0
  loc_B56D1C: FLdRfVar var_D0
  loc_B56D1F: LitVarStr var_AC, "config"
  loc_B56D24: PopAdLdVar
  loc_B56D25: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B56D2A: FStStrNoPop var_E4
  loc_B56D2D: ImpAdCallFPR4 push push Val()
  loc_B56D32: CI2R8
  loc_B56D33: ImpAdLdRf MemVar_C0F3D4
  loc_B56D36: NewIfNullPr frmSettings
  loc_B56D39: VCallAd Control_ID_mainCheck1
  loc_B56D3C: FStAdFunc var_98
  loc_B56D3F: FLdPr var_98
  loc_B56D42: frmSettings.CheckBox.Value = from_stack_1
  loc_B56D47: FFreeStr var_C0 = ""
  loc_B56D4E: FFree1Ad var_98
  loc_B56D51: FFree1Var var_D0 = ""
  loc_B56D56: LitI4 0
  loc_B56D5B: FStStrCopy var_C0
  loc_B56D5E: FLdRfVar var_C0
  loc_B56D61: ImpAdLdI4 MemVar_C0F044
  loc_B56D64: LitStr "configuration\settings.ini"
  loc_B56D67: ConcatStr
  loc_B56D68: CVarStr var_F4
  loc_B56D6B: LitVarStr var_BC, "console"
  loc_B56D70: FStVarCopyObj var_D0
  loc_B56D73: FLdRfVar var_D0
  loc_B56D76: LitVarStr var_AC, "config"
  loc_B56D7B: PopAdLdVar
  loc_B56D7C: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B56D81: FStStrNoPop var_E4
  loc_B56D84: ImpAdCallFPR4 push push Val()
  loc_B56D89: CI2R8
  loc_B56D8A: ImpAdLdRf MemVar_C0F3D4
  loc_B56D8D: NewIfNullPr frmSettings
  loc_B56D90: VCallAd Control_ID_mainCheck2
  loc_B56D93: FStAdFunc var_98
  loc_B56D96: FLdPr var_98
  loc_B56D99: frmSettings.CheckBox.Value = from_stack_1
  loc_B56D9E: FFreeStr var_C0 = ""
  loc_B56DA5: FFree1Ad var_98
  loc_B56DA8: FFreeVar var_D0 = ""
  loc_B56DB1: LitI4 0
  loc_B56DB6: FStStrCopy var_C0
  loc_B56DB9: FLdRfVar var_C0
  loc_B56DBC: ImpAdLdRf MemVar_C0F03C
  loc_B56DBF: CVarRef
  loc_B56DC4: LitVarStr var_BC, "welcome_message"
  loc_B56DC9: FStVarCopyObj var_D0
  loc_B56DCC: FLdRfVar var_D0
  loc_B56DCF: LitVarStr var_AC, "config"
  loc_B56DD4: PopAdLdVar
  loc_B56DD5: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B56DDA: FStStr var_168
  loc_B56DDD: LitVarI2 var_124, 0
  loc_B56DE2: PopAdLdVar
  loc_B56DE3: LitI4 0
  loc_B56DE8: LitI4 -1
  loc_B56DED: LitVarStr var_104, ","
  loc_B56DF2: FStVarCopyObj var_F4
  loc_B56DF5: FLdRfVar var_F4
  loc_B56DF8: FLdZeroAd var_168
  loc_B56DFB: FStStrNoPop var_E4
  loc_B56DFE: FLdRfVar var_114
  loc_B56E01: ImpAdCallFPR4  = Split(, , , )
  loc_B56E06: FLdRfVar var_114
  loc_B56E09: VarIndexLdVar
  loc_B56E0F: LitVarStr var_144, "1"
  loc_B56E14: HardType
  loc_B56E15: EqVarBool
  loc_B56E17: FFreeStr var_C0 = "": var_E4 = ""
  loc_B56E20: FFreeVar var_D0 = "": var_F4 = "": var_114 = ""
  loc_B56E2B: BranchF loc_B56F48
  loc_B56E30: LitI4 1
  loc_B56E35: LitI4 0
  loc_B56E3A: FStStrCopy var_C0
  loc_B56E3D: FLdRfVar var_C0
  loc_B56E40: ImpAdLdRf MemVar_C0F03C
  loc_B56E43: CVarRef
  loc_B56E48: LitVarStr var_BC, "welcome_message"
  loc_B56E4D: FStVarCopyObj var_D0
  loc_B56E50: FLdRfVar var_D0
  loc_B56E53: LitVarStr var_AC, "config"
  loc_B56E58: PopAdLdVar
  loc_B56E59: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B56E5E: FStStrNoPop var_E4
  loc_B56E61: LitStr ","
  loc_B56E64: LitI4 0
  loc_B56E69: FnInStr4
  loc_B56E6B: LitI4 0
  loc_B56E70: NeI4
  loc_B56E71: FFreeStr var_C0 = ""
  loc_B56E78: FFree1Var var_D0 = ""
  loc_B56E7B: BranchF loc_B56F0F
  loc_B56E80: LitI4 0
  loc_B56E85: FStStrCopy var_C0
  loc_B56E88: FLdRfVar var_C0
  loc_B56E8B: ImpAdLdRf MemVar_C0F03C
  loc_B56E8E: CVarRef
  loc_B56E93: LitVarStr var_BC, "welcome_message"
  loc_B56E98: FStVarCopyObj var_D0
  loc_B56E9B: FLdRfVar var_D0
  loc_B56E9E: LitVarStr var_AC, "config"
  loc_B56EA3: PopAdLdVar
  loc_B56EA4: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B56EA9: FStStr var_16C
  loc_B56EAC: LitVarI2 var_124, 1
  loc_B56EB1: PopAdLdVar
  loc_B56EB2: LitI4 0
  loc_B56EB7: LitI4 2
  loc_B56EBC: LitVarStr var_104, ","
  loc_B56EC1: FStVarCopyObj var_F4
  loc_B56EC4: FLdRfVar var_F4
  loc_B56EC7: FLdZeroAd var_16C
  loc_B56ECA: FStStrNoPop var_E4
  loc_B56ECD: FLdRfVar var_114
  loc_B56ED0: ImpAdCallFPR4  = Split(, , , )
  loc_B56ED5: FLdRfVar var_114
  loc_B56ED8: VarIndexLdVar
  loc_B56EDE: CStrVarVal var_168
  loc_B56EE2: ImpAdLdRf MemVar_C0F3D4
  loc_B56EE5: NewIfNullPr frmSettings
  loc_B56EE8: VCallAd Control_ID_mainText3
  loc_B56EEB: FStAdFunc var_98
  loc_B56EEE: FLdPr var_98
  loc_B56EF1: frmSettings.TextBox.Text = from_stack_1
  loc_B56EF6: FFreeStr var_C0 = "": var_E4 = "": var_168 = ""
  loc_B56F01: FFree1Ad var_98
  loc_B56F04: FFreeVar var_D0 = "": var_F4 = "": var_114 = ""
  loc_B56F11: LitI2_Byte &HFF
  loc_B56F13: ImpAdLdRf MemVar_C0F3D4
  loc_B56F16: NewIfNullPr frmSettings
  loc_B56F19: VCallAd Control_ID_mainText3
  loc_B56F1C: FStAdFunc var_98
  loc_B56F1F: FLdPr var_98
  loc_B56F22: frmSettings.TextBox.Enabled = from_stack_1b
  loc_B56F27: FFree1Ad var_98
  loc_B56F2C: LitI2_Byte 1
  loc_B56F2E: ImpAdLdRf MemVar_C0F3D4
  loc_B56F31: NewIfNullPr frmSettings
  loc_B56F34: VCallAd Control_ID_mainCheck4
  loc_B56F37: FStAdFunc var_98
  loc_B56F3A: FLdPr var_98
  loc_B56F3D: frmSettings.CheckBox.Value = from_stack_1
  loc_B56F42: FFree1Ad var_98
  loc_B56F45: Branch loc_B57061
  loc_B56F4C: LitI4 1
  loc_B56F51: LitI4 0
  loc_B56F56: FStStrCopy var_C0
  loc_B56F59: FLdRfVar var_C0
  loc_B56F5C: ImpAdLdRf MemVar_C0F03C
  loc_B56F5F: CVarRef
  loc_B56F64: LitVarStr var_BC, "welcome_message"
  loc_B56F69: FStVarCopyObj var_D0
  loc_B56F6C: FLdRfVar var_D0
  loc_B56F6F: LitVarStr var_AC, "config"
  loc_B56F74: PopAdLdVar
  loc_B56F75: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B56F7A: FStStrNoPop var_E4
  loc_B56F7D: LitStr ","
  loc_B56F80: LitI4 0
  loc_B56F85: FnInStr4
  loc_B56F87: LitI4 0
  loc_B56F8C: NeI4
  loc_B56F8D: FFreeStr var_C0 = ""
  loc_B56F94: FFree1Var var_D0 = ""
  loc_B56F97: BranchF loc_B5702B
  loc_B56F9C: LitI4 0
  loc_B56FA1: FStStrCopy var_C0
  loc_B56FA4: FLdRfVar var_C0
  loc_B56FA7: ImpAdLdRf MemVar_C0F03C
  loc_B56FAA: CVarRef
  loc_B56FAF: LitVarStr var_BC, "welcome_message"
  loc_B56FB4: FStVarCopyObj var_D0
  loc_B56FB7: FLdRfVar var_D0
  loc_B56FBA: LitVarStr var_AC, "config"
  loc_B56FBF: PopAdLdVar
  loc_B56FC0: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B56FC5: FStStr var_16C
  loc_B56FC8: LitVarI2 var_124, 1
  loc_B56FCD: PopAdLdVar
  loc_B56FCE: LitI4 0
  loc_B56FD3: LitI4 2
  loc_B56FD8: LitVarStr var_104, ","
  loc_B56FDD: FStVarCopyObj var_F4
  loc_B56FE0: FLdRfVar var_F4
  loc_B56FE3: FLdZeroAd var_16C
  loc_B56FE6: FStStrNoPop var_E4
  loc_B56FE9: FLdRfVar var_114
  loc_B56FEC: ImpAdCallFPR4  = Split(, , , )
  loc_B56FF1: FLdRfVar var_114
  loc_B56FF4: VarIndexLdVar
  loc_B56FFA: CStrVarVal var_168
  loc_B56FFE: ImpAdLdRf MemVar_C0F3D4
  loc_B57001: NewIfNullPr frmSettings
  loc_B57004: VCallAd Control_ID_mainText3
  loc_B57007: FStAdFunc var_98
  loc_B5700A: FLdPr var_98
  loc_B5700D: frmSettings.TextBox.Text = from_stack_1
  loc_B57012: FFreeStr var_C0 = "": var_E4 = "": var_168 = ""
  loc_B5701D: FFree1Ad var_98
  loc_B57020: FFreeVar var_D0 = "": var_F4 = "": var_114 = ""
  loc_B5702D: LitI2_Byte 0
  loc_B5702F: ImpAdLdRf MemVar_C0F3D4
  loc_B57032: NewIfNullPr frmSettings
  loc_B57035: VCallAd Control_ID_mainText3
  loc_B57038: FStAdFunc var_98
  loc_B5703B: FLdPr var_98
  loc_B5703E: frmSettings.TextBox.Enabled = from_stack_1b
  loc_B57043: FFree1Ad var_98
  loc_B57048: LitI2_Byte 0
  loc_B5704A: ImpAdLdRf MemVar_C0F3D4
  loc_B5704D: NewIfNullPr frmSettings
  loc_B57050: VCallAd Control_ID_mainCheck4
  loc_B57053: FStAdFunc var_98
  loc_B57056: FLdPr var_98
  loc_B57059: frmSettings.CheckBox.Value = from_stack_1
  loc_B5705E: FFree1Ad var_98
  loc_B57065: LitI4 0
  loc_B5706A: FStStrCopy var_C0
  loc_B5706D: FLdRfVar var_C0
  loc_B57070: ImpAdLdRf MemVar_C0F03C
  loc_B57073: CVarRef
  loc_B57078: LitVarStr var_BC, "freehcclothes"
  loc_B5707D: FStVarCopyObj var_D0
  loc_B57080: FLdRfVar var_D0
  loc_B57083: LitVarStr var_AC, "config"
  loc_B57088: PopAdLdVar
  loc_B57089: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B5708E: FStStrNoPop var_E4
  loc_B57091: ImpAdCallFPR4 push push Val()
  loc_B57096: CI2R8
  loc_B57097: ImpAdLdRf MemVar_C0F3D4
  loc_B5709A: NewIfNullPr frmSettings
  loc_B5709D: VCallAd Control_ID_mainCheck5
  loc_B570A0: FStAdFunc var_98
  loc_B570A3: FLdPr var_98
  loc_B570A6: frmSettings.CheckBox.Value = from_stack_1
  loc_B570AB: FFreeStr var_C0 = ""
  loc_B570B2: FFree1Ad var_98
  loc_B570B5: FFree1Var var_D0 = ""
  loc_B570BA: ExitProcCb
End Function

Private Function Proc_27_2_B4059C() 'B4059C
  'Data Table: 53B72C
  loc_B3FFE8: On Error Resume Next
  loc_B3FFED: LitI2 1440
  loc_B3FFF0: CR8I2
  loc_B3FFF1: PopFPR4
  loc_B3FFF2: ImpAdLdRf MemVar_C0F3D4
  loc_B3FFF5: NewIfNullPr frmSettings
  loc_B3FFF8: VCallAd Control_ID_Pictab_limits
  loc_B3FFFB: FStAdFunc var_98
  loc_B3FFFE: FLdPr var_98
  loc_B40001: frmSettings.PictureBox.Top = from_stack_1s
  loc_B40006: FFree1Ad var_98
  loc_B4000B: LitI2 2160
  loc_B4000E: CR8I2
  loc_B4000F: PopFPR4
  loc_B40010: ImpAdLdRf MemVar_C0F3D4
  loc_B40013: NewIfNullPr frmSettings
  loc_B40016: VCallAd Control_ID_Pictab_limits
  loc_B40019: FStAdFunc var_98
  loc_B4001C: FLdPr var_98
  loc_B4001F: frmSettings.PictureBox.Left = from_stack_1s
  loc_B40024: FFree1Ad var_98
  loc_B40029: LitI2_Byte 0
  loc_B4002B: ImpAdLdRf MemVar_C0F3D4
  loc_B4002E: NewIfNullPr frmSettings
  loc_B40031: VCallAd Control_ID_Pictab_main
  loc_B40034: FStAdFunc var_98
  loc_B40037: FLdPr var_98
  loc_B4003A: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4003F: FFree1Ad var_98
  loc_B40044: LitI2_Byte &HFF
  loc_B40046: ImpAdLdRf MemVar_C0F3D4
  loc_B40049: NewIfNullPr frmSettings
  loc_B4004C: VCallAd Control_ID_Pictab_limits
  loc_B4004F: FStAdFunc var_98
  loc_B40052: FLdPr var_98
  loc_B40055: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4005A: FFree1Ad var_98
  loc_B4005F: LitI2_Byte 0
  loc_B40061: ImpAdLdRf MemVar_C0F3D4
  loc_B40064: NewIfNullPr frmSettings
  loc_B40067: VCallAd Control_ID_Pictab_filter
  loc_B4006A: FStAdFunc var_98
  loc_B4006D: FLdPr var_98
  loc_B40070: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B40075: FFree1Ad var_98
  loc_B4007A: LitI2_Byte 0
  loc_B4007C: ImpAdLdRf MemVar_C0F3D4
  loc_B4007F: NewIfNullPr frmSettings
  loc_B40082: VCallAd Control_ID_Pictab_habbos
  loc_B40085: FStAdFunc var_98
  loc_B40088: FLdPr var_98
  loc_B4008B: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B40090: FFree1Ad var_98
  loc_B40095: LitI2_Byte 0
  loc_B40097: ImpAdLdRf MemVar_C0F3D4
  loc_B4009A: NewIfNullPr frmSettings
  loc_B4009D: VCallAd Control_ID_Pictab_guest
  loc_B400A0: FStAdFunc var_98
  loc_B400A3: FLdPr var_98
  loc_B400A6: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B400AB: FFree1Ad var_98
  loc_B400B0: LitI2_Byte 0
  loc_B400B2: ImpAdLdRf MemVar_C0F3D4
  loc_B400B5: NewIfNullPr frmSettings
  loc_B400B8: VCallAd Control_ID_Pictab_public
  loc_B400BB: FStAdFunc var_98
  loc_B400BE: FLdPr var_98
  loc_B400C1: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B400C6: FFree1Ad var_98
  loc_B400CB: LitI2_Byte 0
  loc_B400CD: ImpAdLdRf MemVar_C0F3D4
  loc_B400D0: NewIfNullPr frmSettings
  loc_B400D3: VCallAd Control_ID_Pictab_ranks
  loc_B400D6: FStAdFunc var_98
  loc_B400D9: FLdPr var_98
  loc_B400DC: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B400E1: FFree1Ad var_98
  loc_B400E6: LitI2_Byte 0
  loc_B400E8: ImpAdLdRf MemVar_C0F3D4
  loc_B400EB: NewIfNullPr frmSettings
  loc_B400EE: VCallAd Control_ID_Pictab_club
  loc_B400F1: FStAdFunc var_98
  loc_B400F4: FLdPr var_98
  loc_B400F7: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B400FC: FFree1Ad var_98
  loc_B40101: LitVar_FALSE
  loc_B40105: PopAdLdVar
  loc_B40106: FLdRfVar var_9C
  loc_B40109: ImpAdLdRf MemVar_C0F3D4
  loc_B4010C: NewIfNullPr frmSettings
  loc_B4010F: VCallAd Control_ID_Label1
  loc_B40112: FStAdFunc var_98
  loc_B40115: FLdPr var_98
  loc_B40118:  = frmSettings.Label.Font
  loc_B4011D: FLdPr var_9C
  loc_B40120: LateIdSt
  loc_B40125: FFreeAd var_98 = ""
  loc_B4012E: LitVar_TRUE var_AC
  loc_B40131: PopAdLdVar
  loc_B40132: FLdRfVar var_9C
  loc_B40135: ImpAdLdRf MemVar_C0F3D4
  loc_B40138: NewIfNullPr frmSettings
  loc_B4013B: VCallAd Control_ID_Label2
  loc_B4013E: FStAdFunc var_98
  loc_B40141: FLdPr var_98
  loc_B40144:  = frmSettings.Label.Font
  loc_B40149: FLdPr var_9C
  loc_B4014C: LateIdSt
  loc_B40151: FFreeAd var_98 = ""
  loc_B4015A: LitVar_FALSE
  loc_B4015E: PopAdLdVar
  loc_B4015F: FLdRfVar var_9C
  loc_B40162: ImpAdLdRf MemVar_C0F3D4
  loc_B40165: NewIfNullPr frmSettings
  loc_B40168: VCallAd Control_ID_Label3
  loc_B4016B: FStAdFunc var_98
  loc_B4016E: FLdPr var_98
  loc_B40171:  = frmSettings.Label.Font
  loc_B40176: FLdPr var_9C
  loc_B40179: LateIdSt
  loc_B4017E: FFreeAd var_98 = ""
  loc_B40187: LitVar_FALSE
  loc_B4018B: PopAdLdVar
  loc_B4018C: FLdRfVar var_9C
  loc_B4018F: ImpAdLdRf MemVar_C0F3D4
  loc_B40192: NewIfNullPr frmSettings
  loc_B40195: VCallAd Control_ID_Label4
  loc_B40198: FStAdFunc var_98
  loc_B4019B: FLdPr var_98
  loc_B4019E:  = frmSettings.Label.Font
  loc_B401A3: FLdPr var_9C
  loc_B401A6: LateIdSt
  loc_B401AB: FFreeAd var_98 = ""
  loc_B401B4: LitVar_FALSE
  loc_B401B8: PopAdLdVar
  loc_B401B9: FLdRfVar var_9C
  loc_B401BC: ImpAdLdRf MemVar_C0F3D4
  loc_B401BF: NewIfNullPr frmSettings
  loc_B401C2: VCallAd Control_ID_Label5
  loc_B401C5: FStAdFunc var_98
  loc_B401C8: FLdPr var_98
  loc_B401CB:  = frmSettings.Label.Font
  loc_B401D0: FLdPr var_9C
  loc_B401D3: LateIdSt
  loc_B401D8: FFreeAd var_98 = ""
  loc_B401E1: LitVar_FALSE
  loc_B401E5: PopAdLdVar
  loc_B401E6: FLdRfVar var_9C
  loc_B401E9: ImpAdLdRf MemVar_C0F3D4
  loc_B401EC: NewIfNullPr frmSettings
  loc_B401EF: VCallAd Control_ID_Label6
  loc_B401F2: FStAdFunc var_98
  loc_B401F5: FLdPr var_98
  loc_B401F8:  = frmSettings.Label.Font
  loc_B401FD: FLdPr var_9C
  loc_B40200: LateIdSt
  loc_B40205: FFreeAd var_98 = ""
  loc_B4020E: LitVar_FALSE
  loc_B40212: PopAdLdVar
  loc_B40213: FLdRfVar var_9C
  loc_B40216: ImpAdLdRf MemVar_C0F3D4
  loc_B40219: NewIfNullPr frmSettings
  loc_B4021C: VCallAd Control_ID_Label7
  loc_B4021F: FStAdFunc var_98
  loc_B40222: FLdPr var_98
  loc_B40225:  = frmSettings.Label.Font
  loc_B4022A: FLdPr var_9C
  loc_B4022D: LateIdSt
  loc_B40232: FFreeAd var_98 = ""
  loc_B4023B: LitVar_FALSE
  loc_B4023F: PopAdLdVar
  loc_B40240: FLdRfVar var_9C
  loc_B40243: ImpAdLdRf MemVar_C0F3D4
  loc_B40246: NewIfNullPr frmSettings
  loc_B40249: VCallAd Control_ID_Label8
  loc_B4024C: FStAdFunc var_98
  loc_B4024F: FLdPr var_98
  loc_B40252:  = frmSettings.Label.Font
  loc_B40257: FLdPr var_9C
  loc_B4025A: LateIdSt
  loc_B4025F: FFreeAd var_98 = ""
  loc_B40268: LitVar_FALSE
  loc_B4026C: PopAdLdVar
  loc_B4026D: FLdRfVar var_9C
  loc_B40270: ImpAdLdRf MemVar_C0F3D4
  loc_B40273: NewIfNullPr frmSettings
  loc_B40276: VCallAd Control_ID_Label9
  loc_B40279: FStAdFunc var_98
  loc_B4027C: FLdPr var_98
  loc_B4027F:  = frmSettings.Label.Font
  loc_B40284: FLdPr var_9C
  loc_B40287: LateIdSt
  loc_B4028C: FFreeAd var_98 = ""
  loc_B40295: LitVarStr var_AC, "tab_limits"
  loc_B4029A: PopAdLdVar
  loc_B4029B: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B402A0: FStStrNoPop var_C0
  loc_B402A3: ImpAdLdRf MemVar_C0F3D4
  loc_B402A6: NewIfNullPr frmSettings
  loc_B402A9: VCallAd Control_ID_title
  loc_B402AC: FStAdFunc var_98
  loc_B402AF: FLdPr var_98
  loc_B402B2: frmSettings.Label.Caption = from_stack_1
  loc_B402B7: FFree1Str var_C0
  loc_B402BA: FFree1Ad var_98
  loc_B402BF: LitVarStr var_AC, "limitslabel1"
  loc_B402C4: PopAdLdVar
  loc_B402C5: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B402CA: FStStrNoPop var_C0
  loc_B402CD: ImpAdLdRf MemVar_C0F3D4
  loc_B402D0: NewIfNullPr frmSettings
  loc_B402D3: VCallAd Control_ID_limitsLabel1
  loc_B402D6: FStAdFunc var_98
  loc_B402D9: FLdPr var_98
  loc_B402DC: frmSettings.Label.Caption = from_stack_1
  loc_B402E1: FFree1Str var_C0
  loc_B402E4: FFree1Ad var_98
  loc_B402E9: LitVarStr var_AC, "limitslabel2"
  loc_B402EE: PopAdLdVar
  loc_B402EF: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B402F4: FStStrNoPop var_C0
  loc_B402F7: ImpAdLdRf MemVar_C0F3D4
  loc_B402FA: NewIfNullPr frmSettings
  loc_B402FD: VCallAd Control_ID_limitsLabel2
  loc_B40300: FStAdFunc var_98
  loc_B40303: FLdPr var_98
  loc_B40306: frmSettings.Label.Caption = from_stack_1
  loc_B4030B: FFree1Str var_C0
  loc_B4030E: FFree1Ad var_98
  loc_B40313: LitVarStr var_AC, "limitslabel3"
  loc_B40318: PopAdLdVar
  loc_B40319: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4031E: FStStrNoPop var_C0
  loc_B40321: ImpAdLdRf MemVar_C0F3D4
  loc_B40324: NewIfNullPr frmSettings
  loc_B40327: VCallAd Control_ID_limitsLabel3
  loc_B4032A: FStAdFunc var_98
  loc_B4032D: FLdPr var_98
  loc_B40330: frmSettings.Label.Caption = from_stack_1
  loc_B40335: FFree1Str var_C0
  loc_B40338: FFree1Ad var_98
  loc_B4033D: LitVarStr var_AC, "limitslabel4"
  loc_B40342: PopAdLdVar
  loc_B40343: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B40348: FStStrNoPop var_C0
  loc_B4034B: ImpAdLdRf MemVar_C0F3D4
  loc_B4034E: NewIfNullPr frmSettings
  loc_B40351: VCallAd Control_ID_limitsLabel4
  loc_B40354: FStAdFunc var_98
  loc_B40357: FLdPr var_98
  loc_B4035A: frmSettings.Label.Caption = from_stack_1
  loc_B4035F: FFree1Str var_C0
  loc_B40362: FFree1Ad var_98
  loc_B40367: LitVarStr var_AC, "limitslabel5"
  loc_B4036C: PopAdLdVar
  loc_B4036D: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B40372: FStStrNoPop var_C0
  loc_B40375: ImpAdLdRf MemVar_C0F3D4
  loc_B40378: NewIfNullPr frmSettings
  loc_B4037B: VCallAd Control_ID_limitsLabel5
  loc_B4037E: FStAdFunc var_98
  loc_B40381: FLdPr var_98
  loc_B40384: frmSettings.Label.Caption = from_stack_1
  loc_B40389: FFree1Str var_C0
  loc_B4038C: FFree1Ad var_98
  loc_B40391: LitVarStr var_AC, "savebutton"
  loc_B40396: PopAdLdVar
  loc_B40397: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4039C: FStStrNoPop var_C0
  loc_B4039F: ImpAdLdRf MemVar_C0F3D4
  loc_B403A2: NewIfNullPr frmSettings
  loc_B403A5: VCallAd Control_ID_limitsCommand1
  loc_B403A8: FStAdFunc var_98
  loc_B403AB: FLdPr var_98
  loc_B403AE: frmSettings.CommandButton.Caption = from_stack_1
  loc_B403B3: FFree1Str var_C0
  loc_B403B6: FFree1Ad var_98
  loc_B403BB: LitVarStr var_AC, "restorebutton"
  loc_B403C0: PopAdLdVar
  loc_B403C1: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B403C6: FStStrNoPop var_C0
  loc_B403C9: ImpAdLdRf MemVar_C0F3D4
  loc_B403CC: NewIfNullPr frmSettings
  loc_B403CF: VCallAd Control_ID_limitsCommand2
  loc_B403D2: FStAdFunc var_98
  loc_B403D5: FLdPr var_98
  loc_B403D8: frmSettings.CommandButton.Caption = from_stack_1
  loc_B403DD: FFree1Str var_C0
  loc_B403E0: FFree1Ad var_98
  loc_B403E5: LitI2 200
  loc_B403E8: LitI2 164
  loc_B403EB: LitI2_Byte &H65
  loc_B403ED: ImpAdCallI2 RGB(, , )
  loc_B403F2: ImpAdLdRf MemVar_C0F3D4
  loc_B403F5: NewIfNullPr frmSettings
  loc_B403F8: VCallAd Control_ID_Pictab_limits
  loc_B403FB: FStAdFunc var_98
  loc_B403FE: FLdPr var_98
  loc_B40401: frmSettings.PictureBox.BackColor = from_stack_1
  loc_B40406: FFree1Ad var_98
  loc_B4040B: LitI4 0
  loc_B40410: FStStrCopy var_C0
  loc_B40413: FLdRfVar var_C0
  loc_B40416: ImpAdLdRf MemVar_C0F03C
  loc_B40419: CVarRef
  loc_B4041E: LitVarStr var_BC, "maxroomsperuser"
  loc_B40423: FStVarCopyObj var_D0
  loc_B40426: FLdRfVar var_D0
  loc_B40429: LitVarStr var_AC, "config"
  loc_B4042E: PopAdLdVar
  loc_B4042F: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B40434: FStStrNoPop var_E4
  loc_B40437: ImpAdLdRf MemVar_C0F3D4
  loc_B4043A: NewIfNullPr frmSettings
  loc_B4043D: VCallAd Control_ID_limitsText1
  loc_B40440: FStAdFunc var_98
  loc_B40443: FLdPr var_98
  loc_B40446: frmSettings.TextBox.Text = from_stack_1
  loc_B4044B: FFreeStr var_C0 = ""
  loc_B40452: FFree1Ad var_98
  loc_B40455: FFree1Var var_D0 = ""
  loc_B4045A: LitI4 0
  loc_B4045F: FStStrCopy var_C0
  loc_B40462: FLdRfVar var_C0
  loc_B40465: ImpAdLdRf MemVar_C0F03C
  loc_B40468: CVarRef
  loc_B4046D: LitVarStr var_BC, "maxguestroomsinlist"
  loc_B40472: FStVarCopyObj var_D0
  loc_B40475: FLdRfVar var_D0
  loc_B40478: LitVarStr var_AC, "config"
  loc_B4047D: PopAdLdVar
  loc_B4047E: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B40483: FStStrNoPop var_E4
  loc_B40486: ImpAdLdRf MemVar_C0F3D4
  loc_B40489: NewIfNullPr frmSettings
  loc_B4048C: VCallAd Control_ID_limitsText2
  loc_B4048F: FStAdFunc var_98
  loc_B40492: FLdPr var_98
  loc_B40495: frmSettings.TextBox.Text = from_stack_1
  loc_B4049A: FFreeStr var_C0 = ""
  loc_B404A1: FFree1Ad var_98
  loc_B404A4: FFree1Var var_D0 = ""
  loc_B404A9: LitI4 0
  loc_B404AE: FStStrCopy var_C0
  loc_B404B1: FLdRfVar var_C0
  loc_B404B4: ImpAdLdRf MemVar_C0F03C
  loc_B404B7: CVarRef
  loc_B404BC: LitVarStr var_BC, "maxfavouriterooms"
  loc_B404C1: FStVarCopyObj var_D0
  loc_B404C4: FLdRfVar var_D0
  loc_B404C7: LitVarStr var_AC, "config"
  loc_B404CC: PopAdLdVar
  loc_B404CD: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B404D2: FStStrNoPop var_E4
  loc_B404D5: ImpAdLdRf MemVar_C0F3D4
  loc_B404D8: NewIfNullPr frmSettings
  loc_B404DB: VCallAd Control_ID_limitsText3
  loc_B404DE: FStAdFunc var_98
  loc_B404E1: FLdPr var_98
  loc_B404E4: frmSettings.TextBox.Text = from_stack_1
  loc_B404E9: FFreeStr var_C0 = ""
  loc_B404F0: FFree1Ad var_98
  loc_B404F3: FFree1Var var_D0 = ""
  loc_B404F8: LitI4 0
  loc_B404FD: FStStrCopy var_C0
  loc_B40500: FLdRfVar var_C0
  loc_B40503: ImpAdLdRf MemVar_C0F03C
  loc_B40506: CVarRef
  loc_B4050B: LitVarStr var_BC, "maxrollersinroom"
  loc_B40510: FStVarCopyObj var_D0
  loc_B40513: FLdRfVar var_D0
  loc_B40516: LitVarStr var_AC, "config"
  loc_B4051B: PopAdLdVar
  loc_B4051C: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B40521: FStStrNoPop var_E4
  loc_B40524: ImpAdLdRf MemVar_C0F3D4
  loc_B40527: NewIfNullPr frmSettings
  loc_B4052A: VCallAd Control_ID_limitsText4
  loc_B4052D: FStAdFunc var_98
  loc_B40530: FLdPr var_98
  loc_B40533: frmSettings.TextBox.Text = from_stack_1
  loc_B40538: FFreeStr var_C0 = ""
  loc_B4053F: FFree1Ad var_98
  loc_B40542: FFree1Var var_D0 = ""
  loc_B40547: LitI4 0
  loc_B4054C: FStStrCopy var_C0
  loc_B4054F: FLdRfVar var_C0
  loc_B40552: ImpAdLdRf MemVar_C0F03C
  loc_B40555: CVarRef
  loc_B4055A: LitVarStr var_BC, "maxpetsinroom"
  loc_B4055F: FStVarCopyObj var_D0
  loc_B40562: FLdRfVar var_D0
  loc_B40565: LitVarStr var_AC, "config"
  loc_B4056A: PopAdLdVar
  loc_B4056B: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B40570: FStStrNoPop var_E4
  loc_B40573: ImpAdLdRf MemVar_C0F3D4
  loc_B40576: NewIfNullPr frmSettings
  loc_B40579: VCallAd Control_ID_limitsText5
  loc_B4057C: FStAdFunc var_98
  loc_B4057F: FLdPr var_98
  loc_B40582: frmSettings.TextBox.Text = from_stack_1
  loc_B40587: FFreeStr var_C0 = ""
  loc_B4058E: FFree1Ad var_98
  loc_B40591: FFree1Var var_D0 = ""
  loc_B40596: ExitProcCb
End Function

Private Function Proc_27_3_B3CC40() 'B3CC40
  'Data Table: 53B72C
  loc_B3C72C: On Error Resume Next
  loc_B3C731: LitI2 1440
  loc_B3C734: CR8I2
  loc_B3C735: PopFPR4
  loc_B3C736: ImpAdLdRf MemVar_C0F3D4
  loc_B3C739: NewIfNullPr frmSettings
  loc_B3C73C: VCallAd Control_ID_Pictab_filter
  loc_B3C73F: FStAdFunc var_98
  loc_B3C742: FLdPr var_98
  loc_B3C745: frmSettings.PictureBox.Top = from_stack_1s
  loc_B3C74A: FFree1Ad var_98
  loc_B3C74F: LitI2 2160
  loc_B3C752: CR8I2
  loc_B3C753: PopFPR4
  loc_B3C754: ImpAdLdRf MemVar_C0F3D4
  loc_B3C757: NewIfNullPr frmSettings
  loc_B3C75A: VCallAd Control_ID_Pictab_filter
  loc_B3C75D: FStAdFunc var_98
  loc_B3C760: FLdPr var_98
  loc_B3C763: frmSettings.PictureBox.Left = from_stack_1s
  loc_B3C768: FFree1Ad var_98
  loc_B3C76D: LitI2_Byte 0
  loc_B3C76F: ImpAdLdRf MemVar_C0F3D4
  loc_B3C772: NewIfNullPr frmSettings
  loc_B3C775: VCallAd Control_ID_Pictab_main
  loc_B3C778: FStAdFunc var_98
  loc_B3C77B: FLdPr var_98
  loc_B3C77E: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B3C783: FFree1Ad var_98
  loc_B3C788: LitI2_Byte 0
  loc_B3C78A: ImpAdLdRf MemVar_C0F3D4
  loc_B3C78D: NewIfNullPr frmSettings
  loc_B3C790: VCallAd Control_ID_Pictab_limits
  loc_B3C793: FStAdFunc var_98
  loc_B3C796: FLdPr var_98
  loc_B3C799: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B3C79E: FFree1Ad var_98
  loc_B3C7A3: LitI2_Byte &HFF
  loc_B3C7A5: ImpAdLdRf MemVar_C0F3D4
  loc_B3C7A8: NewIfNullPr frmSettings
  loc_B3C7AB: VCallAd Control_ID_Pictab_filter
  loc_B3C7AE: FStAdFunc var_98
  loc_B3C7B1: FLdPr var_98
  loc_B3C7B4: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B3C7B9: FFree1Ad var_98
  loc_B3C7BE: LitI2_Byte 0
  loc_B3C7C0: ImpAdLdRf MemVar_C0F3D4
  loc_B3C7C3: NewIfNullPr frmSettings
  loc_B3C7C6: VCallAd Control_ID_Pictab_habbos
  loc_B3C7C9: FStAdFunc var_98
  loc_B3C7CC: FLdPr var_98
  loc_B3C7CF: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B3C7D4: FFree1Ad var_98
  loc_B3C7D9: LitI2_Byte 0
  loc_B3C7DB: ImpAdLdRf MemVar_C0F3D4
  loc_B3C7DE: NewIfNullPr frmSettings
  loc_B3C7E1: VCallAd Control_ID_Pictab_guest
  loc_B3C7E4: FStAdFunc var_98
  loc_B3C7E7: FLdPr var_98
  loc_B3C7EA: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B3C7EF: FFree1Ad var_98
  loc_B3C7F4: LitI2_Byte 0
  loc_B3C7F6: ImpAdLdRf MemVar_C0F3D4
  loc_B3C7F9: NewIfNullPr frmSettings
  loc_B3C7FC: VCallAd Control_ID_Pictab_public
  loc_B3C7FF: FStAdFunc var_98
  loc_B3C802: FLdPr var_98
  loc_B3C805: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B3C80A: FFree1Ad var_98
  loc_B3C80F: LitI2_Byte 0
  loc_B3C811: ImpAdLdRf MemVar_C0F3D4
  loc_B3C814: NewIfNullPr frmSettings
  loc_B3C817: VCallAd Control_ID_Pictab_ranks
  loc_B3C81A: FStAdFunc var_98
  loc_B3C81D: FLdPr var_98
  loc_B3C820: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B3C825: FFree1Ad var_98
  loc_B3C82A: LitI2_Byte 0
  loc_B3C82C: ImpAdLdRf MemVar_C0F3D4
  loc_B3C82F: NewIfNullPr frmSettings
  loc_B3C832: VCallAd Control_ID_Pictab_club
  loc_B3C835: FStAdFunc var_98
  loc_B3C838: FLdPr var_98
  loc_B3C83B: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B3C840: FFree1Ad var_98
  loc_B3C845: LitVar_FALSE
  loc_B3C849: PopAdLdVar
  loc_B3C84A: FLdRfVar var_9C
  loc_B3C84D: ImpAdLdRf MemVar_C0F3D4
  loc_B3C850: NewIfNullPr frmSettings
  loc_B3C853: VCallAd Control_ID_Label1
  loc_B3C856: FStAdFunc var_98
  loc_B3C859: FLdPr var_98
  loc_B3C85C:  = frmSettings.Label.Font
  loc_B3C861: FLdPr var_9C
  loc_B3C864: LateIdSt
  loc_B3C869: FFreeAd var_98 = ""
  loc_B3C872: LitVar_FALSE
  loc_B3C876: PopAdLdVar
  loc_B3C877: FLdRfVar var_9C
  loc_B3C87A: ImpAdLdRf MemVar_C0F3D4
  loc_B3C87D: NewIfNullPr frmSettings
  loc_B3C880: VCallAd Control_ID_Label2
  loc_B3C883: FStAdFunc var_98
  loc_B3C886: FLdPr var_98
  loc_B3C889:  = frmSettings.Label.Font
  loc_B3C88E: FLdPr var_9C
  loc_B3C891: LateIdSt
  loc_B3C896: FFreeAd var_98 = ""
  loc_B3C89F: LitVar_TRUE var_AC
  loc_B3C8A2: PopAdLdVar
  loc_B3C8A3: FLdRfVar var_9C
  loc_B3C8A6: ImpAdLdRf MemVar_C0F3D4
  loc_B3C8A9: NewIfNullPr frmSettings
  loc_B3C8AC: VCallAd Control_ID_Label3
  loc_B3C8AF: FStAdFunc var_98
  loc_B3C8B2: FLdPr var_98
  loc_B3C8B5:  = frmSettings.Label.Font
  loc_B3C8BA: FLdPr var_9C
  loc_B3C8BD: LateIdSt
  loc_B3C8C2: FFreeAd var_98 = ""
  loc_B3C8CB: LitVar_FALSE
  loc_B3C8CF: PopAdLdVar
  loc_B3C8D0: FLdRfVar var_9C
  loc_B3C8D3: ImpAdLdRf MemVar_C0F3D4
  loc_B3C8D6: NewIfNullPr frmSettings
  loc_B3C8D9: VCallAd Control_ID_Label4
  loc_B3C8DC: FStAdFunc var_98
  loc_B3C8DF: FLdPr var_98
  loc_B3C8E2:  = frmSettings.Label.Font
  loc_B3C8E7: FLdPr var_9C
  loc_B3C8EA: LateIdSt
  loc_B3C8EF: FFreeAd var_98 = ""
  loc_B3C8F8: LitVar_FALSE
  loc_B3C8FC: PopAdLdVar
  loc_B3C8FD: FLdRfVar var_9C
  loc_B3C900: ImpAdLdRf MemVar_C0F3D4
  loc_B3C903: NewIfNullPr frmSettings
  loc_B3C906: VCallAd Control_ID_Label5
  loc_B3C909: FStAdFunc var_98
  loc_B3C90C: FLdPr var_98
  loc_B3C90F:  = frmSettings.Label.Font
  loc_B3C914: FLdPr var_9C
  loc_B3C917: LateIdSt
  loc_B3C91C: FFreeAd var_98 = ""
  loc_B3C925: LitVar_FALSE
  loc_B3C929: PopAdLdVar
  loc_B3C92A: FLdRfVar var_9C
  loc_B3C92D: ImpAdLdRf MemVar_C0F3D4
  loc_B3C930: NewIfNullPr frmSettings
  loc_B3C933: VCallAd Control_ID_Label6
  loc_B3C936: FStAdFunc var_98
  loc_B3C939: FLdPr var_98
  loc_B3C93C:  = frmSettings.Label.Font
  loc_B3C941: FLdPr var_9C
  loc_B3C944: LateIdSt
  loc_B3C949: FFreeAd var_98 = ""
  loc_B3C952: LitVar_FALSE
  loc_B3C956: PopAdLdVar
  loc_B3C957: FLdRfVar var_9C
  loc_B3C95A: ImpAdLdRf MemVar_C0F3D4
  loc_B3C95D: NewIfNullPr frmSettings
  loc_B3C960: VCallAd Control_ID_Label7
  loc_B3C963: FStAdFunc var_98
  loc_B3C966: FLdPr var_98
  loc_B3C969:  = frmSettings.Label.Font
  loc_B3C96E: FLdPr var_9C
  loc_B3C971: LateIdSt
  loc_B3C976: FFreeAd var_98 = ""
  loc_B3C97F: LitVar_FALSE
  loc_B3C983: PopAdLdVar
  loc_B3C984: FLdRfVar var_9C
  loc_B3C987: ImpAdLdRf MemVar_C0F3D4
  loc_B3C98A: NewIfNullPr frmSettings
  loc_B3C98D: VCallAd Control_ID_Label8
  loc_B3C990: FStAdFunc var_98
  loc_B3C993: FLdPr var_98
  loc_B3C996:  = frmSettings.Label.Font
  loc_B3C99B: FLdPr var_9C
  loc_B3C99E: LateIdSt
  loc_B3C9A3: FFreeAd var_98 = ""
  loc_B3C9AC: LitVar_FALSE
  loc_B3C9B0: PopAdLdVar
  loc_B3C9B1: FLdRfVar var_9C
  loc_B3C9B4: ImpAdLdRf MemVar_C0F3D4
  loc_B3C9B7: NewIfNullPr frmSettings
  loc_B3C9BA: VCallAd Control_ID_Label9
  loc_B3C9BD: FStAdFunc var_98
  loc_B3C9C0: FLdPr var_98
  loc_B3C9C3:  = frmSettings.Label.Font
  loc_B3C9C8: FLdPr var_9C
  loc_B3C9CB: LateIdSt
  loc_B3C9D0: FFreeAd var_98 = ""
  loc_B3C9D9: LitVarStr var_AC, "tab_filter"
  loc_B3C9DE: PopAdLdVar
  loc_B3C9DF: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B3C9E4: FStStrNoPop var_C0
  loc_B3C9E7: ImpAdLdRf MemVar_C0F3D4
  loc_B3C9EA: NewIfNullPr frmSettings
  loc_B3C9ED: VCallAd Control_ID_title
  loc_B3C9F0: FStAdFunc var_98
  loc_B3C9F3: FLdPr var_98
  loc_B3C9F6: frmSettings.Label.Caption = from_stack_1
  loc_B3C9FB: FFree1Str var_C0
  loc_B3C9FE: FFree1Ad var_98
  loc_B3CA03: LitVarStr var_AC, "filterLabel1"
  loc_B3CA08: PopAdLdVar
  loc_B3CA09: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B3CA0E: FStStrNoPop var_C0
  loc_B3CA11: ImpAdLdRf MemVar_C0F3D4
  loc_B3CA14: NewIfNullPr frmSettings
  loc_B3CA17: VCallAd Control_ID_filterLabel1
  loc_B3CA1A: FStAdFunc var_98
  loc_B3CA1D: FLdPr var_98
  loc_B3CA20: frmSettings.Label.Caption = from_stack_1
  loc_B3CA25: FFree1Str var_C0
  loc_B3CA28: FFree1Ad var_98
  loc_B3CA2D: LitVarStr var_AC, "filterLabel2"
  loc_B3CA32: PopAdLdVar
  loc_B3CA33: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B3CA38: FStStrNoPop var_C0
  loc_B3CA3B: ImpAdLdRf MemVar_C0F3D4
  loc_B3CA3E: NewIfNullPr frmSettings
  loc_B3CA41: VCallAd Control_ID_filterLabel2
  loc_B3CA44: FStAdFunc var_98
  loc_B3CA47: FLdPr var_98
  loc_B3CA4A: frmSettings.Label.Caption = from_stack_1
  loc_B3CA4F: FFree1Str var_C0
  loc_B3CA52: FFree1Ad var_98
  loc_B3CA57: LitVarStr var_AC, "filterLabel3"
  loc_B3CA5C: PopAdLdVar
  loc_B3CA5D: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B3CA62: FStStrNoPop var_C0
  loc_B3CA65: ImpAdLdRf MemVar_C0F3D4
  loc_B3CA68: NewIfNullPr frmSettings
  loc_B3CA6B: VCallAd Control_ID_filterLabel3
  loc_B3CA6E: FStAdFunc var_98
  loc_B3CA71: FLdPr var_98
  loc_B3CA74: frmSettings.Label.Caption = from_stack_1
  loc_B3CA79: FFree1Str var_C0
  loc_B3CA7C: FFree1Ad var_98
  loc_B3CA81: LitVarStr var_AC, "filterCommand1"
  loc_B3CA86: PopAdLdVar
  loc_B3CA87: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B3CA8C: FStStrNoPop var_C0
  loc_B3CA8F: ImpAdLdRf MemVar_C0F3D4
  loc_B3CA92: NewIfNullPr frmSettings
  loc_B3CA95: VCallAd Control_ID_filterCommand1
  loc_B3CA98: FStAdFunc var_98
  loc_B3CA9B: FLdPr var_98
  loc_B3CA9E: frmSettings.CommandButton.Caption = from_stack_1
  loc_B3CAA3: FFree1Str var_C0
  loc_B3CAA6: FFree1Ad var_98
  loc_B3CAAB: LitI2 200
  loc_B3CAAE: LitI2 164
  loc_B3CAB1: LitI2_Byte &H65
  loc_B3CAB3: ImpAdCallI2 RGB(, , )
  loc_B3CAB8: ImpAdLdRf MemVar_C0F3D4
  loc_B3CABB: NewIfNullPr frmSettings
  loc_B3CABE: VCallAd Control_ID_Pictab_filter
  loc_B3CAC1: FStAdFunc var_98
  loc_B3CAC4: FLdPr var_98
  loc_B3CAC7: frmSettings.PictureBox.BackColor = from_stack_1
  loc_B3CACC: FFree1Ad var_98
  loc_B3CAD1: FLdRfVar var_C4
  loc_B3CAD4: FLdRfVar var_98
  loc_B3CAD7: LitI4 0
  loc_B3CADC: LitI2_Byte 0
  loc_B3CADE: LitI4 1
  loc_B3CAE3: ImpAdLdI4 MemVar_C0F044
  loc_B3CAE6: LitStr "configuration\bobbafilter.ini"
  loc_B3CAE9: ConcatStr
  loc_B3CAEA: FStStrNoPop var_C0
  loc_B3CAED: ImpAdLdRf MemVar_C0F040
  loc_B3CAF0: NewIfNullPr IFileSystem3
  loc_B3CAF3: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B3CAF8: FLdPr var_98
  loc_B3CAFB:  = Me.ReadAll
  loc_B3CB00: LitI4 0
  loc_B3CB05: LitI4 -1
  loc_B3CB0A: LitVarStr var_AC, vbCrLf
  loc_B3CB0F: FStVarCopyObj var_D4
  loc_B3CB12: FLdRfVar var_D4
  loc_B3CB15: ILdRf var_C4
  loc_B3CB18: FLdRfVar var_E4
  loc_B3CB1B: ImpAdCallFPR4  = Split(, , , )
  loc_B3CB20: FLdRfVar var_E4
  loc_B3CB23: FStVar var_F4
  loc_B3CB27: FFreeStr var_C0 = ""
  loc_B3CB2E: FFree1Ad var_98
  loc_B3CB31: FFree1Var var_D4 = ""
  loc_B3CB36: ImpAdLdRf MemVar_C0F3D4
  loc_B3CB39: NewIfNullPr frmSettings
  loc_B3CB3C: VCallAd Control_ID_filterList1
  loc_B3CB3F: FStAdFunc var_98
  loc_B3CB42: FLdPr var_98
  loc_B3CB45: frmSettings.ListBox.Clear
  loc_B3CB4A: FFree1Ad var_98
  loc_B3CB4F: LitVarI2 var_114, 0
  loc_B3CB54: FLdRfVar var_104
  loc_B3CB57: FLdRfVar var_F4
  loc_B3CB5A: CRefVarAry
  loc_B3CB5C: PopAdLd4
  loc_B3CB5D: LitI2_Byte 1
  loc_B3CB5F: FnUBound
  loc_B3CB61: CVarI4
  loc_B3CB65: ForVar var_134
  loc_B3CB6D: FLdRfVar var_104
  loc_B3CB70: CDargRef
  loc_B3CB74: FLdRfVar var_F4
  loc_B3CB77: VarIndexLdVar
  loc_B3CB7D: LitVarStr var_BC, vbNullString
  loc_B3CB82: HardType
  loc_B3CB83: NeVarBool
  loc_B3CB85: FFree1Var var_D4 = ""
  loc_B3CB88: BranchF loc_B3CBC2
  loc_B3CB8D: LitVar_Missing var_BC
  loc_B3CB90: PopAdLdVar
  loc_B3CB91: FLdRfVar var_104
  loc_B3CB94: CDargRef
  loc_B3CB98: FLdRfVar var_F4
  loc_B3CB9B: VarIndexLdVar
  loc_B3CBA1: CStrVarVal var_C0
  loc_B3CBA5: ImpAdLdRf MemVar_C0F3D4
  loc_B3CBA8: NewIfNullPr frmSettings
  loc_B3CBAB: VCallAd Control_ID_filterList1
  loc_B3CBAE: FStAdFunc var_98
  loc_B3CBB1: FLdPr var_98
  loc_B3CBB4: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B3CBB9: FFree1Str var_C0
  loc_B3CBBC: FFree1Ad var_98
  loc_B3CBBF: FFree1Var var_D4 = ""
  loc_B3CBC4: FLdRfVar var_104
  loc_B3CBC7: NextStepVar var_134
  loc_B3CBCF: LitI4 0
  loc_B3CBD4: FStStrCopy var_C0
  loc_B3CBD7: FLdRfVar var_C0
  loc_B3CBDA: ImpAdLdRf MemVar_C0F03C
  loc_B3CBDD: CVarRef
  loc_B3CBE2: LitVarStr var_BC, "replacement"
  loc_B3CBE7: FStVarCopyObj var_D4
  loc_B3CBEA: FLdRfVar var_D4
  loc_B3CBED: LitVarStr var_AC, "config"
  loc_B3CBF2: PopAdLdVar
  loc_B3CBF3: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B3CBF8: FStStrNoPop var_C4
  loc_B3CBFB: ImpAdLdRf MemVar_C0F3D4
  loc_B3CBFE: NewIfNullPr frmSettings
  loc_B3CC01: VCallAd Control_ID_filterText1
  loc_B3CC04: FStAdFunc var_98
  loc_B3CC07: FLdPr var_98
  loc_B3CC0A: frmSettings.TextBox.Text = from_stack_1
  loc_B3CC0F: FFreeStr var_C0 = ""
  loc_B3CC16: FFree1Ad var_98
  loc_B3CC19: FFree1Var var_D4 = ""
  loc_B3CC1E: LitI2_Byte 0
  loc_B3CC20: ImpAdLdRf MemVar_C0F3D4
  loc_B3CC23: NewIfNullPr frmSettings
  loc_B3CC26: VCallAd Control_ID_filterCommand1
  loc_B3CC29: FStAdFunc var_98
  loc_B3CC2C: FLdPr var_98
  loc_B3CC2F: frmSettings.CommandButton.Enabled = from_stack_1b
  loc_B3CC34: FFree1Ad var_98
  loc_B3CC39: ExitProcCb
End Function

Private Function Proc_27_4_B4464C() 'B4464C
  'Data Table: 53B72C
  loc_B43FA8: On Error Resume Next
  loc_B43FAD: LitI2 1440
  loc_B43FB0: CR8I2
  loc_B43FB1: PopFPR4
  loc_B43FB2: ImpAdLdRf MemVar_C0F3D4
  loc_B43FB5: NewIfNullPr frmSettings
  loc_B43FB8: VCallAd Control_ID_Pictab_habbos
  loc_B43FBB: FStAdFunc var_98
  loc_B43FBE: FLdPr var_98
  loc_B43FC1: frmSettings.PictureBox.Top = from_stack_1s
  loc_B43FC6: FFree1Ad var_98
  loc_B43FCB: LitI2 2160
  loc_B43FCE: CR8I2
  loc_B43FCF: PopFPR4
  loc_B43FD0: ImpAdLdRf MemVar_C0F3D4
  loc_B43FD3: NewIfNullPr frmSettings
  loc_B43FD6: VCallAd Control_ID_Pictab_habbos
  loc_B43FD9: FStAdFunc var_98
  loc_B43FDC: FLdPr var_98
  loc_B43FDF: frmSettings.PictureBox.Left = from_stack_1s
  loc_B43FE4: FFree1Ad var_98
  loc_B43FE9: LitI2_Byte 0
  loc_B43FEB: ImpAdLdRf MemVar_C0F3D4
  loc_B43FEE: NewIfNullPr frmSettings
  loc_B43FF1: VCallAd Control_ID_Pictab_main
  loc_B43FF4: FStAdFunc var_98
  loc_B43FF7: FLdPr var_98
  loc_B43FFA: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B43FFF: FFree1Ad var_98
  loc_B44004: LitI2_Byte 0
  loc_B44006: ImpAdLdRf MemVar_C0F3D4
  loc_B44009: NewIfNullPr frmSettings
  loc_B4400C: VCallAd Control_ID_Pictab_limits
  loc_B4400F: FStAdFunc var_98
  loc_B44012: FLdPr var_98
  loc_B44015: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4401A: FFree1Ad var_98
  loc_B4401F: LitI2_Byte 0
  loc_B44021: ImpAdLdRf MemVar_C0F3D4
  loc_B44024: NewIfNullPr frmSettings
  loc_B44027: VCallAd Control_ID_Pictab_filter
  loc_B4402A: FStAdFunc var_98
  loc_B4402D: FLdPr var_98
  loc_B44030: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B44035: FFree1Ad var_98
  loc_B4403A: LitI2_Byte &HFF
  loc_B4403C: ImpAdLdRf MemVar_C0F3D4
  loc_B4403F: NewIfNullPr frmSettings
  loc_B44042: VCallAd Control_ID_Pictab_habbos
  loc_B44045: FStAdFunc var_98
  loc_B44048: FLdPr var_98
  loc_B4404B: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B44050: FFree1Ad var_98
  loc_B44055: LitI2_Byte 0
  loc_B44057: ImpAdLdRf MemVar_C0F3D4
  loc_B4405A: NewIfNullPr frmSettings
  loc_B4405D: VCallAd Control_ID_Pictab_guest
  loc_B44060: FStAdFunc var_98
  loc_B44063: FLdPr var_98
  loc_B44066: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4406B: FFree1Ad var_98
  loc_B44070: LitI2_Byte 0
  loc_B44072: ImpAdLdRf MemVar_C0F3D4
  loc_B44075: NewIfNullPr frmSettings
  loc_B44078: VCallAd Control_ID_Pictab_public
  loc_B4407B: FStAdFunc var_98
  loc_B4407E: FLdPr var_98
  loc_B44081: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B44086: FFree1Ad var_98
  loc_B4408B: LitI2_Byte 0
  loc_B4408D: ImpAdLdRf MemVar_C0F3D4
  loc_B44090: NewIfNullPr frmSettings
  loc_B44093: VCallAd Control_ID_Pictab_ranks
  loc_B44096: FStAdFunc var_98
  loc_B44099: FLdPr var_98
  loc_B4409C: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B440A1: FFree1Ad var_98
  loc_B440A6: LitI2_Byte 0
  loc_B440A8: ImpAdLdRf MemVar_C0F3D4
  loc_B440AB: NewIfNullPr frmSettings
  loc_B440AE: VCallAd Control_ID_Pictab_club
  loc_B440B1: FStAdFunc var_98
  loc_B440B4: FLdPr var_98
  loc_B440B7: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B440BC: FFree1Ad var_98
  loc_B440C1: LitVar_FALSE
  loc_B440C5: PopAdLdVar
  loc_B440C6: FLdRfVar var_9C
  loc_B440C9: ImpAdLdRf MemVar_C0F3D4
  loc_B440CC: NewIfNullPr frmSettings
  loc_B440CF: VCallAd Control_ID_Label1
  loc_B440D2: FStAdFunc var_98
  loc_B440D5: FLdPr var_98
  loc_B440D8:  = frmSettings.Label.Font
  loc_B440DD: FLdPr var_9C
  loc_B440E0: LateIdSt
  loc_B440E5: FFreeAd var_98 = ""
  loc_B440EE: LitVar_FALSE
  loc_B440F2: PopAdLdVar
  loc_B440F3: FLdRfVar var_9C
  loc_B440F6: ImpAdLdRf MemVar_C0F3D4
  loc_B440F9: NewIfNullPr frmSettings
  loc_B440FC: VCallAd Control_ID_Label2
  loc_B440FF: FStAdFunc var_98
  loc_B44102: FLdPr var_98
  loc_B44105:  = frmSettings.Label.Font
  loc_B4410A: FLdPr var_9C
  loc_B4410D: LateIdSt
  loc_B44112: FFreeAd var_98 = ""
  loc_B4411B: LitVar_FALSE
  loc_B4411F: PopAdLdVar
  loc_B44120: FLdRfVar var_9C
  loc_B44123: ImpAdLdRf MemVar_C0F3D4
  loc_B44126: NewIfNullPr frmSettings
  loc_B44129: VCallAd Control_ID_Label3
  loc_B4412C: FStAdFunc var_98
  loc_B4412F: FLdPr var_98
  loc_B44132:  = frmSettings.Label.Font
  loc_B44137: FLdPr var_9C
  loc_B4413A: LateIdSt
  loc_B4413F: FFreeAd var_98 = ""
  loc_B44148: LitVar_TRUE var_AC
  loc_B4414B: PopAdLdVar
  loc_B4414C: FLdRfVar var_9C
  loc_B4414F: ImpAdLdRf MemVar_C0F3D4
  loc_B44152: NewIfNullPr frmSettings
  loc_B44155: VCallAd Control_ID_Label4
  loc_B44158: FStAdFunc var_98
  loc_B4415B: FLdPr var_98
  loc_B4415E:  = frmSettings.Label.Font
  loc_B44163: FLdPr var_9C
  loc_B44166: LateIdSt
  loc_B4416B: FFreeAd var_98 = ""
  loc_B44174: LitVar_FALSE
  loc_B44178: PopAdLdVar
  loc_B44179: FLdRfVar var_9C
  loc_B4417C: ImpAdLdRf MemVar_C0F3D4
  loc_B4417F: NewIfNullPr frmSettings
  loc_B44182: VCallAd Control_ID_Label5
  loc_B44185: FStAdFunc var_98
  loc_B44188: FLdPr var_98
  loc_B4418B:  = frmSettings.Label.Font
  loc_B44190: FLdPr var_9C
  loc_B44193: LateIdSt
  loc_B44198: FFreeAd var_98 = ""
  loc_B441A1: LitVar_FALSE
  loc_B441A5: PopAdLdVar
  loc_B441A6: FLdRfVar var_9C
  loc_B441A9: ImpAdLdRf MemVar_C0F3D4
  loc_B441AC: NewIfNullPr frmSettings
  loc_B441AF: VCallAd Control_ID_Label6
  loc_B441B2: FStAdFunc var_98
  loc_B441B5: FLdPr var_98
  loc_B441B8:  = frmSettings.Label.Font
  loc_B441BD: FLdPr var_9C
  loc_B441C0: LateIdSt
  loc_B441C5: FFreeAd var_98 = ""
  loc_B441CE: LitVar_FALSE
  loc_B441D2: PopAdLdVar
  loc_B441D3: FLdRfVar var_9C
  loc_B441D6: ImpAdLdRf MemVar_C0F3D4
  loc_B441D9: NewIfNullPr frmSettings
  loc_B441DC: VCallAd Control_ID_Label7
  loc_B441DF: FStAdFunc var_98
  loc_B441E2: FLdPr var_98
  loc_B441E5:  = frmSettings.Label.Font
  loc_B441EA: FLdPr var_9C
  loc_B441ED: LateIdSt
  loc_B441F2: FFreeAd var_98 = ""
  loc_B441FB: LitVar_FALSE
  loc_B441FF: PopAdLdVar
  loc_B44200: FLdRfVar var_9C
  loc_B44203: ImpAdLdRf MemVar_C0F3D4
  loc_B44206: NewIfNullPr frmSettings
  loc_B44209: VCallAd Control_ID_Label8
  loc_B4420C: FStAdFunc var_98
  loc_B4420F: FLdPr var_98
  loc_B44212:  = frmSettings.Label.Font
  loc_B44217: FLdPr var_9C
  loc_B4421A: LateIdSt
  loc_B4421F: FFreeAd var_98 = ""
  loc_B44228: LitVar_FALSE
  loc_B4422C: PopAdLdVar
  loc_B4422D: FLdRfVar var_9C
  loc_B44230: ImpAdLdRf MemVar_C0F3D4
  loc_B44233: NewIfNullPr frmSettings
  loc_B44236: VCallAd Control_ID_Label9
  loc_B44239: FStAdFunc var_98
  loc_B4423C: FLdPr var_98
  loc_B4423F:  = frmSettings.Label.Font
  loc_B44244: FLdPr var_9C
  loc_B44247: LateIdSt
  loc_B4424C: FFreeAd var_98 = ""
  loc_B44255: LitVarStr var_AC, "tab_habbos"
  loc_B4425A: PopAdLdVar
  loc_B4425B: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B44260: FStStrNoPop var_C0
  loc_B44263: ImpAdLdRf MemVar_C0F3D4
  loc_B44266: NewIfNullPr frmSettings
  loc_B44269: VCallAd Control_ID_title
  loc_B4426C: FStAdFunc var_98
  loc_B4426F: FLdPr var_98
  loc_B44272: frmSettings.Label.Caption = from_stack_1
  loc_B44277: FFree1Str var_C0
  loc_B4427A: FFree1Ad var_98
  loc_B4427F: LitVarStr var_AC, "habbosLabel1"
  loc_B44284: PopAdLdVar
  loc_B44285: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4428A: FStStrNoPop var_C0
  loc_B4428D: ImpAdLdRf MemVar_C0F3D4
  loc_B44290: NewIfNullPr frmSettings
  loc_B44293: VCallAd Control_ID_habbosLabel1
  loc_B44296: FStAdFunc var_98
  loc_B44299: FLdPr var_98
  loc_B4429C: frmSettings.Label.Caption = from_stack_1
  loc_B442A1: FFree1Str var_C0
  loc_B442A4: FFree1Ad var_98
  loc_B442A9: LitVarStr var_AC, "habbosLabel2"
  loc_B442AE: PopAdLdVar
  loc_B442AF: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B442B4: FStStrNoPop var_C0
  loc_B442B7: ImpAdLdRf MemVar_C0F3D4
  loc_B442BA: NewIfNullPr frmSettings
  loc_B442BD: VCallAd Control_ID_habbosLabel2
  loc_B442C0: FStAdFunc var_98
  loc_B442C3: FLdPr var_98
  loc_B442C6: frmSettings.Label.Caption = from_stack_1
  loc_B442CB: FFree1Str var_C0
  loc_B442CE: FFree1Ad var_98
  loc_B442D3: LitVarStr var_AC, "habbosLabel3"
  loc_B442D8: PopAdLdVar
  loc_B442D9: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B442DE: FStStrNoPop var_C0
  loc_B442E1: ImpAdLdRf MemVar_C0F3D4
  loc_B442E4: NewIfNullPr frmSettings
  loc_B442E7: VCallAd Control_ID_habbosLabel3
  loc_B442EA: FStAdFunc var_98
  loc_B442ED: FLdPr var_98
  loc_B442F0: frmSettings.Label.Caption = from_stack_1
  loc_B442F5: FFree1Str var_C0
  loc_B442F8: FFree1Ad var_98
  loc_B442FD: LitVarStr var_AC, "habbosLabel4"
  loc_B44302: PopAdLdVar
  loc_B44303: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B44308: FStStrNoPop var_C0
  loc_B4430B: ImpAdLdRf MemVar_C0F3D4
  loc_B4430E: NewIfNullPr frmSettings
  loc_B44311: VCallAd Control_ID_habbosLabel4
  loc_B44314: FStAdFunc var_98
  loc_B44317: FLdPr var_98
  loc_B4431A: frmSettings.Label.Caption = from_stack_1
  loc_B4431F: FFree1Str var_C0
  loc_B44322: FFree1Ad var_98
  loc_B44327: LitVarStr var_AC, "habbosLabel5"
  loc_B4432C: PopAdLdVar
  loc_B4432D: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B44332: FStStrNoPop var_C0
  loc_B44335: ImpAdLdRf MemVar_C0F3D4
  loc_B44338: NewIfNullPr frmSettings
  loc_B4433B: VCallAd Control_ID_habbosLabel5
  loc_B4433E: FStAdFunc var_98
  loc_B44341: FLdPr var_98
  loc_B44344: frmSettings.Label.Caption = from_stack_1
  loc_B44349: FFree1Str var_C0
  loc_B4434C: FFree1Ad var_98
  loc_B44351: LitVarStr var_AC, "habbosLabel6"
  loc_B44356: PopAdLdVar
  loc_B44357: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4435C: FStStrNoPop var_C0
  loc_B4435F: ImpAdLdRf MemVar_C0F3D4
  loc_B44362: NewIfNullPr frmSettings
  loc_B44365: VCallAd Control_ID_habbosLabel6
  loc_B44368: FStAdFunc var_98
  loc_B4436B: FLdPr var_98
  loc_B4436E: frmSettings.Label.Caption = from_stack_1
  loc_B44373: FFree1Str var_C0
  loc_B44376: FFree1Ad var_98
  loc_B4437B: LitVarStr var_AC, "habbosLabel7"
  loc_B44380: PopAdLdVar
  loc_B44381: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B44386: FStStrNoPop var_C0
  loc_B44389: ImpAdLdRf MemVar_C0F3D4
  loc_B4438C: NewIfNullPr frmSettings
  loc_B4438F: VCallAd Control_ID_habbosLabel7
  loc_B44392: FStAdFunc var_98
  loc_B44395: FLdPr var_98
  loc_B44398: frmSettings.Label.Caption = from_stack_1
  loc_B4439D: FFree1Str var_C0
  loc_B443A0: FFree1Ad var_98
  loc_B443A5: LitVarStr var_AC, "habbosLabel8"
  loc_B443AA: PopAdLdVar
  loc_B443AB: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B443B0: FStStrNoPop var_C0
  loc_B443B3: ImpAdLdRf MemVar_C0F3D4
  loc_B443B6: NewIfNullPr frmSettings
  loc_B443B9: VCallAd Control_ID_habbosLabel8
  loc_B443BC: FStAdFunc var_98
  loc_B443BF: FLdPr var_98
  loc_B443C2: frmSettings.Label.Caption = from_stack_1
  loc_B443C7: FFree1Str var_C0
  loc_B443CA: FFree1Ad var_98
  loc_B443CF: LitVarStr var_AC, "habbosLabel9"
  loc_B443D4: PopAdLdVar
  loc_B443D5: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B443DA: FStStrNoPop var_C0
  loc_B443DD: ImpAdLdRf MemVar_C0F3D4
  loc_B443E0: NewIfNullPr frmSettings
  loc_B443E3: VCallAd Control_ID_habbosLabel9
  loc_B443E6: FStAdFunc var_98
  loc_B443E9: FLdPr var_98
  loc_B443EC: frmSettings.Label.Caption = from_stack_1
  loc_B443F1: FFree1Str var_C0
  loc_B443F4: FFree1Ad var_98
  loc_B443F9: LitStr vbNullString
  loc_B443FC: ImpAdLdRf MemVar_C0F3D4
  loc_B443FF: NewIfNullPr frmSettings
  loc_B44402: VCallAd Control_ID_habbosText1
  loc_B44405: FStAdFunc var_98
  loc_B44408: FLdPr var_98
  loc_B4440B: frmSettings.TextBox.Text = from_stack_1
  loc_B44410: FFree1Ad var_98
  loc_B44415: LitStr vbNullString
  loc_B44418: ImpAdLdRf MemVar_C0F3D4
  loc_B4441B: NewIfNullPr frmSettings
  loc_B4441E: VCallAd Control_ID_habbosText2
  loc_B44421: FStAdFunc var_98
  loc_B44424: FLdPr var_98
  loc_B44427: frmSettings.TextBox.Text = from_stack_1
  loc_B4442C: FFree1Ad var_98
  loc_B44431: LitStr vbNullString
  loc_B44434: ImpAdLdRf MemVar_C0F3D4
  loc_B44437: NewIfNullPr frmSettings
  loc_B4443A: VCallAd Control_ID_habbosText3
  loc_B4443D: FStAdFunc var_98
  loc_B44440: FLdPr var_98
  loc_B44443: frmSettings.TextBox.Text = from_stack_1
  loc_B44448: FFree1Ad var_98
  loc_B4444D: LitStr vbNullString
  loc_B44450: ImpAdLdRf MemVar_C0F3D4
  loc_B44453: NewIfNullPr frmSettings
  loc_B44456: VCallAd Control_ID_habbosText4
  loc_B44459: FStAdFunc var_98
  loc_B4445C: FLdPr var_98
  loc_B4445F: frmSettings.TextBox.Text = from_stack_1
  loc_B44464: FFree1Ad var_98
  loc_B44469: LitStr vbNullString
  loc_B4446C: ImpAdLdRf MemVar_C0F3D4
  loc_B4446F: NewIfNullPr frmSettings
  loc_B44472: VCallAd Control_ID_habbosText5
  loc_B44475: FStAdFunc var_98
  loc_B44478: FLdPr var_98
  loc_B4447B: frmSettings.TextBox.Text = from_stack_1
  loc_B44480: FFree1Ad var_98
  loc_B44485: LitStr vbNullString
  loc_B44488: ImpAdLdRf MemVar_C0F3D4
  loc_B4448B: NewIfNullPr frmSettings
  loc_B4448E: VCallAd Control_ID_habbosText6
  loc_B44491: FStAdFunc var_98
  loc_B44494: FLdPr var_98
  loc_B44497: frmSettings.TextBox.Text = from_stack_1
  loc_B4449C: FFree1Ad var_98
  loc_B444A1: LitStr vbNullString
  loc_B444A4: ImpAdLdRf MemVar_C0F3D4
  loc_B444A7: NewIfNullPr frmSettings
  loc_B444AA: VCallAd Control_ID_habbosText7
  loc_B444AD: FStAdFunc var_98
  loc_B444B0: FLdPr var_98
  loc_B444B3: frmSettings.TextBox.Text = from_stack_1
  loc_B444B8: FFree1Ad var_98
  loc_B444BD: LitStr "Ranks"
  loc_B444C0: ImpAdLdRf MemVar_C0F3D4
  loc_B444C3: NewIfNullPr frmSettings
  loc_B444C6: VCallAd Control_ID_habbosCombo1
  loc_B444C9: FStAdFunc var_98
  loc_B444CC: FLdPr var_98
  loc_B444CF: frmSettings.ComboBox.Text = from_stack_1
  loc_B444D4: FFree1Ad var_98
  loc_B444D9: LitVarStr var_AC, "savebutton"
  loc_B444DE: PopAdLdVar
  loc_B444DF: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B444E4: FStStrNoPop var_C0
  loc_B444E7: ImpAdLdRf MemVar_C0F3D4
  loc_B444EA: NewIfNullPr frmSettings
  loc_B444ED: VCallAd Control_ID_habbosCommand1
  loc_B444F0: FStAdFunc var_98
  loc_B444F3: FLdPr var_98
  loc_B444F6: frmSettings.CommandButton.Caption = from_stack_1
  loc_B444FB: FFree1Str var_C0
  loc_B444FE: FFree1Ad var_98
  loc_B44503: LitVarStr var_AC, "restorebutton"
  loc_B44508: PopAdLdVar
  loc_B44509: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4450E: FStStrNoPop var_C0
  loc_B44511: ImpAdLdRf MemVar_C0F3D4
  loc_B44514: NewIfNullPr frmSettings
  loc_B44517: VCallAd Control_ID_habbosCommand2
  loc_B4451A: FStAdFunc var_98
  loc_B4451D: FLdPr var_98
  loc_B44520: frmSettings.CommandButton.Caption = from_stack_1
  loc_B44525: FFree1Str var_C0
  loc_B44528: FFree1Ad var_98
  loc_B4452D: LitI2 200
  loc_B44530: LitI2 164
  loc_B44533: LitI2_Byte &H65
  loc_B44535: ImpAdCallI2 RGB(, , )
  loc_B4453A: ImpAdLdRf MemVar_C0F3D4
  loc_B4453D: NewIfNullPr frmSettings
  loc_B44540: VCallAd Control_ID_Pictab_habbos
  loc_B44543: FStAdFunc var_98
  loc_B44546: FLdPr var_98
  loc_B44549: frmSettings.PictureBox.BackColor = from_stack_1
  loc_B4454E: FFree1Ad var_98
  loc_B44553: ImpAdLdRf MemVar_C0F3D4
  loc_B44556: NewIfNullPr frmSettings
  loc_B44559: VCallAd Control_ID_habbosList1
  loc_B4455C: FStAdFunc var_98
  loc_B4455F: FLdPr var_98
  loc_B44562: frmSettings.ListBox.Clear
  loc_B44567: FFree1Ad var_98
  loc_B4456C: FLdRfVar var_9C
  loc_B4456F: FLdRfVar var_98
  loc_B44572: ImpAdLdI4 MemVar_C0F044
  loc_B44575: LitStr "habbos"
  loc_B44578: ConcatStr
  loc_B44579: FStStrNoPop var_C0
  loc_B4457C: ImpAdLdRf MemVar_C0F040
  loc_B4457F: NewIfNullPr IFileSystem3
  loc_B44582: from_stack_2 = IFileSystem3.IFileSystem.GetFolder(from_stack_1v)
  loc_B44587: FLdPr var_98
  loc_B4458A:  = Me.SubFolders
  loc_B4458F: FLdZeroAd var_9C
  loc_B44592: FStAdFuncNoPop
  loc_B44595: FLdRfVar var_D0
  loc_B44598: FFree1Str var_C0
  loc_B4459B: FFree1Ad var_98
  loc_B4459E: ForEachCollVar var_D8
  loc_B445A6: FLdRfVar var_EA
  loc_B445A9: FLdRfVar var_D0
  loc_B445AC: LitVarStr var_AC, "\name.txt"
  loc_B445B1: ConcatVar var_E8
  loc_B445B5: CStrVarVal var_C0
  loc_B445B9: ImpAdLdRf MemVar_C0F040
  loc_B445BC: NewIfNullPr IFileSystem3
  loc_B445BF: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B445C4: FLdI2 var_EA
  loc_B445C7: LitI2_Byte &HFF
  loc_B445C9: EqI2
  loc_B445CA: FFree1Str var_C0
  loc_B445CD: FFree1Var var_E8 = ""
  loc_B445D0: BranchF loc_B44636
  loc_B445D5: FLdRfVar var_F0
  loc_B445D8: FLdRfVar var_98
  loc_B445DB: LitI4 0
  loc_B445E0: LitI2_Byte 0
  loc_B445E2: LitI4 1
  loc_B445E7: FLdRfVar var_D0
  loc_B445EA: LitVarStr var_AC, "\name.txt"
  loc_B445EF: ConcatVar var_E8
  loc_B445F3: CStrVarVal var_C0
  loc_B445F7: ImpAdLdRf MemVar_C0F040
  loc_B445FA: NewIfNullPr IFileSystem3
  loc_B445FD: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B44602: FLdPr var_98
  loc_B44605:  = Me.ReadAll
  loc_B4460A: LitVar_Missing var_BC
  loc_B4460D: PopAdLdVar
  loc_B4460E: ILdRf var_F0
  loc_B44611: ImpAdLdRf MemVar_C0F3D4
  loc_B44614: NewIfNullPr frmSettings
  loc_B44617: VCallAd Control_ID_habbosList1
  loc_B4461A: FStAdFunc var_9C
  loc_B4461D: FLdPr var_9C
  loc_B44620: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B44625: FFreeStr var_C0 = ""
  loc_B4462C: FFreeAd var_98 = ""
  loc_B44633: FFree1Var var_E8 = ""
  loc_B4463A: FLdRfVar var_D0
  loc_B4463D: NextEachCollVar var_D8
  loc_B44645: ExitProcCb
End Function

Private Function Proc_27_5_B32180() 'B32180
  'Data Table: 53B72C
  loc_B31E1C: On Error Resume Next
  loc_B31E21: LitI2 1440
  loc_B31E24: CR8I2
  loc_B31E25: PopFPR4
  loc_B31E26: ImpAdLdRf MemVar_C0F3D4
  loc_B31E29: NewIfNullPr frmSettings
  loc_B31E2C: VCallAd Control_ID_Pictab_guest
  loc_B31E2F: FStAdFunc var_98
  loc_B31E32: FLdPr var_98
  loc_B31E35: frmSettings.PictureBox.Top = from_stack_1s
  loc_B31E3A: FFree1Ad var_98
  loc_B31E3F: LitI2 2160
  loc_B31E42: CR8I2
  loc_B31E43: PopFPR4
  loc_B31E44: ImpAdLdRf MemVar_C0F3D4
  loc_B31E47: NewIfNullPr frmSettings
  loc_B31E4A: VCallAd Control_ID_Pictab_guest
  loc_B31E4D: FStAdFunc var_98
  loc_B31E50: FLdPr var_98
  loc_B31E53: frmSettings.PictureBox.Left = from_stack_1s
  loc_B31E58: FFree1Ad var_98
  loc_B31E5D: LitI2_Byte 0
  loc_B31E5F: ImpAdLdRf MemVar_C0F3D4
  loc_B31E62: NewIfNullPr frmSettings
  loc_B31E65: VCallAd Control_ID_Pictab_main
  loc_B31E68: FStAdFunc var_98
  loc_B31E6B: FLdPr var_98
  loc_B31E6E: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B31E73: FFree1Ad var_98
  loc_B31E78: LitI2_Byte 0
  loc_B31E7A: ImpAdLdRf MemVar_C0F3D4
  loc_B31E7D: NewIfNullPr frmSettings
  loc_B31E80: VCallAd Control_ID_Pictab_limits
  loc_B31E83: FStAdFunc var_98
  loc_B31E86: FLdPr var_98
  loc_B31E89: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B31E8E: FFree1Ad var_98
  loc_B31E93: LitI2_Byte 0
  loc_B31E95: ImpAdLdRf MemVar_C0F3D4
  loc_B31E98: NewIfNullPr frmSettings
  loc_B31E9B: VCallAd Control_ID_Pictab_filter
  loc_B31E9E: FStAdFunc var_98
  loc_B31EA1: FLdPr var_98
  loc_B31EA4: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B31EA9: FFree1Ad var_98
  loc_B31EAE: LitI2_Byte 0
  loc_B31EB0: ImpAdLdRf MemVar_C0F3D4
  loc_B31EB3: NewIfNullPr frmSettings
  loc_B31EB6: VCallAd Control_ID_Pictab_habbos
  loc_B31EB9: FStAdFunc var_98
  loc_B31EBC: FLdPr var_98
  loc_B31EBF: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B31EC4: FFree1Ad var_98
  loc_B31EC9: LitI2_Byte &HFF
  loc_B31ECB: ImpAdLdRf MemVar_C0F3D4
  loc_B31ECE: NewIfNullPr frmSettings
  loc_B31ED1: VCallAd Control_ID_Pictab_guest
  loc_B31ED4: FStAdFunc var_98
  loc_B31ED7: FLdPr var_98
  loc_B31EDA: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B31EDF: FFree1Ad var_98
  loc_B31EE4: LitI2_Byte 0
  loc_B31EE6: ImpAdLdRf MemVar_C0F3D4
  loc_B31EE9: NewIfNullPr frmSettings
  loc_B31EEC: VCallAd Control_ID_Pictab_public
  loc_B31EEF: FStAdFunc var_98
  loc_B31EF2: FLdPr var_98
  loc_B31EF5: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B31EFA: FFree1Ad var_98
  loc_B31EFF: LitI2_Byte 0
  loc_B31F01: ImpAdLdRf MemVar_C0F3D4
  loc_B31F04: NewIfNullPr frmSettings
  loc_B31F07: VCallAd Control_ID_Pictab_ranks
  loc_B31F0A: FStAdFunc var_98
  loc_B31F0D: FLdPr var_98
  loc_B31F10: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B31F15: FFree1Ad var_98
  loc_B31F1A: LitI2_Byte 0
  loc_B31F1C: ImpAdLdRf MemVar_C0F3D4
  loc_B31F1F: NewIfNullPr frmSettings
  loc_B31F22: VCallAd Control_ID_Pictab_club
  loc_B31F25: FStAdFunc var_98
  loc_B31F28: FLdPr var_98
  loc_B31F2B: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B31F30: FFree1Ad var_98
  loc_B31F35: LitVar_FALSE
  loc_B31F39: PopAdLdVar
  loc_B31F3A: FLdRfVar var_9C
  loc_B31F3D: ImpAdLdRf MemVar_C0F3D4
  loc_B31F40: NewIfNullPr frmSettings
  loc_B31F43: VCallAd Control_ID_Label1
  loc_B31F46: FStAdFunc var_98
  loc_B31F49: FLdPr var_98
  loc_B31F4C:  = frmSettings.Label.Font
  loc_B31F51: FLdPr var_9C
  loc_B31F54: LateIdSt
  loc_B31F59: FFreeAd var_98 = ""
  loc_B31F62: LitVar_FALSE
  loc_B31F66: PopAdLdVar
  loc_B31F67: FLdRfVar var_9C
  loc_B31F6A: ImpAdLdRf MemVar_C0F3D4
  loc_B31F6D: NewIfNullPr frmSettings
  loc_B31F70: VCallAd Control_ID_Label2
  loc_B31F73: FStAdFunc var_98
  loc_B31F76: FLdPr var_98
  loc_B31F79:  = frmSettings.Label.Font
  loc_B31F7E: FLdPr var_9C
  loc_B31F81: LateIdSt
  loc_B31F86: FFreeAd var_98 = ""
  loc_B31F8F: LitVar_FALSE
  loc_B31F93: PopAdLdVar
  loc_B31F94: FLdRfVar var_9C
  loc_B31F97: ImpAdLdRf MemVar_C0F3D4
  loc_B31F9A: NewIfNullPr frmSettings
  loc_B31F9D: VCallAd Control_ID_Label3
  loc_B31FA0: FStAdFunc var_98
  loc_B31FA3: FLdPr var_98
  loc_B31FA6:  = frmSettings.Label.Font
  loc_B31FAB: FLdPr var_9C
  loc_B31FAE: LateIdSt
  loc_B31FB3: FFreeAd var_98 = ""
  loc_B31FBC: LitVar_FALSE
  loc_B31FC0: PopAdLdVar
  loc_B31FC1: FLdRfVar var_9C
  loc_B31FC4: ImpAdLdRf MemVar_C0F3D4
  loc_B31FC7: NewIfNullPr frmSettings
  loc_B31FCA: VCallAd Control_ID_Label4
  loc_B31FCD: FStAdFunc var_98
  loc_B31FD0: FLdPr var_98
  loc_B31FD3:  = frmSettings.Label.Font
  loc_B31FD8: FLdPr var_9C
  loc_B31FDB: LateIdSt
  loc_B31FE0: FFreeAd var_98 = ""
  loc_B31FE9: LitVar_TRUE var_AC
  loc_B31FEC: PopAdLdVar
  loc_B31FED: FLdRfVar var_9C
  loc_B31FF0: ImpAdLdRf MemVar_C0F3D4
  loc_B31FF3: NewIfNullPr frmSettings
  loc_B31FF6: VCallAd Control_ID_Label5
  loc_B31FF9: FStAdFunc var_98
  loc_B31FFC: FLdPr var_98
  loc_B31FFF:  = frmSettings.Label.Font
  loc_B32004: FLdPr var_9C
  loc_B32007: LateIdSt
  loc_B3200C: FFreeAd var_98 = ""
  loc_B32015: LitVar_FALSE
  loc_B32019: PopAdLdVar
  loc_B3201A: FLdRfVar var_9C
  loc_B3201D: ImpAdLdRf MemVar_C0F3D4
  loc_B32020: NewIfNullPr frmSettings
  loc_B32023: VCallAd Control_ID_Label6
  loc_B32026: FStAdFunc var_98
  loc_B32029: FLdPr var_98
  loc_B3202C:  = frmSettings.Label.Font
  loc_B32031: FLdPr var_9C
  loc_B32034: LateIdSt
  loc_B32039: FFreeAd var_98 = ""
  loc_B32042: LitVar_FALSE
  loc_B32046: PopAdLdVar
  loc_B32047: FLdRfVar var_9C
  loc_B3204A: ImpAdLdRf MemVar_C0F3D4
  loc_B3204D: NewIfNullPr frmSettings
  loc_B32050: VCallAd Control_ID_Label7
  loc_B32053: FStAdFunc var_98
  loc_B32056: FLdPr var_98
  loc_B32059:  = frmSettings.Label.Font
  loc_B3205E: FLdPr var_9C
  loc_B32061: LateIdSt
  loc_B32066: FFreeAd var_98 = ""
  loc_B3206F: LitVar_FALSE
  loc_B32073: PopAdLdVar
  loc_B32074: FLdRfVar var_9C
  loc_B32077: ImpAdLdRf MemVar_C0F3D4
  loc_B3207A: NewIfNullPr frmSettings
  loc_B3207D: VCallAd Control_ID_Label8
  loc_B32080: FStAdFunc var_98
  loc_B32083: FLdPr var_98
  loc_B32086:  = frmSettings.Label.Font
  loc_B3208B: FLdPr var_9C
  loc_B3208E: LateIdSt
  loc_B32093: FFreeAd var_98 = ""
  loc_B3209C: LitVar_FALSE
  loc_B320A0: PopAdLdVar
  loc_B320A1: FLdRfVar var_9C
  loc_B320A4: ImpAdLdRf MemVar_C0F3D4
  loc_B320A7: NewIfNullPr frmSettings
  loc_B320AA: VCallAd Control_ID_Label9
  loc_B320AD: FStAdFunc var_98
  loc_B320B0: FLdPr var_98
  loc_B320B3:  = frmSettings.Label.Font
  loc_B320B8: FLdPr var_9C
  loc_B320BB: LateIdSt
  loc_B320C0: FFreeAd var_98 = ""
  loc_B320C9: LitVarStr var_AC, "tab_guestrooms"
  loc_B320CE: PopAdLdVar
  loc_B320CF: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B320D4: FStStrNoPop var_C0
  loc_B320D7: ImpAdLdRf MemVar_C0F3D4
  loc_B320DA: NewIfNullPr frmSettings
  loc_B320DD: VCallAd Control_ID_title
  loc_B320E0: FStAdFunc var_98
  loc_B320E3: FLdPr var_98
  loc_B320E6: frmSettings.Label.Caption = from_stack_1
  loc_B320EB: FFree1Str var_C0
  loc_B320EE: FFree1Ad var_98
  loc_B320F3: LitVarStr var_AC, "guestLabel1"
  loc_B320F8: PopAdLdVar
  loc_B320F9: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B320FE: FStStrNoPop var_C0
  loc_B32101: ImpAdLdRf MemVar_C0F3D4
  loc_B32104: NewIfNullPr frmSettings
  loc_B32107: VCallAd Control_ID_guestLabel1
  loc_B3210A: FStAdFunc var_98
  loc_B3210D: FLdPr var_98
  loc_B32110: frmSettings.Label.Caption = from_stack_1
  loc_B32115: FFree1Str var_C0
  loc_B32118: FFree1Ad var_98
  loc_B3211D: LitVarStr var_AC, "guestLabel2"
  loc_B32122: PopAdLdVar
  loc_B32123: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B32128: FStStrNoPop var_C0
  loc_B3212B: ImpAdLdRf MemVar_C0F3D4
  loc_B3212E: NewIfNullPr frmSettings
  loc_B32131: VCallAd Control_ID_guestLabel2
  loc_B32134: FStAdFunc var_98
  loc_B32137: FLdPr var_98
  loc_B3213A: frmSettings.Label.Caption = from_stack_1
  loc_B3213F: FFree1Str var_C0
  loc_B32142: FFree1Ad var_98
  loc_B32147: LitI2 200
  loc_B3214A: LitI2 164
  loc_B3214D: LitI2_Byte &H65
  loc_B3214F: ImpAdCallI2 RGB(, , )
  loc_B32154: ImpAdLdRf MemVar_C0F3D4
  loc_B32157: NewIfNullPr frmSettings
  loc_B3215A: VCallAd Control_ID_Pictab_guest
  loc_B3215D: FStAdFunc var_98
  loc_B32160: FLdPr var_98
  loc_B32163: frmSettings.PictureBox.BackColor = from_stack_1
  loc_B32168: FFree1Ad var_98
  loc_B3216D: FLdRfVar var_D0
  loc_B32170: ImpAdCallFPR4 Proc_27_6_B4A6E4()
  loc_B32175: FFree1Var var_D0 = ""
  loc_B3217A: ExitProcCb
End Function

Private Function Proc_27_6_B4A6E4() 'B4A6E4
  'Data Table: 53B72C
  loc_B49FD0: On Error Resume Next
  loc_B49FD5: LitI2 1440
  loc_B49FD8: CR8I2
  loc_B49FD9: PopFPR4
  loc_B49FDA: ImpAdLdRf MemVar_C0F3D4
  loc_B49FDD: NewIfNullPr frmSettings
  loc_B49FE0: VCallAd Control_ID_Pictab_guest
  loc_B49FE3: FStAdFunc var_98
  loc_B49FE6: FLdPr var_98
  loc_B49FE9: frmSettings.PictureBox.Top = from_stack_1s
  loc_B49FEE: FFree1Ad var_98
  loc_B49FF3: LitI2 2160
  loc_B49FF6: CR8I2
  loc_B49FF7: PopFPR4
  loc_B49FF8: ImpAdLdRf MemVar_C0F3D4
  loc_B49FFB: NewIfNullPr frmSettings
  loc_B49FFE: VCallAd Control_ID_Pictab_guest
  loc_B4A001: FStAdFunc var_98
  loc_B4A004: FLdPr var_98
  loc_B4A007: frmSettings.PictureBox.Left = from_stack_1s
  loc_B4A00C: FFree1Ad var_98
  loc_B4A011: LitI2_Byte 0
  loc_B4A013: ImpAdLdRf MemVar_C0F3D4
  loc_B4A016: NewIfNullPr frmSettings
  loc_B4A019: VCallAd Control_ID_Pictab_main
  loc_B4A01C: FStAdFunc var_98
  loc_B4A01F: FLdPr var_98
  loc_B4A022: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4A027: FFree1Ad var_98
  loc_B4A02C: LitI2_Byte 0
  loc_B4A02E: ImpAdLdRf MemVar_C0F3D4
  loc_B4A031: NewIfNullPr frmSettings
  loc_B4A034: VCallAd Control_ID_Pictab_limits
  loc_B4A037: FStAdFunc var_98
  loc_B4A03A: FLdPr var_98
  loc_B4A03D: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4A042: FFree1Ad var_98
  loc_B4A047: LitI2_Byte 0
  loc_B4A049: ImpAdLdRf MemVar_C0F3D4
  loc_B4A04C: NewIfNullPr frmSettings
  loc_B4A04F: VCallAd Control_ID_Pictab_filter
  loc_B4A052: FStAdFunc var_98
  loc_B4A055: FLdPr var_98
  loc_B4A058: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4A05D: FFree1Ad var_98
  loc_B4A062: LitI2_Byte 0
  loc_B4A064: ImpAdLdRf MemVar_C0F3D4
  loc_B4A067: NewIfNullPr frmSettings
  loc_B4A06A: VCallAd Control_ID_Pictab_habbos
  loc_B4A06D: FStAdFunc var_98
  loc_B4A070: FLdPr var_98
  loc_B4A073: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4A078: FFree1Ad var_98
  loc_B4A07D: LitI2_Byte &HFF
  loc_B4A07F: ImpAdLdRf MemVar_C0F3D4
  loc_B4A082: NewIfNullPr frmSettings
  loc_B4A085: VCallAd Control_ID_Pictab_guest
  loc_B4A088: FStAdFunc var_98
  loc_B4A08B: FLdPr var_98
  loc_B4A08E: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4A093: FFree1Ad var_98
  loc_B4A098: LitI2_Byte 0
  loc_B4A09A: ImpAdLdRf MemVar_C0F3D4
  loc_B4A09D: NewIfNullPr frmSettings
  loc_B4A0A0: VCallAd Control_ID_Pictab_public
  loc_B4A0A3: FStAdFunc var_98
  loc_B4A0A6: FLdPr var_98
  loc_B4A0A9: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4A0AE: FFree1Ad var_98
  loc_B4A0B3: LitI2_Byte 0
  loc_B4A0B5: ImpAdLdRf MemVar_C0F3D4
  loc_B4A0B8: NewIfNullPr frmSettings
  loc_B4A0BB: VCallAd Control_ID_Pictab_ranks
  loc_B4A0BE: FStAdFunc var_98
  loc_B4A0C1: FLdPr var_98
  loc_B4A0C4: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4A0C9: FFree1Ad var_98
  loc_B4A0CE: LitI2_Byte 0
  loc_B4A0D0: ImpAdLdRf MemVar_C0F3D4
  loc_B4A0D3: NewIfNullPr frmSettings
  loc_B4A0D6: VCallAd Control_ID_Pictab_club
  loc_B4A0D9: FStAdFunc var_98
  loc_B4A0DC: FLdPr var_98
  loc_B4A0DF: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4A0E4: FFree1Ad var_98
  loc_B4A0E9: LitVar_FALSE
  loc_B4A0ED: PopAdLdVar
  loc_B4A0EE: FLdRfVar var_9C
  loc_B4A0F1: ImpAdLdRf MemVar_C0F3D4
  loc_B4A0F4: NewIfNullPr frmSettings
  loc_B4A0F7: VCallAd Control_ID_Label1
  loc_B4A0FA: FStAdFunc var_98
  loc_B4A0FD: FLdPr var_98
  loc_B4A100:  = frmSettings.Label.Font
  loc_B4A105: FLdPr var_9C
  loc_B4A108: LateIdSt
  loc_B4A10D: FFreeAd var_98 = ""
  loc_B4A116: LitVar_FALSE
  loc_B4A11A: PopAdLdVar
  loc_B4A11B: FLdRfVar var_9C
  loc_B4A11E: ImpAdLdRf MemVar_C0F3D4
  loc_B4A121: NewIfNullPr frmSettings
  loc_B4A124: VCallAd Control_ID_Label2
  loc_B4A127: FStAdFunc var_98
  loc_B4A12A: FLdPr var_98
  loc_B4A12D:  = frmSettings.Label.Font
  loc_B4A132: FLdPr var_9C
  loc_B4A135: LateIdSt
  loc_B4A13A: FFreeAd var_98 = ""
  loc_B4A143: LitVar_FALSE
  loc_B4A147: PopAdLdVar
  loc_B4A148: FLdRfVar var_9C
  loc_B4A14B: ImpAdLdRf MemVar_C0F3D4
  loc_B4A14E: NewIfNullPr frmSettings
  loc_B4A151: VCallAd Control_ID_Label3
  loc_B4A154: FStAdFunc var_98
  loc_B4A157: FLdPr var_98
  loc_B4A15A:  = frmSettings.Label.Font
  loc_B4A15F: FLdPr var_9C
  loc_B4A162: LateIdSt
  loc_B4A167: FFreeAd var_98 = ""
  loc_B4A170: LitVar_FALSE
  loc_B4A174: PopAdLdVar
  loc_B4A175: FLdRfVar var_9C
  loc_B4A178: ImpAdLdRf MemVar_C0F3D4
  loc_B4A17B: NewIfNullPr frmSettings
  loc_B4A17E: VCallAd Control_ID_Label4
  loc_B4A181: FStAdFunc var_98
  loc_B4A184: FLdPr var_98
  loc_B4A187:  = frmSettings.Label.Font
  loc_B4A18C: FLdPr var_9C
  loc_B4A18F: LateIdSt
  loc_B4A194: FFreeAd var_98 = ""
  loc_B4A19D: LitVar_TRUE var_AC
  loc_B4A1A0: PopAdLdVar
  loc_B4A1A1: FLdRfVar var_9C
  loc_B4A1A4: ImpAdLdRf MemVar_C0F3D4
  loc_B4A1A7: NewIfNullPr frmSettings
  loc_B4A1AA: VCallAd Control_ID_Label5
  loc_B4A1AD: FStAdFunc var_98
  loc_B4A1B0: FLdPr var_98
  loc_B4A1B3:  = frmSettings.Label.Font
  loc_B4A1B8: FLdPr var_9C
  loc_B4A1BB: LateIdSt
  loc_B4A1C0: FFreeAd var_98 = ""
  loc_B4A1C9: LitVar_FALSE
  loc_B4A1CD: PopAdLdVar
  loc_B4A1CE: FLdRfVar var_9C
  loc_B4A1D1: ImpAdLdRf MemVar_C0F3D4
  loc_B4A1D4: NewIfNullPr frmSettings
  loc_B4A1D7: VCallAd Control_ID_Label6
  loc_B4A1DA: FStAdFunc var_98
  loc_B4A1DD: FLdPr var_98
  loc_B4A1E0:  = frmSettings.Label.Font
  loc_B4A1E5: FLdPr var_9C
  loc_B4A1E8: LateIdSt
  loc_B4A1ED: FFreeAd var_98 = ""
  loc_B4A1F6: LitVar_FALSE
  loc_B4A1FA: PopAdLdVar
  loc_B4A1FB: FLdRfVar var_9C
  loc_B4A1FE: ImpAdLdRf MemVar_C0F3D4
  loc_B4A201: NewIfNullPr frmSettings
  loc_B4A204: VCallAd Control_ID_Label7
  loc_B4A207: FStAdFunc var_98
  loc_B4A20A: FLdPr var_98
  loc_B4A20D:  = frmSettings.Label.Font
  loc_B4A212: FLdPr var_9C
  loc_B4A215: LateIdSt
  loc_B4A21A: FFreeAd var_98 = ""
  loc_B4A223: LitVar_FALSE
  loc_B4A227: PopAdLdVar
  loc_B4A228: FLdRfVar var_9C
  loc_B4A22B: ImpAdLdRf MemVar_C0F3D4
  loc_B4A22E: NewIfNullPr frmSettings
  loc_B4A231: VCallAd Control_ID_Label8
  loc_B4A234: FStAdFunc var_98
  loc_B4A237: FLdPr var_98
  loc_B4A23A:  = frmSettings.Label.Font
  loc_B4A23F: FLdPr var_9C
  loc_B4A242: LateIdSt
  loc_B4A247: FFreeAd var_98 = ""
  loc_B4A250: LitVar_FALSE
  loc_B4A254: PopAdLdVar
  loc_B4A255: FLdRfVar var_9C
  loc_B4A258: ImpAdLdRf MemVar_C0F3D4
  loc_B4A25B: NewIfNullPr frmSettings
  loc_B4A25E: VCallAd Control_ID_Label9
  loc_B4A261: FStAdFunc var_98
  loc_B4A264: FLdPr var_98
  loc_B4A267:  = frmSettings.Label.Font
  loc_B4A26C: FLdPr var_9C
  loc_B4A26F: LateIdSt
  loc_B4A274: FFreeAd var_98 = ""
  loc_B4A27D: LitI2_Byte &HFF
  loc_B4A27F: ImpAdLdRf MemVar_C0F3D4
  loc_B4A282: NewIfNullPr frmSettings
  loc_B4A285: VCallAd Control_ID_Pictab_guestroom
  loc_B4A288: FStAdFunc var_98
  loc_B4A28B: FLdPr var_98
  loc_B4A28E: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4A293: FFree1Ad var_98
  loc_B4A298: LitI2_Byte 0
  loc_B4A29A: ImpAdLdRf MemVar_C0F3D4
  loc_B4A29D: NewIfNullPr frmSettings
  loc_B4A2A0: VCallAd Control_ID_Pictab_guestcategories
  loc_B4A2A3: FStAdFunc var_98
  loc_B4A2A6: FLdPr var_98
  loc_B4A2A9: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4A2AE: FFree1Ad var_98
  loc_B4A2B3: LitVar_TRUE var_AC
  loc_B4A2B6: PopAdLdVar
  loc_B4A2B7: FLdRfVar var_9C
  loc_B4A2BA: ImpAdLdRf MemVar_C0F3D4
  loc_B4A2BD: NewIfNullPr frmSettings
  loc_B4A2C0: VCallAd Control_ID_guestLabel1
  loc_B4A2C3: FStAdFunc var_98
  loc_B4A2C6: FLdPr var_98
  loc_B4A2C9:  = frmSettings.Label.Font
  loc_B4A2CE: FLdPr var_9C
  loc_B4A2D1: LateIdSt
  loc_B4A2D6: FFreeAd var_98 = ""
  loc_B4A2DF: LitVar_FALSE
  loc_B4A2E3: PopAdLdVar
  loc_B4A2E4: FLdRfVar var_9C
  loc_B4A2E7: ImpAdLdRf MemVar_C0F3D4
  loc_B4A2EA: NewIfNullPr frmSettings
  loc_B4A2ED: VCallAd Control_ID_guestLabel2
  loc_B4A2F0: FStAdFunc var_98
  loc_B4A2F3: FLdPr var_98
  loc_B4A2F6:  = frmSettings.Label.Font
  loc_B4A2FB: FLdPr var_9C
  loc_B4A2FE: LateIdSt
  loc_B4A303: FFreeAd var_98 = ""
  loc_B4A30C: LitVarStr var_AC, "guestroomLabel1"
  loc_B4A311: PopAdLdVar
  loc_B4A312: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4A317: FStStrNoPop var_C0
  loc_B4A31A: ImpAdLdRf MemVar_C0F3D4
  loc_B4A31D: NewIfNullPr frmSettings
  loc_B4A320: VCallAd Control_ID_guestroomLabel1
  loc_B4A323: FStAdFunc var_98
  loc_B4A326: FLdPr var_98
  loc_B4A329: frmSettings.Label.Caption = from_stack_1
  loc_B4A32E: FFree1Str var_C0
  loc_B4A331: FFree1Ad var_98
  loc_B4A336: LitVarStr var_AC, "guestroomLabel2"
  loc_B4A33B: PopAdLdVar
  loc_B4A33C: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4A341: FStStrNoPop var_C0
  loc_B4A344: ImpAdLdRf MemVar_C0F3D4
  loc_B4A347: NewIfNullPr frmSettings
  loc_B4A34A: VCallAd Control_ID_guestroomLabel2
  loc_B4A34D: FStAdFunc var_98
  loc_B4A350: FLdPr var_98
  loc_B4A353: frmSettings.Label.Caption = from_stack_1
  loc_B4A358: FFree1Str var_C0
  loc_B4A35B: FFree1Ad var_98
  loc_B4A360: LitVarStr var_AC, "guestroomLabel3"
  loc_B4A365: PopAdLdVar
  loc_B4A366: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4A36B: FStStrNoPop var_C0
  loc_B4A36E: ImpAdLdRf MemVar_C0F3D4
  loc_B4A371: NewIfNullPr frmSettings
  loc_B4A374: VCallAd Control_ID_guestroomLabel3
  loc_B4A377: FStAdFunc var_98
  loc_B4A37A: FLdPr var_98
  loc_B4A37D: frmSettings.Label.Caption = from_stack_1
  loc_B4A382: FFree1Str var_C0
  loc_B4A385: FFree1Ad var_98
  loc_B4A38A: LitVarStr var_AC, "guestroomLabel4"
  loc_B4A38F: PopAdLdVar
  loc_B4A390: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4A395: FStStrNoPop var_C0
  loc_B4A398: ImpAdLdRf MemVar_C0F3D4
  loc_B4A39B: NewIfNullPr frmSettings
  loc_B4A39E: VCallAd Control_ID_guestroomLabel4
  loc_B4A3A1: FStAdFunc var_98
  loc_B4A3A4: FLdPr var_98
  loc_B4A3A7: frmSettings.Label.Caption = from_stack_1
  loc_B4A3AC: FFree1Str var_C0
  loc_B4A3AF: FFree1Ad var_98
  loc_B4A3B4: LitVarStr var_AC, "guestroomLabel5"
  loc_B4A3B9: PopAdLdVar
  loc_B4A3BA: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4A3BF: FStStrNoPop var_C0
  loc_B4A3C2: ImpAdLdRf MemVar_C0F3D4
  loc_B4A3C5: NewIfNullPr frmSettings
  loc_B4A3C8: VCallAd Control_ID_guestroomLabel5
  loc_B4A3CB: FStAdFunc var_98
  loc_B4A3CE: FLdPr var_98
  loc_B4A3D1: frmSettings.Label.Caption = from_stack_1
  loc_B4A3D6: FFree1Str var_C0
  loc_B4A3D9: FFree1Ad var_98
  loc_B4A3DE: LitVarStr var_AC, "guestroomLabel6"
  loc_B4A3E3: PopAdLdVar
  loc_B4A3E4: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4A3E9: FStStrNoPop var_C0
  loc_B4A3EC: ImpAdLdRf MemVar_C0F3D4
  loc_B4A3EF: NewIfNullPr frmSettings
  loc_B4A3F2: VCallAd Control_ID_guestroomLabel6
  loc_B4A3F5: FStAdFunc var_98
  loc_B4A3F8: FLdPr var_98
  loc_B4A3FB: frmSettings.Label.Caption = from_stack_1
  loc_B4A400: FFree1Str var_C0
  loc_B4A403: FFree1Ad var_98
  loc_B4A408: LitStr vbNullString
  loc_B4A40B: ImpAdLdRf MemVar_C0F3D4
  loc_B4A40E: NewIfNullPr frmSettings
  loc_B4A411: VCallAd Control_ID_guestroomText1
  loc_B4A414: FStAdFunc var_98
  loc_B4A417: FLdPr var_98
  loc_B4A41A: frmSettings.TextBox.Text = from_stack_1
  loc_B4A41F: FFree1Ad var_98
  loc_B4A424: LitStr vbNullString
  loc_B4A427: ImpAdLdRf MemVar_C0F3D4
  loc_B4A42A: NewIfNullPr frmSettings
  loc_B4A42D: VCallAd Control_ID_guestroomText2
  loc_B4A430: FStAdFunc var_98
  loc_B4A433: FLdPr var_98
  loc_B4A436: frmSettings.TextBox.Text = from_stack_1
  loc_B4A43B: FFree1Ad var_98
  loc_B4A440: LitStr vbNullString
  loc_B4A443: ImpAdLdRf MemVar_C0F3D4
  loc_B4A446: NewIfNullPr frmSettings
  loc_B4A449: VCallAd Control_ID_guestroomText3
  loc_B4A44C: FStAdFunc var_98
  loc_B4A44F: FLdPr var_98
  loc_B4A452: frmSettings.TextBox.Text = from_stack_1
  loc_B4A457: FFree1Ad var_98
  loc_B4A45C: LitStr vbNullString
  loc_B4A45F: ImpAdLdRf MemVar_C0F3D4
  loc_B4A462: NewIfNullPr frmSettings
  loc_B4A465: VCallAd Control_ID_guestroomText4
  loc_B4A468: FStAdFunc var_98
  loc_B4A46B: FLdPr var_98
  loc_B4A46E: frmSettings.TextBox.Text = from_stack_1
  loc_B4A473: FFree1Ad var_98
  loc_B4A478: LitStr vbNullString
  loc_B4A47B: ImpAdLdRf MemVar_C0F3D4
  loc_B4A47E: NewIfNullPr frmSettings
  loc_B4A481: VCallAd Control_ID_guestroomText5
  loc_B4A484: FStAdFunc var_98
  loc_B4A487: FLdPr var_98
  loc_B4A48A: frmSettings.TextBox.Text = from_stack_1
  loc_B4A48F: FFree1Ad var_98
  loc_B4A494: LitVarStr var_AC, "savebutton"
  loc_B4A499: PopAdLdVar
  loc_B4A49A: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4A49F: FStStrNoPop var_C0
  loc_B4A4A2: ImpAdLdRf MemVar_C0F3D4
  loc_B4A4A5: NewIfNullPr frmSettings
  loc_B4A4A8: VCallAd Control_ID_guestroomCommand1
  loc_B4A4AB: FStAdFunc var_98
  loc_B4A4AE: FLdPr var_98
  loc_B4A4B1: frmSettings.CommandButton.Caption = from_stack_1
  loc_B4A4B6: FFree1Str var_C0
  loc_B4A4B9: FFree1Ad var_98
  loc_B4A4BE: LitVarStr var_AC, "restorebutton"
  loc_B4A4C3: PopAdLdVar
  loc_B4A4C4: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4A4C9: FStStrNoPop var_C0
  loc_B4A4CC: ImpAdLdRf MemVar_C0F3D4
  loc_B4A4CF: NewIfNullPr frmSettings
  loc_B4A4D2: VCallAd Control_ID_guestroomCommand2
  loc_B4A4D5: FStAdFunc var_98
  loc_B4A4D8: FLdPr var_98
  loc_B4A4DB: frmSettings.CommandButton.Caption = from_stack_1
  loc_B4A4E0: FFree1Str var_C0
  loc_B4A4E3: FFree1Ad var_98
  loc_B4A4E8: LitI2 200
  loc_B4A4EB: LitI2 164
  loc_B4A4EE: LitI2_Byte &H65
  loc_B4A4F0: ImpAdCallI2 RGB(, , )
  loc_B4A4F5: ImpAdLdRf MemVar_C0F3D4
  loc_B4A4F8: NewIfNullPr frmSettings
  loc_B4A4FB: VCallAd Control_ID_Pictab_guestroom
  loc_B4A4FE: FStAdFunc var_98
  loc_B4A501: FLdPr var_98
  loc_B4A504: frmSettings.PictureBox.BackColor = from_stack_1
  loc_B4A509: FFree1Ad var_98
  loc_B4A50E: ImpAdLdRf MemVar_C0F3D4
  loc_B4A511: NewIfNullPr frmSettings
  loc_B4A514: VCallAd Control_ID_guestroomList1
  loc_B4A517: FStAdFunc var_98
  loc_B4A51A: FLdPr var_98
  loc_B4A51D: frmSettings.ListBox.Clear
  loc_B4A522: FFree1Ad var_98
  loc_B4A527: FLdRfVar var_9C
  loc_B4A52A: FLdRfVar var_98
  loc_B4A52D: ImpAdLdI4 MemVar_C0F044
  loc_B4A530: LitStr "privaterooms"
  loc_B4A533: ConcatStr
  loc_B4A534: FStStrNoPop var_C0
  loc_B4A537: ImpAdLdRf MemVar_C0F040
  loc_B4A53A: NewIfNullPr IFileSystem3
  loc_B4A53D: from_stack_2 = IFileSystem3.IFileSystem.GetFolder(from_stack_1v)
  loc_B4A542: FLdPr var_98
  loc_B4A545:  = Me.SubFolders
  loc_B4A54A: FLdZeroAd var_9C
  loc_B4A54D: FStAdFuncNoPop
  loc_B4A550: FLdRfVar var_D0
  loc_B4A553: FFree1Str var_C0
  loc_B4A556: FFree1Ad var_98
  loc_B4A559: ForEachCollVar var_D8
  loc_B4A561: LitI4 0
  loc_B4A566: LitI4 -1
  loc_B4A56B: LitVarStr var_AC, "\"
  loc_B4A570: FStVarCopyObj var_EC
  loc_B4A573: FLdRfVar var_EC
  loc_B4A576: FLdRfVar var_D0
  loc_B4A579: CStrVarVal var_C0
  loc_B4A57D: FLdRfVar var_FC
  loc_B4A580: ImpAdCallFPR4  = Split(, , , )
  loc_B4A585: FLdRfVar var_FC
  loc_B4A588: FStVar var_10C
  loc_B4A58C: FFree1Str var_C0
  loc_B4A58F: FFree1Var var_EC = ""
  loc_B4A594: LitVarI2 var_12C, 1
  loc_B4A599: FLdRfVar var_11C
  loc_B4A59C: FLdRfVar var_10C
  loc_B4A59F: CRefVarAry
  loc_B4A5A1: PopAdLd4
  loc_B4A5A2: LitI2_Byte 1
  loc_B4A5A4: FnUBound
  loc_B4A5A6: CVarI4
  loc_B4A5AA: ForVar var_14C
  loc_B4A5B2: FLdRfVar var_11C
  loc_B4A5B5: CDargRef
  loc_B4A5B9: FLdRfVar var_10C
  loc_B4A5BC: VarIndexLdVar
  loc_B4A5C2: CStrVarTmp
  loc_B4A5C3: FStStr var_DC
  loc_B4A5C6: FFree1Var var_EC = ""
  loc_B4A5CB: FLdRfVar var_11C
  loc_B4A5CE: NextStepVar var_14C
  loc_B4A5D6: FLdRfVar var_14E
  loc_B4A5D9: FLdRfVar var_D0
  loc_B4A5DC: LitVarStr var_AC, "\deleted.txt"
  loc_B4A5E1: ConcatVar var_EC
  loc_B4A5E5: CStrVarVal var_C0
  loc_B4A5E9: ImpAdLdRf MemVar_C0F040
  loc_B4A5EC: NewIfNullPr IFileSystem3
  loc_B4A5EF: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B4A5F4: FLdI2 var_14E
  loc_B4A5F7: LitI2_Byte 0
  loc_B4A5F9: EqI2
  loc_B4A5FA: FFree1Str var_C0
  loc_B4A5FD: FFree1Var var_EC = ""
  loc_B4A600: BranchF loc_B4A6CC
  loc_B4A605: FLdRfVar var_154
  loc_B4A608: FLdRfVar var_98
  loc_B4A60B: LitI4 0
  loc_B4A610: LitI2_Byte 0
  loc_B4A612: LitI4 1
  loc_B4A617: FLdRfVar var_D0
  loc_B4A61A: LitVarStr var_AC, "\name.txt"
  loc_B4A61F: ConcatVar var_EC
  loc_B4A623: CStrVarVal var_C0
  loc_B4A627: ImpAdLdRf MemVar_C0F040
  loc_B4A62A: NewIfNullPr IFileSystem3
  loc_B4A62D: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4A632: FLdPr var_98
  loc_B4A635:  = Me.ReadAll
  loc_B4A63A: FLdRfVar var_164
  loc_B4A63D: FLdRfVar var_9C
  loc_B4A640: LitI4 0
  loc_B4A645: LitI2_Byte 0
  loc_B4A647: LitI4 1
  loc_B4A64C: FLdRfVar var_D0
  loc_B4A64F: LitVarStr var_BC, "\owner.txt"
  loc_B4A654: ConcatVar var_FC
  loc_B4A658: CStrVarVal var_160
  loc_B4A65C: ImpAdLdRf MemVar_C0F040
  loc_B4A65F: NewIfNullPr IFileSystem3
  loc_B4A662: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B4A667: FLdPr var_9C
  loc_B4A66A:  = Me.ReadAll
  loc_B4A66F: LitVar_Missing var_12C
  loc_B4A672: PopAdLdVar
  loc_B4A673: ILdRf var_DC
  loc_B4A676: LitStr ") Name: "
  loc_B4A679: ConcatStr
  loc_B4A67A: FStStrNoPop var_158
  loc_B4A67D: ILdRf var_154
  loc_B4A680: ConcatStr
  loc_B4A681: FStStrNoPop var_15C
  loc_B4A684: LitStr " # Owner: "
  loc_B4A687: ConcatStr
  loc_B4A688: FStStrNoPop var_168
  loc_B4A68B: ILdRf var_164
  loc_B4A68E: ConcatStr
  loc_B4A68F: FStStrNoPop var_16C
  loc_B4A692: ImpAdLdRf MemVar_C0F3D4
  loc_B4A695: NewIfNullPr frmSettings
  loc_B4A698: VCallAd Control_ID_guestroomList1
  loc_B4A69B: FStAdFunc var_170
  loc_B4A69E: FLdPr var_170
  loc_B4A6A1: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B4A6A6: FFreeStr var_C0 = "": var_158 = "": var_154 = "": var_15C = "": var_160 = "": var_168 = "": var_164 = ""
  loc_B4A6B9: FFreeAd var_98 = "": var_9C = ""
  loc_B4A6C2: FFreeVar var_EC = ""
  loc_B4A6C9: Branch loc_B4A6CE
  loc_B4A6D2: FLdRfVar var_D0
  loc_B4A6D5: NextEachCollVar var_D8
  loc_B4A6DD: ExitProcCb
End Function

Private Function Proc_27_7_B4C5DC() 'B4C5DC
  'Data Table: 53B72C
  loc_B4BE84: On Error Resume Next
  loc_B4BE89: LitI2 1440
  loc_B4BE8C: CR8I2
  loc_B4BE8D: PopFPR4
  loc_B4BE8E: ImpAdLdRf MemVar_C0F3D4
  loc_B4BE91: NewIfNullPr frmSettings
  loc_B4BE94: VCallAd Control_ID_Pictab_guest
  loc_B4BE97: FStAdFunc var_98
  loc_B4BE9A: FLdPr var_98
  loc_B4BE9D: frmSettings.PictureBox.Top = from_stack_1s
  loc_B4BEA2: FFree1Ad var_98
  loc_B4BEA7: LitI2 2160
  loc_B4BEAA: CR8I2
  loc_B4BEAB: PopFPR4
  loc_B4BEAC: ImpAdLdRf MemVar_C0F3D4
  loc_B4BEAF: NewIfNullPr frmSettings
  loc_B4BEB2: VCallAd Control_ID_Pictab_guest
  loc_B4BEB5: FStAdFunc var_98
  loc_B4BEB8: FLdPr var_98
  loc_B4BEBB: frmSettings.PictureBox.Left = from_stack_1s
  loc_B4BEC0: FFree1Ad var_98
  loc_B4BEC5: LitI2_Byte 0
  loc_B4BEC7: ImpAdLdRf MemVar_C0F3D4
  loc_B4BECA: NewIfNullPr frmSettings
  loc_B4BECD: VCallAd Control_ID_Pictab_main
  loc_B4BED0: FStAdFunc var_98
  loc_B4BED3: FLdPr var_98
  loc_B4BED6: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4BEDB: FFree1Ad var_98
  loc_B4BEE0: LitI2_Byte 0
  loc_B4BEE2: ImpAdLdRf MemVar_C0F3D4
  loc_B4BEE5: NewIfNullPr frmSettings
  loc_B4BEE8: VCallAd Control_ID_Pictab_limits
  loc_B4BEEB: FStAdFunc var_98
  loc_B4BEEE: FLdPr var_98
  loc_B4BEF1: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4BEF6: FFree1Ad var_98
  loc_B4BEFB: LitI2_Byte 0
  loc_B4BEFD: ImpAdLdRf MemVar_C0F3D4
  loc_B4BF00: NewIfNullPr frmSettings
  loc_B4BF03: VCallAd Control_ID_Pictab_filter
  loc_B4BF06: FStAdFunc var_98
  loc_B4BF09: FLdPr var_98
  loc_B4BF0C: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4BF11: FFree1Ad var_98
  loc_B4BF16: LitI2_Byte 0
  loc_B4BF18: ImpAdLdRf MemVar_C0F3D4
  loc_B4BF1B: NewIfNullPr frmSettings
  loc_B4BF1E: VCallAd Control_ID_Pictab_habbos
  loc_B4BF21: FStAdFunc var_98
  loc_B4BF24: FLdPr var_98
  loc_B4BF27: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4BF2C: FFree1Ad var_98
  loc_B4BF31: LitI2_Byte &HFF
  loc_B4BF33: ImpAdLdRf MemVar_C0F3D4
  loc_B4BF36: NewIfNullPr frmSettings
  loc_B4BF39: VCallAd Control_ID_Pictab_guest
  loc_B4BF3C: FStAdFunc var_98
  loc_B4BF3F: FLdPr var_98
  loc_B4BF42: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4BF47: FFree1Ad var_98
  loc_B4BF4C: LitI2_Byte 0
  loc_B4BF4E: ImpAdLdRf MemVar_C0F3D4
  loc_B4BF51: NewIfNullPr frmSettings
  loc_B4BF54: VCallAd Control_ID_Pictab_public
  loc_B4BF57: FStAdFunc var_98
  loc_B4BF5A: FLdPr var_98
  loc_B4BF5D: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4BF62: FFree1Ad var_98
  loc_B4BF67: LitI2_Byte 0
  loc_B4BF69: ImpAdLdRf MemVar_C0F3D4
  loc_B4BF6C: NewIfNullPr frmSettings
  loc_B4BF6F: VCallAd Control_ID_Pictab_ranks
  loc_B4BF72: FStAdFunc var_98
  loc_B4BF75: FLdPr var_98
  loc_B4BF78: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4BF7D: FFree1Ad var_98
  loc_B4BF82: LitI2_Byte 0
  loc_B4BF84: ImpAdLdRf MemVar_C0F3D4
  loc_B4BF87: NewIfNullPr frmSettings
  loc_B4BF8A: VCallAd Control_ID_Pictab_club
  loc_B4BF8D: FStAdFunc var_98
  loc_B4BF90: FLdPr var_98
  loc_B4BF93: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4BF98: FFree1Ad var_98
  loc_B4BF9D: LitVar_FALSE
  loc_B4BFA1: PopAdLdVar
  loc_B4BFA2: FLdRfVar var_9C
  loc_B4BFA5: ImpAdLdRf MemVar_C0F3D4
  loc_B4BFA8: NewIfNullPr frmSettings
  loc_B4BFAB: VCallAd Control_ID_Label1
  loc_B4BFAE: FStAdFunc var_98
  loc_B4BFB1: FLdPr var_98
  loc_B4BFB4:  = frmSettings.Label.Font
  loc_B4BFB9: FLdPr var_9C
  loc_B4BFBC: LateIdSt
  loc_B4BFC1: FFreeAd var_98 = ""
  loc_B4BFCA: LitVar_FALSE
  loc_B4BFCE: PopAdLdVar
  loc_B4BFCF: FLdRfVar var_9C
  loc_B4BFD2: ImpAdLdRf MemVar_C0F3D4
  loc_B4BFD5: NewIfNullPr frmSettings
  loc_B4BFD8: VCallAd Control_ID_Label2
  loc_B4BFDB: FStAdFunc var_98
  loc_B4BFDE: FLdPr var_98
  loc_B4BFE1:  = frmSettings.Label.Font
  loc_B4BFE6: FLdPr var_9C
  loc_B4BFE9: LateIdSt
  loc_B4BFEE: FFreeAd var_98 = ""
  loc_B4BFF7: LitVar_FALSE
  loc_B4BFFB: PopAdLdVar
  loc_B4BFFC: FLdRfVar var_9C
  loc_B4BFFF: ImpAdLdRf MemVar_C0F3D4
  loc_B4C002: NewIfNullPr frmSettings
  loc_B4C005: VCallAd Control_ID_Label3
  loc_B4C008: FStAdFunc var_98
  loc_B4C00B: FLdPr var_98
  loc_B4C00E:  = frmSettings.Label.Font
  loc_B4C013: FLdPr var_9C
  loc_B4C016: LateIdSt
  loc_B4C01B: FFreeAd var_98 = ""
  loc_B4C024: LitVar_FALSE
  loc_B4C028: PopAdLdVar
  loc_B4C029: FLdRfVar var_9C
  loc_B4C02C: ImpAdLdRf MemVar_C0F3D4
  loc_B4C02F: NewIfNullPr frmSettings
  loc_B4C032: VCallAd Control_ID_Label4
  loc_B4C035: FStAdFunc var_98
  loc_B4C038: FLdPr var_98
  loc_B4C03B:  = frmSettings.Label.Font
  loc_B4C040: FLdPr var_9C
  loc_B4C043: LateIdSt
  loc_B4C048: FFreeAd var_98 = ""
  loc_B4C051: LitVar_TRUE var_AC
  loc_B4C054: PopAdLdVar
  loc_B4C055: FLdRfVar var_9C
  loc_B4C058: ImpAdLdRf MemVar_C0F3D4
  loc_B4C05B: NewIfNullPr frmSettings
  loc_B4C05E: VCallAd Control_ID_Label5
  loc_B4C061: FStAdFunc var_98
  loc_B4C064: FLdPr var_98
  loc_B4C067:  = frmSettings.Label.Font
  loc_B4C06C: FLdPr var_9C
  loc_B4C06F: LateIdSt
  loc_B4C074: FFreeAd var_98 = ""
  loc_B4C07D: LitVar_FALSE
  loc_B4C081: PopAdLdVar
  loc_B4C082: FLdRfVar var_9C
  loc_B4C085: ImpAdLdRf MemVar_C0F3D4
  loc_B4C088: NewIfNullPr frmSettings
  loc_B4C08B: VCallAd Control_ID_Label6
  loc_B4C08E: FStAdFunc var_98
  loc_B4C091: FLdPr var_98
  loc_B4C094:  = frmSettings.Label.Font
  loc_B4C099: FLdPr var_9C
  loc_B4C09C: LateIdSt
  loc_B4C0A1: FFreeAd var_98 = ""
  loc_B4C0AA: LitVar_FALSE
  loc_B4C0AE: PopAdLdVar
  loc_B4C0AF: FLdRfVar var_9C
  loc_B4C0B2: ImpAdLdRf MemVar_C0F3D4
  loc_B4C0B5: NewIfNullPr frmSettings
  loc_B4C0B8: VCallAd Control_ID_Label7
  loc_B4C0BB: FStAdFunc var_98
  loc_B4C0BE: FLdPr var_98
  loc_B4C0C1:  = frmSettings.Label.Font
  loc_B4C0C6: FLdPr var_9C
  loc_B4C0C9: LateIdSt
  loc_B4C0CE: FFreeAd var_98 = ""
  loc_B4C0D7: LitVar_FALSE
  loc_B4C0DB: PopAdLdVar
  loc_B4C0DC: FLdRfVar var_9C
  loc_B4C0DF: ImpAdLdRf MemVar_C0F3D4
  loc_B4C0E2: NewIfNullPr frmSettings
  loc_B4C0E5: VCallAd Control_ID_Label8
  loc_B4C0E8: FStAdFunc var_98
  loc_B4C0EB: FLdPr var_98
  loc_B4C0EE:  = frmSettings.Label.Font
  loc_B4C0F3: FLdPr var_9C
  loc_B4C0F6: LateIdSt
  loc_B4C0FB: FFreeAd var_98 = ""
  loc_B4C104: LitVar_FALSE
  loc_B4C108: PopAdLdVar
  loc_B4C109: FLdRfVar var_9C
  loc_B4C10C: ImpAdLdRf MemVar_C0F3D4
  loc_B4C10F: NewIfNullPr frmSettings
  loc_B4C112: VCallAd Control_ID_Label9
  loc_B4C115: FStAdFunc var_98
  loc_B4C118: FLdPr var_98
  loc_B4C11B:  = frmSettings.Label.Font
  loc_B4C120: FLdPr var_9C
  loc_B4C123: LateIdSt
  loc_B4C128: FFreeAd var_98 = ""
  loc_B4C131: LitI2_Byte 0
  loc_B4C133: ImpAdLdRf MemVar_C0F3D4
  loc_B4C136: NewIfNullPr frmSettings
  loc_B4C139: VCallAd Control_ID_Pictab_guestroom
  loc_B4C13C: FStAdFunc var_98
  loc_B4C13F: FLdPr var_98
  loc_B4C142: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4C147: FFree1Ad var_98
  loc_B4C14C: LitI2_Byte &HFF
  loc_B4C14E: ImpAdLdRf MemVar_C0F3D4
  loc_B4C151: NewIfNullPr frmSettings
  loc_B4C154: VCallAd Control_ID_Pictab_guestcategories
  loc_B4C157: FStAdFunc var_98
  loc_B4C15A: FLdPr var_98
  loc_B4C15D: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B4C162: FFree1Ad var_98
  loc_B4C167: LitVar_FALSE
  loc_B4C16B: PopAdLdVar
  loc_B4C16C: FLdRfVar var_9C
  loc_B4C16F: ImpAdLdRf MemVar_C0F3D4
  loc_B4C172: NewIfNullPr frmSettings
  loc_B4C175: VCallAd Control_ID_guestLabel1
  loc_B4C178: FStAdFunc var_98
  loc_B4C17B: FLdPr var_98
  loc_B4C17E:  = frmSettings.Label.Font
  loc_B4C183: FLdPr var_9C
  loc_B4C186: LateIdSt
  loc_B4C18B: FFreeAd var_98 = ""
  loc_B4C194: LitVar_TRUE var_AC
  loc_B4C197: PopAdLdVar
  loc_B4C198: FLdRfVar var_9C
  loc_B4C19B: ImpAdLdRf MemVar_C0F3D4
  loc_B4C19E: NewIfNullPr frmSettings
  loc_B4C1A1: VCallAd Control_ID_guestLabel2
  loc_B4C1A4: FStAdFunc var_98
  loc_B4C1A7: FLdPr var_98
  loc_B4C1AA:  = frmSettings.Label.Font
  loc_B4C1AF: FLdPr var_9C
  loc_B4C1B2: LateIdSt
  loc_B4C1B7: FFreeAd var_98 = ""
  loc_B4C1C0: LitVarStr var_AC, "guestcategoriesLabel1"
  loc_B4C1C5: PopAdLdVar
  loc_B4C1C6: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4C1CB: FStStrNoPop var_C0
  loc_B4C1CE: ImpAdLdRf MemVar_C0F3D4
  loc_B4C1D1: NewIfNullPr frmSettings
  loc_B4C1D4: VCallAd Control_ID_guestcategoriesLabel1
  loc_B4C1D7: FStAdFunc var_98
  loc_B4C1DA: FLdPr var_98
  loc_B4C1DD: frmSettings.Label.Caption = from_stack_1
  loc_B4C1E2: FFree1Str var_C0
  loc_B4C1E5: FFree1Ad var_98
  loc_B4C1EA: LitVarStr var_AC, "guestcategoriesLabel2"
  loc_B4C1EF: PopAdLdVar
  loc_B4C1F0: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4C1F5: FStStrNoPop var_C0
  loc_B4C1F8: ImpAdLdRf MemVar_C0F3D4
  loc_B4C1FB: NewIfNullPr frmSettings
  loc_B4C1FE: VCallAd Control_ID_guestcategoriesLabel2
  loc_B4C201: FStAdFunc var_98
  loc_B4C204: FLdPr var_98
  loc_B4C207: frmSettings.Label.Caption = from_stack_1
  loc_B4C20C: FFree1Str var_C0
  loc_B4C20F: FFree1Ad var_98
  loc_B4C214: LitVarStr var_AC, "guestcategoriesLabel3"
  loc_B4C219: PopAdLdVar
  loc_B4C21A: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4C21F: FStStrNoPop var_C0
  loc_B4C222: ImpAdLdRf MemVar_C0F3D4
  loc_B4C225: NewIfNullPr frmSettings
  loc_B4C228: VCallAd Control_ID_guestcategoriesLabel3
  loc_B4C22B: FStAdFunc var_98
  loc_B4C22E: FLdPr var_98
  loc_B4C231: frmSettings.Label.Caption = from_stack_1
  loc_B4C236: FFree1Str var_C0
  loc_B4C239: FFree1Ad var_98
  loc_B4C23E: LitVarStr var_AC, "guestcategoriesLabel4"
  loc_B4C243: PopAdLdVar
  loc_B4C244: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4C249: FStStrNoPop var_C0
  loc_B4C24C: ImpAdLdRf MemVar_C0F3D4
  loc_B4C24F: NewIfNullPr frmSettings
  loc_B4C252: VCallAd Control_ID_guestcategoriesLabel4
  loc_B4C255: FStAdFunc var_98
  loc_B4C258: FLdPr var_98
  loc_B4C25B: frmSettings.Label.Caption = from_stack_1
  loc_B4C260: FFree1Str var_C0
  loc_B4C263: FFree1Ad var_98
  loc_B4C268: LitVarStr var_AC, "savebutton"
  loc_B4C26D: PopAdLdVar
  loc_B4C26E: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4C273: FStStrNoPop var_C0
  loc_B4C276: ImpAdLdRf MemVar_C0F3D4
  loc_B4C279: NewIfNullPr frmSettings
  loc_B4C27C: VCallAd Control_ID_guestcategoriesCommand1
  loc_B4C27F: FStAdFunc var_98
  loc_B4C282: FLdPr var_98
  loc_B4C285: frmSettings.CommandButton.Caption = from_stack_1
  loc_B4C28A: FFree1Str var_C0
  loc_B4C28D: FFree1Ad var_98
  loc_B4C292: LitVarStr var_AC, "restorebutton"
  loc_B4C297: PopAdLdVar
  loc_B4C298: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4C29D: FStStrNoPop var_C0
  loc_B4C2A0: ImpAdLdRf MemVar_C0F3D4
  loc_B4C2A3: NewIfNullPr frmSettings
  loc_B4C2A6: VCallAd Control_ID_guestcategoriesCommand2
  loc_B4C2A9: FStAdFunc var_98
  loc_B4C2AC: FLdPr var_98
  loc_B4C2AF: frmSettings.CommandButton.Caption = from_stack_1
  loc_B4C2B4: FFree1Str var_C0
  loc_B4C2B7: FFree1Ad var_98
  loc_B4C2BC: LitI2 200
  loc_B4C2BF: LitI2 164
  loc_B4C2C2: LitI2_Byte &H65
  loc_B4C2C4: ImpAdCallI2 RGB(, , )
  loc_B4C2C9: ImpAdLdRf MemVar_C0F3D4
  loc_B4C2CC: NewIfNullPr frmSettings
  loc_B4C2CF: VCallAd Control_ID_Pictab_guestcategories
  loc_B4C2D2: FStAdFunc var_98
  loc_B4C2D5: FLdPr var_98
  loc_B4C2D8: frmSettings.PictureBox.BackColor = from_stack_1
  loc_B4C2DD: FFree1Ad var_98
  loc_B4C2E2: LitVarI2 var_E0, 0
  loc_B4C2E7: FLdRfVar var_D0
  loc_B4C2EA: LitVarI2 var_BC, 9
  loc_B4C2EF: ForVar var_100
  loc_B4C2F7: LitI2 200
  loc_B4C2FA: LitI2 164
  loc_B4C2FD: LitI2_Byte &H65
  loc_B4C2FF: ImpAdCallI2 RGB(, , )
  loc_B4C304: FLdRfVar var_9C
  loc_B4C307: FLdRfVar var_D0
  loc_B4C30A: CI2Var
  loc_B4C30B: ImpAdLdRf MemVar_C0F3D4
  loc_B4C30E: NewIfNullPr frmSettings
  loc_B4C311: VCallAd Control_ID_allowtraden
  loc_B4C314: FStAdFunc var_98
  loc_B4C317: FLdPr var_98
  loc_B4C31A: Set from_stack_2 = frmSettings(from_stack_1)
  loc_B4C31F: FLdPr var_9C
  loc_B4C322: Me.BackColor = from_stack_1
  loc_B4C327: FFreeAd var_98 = ""
  loc_B4C330: FLdRfVar var_D0
  loc_B4C333: NextStepVar var_100
  loc_B4C33B: LitStr "SL"
  loc_B4C33E: LitI4 0
  loc_B4C343: FLdRfVar var_118
  loc_B4C346: Ary1StStrCopy
  loc_B4C349: LitStr "RL"
  loc_B4C34C: LitI4 1
  loc_B4C351: FLdRfVar var_118
  loc_B4C354: Ary1StStrCopy
  loc_B4C357: LitStr "PR"
  loc_B4C35A: LitI4 2
  loc_B4C35F: FLdRfVar var_118
  loc_B4C362: Ary1StStrCopy
  loc_B4C365: LitStr "RQ"
  loc_B4C368: LitI4 3
  loc_B4C36D: FLdRfVar var_118
  loc_B4C370: Ary1StStrCopy
  loc_B4C373: LitStr "SV"
  loc_B4C376: LitI4 4
  loc_B4C37B: FLdRfVar var_118
  loc_B4C37E: Ary1StStrCopy
  loc_B4C381: LitStr "Q]"
  loc_B4C384: LitI4 5
  loc_B4C389: FLdRfVar var_118
  loc_B4C38C: Ary1StStrCopy
  loc_B4C38F: LitStr "R]"
  loc_B4C392: LitI4 6
  loc_B4C397: FLdRfVar var_118
  loc_B4C39A: Ary1StStrCopy
  loc_B4C39D: LitStr "PL"
  loc_B4C3A0: LitI4 7
  loc_B4C3A5: FLdRfVar var_118
  loc_B4C3A8: Ary1StStrCopy
  loc_B4C3AB: LitStr "RN"
  loc_B4C3AE: LitI4 8
  loc_B4C3B3: FLdRfVar var_118
  loc_B4C3B6: Ary1StStrCopy
  loc_B4C3B9: LitStr "RR"
  loc_B4C3BC: LitI4 9
  loc_B4C3C1: FLdRfVar var_118
  loc_B4C3C4: Ary1StStrCopy
  loc_B4C3C7: LitVarI2 var_E0, 0
  loc_B4C3CC: FLdRfVar var_D0
  loc_B4C3CF: LitVarI2 var_BC, 9
  loc_B4C3D4: ForVar var_13C
  loc_B4C3DC: FLdRfVar var_9C
  loc_B4C3DF: FLdRfVar var_D0
  loc_B4C3E2: CI2Var
  loc_B4C3E3: ImpAdLdRf MemVar_C0F3D4
  loc_B4C3E6: NewIfNullPr frmSettings
  loc_B4C3E9: VCallAd Control_ID_catprop
  loc_B4C3EC: FStAdFunc var_98
  loc_B4C3EF: FLdPr var_98
  loc_B4C3F2: Set from_stack_2 = frmSettings(from_stack_1)
  loc_B4C3F7: FLdPr var_9C
  loc_B4C3FA: Me.Clear
  loc_B4C3FF: FFreeAd var_98 = ""
  loc_B4C408: LitVar_Missing var_AC
  loc_B4C40B: PopAdLdVar
  loc_B4C40C: LitStr "0"
  loc_B4C40F: FLdRfVar var_9C
  loc_B4C412: FLdRfVar var_D0
  loc_B4C415: CI2Var
  loc_B4C416: ImpAdLdRf MemVar_C0F3D4
  loc_B4C419: NewIfNullPr frmSettings
  loc_B4C41C: VCallAd Control_ID_catprop
  loc_B4C41F: FStAdFunc var_98
  loc_B4C422: FLdPr var_98
  loc_B4C425: Set from_stack_2 = frmSettings(from_stack_1)
  loc_B4C42A: FLdPr var_9C
  loc_B4C42D: Me.AddItem from_stack_1, from_stack_2
  loc_B4C432: FFreeAd var_98 = ""
  loc_B4C43B: LitVar_Missing var_AC
  loc_B4C43E: PopAdLdVar
  loc_B4C43F: LitStr "1"
  loc_B4C442: FLdRfVar var_9C
  loc_B4C445: FLdRfVar var_D0
  loc_B4C448: CI2Var
  loc_B4C449: ImpAdLdRf MemVar_C0F3D4
  loc_B4C44C: NewIfNullPr frmSettings
  loc_B4C44F: VCallAd Control_ID_catprop
  loc_B4C452: FStAdFunc var_98
  loc_B4C455: FLdPr var_98
  loc_B4C458: Set from_stack_2 = frmSettings(from_stack_1)
  loc_B4C45D: FLdPr var_9C
  loc_B4C460: Me.AddItem from_stack_1, from_stack_2
  loc_B4C465: FFreeAd var_98 = ""
  loc_B4C46E: LitVar_Missing var_AC
  loc_B4C471: PopAdLdVar
  loc_B4C472: LitStr "2"
  loc_B4C475: FLdRfVar var_9C
  loc_B4C478: FLdRfVar var_D0
  loc_B4C47B: CI2Var
  loc_B4C47C: ImpAdLdRf MemVar_C0F3D4
  loc_B4C47F: NewIfNullPr frmSettings
  loc_B4C482: VCallAd Control_ID_catprop
  loc_B4C485: FStAdFunc var_98
  loc_B4C488: FLdPr var_98
  loc_B4C48B: Set from_stack_2 = frmSettings(from_stack_1)
  loc_B4C490: FLdPr var_9C
  loc_B4C493: Me.AddItem from_stack_1, from_stack_2
  loc_B4C498: FFreeAd var_98 = ""
  loc_B4C4A1: LitI4 0
  loc_B4C4A6: FStStrCopy var_C0
  loc_B4C4A9: FLdRfVar var_C0
  loc_B4C4AC: ImpAdLdI4 MemVar_C0F044
  loc_B4C4AF: LitStr "room_categories\categories.ini"
  loc_B4C4B2: ConcatStr
  loc_B4C4B3: CVarStr var_14C
  loc_B4C4B6: FLdRfVar var_D0
  loc_B4C4B9: CI4Var
  loc_B4C4BB: FLdRfVar var_118
  loc_B4C4BE: Ary1LdRf
  loc_B4C4BF: CVarRef
  loc_B4C4C4: LitVarStr var_AC, "categories"
  loc_B4C4C9: PopAdLdVar
  loc_B4C4CA: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B4C4CF: FStStrNoPop var_150
  loc_B4C4D2: FLdRfVar var_9C
  loc_B4C4D5: FLdRfVar var_D0
  loc_B4C4D8: CI2Var
  loc_B4C4D9: ImpAdLdRf MemVar_C0F3D4
  loc_B4C4DC: NewIfNullPr frmSettings
  loc_B4C4DF: VCallAd Control_ID_catprop
  loc_B4C4E2: FStAdFunc var_98
  loc_B4C4E5: FLdPr var_98
  loc_B4C4E8: Set from_stack_2 = frmSettings(from_stack_1)
  loc_B4C4ED: FLdPr var_9C
  loc_B4C4F0: Me.Text = from_stack_1
  loc_B4C4F5: FFreeStr var_C0 = ""
  loc_B4C4FC: FFreeAd var_98 = ""
  loc_B4C503: FFree1Var var_14C = ""
  loc_B4C508: LitVarStr var_BC, "categorie_"
  loc_B4C50D: FLdRfVar var_D0
  loc_B4C510: LitVarI2 var_AC, 1
  loc_B4C515: AddVar var_14C
  loc_B4C519: ConcatVar var_160
  loc_B4C51D: PopAdLdVar
  loc_B4C51E: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B4C523: FStStrNoPop var_C0
  loc_B4C526: FLdRfVar var_9C
  loc_B4C529: FLdRfVar var_D0
  loc_B4C52C: CI2Var
  loc_B4C52D: ImpAdLdRf MemVar_C0F3D4
  loc_B4C530: NewIfNullPr frmSettings
  loc_B4C533: VCallAd Control_ID_catname
  loc_B4C536: FStAdFunc var_98
  loc_B4C539: FLdPr var_98
  loc_B4C53C: Set from_stack_2 = frmSettings(from_stack_1)
  loc_B4C541: FLdPr var_9C
  loc_B4C544: Me.Text = from_stack_1
  loc_B4C549: FFree1Str var_C0
  loc_B4C54C: FFreeAd var_98 = ""
  loc_B4C553: FFreeVar var_14C = ""
  loc_B4C55C: FLdRfVar var_166
  loc_B4C55F: ImpAdLdI4 MemVar_C0F044
  loc_B4C562: LitStr "room_categories\allowtrade_"
  loc_B4C565: ConcatStr
  loc_B4C566: FStStrNoPop var_C0
  loc_B4C569: FLdRfVar var_D0
  loc_B4C56C: CI4Var
  loc_B4C56E: FLdRfVar var_118
  loc_B4C571: Ary1LdI4
  loc_B4C572: ConcatStr
  loc_B4C573: FStStrNoPop var_150
  loc_B4C576: LitStr ".txt"
  loc_B4C579: ConcatStr
  loc_B4C57A: FStStrNoPop var_164
  loc_B4C57D: ImpAdLdRf MemVar_C0F040
  loc_B4C580: NewIfNullPr IFileSystem3
  loc_B4C583: from_stack_2 = IFileSystem3.IFileSystem.FileExists(from_stack_1v)
  loc_B4C588: FLdI2 var_166
  loc_B4C58B: LitI2_Byte &HFF
  loc_B4C58D: EqI2
  loc_B4C58E: FFreeStr var_C0 = "": var_150 = ""
  loc_B4C597: BranchF loc_B4C5C8
  loc_B4C59C: LitI2_Byte 1
  loc_B4C59E: FLdRfVar var_9C
  loc_B4C5A1: FLdRfVar var_D0
  loc_B4C5A4: CI2Var
  loc_B4C5A5: ImpAdLdRf MemVar_C0F3D4
  loc_B4C5A8: NewIfNullPr frmSettings
  loc_B4C5AB: VCallAd Control_ID_allowtraden
  loc_B4C5AE: FStAdFunc var_98
  loc_B4C5B1: FLdPr var_98
  loc_B4C5B4: Set from_stack_2 = frmSettings(from_stack_1)
  loc_B4C5B9: FLdPr var_9C
  loc_B4C5BC: Me.Value = from_stack_1
  loc_B4C5C1: FFreeAd var_98 = ""
  loc_B4C5CC: FLdRfVar var_D0
  loc_B4C5CF: NextStepVar var_13C
  loc_B4C5D7: ExitProcCb
End Function

Private Function Proc_27_8_B2EB4C() 'B2EB4C
  'Data Table: 53B72C
  loc_B2E864: On Error Resume Next
  loc_B2E869: LitI2 1440
  loc_B2E86C: CR8I2
  loc_B2E86D: PopFPR4
  loc_B2E86E: ImpAdLdRf MemVar_C0F3D4
  loc_B2E871: NewIfNullPr frmSettings
  loc_B2E874: VCallAd Control_ID_Pictab_public
  loc_B2E877: FStAdFunc var_98
  loc_B2E87A: FLdPr var_98
  loc_B2E87D: frmSettings.PictureBox.Top = from_stack_1s
  loc_B2E882: FFree1Ad var_98
  loc_B2E887: LitI2 2160
  loc_B2E88A: CR8I2
  loc_B2E88B: PopFPR4
  loc_B2E88C: ImpAdLdRf MemVar_C0F3D4
  loc_B2E88F: NewIfNullPr frmSettings
  loc_B2E892: VCallAd Control_ID_Pictab_public
  loc_B2E895: FStAdFunc var_98
  loc_B2E898: FLdPr var_98
  loc_B2E89B: frmSettings.PictureBox.Left = from_stack_1s
  loc_B2E8A0: FFree1Ad var_98
  loc_B2E8A5: LitI2_Byte 0
  loc_B2E8A7: ImpAdLdRf MemVar_C0F3D4
  loc_B2E8AA: NewIfNullPr frmSettings
  loc_B2E8AD: VCallAd Control_ID_Pictab_main
  loc_B2E8B0: FStAdFunc var_98
  loc_B2E8B3: FLdPr var_98
  loc_B2E8B6: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B2E8BB: FFree1Ad var_98
  loc_B2E8C0: LitI2_Byte 0
  loc_B2E8C2: ImpAdLdRf MemVar_C0F3D4
  loc_B2E8C5: NewIfNullPr frmSettings
  loc_B2E8C8: VCallAd Control_ID_Pictab_limits
  loc_B2E8CB: FStAdFunc var_98
  loc_B2E8CE: FLdPr var_98
  loc_B2E8D1: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B2E8D6: FFree1Ad var_98
  loc_B2E8DB: LitI2_Byte 0
  loc_B2E8DD: ImpAdLdRf MemVar_C0F3D4
  loc_B2E8E0: NewIfNullPr frmSettings
  loc_B2E8E3: VCallAd Control_ID_Pictab_filter
  loc_B2E8E6: FStAdFunc var_98
  loc_B2E8E9: FLdPr var_98
  loc_B2E8EC: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B2E8F1: FFree1Ad var_98
  loc_B2E8F6: LitI2_Byte 0
  loc_B2E8F8: ImpAdLdRf MemVar_C0F3D4
  loc_B2E8FB: NewIfNullPr frmSettings
  loc_B2E8FE: VCallAd Control_ID_Pictab_habbos
  loc_B2E901: FStAdFunc var_98
  loc_B2E904: FLdPr var_98
  loc_B2E907: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B2E90C: FFree1Ad var_98
  loc_B2E911: LitI2_Byte 0
  loc_B2E913: ImpAdLdRf MemVar_C0F3D4
  loc_B2E916: NewIfNullPr frmSettings
  loc_B2E919: VCallAd Control_ID_Pictab_guest
  loc_B2E91C: FStAdFunc var_98
  loc_B2E91F: FLdPr var_98
  loc_B2E922: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B2E927: FFree1Ad var_98
  loc_B2E92C: LitI2_Byte &HFF
  loc_B2E92E: ImpAdLdRf MemVar_C0F3D4
  loc_B2E931: NewIfNullPr frmSettings
  loc_B2E934: VCallAd Control_ID_Pictab_public
  loc_B2E937: FStAdFunc var_98
  loc_B2E93A: FLdPr var_98
  loc_B2E93D: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B2E942: FFree1Ad var_98
  loc_B2E947: LitI2_Byte 0
  loc_B2E949: ImpAdLdRf MemVar_C0F3D4
  loc_B2E94C: NewIfNullPr frmSettings
  loc_B2E94F: VCallAd Control_ID_Pictab_ranks
  loc_B2E952: FStAdFunc var_98
  loc_B2E955: FLdPr var_98
  loc_B2E958: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B2E95D: FFree1Ad var_98
  loc_B2E962: LitVar_FALSE
  loc_B2E966: PopAdLdVar
  loc_B2E967: FLdRfVar var_9C
  loc_B2E96A: ImpAdLdRf MemVar_C0F3D4
  loc_B2E96D: NewIfNullPr frmSettings
  loc_B2E970: VCallAd Control_ID_Label1
  loc_B2E973: FStAdFunc var_98
  loc_B2E976: FLdPr var_98
  loc_B2E979:  = frmSettings.Label.Font
  loc_B2E97E: FLdPr var_9C
  loc_B2E981: LateIdSt
  loc_B2E986: FFreeAd var_98 = ""
  loc_B2E98F: LitVar_FALSE
  loc_B2E993: PopAdLdVar
  loc_B2E994: FLdRfVar var_9C
  loc_B2E997: ImpAdLdRf MemVar_C0F3D4
  loc_B2E99A: NewIfNullPr frmSettings
  loc_B2E99D: VCallAd Control_ID_Label2
  loc_B2E9A0: FStAdFunc var_98
  loc_B2E9A3: FLdPr var_98
  loc_B2E9A6:  = frmSettings.Label.Font
  loc_B2E9AB: FLdPr var_9C
  loc_B2E9AE: LateIdSt
  loc_B2E9B3: FFreeAd var_98 = ""
  loc_B2E9BC: LitVar_FALSE
  loc_B2E9C0: PopAdLdVar
  loc_B2E9C1: FLdRfVar var_9C
  loc_B2E9C4: ImpAdLdRf MemVar_C0F3D4
  loc_B2E9C7: NewIfNullPr frmSettings
  loc_B2E9CA: VCallAd Control_ID_Label3
  loc_B2E9CD: FStAdFunc var_98
  loc_B2E9D0: FLdPr var_98
  loc_B2E9D3:  = frmSettings.Label.Font
  loc_B2E9D8: FLdPr var_9C
  loc_B2E9DB: LateIdSt
  loc_B2E9E0: FFreeAd var_98 = ""
  loc_B2E9E9: LitVar_FALSE
  loc_B2E9ED: PopAdLdVar
  loc_B2E9EE: FLdRfVar var_9C
  loc_B2E9F1: ImpAdLdRf MemVar_C0F3D4
  loc_B2E9F4: NewIfNullPr frmSettings
  loc_B2E9F7: VCallAd Control_ID_Label4
  loc_B2E9FA: FStAdFunc var_98
  loc_B2E9FD: FLdPr var_98
  loc_B2EA00:  = frmSettings.Label.Font
  loc_B2EA05: FLdPr var_9C
  loc_B2EA08: LateIdSt
  loc_B2EA0D: FFreeAd var_98 = ""
  loc_B2EA16: LitVar_FALSE
  loc_B2EA1A: PopAdLdVar
  loc_B2EA1B: FLdRfVar var_9C
  loc_B2EA1E: ImpAdLdRf MemVar_C0F3D4
  loc_B2EA21: NewIfNullPr frmSettings
  loc_B2EA24: VCallAd Control_ID_Label5
  loc_B2EA27: FStAdFunc var_98
  loc_B2EA2A: FLdPr var_98
  loc_B2EA2D:  = frmSettings.Label.Font
  loc_B2EA32: FLdPr var_9C
  loc_B2EA35: LateIdSt
  loc_B2EA3A: FFreeAd var_98 = ""
  loc_B2EA43: LitVar_TRUE var_AC
  loc_B2EA46: PopAdLdVar
  loc_B2EA47: FLdRfVar var_9C
  loc_B2EA4A: ImpAdLdRf MemVar_C0F3D4
  loc_B2EA4D: NewIfNullPr frmSettings
  loc_B2EA50: VCallAd Control_ID_Label6
  loc_B2EA53: FStAdFunc var_98
  loc_B2EA56: FLdPr var_98
  loc_B2EA59:  = frmSettings.Label.Font
  loc_B2EA5E: FLdPr var_9C
  loc_B2EA61: LateIdSt
  loc_B2EA66: FFreeAd var_98 = ""
  loc_B2EA6F: LitVar_FALSE
  loc_B2EA73: PopAdLdVar
  loc_B2EA74: FLdRfVar var_9C
  loc_B2EA77: ImpAdLdRf MemVar_C0F3D4
  loc_B2EA7A: NewIfNullPr frmSettings
  loc_B2EA7D: VCallAd Control_ID_Label7
  loc_B2EA80: FStAdFunc var_98
  loc_B2EA83: FLdPr var_98
  loc_B2EA86:  = frmSettings.Label.Font
  loc_B2EA8B: FLdPr var_9C
  loc_B2EA8E: LateIdSt
  loc_B2EA93: FFreeAd var_98 = ""
  loc_B2EA9C: LitVar_FALSE
  loc_B2EAA0: PopAdLdVar
  loc_B2EAA1: FLdRfVar var_9C
  loc_B2EAA4: ImpAdLdRf MemVar_C0F3D4
  loc_B2EAA7: NewIfNullPr frmSettings
  loc_B2EAAA: VCallAd Control_ID_Label8
  loc_B2EAAD: FStAdFunc var_98
  loc_B2EAB0: FLdPr var_98
  loc_B2EAB3:  = frmSettings.Label.Font
  loc_B2EAB8: FLdPr var_9C
  loc_B2EABB: LateIdSt
  loc_B2EAC0: FFreeAd var_98 = ""
  loc_B2EAC9: LitVar_FALSE
  loc_B2EACD: PopAdLdVar
  loc_B2EACE: FLdRfVar var_9C
  loc_B2EAD1: ImpAdLdRf MemVar_C0F3D4
  loc_B2EAD4: NewIfNullPr frmSettings
  loc_B2EAD7: VCallAd Control_ID_Label9
  loc_B2EADA: FStAdFunc var_98
  loc_B2EADD: FLdPr var_98
  loc_B2EAE0:  = frmSettings.Label.Font
  loc_B2EAE5: FLdPr var_9C
  loc_B2EAE8: LateIdSt
  loc_B2EAED: FFreeAd var_98 = ""
  loc_B2EAF6: LitVarStr var_AC, "tab_publicroom"
  loc_B2EAFB: PopAdLdVar
  loc_B2EAFC: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B2EB01: FStStrNoPop var_C0
  loc_B2EB04: ImpAdLdRf MemVar_C0F3D4
  loc_B2EB07: NewIfNullPr frmSettings
  loc_B2EB0A: VCallAd Control_ID_title
  loc_B2EB0D: FStAdFunc var_98
  loc_B2EB10: FLdPr var_98
  loc_B2EB13: frmSettings.Label.Caption = from_stack_1
  loc_B2EB18: FFree1Str var_C0
  loc_B2EB1B: FFree1Ad var_98
  loc_B2EB20: LitI2 200
  loc_B2EB23: LitI2 164
  loc_B2EB26: LitI2_Byte &H65
  loc_B2EB28: ImpAdCallI2 RGB(, , )
  loc_B2EB2D: ImpAdLdRf MemVar_C0F3D4
  loc_B2EB30: NewIfNullPr frmSettings
  loc_B2EB33: VCallAd Control_ID_Pictab_public
  loc_B2EB36: FStAdFunc var_98
  loc_B2EB39: FLdPr var_98
  loc_B2EB3C: frmSettings.PictureBox.BackColor = from_stack_1
  loc_B2EB41: FFree1Ad var_98
  loc_B2EB46: ExitProcCb
  loc_B2EB4A: AndI4
End Function

Private Function Proc_27_9_B65BF8() 'B65BF8
  'Data Table: 53B72C
  loc_B64B6C: On Error Resume Next
  loc_B64B71: LitI2 1440
  loc_B64B74: CR8I2
  loc_B64B75: PopFPR4
  loc_B64B76: ImpAdLdRf MemVar_C0F3D4
  loc_B64B79: NewIfNullPr frmSettings
  loc_B64B7C: VCallAd Control_ID_Pictab_ranks
  loc_B64B7F: FStAdFunc var_98
  loc_B64B82: FLdPr var_98
  loc_B64B85: frmSettings.PictureBox.Top = from_stack_1s
  loc_B64B8A: FFree1Ad var_98
  loc_B64B8F: LitI2 2160
  loc_B64B92: CR8I2
  loc_B64B93: PopFPR4
  loc_B64B94: ImpAdLdRf MemVar_C0F3D4
  loc_B64B97: NewIfNullPr frmSettings
  loc_B64B9A: VCallAd Control_ID_Pictab_ranks
  loc_B64B9D: FStAdFunc var_98
  loc_B64BA0: FLdPr var_98
  loc_B64BA3: frmSettings.PictureBox.Left = from_stack_1s
  loc_B64BA8: FFree1Ad var_98
  loc_B64BAD: LitI2_Byte 0
  loc_B64BAF: ImpAdLdRf MemVar_C0F3D4
  loc_B64BB2: NewIfNullPr frmSettings
  loc_B64BB5: VCallAd Control_ID_Pictab_main
  loc_B64BB8: FStAdFunc var_98
  loc_B64BBB: FLdPr var_98
  loc_B64BBE: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B64BC3: FFree1Ad var_98
  loc_B64BC8: LitI2_Byte 0
  loc_B64BCA: ImpAdLdRf MemVar_C0F3D4
  loc_B64BCD: NewIfNullPr frmSettings
  loc_B64BD0: VCallAd Control_ID_Pictab_limits
  loc_B64BD3: FStAdFunc var_98
  loc_B64BD6: FLdPr var_98
  loc_B64BD9: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B64BDE: FFree1Ad var_98
  loc_B64BE3: LitI2_Byte 0
  loc_B64BE5: ImpAdLdRf MemVar_C0F3D4
  loc_B64BE8: NewIfNullPr frmSettings
  loc_B64BEB: VCallAd Control_ID_Pictab_filter
  loc_B64BEE: FStAdFunc var_98
  loc_B64BF1: FLdPr var_98
  loc_B64BF4: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B64BF9: FFree1Ad var_98
  loc_B64BFE: LitI2_Byte 0
  loc_B64C00: ImpAdLdRf MemVar_C0F3D4
  loc_B64C03: NewIfNullPr frmSettings
  loc_B64C06: VCallAd Control_ID_Pictab_habbos
  loc_B64C09: FStAdFunc var_98
  loc_B64C0C: FLdPr var_98
  loc_B64C0F: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B64C14: FFree1Ad var_98
  loc_B64C19: LitI2_Byte 0
  loc_B64C1B: ImpAdLdRf MemVar_C0F3D4
  loc_B64C1E: NewIfNullPr frmSettings
  loc_B64C21: VCallAd Control_ID_Pictab_guest
  loc_B64C24: FStAdFunc var_98
  loc_B64C27: FLdPr var_98
  loc_B64C2A: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B64C2F: FFree1Ad var_98
  loc_B64C34: LitI2_Byte 0
  loc_B64C36: ImpAdLdRf MemVar_C0F3D4
  loc_B64C39: NewIfNullPr frmSettings
  loc_B64C3C: VCallAd Control_ID_Pictab_public
  loc_B64C3F: FStAdFunc var_98
  loc_B64C42: FLdPr var_98
  loc_B64C45: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B64C4A: FFree1Ad var_98
  loc_B64C4F: LitI2_Byte &HFF
  loc_B64C51: ImpAdLdRf MemVar_C0F3D4
  loc_B64C54: NewIfNullPr frmSettings
  loc_B64C57: VCallAd Control_ID_Pictab_ranks
  loc_B64C5A: FStAdFunc var_98
  loc_B64C5D: FLdPr var_98
  loc_B64C60: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B64C65: FFree1Ad var_98
  loc_B64C6A: LitI2_Byte 0
  loc_B64C6C: ImpAdLdRf MemVar_C0F3D4
  loc_B64C6F: NewIfNullPr frmSettings
  loc_B64C72: VCallAd Control_ID_Pictab_club
  loc_B64C75: FStAdFunc var_98
  loc_B64C78: FLdPr var_98
  loc_B64C7B: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B64C80: FFree1Ad var_98
  loc_B64C85: LitVar_FALSE
  loc_B64C89: PopAdLdVar
  loc_B64C8A: FLdRfVar var_9C
  loc_B64C8D: ImpAdLdRf MemVar_C0F3D4
  loc_B64C90: NewIfNullPr frmSettings
  loc_B64C93: VCallAd Control_ID_Label1
  loc_B64C96: FStAdFunc var_98
  loc_B64C99: FLdPr var_98
  loc_B64C9C:  = frmSettings.Label.Font
  loc_B64CA1: FLdPr var_9C
  loc_B64CA4: LateIdSt
  loc_B64CA9: FFreeAd var_98 = ""
  loc_B64CB2: LitVar_FALSE
  loc_B64CB6: PopAdLdVar
  loc_B64CB7: FLdRfVar var_9C
  loc_B64CBA: ImpAdLdRf MemVar_C0F3D4
  loc_B64CBD: NewIfNullPr frmSettings
  loc_B64CC0: VCallAd Control_ID_Label2
  loc_B64CC3: FStAdFunc var_98
  loc_B64CC6: FLdPr var_98
  loc_B64CC9:  = frmSettings.Label.Font
  loc_B64CCE: FLdPr var_9C
  loc_B64CD1: LateIdSt
  loc_B64CD6: FFreeAd var_98 = ""
  loc_B64CDF: LitVar_FALSE
  loc_B64CE3: PopAdLdVar
  loc_B64CE4: FLdRfVar var_9C
  loc_B64CE7: ImpAdLdRf MemVar_C0F3D4
  loc_B64CEA: NewIfNullPr frmSettings
  loc_B64CED: VCallAd Control_ID_Label3
  loc_B64CF0: FStAdFunc var_98
  loc_B64CF3: FLdPr var_98
  loc_B64CF6:  = frmSettings.Label.Font
  loc_B64CFB: FLdPr var_9C
  loc_B64CFE: LateIdSt
  loc_B64D03: FFreeAd var_98 = ""
  loc_B64D0C: LitVar_FALSE
  loc_B64D10: PopAdLdVar
  loc_B64D11: FLdRfVar var_9C
  loc_B64D14: ImpAdLdRf MemVar_C0F3D4
  loc_B64D17: NewIfNullPr frmSettings
  loc_B64D1A: VCallAd Control_ID_Label4
  loc_B64D1D: FStAdFunc var_98
  loc_B64D20: FLdPr var_98
  loc_B64D23:  = frmSettings.Label.Font
  loc_B64D28: FLdPr var_9C
  loc_B64D2B: LateIdSt
  loc_B64D30: FFreeAd var_98 = ""
  loc_B64D39: LitVar_FALSE
  loc_B64D3D: PopAdLdVar
  loc_B64D3E: FLdRfVar var_9C
  loc_B64D41: ImpAdLdRf MemVar_C0F3D4
  loc_B64D44: NewIfNullPr frmSettings
  loc_B64D47: VCallAd Control_ID_Label5
  loc_B64D4A: FStAdFunc var_98
  loc_B64D4D: FLdPr var_98
  loc_B64D50:  = frmSettings.Label.Font
  loc_B64D55: FLdPr var_9C
  loc_B64D58: LateIdSt
  loc_B64D5D: FFreeAd var_98 = ""
  loc_B64D66: LitVar_FALSE
  loc_B64D6A: PopAdLdVar
  loc_B64D6B: FLdRfVar var_9C
  loc_B64D6E: ImpAdLdRf MemVar_C0F3D4
  loc_B64D71: NewIfNullPr frmSettings
  loc_B64D74: VCallAd Control_ID_Label6
  loc_B64D77: FStAdFunc var_98
  loc_B64D7A: FLdPr var_98
  loc_B64D7D:  = frmSettings.Label.Font
  loc_B64D82: FLdPr var_9C
  loc_B64D85: LateIdSt
  loc_B64D8A: FFreeAd var_98 = ""
  loc_B64D93: LitVar_TRUE var_AC
  loc_B64D96: PopAdLdVar
  loc_B64D97: FLdRfVar var_9C
  loc_B64D9A: ImpAdLdRf MemVar_C0F3D4
  loc_B64D9D: NewIfNullPr frmSettings
  loc_B64DA0: VCallAd Control_ID_Label7
  loc_B64DA3: FStAdFunc var_98
  loc_B64DA6: FLdPr var_98
  loc_B64DA9:  = frmSettings.Label.Font
  loc_B64DAE: FLdPr var_9C
  loc_B64DB1: LateIdSt
  loc_B64DB6: FFreeAd var_98 = ""
  loc_B64DBF: LitVar_FALSE
  loc_B64DC3: PopAdLdVar
  loc_B64DC4: FLdRfVar var_9C
  loc_B64DC7: ImpAdLdRf MemVar_C0F3D4
  loc_B64DCA: NewIfNullPr frmSettings
  loc_B64DCD: VCallAd Control_ID_Label8
  loc_B64DD0: FStAdFunc var_98
  loc_B64DD3: FLdPr var_98
  loc_B64DD6:  = frmSettings.Label.Font
  loc_B64DDB: FLdPr var_9C
  loc_B64DDE: LateIdSt
  loc_B64DE3: FFreeAd var_98 = ""
  loc_B64DEC: LitVar_FALSE
  loc_B64DF0: PopAdLdVar
  loc_B64DF1: FLdRfVar var_9C
  loc_B64DF4: ImpAdLdRf MemVar_C0F3D4
  loc_B64DF7: NewIfNullPr frmSettings
  loc_B64DFA: VCallAd Control_ID_Label9
  loc_B64DFD: FStAdFunc var_98
  loc_B64E00: FLdPr var_98
  loc_B64E03:  = frmSettings.Label.Font
  loc_B64E08: FLdPr var_9C
  loc_B64E0B: LateIdSt
  loc_B64E10: FFreeAd var_98 = ""
  loc_B64E19: LitVarStr var_AC, "tab_ranks"
  loc_B64E1E: PopAdLdVar
  loc_B64E1F: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B64E24: FStStrNoPop var_C0
  loc_B64E27: ImpAdLdRf MemVar_C0F3D4
  loc_B64E2A: NewIfNullPr frmSettings
  loc_B64E2D: VCallAd Control_ID_title
  loc_B64E30: FStAdFunc var_98
  loc_B64E33: FLdPr var_98
  loc_B64E36: frmSettings.Label.Caption = from_stack_1
  loc_B64E3B: FFree1Str var_C0
  loc_B64E3E: FFree1Ad var_98
  loc_B64E43: LitVarStr var_AC, "ranksLabel1"
  loc_B64E48: PopAdLdVar
  loc_B64E49: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B64E4E: FStStrNoPop var_C0
  loc_B64E51: ImpAdLdRf MemVar_C0F3D4
  loc_B64E54: NewIfNullPr frmSettings
  loc_B64E57: VCallAd Control_ID_ranksLabel1
  loc_B64E5A: FStAdFunc var_98
  loc_B64E5D: FLdPr var_98
  loc_B64E60: frmSettings.Label.Caption = from_stack_1
  loc_B64E65: FFree1Str var_C0
  loc_B64E68: FFree1Ad var_98
  loc_B64E6D: LitVarStr var_AC, "ranksLabel2"
  loc_B64E72: PopAdLdVar
  loc_B64E73: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B64E78: FStStrNoPop var_C0
  loc_B64E7B: ImpAdLdRf MemVar_C0F3D4
  loc_B64E7E: NewIfNullPr frmSettings
  loc_B64E81: VCallAd Control_ID_ranksLabel2
  loc_B64E84: FStAdFunc var_98
  loc_B64E87: FLdPr var_98
  loc_B64E8A: frmSettings.Label.Caption = from_stack_1
  loc_B64E8F: FFree1Str var_C0
  loc_B64E92: FFree1Ad var_98
  loc_B64E97: LitVarStr var_AC, "ranksLabel3"
  loc_B64E9C: PopAdLdVar
  loc_B64E9D: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B64EA2: FStStrNoPop var_C0
  loc_B64EA5: ImpAdLdRf MemVar_C0F3D4
  loc_B64EA8: NewIfNullPr frmSettings
  loc_B64EAB: VCallAd Control_ID_ranksLabel3
  loc_B64EAE: FStAdFunc var_98
  loc_B64EB1: FLdPr var_98
  loc_B64EB4: frmSettings.Label.Caption = from_stack_1
  loc_B64EB9: FFree1Str var_C0
  loc_B64EBC: FFree1Ad var_98
  loc_B64EC1: LitVarStr var_AC, "ranksLabel4"
  loc_B64EC6: PopAdLdVar
  loc_B64EC7: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B64ECC: FStStrNoPop var_C0
  loc_B64ECF: ImpAdLdRf MemVar_C0F3D4
  loc_B64ED2: NewIfNullPr frmSettings
  loc_B64ED5: VCallAd Control_ID_ranksLabel4
  loc_B64ED8: FStAdFunc var_98
  loc_B64EDB: FLdPr var_98
  loc_B64EDE: frmSettings.Label.Caption = from_stack_1
  loc_B64EE3: FFree1Str var_C0
  loc_B64EE6: FFree1Ad var_98
  loc_B64EEB: LitVarStr var_AC, "ranksCheck1"
  loc_B64EF0: PopAdLdVar
  loc_B64EF1: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B64EF6: FStStrNoPop var_C0
  loc_B64EF9: ImpAdLdRf MemVar_C0F3D4
  loc_B64EFC: NewIfNullPr frmSettings
  loc_B64EFF: VCallAd Control_ID_ranksCheck1
  loc_B64F02: FStAdFunc var_98
  loc_B64F05: FLdPr var_98
  loc_B64F08: frmSettings.CheckBox.Caption = from_stack_1
  loc_B64F0D: FFree1Str var_C0
  loc_B64F10: FFree1Ad var_98
  loc_B64F15: LitVarStr var_AC, "ranksCheck2"
  loc_B64F1A: PopAdLdVar
  loc_B64F1B: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B64F20: FStStrNoPop var_C0
  loc_B64F23: ImpAdLdRf MemVar_C0F3D4
  loc_B64F26: NewIfNullPr frmSettings
  loc_B64F29: VCallAd Control_ID_ranksCheck2
  loc_B64F2C: FStAdFunc var_98
  loc_B64F2F: FLdPr var_98
  loc_B64F32: frmSettings.CheckBox.Caption = from_stack_1
  loc_B64F37: FFree1Str var_C0
  loc_B64F3A: FFree1Ad var_98
  loc_B64F3F: LitVarStr var_AC, "ranksCheck3"
  loc_B64F44: PopAdLdVar
  loc_B64F45: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B64F4A: FStStrNoPop var_C0
  loc_B64F4D: ImpAdLdRf MemVar_C0F3D4
  loc_B64F50: NewIfNullPr frmSettings
  loc_B64F53: VCallAd Control_ID_ranksCheck3
  loc_B64F56: FStAdFunc var_98
  loc_B64F59: FLdPr var_98
  loc_B64F5C: frmSettings.CheckBox.Caption = from_stack_1
  loc_B64F61: FFree1Str var_C0
  loc_B64F64: FFree1Ad var_98
  loc_B64F69: LitVarStr var_AC, "ranksCheck4"
  loc_B64F6E: PopAdLdVar
  loc_B64F6F: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B64F74: FStStrNoPop var_C0
  loc_B64F77: ImpAdLdRf MemVar_C0F3D4
  loc_B64F7A: NewIfNullPr frmSettings
  loc_B64F7D: VCallAd Control_ID_ranksCheck4
  loc_B64F80: FStAdFunc var_98
  loc_B64F83: FLdPr var_98
  loc_B64F86: frmSettings.CheckBox.Caption = from_stack_1
  loc_B64F8B: FFree1Str var_C0
  loc_B64F8E: FFree1Ad var_98
  loc_B64F93: LitVarStr var_AC, "ranksCheck5"
  loc_B64F98: PopAdLdVar
  loc_B64F99: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B64F9E: FStStrNoPop var_C0
  loc_B64FA1: ImpAdLdRf MemVar_C0F3D4
  loc_B64FA4: NewIfNullPr frmSettings
  loc_B64FA7: VCallAd Control_ID_ranksCheck5
  loc_B64FAA: FStAdFunc var_98
  loc_B64FAD: FLdPr var_98
  loc_B64FB0: frmSettings.CheckBox.Caption = from_stack_1
  loc_B64FB5: FFree1Str var_C0
  loc_B64FB8: FFree1Ad var_98
  loc_B64FBD: LitVarStr var_AC, "savebutton"
  loc_B64FC2: PopAdLdVar
  loc_B64FC3: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B64FC8: FStStrNoPop var_C0
  loc_B64FCB: ImpAdLdRf MemVar_C0F3D4
  loc_B64FCE: NewIfNullPr frmSettings
  loc_B64FD1: VCallAd Control_ID_ranksCommand1
  loc_B64FD4: FStAdFunc var_98
  loc_B64FD7: FLdPr var_98
  loc_B64FDA: frmSettings.CommandButton.Caption = from_stack_1
  loc_B64FDF: FFree1Str var_C0
  loc_B64FE2: FFree1Ad var_98
  loc_B64FE7: LitVarStr var_AC, "restorebutton"
  loc_B64FEC: PopAdLdVar
  loc_B64FED: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B64FF2: FStStrNoPop var_C0
  loc_B64FF5: ImpAdLdRf MemVar_C0F3D4
  loc_B64FF8: NewIfNullPr frmSettings
  loc_B64FFB: VCallAd Control_ID_ranksCommand2
  loc_B64FFE: FStAdFunc var_98
  loc_B65001: FLdPr var_98
  loc_B65004: frmSettings.CommandButton.Caption = from_stack_1
  loc_B65009: FFree1Str var_C0
  loc_B6500C: FFree1Ad var_98
  loc_B65011: LitStr vbNullString
  loc_B65014: ImpAdLdRf MemVar_C0F3D4
  loc_B65017: NewIfNullPr frmSettings
  loc_B6501A: VCallAd Control_ID_ranksText1
  loc_B6501D: FStAdFunc var_98
  loc_B65020: FLdPr var_98
  loc_B65023: frmSettings.TextBox.Text = from_stack_1
  loc_B65028: FFree1Ad var_98
  loc_B6502D: LitStr vbNullString
  loc_B65030: ImpAdLdRf MemVar_C0F3D4
  loc_B65033: NewIfNullPr frmSettings
  loc_B65036: VCallAd Control_ID_ranksText2
  loc_B65039: FStAdFunc var_98
  loc_B6503C: FLdPr var_98
  loc_B6503F: frmSettings.TextBox.Text = from_stack_1
  loc_B65044: FFree1Ad var_98
  loc_B65049: LitI2_Byte 0
  loc_B6504B: ImpAdLdRf MemVar_C0F3D4
  loc_B6504E: NewIfNullPr frmSettings
  loc_B65051: VCallAd Control_ID_ranksCheck1
  loc_B65054: FStAdFunc var_98
  loc_B65057: FLdPr var_98
  loc_B6505A: frmSettings.CheckBox.Value = from_stack_1
  loc_B6505F: FFree1Ad var_98
  loc_B65064: LitI2_Byte 0
  loc_B65066: ImpAdLdRf MemVar_C0F3D4
  loc_B65069: NewIfNullPr frmSettings
  loc_B6506C: VCallAd Control_ID_ranksCheck2
  loc_B6506F: FStAdFunc var_98
  loc_B65072: FLdPr var_98
  loc_B65075: frmSettings.CheckBox.Value = from_stack_1
  loc_B6507A: FFree1Ad var_98
  loc_B6507F: LitI2_Byte 0
  loc_B65081: ImpAdLdRf MemVar_C0F3D4
  loc_B65084: NewIfNullPr frmSettings
  loc_B65087: VCallAd Control_ID_ranksCheck3
  loc_B6508A: FStAdFunc var_98
  loc_B6508D: FLdPr var_98
  loc_B65090: frmSettings.CheckBox.Value = from_stack_1
  loc_B65095: FFree1Ad var_98
  loc_B6509A: LitI2_Byte 0
  loc_B6509C: ImpAdLdRf MemVar_C0F3D4
  loc_B6509F: NewIfNullPr frmSettings
  loc_B650A2: VCallAd Control_ID_ranksCheck4
  loc_B650A5: FStAdFunc var_98
  loc_B650A8: FLdPr var_98
  loc_B650AB: frmSettings.CheckBox.Value = from_stack_1
  loc_B650B0: FFree1Ad var_98
  loc_B650B5: LitI2_Byte 0
  loc_B650B7: ImpAdLdRf MemVar_C0F3D4
  loc_B650BA: NewIfNullPr frmSettings
  loc_B650BD: VCallAd Control_ID_ranksCheck5
  loc_B650C0: FStAdFunc var_98
  loc_B650C3: FLdPr var_98
  loc_B650C6: frmSettings.CheckBox.Value = from_stack_1
  loc_B650CB: FFree1Ad var_98
  loc_B650D0: LitI2 200
  loc_B650D3: LitI2 164
  loc_B650D6: LitI2_Byte &H65
  loc_B650D8: ImpAdCallI2 RGB(, , )
  loc_B650DD: ImpAdLdRf MemVar_C0F3D4
  loc_B650E0: NewIfNullPr frmSettings
  loc_B650E3: VCallAd Control_ID_Pictab_ranks
  loc_B650E6: FStAdFunc var_98
  loc_B650E9: FLdPr var_98
  loc_B650EC: frmSettings.PictureBox.BackColor = from_stack_1
  loc_B650F1: FFree1Ad var_98
  loc_B650F6: LitI2 200
  loc_B650F9: LitI2 164
  loc_B650FC: LitI2_Byte &H65
  loc_B650FE: ImpAdCallI2 RGB(, , )
  loc_B65103: ImpAdLdRf MemVar_C0F3D4
  loc_B65106: NewIfNullPr frmSettings
  loc_B65109: VCallAd Control_ID_ranksCheck1
  loc_B6510C: FStAdFunc var_98
  loc_B6510F: FLdPr var_98
  loc_B65112: frmSettings.CheckBox.BackColor = from_stack_1
  loc_B65117: FFree1Ad var_98
  loc_B6511C: LitI2 200
  loc_B6511F: LitI2 164
  loc_B65122: LitI2_Byte &H65
  loc_B65124: ImpAdCallI2 RGB(, , )
  loc_B65129: ImpAdLdRf MemVar_C0F3D4
  loc_B6512C: NewIfNullPr frmSettings
  loc_B6512F: VCallAd Control_ID_ranksCheck2
  loc_B65132: FStAdFunc var_98
  loc_B65135: FLdPr var_98
  loc_B65138: frmSettings.CheckBox.BackColor = from_stack_1
  loc_B6513D: FFree1Ad var_98
  loc_B65142: LitI2 200
  loc_B65145: LitI2 164
  loc_B65148: LitI2_Byte &H65
  loc_B6514A: ImpAdCallI2 RGB(, , )
  loc_B6514F: ImpAdLdRf MemVar_C0F3D4
  loc_B65152: NewIfNullPr frmSettings
  loc_B65155: VCallAd Control_ID_ranksCheck3
  loc_B65158: FStAdFunc var_98
  loc_B6515B: FLdPr var_98
  loc_B6515E: frmSettings.CheckBox.BackColor = from_stack_1
  loc_B65163: FFree1Ad var_98
  loc_B65168: LitI2 200
  loc_B6516B: LitI2 164
  loc_B6516E: LitI2_Byte &H65
  loc_B65170: ImpAdCallI2 RGB(, , )
  loc_B65175: ImpAdLdRf MemVar_C0F3D4
  loc_B65178: NewIfNullPr frmSettings
  loc_B6517B: VCallAd Control_ID_ranksCheck4
  loc_B6517E: FStAdFunc var_98
  loc_B65181: FLdPr var_98
  loc_B65184: frmSettings.CheckBox.BackColor = from_stack_1
  loc_B65189: FFree1Ad var_98
  loc_B6518E: LitI2 200
  loc_B65191: LitI2 164
  loc_B65194: LitI2_Byte &H65
  loc_B65196: ImpAdCallI2 RGB(, , )
  loc_B6519B: ImpAdLdRf MemVar_C0F3D4
  loc_B6519E: NewIfNullPr frmSettings
  loc_B651A1: VCallAd Control_ID_ranksCheck5
  loc_B651A4: FStAdFunc var_98
  loc_B651A7: FLdPr var_98
  loc_B651AA: frmSettings.CheckBox.BackColor = from_stack_1
  loc_B651AF: FFree1Ad var_98
  loc_B651B4: FLdRfVar var_C4
  loc_B651B7: FLdRfVar var_98
  loc_B651BA: LitI4 0
  loc_B651BF: LitI2_Byte 0
  loc_B651C1: LitI4 1
  loc_B651C6: ImpAdLdI4 MemVar_C0F044
  loc_B651C9: LitStr "configuration\ranks.ini"
  loc_B651CC: ConcatStr
  loc_B651CD: FStStrNoPop var_C0
  loc_B651D0: ImpAdLdRf MemVar_C0F040
  loc_B651D3: NewIfNullPr IFileSystem3
  loc_B651D6: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B651DB: FLdPr var_98
  loc_B651DE:  = Me.ReadAll
  loc_B651E3: LitI4 0
  loc_B651E8: LitI4 -1
  loc_B651ED: LitVarStr var_AC, vbCrLf
  loc_B651F2: FStVarCopyObj var_D4
  loc_B651F5: FLdRfVar var_D4
  loc_B651F8: ILdRf var_C4
  loc_B651FB: FLdRfVar var_E4
  loc_B651FE: ImpAdCallFPR4  = Split(, , , )
  loc_B65203: FLdRfVar var_E4
  loc_B65206: FStVar var_F4
  loc_B6520A: FFreeStr var_C0 = ""
  loc_B65211: FFree1Ad var_98
  loc_B65214: FFree1Var var_D4 = ""
  loc_B65219: ImpAdLdRf MemVar_C0F3D4
  loc_B6521C: NewIfNullPr frmSettings
  loc_B6521F: VCallAd Control_ID_ranksCombo1
  loc_B65222: FStAdFunc var_98
  loc_B65225: FLdPr var_98
  loc_B65228: frmSettings.ComboBox.Clear
  loc_B6522D: FFree1Ad var_98
  loc_B65232: LitVarI2 var_114, 0
  loc_B65237: FLdRfVar var_104
  loc_B6523A: FLdRfVar var_F4
  loc_B6523D: CRefVarAry
  loc_B6523F: PopAdLd4
  loc_B65240: LitI2_Byte 1
  loc_B65242: FnUBound
  loc_B65244: CVarI4
  loc_B65248: ForVar var_134
  loc_B65250: FLdRfVar var_104
  loc_B65253: CDargRef
  loc_B65257: FLdRfVar var_F4
  loc_B6525A: VarIndexLdVar
  loc_B65260: LitVarStr var_BC, vbNullString
  loc_B65265: HardType
  loc_B65266: NeVarBool
  loc_B65268: FFree1Var var_D4 = ""
  loc_B6526B: BranchF loc_B652A5
  loc_B65270: LitVar_Missing var_BC
  loc_B65273: PopAdLdVar
  loc_B65274: FLdRfVar var_104
  loc_B65277: CDargRef
  loc_B6527B: FLdRfVar var_F4
  loc_B6527E: VarIndexLdVar
  loc_B65284: CStrVarVal var_C0
  loc_B65288: ImpAdLdRf MemVar_C0F3D4
  loc_B6528B: NewIfNullPr frmSettings
  loc_B6528E: VCallAd Control_ID_ranksCombo1
  loc_B65291: FStAdFunc var_98
  loc_B65294: FLdPr var_98
  loc_B65297: frmSettings.ComboBox.AddItem from_stack_1, from_stack_2
  loc_B6529C: FFree1Str var_C0
  loc_B6529F: FFree1Ad var_98
  loc_B652A2: FFree1Var var_D4 = ""
  loc_B652A7: FLdRfVar var_104
  loc_B652AA: NextStepVar var_134
  loc_B652B2: LitStr "Ranks"
  loc_B652B5: ImpAdLdRf MemVar_C0F3D4
  loc_B652B8: NewIfNullPr frmSettings
  loc_B652BB: VCallAd Control_ID_ranksCombo1
  loc_B652BE: FStAdFunc var_98
  loc_B652C1: FLdPr var_98
  loc_B652C4: frmSettings.ComboBox.Text = from_stack_1
  loc_B652C9: FFree1Ad var_98
  loc_B652CE: ImpAdLdRf MemVar_C0F3D4
  loc_B652D1: NewIfNullPr frmSettings
  loc_B652D4: VCallAd Control_ID_ranksList1
  loc_B652D7: FStAdFunc var_98
  loc_B652DA: FLdPr var_98
  loc_B652DD: frmSettings.ListBox.Clear
  loc_B652E2: FFree1Ad var_98
  loc_B652E7: LitVar_Missing var_AC
  loc_B652EA: PopAdLdVar
  loc_B652EB: LitStr ":kick"
  loc_B652EE: ImpAdLdRf MemVar_C0F3D4
  loc_B652F1: NewIfNullPr frmSettings
  loc_B652F4: VCallAd Control_ID_ranksList1
  loc_B652F7: FStAdFunc var_98
  loc_B652FA: FLdPr var_98
  loc_B652FD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65302: FFree1Ad var_98
  loc_B65307: LitVar_Missing var_AC
  loc_B6530A: PopAdLdVar
  loc_B6530B: LitStr ":voucher"
  loc_B6530E: ImpAdLdRf MemVar_C0F3D4
  loc_B65311: NewIfNullPr frmSettings
  loc_B65314: VCallAd Control_ID_ranksList1
  loc_B65317: FStAdFunc var_98
  loc_B6531A: FLdPr var_98
  loc_B6531D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65322: FFree1Ad var_98
  loc_B65327: LitVar_Missing var_AC
  loc_B6532A: PopAdLdVar
  loc_B6532B: LitStr ":shutup"
  loc_B6532E: ImpAdLdRf MemVar_C0F3D4
  loc_B65331: NewIfNullPr frmSettings
  loc_B65334: VCallAd Control_ID_ranksList1
  loc_B65337: FStAdFunc var_98
  loc_B6533A: FLdPr var_98
  loc_B6533D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65342: FFree1Ad var_98
  loc_B65347: LitVar_Missing var_AC
  loc_B6534A: PopAdLdVar
  loc_B6534B: LitStr ":hotelalert"
  loc_B6534E: ImpAdLdRf MemVar_C0F3D4
  loc_B65351: NewIfNullPr frmSettings
  loc_B65354: VCallAd Control_ID_ranksList1
  loc_B65357: FStAdFunc var_98
  loc_B6535A: FLdPr var_98
  loc_B6535D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65362: FFree1Ad var_98
  loc_B65367: LitVar_Missing var_AC
  loc_B6536A: PopAdLdVar
  loc_B6536B: LitStr ":roomunmute"
  loc_B6536E: ImpAdLdRf MemVar_C0F3D4
  loc_B65371: NewIfNullPr frmSettings
  loc_B65374: VCallAd Control_ID_ranksList1
  loc_B65377: FStAdFunc var_98
  loc_B6537A: FLdPr var_98
  loc_B6537D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65382: FFree1Ad var_98
  loc_B65387: LitVar_Missing var_AC
  loc_B6538A: PopAdLdVar
  loc_B6538B: LitStr ":takebadge"
  loc_B6538E: ImpAdLdRf MemVar_C0F3D4
  loc_B65391: NewIfNullPr frmSettings
  loc_B65394: VCallAd Control_ID_ranksList1
  loc_B65397: FStAdFunc var_98
  loc_B6539A: FLdPr var_98
  loc_B6539D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B653A2: FFree1Ad var_98
  loc_B653A7: LitVar_Missing var_AC
  loc_B653AA: PopAdLdVar
  loc_B653AB: LitStr ":closeroom"
  loc_B653AE: ImpAdLdRf MemVar_C0F3D4
  loc_B653B1: NewIfNullPr frmSettings
  loc_B653B4: VCallAd Control_ID_ranksList1
  loc_B653B7: FStAdFunc var_98
  loc_B653BA: FLdPr var_98
  loc_B653BD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B653C2: FFree1Ad var_98
  loc_B653C7: LitVar_Missing var_AC
  loc_B653CA: PopAdLdVar
  loc_B653CB: LitStr ":infobus"
  loc_B653CE: ImpAdLdRf MemVar_C0F3D4
  loc_B653D1: NewIfNullPr frmSettings
  loc_B653D4: VCallAd Control_ID_ranksList1
  loc_B653D7: FStAdFunc var_98
  loc_B653DA: FLdPr var_98
  loc_B653DD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B653E2: FFree1Ad var_98
  loc_B653E7: LitVar_Missing var_AC
  loc_B653EA: PopAdLdVar
  loc_B653EB: LitStr ":superban"
  loc_B653EE: ImpAdLdRf MemVar_C0F3D4
  loc_B653F1: NewIfNullPr frmSettings
  loc_B653F4: VCallAd Control_ID_ranksList1
  loc_B653F7: FStAdFunc var_98
  loc_B653FA: FLdPr var_98
  loc_B653FD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65402: FFree1Ad var_98
  loc_B65407: LitVar_Missing var_AC
  loc_B6540A: PopAdLdVar
  loc_B6540B: LitStr ":ban"
  loc_B6540E: ImpAdLdRf MemVar_C0F3D4
  loc_B65411: NewIfNullPr frmSettings
  loc_B65414: VCallAd Control_ID_ranksList1
  loc_B65417: FStAdFunc var_98
  loc_B6541A: FLdPr var_98
  loc_B6541D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65422: FFree1Ad var_98
  loc_B65427: LitVar_Missing var_AC
  loc_B6542A: PopAdLdVar
  loc_B6542B: LitStr ":credits"
  loc_B6542E: ImpAdLdRf MemVar_C0F3D4
  loc_B65431: NewIfNullPr frmSettings
  loc_B65434: VCallAd Control_ID_ranksList1
  loc_B65437: FStAdFunc var_98
  loc_B6543A: FLdPr var_98
  loc_B6543D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65442: FFree1Ad var_98
  loc_B65447: LitVar_Missing var_AC
  loc_B6544A: PopAdLdVar
  loc_B6544B: LitStr ":roomshutup"
  loc_B6544E: ImpAdLdRf MemVar_C0F3D4
  loc_B65451: NewIfNullPr frmSettings
  loc_B65454: VCallAd Control_ID_ranksList1
  loc_B65457: FStAdFunc var_98
  loc_B6545A: FLdPr var_98
  loc_B6545D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65462: FFree1Ad var_98
  loc_B65467: LitVar_Missing var_AC
  loc_B6546A: PopAdLdVar
  loc_B6546B: LitStr ":takecredits"
  loc_B6546E: ImpAdLdRf MemVar_C0F3D4
  loc_B65471: NewIfNullPr frmSettings
  loc_B65474: VCallAd Control_ID_ranksList1
  loc_B65477: FStAdFunc var_98
  loc_B6547A: FLdPr var_98
  loc_B6547D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65482: FFree1Ad var_98
  loc_B65487: LitVar_Missing var_AC
  loc_B6548A: PopAdLdVar
  loc_B6548B: LitStr ":deleteroom"
  loc_B6548E: ImpAdLdRf MemVar_C0F3D4
  loc_B65491: NewIfNullPr frmSettings
  loc_B65494: VCallAd Control_ID_ranksList1
  loc_B65497: FStAdFunc var_98
  loc_B6549A: FLdPr var_98
  loc_B6549D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B654A2: FFree1Ad var_98
  loc_B654A7: LitVar_Missing var_AC
  loc_B654AA: PopAdLdVar
  loc_B654AB: LitStr ":openroom"
  loc_B654AE: ImpAdLdRf MemVar_C0F3D4
  loc_B654B1: NewIfNullPr frmSettings
  loc_B654B4: VCallAd Control_ID_ranksList1
  loc_B654B7: FStAdFunc var_98
  loc_B654BA: FLdPr var_98
  loc_B654BD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B654C2: FFree1Ad var_98
  loc_B654C7: LitVar_Missing var_AC
  loc_B654CA: PopAdLdVar
  loc_B654CB: LitStr ":changepassword"
  loc_B654CE: ImpAdLdRf MemVar_C0F3D4
  loc_B654D1: NewIfNullPr frmSettings
  loc_B654D4: VCallAd Control_ID_ranksList1
  loc_B654D7: FStAdFunc var_98
  loc_B654DA: FLdPr var_98
  loc_B654DD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B654E2: FFree1Ad var_98
  loc_B654E7: LitVar_Missing var_AC
  loc_B654EA: PopAdLdVar
  loc_B654EB: LitStr ":alert"
  loc_B654EE: ImpAdLdRf MemVar_C0F3D4
  loc_B654F1: NewIfNullPr frmSettings
  loc_B654F4: VCallAd Control_ID_ranksList1
  loc_B654F7: FStAdFunc var_98
  loc_B654FA: FLdPr var_98
  loc_B654FD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65502: FFree1Ad var_98
  loc_B65507: LitVar_Missing var_AC
  loc_B6550A: PopAdLdVar
  loc_B6550B: LitStr ":whosonline"
  loc_B6550E: ImpAdLdRf MemVar_C0F3D4
  loc_B65511: NewIfNullPr frmSettings
  loc_B65514: VCallAd Control_ID_ranksList1
  loc_B65517: FStAdFunc var_98
  loc_B6551A: FLdPr var_98
  loc_B6551D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65522: FFree1Ad var_98
  loc_B65527: LitVar_Missing var_AC
  loc_B6552A: PopAdLdVar
  loc_B6552B: LitStr ":unmute"
  loc_B6552E: ImpAdLdRf MemVar_C0F3D4
  loc_B65531: NewIfNullPr frmSettings
  loc_B65534: VCallAd Control_ID_ranksList1
  loc_B65537: FStAdFunc var_98
  loc_B6553A: FLdPr var_98
  loc_B6553D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65542: FFree1Ad var_98
  loc_B65547: LitVar_Missing var_AC
  loc_B6554A: PopAdLdVar
  loc_B6554B: LitStr ":userdata"
  loc_B6554E: ImpAdLdRf MemVar_C0F3D4
  loc_B65551: NewIfNullPr frmSettings
  loc_B65554: VCallAd Control_ID_ranksList1
  loc_B65557: FStAdFunc var_98
  loc_B6555A: FLdPr var_98
  loc_B6555D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65562: FFree1Ad var_98
  loc_B65567: LitVar_Missing var_AC
  loc_B6556A: PopAdLdVar
  loc_B6556B: LitStr ":givebadge"
  loc_B6556E: ImpAdLdRf MemVar_C0F3D4
  loc_B65571: NewIfNullPr frmSettings
  loc_B65574: VCallAd Control_ID_ranksList1
  loc_B65577: FStAdFunc var_98
  loc_B6557A: FLdPr var_98
  loc_B6557D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65582: FFree1Ad var_98
  loc_B65587: LitVar_Missing var_AC
  loc_B6558A: PopAdLdVar
  loc_B6558B: LitStr ":unban"
  loc_B6558E: ImpAdLdRf MemVar_C0F3D4
  loc_B65591: NewIfNullPr frmSettings
  loc_B65594: VCallAd Control_ID_ranksList1
  loc_B65597: FStAdFunc var_98
  loc_B6559A: FLdPr var_98
  loc_B6559D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B655A2: FFree1Ad var_98
  loc_B655A7: LitVar_Missing var_AC
  loc_B655AA: PopAdLdVar
  loc_B655AB: LitStr ":rank"
  loc_B655AE: ImpAdLdRf MemVar_C0F3D4
  loc_B655B1: NewIfNullPr frmSettings
  loc_B655B4: VCallAd Control_ID_ranksList1
  loc_B655B7: FStAdFunc var_98
  loc_B655BA: FLdPr var_98
  loc_B655BD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B655C2: FFree1Ad var_98
  loc_B655C7: LitVar_Missing var_AC
  loc_B655CA: PopAdLdVar
  loc_B655CB: LitStr ":changemission"
  loc_B655CE: ImpAdLdRf MemVar_C0F3D4
  loc_B655D1: NewIfNullPr frmSettings
  loc_B655D4: VCallAd Control_ID_ranksList1
  loc_B655D7: FStAdFunc var_98
  loc_B655DA: FLdPr var_98
  loc_B655DD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B655E2: FFree1Ad var_98
  loc_B655E7: LitVar_Missing var_AC
  loc_B655EA: PopAdLdVar
  loc_B655EB: LitStr ":cleanhand"
  loc_B655EE: ImpAdLdRf MemVar_C0F3D4
  loc_B655F1: NewIfNullPr frmSettings
  loc_B655F4: VCallAd Control_ID_ranksList1
  loc_B655F7: FStAdFunc var_98
  loc_B655FA: FLdPr var_98
  loc_B655FD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65602: FFree1Ad var_98
  loc_B65607: LitVar_Missing var_AC
  loc_B6560A: PopAdLdVar
  loc_B6560B: LitStr ":givedrink"
  loc_B6560E: ImpAdLdRf MemVar_C0F3D4
  loc_B65611: NewIfNullPr frmSettings
  loc_B65614: VCallAd Control_ID_ranksList1
  loc_B65617: FStAdFunc var_98
  loc_B6561A: FLdPr var_98
  loc_B6561D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65622: FFree1Ad var_98
  loc_B65627: LitVar_Missing var_AC
  loc_B6562A: PopAdLdVar
  loc_B6562B: LitStr ":refresh"
  loc_B6562E: ImpAdLdRf MemVar_C0F3D4
  loc_B65631: NewIfNullPr frmSettings
  loc_B65634: VCallAd Control_ID_ranksList1
  loc_B65637: FStAdFunc var_98
  loc_B6563A: FLdPr var_98
  loc_B6563D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65642: FFree1Ad var_98
  loc_B65647: LitVar_Missing var_AC
  loc_B6564A: PopAdLdVar
  loc_B6564B: LitStr ":telewarp"
  loc_B6564E: ImpAdLdRf MemVar_C0F3D4
  loc_B65651: NewIfNullPr frmSettings
  loc_B65654: VCallAd Control_ID_ranksList1
  loc_B65657: FStAdFunc var_98
  loc_B6565A: FLdPr var_98
  loc_B6565D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65662: FFree1Ad var_98
  loc_B65667: LitVar_Missing var_AC
  loc_B6566A: PopAdLdVar
  loc_B6566B: LitStr ":invisible"
  loc_B6566E: ImpAdLdRf MemVar_C0F3D4
  loc_B65671: NewIfNullPr frmSettings
  loc_B65674: VCallAd Control_ID_ranksList1
  loc_B65677: FStAdFunc var_98
  loc_B6567A: FLdPr var_98
  loc_B6567D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65682: FFree1Ad var_98
  loc_B65687: LitVar_Missing var_AC
  loc_B6568A: PopAdLdVar
  loc_B6568B: LitStr ":endserver"
  loc_B6568E: ImpAdLdRf MemVar_C0F3D4
  loc_B65691: NewIfNullPr frmSettings
  loc_B65694: VCallAd Control_ID_ranksList1
  loc_B65697: FStAdFunc var_98
  loc_B6569A: FLdPr var_98
  loc_B6569D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B656A2: FFree1Ad var_98
  loc_B656A7: LitVar_Missing var_AC
  loc_B656AA: PopAdLdVar
  loc_B656AB: LitStr ":reboot"
  loc_B656AE: ImpAdLdRf MemVar_C0F3D4
  loc_B656B1: NewIfNullPr frmSettings
  loc_B656B4: VCallAd Control_ID_ranksList1
  loc_B656B7: FStAdFunc var_98
  loc_B656BA: FLdPr var_98
  loc_B656BD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B656C2: FFree1Ad var_98
  loc_B656C7: LitVar_Missing var_AC
  loc_B656CA: PopAdLdVar
  loc_B656CB: LitStr ":diving"
  loc_B656CE: ImpAdLdRf MemVar_C0F3D4
  loc_B656D1: NewIfNullPr frmSettings
  loc_B656D4: VCallAd Control_ID_ranksList1
  loc_B656D7: FStAdFunc var_98
  loc_B656DA: FLdPr var_98
  loc_B656DD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B656E2: FFree1Ad var_98
  loc_B656E7: LitVar_Missing var_AC
  loc_B656EA: PopAdLdVar
  loc_B656EB: LitStr ":disconnect"
  loc_B656EE: ImpAdLdRf MemVar_C0F3D4
  loc_B656F1: NewIfNullPr frmSettings
  loc_B656F4: VCallAd Control_ID_ranksList1
  loc_B656F7: FStAdFunc var_98
  loc_B656FA: FLdPr var_98
  loc_B656FD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65702: FFree1Ad var_98
  loc_B65707: LitVar_Missing var_AC
  loc_B6570A: PopAdLdVar
  loc_B6570B: LitStr ":poll"
  loc_B6570E: ImpAdLdRf MemVar_C0F3D4
  loc_B65711: NewIfNullPr frmSettings
  loc_B65714: VCallAd Control_ID_ranksList1
  loc_B65717: FStAdFunc var_98
  loc_B6571A: FLdPr var_98
  loc_B6571D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65722: FFree1Ad var_98
  loc_B65727: LitVar_Missing var_AC
  loc_B6572A: PopAdLdVar
  loc_B6572B: LitStr ":wheres"
  loc_B6572E: ImpAdLdRf MemVar_C0F3D4
  loc_B65731: NewIfNullPr frmSettings
  loc_B65734: VCallAd Control_ID_ranksList1
  loc_B65737: FStAdFunc var_98
  loc_B6573A: FLdPr var_98
  loc_B6573D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65742: FFree1Ad var_98
  loc_B65747: LitVar_Missing var_AC
  loc_B6574A: PopAdLdVar
  loc_B6574B: LitStr ":warp"
  loc_B6574E: ImpAdLdRf MemVar_C0F3D4
  loc_B65751: NewIfNullPr frmSettings
  loc_B65754: VCallAd Control_ID_ranksList1
  loc_B65757: FStAdFunc var_98
  loc_B6575A: FLdPr var_98
  loc_B6575D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65762: FFree1Ad var_98
  loc_B65767: LitVar_Missing var_AC
  loc_B6576A: PopAdLdVar
  loc_B6576B: LitStr ":userwarp"
  loc_B6576E: ImpAdLdRf MemVar_C0F3D4
  loc_B65771: NewIfNullPr frmSettings
  loc_B65774: VCallAd Control_ID_ranksList1
  loc_B65777: FStAdFunc var_98
  loc_B6577A: FLdPr var_98
  loc_B6577D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65782: FFree1Ad var_98
  loc_B65787: LitVar_Missing var_AC
  loc_B6578A: PopAdLdVar
  loc_B6578B: LitStr ":fracts"
  loc_B6578E: ImpAdLdRf MemVar_C0F3D4
  loc_B65791: NewIfNullPr frmSettings
  loc_B65794: VCallAd Control_ID_ranksList1
  loc_B65797: FStAdFunc var_98
  loc_B6579A: FLdPr var_98
  loc_B6579D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B657A2: FFree1Ad var_98
  loc_B657A7: LitVar_Missing var_AC
  loc_B657AA: PopAdLdVar
  loc_B657AB: LitStr ":infract"
  loc_B657AE: ImpAdLdRf MemVar_C0F3D4
  loc_B657B1: NewIfNullPr frmSettings
  loc_B657B4: VCallAd Control_ID_ranksList1
  loc_B657B7: FStAdFunc var_98
  loc_B657BA: FLdPr var_98
  loc_B657BD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B657C2: FFree1Ad var_98
  loc_B657C7: LitVar_Missing var_AC
  loc_B657CA: PopAdLdVar
  loc_B657CB: LitStr ":position"
  loc_B657CE: ImpAdLdRf MemVar_C0F3D4
  loc_B657D1: NewIfNullPr frmSettings
  loc_B657D4: VCallAd Control_ID_ranksList1
  loc_B657D7: FStAdFunc var_98
  loc_B657DA: FLdPr var_98
  loc_B657DD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B657E2: FFree1Ad var_98
  loc_B657E7: LitVar_Missing var_AC
  loc_B657EA: PopAdLdVar
  loc_B657EB: LitStr ":wheres"
  loc_B657EE: ImpAdLdRf MemVar_C0F3D4
  loc_B657F1: NewIfNullPr frmSettings
  loc_B657F4: VCallAd Control_ID_ranksList1
  loc_B657F7: FStAdFunc var_98
  loc_B657FA: FLdPr var_98
  loc_B657FD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65802: FFree1Ad var_98
  loc_B65807: LitVar_Missing var_AC
  loc_B6580A: PopAdLdVar
  loc_B6580B: LitStr ":answer"
  loc_B6580E: ImpAdLdRf MemVar_C0F3D4
  loc_B65811: NewIfNullPr frmSettings
  loc_B65814: VCallAd Control_ID_ranksList1
  loc_B65817: FStAdFunc var_98
  loc_B6581A: FLdPr var_98
  loc_B6581D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65822: FFree1Ad var_98
  loc_B65827: LitVar_Missing var_AC
  loc_B6582A: PopAdLdVar
  loc_B6582B: LitStr ":email"
  loc_B6582E: ImpAdLdRf MemVar_C0F3D4
  loc_B65831: NewIfNullPr frmSettings
  loc_B65834: VCallAd Control_ID_ranksList1
  loc_B65837: FStAdFunc var_98
  loc_B6583A: FLdPr var_98
  loc_B6583D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65842: FFree1Ad var_98
  loc_B65847: LitVar_Missing var_AC
  loc_B6584A: PopAdLdVar
  loc_B6584B: LitStr ":resetvoters"
  loc_B6584E: ImpAdLdRf MemVar_C0F3D4
  loc_B65851: NewIfNullPr frmSettings
  loc_B65854: VCallAd Control_ID_ranksList1
  loc_B65857: FStAdFunc var_98
  loc_B6585A: FLdPr var_98
  loc_B6585D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65862: FFree1Ad var_98
  loc_B65867: LitVar_Missing var_AC
  loc_B6586A: PopAdLdVar
  loc_B6586B: LitStr ":setscores"
  loc_B6586E: ImpAdLdRf MemVar_C0F3D4
  loc_B65871: NewIfNullPr frmSettings
  loc_B65874: VCallAd Control_ID_ranksList1
  loc_B65877: FStAdFunc var_98
  loc_B6587A: FLdPr var_98
  loc_B6587D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65882: FFree1Ad var_98
  loc_B65887: LitVar_Missing var_AC
  loc_B6588A: PopAdLdVar
  loc_B6588B: LitStr ":sentlog"
  loc_B6588E: ImpAdLdRf MemVar_C0F3D4
  loc_B65891: NewIfNullPr frmSettings
  loc_B65894: VCallAd Control_ID_ranksList1
  loc_B65897: FStAdFunc var_98
  loc_B6589A: FLdPr var_98
  loc_B6589D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B658A2: FFree1Ad var_98
  loc_B658A7: LitVar_Missing var_AC
  loc_B658AA: PopAdLdVar
  loc_B658AB: LitStr ":stoplog"
  loc_B658AE: ImpAdLdRf MemVar_C0F3D4
  loc_B658B1: NewIfNullPr frmSettings
  loc_B658B4: VCallAd Control_ID_ranksList1
  loc_B658B7: FStAdFunc var_98
  loc_B658BA: FLdPr var_98
  loc_B658BD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B658C2: FFree1Ad var_98
  loc_B658C7: LitVar_Missing var_AC
  loc_B658CA: PopAdLdVar
  loc_B658CB: LitStr ":startlog"
  loc_B658CE: ImpAdLdRf MemVar_C0F3D4
  loc_B658D1: NewIfNullPr frmSettings
  loc_B658D4: VCallAd Control_ID_ranksList1
  loc_B658D7: FStAdFunc var_98
  loc_B658DA: FLdPr var_98
  loc_B658DD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B658E2: FFree1Ad var_98
  loc_B658E7: LitVar_Missing var_AC
  loc_B658EA: PopAdLdVar
  loc_B658EB: LitStr ":getclient"
  loc_B658EE: ImpAdLdRf MemVar_C0F3D4
  loc_B658F1: NewIfNullPr frmSettings
  loc_B658F4: VCallAd Control_ID_ranksList1
  loc_B658F7: FStAdFunc var_98
  loc_B658FA: FLdPr var_98
  loc_B658FD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65902: FFree1Ad var_98
  loc_B65907: LitVar_Missing var_AC
  loc_B6590A: PopAdLdVar
  loc_B6590B: LitStr ":group"
  loc_B6590E: ImpAdLdRf MemVar_C0F3D4
  loc_B65911: NewIfNullPr frmSettings
  loc_B65914: VCallAd Control_ID_ranksList1
  loc_B65917: FStAdFunc var_98
  loc_B6591A: FLdPr var_98
  loc_B6591D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65922: FFree1Ad var_98
  loc_B65927: LitVar_Missing var_AC
  loc_B6592A: PopAdLdVar
  loc_B6592B: LitStr ":kill"
  loc_B6592E: ImpAdLdRf MemVar_C0F3D4
  loc_B65931: NewIfNullPr frmSettings
  loc_B65934: VCallAd Control_ID_ranksList1
  loc_B65937: FStAdFunc var_98
  loc_B6593A: FLdPr var_98
  loc_B6593D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65942: FFree1Ad var_98
  loc_B65947: LitVar_Missing var_AC
  loc_B6594A: PopAdLdVar
  loc_B6594B: LitStr ":userheight"
  loc_B6594E: ImpAdLdRf MemVar_C0F3D4
  loc_B65951: NewIfNullPr frmSettings
  loc_B65954: VCallAd Control_ID_ranksList1
  loc_B65957: FStAdFunc var_98
  loc_B6595A: FLdPr var_98
  loc_B6595D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65962: FFree1Ad var_98
  loc_B65967: LitVar_Missing var_AC
  loc_B6596A: PopAdLdVar
  loc_B6596B: LitStr ":height"
  loc_B6596E: ImpAdLdRf MemVar_C0F3D4
  loc_B65971: NewIfNullPr frmSettings
  loc_B65974: VCallAd Control_ID_ranksList1
  loc_B65977: FStAdFunc var_98
  loc_B6597A: FLdPr var_98
  loc_B6597D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65982: FFree1Ad var_98
  loc_B65987: LitVar_Missing var_AC
  loc_B6598A: PopAdLdVar
  loc_B6598B: LitStr ":clearhand"
  loc_B6598E: ImpAdLdRf MemVar_C0F3D4
  loc_B65991: NewIfNullPr frmSettings
  loc_B65994: VCallAd Control_ID_ranksList1
  loc_B65997: FStAdFunc var_98
  loc_B6599A: FLdPr var_98
  loc_B6599D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B659A2: FFree1Ad var_98
  loc_B659A7: LitVar_Missing var_AC
  loc_B659AA: PopAdLdVar
  loc_B659AB: LitStr ":moveto"
  loc_B659AE: ImpAdLdRf MemVar_C0F3D4
  loc_B659B1: NewIfNullPr frmSettings
  loc_B659B4: VCallAd Control_ID_ranksList1
  loc_B659B7: FStAdFunc var_98
  loc_B659BA: FLdPr var_98
  loc_B659BD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B659C2: FFree1Ad var_98
  loc_B659C7: LitVar_Missing var_AC
  loc_B659CA: PopAdLdVar
  loc_B659CB: LitStr ":jail"
  loc_B659CE: ImpAdLdRf MemVar_C0F3D4
  loc_B659D1: NewIfNullPr frmSettings
  loc_B659D4: VCallAd Control_ID_ranksList1
  loc_B659D7: FStAdFunc var_98
  loc_B659DA: FLdPr var_98
  loc_B659DD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B659E2: FFree1Ad var_98
  loc_B659E7: LitVar_Missing var_AC
  loc_B659EA: PopAdLdVar
  loc_B659EB: LitStr ":debug"
  loc_B659EE: ImpAdLdRf MemVar_C0F3D4
  loc_B659F1: NewIfNullPr frmSettings
  loc_B659F4: VCallAd Control_ID_ranksList1
  loc_B659F7: FStAdFunc var_98
  loc_B659FA: FLdPr var_98
  loc_B659FD: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65A02: FFree1Ad var_98
  loc_B65A07: LitVar_Missing var_AC
  loc_B65A0A: PopAdLdVar
  loc_B65A0B: LitStr ":bot"
  loc_B65A0E: ImpAdLdRf MemVar_C0F3D4
  loc_B65A11: NewIfNullPr frmSettings
  loc_B65A14: VCallAd Control_ID_ranksList1
  loc_B65A17: FStAdFunc var_98
  loc_B65A1A: FLdPr var_98
  loc_B65A1D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65A22: FFree1Ad var_98
  loc_B65A27: LitVar_Missing var_AC
  loc_B65A2A: PopAdLdVar
  loc_B65A2B: LitStr ":position"
  loc_B65A2E: ImpAdLdRf MemVar_C0F3D4
  loc_B65A31: NewIfNullPr frmSettings
  loc_B65A34: VCallAd Control_ID_ranksList1
  loc_B65A37: FStAdFunc var_98
  loc_B65A3A: FLdPr var_98
  loc_B65A3D: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65A42: FFree1Ad var_98
  loc_B65A47: ImpAdLdRf MemVar_C0F3D4
  loc_B65A4A: NewIfNullPr frmSettings
  loc_B65A4D: VCallAd Control_ID_ranksList2
  loc_B65A50: FStAdFunc var_98
  loc_B65A53: FLdPr var_98
  loc_B65A56: frmSettings.ListBox.Clear
  loc_B65A5B: FFree1Ad var_98
  loc_B65A60: LitVar_Missing var_AC
  loc_B65A63: PopAdLdVar
  loc_B65A64: LitStr "Alert User"
  loc_B65A67: ImpAdLdRf MemVar_C0F3D4
  loc_B65A6A: NewIfNullPr frmSettings
  loc_B65A6D: VCallAd Control_ID_ranksList2
  loc_B65A70: FStAdFunc var_98
  loc_B65A73: FLdPr var_98
  loc_B65A76: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65A7B: FFree1Ad var_98
  loc_B65A80: LitVar_Missing var_AC
  loc_B65A83: PopAdLdVar
  loc_B65A84: LitStr "Ban User"
  loc_B65A87: ImpAdLdRf MemVar_C0F3D4
  loc_B65A8A: NewIfNullPr frmSettings
  loc_B65A8D: VCallAd Control_ID_ranksList2
  loc_B65A90: FStAdFunc var_98
  loc_B65A93: FLdPr var_98
  loc_B65A96: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65A9B: FFree1Ad var_98
  loc_B65AA0: LitVar_Missing var_AC
  loc_B65AA3: PopAdLdVar
  loc_B65AA4: LitStr "Kick User"
  loc_B65AA7: ImpAdLdRf MemVar_C0F3D4
  loc_B65AAA: NewIfNullPr frmSettings
  loc_B65AAD: VCallAd Control_ID_ranksList2
  loc_B65AB0: FStAdFunc var_98
  loc_B65AB3: FLdPr var_98
  loc_B65AB6: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65ABB: FFree1Ad var_98
  loc_B65AC0: LitVar_Missing var_AC
  loc_B65AC3: PopAdLdVar
  loc_B65AC4: LitStr "Room Alert"
  loc_B65AC7: ImpAdLdRf MemVar_C0F3D4
  loc_B65ACA: NewIfNullPr frmSettings
  loc_B65ACD: VCallAd Control_ID_ranksList2
  loc_B65AD0: FStAdFunc var_98
  loc_B65AD3: FLdPr var_98
  loc_B65AD6: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65ADB: FFree1Ad var_98
  loc_B65AE0: LitVar_Missing var_AC
  loc_B65AE3: PopAdLdVar
  loc_B65AE4: LitStr "Room Kick"
  loc_B65AE7: ImpAdLdRf MemVar_C0F3D4
  loc_B65AEA: NewIfNullPr frmSettings
  loc_B65AED: VCallAd Control_ID_ranksList2
  loc_B65AF0: FStAdFunc var_98
  loc_B65AF3: FLdPr var_98
  loc_B65AF6: frmSettings.ListBox.AddItem from_stack_1, from_stack_2
  loc_B65AFB: FFree1Ad var_98
  loc_B65B00: LitI2_Byte 0
  loc_B65B02: ImpAdLdRf MemVar_C0F3D4
  loc_B65B05: NewIfNullPr frmSettings
  loc_B65B08: VCallAd Control_ID_ranksList1
  loc_B65B0B: FStAdFunc var_98
  loc_B65B0E: FLdPr var_98
  loc_B65B11: frmSettings.ListBox.Enabled = from_stack_1b
  loc_B65B16: FFree1Ad var_98
  loc_B65B1B: LitI2_Byte 0
  loc_B65B1D: ImpAdLdRf MemVar_C0F3D4
  loc_B65B20: NewIfNullPr frmSettings
  loc_B65B23: VCallAd Control_ID_ranksList2
  loc_B65B26: FStAdFunc var_98
  loc_B65B29: FLdPr var_98
  loc_B65B2C: frmSettings.ListBox.Enabled = from_stack_1b
  loc_B65B31: FFree1Ad var_98
  loc_B65B36: LitI2_Byte 0
  loc_B65B38: ImpAdLdRf MemVar_C0F3D4
  loc_B65B3B: NewIfNullPr frmSettings
  loc_B65B3E: VCallAd Control_ID_ranksText1
  loc_B65B41: FStAdFunc var_98
  loc_B65B44: FLdPr var_98
  loc_B65B47: frmSettings.TextBox.Enabled = from_stack_1b
  loc_B65B4C: FFree1Ad var_98
  loc_B65B51: LitI2_Byte 0
  loc_B65B53: ImpAdLdRf MemVar_C0F3D4
  loc_B65B56: NewIfNullPr frmSettings
  loc_B65B59: VCallAd Control_ID_ranksText2
  loc_B65B5C: FStAdFunc var_98
  loc_B65B5F: FLdPr var_98
  loc_B65B62: frmSettings.TextBox.Enabled = from_stack_1b
  loc_B65B67: FFree1Ad var_98
  loc_B65B6C: LitI2_Byte 0
  loc_B65B6E: ImpAdLdRf MemVar_C0F3D4
  loc_B65B71: NewIfNullPr frmSettings
  loc_B65B74: VCallAd Control_ID_ranksCheck1
  loc_B65B77: FStAdFunc var_98
  loc_B65B7A: FLdPr var_98
  loc_B65B7D: frmSettings.CheckBox.Enabled = from_stack_1b
  loc_B65B82: FFree1Ad var_98
  loc_B65B87: LitI2_Byte 0
  loc_B65B89: ImpAdLdRf MemVar_C0F3D4
  loc_B65B8C: NewIfNullPr frmSettings
  loc_B65B8F: VCallAd Control_ID_ranksCheck2
  loc_B65B92: FStAdFunc var_98
  loc_B65B95: FLdPr var_98
  loc_B65B98: frmSettings.CheckBox.Enabled = from_stack_1b
  loc_B65B9D: FFree1Ad var_98
  loc_B65BA2: LitI2_Byte 0
  loc_B65BA4: ImpAdLdRf MemVar_C0F3D4
  loc_B65BA7: NewIfNullPr frmSettings
  loc_B65BAA: VCallAd Control_ID_ranksCheck3
  loc_B65BAD: FStAdFunc var_98
  loc_B65BB0: FLdPr var_98
  loc_B65BB3: frmSettings.CheckBox.Enabled = from_stack_1b
  loc_B65BB8: FFree1Ad var_98
  loc_B65BBD: LitI2_Byte 0
  loc_B65BBF: ImpAdLdRf MemVar_C0F3D4
  loc_B65BC2: NewIfNullPr frmSettings
  loc_B65BC5: VCallAd Control_ID_ranksCheck4
  loc_B65BC8: FStAdFunc var_98
  loc_B65BCB: FLdPr var_98
  loc_B65BCE: frmSettings.CheckBox.Enabled = from_stack_1b
  loc_B65BD3: FFree1Ad var_98
  loc_B65BD8: LitI2_Byte 0
  loc_B65BDA: ImpAdLdRf MemVar_C0F3D4
  loc_B65BDD: NewIfNullPr frmSettings
  loc_B65BE0: VCallAd Control_ID_ranksCheck5
  loc_B65BE3: FStAdFunc var_98
  loc_B65BE6: FLdPr var_98
  loc_B65BE9: frmSettings.CheckBox.Enabled = from_stack_1b
  loc_B65BEE: FFree1Ad var_98
  loc_B65BF3: ExitProcCb
End Function

Private Function Proc_27_10_B3F3D4() 'B3F3D4
  'Data Table: 53B72C
  loc_B3EE78: On Error Resume Next
  loc_B3EE7D: LitI2 1440
  loc_B3EE80: CR8I2
  loc_B3EE81: PopFPR4
  loc_B3EE82: ImpAdLdRf MemVar_C0F3D4
  loc_B3EE85: NewIfNullPr frmSettings
  loc_B3EE88: VCallAd Control_ID_Pictab_club
  loc_B3EE8B: FStAdFunc var_98
  loc_B3EE8E: FLdPr var_98
  loc_B3EE91: frmSettings.PictureBox.Top = from_stack_1s
  loc_B3EE96: FFree1Ad var_98
  loc_B3EE9B: LitI2 2160
  loc_B3EE9E: CR8I2
  loc_B3EE9F: PopFPR4
  loc_B3EEA0: ImpAdLdRf MemVar_C0F3D4
  loc_B3EEA3: NewIfNullPr frmSettings
  loc_B3EEA6: VCallAd Control_ID_Pictab_club
  loc_B3EEA9: FStAdFunc var_98
  loc_B3EEAC: FLdPr var_98
  loc_B3EEAF: frmSettings.PictureBox.Left = from_stack_1s
  loc_B3EEB4: FFree1Ad var_98
  loc_B3EEB9: LitI2_Byte 0
  loc_B3EEBB: ImpAdLdRf MemVar_C0F3D4
  loc_B3EEBE: NewIfNullPr frmSettings
  loc_B3EEC1: VCallAd Control_ID_Pictab_main
  loc_B3EEC4: FStAdFunc var_98
  loc_B3EEC7: FLdPr var_98
  loc_B3EECA: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B3EECF: FFree1Ad var_98
  loc_B3EED4: LitI2_Byte 0
  loc_B3EED6: ImpAdLdRf MemVar_C0F3D4
  loc_B3EED9: NewIfNullPr frmSettings
  loc_B3EEDC: VCallAd Control_ID_Pictab_limits
  loc_B3EEDF: FStAdFunc var_98
  loc_B3EEE2: FLdPr var_98
  loc_B3EEE5: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B3EEEA: FFree1Ad var_98
  loc_B3EEEF: LitI2_Byte 0
  loc_B3EEF1: ImpAdLdRf MemVar_C0F3D4
  loc_B3EEF4: NewIfNullPr frmSettings
  loc_B3EEF7: VCallAd Control_ID_Pictab_filter
  loc_B3EEFA: FStAdFunc var_98
  loc_B3EEFD: FLdPr var_98
  loc_B3EF00: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B3EF05: FFree1Ad var_98
  loc_B3EF0A: LitI2_Byte 0
  loc_B3EF0C: ImpAdLdRf MemVar_C0F3D4
  loc_B3EF0F: NewIfNullPr frmSettings
  loc_B3EF12: VCallAd Control_ID_Pictab_habbos
  loc_B3EF15: FStAdFunc var_98
  loc_B3EF18: FLdPr var_98
  loc_B3EF1B: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B3EF20: FFree1Ad var_98
  loc_B3EF25: LitI2_Byte 0
  loc_B3EF27: ImpAdLdRf MemVar_C0F3D4
  loc_B3EF2A: NewIfNullPr frmSettings
  loc_B3EF2D: VCallAd Control_ID_Pictab_guest
  loc_B3EF30: FStAdFunc var_98
  loc_B3EF33: FLdPr var_98
  loc_B3EF36: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B3EF3B: FFree1Ad var_98
  loc_B3EF40: LitI2_Byte 0
  loc_B3EF42: ImpAdLdRf MemVar_C0F3D4
  loc_B3EF45: NewIfNullPr frmSettings
  loc_B3EF48: VCallAd Control_ID_Pictab_public
  loc_B3EF4B: FStAdFunc var_98
  loc_B3EF4E: FLdPr var_98
  loc_B3EF51: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B3EF56: FFree1Ad var_98
  loc_B3EF5B: LitI2_Byte 0
  loc_B3EF5D: ImpAdLdRf MemVar_C0F3D4
  loc_B3EF60: NewIfNullPr frmSettings
  loc_B3EF63: VCallAd Control_ID_Pictab_ranks
  loc_B3EF66: FStAdFunc var_98
  loc_B3EF69: FLdPr var_98
  loc_B3EF6C: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B3EF71: FFree1Ad var_98
  loc_B3EF76: LitI2_Byte &HFF
  loc_B3EF78: ImpAdLdRf MemVar_C0F3D4
  loc_B3EF7B: NewIfNullPr frmSettings
  loc_B3EF7E: VCallAd Control_ID_Pictab_club
  loc_B3EF81: FStAdFunc var_98
  loc_B3EF84: FLdPr var_98
  loc_B3EF87: frmSettings.PictureBox.Visible = from_stack_1b
  loc_B3EF8C: FFree1Ad var_98
  loc_B3EF91: LitVar_FALSE
  loc_B3EF95: PopAdLdVar
  loc_B3EF96: FLdRfVar var_9C
  loc_B3EF99: ImpAdLdRf MemVar_C0F3D4
  loc_B3EF9C: NewIfNullPr frmSettings
  loc_B3EF9F: VCallAd Control_ID_Label1
  loc_B3EFA2: FStAdFunc var_98
  loc_B3EFA5: FLdPr var_98
  loc_B3EFA8:  = frmSettings.Label.Font
  loc_B3EFAD: FLdPr var_9C
  loc_B3EFB0: LateIdSt
  loc_B3EFB5: FFreeAd var_98 = ""
  loc_B3EFBE: LitVar_FALSE
  loc_B3EFC2: PopAdLdVar
  loc_B3EFC3: FLdRfVar var_9C
  loc_B3EFC6: ImpAdLdRf MemVar_C0F3D4
  loc_B3EFC9: NewIfNullPr frmSettings
  loc_B3EFCC: VCallAd Control_ID_Label2
  loc_B3EFCF: FStAdFunc var_98
  loc_B3EFD2: FLdPr var_98
  loc_B3EFD5:  = frmSettings.Label.Font
  loc_B3EFDA: FLdPr var_9C
  loc_B3EFDD: LateIdSt
  loc_B3EFE2: FFreeAd var_98 = ""
  loc_B3EFEB: LitVar_FALSE
  loc_B3EFEF: PopAdLdVar
  loc_B3EFF0: FLdRfVar var_9C
  loc_B3EFF3: ImpAdLdRf MemVar_C0F3D4
  loc_B3EFF6: NewIfNullPr frmSettings
  loc_B3EFF9: VCallAd Control_ID_Label3
  loc_B3EFFC: FStAdFunc var_98
  loc_B3EFFF: FLdPr var_98
  loc_B3F002:  = frmSettings.Label.Font
  loc_B3F007: FLdPr var_9C
  loc_B3F00A: LateIdSt
  loc_B3F00F: FFreeAd var_98 = ""
  loc_B3F018: LitVar_FALSE
  loc_B3F01C: PopAdLdVar
  loc_B3F01D: FLdRfVar var_9C
  loc_B3F020: ImpAdLdRf MemVar_C0F3D4
  loc_B3F023: NewIfNullPr frmSettings
  loc_B3F026: VCallAd Control_ID_Label4
  loc_B3F029: FStAdFunc var_98
  loc_B3F02C: FLdPr var_98
  loc_B3F02F:  = frmSettings.Label.Font
  loc_B3F034: FLdPr var_9C
  loc_B3F037: LateIdSt
  loc_B3F03C: FFreeAd var_98 = ""
  loc_B3F045: LitVar_FALSE
  loc_B3F049: PopAdLdVar
  loc_B3F04A: FLdRfVar var_9C
  loc_B3F04D: ImpAdLdRf MemVar_C0F3D4
  loc_B3F050: NewIfNullPr frmSettings
  loc_B3F053: VCallAd Control_ID_Label5
  loc_B3F056: FStAdFunc var_98
  loc_B3F059: FLdPr var_98
  loc_B3F05C:  = frmSettings.Label.Font
  loc_B3F061: FLdPr var_9C
  loc_B3F064: LateIdSt
  loc_B3F069: FFreeAd var_98 = ""
  loc_B3F072: LitVar_FALSE
  loc_B3F076: PopAdLdVar
  loc_B3F077: FLdRfVar var_9C
  loc_B3F07A: ImpAdLdRf MemVar_C0F3D4
  loc_B3F07D: NewIfNullPr frmSettings
  loc_B3F080: VCallAd Control_ID_Label6
  loc_B3F083: FStAdFunc var_98
  loc_B3F086: FLdPr var_98
  loc_B3F089:  = frmSettings.Label.Font
  loc_B3F08E: FLdPr var_9C
  loc_B3F091: LateIdSt
  loc_B3F096: FFreeAd var_98 = ""
  loc_B3F09F: LitVar_FALSE
  loc_B3F0A3: PopAdLdVar
  loc_B3F0A4: FLdRfVar var_9C
  loc_B3F0A7: ImpAdLdRf MemVar_C0F3D4
  loc_B3F0AA: NewIfNullPr frmSettings
  loc_B3F0AD: VCallAd Control_ID_Label7
  loc_B3F0B0: FStAdFunc var_98
  loc_B3F0B3: FLdPr var_98
  loc_B3F0B6:  = frmSettings.Label.Font
  loc_B3F0BB: FLdPr var_9C
  loc_B3F0BE: LateIdSt
  loc_B3F0C3: FFreeAd var_98 = ""
  loc_B3F0CC: LitVar_TRUE var_AC
  loc_B3F0CF: PopAdLdVar
  loc_B3F0D0: FLdRfVar var_9C
  loc_B3F0D3: ImpAdLdRf MemVar_C0F3D4
  loc_B3F0D6: NewIfNullPr frmSettings
  loc_B3F0D9: VCallAd Control_ID_Label8
  loc_B3F0DC: FStAdFunc var_98
  loc_B3F0DF: FLdPr var_98
  loc_B3F0E2:  = frmSettings.Label.Font
  loc_B3F0E7: FLdPr var_9C
  loc_B3F0EA: LateIdSt
  loc_B3F0EF: FFreeAd var_98 = ""
  loc_B3F0F8: LitVar_FALSE
  loc_B3F0FC: PopAdLdVar
  loc_B3F0FD: FLdRfVar var_9C
  loc_B3F100: ImpAdLdRf MemVar_C0F3D4
  loc_B3F103: NewIfNullPr frmSettings
  loc_B3F106: VCallAd Control_ID_Label9
  loc_B3F109: FStAdFunc var_98
  loc_B3F10C: FLdPr var_98
  loc_B3F10F:  = frmSettings.Label.Font
  loc_B3F114: FLdPr var_9C
  loc_B3F117: LateIdSt
  loc_B3F11C: FFreeAd var_98 = ""
  loc_B3F125: LitVarStr var_AC, "tab_club"
  loc_B3F12A: PopAdLdVar
  loc_B3F12B: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B3F130: FStStrNoPop var_C0
  loc_B3F133: ImpAdLdRf MemVar_C0F3D4
  loc_B3F136: NewIfNullPr frmSettings
  loc_B3F139: VCallAd Control_ID_title
  loc_B3F13C: FStAdFunc var_98
  loc_B3F13F: FLdPr var_98
  loc_B3F142: frmSettings.Label.Caption = from_stack_1
  loc_B3F147: FFree1Str var_C0
  loc_B3F14A: FFree1Ad var_98
  loc_B3F14F: LitVarStr var_AC, "clubLabel1"
  loc_B3F154: PopAdLdVar
  loc_B3F155: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B3F15A: FStStrNoPop var_C0
  loc_B3F15D: ImpAdLdRf MemVar_C0F3D4
  loc_B3F160: NewIfNullPr frmSettings
  loc_B3F163: VCallAd Control_ID_clubLabel1
  loc_B3F166: FStAdFunc var_98
  loc_B3F169: FLdPr var_98
  loc_B3F16C: frmSettings.Label.Caption = from_stack_1
  loc_B3F171: FFree1Str var_C0
  loc_B3F174: FFree1Ad var_98
  loc_B3F179: LitVarStr var_AC, "clubLabel2"
  loc_B3F17E: PopAdLdVar
  loc_B3F17F: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B3F184: FStStrNoPop var_C0
  loc_B3F187: ImpAdLdRf MemVar_C0F3D4
  loc_B3F18A: NewIfNullPr frmSettings
  loc_B3F18D: VCallAd Control_ID_clubLabel2
  loc_B3F190: FStAdFunc var_98
  loc_B3F193: FLdPr var_98
  loc_B3F196: frmSettings.Label.Caption = from_stack_1
  loc_B3F19B: FFree1Str var_C0
  loc_B3F19E: FFree1Ad var_98
  loc_B3F1A3: LitVarStr var_AC, "clubLabel3"
  loc_B3F1A8: PopAdLdVar
  loc_B3F1A9: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B3F1AE: FStStrNoPop var_C0
  loc_B3F1B1: ImpAdLdRf MemVar_C0F3D4
  loc_B3F1B4: NewIfNullPr frmSettings
  loc_B3F1B7: VCallAd Control_ID_clubLabel3
  loc_B3F1BA: FStAdFunc var_98
  loc_B3F1BD: FLdPr var_98
  loc_B3F1C0: frmSettings.Label.Caption = from_stack_1
  loc_B3F1C5: FFree1Str var_C0
  loc_B3F1C8: FFree1Ad var_98
  loc_B3F1CD: LitVarStr var_AC, "savebutton"
  loc_B3F1D2: PopAdLdVar
  loc_B3F1D3: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B3F1D8: FStStrNoPop var_C0
  loc_B3F1DB: ImpAdLdRf MemVar_C0F3D4
  loc_B3F1DE: NewIfNullPr frmSettings
  loc_B3F1E1: VCallAd Control_ID_clubCommand1
  loc_B3F1E4: FStAdFunc var_98
  loc_B3F1E7: FLdPr var_98
  loc_B3F1EA: frmSettings.CommandButton.Caption = from_stack_1
  loc_B3F1EF: FFree1Str var_C0
  loc_B3F1F2: FFree1Ad var_98
  loc_B3F1F7: LitVarStr var_AC, "restorebutton"
  loc_B3F1FC: PopAdLdVar
  loc_B3F1FD: ImpAdCallI2  = Proc_7_0_B258E0()
  loc_B3F202: FStStrNoPop var_C0
  loc_B3F205: ImpAdLdRf MemVar_C0F3D4
  loc_B3F208: NewIfNullPr frmSettings
  loc_B3F20B: VCallAd Control_ID_clubCommand2
  loc_B3F20E: FStAdFunc var_98
  loc_B3F211: FLdPr var_98
  loc_B3F214: frmSettings.CommandButton.Caption = from_stack_1
  loc_B3F219: FFree1Str var_C0
  loc_B3F21C: FFree1Ad var_98
  loc_B3F221: LitI2 200
  loc_B3F224: LitI2 164
  loc_B3F227: LitI2_Byte &H65
  loc_B3F229: ImpAdCallI2 RGB(, , )
  loc_B3F22E: ImpAdLdRf MemVar_C0F3D4
  loc_B3F231: NewIfNullPr frmSettings
  loc_B3F234: VCallAd Control_ID_Pictab_club
  loc_B3F237: FStAdFunc var_98
  loc_B3F23A: FLdPr var_98
  loc_B3F23D: frmSettings.PictureBox.BackColor = from_stack_1
  loc_B3F242: FFree1Ad var_98
  loc_B3F247: LitVarI2 var_E0, 0
  loc_B3F24C: FLdRfVar var_D0
  loc_B3F24F: LitVarI2 var_BC, 10
  loc_B3F254: ForVar var_100
  loc_B3F25C: LitI4 0
  loc_B3F261: FStStrCopy var_C0
  loc_B3F264: FLdRfVar var_C0
  loc_B3F267: ImpAdLdI4 MemVar_C0F044
  loc_B3F26A: LitStr "configuration\settings.ini"
  loc_B3F26D: ConcatStr
  loc_B3F26E: CVarStr var_130
  loc_B3F271: LitVarStr var_BC, "present"
  loc_B3F276: FLdRfVar var_D0
  loc_B3F279: LitVarI2 var_AC, 1
  loc_B3F27E: AddVar var_110
  loc_B3F282: ConcatVar var_120
  loc_B3F286: LitVarStr var_E0, "HC"
  loc_B3F28B: PopAdLdVar
  loc_B3F28C: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B3F291: FStStrNoPop var_134
  loc_B3F294: FLdRfVar var_9C
  loc_B3F297: FLdRfVar var_D0
  loc_B3F29A: CI2Var
  loc_B3F29B: ImpAdLdRf MemVar_C0F3D4
  loc_B3F29E: NewIfNullPr frmSettings
  loc_B3F2A1: VCallAd Control_ID_hcpresent
  loc_B3F2A4: FStAdFunc var_98
  loc_B3F2A7: FLdPr var_98
  loc_B3F2AA: Set from_stack_2 = frmSettings(from_stack_1)
  loc_B3F2AF: FLdPr var_9C
  loc_B3F2B2: Me.Text = from_stack_1
  loc_B3F2B7: FFreeStr var_C0 = ""
  loc_B3F2BE: FFreeAd var_98 = ""
  loc_B3F2C5: FFreeVar var_110 = "": var_120 = ""
  loc_B3F2D0: FLdRfVar var_D0
  loc_B3F2D3: NextStepVar var_100
  loc_B3F2DB: LitI4 0
  loc_B3F2E0: FStStrCopy var_C0
  loc_B3F2E3: FLdRfVar var_C0
  loc_B3F2E6: ImpAdLdI4 MemVar_C0F044
  loc_B3F2E9: LitStr "configuration\settings.ini"
  loc_B3F2EC: ConcatStr
  loc_B3F2ED: CVarStr var_120
  loc_B3F2F0: LitVarStr var_BC, "hcbadge"
  loc_B3F2F5: FStVarCopyObj var_110
  loc_B3F2F8: FLdRfVar var_110
  loc_B3F2FB: LitVarStr var_AC, "HC"
  loc_B3F300: PopAdLdVar
  loc_B3F301: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B3F306: FStStr var_158
  loc_B3F309: LitVar_Missing var_144
  loc_B3F30C: LitI4 2
  loc_B3F311: FLdZeroAd var_158
  loc_B3F314: CVarStr var_130
  loc_B3F317: FLdRfVar var_154
  loc_B3F31A: ImpAdCallFPR4  = Mid(, , )
  loc_B3F31F: FLdRfVar var_154
  loc_B3F322: CStrVarVal var_134
  loc_B3F326: ImpAdLdRf MemVar_C0F3D4
  loc_B3F329: NewIfNullPr frmSettings
  loc_B3F32C: VCallAd Control_ID_clubText1
  loc_B3F32F: FStAdFunc var_98
  loc_B3F332: FLdPr var_98
  loc_B3F335: frmSettings.TextBox.Text = from_stack_1
  loc_B3F33A: FFreeStr var_C0 = "": var_134 = ""
  loc_B3F343: FFree1Ad var_98
  loc_B3F346: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_144 = ""
  loc_B3F355: LitI4 0
  loc_B3F35A: FStStrCopy var_C0
  loc_B3F35D: FLdRfVar var_C0
  loc_B3F360: ImpAdLdI4 MemVar_C0F044
  loc_B3F363: LitStr "configuration\settings.ini"
  loc_B3F366: ConcatStr
  loc_B3F367: CVarStr var_120
  loc_B3F36A: LitVarStr var_BC, "hcbadge2"
  loc_B3F36F: FStVarCopyObj var_110
  loc_B3F372: FLdRfVar var_110
  loc_B3F375: LitVarStr var_AC, "HC"
  loc_B3F37A: PopAdLdVar
  loc_B3F37B: ImpAdCallI2  = Proc_4_0_B22150(, , )
  loc_B3F380: FStStr var_158
  loc_B3F383: LitVar_Missing var_144
  loc_B3F386: LitI4 2
  loc_B3F38B: FLdZeroAd var_158
  loc_B3F38E: CVarStr var_130
  loc_B3F391: FLdRfVar var_154
  loc_B3F394: ImpAdCallFPR4  = Mid(, , )
  loc_B3F399: FLdRfVar var_154
  loc_B3F39C: CStrVarVal var_134
  loc_B3F3A0: ImpAdLdRf MemVar_C0F3D4
  loc_B3F3A3: NewIfNullPr frmSettings
  loc_B3F3A6: VCallAd Control_ID_clubText2
  loc_B3F3A9: FStAdFunc var_98
  loc_B3F3AC: FLdPr var_98
  loc_B3F3AF: frmSettings.TextBox.Text = from_stack_1
  loc_B3F3B4: FFreeStr var_C0 = "": var_134 = ""
  loc_B3F3BD: FFree1Ad var_98
  loc_B3F3C0: FFreeVar var_110 = "": var_120 = "": var_130 = "": var_144 = ""
  loc_B3F3CF: ExitProcCb
End Function
