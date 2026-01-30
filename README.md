# VB6 P-Code Reverse Engineering - HabLog Project

## Quick Reference

**Project:** HabLog (DebboProject V3) - Habbo Hotel Private Server Emulator
**Decompiler:** VB Decompiler v12.8.9443.43130
**Mode:** P-code (`CompilationType = 1`)
**Status:** 37/37 files ported, modHabFunc.bas ~75% complete, frmMain.frm pending

Do NOT do any "stubs" or fake implementations, convert everything properly as it should from the original P-Code.

---

## 1. Global Variables (MemVar Mappings)

Use these translations whenever you see `MemVar_` in p-code:

| P-Code Symbol | VB6 Name | Type | Description |
|---------------|----------|------|-------------|
| `MemVar_C0F044` | `gAppPath` | String | Application base path |
| `MemVar_C0F03C` | `gSettingsFile` | String | Path to settings.ini |
| `MemVar_C0F018` | `frmMain` | Form | Main form reference |
| `MemVar_C0F040` | `gFSO` | FileSystemObject | Global FSO instance |
| `MemVar_C0F100` | `gUserData()` | UDT Array | Per-socket user session data |
| `MemVar_C10514` | `Global` | Object | VB6 Global object (for Unload, App, etc.) |
| `MemVar_C0F2DC` | `frmAlert` | Form | Alert form reference |
| `MemVar_C0F2F0` | `frmBan` | Form | Ban form reference |
| `MemVar_C0F304` | `frmCredits` | Form | Credits form reference |
| `MemVar_C0F32C` | `frmLoaderGenerator` | Form | Loader generator form |
| `MemVar_C0F340` | `frmUpdateUser` | Form | Update user form |
| `MemVar_C0F354` | `frmWelcome` | Form | Welcome/About form |
| `MemVar_C0F2B4` | `frmAutoClose` | Form | Auto close scheduler form |

---

## 2. Function Signatures (Proc Mappings)

Use these translations whenever you see `Proc_` calls:

### Core Functions
| P-Code | Function | Module | Signature |
|--------|----------|--------|-----------|
| `Proc_4_0_B22150` | `GetINI` | modINI | `GetINI(Section As String, Key As String, File As String) As String` |
| `Proc_4_1_B1EBF0` | `WriteINI` | modINI | `WriteINI(Section As String, Key As String, Value As String, File As String)` |
| `Proc_7_0_B258E0` | `GetLocaleString` | modLocale | `GetLocaleString(Key As String) As String` |
| `Proc_2_20_B1B384` | `SendData` | modHabFunc | `SendData(SocketIndex As Integer, Data As String)` |

### Room Functions
| P-Code | Function | Module | Signature |
|--------|----------|--------|-----------|
| `Proc_2_7_B2228C` | `RemoveUserFromRoom` | modHabFunc | `RemoveUserFromRoom(RoomId As Double, Data As String)` |
| `Proc_2_8_B229C4` | `RemoveUserFromPublicRoom` | modHabFunc | `RemoveUserFromPublicRoom(RoomId As Long, Data As String)` |

### User Functions
| P-Code | Function | Module | Signature |
|--------|----------|--------|-----------|
| `Proc_3_1_B...` | `GetUserName` | modUseronline | `GetUserName(UserNum As Variant) As String` |

---

## 3. User Data Structure (gUserData UDT)

The `gUserData()` array is indexed by socket number. Known fields:

```vb
Type UserDataType
    RoomId As Double           ' Private room ID (0 = not in room) - global_224
    PublicRoomId As Integer    ' Public room ID (0 = not in room) - global_4
    RoomSlot As String         ' Room slot identifier - global_420
    State As Integer           ' User state/status - global_280
    Username As String         ' Username - global_204
End Type
```

**P-Code field references:**
- `MemLdFPR8 global_224` = `.RoomId`
- `MemLdI2 global_4` = `.PublicRoomId`
- `MemLdStr global_420` = `.RoomSlot`
- `MemLdI2 global_280` = `.State`
- `MemLdRfVar global_204` = `.Username`

---

## 4. Habbo Protocol Packets

Common packet headers used when sending data to clients:

| Packet | Purpose | Example |
|--------|---------|---------|
| `@R` | Room exit | `SendData i, "@R" & Chr$(1)` |
| `@]` | User left room | `Chr$(1) & "@]" & RoomSlot` |
| `@y1` | Position update | `SendData i, "@y1"` |
| `AO` | Poll question | `"AO" & Question & Chr$(&HD) & Answers` |
| `AP` | Poll results | `"AP" & Results & Chr$(2)` |
| `BK` | Broadcast/Kick message | `"BK" & Message & Chr$(1)` |
| `I` | Hotel view | `"I" & GetLocaleString("hotel_view")` |

---

## 5. frmMain Controls Reference

Controls accessed via `VCallAd Control_ID_`:

| Control | Type | Purpose |
|---------|------|---------|
| `frmMain.Sock()` | WinSock Array | Client socket connections |
| `frmMain.SockI` | Property | Current socket count |
| `frmMain.lstUsers` | ListBox | Online users list |
| `frmMain.lstServers(0)` | WinSock | Server listening socket |
| `frmMain.chkForeground` | CheckBox | Topmost window setting |
| `frmMain.tmrAutoClose` | Timer | Auto close scheduler timer |

**Socket state 7 = Connected**

---

## 6. Standard Code Patterns

### Draggable Borderless Form
```vb
Private Const WM_NCLBUTTONDOWN As Long = &HA1
Private Const HTCAPTION As Long = 2

Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" _
    (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function ReleaseCapture Lib "user32" () As Long

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then
        ReleaseCapture
        SendMessage Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
    Else
        Unload Me
    End If
End Sub
```

### Topmost Window Toggle
```vb
Private Const HWND_TOPMOST As Long = -1
Private Const HWND_NOTOPMOST As Long = -2
Private Const SWP_NOSIZE As Long = 1
Private Const SWP_NOMOVE As Long = 2
Private Const SWP_FLAGS As Long = SWP_NOSIZE Or SWP_NOMOVE

Private Declare Function SetWindowPos Lib "user32" _
    (ByVal hWnd As Long, ByVal hWndInsertAfter As Long, _
     ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, _
     ByVal wFlags As Long) As Long

' In Form_Load:
If GetINI("server", "foreground", gSettingsFile) = "Y" Then
    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_FLAGS
Else
    SetWindowPos Me.hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_FLAGS
End If
```

### Socket Loop (Find User)
```vb
Dim i As Variant
For i = 1 To frmMain.SockI
    If LCase(sTargetUser) = LCase(gUsernames(i)) And frmMain.Sock(CInt(i)).State = 7 Then
        SendData CInt(i), sPacket
    End If
Next i
```

### FSO File Operations
```vb
Dim oTextStream As Object
' Write mode (2 = ForWriting, True = Create)
Set oTextStream = gFSO.OpenTextFile(sPath, 2, True, 0)
oTextStream.Write sContent

' Read mode (1 = ForReading)
Set oTextStream = gFSO.OpenTextFile(sPath, 1, False, 0)
sContent = oTextStream.ReadAll
```

---

## 7. P-Code Opcode Quick Reference

### Control Flow
| Opcode | Meaning |
|--------|---------|
| `BranchF loc_xxx` | Branch if FALSE (If...Then) |
| `BranchT loc_xxx` | Branch if TRUE (loop continue) |
| `Branch loc_xxx` | Unconditional jump (Else/GoTo) |
| `ForVar`/`NextStepVar` | For...Next loop |
| `ExitProcHresult` | Exit Sub/Function |

### Data Operations
| Opcode | Meaning |
|--------|---------|
| `LitStr "text"` | String literal |
| `LitI4 value` | Long integer |
| `LitI2_Byte &HFF` | True (-1) |
| `LitI2_Byte 0` | False (0) |
| `ConcatStr` | String concatenation (&) |
| `EqStr` | String comparison (=) |

### Object Access
| Opcode | Meaning |
|--------|---------|
| `FLdPrThis` | Me reference |
| `VCallAd Control_ID_xxx` | Me.xxx control |
| `ImpAdLdRf MemVar_xxx` | Load global variable |
| `NewIfNullPr TypeName` | Create if Nothing |

---

## 8. Translation Progress

### Completed (23 files)
| File | Lines | Type |
|------|-------|------|
| modINI.bas | 60 | INI read/write |
| modPowerOff.bas | 142 | Shutdown privileges |
| modForm.bas | 41 | Form transparency |
| modLocale.bas | 109 | Locale strings |
| modKey.bas | 3 | Encryption key |
| modMySQL.bas | 123 | Database connectivity |
| modBobba.bas | 183 | Profanity filter |
| modUseronline.bas | 234 | User tracking |
| modIcon.bas | 0 | Empty |
| EncryptionTools.cls | 57 | Encryption wrapper |
| frmFirstRun.frm | 100 | Splash screen |
| frmAgree.frm | 75 | EULA form |
| frmWelcome.frm | 325 | About form |
| frmAlert.frm | 307 | Alert dialog |
| frmBan.frm | 466 | Ban user form |
| frmCredits.frm | 487 | Add credits form |
| frmUpdateUser.frm | 395 | Update mission |
| frmUpdate.frm | 643 | Account updater |
| frmTabTutorial.frm | 552 | Tutorial chatbot |
| frmTab_userlock.frm | 686 | User lock settings |
| frmTab_publicroom_infobus.frm | 723 | Infobus polls |
| frmTab_publicroom_battleball.frm | 281 | BattleBall editor |
| frmTab_publicroom_layout.frm | 289 | Layout editor |
| frmLoaderGenerator.frm | 786 | Loader generator |
| frmWelcomes.frm | 915 | Setup wizard |
| frmAutoClose.frm | 1,429 | Auto close scheduler |
| modHabboClub.bas | 1,434 | Habbo Club gifts |
| frmTab_publicroom_booteditor.frm | 1,756 | Bot editor |
| modSpeech.bas | 1,887 | Speech commands |
| modFuncs.bas | 1,932 | Utility functions |
| modKonsole.bas | 2,026 | Console/messaging |
| modEncryption.bas | 2,210 | MD5 hashing/encryption |
| modSettings.bas | 428 | Settings tab management (11 tab functions) |
| frmSettings.frm | 2,466 | Main settings form (form designer + event handlers) |
| clsmCipher.cls | 6,013 | RC4 stream cipher |
| modEncoding.bas | 8,396 | VL64/B64 encoding |
| frmTab_housekeeping_extras3.frm | 12,785 | Housekeeping admin panel |
| modPathFind.bas | 18,265 | Pathfinding/room transitions |
| modHabFunc.bas | 10,633+ | Main server logic (132+ functions ported) |

### Remaining Work
| File | Status | Notes |
|------|--------|-------|
| modHabFunc.bas | ~75% | 132+ Proc_30_XX handlers ported, more P-code remaining |
| frmMain.frm | Pending | 50,924 lines - Main form event handlers |

### Build Notes
**VB6 Build**: Run the build interactively in VB6 IDE if the command-line build hangs. The frmSettings.frm and modSettings.bas have been fully ported with proper event handlers and tab management functions.

---

## 9. Translation Workflow

1. **Read** the p-code file from `src\decompiled\`
2. **Preserve** the form designer section (VERSION...End block)
3. **Add** `Option Explicit` after `Attribute VB_Name`
4. **Translate** each procedure using the mappings above
5. **Add** required API declarations and constants
6. **Save** the translated file back
7. **Update** this file's progress section

**Next steps:**
- Continue porting remaining Proc_30_XX handlers in modHabFunc.bas
- Port frmMain.frm (50,924 lines) - main form event handlers

---

## 10. Building the Project

### Build Scripts
| Script | Purpose |
|--------|---------|
| `build.bat` | Compiles project using VB6 to `bin\server.exe` |
| `check-syntax.bat` | Basic syntax validation without VB6 |

### Requirements
- **Visual Basic 6.0** - Required for compilation
- Set `VB6_EXE` environment variable if VB6 is not in standard location

### Build Commands
```batch
REM Run syntax check (no VB6 required)
check-syntax.bat

REM Build the project (requires VB6)
build.bat
```

---

## 11. Project Dependencies

- **mswinsck.ocx** - WinSock control for TCP/IP
- **MSINET** - Internet transfer control
- **TabCtl** - Tab strip controls
- **ADODB** - MySQL via ADO
- **Scripting.FileSystemObject** - File operations
