Attribute VB_Name = "modForm"
Option Explicit

Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Declare Function SetLayeredWindowAttributes Lib "user32" (ByVal hwnd As Long, ByVal crKey As Long, ByVal bAlpha As Byte, ByVal dwFlags As Long) As Long

Private Const GWL_EXSTYLE = -20
Private Const WS_EX_LAYERED = &H80000
Private Const LWA_ALPHA = &H2

Public Sub SetFormTransparency(frm As Form, ByVal Alpha As Long)
    Dim lStyle As Long

    frm.Show , frm
    lStyle = GetWindowLong(frm.hwnd, GWL_EXSTYLE)
    lStyle = lStyle Or WS_EX_LAYERED
    SetWindowLong frm.hwnd, GWL_EXSTYLE, lStyle
    SetLayeredWindowAttributes frm.hwnd, 0, CByte(Alpha), LWA_ALPHA
    frm.Refresh
End Sub
