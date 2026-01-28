Attribute VB_Name = "modPowerOff"
Option Explicit

Private Type LARGE_INTEGER
    LowPart As Long
    HighPart As Long
End Type

Private Type LUID_AND_ATTRIBUTES
    pLuid As LARGE_INTEGER
    Attributes As Long
End Type

Private Type TOKEN_PRIVILEGES
    PrivilegeCount As Long
    Privileges(0) As LUID_AND_ATTRIBUTES
End Type

Private Declare Sub SetLastError Lib "kernel32" (ByVal dwErrCode As Long)
Private Declare Function GetCurrentProcess Lib "kernel32" () As Long
Private Declare Function GetLastError Lib "kernel32" () As Long
Private Declare Function OpenProcessToken Lib "advapi32" (ByVal ProcessHandle As Long, ByVal DesiredAccess As Long, TokenHandle As Long) As Long
Private Declare Function LookupPrivilegeValue Lib "advapi32" Alias "LookupPrivilegeValueA" (ByVal lpSystemName As String, ByVal lpName As String, lpLuid As LARGE_INTEGER) As Long
Private Declare Function AdjustTokenPrivileges Lib "advapi32" (ByVal TokenHandle As Long, ByVal DisableAllPrivileges As Long, NewState As TOKEN_PRIVILEGES, ByVal BufferLength As Long, PreviousState As TOKEN_PRIVILEGES, ReturnLength As Long) As Long

Private Const TOKEN_ADJUST_PRIVILEGES = &H20
Private Const TOKEN_QUERY = &H8
Private Const SE_PRIVILEGE_ENABLED = &H2

Public Function GetShutdownPrivilege() As Boolean
    Dim hProcess As Long
    Dim hToken As Long
    Dim tkp As TOKEN_PRIVILEGES
    Dim tkpPrev As TOKEN_PRIVILEGES
    Dim lRetLen As Long

    SetLastError 0
    hProcess = GetCurrentProcess()
    If GetLastError() <> 0 Then
        MsgBox "GetCurrentProcess error==" & CStr(GetLastError())
    End If

    OpenProcessToken hProcess, TOKEN_ADJUST_PRIVILEGES Or TOKEN_QUERY, hToken
    If GetLastError() <> 0 Then
        MsgBox "OpenProcessToken error==" & CStr(GetLastError())
    End If

    LookupPrivilegeValue vbNullString, "SeShutdownPrivilege", tkp.Privileges(0).pLuid
    If GetLastError() <> 0 Then
        MsgBox "LookupPrivilegeValue error==" & CStr(GetLastError())
    End If

    tkp.PrivilegeCount = 1
    tkp.Privileges(0).Attributes = SE_PRIVILEGE_ENABLED

    AdjustTokenPrivileges hToken, 0, tkp, &H10, tkpPrev, lRetLen
    If GetLastError() <> 0 Then
        MsgBox "AdjustTokenPrivileges error==" & CStr(GetLastError())
    End If
End Function
