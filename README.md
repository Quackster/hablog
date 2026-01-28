# VB6 P-Code Reverse Engineering Task

## Project Overview
- **Project Name:** HabLog (DebboProject V3)
- **Original Executable:** Resource (Final).exe
- **Decompiler Used:** VB Decompiler v12.8.9443.43130
- **Compilation Mode:** P-code (`CompilationType = 1` in VBP)

## Your Role
You are reverse-engineering a VB6 p-code executable into compilable VB6 source code. The decompiler produced partial output with raw p-code opcodes in function bodies that need manual translation to proper VB6 syntax.

## Technical Requirements
- Output must compile in VB6 IDE without errors
- Preserve procedure order, control flow, data types, form/module boundaries
- Avoid refactoring or "cleanups" unless required for correctness
- Match original control opcodes wherever possible

---

## CRITICAL: Global Variable Mappings

These memory variables appear throughout the p-code. Always use these translations:

| P-Code Symbol | VB6 Variable | Type | Purpose |
|---------------|--------------|------|---------|
| `MemVar_C0F044` | `gAppPath` | String | Application path |
| `MemVar_C0F03C` | `gSettingsFile` | String | Settings file path |
| `MemVar_C0F018` | `frmMain` | Form | Main form reference |
| `MemVar_C0F040` | `gFSO` | FileSystemObject | File system object |
| `MemVar_C0F100` | `gUsernames()` | String Array | Username array by socket index |
| `MemVar_C10514` | (Global object) | Object | VB6 Global object |

## CRITICAL: Function Mappings

These procedure addresses map to functions. Use these translations:

| P-Code Procedure | VB6 Function | Module | Signature |
|------------------|--------------|--------|-----------|
| `Proc_4_0_B22150` | `GetINI` | modINI | `GetINI(Section, Key, File) As String` |
| `Proc_4_1_B1EBF0` | `WriteINI` | modINI | `WriteINI(Section, Key, Value, File)` |
| `Proc_2_7_B2228C` | `RemoveUserFromRoom` | modHabFunc | `RemoveUserFromRoom(RoomId, Data)` |
| `Proc_2_8_B229C4` | `RemoveUserFromPublicRoom` | modHabFunc | `RemoveUserFromPublicRoom(RoomId, Data)` |

## CRITICAL: User Data Structure (gUserData)

The `gUserData()` array holds per-socket user session data. Known fields:
| Field | Type | Purpose |
|-------|------|---------|
| `.RoomId` | Double | Current room ID (0 if not in room) |
| `.RoomSlot` | String | Room slot identifier |
| `.State` | Integer | User state/status |

## CRITICAL: API Constants

Always declare these in forms that use window positioning or dragging:

```vb
Private Const WM_NCLBUTTONDOWN As Long = &HA1
Private Const HTCAPTION As Long = 2
Private Const HWND_TOPMOST As Long = -1
Private Const HWND_NOTOPMOST As Long = -2
Private Const SWP_NOSIZE As Long = 1
Private Const SWP_NOMOVE As Long = 2
Private Const SWP_FLAGS As Long = SWP_NOSIZE Or SWP_NOMOVE

Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function ReleaseCapture Lib "user32" () As Long
Private Declare Function SetWindowPos Lib "user32" (ByVal hWnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
```

---

## P-Code Opcode Translation Reference

### Control Flow
| Opcode | VB6 Equivalent |
|--------|----------------|
| `BranchF loc_xxx` | `If ... Then` (branch if false) |
| `BranchT loc_xxx` | Loop continuation or `If` (branch if true) |
| `Branch loc_xxx` | `GoTo` or `Else` branch |
| `ForI4` / `NextI4` | `For...Next` loop (Long counter) |
| `ForVar` / `NextStepVar` | `For Each...Next` or `For...Next Step` |
| `OnErrorGoto loc_xxx` | `On Error GoTo label` |
| `ExitProc` / `ExitProcHresult` | `Exit Sub` or `Exit Function` |

### Object/Property Access
| Opcode | VB6 Equivalent |
|--------|----------------|
| `FLdPrThis` / `FLdPr Me` | `Me` |
| `VCallAd Control_ID_xxx` | `Me.xxx` (control access) |
| `ImpAdLdRf MemVar_xxx` | Load global variable |
| `ImpAdLdI4 MemVar_xxx` | Load global variable (Long) |
| `NewIfNullPr TypeName` | Create object if null |

### Literals and Data
| Opcode | VB6 Equivalent |
|--------|----------------|
| `LitVarStr var_xx, "string"` | String constant |
| `LitStr "string"` | String literal |
| `LitI4 value` | Long constant |
| `LitI2_Byte value` | Integer/Byte constant |
| `LitI2_Byte &HFF` | `True` (-1) |
| `LitI2_Byte 0` | `False` (0) |

### Function Calls
| Opcode | VB6 Equivalent |
|--------|----------------|
| `ImpAdCallFPR4 FuncName(...)` | Function call |
| `ImpAdCallI2 FuncName()` | Function call (returns Integer) |
| `VarLateMemLdVar var, .Property` | Late-bound property access |

### String/Variant Operations
| Opcode | VB6 Equivalent |
|--------|----------------|
| `ConcatStr` | String concatenation (`&`) |
| `ConcatVar` | Variant concatenation |
| `EqStr` | String comparison (`=`) |
| `CStrVarVal` | `CStr()` conversion |
| `CVarStr` | Convert to Variant string |

---

## Translation Status

### Completed Files (19 files)
| File | P-Code Lines | Description |
|------|-------------|-------------|
| frmFirstRun.frm | ~100 | Splash screen with timer |
| frmAgree.frm | 75 | EULA agreement form |
| frmWelcome.frm | 325 | Welcome/About form with tabs |
| modINI.bas | ~60 | INI file read/write functions |
| modPowerOff.bas | 142 | Windows shutdown privilege |
| modForm.bas | 41 | Form transparency functions |
| modLocale.bas | 109 | Locale/language string loading |
| modKey.bas | 3 | Encryption key storage |
| modMySQL.bas | 123 | MySQL/ADODB database connectivity |
| modBobba.bas | 183 | Bobba word filter (profanity) |
| modUseronline.bas | 234 | Online user tracking |
| EncryptionTools.cls | 57 | Encryption tools wrapper |
| modIcon.bas | 0 | Empty file |
| frmTab_publicroom_battleball.frm | 281 | BattleBall editor |
| frmTab_publicroom_layout.frm | 289 | Layout editor |
| frmAlert.frm | 307 | Alert/message form |
| frmUpdateUser.frm | 395 | Change user mission |
| frmBan.frm | 466 | Ban user for 24 hours |
| frmCredits.frm | 487 | Add credits to user |
| frmTabTutorial.frm | 552 | Tutorial chatbot form |
| frmUpdate.frm | 643 | User account update utility |

### Remaining Files (18 files, ~262,000 p-code lines)

**Large Files (>5000 lines):**
| File | P-Code Lines | Priority |
|------|-------------|----------|
| modHabFunc.bas | 139,759 | Critical - Main server logic |
| frmMain.frm | 50,924 | Critical - Main form |
| modPathFind.bas | 18,265 | High - Pathfinding |
| frmTab_housekeeping_extras3.frm | 12,785 | Medium |
| modEncoding.bas | 8,396 | High - Habbo encoding |
| clsmCipher.cls | 6,013 | High - Encryption cipher |
| modSettings.bas | 5,167 | Medium |
| frmSettings.frm | 5,689 | Medium |

**Medium Files (1000-5000 lines):**
| File | P-Code Lines |
|------|-------------|
| modKonsole.bas | 2,026 |
| modEncryption.bas | 2,210 |
| modSpeech.bas | 1,887 |
| modFuncs.bas | 1,932 |
| modHabboClub.bas | 1,434 |
| frmAutoClose.frm | 1,429 |
| frmTab_publicroom_booteditor.frm | 1,756 |

**Small Files (<1000 lines):**
| File | P-Code Lines |
|------|-------------|
| frmTab_userlock.frm | 686 |
| frmTab_publicroom_infobus.frm | 723 |
| frmLoaderGenerator.frm | 786 |
| frmWelcomes.frm | 915 |

---

## Common Patterns in This Codebase

### Draggable Borderless Form Pattern
All borderless forms use this pattern for dragging:
```vb
Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then
        ReleaseCapture
        SendMessage Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
    Else
        Unload Me
    End If
End Sub
```

### Topmost Window Pattern
Forms check INI setting for topmost:
```vb
If GetINI("server", "foreground", gSettingsFile) = "Y" Then
    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_FLAGS
Else
    SetWindowPos Me.hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_FLAGS
End If
```

### INI File Operations
```vb
' Read from INI
sValue = GetINI("section", "key", gAppPath & "configuration\settings.ini")

' Write to INI
WriteINI "section", "key", sValue, gAppPath & "configuration\settings.ini"
```

### Socket Loop Pattern
When iterating sockets to find/message users:
```vb
For i = 1 To frmMain.SockI
    If LCase(sTargetUser) = LCase(gUsernames(i)) And frmMain.Sock(CInt(i)).State = 7 Then
        frmMain.Sock(CInt(i)).SendData sMessage
    End If
Next i
```

---

## Project Dependencies
- WinSock (mswinsck.ocx) - Socket communication
- MSINET - Internet transfer control
- TabCtl - Tab controls
- ADODB - MySQL connectivity via ADO
- Scripting.FileSystemObject - File operations

---

## Instructions for Continuation

1. Read the next file from `src\decompiled\` folder
2. Translate p-code opcodes to VB6 source using mappings above
3. Preserve form designer section (BEGIN...END block)
4. Replace p-code procedure bodies with proper VB6 code
5. Add `Option Explicit` at the top of code section
6. Declare necessary API constants and functions
7. Save the translated file back
8. Update the "Completed Files" section above

**Next file to translate:** frmTab_userlock.frm (686 lines)
