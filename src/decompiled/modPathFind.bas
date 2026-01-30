Attribute VB_Name = "modPathFind"

Option Explicit

' modPathFind - Pathfinding Module for Habbo Room Navigation
' Handles movement calculations for private and public rooms
' Uses 8-directional grid movement with collision detection

' Direction codes:
' 0,0 = North (Up)
' 1,1 = Northeast (Up-Right)
' 2,2 = East (Right)
' 3,3 = Southeast (Down-Right)
' 4,4 = South (Down)
' 5,5 = Southwest (Down-Left)
' 6,6 = West (Left)
' 7,7 = Northwest (Up-Left)

' Tile types in room heightmaps:
' O = Open (walkable)
' D = Door (walkable, entrance)
' R = Rotation (furniture with sitting capability)
' S = Sit (chair/bed)
' L = Lay (bed)
' X = Blocked
' 0-9 = Height level (public rooms)

' FindPathPrivate - Calculate next movement step in private room
' Parameters:
'   SocketIndex - Socket connection index
'   CurrentX - Current X position (1-based)
'   CurrentY - Current Y position (1-based)
'   TargetX - Target X position
'   TargetY - Target Y position
'   RoomId - Private room ID
'   HeightMap - Room heightmap string
'   RotationMap - Furniture rotation map string
' Returns: Path string "X,Y" or "NoPath" if blocked
Public Function FindPathPrivate(ByVal SocketIndex As Integer, ByVal CurrentX As Integer, ByVal CurrentY As Integer, _
                                 ByVal TargetX As Integer, ByVal TargetY As Integer, ByVal RoomId As Double, _
                                 ByVal HeightMap As String, ByVal RotationMap As String) As String
    Dim sResult As String
    Dim sTile As String
    Dim sDataFile As String
    Dim sFurniType As String
    Dim sFurniId As String
    Dim oTextStream As Object
    Dim aHeightRows() As String
    Dim aPets() As String
    Dim i As Variant
    Dim dHeight As Double

    On Error GoTo ErrorHandler

    sResult = "NoPath"

    ' Direction: Northwest (CurrentX > TargetX, CurrentY > TargetY) - Move diagonally up-left
    If CurrentX > TargetX And CurrentY > TargetY Then
        ' Check collision with other users
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX - 1 And gUserData(CLng(i)).PosY = CurrentY - 1 Then
                    Exit Function
                End If
            End If
        Next i

        ' Check collision with pets
        aPets = Split(frmMain.Hpets, ";")
        For i = 0 To UBound(aPets)
            If aPets(i) <> vbNullString Then
                If gPetData(CLng(aPets(i))).RoomId = RoomId Then
                    If gPetData(CLng(aPets(i))).PosX = CurrentX - 1 And gPetData(CLng(aPets(i))).PosY = CurrentY - 1 Then
                        Exit Function
                    End If
                End If
            End If
        Next i

        ' Get tile type at target position
        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY - 1), CurrentX, 1)

        ' Check walkability
        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY - 1 = TargetY And CurrentX - 1 = TargetX) Then

            ' Handle rotation tiles (furniture)
            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX - 1) & "," & CStr(CurrentY - 1), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY - 1 = TargetY And CurrentX - 1 = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY - 1)
            gUserData(SocketIndex).TargetPos = "7,7"

            ' Update height
            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                dHeight = Val(Mid(aHeightRows(CurrentY - 1), CurrentX, 1))
                gUserData(SocketIndex).Height = Replace(CStr(dHeight + 0.4), ",", ".")
                If InStr(1, gUserData(SocketIndex).Height, ".") = 0 Then
                    gUserData(SocketIndex).Height = gUserData(SocketIndex).Height & ".0"
                End If
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gUserData(SocketIndex).Height = Mid(aHeightRows(CurrentY - 1), CurrentX, 1) & ".0"
            End If

            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: Southeast (CurrentX < TargetX, CurrentY < TargetY) - Move diagonally down-right
    If CurrentX < TargetX And CurrentY < TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX + 1 And gUserData(CLng(i)).PosY = CurrentY + 1 Then
                    Exit Function
                End If
            End If
        Next i

        aPets = Split(frmMain.Hpets, ";")
        For i = 0 To UBound(aPets)
            If aPets(i) <> vbNullString Then
                If gPetData(CLng(aPets(i))).RoomId = RoomId Then
                    If gPetData(CLng(aPets(i))).PosX = CurrentX + 1 And gPetData(CLng(aPets(i))).PosY = CurrentY + 1 Then
                        Exit Function
                    End If
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY + 1), CurrentX + 2, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY + 1 = TargetY And CurrentX + 1 = TargetX) Then

            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX + 1) & "," & CStr(CurrentY + 1), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY + 1 = TargetY And CurrentX + 1 = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            sResult = CStr(CurrentX + 1) & "," & CStr(CurrentY + 1)
            gUserData(SocketIndex).TargetPos = "3,3"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                dHeight = Val(Mid(aHeightRows(CurrentY + 1), CurrentX + 2, 1))
                gUserData(SocketIndex).Height = Replace(CStr(dHeight + 0.4), ",", ".")
                If InStr(1, gUserData(SocketIndex).Height, ".") = 0 Then
                    gUserData(SocketIndex).Height = gUserData(SocketIndex).Height & ".0"
                End If
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gUserData(SocketIndex).Height = Mid(aHeightRows(CurrentY + 1), CurrentX + 2, 1) & ".0"
            End If

            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: Southwest (CurrentX > TargetX, CurrentY < TargetY) - Move diagonally down-left
    If CurrentX > TargetX And CurrentY < TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX - 1 And gUserData(CLng(i)).PosY = CurrentY + 1 Then
                    Exit Function
                End If
            End If
        Next i

        aPets = Split(frmMain.Hpets, ";")
        For i = 0 To UBound(aPets)
            If aPets(i) <> vbNullString Then
                If gPetData(CLng(aPets(i))).RoomId = RoomId Then
                    If gPetData(CLng(aPets(i))).PosX = CurrentX - 1 And gPetData(CLng(aPets(i))).PosY = CurrentY + 1 Then
                        Exit Function
                    End If
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY + 1), CurrentX, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY + 1 = TargetY And CurrentX - 1 = TargetX) Then

            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX - 1) & "," & CStr(CurrentY + 1), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY + 1 = TargetY And CurrentX - 1 = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY + 1)
            gUserData(SocketIndex).TargetPos = "5,5"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                dHeight = Val(Mid(aHeightRows(CurrentY + 1), CurrentX, 1))
                gUserData(SocketIndex).Height = Replace(CStr(dHeight + 0.4), ",", ".")
                If InStr(1, gUserData(SocketIndex).Height, ".") = 0 Then
                    gUserData(SocketIndex).Height = gUserData(SocketIndex).Height & ".0"
                End If
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gUserData(SocketIndex).Height = Mid(aHeightRows(CurrentY + 1), CurrentX, 1) & ".0"
            End If

            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: Northeast (CurrentX < TargetX, CurrentY > TargetY) - Move diagonally up-right
    If CurrentX < TargetX And CurrentY > TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX + 1 And gUserData(CLng(i)).PosY = CurrentY - 1 Then
                    Exit Function
                End If
            End If
        Next i

        aPets = Split(frmMain.Hpets, ";")
        For i = 0 To UBound(aPets)
            If aPets(i) <> vbNullString Then
                If gPetData(CLng(aPets(i))).RoomId = RoomId Then
                    If gPetData(CLng(aPets(i))).PosX = CurrentX + 1 And gPetData(CLng(aPets(i))).PosY = CurrentY - 1 Then
                        Exit Function
                    End If
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY - 1), CurrentX + 2, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY - 1 = TargetY And CurrentX + 1 = TargetX) Then

            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX + 1) & "," & CStr(CurrentY - 1), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY - 1 = TargetY And CurrentX + 1 = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            sResult = CStr(CurrentX + 1) & "," & CStr(CurrentY - 1)
            gUserData(SocketIndex).TargetPos = "1,1"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                dHeight = Val(Mid(aHeightRows(CurrentY - 1), CurrentX + 2, 1))
                gUserData(SocketIndex).Height = Replace(CStr(dHeight + 0.4), ",", ".")
                If InStr(1, gUserData(SocketIndex).Height, ".") = 0 Then
                    gUserData(SocketIndex).Height = gUserData(SocketIndex).Height & ".0"
                End If
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gUserData(SocketIndex).Height = Mid(aHeightRows(CurrentY - 1), CurrentX + 2, 1) & ".0"
            End If

            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: East (CurrentX < TargetX, CurrentY = TargetY) - Move right
    If CurrentX < TargetX And CurrentY = TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX + 1 And gUserData(CLng(i)).PosY = CurrentY Then
                    Exit Function
                End If
            End If
        Next i

        aPets = Split(frmMain.Hpets, ";")
        For i = 0 To UBound(aPets)
            If aPets(i) <> vbNullString Then
                If gPetData(CLng(aPets(i))).RoomId = RoomId Then
                    If gPetData(CLng(aPets(i))).PosX = CurrentX + 1 And gPetData(CLng(aPets(i))).PosY = CurrentY Then
                        Exit Function
                    End If
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY), CurrentX + 2, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY = TargetY And CurrentX + 1 = TargetX) Then

            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX + 1) & "," & CStr(CurrentY), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY = TargetY And CurrentX + 1 = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            sResult = CStr(CurrentX + 1) & "," & CStr(CurrentY)
            gUserData(SocketIndex).TargetPos = "2,2"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                dHeight = Val(Mid(aHeightRows(CurrentY), CurrentX + 2, 1))
                gUserData(SocketIndex).Height = Replace(CStr(dHeight + 0.4), ",", ".")
                If InStr(1, gUserData(SocketIndex).Height, ".") = 0 Then
                    gUserData(SocketIndex).Height = gUserData(SocketIndex).Height & ".0"
                End If
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gUserData(SocketIndex).Height = Mid(aHeightRows(CurrentY), CurrentX + 2, 1) & ".0"
            End If

            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: West (CurrentX > TargetX, CurrentY = TargetY) - Move left
    If CurrentX > TargetX And CurrentY = TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX - 1 And gUserData(CLng(i)).PosY = CurrentY Then
                    Exit Function
                End If
            End If
        Next i

        aPets = Split(frmMain.Hpets, ";")
        For i = 0 To UBound(aPets)
            If aPets(i) <> vbNullString Then
                If gPetData(CLng(aPets(i))).RoomId = RoomId Then
                    If gPetData(CLng(aPets(i))).PosX = CurrentX - 1 And gPetData(CLng(aPets(i))).PosY = CurrentY Then
                        Exit Function
                    End If
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY), CurrentX, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY = TargetY And CurrentX - 1 = TargetX) Then

            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX - 1) & "," & CStr(CurrentY), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY = TargetY And CurrentX - 1 = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY)
            gUserData(SocketIndex).TargetPos = "6,6"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                dHeight = Val(Mid(aHeightRows(CurrentY), CurrentX, 1))
                gUserData(SocketIndex).Height = Replace(CStr(dHeight + 0.4), ",", ".")
                If InStr(1, gUserData(SocketIndex).Height, ".") = 0 Then
                    gUserData(SocketIndex).Height = gUserData(SocketIndex).Height & ".0"
                End If
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gUserData(SocketIndex).Height = Mid(aHeightRows(CurrentY), CurrentX, 1) & ".0"
            End If

            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: South (CurrentX = TargetX, CurrentY < TargetY) - Move down
    If CurrentX = TargetX And CurrentY < TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX And gUserData(CLng(i)).PosY = CurrentY + 1 Then
                    Exit Function
                End If
            End If
        Next i

        aPets = Split(frmMain.Hpets, ";")
        For i = 0 To UBound(aPets)
            If aPets(i) <> vbNullString Then
                If gPetData(CLng(aPets(i))).RoomId = RoomId Then
                    If gPetData(CLng(aPets(i))).PosX = CurrentX And gPetData(CLng(aPets(i))).PosY = CurrentY + 1 Then
                        Exit Function
                    End If
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY + 1), CurrentX + 1, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY + 1 = TargetY And CurrentX = TargetX) Then

            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX) & "," & CStr(CurrentY + 1), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY + 1 = TargetY And CurrentX = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            sResult = CStr(CurrentX) & "," & CStr(CurrentY + 1)
            gUserData(SocketIndex).TargetPos = "4,4"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                dHeight = Val(Mid(aHeightRows(CurrentY + 1), CurrentX + 1, 1))
                gUserData(SocketIndex).Height = Replace(CStr(dHeight + 0.4), ",", ".")
                If InStr(1, gUserData(SocketIndex).Height, ".") = 0 Then
                    gUserData(SocketIndex).Height = gUserData(SocketIndex).Height & ".0"
                End If
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gUserData(SocketIndex).Height = Mid(aHeightRows(CurrentY + 1), CurrentX + 1, 1) & ".0"
            End If

            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: North (CurrentX = TargetX, CurrentY > TargetY) - Move up
    If CurrentX = TargetX And CurrentY > TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX And gUserData(CLng(i)).PosY = CurrentY - 1 Then
                    Exit Function
                End If
            End If
        Next i

        aPets = Split(frmMain.Hpets, ";")
        For i = 0 To UBound(aPets)
            If aPets(i) <> vbNullString Then
                If gPetData(CLng(aPets(i))).RoomId = RoomId Then
                    If gPetData(CLng(aPets(i))).PosX = CurrentX And gPetData(CLng(aPets(i))).PosY = CurrentY - 1 Then
                        Exit Function
                    End If
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY - 1), CurrentX + 1, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY - 1 = TargetY And CurrentX = TargetX) Then

            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX) & "," & CStr(CurrentY - 1), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY - 1 = TargetY And CurrentX = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            sResult = CStr(CurrentX) & "," & CStr(CurrentY - 1)
            gUserData(SocketIndex).TargetPos = "0,0"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                dHeight = Val(Mid(aHeightRows(CurrentY - 1), CurrentX + 1, 1))
                gUserData(SocketIndex).Height = Replace(CStr(dHeight + 0.4), ",", ".")
                If InStr(1, gUserData(SocketIndex).Height, ".") = 0 Then
                    gUserData(SocketIndex).Height = gUserData(SocketIndex).Height & ".0"
                End If
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gUserData(SocketIndex).Height = Mid(aHeightRows(CurrentY - 1), CurrentX + 1, 1) & ".0"
            End If

            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    FindPathPrivate = sResult
    Exit Function

ErrorHandler:
    FindPathPrivate = "NoPath"
End Function

' FindPathPrivateAlt - Calculate next movement step for PETS in private room
' This is separate from FindPathPrivate - it updates gPetData instead of gUserData
' Parameters:
'   PetIndex - Pet index in gPetData array
'   CurrentX - Current X position
'   CurrentY - Current Y position
'   TargetX - Target X position
'   TargetY - Target Y position
'   RoomId - Private room ID
'   HeightMap - Room heightmap string
'   RotationMap - Furniture rotation map string
' Returns: Path string "X,Y" or "NoPath" if blocked
Public Function FindPathPrivateAlt(ByVal PetIndex As Integer, ByVal CurrentX As Integer, ByVal CurrentY As Integer, _
                                    ByVal TargetX As Integer, ByVal TargetY As Integer, ByVal RoomId As Double, _
                                    ByVal HeightMap As String, ByVal RotationMap As String) As String
    Dim sResult As String
    Dim sTile As String
    Dim sDataFile As String
    Dim sFurniType As String
    Dim sFurniId As String
    Dim oTextStream As Object
    Dim aHeightRows() As String
    Dim i As Variant

    On Error GoTo ErrorHandler

    sResult = "NoPath"

    ' Direction: Northwest (7,7)
    If CurrentX > TargetX And CurrentY > TargetY Then
        ' Check collision with users
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX - 1 And gUserData(CLng(i)).PosY = CurrentY - 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY - 1), CurrentX, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY - 1 = TargetY And CurrentX - 1 = TargetX) Then

            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX - 1) & "," & CStr(CurrentY - 1), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY - 1 = TargetY And CurrentX - 1 = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY - 1)
            gPetData(PetIndex).TargetPos = "7,7"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gPetData(PetIndex).Height = Replace(CStr(Val(Mid(aHeightRows(CurrentY - 1), CurrentX, 1)) + 0.4), ",", ".")
                If InStr(1, gPetData(PetIndex).Height, ".") = 0 Then
                    gPetData(PetIndex).Height = gPetData(PetIndex).Height & ".0"
                End If
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gPetData(PetIndex).Height = Mid(aHeightRows(CurrentY - 1), CurrentX, 1) & ".0"
            End If

            gPetData(PetIndex).Moving = False
            gPetData(PetIndex).ActionString = vbNullString
            gPetData(PetIndex).MoveTimer = 0
            gPetData(PetIndex).Sitting = False
        End If
    End If

    ' Direction: Southeast (3,3)
    If CurrentX < TargetX And CurrentY < TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX + 1 And gUserData(CLng(i)).PosY = CurrentY + 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY + 1), CurrentX + 2, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY + 1 = TargetY And CurrentX + 1 = TargetX) Then

            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX + 1) & "," & CStr(CurrentY + 1), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY + 1 = TargetY And CurrentX + 1 = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            sResult = CStr(CurrentX + 1) & "," & CStr(CurrentY + 1)
            gPetData(PetIndex).TargetPos = "3,3"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gPetData(PetIndex).Height = Replace(CStr(Val(Mid(aHeightRows(CurrentY + 1), CurrentX + 2, 1)) + 0.4), ",", ".")
                If InStr(1, gPetData(PetIndex).Height, ".") = 0 Then
                    gPetData(PetIndex).Height = gPetData(PetIndex).Height & ".0"
                End If
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gPetData(PetIndex).Height = Mid(aHeightRows(CurrentY + 1), CurrentX + 2, 1) & ".0"
            End If

            gPetData(PetIndex).Moving = False
            gPetData(PetIndex).ActionString = vbNullString
            gPetData(PetIndex).MoveTimer = 0
            gPetData(PetIndex).Sitting = False
        End If
    End If

    ' Direction: Southwest (5,5)
    If CurrentX > TargetX And CurrentY < TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX - 1 And gUserData(CLng(i)).PosY = CurrentY + 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY + 1), CurrentX, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY + 1 = TargetY And CurrentX - 1 = TargetX) Then

            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX - 1) & "," & CStr(CurrentY + 1), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY + 1 = TargetY And CurrentX - 1 = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY + 1)
            gPetData(PetIndex).TargetPos = "5,5"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gPetData(PetIndex).Height = Replace(CStr(Val(Mid(aHeightRows(CurrentY + 1), CurrentX, 1)) + 0.4), ",", ".")
                If InStr(1, gPetData(PetIndex).Height, ".") = 0 Then
                    gPetData(PetIndex).Height = gPetData(PetIndex).Height & ".0"
                End If
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gPetData(PetIndex).Height = Mid(aHeightRows(CurrentY + 1), CurrentX, 1) & ".0"
            End If

            gPetData(PetIndex).Moving = False
            gPetData(PetIndex).ActionString = vbNullString
            gPetData(PetIndex).MoveTimer = 0
            gPetData(PetIndex).Sitting = False
        End If
    End If

    ' Direction: Northeast (1,1)
    If CurrentX < TargetX And CurrentY > TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX + 1 And gUserData(CLng(i)).PosY = CurrentY - 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY - 1), CurrentX + 2, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY - 1 = TargetY And CurrentX + 1 = TargetX) Then

            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX + 1) & "," & CStr(CurrentY - 1), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY - 1 = TargetY And CurrentX + 1 = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            sResult = CStr(CurrentX + 1) & "," & CStr(CurrentY - 1)
            gPetData(PetIndex).TargetPos = "1,1"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gPetData(PetIndex).Height = Replace(CStr(Val(Mid(aHeightRows(CurrentY - 1), CurrentX + 2, 1)) + 0.4), ",", ".")
                If InStr(1, gPetData(PetIndex).Height, ".") = 0 Then
                    gPetData(PetIndex).Height = gPetData(PetIndex).Height & ".0"
                End If
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gPetData(PetIndex).Height = Mid(aHeightRows(CurrentY - 1), CurrentX + 2, 1) & ".0"
            End If

            gPetData(PetIndex).Moving = False
            gPetData(PetIndex).ActionString = vbNullString
            gPetData(PetIndex).MoveTimer = 0
            gPetData(PetIndex).Sitting = False
        End If
    End If

    ' Direction: East (2,2)
    If CurrentX < TargetX And CurrentY = TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX + 1 And gUserData(CLng(i)).PosY = CurrentY Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY), CurrentX + 2, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY = TargetY And CurrentX + 1 = TargetX) Then

            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX + 1) & "," & CStr(CurrentY), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY = TargetY And CurrentX + 1 = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            sResult = CStr(CurrentX + 1) & "," & CStr(CurrentY)
            gPetData(PetIndex).TargetPos = "2,2"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gPetData(PetIndex).Height = Replace(CStr(Val(Mid(aHeightRows(CurrentY), CurrentX + 2, 1)) + 0.4), ",", ".")
                If InStr(1, gPetData(PetIndex).Height, ".") = 0 Then
                    gPetData(PetIndex).Height = gPetData(PetIndex).Height & ".0"
                End If
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gPetData(PetIndex).Height = Mid(aHeightRows(CurrentY), CurrentX + 2, 1) & ".0"
            End If

            gPetData(PetIndex).MoveTimer = 0
            gPetData(PetIndex).Moving = False
            gPetData(PetIndex).Sitting = False
        End If
    End If

    ' Direction: West (6,6)
    If CurrentX > TargetX And CurrentY = TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX - 1 And gUserData(CLng(i)).PosY = CurrentY Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY), CurrentX, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY = TargetY And CurrentX - 1 = TargetX) Then

            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX - 1) & "," & CStr(CurrentY), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY = TargetY And CurrentX - 1 = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY)
            gPetData(PetIndex).TargetPos = "6,6"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gPetData(PetIndex).Height = Replace(CStr(Val(Mid(aHeightRows(CurrentY), CurrentX, 1)) + 0.4), ",", ".")
                If InStr(1, gPetData(PetIndex).Height, ".") = 0 Then
                    gPetData(PetIndex).Height = gPetData(PetIndex).Height & ".0"
                End If
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gPetData(PetIndex).Height = Mid(aHeightRows(CurrentY), CurrentX, 1) & ".0"
            End If

            gPetData(PetIndex).MoveTimer = 0
            gPetData(PetIndex).Moving = False
            gPetData(PetIndex).Sitting = False
        End If
    End If

    ' Direction: South (4,4)
    If CurrentX = TargetX And CurrentY < TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX And gUserData(CLng(i)).PosY = CurrentY + 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY + 1), CurrentX + 1, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY + 1 = TargetY And CurrentX = TargetX) Then

            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX) & "," & CStr(CurrentY + 1), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY + 1 = TargetY And CurrentX = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            sResult = CStr(CurrentX) & "," & CStr(CurrentY + 1)
            gPetData(PetIndex).TargetPos = "4,4"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gPetData(PetIndex).Height = Replace(CStr(Val(Mid(aHeightRows(CurrentY + 1), CurrentX + 1, 1)) + 0.4), ",", ".")
                If InStr(1, gPetData(PetIndex).Height, ".") = 0 Then
                    gPetData(PetIndex).Height = gPetData(PetIndex).Height & ".0"
                End If
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gPetData(PetIndex).Height = Mid(aHeightRows(CurrentY + 1), CurrentX + 1, 1) & ".0"
            End If

            gPetData(PetIndex).MoveTimer = 0
            gPetData(PetIndex).Moving = False
            gPetData(PetIndex).Sitting = False
        End If
    End If

    ' Direction: North (0,0)
    If CurrentX = TargetX And CurrentY > TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX And gUserData(CLng(i)).PosY = CurrentY - 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY - 1), CurrentX + 1, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY - 1 = TargetY And CurrentX = TargetX) Then

            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX) & "," & CStr(CurrentY - 1), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY - 1 = TargetY And CurrentX = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            sResult = CStr(CurrentX) & "," & CStr(CurrentY - 1)
            gPetData(PetIndex).TargetPos = "0,0"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gPetData(PetIndex).Height = Replace(CStr(Val(Mid(aHeightRows(CurrentY - 1), CurrentX + 1, 1)) + 0.4), ",", ".")
                If InStr(1, gPetData(PetIndex).Height, ".") = 0 Then
                    gPetData(PetIndex).Height = gPetData(PetIndex).Height & ".0"
                End If
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gPetData(PetIndex).Height = Mid(aHeightRows(CurrentY - 1), CurrentX + 1, 1) & ".0"
            End If

            gPetData(PetIndex).MoveTimer = 0
            gPetData(PetIndex).Moving = False
            gPetData(PetIndex).Sitting = False
        End If
    End If

    FindPathPrivateAlt = sResult
    Exit Function

ErrorHandler:
    FindPathPrivateAlt = "NoPath"
End Function

' FindPathPublic - Calculate next movement step in public room for USERS
' Public rooms use height maps with numeric values for height checking
' Height difference must be <= 1 and >= -1 for valid movement
' Parameters:
'   SocketIndex - Socket connection index
'   CurrentX - Current X position
'   CurrentY - Current Y position
'   TargetX - Target X position
'   TargetY - Target Y position
'   HeightMap - Room heightmap string with numeric heights
' Returns: Path string "X,Y" or "NoPath" if blocked
Public Function FindPathPublic(ByVal SocketIndex As Integer, ByVal CurrentX As Integer, ByVal CurrentY As Integer, _
                                ByVal TargetX As Integer, ByVal TargetY As Integer, ByVal HeightMap As String) As Variant
    Dim sResult As String
    Dim sTile As String
    Dim aHeightRows() As String
    Dim i As Variant
    Dim lBotIndex As Long
    Dim dTileHeight As Double
    Dim dHeightDiff As Double
    Dim dCurrentHeight As Double
    Dim vTileData As Variant

    On Error GoTo ErrorHandler

    sResult = "NoPath"

    ' Find the bot in this public room for collision detection
    For i = 1 To frmMain.BotI
        If gBotData(CLng(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
            lBotIndex = CLng(i)
            Exit For
        End If
    Next i

    ' Get current user height
    dCurrentHeight = Val(Split(gUserData(SocketIndex).Height, ".")(0))

    ' Direction: Northwest (7,7)
    If CurrentX > TargetX And CurrentY > TargetY Then
        ' Check bot collision
        If lBotIndex > 0 Then
            If gBotData(lBotIndex).PosX = CurrentX - 1 And gBotData(lBotIndex).PosY = CurrentY - 1 Then
                Exit Function
            End If
        End If

        ' Check user collision
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX - 1 And gUserData(CLng(i)).PosY = CurrentY - 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY - 1), CurrentX, 1)

        ' Get height data from gHeightMap
        vTileData = gHeightMap(gUserData(SocketIndex).PublicRoomId, CurrentX - 1, CurrentY - 1).TileType

        ' Calculate height difference
        dTileHeight = Val(sTile)
        dHeightDiff = dTileHeight - dCurrentHeight

        ' Check if height difference is acceptable (must be between -1 and 1)
        If dHeightDiff > 1 Or dHeightDiff < -1 Then
            Exit Function
        End If

        If vTileData = vbNullString Or vTileData = "S" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY - 1)
            gUserData(SocketIndex).TargetPos = "7,7"
            gUserData(SocketIndex).Height = sTile & ".0"
            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: Southeast (3,3)
    If CurrentX < TargetX And CurrentY < TargetY Then
        If lBotIndex > 0 Then
            If gBotData(lBotIndex).PosX = CurrentX + 1 And gBotData(lBotIndex).PosY = CurrentY + 1 Then
                Exit Function
            End If
        End If

        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX + 1 And gUserData(CLng(i)).PosY = CurrentY + 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY + 1), CurrentX + 2, 1)

        vTileData = gHeightMap(gUserData(SocketIndex).PublicRoomId, CurrentX + 1, CurrentY + 1).TileType

        dTileHeight = Val(sTile)
        dHeightDiff = dTileHeight - dCurrentHeight

        If dHeightDiff > 1 Or dHeightDiff < -1 Then
            Exit Function
        End If

        If vTileData = vbNullString Or vTileData = "S" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX + 1) & "," & CStr(CurrentY + 1)
            gUserData(SocketIndex).TargetPos = "3,3"
            gUserData(SocketIndex).Height = sTile & ".0"
            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: Southwest (5,5)
    If CurrentX > TargetX And CurrentY < TargetY Then
        If lBotIndex > 0 Then
            If gBotData(lBotIndex).PosX = CurrentX - 1 And gBotData(lBotIndex).PosY = CurrentY + 1 Then
                Exit Function
            End If
        End If

        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX - 1 And gUserData(CLng(i)).PosY = CurrentY + 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY + 1), CurrentX, 1)

        vTileData = gHeightMap(gUserData(SocketIndex).PublicRoomId, CurrentX - 1, CurrentY + 1).TileType

        dTileHeight = Val(sTile)
        dHeightDiff = dTileHeight - dCurrentHeight

        If dHeightDiff > 1 Or dHeightDiff < -1 Then
            Exit Function
        End If

        If vTileData = vbNullString Or vTileData = "S" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY + 1)
            gUserData(SocketIndex).TargetPos = "5,5"
            gUserData(SocketIndex).Height = sTile & ".0"
            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: Northeast (1,1)
    If CurrentX < TargetX And CurrentY > TargetY Then
        If lBotIndex > 0 Then
            If gBotData(lBotIndex).PosX = CurrentX + 1 And gBotData(lBotIndex).PosY = CurrentY - 1 Then
                Exit Function
            End If
        End If

        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX + 1 And gUserData(CLng(i)).PosY = CurrentY - 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY - 1), CurrentX + 2, 1)

        vTileData = gHeightMap(gUserData(SocketIndex).PublicRoomId, CurrentX + 1, CurrentY - 1).TileType

        dTileHeight = Val(sTile)
        dHeightDiff = dTileHeight - dCurrentHeight

        If dHeightDiff > 1 Or dHeightDiff < -1 Then
            Exit Function
        End If

        If vTileData = vbNullString Or vTileData = "S" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX + 1) & "," & CStr(CurrentY - 1)
            gUserData(SocketIndex).TargetPos = "1,1"
            gUserData(SocketIndex).Height = sTile & ".0"
            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: East (2,2)
    If CurrentX < TargetX And CurrentY = TargetY Then
        If lBotIndex > 0 Then
            If gBotData(lBotIndex).PosX = CurrentX + 1 And gBotData(lBotIndex).PosY = CurrentY Then
                Exit Function
            End If
        End If

        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX + 1 And gUserData(CLng(i)).PosY = CurrentY Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY), CurrentX + 2, 1)

        vTileData = gHeightMap(gUserData(SocketIndex).PublicRoomId, CurrentX + 1, CurrentY).TileType

        dTileHeight = Val(sTile)
        dHeightDiff = dTileHeight - dCurrentHeight

        If dHeightDiff > 1 Or dHeightDiff < -1 Then
            Exit Function
        End If

        If vTileData = vbNullString Or vTileData = "S" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX + 1) & "," & CStr(CurrentY)
            gUserData(SocketIndex).TargetPos = "2,2"
            gUserData(SocketIndex).Height = sTile & ".0"
            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: West (6,6)
    If CurrentX > TargetX And CurrentY = TargetY Then
        If lBotIndex > 0 Then
            If gBotData(lBotIndex).PosX = CurrentX - 1 And gBotData(lBotIndex).PosY = CurrentY Then
                Exit Function
            End If
        End If

        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX - 1 And gUserData(CLng(i)).PosY = CurrentY Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY), CurrentX, 1)

        vTileData = gHeightMap(gUserData(SocketIndex).PublicRoomId, CurrentX - 1, CurrentY).TileType

        dTileHeight = Val(sTile)
        dHeightDiff = dTileHeight - dCurrentHeight

        If dHeightDiff > 1 Or dHeightDiff < -1 Then
            Exit Function
        End If

        If vTileData = vbNullString Or vTileData = "S" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY)
            gUserData(SocketIndex).TargetPos = "6,6"
            gUserData(SocketIndex).Height = sTile & ".0"
            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: South (4,4)
    If CurrentX = TargetX And CurrentY < TargetY Then
        If lBotIndex > 0 Then
            If gBotData(lBotIndex).PosX = CurrentX And gBotData(lBotIndex).PosY = CurrentY + 1 Then
                Exit Function
            End If
        End If

        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX And gUserData(CLng(i)).PosY = CurrentY + 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY + 1), CurrentX + 1, 1)

        vTileData = gHeightMap(gUserData(SocketIndex).PublicRoomId, CurrentX, CurrentY + 1).TileType

        dTileHeight = Val(sTile)
        dHeightDiff = dTileHeight - dCurrentHeight

        If dHeightDiff > 1 Or dHeightDiff < -1 Then
            Exit Function
        End If

        If vTileData = vbNullString Or vTileData = "S" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX) & "," & CStr(CurrentY + 1)
            gUserData(SocketIndex).TargetPos = "4,4"
            gUserData(SocketIndex).Height = sTile & ".0"
            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: North (0,0)
    If CurrentX = TargetX And CurrentY > TargetY Then
        If lBotIndex > 0 Then
            If gBotData(lBotIndex).PosX = CurrentX And gBotData(lBotIndex).PosY = CurrentY - 1 Then
                Exit Function
            End If
        End If

        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX And gUserData(CLng(i)).PosY = CurrentY - 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY - 1), CurrentX + 1, 1)

        vTileData = gHeightMap(gUserData(SocketIndex).PublicRoomId, CurrentX, CurrentY - 1).TileType

        dTileHeight = Val(sTile)
        dHeightDiff = dTileHeight - dCurrentHeight

        If dHeightDiff > 1 Or dHeightDiff < -1 Then
            Exit Function
        End If

        If vTileData = vbNullString Or vTileData = "S" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX) & "," & CStr(CurrentY - 1)
            gUserData(SocketIndex).TargetPos = "0,0"
            gUserData(SocketIndex).Height = sTile & ".0"
            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    FindPathPublic = sResult
    Exit Function

ErrorHandler:
    FindPathPublic = "NoPath"
End Function

' FindPathPublicAlt - Calculate next movement step in public room for BOTS
' Bot pathfinding avoids users but updates gBotData
' Parameters:
'   BotIndex - Bot index in gBotData array
'   CurrentX - Current X position
'   CurrentY - Current Y position
'   TargetX - Target X position
'   TargetY - Target Y position
'   HeightMap - Room heightmap string
' Returns: Path string "X,Y" or "NoPath" if blocked
Public Function FindPathPublicAlt(ByVal BotIndex As Integer, ByVal CurrentX As Integer, ByVal CurrentY As Integer, _
                                   ByVal TargetX As Integer, ByVal TargetY As Integer, ByVal HeightMap As String) As Variant
    Dim sResult As String
    Dim sTile As String
    Dim aHeightRows() As String
    Dim i As Variant
    Dim dTileHeight As Double
    Dim dHeightDiff As Double
    Dim dCurrentHeight As Double
    Dim vTileData As Variant

    On Error GoTo ErrorHandler

    sResult = "NoPath"

    ' Get current bot height
    dCurrentHeight = Val(Split(gBotData(BotIndex).Height, ".")(0))

    ' Direction: Northwest (7,7)
    If CurrentX > TargetX And CurrentY > TargetY Then
        ' Check user collision
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gBotData(BotIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX - 1 And gUserData(CLng(i)).PosY = CurrentY - 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY - 1), CurrentX, 1)

        vTileData = gHeightMap(gBotData(BotIndex).PublicRoomId, CurrentX - 1, CurrentY - 1).TileType

        dTileHeight = Val(sTile)
        dHeightDiff = dTileHeight - dCurrentHeight

        If dHeightDiff > 1 Or dHeightDiff < -1 Then
            Exit Function
        End If

        If vTileData = vbNullString Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY - 1)
            gBotData(BotIndex).TargetPos = "7,7"
            gBotData(BotIndex).Height = sTile & ".0"
            gBotData(BotIndex).Moving = False
        End If
    End If

    ' Direction: Southeast (3,3)
    If CurrentX < TargetX And CurrentY < TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gBotData(BotIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX + 1 And gUserData(CLng(i)).PosY = CurrentY + 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY + 1), CurrentX + 2, 1)

        vTileData = gHeightMap(gBotData(BotIndex).PublicRoomId, CurrentX + 1, CurrentY + 1).TileType

        dTileHeight = Val(sTile)
        dHeightDiff = dTileHeight - dCurrentHeight

        If dHeightDiff > 1 Or dHeightDiff < -1 Then
            Exit Function
        End If

        If vTileData = vbNullString Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX + 1) & "," & CStr(CurrentY + 1)
            gBotData(BotIndex).TargetPos = "3,3"
            gBotData(BotIndex).Height = sTile & ".0"
            gBotData(BotIndex).Moving = False
        End If
    End If

    ' Direction: Southwest (5,5)
    If CurrentX > TargetX And CurrentY < TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gBotData(BotIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX - 1 And gUserData(CLng(i)).PosY = CurrentY + 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY + 1), CurrentX, 1)

        vTileData = gHeightMap(gBotData(BotIndex).PublicRoomId, CurrentX - 1, CurrentY + 1).TileType

        dTileHeight = Val(sTile)
        dHeightDiff = dTileHeight - dCurrentHeight

        If dHeightDiff > 1 Or dHeightDiff < -1 Then
            Exit Function
        End If

        If vTileData = vbNullString Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY + 1)
            gBotData(BotIndex).TargetPos = "5,5"
            gBotData(BotIndex).Height = sTile & ".0"
            gBotData(BotIndex).Moving = False
        End If
    End If

    ' Direction: Northeast (1,1)
    If CurrentX < TargetX And CurrentY > TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gBotData(BotIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX + 1 And gUserData(CLng(i)).PosY = CurrentY - 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY - 1), CurrentX + 2, 1)

        vTileData = gHeightMap(gBotData(BotIndex).PublicRoomId, CurrentX + 1, CurrentY - 1).TileType

        dTileHeight = Val(sTile)
        dHeightDiff = dTileHeight - dCurrentHeight

        If dHeightDiff > 1 Or dHeightDiff < -1 Then
            Exit Function
        End If

        If vTileData = vbNullString Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX + 1) & "," & CStr(CurrentY - 1)
            gBotData(BotIndex).TargetPos = "1,1"
            gBotData(BotIndex).Height = sTile & ".0"
            gBotData(BotIndex).Moving = False
        End If
    End If

    ' Direction: East (2,2)
    If CurrentX < TargetX And CurrentY = TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gBotData(BotIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX + 1 And gUserData(CLng(i)).PosY = CurrentY Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY), CurrentX + 2, 1)

        vTileData = gHeightMap(gBotData(BotIndex).PublicRoomId, CurrentX + 1, CurrentY).TileType

        dTileHeight = Val(sTile)
        dHeightDiff = dTileHeight - dCurrentHeight

        If dHeightDiff > 1 Or dHeightDiff < -1 Then
            Exit Function
        End If

        If vTileData = vbNullString Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX + 1) & "," & CStr(CurrentY)
            gBotData(BotIndex).TargetPos = "2,2"
            gBotData(BotIndex).Height = sTile & ".0"
            gBotData(BotIndex).Moving = False
        End If
    End If

    ' Direction: West (6,6)
    If CurrentX > TargetX And CurrentY = TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gBotData(BotIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX - 1 And gUserData(CLng(i)).PosY = CurrentY Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY), CurrentX, 1)

        vTileData = gHeightMap(gBotData(BotIndex).PublicRoomId, CurrentX - 1, CurrentY).TileType

        dTileHeight = Val(sTile)
        dHeightDiff = dTileHeight - dCurrentHeight

        If dHeightDiff > 1 Or dHeightDiff < -1 Then
            Exit Function
        End If

        If vTileData = vbNullString Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY)
            gBotData(BotIndex).TargetPos = "6,6"
            gBotData(BotIndex).Height = sTile & ".0"
            gBotData(BotIndex).Moving = False
        End If
    End If

    ' Direction: South (4,4)
    If CurrentX = TargetX And CurrentY < TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gBotData(BotIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX And gUserData(CLng(i)).PosY = CurrentY + 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY + 1), CurrentX + 1, 1)

        vTileData = gHeightMap(gBotData(BotIndex).PublicRoomId, CurrentX, CurrentY + 1).TileType

        dTileHeight = Val(sTile)
        dHeightDiff = dTileHeight - dCurrentHeight

        If dHeightDiff > 1 Or dHeightDiff < -1 Then
            Exit Function
        End If

        If vTileData = vbNullString Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX) & "," & CStr(CurrentY + 1)
            gBotData(BotIndex).TargetPos = "4,4"
            gBotData(BotIndex).Height = sTile & ".0"
            gBotData(BotIndex).Moving = False
        End If
    End If

    ' Direction: North (0,0)
    If CurrentX = TargetX And CurrentY > TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gBotData(BotIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX And gUserData(CLng(i)).PosY = CurrentY - 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY - 1), CurrentX + 1, 1)

        vTileData = gHeightMap(gBotData(BotIndex).PublicRoomId, CurrentX, CurrentY - 1).TileType

        dTileHeight = Val(sTile)
        dHeightDiff = dTileHeight - dCurrentHeight

        If dHeightDiff > 1 Or dHeightDiff < -1 Then
            Exit Function
        End If

        If vTileData = vbNullString Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX) & "," & CStr(CurrentY - 1)
            gBotData(BotIndex).TargetPos = "0,0"
            gBotData(BotIndex).Height = sTile & ".0"
            gBotData(BotIndex).Moving = False
        End If
    End If

    FindPathPublicAlt = sResult
    Exit Function

ErrorHandler:
    FindPathPublicAlt = "NoPath"
End Function

' CheckPublicRoomTransition - Handle teleportation between connected public rooms
' Checks if user has reached a transition point and moves them to the connected room
' Parameters:
'   SocketIndex - Socket connection index
Public Sub CheckPublicRoomTransition(ByVal SocketIndex As Integer)
    Dim lCurrentRoom As Integer
    Dim dPosX As Double
    Dim dPosY As Double
    Dim sUsername As String
    Dim sTickets As String
    Dim lTickets As Long
    Dim oTextStream As Object
    Dim i As Variant

    On Error Resume Next

    lCurrentRoom = gUserData(SocketIndex).PublicRoomId
    dPosX = gUserData(SocketIndex).PosX
    dPosY = gUserData(SocketIndex).PosY

    ' Room 28 (0x1C) - Info Bus Park
    If lCurrentRoom = 28 Then
        ' Check if info bus doors are open
        If frmMain.chkInfoBus.Value = 1 Then
            SendData SocketIndex, "AGbus open"

            ' Pathway transitions
            If dPosX = 18 And dPosY = 7 Then
                gUserData(SocketIndex).DestX = 18
                gUserData(SocketIndex).DestY = 8
            End If
            If dPosX = 18 And dPosY = 8 Then
                gUserData(SocketIndex).DestX = 18
                gUserData(SocketIndex).DestY = 9
            End If
            If dPosX = 18 And dPosY = 9 Then
                gUserData(SocketIndex).DestX = 18
                gUserData(SocketIndex).DestY = 10
            End If
            If dPosX = 18 And dPosY = 10 Then
                gUserData(SocketIndex).DestX = 19
                gUserData(SocketIndex).DestY = 10
            End If
            If dPosX = 19 And dPosY = 10 Then
                gUserData(SocketIndex).DestX = 20
                gUserData(SocketIndex).DestY = 10
            End If
            If dPosX = 20 And dPosY = 10 Then
                gUserData(SocketIndex).DestX = 20
                gUserData(SocketIndex).DestY = 9
            End If
            If dPosX = 20 And dPosY = 9 Then
                gUserData(SocketIndex).DestX = 20
                gUserData(SocketIndex).DestY = 8
            End If
            If dPosX = 20 And dPosY = 8 Then
                gUserData(SocketIndex).DestX = 20
                gUserData(SocketIndex).DestY = 7
            End If
            If dPosX = 20 And dPosY = 7 Then
                ' Enter bus - transition to park_b
                gUserData(SocketIndex).PublicRoomId = 34
                gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
                SendData SocketIndex, "AEpark_b 15190"
                RemoveUserFromPublicRoom 28, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
                gUserData(SocketIndex).DestX = 0
                gUserData(SocketIndex).DestY = 0
            End If
        Else
            SendData SocketIndex, "AGbus close"
        End If
    End If

    ' Room 31 (0x1F) - Entrance Hall
    If lCurrentRoom = 31 Then
        If dPosX = 16 Or dPosX = 15 Or dPosX = 14 Or (dPosX = 13 And dPosY = 0) Then
            gUserData(SocketIndex).PublicRoomId = 55
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "Bfhttp://hotel-uk/client.pub.hallway.0"
            SendData SocketIndex, "AEhallway0 15191"
            RemoveUserFromPublicRoom 31, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 36 (0x24) - Lido Ticket Booth
    If lCurrentRoom = 36 Then
        ' Read user's tickets
        sUsername = LCase(gUserData(SocketIndex).Username)
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\tickets.txt", 1, False, 0)
        sTickets = oTextStream.ReadAll
        Set oTextStream = Nothing

        If dPosX = 26 And dPosY = 5 Then
            ' Check ticket status and checkbox
            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Or _
               (sTickets = "0" And gUserData(SocketIndex).TicketStatus = "." Or frmMain.chkLido.Value = 0) Then
                gUserData(SocketIndex).PosX = 27
                gUserData(SocketIndex).PosY = 6
                gUserData(SocketIndex).DestX = 27
                gUserData(SocketIndex).DestY = 6
            End If
        End If
    End If

    ' Room 37 (0x25) - Rooftop 2
    If lCurrentRoom = 37 Then
        If dPosY > 9 Then
            gUserData(SocketIndex).PublicRoomId = 14
            gUserData(SocketIndex).PosY = 4
            gUserData(SocketIndex).DestHeight = 8
            gUserData(SocketIndex).TargetHeight = 4
            gUserData(SocketIndex).Height = CStr(3)
            gUserData(SocketIndex).TargetPos = "4,4"
            gUserData(SocketIndex).TriggerWalk = True
            SendData SocketIndex, "AErooftop 42431"
            RemoveUserFromPublicRoom 37, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 14 (0xE) - Rooftop
    If lCurrentRoom = 14 Then
        If (dPosX = 9 And dPosY = 4) Or (dPosX = 10 And dPosY = 4) Or (dPosX = 9 And dPosY = 3) Then
            gUserData(SocketIndex).PublicRoomId = 37
            gUserData(SocketIndex).Height = CStr(19)
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AErooftop_2 42431"
            RemoveUserFromPublicRoom 14, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 49 (0x31) - Old School Disco
    If lCurrentRoom = 49 Then
        If dPosX = 16 And dPosY = 18 Then
            gUserData(SocketIndex).PublicRoomId = 50
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEold_skool1 15799"
            RemoveUserFromPublicRoom 49, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
            gUserData(SocketIndex).Height = "6.0"
        End If
    End If

    ' Room 50 (0x32) - Old School Main
    If lCurrentRoom = 50 Then
        If dPosX = 1 And dPosY = 7 Then
            gUserData(SocketIndex).Height = "6.0"
        End If

        ' Transition to room 51
        If dPosX = 22 And dPosY = 8 Then
            gUserData(SocketIndex).PublicRoomId = 51
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEold_skool2 15799"
            RemoveUserFromPublicRoom 50, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 51 (0x33) - Old School Lounge
    If lCurrentRoom = 51 Then
        If dPosX = 10 Or (dPosX = 9 And dPosY = 33) Then
            gUserData(SocketIndex).PublicRoomId = 50
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEold_skool1 15799"
            RemoveUserFromPublicRoom 51, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
            gUserData(SocketIndex).Height = "6.0"
        End If
    End If

    ' Room 52 (0x34) - Beauty Salon Main
    If lCurrentRoom = 52 Then
        If (dPosX = 0 And dPosY = 3) Or (dPosX = 0 And dPosY = 4) Or (dPosX = 0 And dPosY = 5) Then
            gUserData(SocketIndex).PublicRoomId = 53
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEbeauty_salon2 15287"
            RemoveUserFromPublicRoom 52, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 53 (0x35) - Beauty Salon Secondary
    If lCurrentRoom = 53 Then
        If (dPosX = 19 And dPosY = 25) Or (dPosX = 19 And dPosY = 23) Or (dPosX = 19 And dPosY = 24) Then
            gUserData(SocketIndex).PublicRoomId = 52
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEbeauty_salon1 15287"
            RemoveUserFromPublicRoom 53, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
            gUserData(SocketIndex).Height = "6.0"
        End If
    End If

    ' Room 55 (0x37) - Hallway 0
    If lCurrentRoom = 55 Then
        If dPosX = 31 Or dPosX = 5 Or dPosX = 4 Or (dPosX = 3 And dPosY = 2) Then
            gUserData(SocketIndex).PublicRoomId = 56
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "Bfhttp://hotel-uk/client.pub.hallway.0"
            SendData SocketIndex, "AEhallway2 15191"
            RemoveUserFromPublicRoom 55, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 56 (0x38) - Hallway 2
    If lCurrentRoom = 56 Then
        If dPosX = 0 Or dPosX = 8 Or dPosX = 7 Or (dPosX = 6 And dPosY = 5) Then
            gUserData(SocketIndex).PublicRoomId = 55
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "Bfhttp://hotel-uk/client.pub.hallway.0"
            SendData SocketIndex, "AEhallway0 15191"
            RemoveUserFromPublicRoom 56, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Pool/Lido area transitions
    ' Room 34 (0x22) - Park B
    If lCurrentRoom = 34 Then
        If dPosX = 28 And dPosY = 5 Then
            gUserData(SocketIndex).PublicRoomId = 28
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEpark_a 15190"
            RemoveUserFromPublicRoom 34, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Cafe/Restaurant transitions
    ' Room 16 (0x10) - Cafe
    If lCurrentRoom = 16 Then
        If (dPosX = 0 And dPosY = 7) Or (dPosX = 0 And dPosY = 8) Then
            gUserData(SocketIndex).PublicRoomId = 17
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEcafe2 42431"
            RemoveUserFromPublicRoom 16, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 17 (0x11) - Cafe Kitchen
    If lCurrentRoom = 17 Then
        If (dPosX = 19 And dPosY = 7) Or (dPosX = 19 And dPosY = 8) Then
            gUserData(SocketIndex).PublicRoomId = 16
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEcafe 42431"
            RemoveUserFromPublicRoom 17, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Club/Theatre transitions
    ' Room 20 (0x14) - Club Main
    If lCurrentRoom = 20 Then
        If (dPosX = 0 And dPosY = 12) Or (dPosX = 0 And dPosY = 13) Then
            gUserData(SocketIndex).PublicRoomId = 21
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEclub2 42431"
            RemoveUserFromPublicRoom 20, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 21 (0x15) - Club Back
    If lCurrentRoom = 21 Then
        If (dPosX = 21 And dPosY = 12) Or (dPosX = 21 And dPosY = 13) Then
            gUserData(SocketIndex).PublicRoomId = 20
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEclub 42431"
            RemoveUserFromPublicRoom 21, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Theatre transitions
    ' Room 22 (0x16) - Theatre
    If lCurrentRoom = 22 Then
        If dPosX = 0 And dPosY = 18 Then
            gUserData(SocketIndex).PublicRoomId = 23
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEtheatre2 42431"
            RemoveUserFromPublicRoom 22, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 23 (0x17) - Theatre Backstage
    If lCurrentRoom = 23 Then
        If dPosX = 19 And dPosY = 18 Then
            gUserData(SocketIndex).PublicRoomId = 22
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEtheatre 42431"
            RemoveUserFromPublicRoom 23, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Game halls and other areas
    ' Room 24 (0x18) - Library
    If lCurrentRoom = 24 Then
        If (dPosX = 24 And dPosY = 8) Then
            gUserData(SocketIndex).PublicRoomId = 25
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AElibrary2 42431"
            RemoveUserFromPublicRoom 24, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 25 (0x19) - Library Back
    If lCurrentRoom = 25 Then
        If (dPosX = 0 And dPosY = 8) Then
            gUserData(SocketIndex).PublicRoomId = 24
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AElibrary 42431"
            RemoveUserFromPublicRoom 25, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Diving Area transitions
    ' Room 40 (0x28) - Pool Diving
    If lCurrentRoom = 40 Then
        ' Diving platform checks
        If dPosX = 13 And dPosY = 3 Then
            gUserData(SocketIndex).DestX = 13
            gUserData(SocketIndex).DestY = 4
        End If
        If dPosX = 13 And dPosY = 4 Then
            gUserData(SocketIndex).DestX = 13
            gUserData(SocketIndex).DestY = 5
        End If
    End If

    ' Lobby/Reception transitions
    ' Room 10 (0xA) - Lobby
    If lCurrentRoom = 10 Then
        If dPosX = 20 And dPosY = 0 Then
            gUserData(SocketIndex).PublicRoomId = 11
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AElobby2 42431"
            RemoveUserFromPublicRoom 10, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 11 (0xB) - Lobby Back
    If lCurrentRoom = 11 Then
        If dPosX = 0 And dPosY = 15 Then
            gUserData(SocketIndex).PublicRoomId = 10
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AElobby 42431"
            RemoveUserFromPublicRoom 11, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 12 (0xC) - Basement
    If lCurrentRoom = 12 Then
        If dPosX = 25 And dPosY = 0 Then
            gUserData(SocketIndex).PublicRoomId = 13
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEbasement2 42431"
            RemoveUserFromPublicRoom 12, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 13 (0xD) - Basement Back
    If lCurrentRoom = 13 Then
        If dPosX = 0 And dPosY = 12 Then
            gUserData(SocketIndex).PublicRoomId = 12
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEbasement 42431"
            RemoveUserFromPublicRoom 13, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' =====================================================
    ' POOL/LIDO AREA TRANSITIONS (Room 36)
    ' This area has extensive ticket-based transitions
    ' =====================================================

    ' Room 36 (0x24) - Pool/Lido - Ticket Path Transitions
    ' Path from entrance to pool area with ticket gates
    If lCurrentRoom = 36 Then
        ' Read user's tickets for this room
        sUsername = LCase(gUserData(SocketIndex).Username)
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\tickets.txt", 1, False, 0)
        sTickets = oTextStream.ReadAll
        Set oTextStream = Nothing

        ' Position (21, 9) - Path transition
        If dPosX = 21 And dPosY = 9 Then
            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Then
                gUserData(SocketIndex).DestX = 21
                gUserData(SocketIndex).DestY = 8
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 20
                gUserData(SocketIndex).PosY = 9
                gUserData(SocketIndex).DestX = 20
                gUserData(SocketIndex).DestY = 9
            End If
        End If

        ' Position (21, 8) - Path transition
        If dPosX = 21 And dPosY = 8 Then
            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Then
                gUserData(SocketIndex).DestX = 21
                gUserData(SocketIndex).DestY = 7
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 20
                gUserData(SocketIndex).PosY = 8
                gUserData(SocketIndex).DestX = 20
                gUserData(SocketIndex).DestY = 8
            End If
        End If

        ' Position (21, 7) - Path transition
        If dPosX = 21 And dPosY = 7 Then
            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Then
                gUserData(SocketIndex).DestX = 22
                gUserData(SocketIndex).DestY = 7
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 20
                gUserData(SocketIndex).PosY = 7
                gUserData(SocketIndex).DestX = 20
                gUserData(SocketIndex).DestY = 7
            End If
        End If

        ' Position (22, 7) - Path transition
        If dPosX = 22 And dPosY = 7 Then
            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Then
                gUserData(SocketIndex).DestX = 23
                gUserData(SocketIndex).DestY = 7
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 22
                gUserData(SocketIndex).PosY = 6
                gUserData(SocketIndex).DestX = 22
                gUserData(SocketIndex).DestY = 6
            End If
        End If

        ' Position (23, 7) - Path transition
        If dPosX = 23 And dPosY = 7 Then
            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Then
                gUserData(SocketIndex).DestX = 24
                gUserData(SocketIndex).DestY = 7
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 23
                gUserData(SocketIndex).PosY = 6
                gUserData(SocketIndex).DestX = 23
                gUserData(SocketIndex).DestY = 6
            End If
        End If

        ' Position (24, 7) - Path transition
        If dPosX = 24 And dPosY = 7 Then
            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Then
                gUserData(SocketIndex).DestX = 25
                gUserData(SocketIndex).DestY = 7
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 24
                gUserData(SocketIndex).PosY = 6
                gUserData(SocketIndex).DestX = 24
                gUserData(SocketIndex).DestY = 6
            End If
        End If

        ' Position (25, 7) - Path transition
        If dPosX = 25 And dPosY = 7 Then
            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Then
                gUserData(SocketIndex).DestX = 26
                gUserData(SocketIndex).DestY = 7
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 25
                gUserData(SocketIndex).PosY = 6
                gUserData(SocketIndex).DestX = 25
                gUserData(SocketIndex).DestY = 6
            End If
        End If

        ' Position (26, 7) - Path transition
        If dPosX = 26 And dPosY = 7 Then
            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Then
                gUserData(SocketIndex).DestX = 26
                gUserData(SocketIndex).DestY = 6
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 27
                gUserData(SocketIndex).PosY = 7
                gUserData(SocketIndex).DestX = 27
                gUserData(SocketIndex).DestY = 7
            End If
        End If

        ' Position (26, 6) - Path transition
        If dPosX = 26 And dPosY = 6 Then
            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Then
                gUserData(SocketIndex).DestX = 26
                gUserData(SocketIndex).DestY = 5
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 27
                gUserData(SocketIndex).PosY = 6
                gUserData(SocketIndex).DestX = 27
                gUserData(SocketIndex).DestY = 6
            End If
        End If

        ' Position (26, 5) - Ticket gate check with frmMain.txtMaxTickets
        If dPosX = 26 And dPosY = 5 Then
            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1 And frmMain.txtMaxTickets.Text = "0") Then
                gUserData(SocketIndex).DestX = 26
                gUserData(SocketIndex).DestY = 4
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 27
                gUserData(SocketIndex).PosY = 6
                gUserData(SocketIndex).DestX = 27
                gUserData(SocketIndex).DestY = 6
            End If
        End If
    End If

    ' Room 36 - Pool Lido Ticket Booth Exit at (26,4)
    ' When user has valid ticket and reaches (26,4), process ticket and transition to pool_a
    If lCurrentRoom = 36 Then
        If dPosX = 26 And dPosY = 4 Then
            sUsername = LCase(gUserData(SocketIndex).Username)
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\tickets.txt", 1, False, 0)
            sTickets = oTextStream.ReadAll
            Set oTextStream = Nothing
            lTickets = CLng(sTickets) - 1

            If frmMain.chkLido.Value = 1 And frmMain.txtMaxTickets.Text = "0" And _
               gUserData(SocketIndex).TicketStatus <> "." And sTickets <> "0" And _
               gUserData(SocketIndex).TicketUsed = 0 Then

                ' Write updated ticket count
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\tickets.txt", 2, False, 0)
                oTextStream.Write CStr(lTickets)
                Set oTextStream = Nothing

                ' Notify user of ticket usage
                SendData SocketIndex, "A|" & CStr(lTickets) & Chr$(1)
                frmMain.txtMaxTickets.Text = "1"

                ' Set destination coordinates
                gUserData(SocketIndex).DestX = 26
                gUserData(SocketIndex).DestY = 3
                frmMain.txtMaxTickets.Text = "0"

                ' Broadcast door close to all users in same room
                Dim i As Variant
                For i = 1 To frmMain.SockI
                    If frmMain.Sock(CInt(i)).State = 7 And gUserData(CInt(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
                        SendData CInt(i), "AGdoor close" & Chr$(1)
                    End If
                Next i

                gUserData(SocketIndex).TicketUsed = True
                gUserData(SocketIndex).PoolTrigger = CStr(False)
                gUserData(SocketIndex).PoolAnimation = 0
                SendData SocketIndex, "A}"
                frmMain.tmrLido.Enabled = True
            Else
                ' Move user back if ticket conditions not met
                gUserData(SocketIndex).PosX = 26
                gUserData(SocketIndex).PosY = 5
                gUserData(SocketIndex).DestX = 26
                gUserData(SocketIndex).DestY = 5
                gUserData(SocketIndex).TargetPos = "0,0"
            End If
        End If
    End If

    ' Room 36 - Pool Splash/Exit at (20, 19)
    If lCurrentRoom = 36 Then
        If dPosX = 20 And dPosY = 19 Then
            gUserData(SocketIndex).TargetPos = "6,6"
            RemoveUserFromPublicRoom 36, "AGSplash1 exit" & Chr$(1)
            frmMain.Sock(SocketIndex).Enabled = False
            gUserData(SocketIndex).Movement = "walk"
            gUserData(SocketIndex).Height = CStr(8)
            gUserData(SocketIndex).Swim = 0
            gUserData(SocketIndex).DestX = 19
            gUserData(SocketIndex).DestY = 19
        End If
    End If

    ' =====================================================
    ' ROOM 25 (0x19) - Pool A - Pool Path Transitions
    ' Path coordinates for moving around pool area
    ' =====================================================
    If lCurrentRoom = 25 Then
        ' Vertical pathway down into pool
        If dPosX = 26 And dPosY = 10 Then
            sUsername = LCase(gUserData(SocketIndex).Username)
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\tickets.txt", 1, False, 0)
            sTickets = oTextStream.ReadAll
            Set oTextStream = Nothing

            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Then
                gUserData(SocketIndex).DestX = 26
                gUserData(SocketIndex).DestY = 9
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 25
                gUserData(SocketIndex).PosY = 9
                gUserData(SocketIndex).DestX = 25
                gUserData(SocketIndex).DestY = 9
            End If
        End If

        If dPosX = 25 And dPosY = 9 Then
            sUsername = LCase(gUserData(SocketIndex).Username)
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\tickets.txt", 1, False, 0)
            sTickets = oTextStream.ReadAll
            Set oTextStream = Nothing

            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Then
                gUserData(SocketIndex).DestX = 24
                gUserData(SocketIndex).DestY = 8
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 24
                gUserData(SocketIndex).PosY = 8
                gUserData(SocketIndex).DestX = 24
                gUserData(SocketIndex).DestY = 8
            End If
        End If

        If dPosX = 24 And dPosY = 8 Then
            sUsername = LCase(gUserData(SocketIndex).Username)
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\tickets.txt", 1, False, 0)
            sTickets = oTextStream.ReadAll
            Set oTextStream = Nothing

            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Then
                gUserData(SocketIndex).DestX = 23
                gUserData(SocketIndex).DestY = 7
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 23
                gUserData(SocketIndex).PosY = 7
                gUserData(SocketIndex).DestX = 23
                gUserData(SocketIndex).DestY = 7
            End If
        End If

        If dPosX = 23 And dPosY = 7 Then
            sUsername = LCase(gUserData(SocketIndex).Username)
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\tickets.txt", 1, False, 0)
            sTickets = oTextStream.ReadAll
            Set oTextStream = Nothing

            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Then
                gUserData(SocketIndex).DestX = 22
                gUserData(SocketIndex).DestY = 6
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 22
                gUserData(SocketIndex).PosY = 6
                gUserData(SocketIndex).DestX = 22
                gUserData(SocketIndex).DestY = 6
            End If
        End If

        If dPosX = 22 And dPosY = 6 Then
            sUsername = LCase(gUserData(SocketIndex).Username)
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\tickets.txt", 1, False, 0)
            sTickets = oTextStream.ReadAll
            Set oTextStream = Nothing

            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Then
                gUserData(SocketIndex).DestX = 21
                gUserData(SocketIndex).DestY = 5
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 21
                gUserData(SocketIndex).PosY = 5
                gUserData(SocketIndex).DestX = 21
                gUserData(SocketIndex).DestY = 5
            End If
        End If

        If dPosX = 21 And dPosY = 5 Then
            sUsername = LCase(gUserData(SocketIndex).Username)
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\tickets.txt", 1, False, 0)
            sTickets = oTextStream.ReadAll
            Set oTextStream = Nothing

            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Then
                gUserData(SocketIndex).DestX = 21
                gUserData(SocketIndex).DestY = 4
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 20
                gUserData(SocketIndex).PosY = 4
                gUserData(SocketIndex).DestX = 20
                gUserData(SocketIndex).DestY = 4
            End If
        End If

        If dPosX = 21 And dPosY = 4 Then
            sUsername = LCase(gUserData(SocketIndex).Username)
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\tickets.txt", 1, False, 0)
            sTickets = oTextStream.ReadAll
            Set oTextStream = Nothing

            If (sTickets = "0" And gUserData(SocketIndex).TicketStatus <> "." And frmMain.chkLido.Value = 1) Then
                gUserData(SocketIndex).DestX = 21
                gUserData(SocketIndex).DestY = 3
            ElseIf (sTickets = "0" And gUserData(SocketIndex).TicketStatus = ".") Or frmMain.chkLido.Value = 0 Then
                gUserData(SocketIndex).PosX = 20
                gUserData(SocketIndex).PosY = 3
                gUserData(SocketIndex).DestX = 20
                gUserData(SocketIndex).DestY = 3
            End If
        End If

        ' Pool entry transition to room 36 (lido)
        If (dPosX = 17 Or dPosX = 18) And dPosY = 36 And gUserData(SocketIndex).Movement = "Swim" And gUserData(SocketIndex).Swim = True Then
            gUserData(SocketIndex).PublicRoomId = 25
            SendData SocketIndex, "AEpool_a 15188"
            RemoveUserFromPublicRoom 36, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).Swim = True
            gUserData(SocketIndex).Movement = "Swim"
            gUserData(SocketIndex).PosX = 32
            gUserData(SocketIndex).PosY = 17
            gUserData(SocketIndex).DestX = 32
            gUserData(SocketIndex).DestY = 17
            gUserData(SocketIndex).Height = CStr(1)
            gUserData(SocketIndex).TargetPos = "4,4"
            gUserData(SocketIndex).TriggerWalk = True
        End If
    End If

    ' =====================================================
    ' ROOM 28 (0x1C) - Park A - Extended Pathway Transitions
    ' Sequential path movement coordinates for park paths
    ' =====================================================
    If lCurrentRoom = 28 Then
        ' Row 7-8-9-10 Paths (horizontal and vertical movement)
        If dPosX = 18 And dPosY = 7 Then
            gUserData(SocketIndex).DestX = 18
            gUserData(SocketIndex).DestY = 8
        End If
        If dPosX = 18 And dPosY = 8 Then
            gUserData(SocketIndex).DestX = 18
            gUserData(SocketIndex).DestY = 9
        End If
        If dPosX = 18 And dPosY = 9 Then
            gUserData(SocketIndex).DestX = 18
            gUserData(SocketIndex).DestY = 10
        End If
        If dPosX = 18 And dPosY = 10 Then
            gUserData(SocketIndex).DestX = 19
            gUserData(SocketIndex).DestY = 10
        End If
        If dPosX = 19 And dPosY = 10 Then
            gUserData(SocketIndex).DestX = 20
            gUserData(SocketIndex).DestY = 10
        End If
        If dPosX = 20 And dPosY = 10 Then
            gUserData(SocketIndex).DestX = 20
            gUserData(SocketIndex).DestY = 9
        End If
        If dPosX = 20 And dPosY = 9 Then
            gUserData(SocketIndex).DestX = 20
            gUserData(SocketIndex).DestY = 8
        End If
        If dPosX = 20 And dPosY = 8 Then
            gUserData(SocketIndex).DestX = 20
            gUserData(SocketIndex).DestY = 7
        End If
        If dPosX = 20 And dPosY = 7 Then
            gUserData(SocketIndex).DestX = 21
            gUserData(SocketIndex).DestY = 7
        End If
        If dPosX = 21 And dPosY = 7 Then
            gUserData(SocketIndex).DestX = 22
            gUserData(SocketIndex).DestY = 7
        End If
        If dPosX = 22 And dPosY = 7 Then
            gUserData(SocketIndex).DestX = 22
            gUserData(SocketIndex).DestY = 8
        End If
        If dPosX = 22 And dPosY = 8 Then
            gUserData(SocketIndex).DestX = 22
            gUserData(SocketIndex).DestY = 9
        End If
        If dPosX = 22 And dPosY = 9 Then
            gUserData(SocketIndex).DestX = 22
            gUserData(SocketIndex).DestY = 10
        End If
        If dPosX = 22 And dPosY = 10 Then
            gUserData(SocketIndex).DestX = 23
            gUserData(SocketIndex).DestY = 10
        End If
        If dPosX = 23 And dPosY = 10 Then
            gUserData(SocketIndex).DestX = 24
            gUserData(SocketIndex).DestY = 10
        End If
        If dPosX = 24 And dPosY = 10 Then
            gUserData(SocketIndex).DestX = 24
            gUserData(SocketIndex).DestY = 9
        End If
        If dPosX = 24 And dPosY = 9 Then
            gUserData(SocketIndex).DestX = 24
            gUserData(SocketIndex).DestY = 8
        End If
        If dPosX = 24 And dPosY = 8 Then
            gUserData(SocketIndex).DestX = 24
            gUserData(SocketIndex).DestY = 7
        End If
        If dPosX = 24 And dPosY = 7 Then
            gUserData(SocketIndex).DestX = 25
            gUserData(SocketIndex).DestY = 7
        End If
        If dPosX = 25 And dPosY = 7 Then
            gUserData(SocketIndex).DestX = 26
            gUserData(SocketIndex).DestY = 7
        End If
        If dPosX = 26 And dPosY = 7 Then
            gUserData(SocketIndex).DestX = 26
            gUserData(SocketIndex).DestY = 8
        End If
        If dPosX = 26 And dPosY = 8 Then
            gUserData(SocketIndex).DestX = 26
            gUserData(SocketIndex).DestY = 9
        End If
        If dPosX = 26 And dPosY = 9 Then
            gUserData(SocketIndex).DestX = 26
            gUserData(SocketIndex).DestY = 10
        End If
        If dPosX = 26 And dPosY = 10 Then
            gUserData(SocketIndex).DestX = 27
            gUserData(SocketIndex).DestY = 10
        End If
        If dPosX = 27 And dPosY = 10 Then
            gUserData(SocketIndex).DestX = 28
            gUserData(SocketIndex).DestY = 10
        End If
        If dPosX = 28 And dPosY = 10 Then
            gUserData(SocketIndex).DestX = 28
            gUserData(SocketIndex).DestY = 9
        End If
        If dPosX = 28 And dPosY = 9 Then
            gUserData(SocketIndex).DestX = 28
            gUserData(SocketIndex).DestY = 8
        End If
        If dPosX = 28 And dPosY = 8 Then
            gUserData(SocketIndex).DestX = 28
            gUserData(SocketIndex).DestY = 7
        End If
        If dPosX = 28 And dPosY = 7 Then
            gUserData(SocketIndex).DestX = 28
            gUserData(SocketIndex).DestY = 5
        End If

        ' Park gate/entrance transitions at (28, 5)
        If dPosX = 28 And dPosY = 5 Then
            If frmMain.chkParkGate.Value = 1 Then
                gUserData(SocketIndex).DestX = 28
                gUserData(SocketIndex).DestY = 5
            ElseIf frmMain.chkParkGate.Value = 0 Then
                gUserData(SocketIndex).DestX = 29
                gUserData(SocketIndex).DestY = 5
            End If
        End If
    End If

    ' =====================================================
    ' SPECIAL TRANSITIONS - Diving and Swimming Areas
    ' =====================================================

    ' Room 36 - Diving board area to pool_a
    If lCurrentRoom = 36 Then
        If (dPosX = 17 Or dPosX = 18) And dPosY = 24 And gUserData(SocketIndex).Movement = "Swim" And gUserData(SocketIndex).Swim = True Then
            gUserData(SocketIndex).PublicRoomId = 25
            SendData SocketIndex, "AEpool_a 15188"
            RemoveUserFromPublicRoom 36, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).Swim = True
            gUserData(SocketIndex).Movement = "Swim"
            gUserData(SocketIndex).PosX = 32
            gUserData(SocketIndex).PosY = 17
            gUserData(SocketIndex).DestX = 32
            gUserData(SocketIndex).DestY = 17
            gUserData(SocketIndex).Height = CStr(1)
            gUserData(SocketIndex).TargetPos = "4,4"
            gUserData(SocketIndex).TriggerWalk = True
        End If

        If (dPosX = 23 Or dPosX = 24) And dPosY = 36 And gUserData(SocketIndex).Movement = "Swim" And gUserData(SocketIndex).Swim = True Then
            gUserData(SocketIndex).PublicRoomId = 25
            SendData SocketIndex, "AEpool_a 15188"
            RemoveUserFromPublicRoom 36, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).Swim = True
            gUserData(SocketIndex).Movement = "Swim"
            gUserData(SocketIndex).PosX = 32
            gUserData(SocketIndex).PosY = 17
            gUserData(SocketIndex).DestX = 32
            gUserData(SocketIndex).DestY = 17
            gUserData(SocketIndex).Height = CStr(1)
            gUserData(SocketIndex).TargetPos = "4,4"
            gUserData(SocketIndex).TriggerWalk = True
        End If
    End If

    ' =====================================================
    ' ROOM 25 (Pool A) to ROOM 36 (Lido) Swimming Transitions
    ' Diagonal swimming path between pools
    ' =====================================================
    If lCurrentRoom = 25 Then
        ' Swimming path transition from Pool A to Lido (diagonal coordinates)
        ' Coordinates: (32,16), (33,17), (34,18), (35,19), (36,20), (37,21), (38,22)
        If ((dPosX = 32 And dPosY = 16) Or _
            (dPosX = 33 And dPosY = 17) Or _
            (dPosX = 34 And dPosY = 18) Or _
            (dPosX = 35 And dPosY = 19) Or _
            (dPosX = 36 And dPosY = 20) Or _
            (dPosX = 37 And dPosY = 21) Or _
            (dPosX = 38 And dPosY = 22)) And _
            gUserData(SocketIndex).Movement = "Swim" And gUserData(SocketIndex).Swim = True Then

            ' Transition to room 36 (Lido/Pool B)
            gUserData(SocketIndex).PublicRoomId = 36
            SendData SocketIndex, "AEpool_b 15188"
            RemoveUserFromPublicRoom 25, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).Swim = True
            gUserData(SocketIndex).Movement = "Swim"
            gUserData(SocketIndex).PosX = 17
            gUserData(SocketIndex).PosY = 29
            gUserData(SocketIndex).DestX = 17
            gUserData(SocketIndex).DestY = 29
            gUserData(SocketIndex).Height = CStr(0)
            gUserData(SocketIndex).TargetPos = "2,2"
            gUserData(SocketIndex).TriggerWalk = True
            Exit Sub
        End If
    End If

    ' =====================================================
    ' ROOM 36 (Lido) to ROOM 25 (Pool A) Swimming Transitions
    ' Diagonal swimming path back to Pool A
    ' =====================================================
    If lCurrentRoom = 36 Then
        ' Swimming path transition from Lido to Pool A (diagonal coordinates - main path)
        ' Coordinates: (13,26), (14,27), (15,28), (16,29), (17,30), (18,31), (19,32), (20,33), (21,34), (22,35), (23,36), (24,37)
        If ((dPosX = 13 And dPosY = 26) Or _
            (dPosX = 14 And dPosY = 27) Or _
            (dPosX = 15 And dPosY = 28) Or _
            (dPosX = 16 And dPosY = 29) Or _
            (dPosX = 17 And dPosY = 30) Or _
            (dPosX = 18 And dPosY = 31) Or _
            (dPosX = 19 And dPosY = 32) Or _
            (dPosX = 20 And dPosY = 33) Or _
            (dPosX = 21 And dPosY = 34) Or _
            (dPosX = 22 And dPosY = 35) Or _
            (dPosX = 23 And dPosY = 36) Or _
            (dPosX = 24 And dPosY = 37)) And _
            gUserData(SocketIndex).Movement = "Swim" And gUserData(SocketIndex).Swim = True Then

            ' Transition to room 25 (Pool A)
            gUserData(SocketIndex).PublicRoomId = 25
            SendData SocketIndex, "AEpool_a 15188"
            RemoveUserFromPublicRoom 36, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).Swim = True
            gUserData(SocketIndex).Movement = "Swim"
            gUserData(SocketIndex).PosX = 32
            gUserData(SocketIndex).PosY = 17
            gUserData(SocketIndex).DestX = 32
            gUserData(SocketIndex).DestY = 17
            gUserData(SocketIndex).Height = CStr(1)
            gUserData(SocketIndex).TargetPos = "4,4"
            gUserData(SocketIndex).TriggerWalk = True
            Exit Sub
        End If

        ' Swimming path transition from Lido to Pool A (diving board area path)
        ' Coordinates: (7,20), (8,21), (9,22), (10,21), (11,24), (12,25)
        If ((dPosX = 7 And dPosY = 20) Or _
            (dPosX = 8 And dPosY = 21) Or _
            (dPosX = 9 And dPosY = 22) Or _
            (dPosX = 10 And dPosY = 21) Or _
            (dPosX = 11 And dPosY = 24) Or _
            (dPosX = 12 And dPosY = 25)) Then

            ' Transition to room 25 (Pool A)
            gUserData(SocketIndex).PublicRoomId = 25
            gUserData(SocketIndex).PosX = 22
            gUserData(SocketIndex).PosY = 7
            gUserData(SocketIndex).DestX = 22
            gUserData(SocketIndex).DestY = 7
            gUserData(SocketIndex).Height = CStr(7)
            gUserData(SocketIndex).TargetPos = "4,4"
            gUserData(SocketIndex).TriggerWalk = True
            SendData SocketIndex, "AEpool_a 15188"
            RemoveUserFromPublicRoom 36, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            Exit Sub
        End If
    End If

    ' =====================================================
    ' ROOM 25 (Pool A) - Swimming Pool Entry/Exit Points
    ' Splash zones and pool ladder transitions
    ' =====================================================
    If lCurrentRoom = 25 Then
        ' Splash entry point at (20, 28) - Enter pool from ladder
        If dPosX = 20 And dPosY = 28 And gUserData(SocketIndex).TicketStatus <> "." Then
            gUserData(SocketIndex).DestX = 22
            gUserData(SocketIndex).TargetPos = "2,2"
            RemoveUserFromPublicRoom 25, "AGSplash0 enter" & Chr$(1)
            gUserData(SocketIndex).Swim = True
            gUserData(SocketIndex).Movement = "Swim"
            gUserData(SocketIndex).PoolTrigger = CStr(False)
            gUserData(SocketIndex).Height = CStr(3)
            Exit Sub
        End If

        ' Splash exit point at (21, 28) - Exit pool from ladder
        If dPosX = 21 And dPosY = 28 Then
            gUserData(SocketIndex).DestX = 19
            gUserData(SocketIndex).DestY = (gUserData(SocketIndex).DestY = 28) And 19
            frmMain.Sock(SocketIndex).Enabled = False
            RemoveUserFromPublicRoom 25, "AGSplash0 exit" & Chr$(1)
            gUserData(SocketIndex).Height = CStr(8)
            gUserData(SocketIndex).TargetPos = "6,6"
            gUserData(SocketIndex).Swim = 0
            gUserData(SocketIndex).Movement = "walk"
            Exit Sub
        End If
    End If

    ' =====================================================
    ' ROOM 36 (Lido) - Pool Splash Entry/Exit Points
    ' Diving board and ladder transitions
    ' =====================================================
    If lCurrentRoom = 36 Then
        ' Splash entry at (17, 21) - Enter pool via diving board
        If dPosX = 17 And dPosY = 21 And gUserData(SocketIndex).TicketStatus <> "." Then
            gUserData(SocketIndex).TargetPos = "4,4"
            RemoveUserFromPublicRoom 36, "AGSplash0 enter" & Chr$(1)
            gUserData(SocketIndex).Height = CStr(0)
            gUserData(SocketIndex).Movement = "Swim"
            gUserData(SocketIndex).Swim = True
            gUserData(SocketIndex).PoolTrigger = CStr(False)
            gUserData(SocketIndex).DestX = 17
            gUserData(SocketIndex).DestY = 23
            Exit Sub
        End If

        ' Splash exit at (17, 22) - Exit pool
        If dPosX = 17 And dPosY = 22 Then
            gUserData(SocketIndex).TargetPos = "0,0"
            frmMain.Sock(SocketIndex).Enabled = False
            RemoveUserFromPublicRoom 36, "AGSplash0 exit" & Chr$(1)
            gUserData(SocketIndex).Swim = 0
            gUserData(SocketIndex).Movement = "walk"
            gUserData(SocketIndex).Height = CStr(8)
            gUserData(SocketIndex).DestX = 17
            gUserData(SocketIndex).DestY = 20
            Exit Sub
        End If

        ' Alternative splash entry at (31, 10) - Side pool entrance
        If dPosX = 31 And dPosY = 10 And gUserData(SocketIndex).TicketStatus <> "." Then
            gUserData(SocketIndex).TargetPos = "4,4"
            RemoveUserFromPublicRoom 36, "AGSplash2 enter" & Chr$(1)
            gUserData(SocketIndex).Height = CStr(0)
            gUserData(SocketIndex).DestX = 31
            gUserData(SocketIndex).DestY = 12
            gUserData(SocketIndex).Movement = "Swim"
            gUserData(SocketIndex).Swim = True
            gUserData(SocketIndex).PoolTrigger = CStr(False)
            Exit Sub
        End If

        ' Alternative splash exit at (31, 11)
        If dPosX = 31 And dPosY = 11 Then
            gUserData(SocketIndex).TargetPos = "0,0"
            frmMain.Sock(SocketIndex).Enabled = False
            RemoveUserFromPublicRoom 36, "AGSplash2 exit" & Chr$(1)
            gUserData(SocketIndex).Swim = 0
            gUserData(SocketIndex).Movement = "walk"
            gUserData(SocketIndex).Height = CStr(8)
            gUserData(SocketIndex).DestX = 31
            gUserData(SocketIndex).DestY = 9
            Exit Sub
        End If

        ' Pool splash exit at (20, 19) - Main pool exit
        If dPosX = 20 And dPosY = 19 Then
            gUserData(SocketIndex).TargetPos = "6,6"
            RemoveUserFromPublicRoom 36, "AGSplash1 exit" & Chr$(1)
            frmMain.Sock(SocketIndex).Enabled = False
            gUserData(SocketIndex).Movement = "walk"
            gUserData(SocketIndex).Height = CStr(8)
            gUserData(SocketIndex).Swim = 0
            gUserData(SocketIndex).DestX = 19
            gUserData(SocketIndex).DestY = 19
            Exit Sub
        End If

        ' Ticket gate entry at (26, 4) - Pool access control
        If dPosX = 26 And dPosY = 4 Then
            Dim oTextStream As Object
            Dim sTicketFile As String
            Dim vTickets As Variant

            ' Read user's ticket count
            sTicketFile = gAppPath & "habbos\" & LCase(gUserData(SocketIndex).Username) & "\tickets.txt"
            Set oTextStream = gFSO.OpenTextFile(sTicketFile, 1, False, 0)
            vTickets = oTextStream.ReadAll
            Set oTextStream = Nothing

            ' Check if user has tickets and ticket system is enabled
            If frmMain.chkLido.Value = 1 And frmMain.txtLidoPrice.Text = "0" And _
               gUserData(SocketIndex).TicketStatus <> "." And frmMain.txtLidoDoorStatus.Text = "1" And _
               gUserData(SocketIndex).PoolDoorOpen = 0 And vTickets = 0 And vTickets = False Then
                ' User has ticket - consume one and grant access
                ' Write reduced ticket count
                Set oTextStream = gFSO.OpenTextFile(sTicketFile, 2, False, 0)
                oTextStream.Write CStr(vTickets - 1)
                Set oTextStream = Nothing

                ' Notify user of remaining tickets
                SendData SocketIndex, "A|" & CStr(vTickets - 1) & Chr$(1)

                ' Update door status
                frmMain.txtLidoDoorStatus.Text = "1"
                gUserData(SocketIndex).DestX = 26
                gUserData(SocketIndex).DestY = 3

                ' Reset pool door control
                frmMain.txtLidoDoorStatus.Text = "0"

                ' Broadcast door close to all users in room
                For i = 1 To frmMain.SockI
                    If frmMain.Sock(CInt(i)).State = 7 And gUserData(CInt(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
                        SendData CInt(i), "AGdoor close" & Chr$(1)
                    End If
                Next i

                ' Set user state
                gUserData(SocketIndex).PoolDoorOpen = True
                gUserData(SocketIndex).PoolTrigger = CStr(False)
                gUserData(SocketIndex).PoolZone = 0
                SendData SocketIndex, "A}"
                frmMain.tmrLidoDoor.Enabled = True
                Exit Sub
            Else
                ' No ticket or blocked - reset position
                gUserData(SocketIndex).PosX = 26
                gUserData(SocketIndex).PosY = 5
                gUserData(SocketIndex).DestX = 26
                gUserData(SocketIndex).DestY = 5
                gUserData(SocketIndex).TargetPos = "0,0"
                Exit Sub
            End If
        End If
    End If

    ' =====================================================
    ' ROOM 27 (Pool Deck) - Pool Entry/Exit with Height Check
    ' Splash zones requiring specific height level
    ' =====================================================
    If lCurrentRoom = 27 Then
        ' Pool entry at (11, 11) with height check
        If dPosX = 11 And dPosY = 11 And gUserData(SocketIndex).TicketStatus <> "." And gUserData(SocketIndex).Height = "7.0" Then
            gUserData(SocketIndex).PosX = 11
            gUserData(SocketIndex).DestY = (gUserData(SocketIndex).DestY = 11) And 11
            gUserData(SocketIndex).DestX = 13
            gUserData(SocketIndex).DestY = 12
            gUserData(SocketIndex).TargetPos = "2,2"
            RemoveUserFromPublicRoom 27, "AGSplash0 enter" & Chr$(1)
            gUserData(SocketIndex).Swim = True
            gUserData(SocketIndex).Movement = "Swim"
            gUserData(SocketIndex).PoolTrigger = CStr(False)
            gUserData(SocketIndex).Height = "4.0"
            Exit Sub
        End If

        ' Pool exit at (12, 12) with height check
        If dPosX = 12 And dPosY = 12 And gUserData(SocketIndex).Height = "4.0" Then
            frmMain.Sock(SocketIndex).Enabled = False
            RemoveUserFromPublicRoom 27, "AGSplash0 exit" & Chr$(1)
            gUserData(SocketIndex).Height = "7.0"
            gUserData(SocketIndex).Swim = 0
            gUserData(SocketIndex).Movement = "walk"
            gUserData(SocketIndex).DestX = 10
            gUserData(SocketIndex).DestY = 11
            Exit Sub
        End If
    End If

    ' =====================================================
    ' ROOM 25 (Pool A) - Changing Room Curtain Transitions
    ' Controls curtain open/close for changing booths
    ' =====================================================
    If lCurrentRoom = 25 Then
        ' Changing room 1 - Entry at (17, 11)
        If dPosX = 17 And dPosY = 11 Then
            If frmMain.txtCurtain1.Text = "0" Then
                frmMain.txtCurtain1.Text = "1"
                ' Broadcast curtain close to all users in room
                For i = 1 To frmMain.SockI
                    If frmMain.Sock(CInt(i)).State = 7 And gUserData(CInt(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
                        SendData CInt(i), Chr$(1) & "AGcurtains1 close"
                    End If
                Next i
                frmMain.tmrCurtain1.Enabled = True
                SendData SocketIndex, "A" ' Freeze user for changing
            End If
        End If

        ' Changing room 1 - Exit after 3 seconds
        If frmMain.txtCurtain1.Text = "3" Then
            ' Broadcast curtain open to all users in room
            For i = 1 To frmMain.SockI
                If frmMain.Sock(CInt(i)).State = 7 And gUserData(CInt(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
                    SendData CInt(i), Chr$(1) & "AGcurtains1 open"
                End If
            Next i
            frmMain.txtCurtain1.Text = "0"
            SendData SocketIndex, "Aa" ' Unfreeze user
            gUserData(SocketIndex).DestX = 19
            gUserData(SocketIndex).DestY = 11
        End If

        ' Changing room 2 - Entry at (17, 9)
        If dPosX = 17 And dPosY = 9 Then
            If frmMain.txtCurtain2.Text = "0" Then
                frmMain.txtCurtain2.Text = "1"
                ' Broadcast curtain close to all users in room
                For i = 1 To frmMain.SockI
                    If frmMain.Sock(CInt(i)).State = 7 And gUserData(CInt(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
                        SendData CInt(i), Chr$(1) & "AGcurtains2 close"
                    End If
                Next i
                frmMain.tmrCurtain2.Enabled = True
                SendData SocketIndex, "A" ' Freeze user for changing
            End If
        End If

        ' Changing room 2 - Exit after 3 seconds
        If frmMain.txtCurtain2.Text = "3" Then
            ' Broadcast curtain open to all users in room
            For i = 1 To frmMain.SockI
                If frmMain.Sock(CInt(i)).State = 7 And gUserData(CInt(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
                    SendData CInt(i), Chr$(1) & "AGcurtains2 open"
                End If
            Next i
            frmMain.txtCurtain2.Text = "0"
            SendData SocketIndex, "Aa" ' Unfreeze user
            gUserData(SocketIndex).DestX = 19
            gUserData(SocketIndex).DestY = 9
        End If
    End If

End Sub

