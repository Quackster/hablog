Attribute VB_Name = "modINI"
Option Explicit

Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As String, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long

Public Function GetINI(ByVal sSection As String, ByVal sKey As String, ByVal sFile As String) As String
    Dim sBuffer As String
    Dim lResult As Long

    sBuffer = String$(100000, Chr$(0))
    lResult = GetPrivateProfileString(sSection, sKey, "", sBuffer, Len(sBuffer), sFile)
    GetINI = Left$(sBuffer, lResult)
End Function

Public Sub WriteINI(ByVal sSection As String, ByVal sKey As String, ByVal sValue As String, ByVal sFile As String)
    WritePrivateProfileString sSection, sKey, sValue, sFile
End Sub
