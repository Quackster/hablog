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
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub Form_Load()
    Me.Show
    Me.Label1.Caption = "Update complete"
End Sub
