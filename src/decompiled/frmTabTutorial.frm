VERSION 5.00
Begin VB.Form frmTabTutorial
  Caption = "Tutorial Lady"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  Icon = "frmTabTutorial.frx":0000
  LinkTopic = "Form3"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 9465
  ClientHeight = 2850
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.PictureBox Picture2
    BackColor = &H80000006&
    Picture = "frmTabTutorial.frx":57E2
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 9465
    Height = 2895
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
    Begin VB.TextBox Text1
      Left = 2160
      Top = 1770
      Width = 5775
      Height = 195
      Text = "[What you want call]"
      TabIndex = 6
      BorderStyle = 0 'None
    End
    Begin VB.TextBox Text25
      Left = 1920
      Top = 3315
      Width = 1815
      Height = 195
      Enabled = 0   'False
      TabIndex = 1
      BorderStyle = 0 'None
      Alignment = 2 'Center
    End
    Begin VB.Label Label4
      Caption = "Say"
      Left = 7345
      Top = 2200
      Width = 735
      Height = 255
      TabIndex = 8
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Image Image4
      Picture = "frmTabTutorial.frx":0005ED8C
      Left = 7270
      Top = 2160
      Width = 735
      Height = 300
    End
    Begin VB.Label Label3
      Caption = "You:"
      Left = 1680
      Top = 1770
      Width = 1695
      Height = 255
      TabIndex = 7
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Image Image3
      Picture = "frmTabTutorial.frx":0005F95E
      Left = 1560
      Top = 1680
      Width = 6450
      Height = 390
    End
    Begin VB.Label Label2
      Caption = "Hey can i help you with anything? U've a problem here? I'm have experince!"
      Left = 2400
      Top = 1230
      Width = 5415
      Height = 255
      TabIndex = 5
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label1
      Caption = "Hebbo:"
      Left = 1680
      Top = 1230
      Width = 1695
      Height = 255
      TabIndex = 4
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Image Image2
      Picture = "frmTabTutorial.frx":00067CD8
      Left = 840
      Top = 1080
      Width = 7200
      Height = 1305
    End
    Begin VB.Label Label33
      Caption = "Poolfigure:"
      Left = -360
      Top = 4320
      Width = 2055
      Height = 255
      TabIndex = 3
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label headWelcome
      Caption = "Tutorial Boy"
      Index = 0
      ForeColor = &HFFFFFF&
      Left = 3000
      Top = 240
      Width = 3255
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
    Begin VB.Image Image1
      Index = 3
      Picture = "frmTabTutorial.frx":0008667A
      Left = 8880
      Top = 180
      Width = 360
      Height = 330
    End
  End
End

Attribute VB_Name = "frmTabTutorial"


Private Sub Picture2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'B1CB54
  'Data Table: 53ED68
  loc_B1CAF4: ILdI2 Button
  loc_B1CAF7: LitI2_Byte 1
  loc_B1CAF9: EqI2
  loc_B1CAFA: BranchF loc_B1CB3D
  loc_B1CAFD: ImpAdCallI2 ReleaseCapture()
  loc_B1CB02: FStR4 var_8C
  loc_B1CB05: SetLastSystemError
  loc_B1CB06: ILdRf var_8C
  loc_B1CB09: CR8I4
  loc_B1CB0A: IStFPR4 X
  loc_B1CB0D: FLdRfVar var_8C
  loc_B1CB10: FLdPrThis
  loc_B1CB11:  = Me.hWnd
  loc_B1CB16: LitI4 0
  loc_B1CB1B: PopTmpLdAdStr var_90
  loc_B1CB1E: LitI4 2
  loc_B1CB23: LitI4 &HA1
  loc_B1CB28: ILdRf var_8C
  loc_B1CB2B: ImpAdCallI2 SendMessage(, , , )
  loc_B1CB30: FStR4 var_94
  loc_B1CB33: SetLastSystemError
  loc_B1CB34: ILdRf var_94
  loc_B1CB37: FStR4 var_88
  loc_B1CB3A: Branch loc_B1CB52
  loc_B1CB3D: ILdRf Me
  loc_B1CB40: FStAdNoPop
  loc_B1CB44: ImpAdLdRf MemVar_C10514
  loc_B1CB47: NewIfNullPr Global
  loc_B1CB4A: Global.Unload from_stack_1
  loc_B1CB4F: FFree1Ad var_98
  loc_B1CB52: ExitProcHresult
End Sub

Private Sub Label4_Click() 'B43F60
  'Data Table: 53ED68
  loc_B438A8: FLdRfVar var_8C
  loc_B438AB: FLdPrThis
  loc_B438AC: VCallAd Control_ID_Text1
  loc_B438AF: FStAdFunc var_88
  loc_B438B2: FLdPr var_88
  loc_B438B5:  = Me.Text
  loc_B438BA: FLdZeroAd var_8C
  loc_B438BD: CVarStr var_AC
  loc_B438C0: FStVar var_9C
  loc_B438C4: FFree1Ad var_88
  loc_B438C7: FLdRfVar var_8C
  loc_B438CA: FLdPrThis
  loc_B438CB: VCallAd Control_ID_Text1
  loc_B438CE: FStAdFunc var_88
  loc_B438D1: FLdPr var_88
  loc_B438D4:  = Me.Text
  loc_B438D9: LitI4 0
  loc_B438DE: LitI4 -1
  loc_B438E3: LitI4 1
  loc_B438E8: LitStr vbNullString
  loc_B438EB: LitStr "credits"
  loc_B438EE: ILdRf var_8C
  loc_B438F1: ImpAdCallI2 Replace(, , , , , )
  loc_B438F6: CVarStr var_AC
  loc_B438F9: FStVar var_BC
  loc_B438FD: FFree1Str var_8C
  loc_B43900: FFree1Ad var_88
  loc_B43903: LitI4 0
  loc_B43908: LitI4 -1
  loc_B4390D: LitI4 1
  loc_B43912: LitStr vbNullString
  loc_B43915: LitStr "Credits"
  loc_B43918: FLdRfVar var_BC
  loc_B4391B: CStrVarVal var_8C
  loc_B4391F: ImpAdCallI2 Replace(, , , , , )
  loc_B43924: CVarStr var_AC
  loc_B43927: FStVar var_BC
  loc_B4392B: FFree1Str var_8C
  loc_B4392E: LitI4 0
  loc_B43933: LitI4 -1
  loc_B43938: LitI4 1
  loc_B4393D: LitStr vbNullString
  loc_B43940: LitStr "helpers"
  loc_B43943: FLdRfVar var_BC
  loc_B43946: CStrVarVal var_8C
  loc_B4394A: ImpAdCallI2 Replace(, , , , , )
  loc_B4394F: CVarStr var_AC
  loc_B43952: FStVar var_BC
  loc_B43956: FFree1Str var_8C
  loc_B43959: FLdRfVar var_9C
  loc_B4395C: FLdRfVar var_BC
  loc_B4395F: EqVarBool
  loc_B43961: BranchF loc_B4397C
  loc_B43964: LitStr "I'm just a robot, tell me it a bit easyer or others!"
  loc_B43967: FLdPrThis
  loc_B43968: VCallAd Control_ID_Label2
  loc_B4396B: FStAdFunc var_88
  loc_B4396E: FLdPr var_88
  loc_B43971: Me.Caption = from_stack_1
  loc_B43976: FFree1Ad var_88
  loc_B43979: Branch loc_B43994
  loc_B4397C: LitStr "Ah yes, the credits you find at the 'Info' tab on the Server."
  loc_B4397F: FLdPrThis
  loc_B43980: VCallAd Control_ID_Label2
  loc_B43983: FStAdFunc var_88
  loc_B43986: FLdPr var_88
  loc_B43989: Me.Caption = from_stack_1
  loc_B4398E: FFree1Ad var_88
  loc_B43991: Branch loc_B43F5C
  loc_B43994: FLdRfVar var_8C
  loc_B43997: FLdPrThis
  loc_B43998: VCallAd Control_ID_Text1
  loc_B4399B: FStAdFunc var_88
  loc_B4399E: FLdPr var_88
  loc_B439A1:  = Me.Text
  loc_B439A6: FLdZeroAd var_8C
  loc_B439A9: CVarStr var_AC
  loc_B439AC: FStVar var_9C
  loc_B439B0: FFree1Ad var_88
  loc_B439B3: FLdRfVar var_8C
  loc_B439B6: FLdPrThis
  loc_B439B7: VCallAd Control_ID_Text1
  loc_B439BA: FStAdFunc var_88
  loc_B439BD: FLdPr var_88
  loc_B439C0:  = Me.Text
  loc_B439C5: LitI4 0
  loc_B439CA: LitI4 -1
  loc_B439CF: LitI4 1
  loc_B439D4: LitStr vbNullString
  loc_B439D7: LitStr "version"
  loc_B439DA: ILdRf var_8C
  loc_B439DD: ImpAdCallI2 Replace(, , , , , )
  loc_B439E2: CVarStr var_AC
  loc_B439E5: FStVar var_BC
  loc_B439E9: FFree1Str var_8C
  loc_B439EC: FFree1Ad var_88
  loc_B439EF: FLdRfVar var_9C
  loc_B439F2: FLdRfVar var_BC
  loc_B439F5: EqVarBool
  loc_B439F7: BranchF loc_B43A12
  loc_B439FA: LitStr "I'm just a robot, tell me it a bit easyer or others!"
  loc_B439FD: FLdPrThis
  loc_B439FE: VCallAd Control_ID_Label2
  loc_B43A01: FStAdFunc var_88
  loc_B43A04: FLdPr var_88
  loc_B43A07: Me.Caption = from_stack_1
  loc_B43A0C: FFree1Ad var_88
  loc_B43A0F: Branch loc_B43A2A
  loc_B43A12: LitStr "The next version is comming next or this week ;)"
  loc_B43A15: FLdPrThis
  loc_B43A16: VCallAd Control_ID_Label2
  loc_B43A19: FStAdFunc var_88
  loc_B43A1C: FLdPr var_88
  loc_B43A1F: Me.Caption = from_stack_1
  loc_B43A24: FFree1Ad var_88
  loc_B43A27: Branch loc_B43F5C
  loc_B43A2A: FLdRfVar var_8C
  loc_B43A2D: FLdPrThis
  loc_B43A2E: VCallAd Control_ID_Text1
  loc_B43A31: FStAdFunc var_88
  loc_B43A34: FLdPr var_88
  loc_B43A37:  = Me.Text
  loc_B43A3C: FLdZeroAd var_8C
  loc_B43A3F: CVarStr var_AC
  loc_B43A42: FStVar var_9C
  loc_B43A46: FFree1Ad var_88
  loc_B43A49: FLdRfVar var_8C
  loc_B43A4C: FLdPrThis
  loc_B43A4D: VCallAd Control_ID_Text1
  loc_B43A50: FStAdFunc var_88
  loc_B43A53: FLdPr var_88
  loc_B43A56:  = Me.Text
  loc_B43A5B: LitI4 0
  loc_B43A60: LitI4 -1
  loc_B43A65: LitI4 1
  loc_B43A6A: LitStr vbNullString
  loc_B43A6D: LitStr "join"
  loc_B43A70: ILdRf var_8C
  loc_B43A73: ImpAdCallI2 Replace(, , , , , )
  loc_B43A78: CVarStr var_AC
  loc_B43A7B: FStVar var_BC
  loc_B43A7F: FFree1Str var_8C
  loc_B43A82: FFree1Ad var_88
  loc_B43A85: LitI4 0
  loc_B43A8A: LitI4 -1
  loc_B43A8F: LitI4 1
  loc_B43A94: LitStr vbNullString
  loc_B43A97: LitStr "Join"
  loc_B43A9A: FLdRfVar var_BC
  loc_B43A9D: CStrVarVal var_8C
  loc_B43AA1: ImpAdCallI2 Replace(, , , , , )
  loc_B43AA6: CVarStr var_AC
  loc_B43AA9: FStVar var_BC
  loc_B43AAD: FFree1Str var_8C
  loc_B43AB0: FLdRfVar var_9C
  loc_B43AB3: FLdRfVar var_BC
  loc_B43AB6: EqVarBool
  loc_B43AB8: BranchF loc_B43AD3
  loc_B43ABB: LitStr "I'm just a robot, tell me it a bit easyer or others!"
  loc_B43ABE: FLdPrThis
  loc_B43ABF: VCallAd Control_ID_Label2
  loc_B43AC2: FStAdFunc var_88
  loc_B43AC5: FLdPr var_88
  loc_B43AC8: Me.Caption = from_stack_1
  loc_B43ACD: FFree1Ad var_88
  loc_B43AD0: Branch loc_B43AEB
  loc_B43AD3: LitStr "You want join HabLog, omg? Tell it Hebbo!"
  loc_B43AD6: FLdPrThis
  loc_B43AD7: VCallAd Control_ID_Label2
  loc_B43ADA: FStAdFunc var_88
  loc_B43ADD: FLdPr var_88
  loc_B43AE0: Me.Caption = from_stack_1
  loc_B43AE5: FFree1Ad var_88
  loc_B43AE8: Branch loc_B43F5C
  loc_B43AEB: FLdRfVar var_8C
  loc_B43AEE: FLdPrThis
  loc_B43AEF: VCallAd Control_ID_Text1
  loc_B43AF2: FStAdFunc var_88
  loc_B43AF5: FLdPr var_88
  loc_B43AF8:  = Me.Text
  loc_B43AFD: FLdZeroAd var_8C
  loc_B43B00: CVarStr var_AC
  loc_B43B03: FStVar var_9C
  loc_B43B07: FFree1Ad var_88
  loc_B43B0A: FLdRfVar var_8C
  loc_B43B0D: FLdPrThis
  loc_B43B0E: VCallAd Control_ID_Text1
  loc_B43B11: FStAdFunc var_88
  loc_B43B14: FLdPr var_88
  loc_B43B17:  = Me.Text
  loc_B43B1C: LitI4 0
  loc_B43B21: LitI4 -1
  loc_B43B26: LitI4 1
  loc_B43B2B: LitStr vbNullString
  loc_B43B2E: LitStr "fuck"
  loc_B43B31: ILdRf var_8C
  loc_B43B34: ImpAdCallI2 Replace(, , , , , )
  loc_B43B39: CVarStr var_AC
  loc_B43B3C: FStVar var_BC
  loc_B43B40: FFree1Str var_8C
  loc_B43B43: FFree1Ad var_88
  loc_B43B46: LitI4 0
  loc_B43B4B: LitI4 -1
  loc_B43B50: LitI4 1
  loc_B43B55: LitStr vbNullString
  loc_B43B58: LitStr "sex"
  loc_B43B5B: FLdRfVar var_BC
  loc_B43B5E: CStrVarVal var_8C
  loc_B43B62: ImpAdCallI2 Replace(, , , , , )
  loc_B43B67: CVarStr var_AC
  loc_B43B6A: FStVar var_BC
  loc_B43B6E: FFree1Str var_8C
  loc_B43B71: FLdRfVar var_9C
  loc_B43B74: FLdRfVar var_BC
  loc_B43B77: EqVarBool
  loc_B43B79: BranchF loc_B43B94
  loc_B43B7C: LitStr "I'm just a robot, tell me it a bit easyer or others!"
  loc_B43B7F: FLdPrThis
  loc_B43B80: VCallAd Control_ID_Label2
  loc_B43B83: FStAdFunc var_88
  loc_B43B86: FLdPr var_88
  loc_B43B89: Me.Caption = from_stack_1
  loc_B43B8E: FFree1Ad var_88
  loc_B43B91: Branch loc_B43BAC
  loc_B43B94: LitStr "You wanna sex, omg? You're a noob or what?"
  loc_B43B97: FLdPrThis
  loc_B43B98: VCallAd Control_ID_Label2
  loc_B43B9B: FStAdFunc var_88
  loc_B43B9E: FLdPr var_88
  loc_B43BA1: Me.Caption = from_stack_1
  loc_B43BA6: FFree1Ad var_88
  loc_B43BA9: Branch loc_B43F5C
  loc_B43BAC: FLdRfVar var_8C
  loc_B43BAF: FLdPrThis
  loc_B43BB0: VCallAd Control_ID_Text1
  loc_B43BB3: FStAdFunc var_88
  loc_B43BB6: FLdPr var_88
  loc_B43BB9:  = Me.Text
  loc_B43BBE: FLdZeroAd var_8C
  loc_B43BC1: CVarStr var_AC
  loc_B43BC4: FStVar var_9C
  loc_B43BC8: FFree1Ad var_88
  loc_B43BCB: FLdRfVar var_8C
  loc_B43BCE: FLdPrThis
  loc_B43BCF: VCallAd Control_ID_Text1
  loc_B43BD2: FStAdFunc var_88
  loc_B43BD5: FLdPr var_88
  loc_B43BD8:  = Me.Text
  loc_B43BDD: LitI4 0
  loc_B43BE2: LitI4 -1
  loc_B43BE7: LitI4 1
  loc_B43BEC: LitStr vbNullString
  loc_B43BEF: LitStr "bobba"
  loc_B43BF2: ILdRf var_8C
  loc_B43BF5: ImpAdCallI2 Replace(, , , , , )
  loc_B43BFA: CVarStr var_AC
  loc_B43BFD: FStVar var_BC
  loc_B43C01: FFree1Str var_8C
  loc_B43C04: FFree1Ad var_88
  loc_B43C07: LitI4 0
  loc_B43C0C: LitI4 -1
  loc_B43C11: LitI4 1
  loc_B43C16: LitStr vbNullString
  loc_B43C19: LitStr "Bobba"
  loc_B43C1C: FLdRfVar var_BC
  loc_B43C1F: CStrVarVal var_8C
  loc_B43C23: ImpAdCallI2 Replace(, , , , , )
  loc_B43C28: CVarStr var_AC
  loc_B43C2B: FStVar var_BC
  loc_B43C2F: FFree1Str var_8C
  loc_B43C32: FLdRfVar var_9C
  loc_B43C35: FLdRfVar var_BC
  loc_B43C38: EqVarBool
  loc_B43C3A: BranchF loc_B43C55
  loc_B43C3D: LitStr "I'm just a robot, tell me it a bit easyer or others!"
  loc_B43C40: FLdPrThis
  loc_B43C41: VCallAd Control_ID_Label2
  loc_B43C44: FStAdFunc var_88
  loc_B43C47: FLdPr var_88
  loc_B43C4A: Me.Caption = from_stack_1
  loc_B43C4F: FFree1Ad var_88
  loc_B43C52: Branch loc_B43C6D
  loc_B43C55: LitStr "What?? Bobba?? Theres arent a bobbafilter guy ;)"
  loc_B43C58: FLdPrThis
  loc_B43C59: VCallAd Control_ID_Label2
  loc_B43C5C: FStAdFunc var_88
  loc_B43C5F: FLdPr var_88
  loc_B43C62: Me.Caption = from_stack_1
  loc_B43C67: FFree1Ad var_88
  loc_B43C6A: Branch loc_B43F5C
  loc_B43C6D: FLdRfVar var_8C
  loc_B43C70: FLdPrThis
  loc_B43C71: VCallAd Control_ID_Text1
  loc_B43C74: FStAdFunc var_88
  loc_B43C77: FLdPr var_88
  loc_B43C7A:  = Me.Text
  loc_B43C7F: FLdZeroAd var_8C
  loc_B43C82: CVarStr var_AC
  loc_B43C85: FStVar var_9C
  loc_B43C89: FFree1Ad var_88
  loc_B43C8C: FLdRfVar var_8C
  loc_B43C8F: FLdPrThis
  loc_B43C90: VCallAd Control_ID_Text1
  loc_B43C93: FStAdFunc var_88
  loc_B43C96: FLdPr var_88
  loc_B43C99:  = Me.Text
  loc_B43C9E: LitI4 0
  loc_B43CA3: LitI4 -1
  loc_B43CA8: LitI4 1
  loc_B43CAD: LitStr vbNullString
  loc_B43CB0: LitStr "hi"
  loc_B43CB3: ILdRf var_8C
  loc_B43CB6: ImpAdCallI2 Replace(, , , , , )
  loc_B43CBB: CVarStr var_AC
  loc_B43CBE: FStVar var_BC
  loc_B43CC2: FFree1Str var_8C
  loc_B43CC5: FFree1Ad var_88
  loc_B43CC8: LitI4 0
  loc_B43CCD: LitI4 -1
  loc_B43CD2: LitI4 1
  loc_B43CD7: LitStr vbNullString
  loc_B43CDA: LitStr "hallo"
  loc_B43CDD: FLdRfVar var_BC
  loc_B43CE0: CStrVarVal var_8C
  loc_B43CE4: ImpAdCallI2 Replace(, , , , , )
  loc_B43CE9: CVarStr var_AC
  loc_B43CEC: FStVar var_BC
  loc_B43CF0: FFree1Str var_8C
  loc_B43CF3: LitI4 0
  loc_B43CF8: LitI4 -1
  loc_B43CFD: LitI4 1
  loc_B43D02: LitStr vbNullString
  loc_B43D05: LitStr "Hi"
  loc_B43D08: FLdRfVar var_BC
  loc_B43D0B: CStrVarVal var_8C
  loc_B43D0F: ImpAdCallI2 Replace(, , , , , )
  loc_B43D14: CVarStr var_AC
  loc_B43D17: FStVar var_BC
  loc_B43D1B: FFree1Str var_8C
  loc_B43D1E: LitI4 0
  loc_B43D23: LitI4 -1
  loc_B43D28: LitI4 1
  loc_B43D2D: LitStr vbNullString
  loc_B43D30: LitStr "Hallo"
  loc_B43D33: FLdRfVar var_BC
  loc_B43D36: CStrVarVal var_8C
  loc_B43D3A: ImpAdCallI2 Replace(, , , , , )
  loc_B43D3F: CVarStr var_AC
  loc_B43D42: FStVar var_BC
  loc_B43D46: FFree1Str var_8C
  loc_B43D49: LitI4 0
  loc_B43D4E: LitI4 -1
  loc_B43D53: LitI4 1
  loc_B43D58: LitStr vbNullString
  loc_B43D5B: LitStr "Hey"
  loc_B43D5E: FLdRfVar var_BC
  loc_B43D61: CStrVarVal var_8C
  loc_B43D65: ImpAdCallI2 Replace(, , , , , )
  loc_B43D6A: CVarStr var_AC
  loc_B43D6D: FStVar var_BC
  loc_B43D71: FFree1Str var_8C
  loc_B43D74: FLdRfVar var_9C
  loc_B43D77: FLdRfVar var_BC
  loc_B43D7A: EqVarBool
  loc_B43D7C: BranchF loc_B43D97
  loc_B43D7F: LitStr "I'm just a robot, tell me it a bit easyer or others!"
  loc_B43D82: FLdPrThis
  loc_B43D83: VCallAd Control_ID_Label2
  loc_B43D86: FStAdFunc var_88
  loc_B43D89: FLdPr var_88
  loc_B43D8C: Me.Caption = from_stack_1
  loc_B43D91: FFree1Ad var_88
  loc_B43D94: Branch loc_B43DAF
  loc_B43D97: LitStr "Oh Hay ;) I like that you using my server!"
  loc_B43D9A: FLdPrThis
  loc_B43D9B: VCallAd Control_ID_Label2
  loc_B43D9E: FStAdFunc var_88
  loc_B43DA1: FLdPr var_88
  loc_B43DA4: Me.Caption = from_stack_1
  loc_B43DA9: FFree1Ad var_88
  loc_B43DAC: Branch loc_B43F5C
  loc_B43DAF: FLdRfVar var_8C
  loc_B43DB2: FLdPrThis
  loc_B43DB3: VCallAd Control_ID_Text1
  loc_B43DB6: FStAdFunc var_88
  loc_B43DB9: FLdPr var_88
  loc_B43DBC:  = Me.Text
  loc_B43DC1: FLdZeroAd var_8C
  loc_B43DC4: CVarStr var_AC
  loc_B43DC7: FStVar var_9C
  loc_B43DCB: FFree1Ad var_88
  loc_B43DCE: FLdRfVar var_8C
  loc_B43DD1: FLdPrThis
  loc_B43DD2: VCallAd Control_ID_Text1
  loc_B43DD5: FStAdFunc var_88
  loc_B43DD8: FLdPr var_88
  loc_B43DDB:  = Me.Text
  loc_B43DE0: LitI4 0
  loc_B43DE5: LitI4 -1
  loc_B43DEA: LitI4 1
  loc_B43DEF: LitStr vbNullString
  loc_B43DF2: LitStr "thank"
  loc_B43DF5: ILdRf var_8C
  loc_B43DF8: ImpAdCallI2 Replace(, , , , , )
  loc_B43DFD: CVarStr var_AC
  loc_B43E00: FStVar var_BC
  loc_B43E04: FFree1Str var_8C
  loc_B43E07: FFree1Ad var_88
  loc_B43E0A: LitI4 0
  loc_B43E0F: LitI4 -1
  loc_B43E14: LitI4 1
  loc_B43E19: LitStr vbNullString
  loc_B43E1C: LitStr "Thank"
  loc_B43E1F: FLdRfVar var_BC
  loc_B43E22: CStrVarVal var_8C
  loc_B43E26: ImpAdCallI2 Replace(, , , , , )
  loc_B43E2B: CVarStr var_AC
  loc_B43E2E: FStVar var_BC
  loc_B43E32: FFree1Str var_8C
  loc_B43E35: FLdRfVar var_9C
  loc_B43E38: FLdRfVar var_BC
  loc_B43E3B: EqVarBool
  loc_B43E3D: BranchF loc_B43E58
  loc_B43E40: LitStr "I'm just a robot, tell me it a bit easyer or others!"
  loc_B43E43: FLdPrThis
  loc_B43E44: VCallAd Control_ID_Label2
  loc_B43E47: FStAdFunc var_88
  loc_B43E4A: FLdPr var_88
  loc_B43E4D: Me.Caption = from_stack_1
  loc_B43E52: FFree1Ad var_88
  loc_B43E55: Branch loc_B43E70
  loc_B43E58: LitStr "You're Welcome!"
  loc_B43E5B: FLdPrThis
  loc_B43E5C: VCallAd Control_ID_Label2
  loc_B43E5F: FStAdFunc var_88
  loc_B43E62: FLdPr var_88
  loc_B43E65: Me.Caption = from_stack_1
  loc_B43E6A: FFree1Ad var_88
  loc_B43E6D: Branch loc_B43F5C
  loc_B43E70: FLdRfVar var_8C
  loc_B43E73: FLdPrThis
  loc_B43E74: VCallAd Control_ID_Text1
  loc_B43E77: FStAdFunc var_88
  loc_B43E7A: FLdPr var_88
  loc_B43E7D:  = Me.Text
  loc_B43E82: FLdZeroAd var_8C
  loc_B43E85: CVarStr var_AC
  loc_B43E88: FStVar var_9C
  loc_B43E8C: FFree1Ad var_88
  loc_B43E8F: FLdRfVar var_8C
  loc_B43E92: FLdPrThis
  loc_B43E93: VCallAd Control_ID_Text1
  loc_B43E96: FStAdFunc var_88
  loc_B43E99: FLdPr var_88
  loc_B43E9C:  = Me.Text
  loc_B43EA1: LitI4 0
  loc_B43EA6: LitI4 -1
  loc_B43EAB: LitI4 1
  loc_B43EB0: LitStr vbNullString
  loc_B43EB3: LitStr "please"
  loc_B43EB6: ILdRf var_8C
  loc_B43EB9: ImpAdCallI2 Replace(, , , , , )
  loc_B43EBE: CVarStr var_AC
  loc_B43EC1: FStVar var_BC
  loc_B43EC5: FFree1Str var_8C
  loc_B43EC8: FFree1Ad var_88
  loc_B43ECB: LitI4 0
  loc_B43ED0: LitI4 -1
  loc_B43ED5: LitI4 1
  loc_B43EDA: LitStr vbNullString
  loc_B43EDD: LitStr "you're welcome"
  loc_B43EE0: FLdRfVar var_BC
  loc_B43EE3: CStrVarVal var_8C
  loc_B43EE7: ImpAdCallI2 Replace(, , , , , )
  loc_B43EEC: CVarStr var_AC
  loc_B43EEF: FStVar var_BC
  loc_B43EF3: FFree1Str var_8C
  loc_B43EF6: LitI4 0
  loc_B43EFB: LitI4 -1
  loc_B43F00: LitI4 1
  loc_B43F05: LitStr vbNullString
  loc_B43F08: LitStr "you are welcome"
  loc_B43F0B: FLdRfVar var_BC
  loc_B43F0E: CStrVarVal var_8C
  loc_B43F12: ImpAdCallI2 Replace(, , , , , )
  loc_B43F17: CVarStr var_AC
  loc_B43F1A: FStVar var_BC
  loc_B43F1E: FFree1Str var_8C
  loc_B43F21: FLdRfVar var_9C
  loc_B43F24: FLdRfVar var_BC
  loc_B43F27: EqVarBool
  loc_B43F29: BranchF loc_B43F44
  loc_B43F2C: LitStr "I'm just a robot, tell me it a bit easyer or others!"
  loc_B43F2F: FLdPrThis
  loc_B43F30: VCallAd Control_ID_Label2
  loc_B43F33: FStAdFunc var_88
  loc_B43F36: FLdPr var_88
  loc_B43F39: Me.Caption = from_stack_1
  loc_B43F3E: FFree1Ad var_88
  loc_B43F41: Branch loc_B43F5C
  loc_B43F44: LitStr "I find it OK, you neednt to say that ;)"
  loc_B43F47: FLdPrThis
  loc_B43F48: VCallAd Control_ID_Label2
  loc_B43F4B: FStAdFunc var_88
  loc_B43F4E: FLdPr var_88
  loc_B43F51: Me.Caption = from_stack_1
  loc_B43F56: FFree1Ad var_88
  loc_B43F59: Branch loc_B43F5C
  loc_B43F5C: ExitProcHresult
  loc_B43F5D: FLdPr arg_600
End Sub

Private Sub Image1_Click() 'B1867C
  'Data Table: 53ED68
  loc_B18670: FLdPr Me
  loc_B18673: Me.Hide
  loc_B18678: ExitProcHresult
  loc_B18679: CRec2Uni arg_326
End Sub

Private Function Proc_36_3_B18CC8() 'B18CC8
  'Data Table: 53ED68
  loc_B18CBC: LitVar_TRUE var_A4
  loc_B18CBF: PopAdLdVar
  loc_B18CC0: FLdRfVar var_94
  loc_B18CC3: VarLateMemSt .Enabled
  loc_B18CC7: ExitProcHresult
End Function

Private Function Proc_36_4_B183D0() 'B183D0
  'Data Table: 53ED68
  loc_B183CC: ExitProcHresult
  loc_B183CD: CRec2Uni arg_326
End Function
