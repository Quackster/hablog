Attribute VB_Name = "modLocale"
Option Explicit

Public Function GetLocaleString(ByVal sKey As String) As String
    Dim sLang As String
    Dim sLocaleFile As String
    Dim sResult As String

    On Error GoTo ErrorHandler

    sLang = GetINI("server", "lang", gSettingsFile)
    sLocaleFile = App.Path & "\locale\" & sLang & "\locale.txt"
    sResult = GetINI("locale", sKey, sLocaleFile)

    If sResult = vbNullString Then
        GetLocaleString = sKey
    Else
        GetLocaleString = sResult
    End If
    Exit Function

ErrorHandler:
    MsgBox "Locale Error!" & vbCrLf & "-----------------------" & vbCrLf & Err.Description, vbCritical, "Error"
End Function

Private Function Proc_7_1() As Long
    On Error Resume Next
End Function

Private Function Proc_7_2() As Long
    ' Empty function
End Function

Private Sub SetBootEditorCheckColor()
    frmTab_publicroom_booteditor.Check1.BackColor = RGB(101, 164, 200)
End Sub
