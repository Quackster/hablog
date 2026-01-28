Attribute VB_Name = "modBobba"
Option Explicit

' Bobba word filter module
' Filters and checks for banned words from a list stored in a TextBox on frmMain

Public Function FilterBobba(ByVal sText As String) As String
    Dim vWords As Variant
    Dim vLines As Variant
    Dim i As Long
    Dim sBobbaList As String
    Dim sWord As String
    Dim sReplacement As String

    ' Get the bobba word list from frmMain textbox
    ' First split by Chr$(1) to get first part
    sBobbaList = frmMain.txtBobba.Text
    vWords = Split(sBobbaList, Chr$(1))
    sBobbaList = vWords(1)

    ' Then split by vbCrLf to get individual lines
    vLines = Split(sBobbaList, vbCrLf)

    ' Loop through each word in the list
    For i = 0 To UBound(vLines)
        If vLines(i) <> vbNullString Then
            ' Get the word and its replacement
            vWords = Split(frmMain.txtBobba.Text, Chr$(1))
            sWord = vWords(0)
            sReplacement = Split(frmMain.txtBobba.Text, Chr$(1))(0)

            ' Replace the word in the text
            sText = Replace(sText, CStr(vLines(i)), sReplacement, 1, -1, 1)
        End If
    Next i

    FilterBobba = sText
End Function

Public Function ContainsBobba(ByVal sText As String) As Boolean
    Dim vWords As Variant
    Dim vLines As Variant
    Dim i As Variant
    Dim sBobbaList As String
    Dim bResult As Boolean

    bResult = False

    ' Get the bobba word list from frmMain textbox
    ' First split by Chr$(1) to get first part
    sBobbaList = frmMain.txtBobba.Text
    vWords = Split(sBobbaList, Chr$(1))
    sBobbaList = vWords(1)

    ' Then split by vbCrLf to get individual lines
    vLines = Split(sBobbaList, vbCrLf)

    ' Loop through each word in the list
    For i = 0 To UBound(vLines)
        If vLines(i) <> vbNullString Then
            ' Check if the word exists in the text
            If InStr(1, sText, vLines(i), 0) <> 0 Then
                bResult = True
                Exit For
            End If
        End If
        DoEvents
    Next i

    ContainsBobba = bResult
End Function
