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

Option Explicit

' Update Form
' Updates user account data files (directmail, rooms, num, hcupdate)

Private Sub Form_Load()
    ' Show form and run update process
    Me.Show
    UpdateUserAccounts
End Sub

Private Sub UpdateUserAccounts()
    ' Update all user accounts in the habbos folder
    Dim oFolder As Object
    Dim oSubFolder As Object
    Dim oTextStream As Object
    Dim sUserPath As String
    Dim sRoomListContent As String
    Dim vRoomParts As Variant
    Dim lRoomCount As Long
    Dim lExistingRoomCount As Double
    Dim lUserNum As Variant
    Dim lGlobalCount As Double
    Dim i As Long
    Dim bFileExists As Boolean
    Dim bAtEnd As Boolean

    Me.Label1.Caption = "Updating users.."
    DoEvents

    ' Get the habbos folder
    Set oFolder = gFSO.GetFolder(gAppPath & "habbos")

    ' Iterate through each user subfolder
    For Each oSubFolder In oFolder.SubFolders
        Me.Label1.Caption = "Updating account " & Dir(oSubFolder.Path, vbDirectory)
        DoEvents

        sUserPath = oSubFolder.Path

        ' Check and reset directmail folder
        If gFSO.FolderExists(sUserPath & "\directmail") Then
            gFSO.DeleteFolder sUserPath & "\directmail", False
            gFSO.CreateFolder sUserPath & "\directmail"
            Set oTextStream = gFSO.OpenTextFile(sUserPath & "\directmail\count.txt", 2, True, 0)
            oTextStream.Write "0"
        End If

        ' Check and update roomlist.txt
        If gFSO.FileExists(sUserPath & "\roomlist.txt") Then
            Set oTextStream = gFSO.OpenTextFile(sUserPath & "\roomlist.txt", 1, False, 0)
            If Not oTextStream.AtEndOfStream Then
                ' Read roomlist and count rooms
                Set oTextStream = gFSO.OpenTextFile(sUserPath & "\roomlist.txt", 1, False, 0)
                sRoomListContent = oTextStream.ReadAll
                vRoomParts = Split(sRoomListContent, "<")

                lRoomCount = 0
                For i = 0 To UBound(vRoomParts)
                    If Len(vRoomParts(i)) > 1 Then
                        lRoomCount = lRoomCount + 1
                    End If
                Next i

                ' Read existing room count
                Set oTextStream = gFSO.OpenTextFile(sUserPath & "\rooms.txt", 1, False, 0)
                lExistingRoomCount = Val(oTextStream.ReadAll)

                ' Update rooms.txt if count differs
                If Val(CStr(lRoomCount)) <> lExistingRoomCount Then
                    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\rooms.txt", 2, False, 0)
                    oTextStream.Write CStr(lRoomCount)
                End If
            Else
                ' Empty roomlist, write 0 to rooms.txt
                Set oTextStream = gFSO.OpenTextFile(sUserPath & "\rooms.txt", 2, False, 0)
                oTextStream.Write "0"
            End If
        Else
            ' No roomlist.txt, create it and set rooms to 0
            gFSO.CreateTextFile sUserPath & "\roomlist.txt", True, False
            Set oTextStream = gFSO.OpenTextFile(sUserPath & "\rooms.txt", 2, True, 0)
            oTextStream.Write "0"
        End If

        ' Check and update num.txt (user number)
        If gFSO.FileExists(sUserPath & "\num.txt") Then
            Set oTextStream = gFSO.OpenTextFile(sUserPath & "\num.txt", 1, False, 0)
            lUserNum = oTextStream.ReadAll

            ' Check if user num is less than 4 or needs updating
            If lUserNum < 4 Or CStr(GetUserName(lUserNum)) <> lUserNum Then
                ' Read global count and increment
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\count.txt", 1, False, 0)
                lGlobalCount = Val(oTextStream.ReadAll) + 1

                ' Update user's num.txt
                Set oTextStream = gFSO.OpenTextFile(sUserPath & "\num.txt", 2, False, 0)
                oTextStream.Write CStr(lGlobalCount)

                ' Update global count
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\count.txt", 2, False, 0)
                oTextStream.Write CStr(lGlobalCount)

                ' Continue updating if needed
                lUserNum = lGlobalCount
                Do While CStr(GetUserName(lUserNum)) <> lUserNum
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\count.txt", 1, False, 0)
                    lGlobalCount = Val(oTextStream.ReadAll) + 1

                    Set oTextStream = gFSO.OpenTextFile(sUserPath & "\num.txt", 2, False, 0)
                    oTextStream.Write CStr(lGlobalCount)

                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\count.txt", 2, False, 0)
                    oTextStream.Write CStr(lGlobalCount)

                    lUserNum = lGlobalCount
                Loop
            End If
        Else
            ' No num.txt, create new user number
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\count.txt", 1, False, 0)
            lGlobalCount = Val(oTextStream.ReadAll) + 1

            Set oTextStream = gFSO.OpenTextFile(sUserPath & "\num.txt", 2, True, 0)
            oTextStream.Write CStr(lGlobalCount)

            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\count.txt", 2, False, 0)
            oTextStream.Write CStr(lGlobalCount)

            ' Continue updating if needed
            lUserNum = lGlobalCount
            Do While CStr(GetUserName(lUserNum)) <> lUserNum
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\count.txt", 1, False, 0)
                lGlobalCount = Val(oTextStream.ReadAll) + 1

                Set oTextStream = gFSO.OpenTextFile(sUserPath & "\num.txt", 2, True, 0)
                oTextStream.Write CStr(lGlobalCount)

                Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\count.txt", 2, False, 0)
                oTextStream.Write CStr(lGlobalCount)

                lUserNum = lGlobalCount
            Loop
        End If

        ' Check and update hcupdate.txt (Habbo Club update timestamp)
        If gFSO.FileExists(sUserPath & "\hcupdate.txt") Then
            Set oTextStream = gFSO.OpenTextFile(sUserPath & "\hcupdate.txt", 1, False, 0)
            If oTextStream.AtEndOfStream Then
                ' Empty file, write current timestamp
                Set oTextStream = gFSO.OpenTextFile(sUserPath & "\hcupdate.txt", 2, False, 0)
                oTextStream.Write CStr(Now)
            End If
        Else
            ' No hcupdate.txt, create with current timestamp
            Set oTextStream = gFSO.OpenTextFile(sUserPath & "\hcupdate.txt", 2, True, 0)
            oTextStream.Write CStr(Now)
        End If
    Next oSubFolder
End Sub
