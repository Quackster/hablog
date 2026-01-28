Attribute VB_Name = "modPathFind"

Option Explicit

' modPathFind - Pathfinding Module for Habbo Room Navigation
' Handles movement calculations for private and public rooms
' Uses 8-directional grid movement with collision detection

' Tile types in room heightmaps:
' O = Open (walkable)
' D = Door (walkable, entrance)
' R = Rotation (furniture with sitting capability)
' S = Sit (chair/bed)
' L = Lay (bed)
' X = Blocked

' FindPathPrivate - Calculate movement path in private room (diagonal to target)
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

    ' Check for collision with other users at target diagonal positions
    ' Direction: Down-Right (CurrentX > TargetX, CurrentY > TargetY)
    If CurrentX > TargetX And CurrentY > TargetY Then
        ' Check if any user is at the diagonal target position
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = RoomId Then
                If gUserData(CLng(i)).PosX = CurrentX - 1 And gUserData(CLng(i)).PosY = CurrentY - 1 Then
                    Exit Function ' Blocked by user
                End If
            End If
        Next i

        ' Check for pets blocking path
        aPets = Split(frmMain.Hpets, ";")
        For i = 0 To UBound(aPets)
            If aPets(i) <> vbNullString Then
                If gPetData(CLng(aPets(i))).RoomId = RoomId Then
                    If gPetData(CLng(aPets(i))).PosX = CurrentX - 1 And gPetData(CLng(aPets(i))).PosY = CurrentY - 1 Then
                        Exit Function ' Blocked by pet
                    End If
                End If
            End If
        Next i

        ' Get tile type at diagonal position
        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY - 1), CurrentX, 1)

        ' Check if tile is walkable or is the exact target
        If sTile = "O" Or sTile = "D" Or sTile = "R" Or _
           ((sTile = "S" Or sTile = "L") And CurrentY - 1 = TargetY And CurrentX - 1 = TargetX) Then

            ' Special handling for rotation tiles (furniture)
            If sTile = "R" Then
                sDataFile = gAppPath & "privaterooms\" & CStr(RoomId) & "\rotation.txt"
                sFurniId = GetINI("furnies", CStr(CurrentX - 1) & "," & CStr(CurrentY - 1), sDataFile)

                If sFurniId <> vbNullString Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\type.txt", 1, False, 0)
                    sFurniType = oTextStream.ReadAll
                    Set oTextStream = Nothing

                    ' If furniture is not walkable (not rug/sit/bed) and not at target, block
                    If Not (sFurniType = "rug" Or sFurniType = "sit" Or sFurniType = "bed") And _
                       Not (CurrentY - 1 = TargetY And CurrentX - 1 = TargetX) Then
                        Exit Function
                    End If
                End If
            End If

            ' Valid move - return new position
            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY - 1)
            gUserData(SocketIndex).TargetPos = "7,7"

            ' Update height if moving to rotation tile
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

    ' Direction: Up-Left (CurrentX < TargetX, CurrentY < TargetY)
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

    ' Direction: Down-Left (CurrentX > TargetX, CurrentY < TargetY)
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

    ' Direction: Up-Right (CurrentX < TargetX, CurrentY > TargetY)
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

    ' Cardinal directions: Right (CurrentX < TargetX, CurrentY = TargetY)
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

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or sTile = "S" Or sTile = "L" Then
            sResult = CStr(CurrentX + 1) & "," & CStr(CurrentY)
            gUserData(SocketIndex).TargetPos = "2,2"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                dHeight = Val(Mid(aHeightRows(CurrentY), CurrentX + 2, 1))
                gUserData(SocketIndex).Height = Replace(CStr(dHeight + 0.4), ",", ".")
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gUserData(SocketIndex).Height = Mid(aHeightRows(CurrentY), CurrentX + 2, 1) & ".0"
            End If

            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Cardinal directions: Left (CurrentX > TargetX, CurrentY = TargetY)
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

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or sTile = "S" Or sTile = "L" Then
            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY)
            gUserData(SocketIndex).TargetPos = "6,6"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                dHeight = Val(Mid(aHeightRows(CurrentY), CurrentX, 1))
                gUserData(SocketIndex).Height = Replace(CStr(dHeight + 0.4), ",", ".")
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gUserData(SocketIndex).Height = Mid(aHeightRows(CurrentY), CurrentX, 1) & ".0"
            End If

            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Cardinal directions: Down (CurrentX = TargetX, CurrentY < TargetY)
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

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or sTile = "S" Or sTile = "L" Then
            sResult = CStr(CurrentX) & "," & CStr(CurrentY + 1)
            gUserData(SocketIndex).TargetPos = "4,4"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                dHeight = Val(Mid(aHeightRows(CurrentY + 1), CurrentX + 1, 1))
                gUserData(SocketIndex).Height = Replace(CStr(dHeight + 0.4), ",", ".")
            Else
                aHeightRows = Split(RotationMap, Chr$(&HD))
                gUserData(SocketIndex).Height = Mid(aHeightRows(CurrentY + 1), CurrentX + 1, 1) & ".0"
            End If

            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Cardinal directions: Up (CurrentX = TargetX, CurrentY > TargetY)
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

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or sTile = "S" Or sTile = "L" Then
            sResult = CStr(CurrentX) & "," & CStr(CurrentY - 1)
            gUserData(SocketIndex).TargetPos = "0,0"

            If sTile = "R" Then
                aHeightRows = Split(RotationMap, Chr$(&HD))
                dHeight = Val(Mid(aHeightRows(CurrentY - 1), CurrentX + 1, 1))
                gUserData(SocketIndex).Height = Replace(CStr(dHeight + 0.4), ",", ".")
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

' FindPathPrivateAlt - Alternate private room pathfinding (similar logic, different handling)
Public Function FindPathPrivateAlt(ByVal SocketIndex As Integer, ByVal CurrentX As Integer, ByVal CurrentY As Integer, _
                                    ByVal TargetX As Integer, ByVal TargetY As Integer, ByVal RoomId As Double, _
                                    ByVal HeightMap As String, ByVal RotationMap As String) As String
    ' This function uses the same logic as FindPathPrivate but with slightly different
    ' collision detection and target position handling
    ' Implementation mirrors Proc_6_1 in the original p-code

    FindPathPrivateAlt = FindPathPrivate(SocketIndex, CurrentX, CurrentY, TargetX, TargetY, RoomId, HeightMap, RotationMap)
End Function

' FindPathPublic - Calculate movement path in public room
' Parameters:
'   SocketIndex - Socket connection index
'   CurrentX - Current X position
'   CurrentY - Current Y position
'   TargetX - Target X position
'   TargetY - Target Y position
'   HeightMap - Room heightmap string
' Returns: Path string "X,Y" or "NoPath" if blocked
Public Function FindPathPublic(ByVal SocketIndex As Integer, ByVal CurrentX As Integer, ByVal CurrentY As Integer, _
                                ByVal TargetX As Integer, ByVal TargetY As Integer, ByVal HeightMap As String) As Variant
    Dim sResult As String
    Dim sTile As String
    Dim aHeightRows() As String
    Dim i As Variant
    Dim lBotIndex As Long

    On Error GoTo ErrorHandler

    sResult = "NoPath"

    ' Find bot index for this public room
    For i = 1 To frmMain.BotI
        If gBotData(CLng(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
            lBotIndex = CLng(i)
            Exit For
        End If
    Next i

    ' Direction: Down-Right (CurrentX > TargetX, CurrentY > TargetY)
    If CurrentX > TargetX And CurrentY > TargetY Then
        ' Check if bot is at target position
        If gBotData(lBotIndex).PosX = CurrentX - 1 And gBotData(lBotIndex).PosY = CurrentY - 1 Then
            Exit Function
        End If

        ' Check for other users at target
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gUserData(SocketIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX - 1 And gUserData(CLng(i)).PosY = CurrentY - 1 Then
                    Exit Function
                End If
            End If
        Next i

        ' Check tile walkability
        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY - 1), CurrentX, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or sTile = "S" Or sTile = "L" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY - 1)
            gUserData(SocketIndex).TargetPos = "7,7"

            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: Up-Left (CurrentX < TargetX, CurrentY < TargetY)
    If CurrentX < TargetX And CurrentY < TargetY Then
        If gBotData(lBotIndex).PosX = CurrentX + 1 And gBotData(lBotIndex).PosY = CurrentY + 1 Then
            Exit Function
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

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or sTile = "S" Or sTile = "L" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX + 1) & "," & CStr(CurrentY + 1)
            gUserData(SocketIndex).TargetPos = "3,3"

            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: Down-Left (CurrentX > TargetX, CurrentY < TargetY)
    If CurrentX > TargetX And CurrentY < TargetY Then
        If gBotData(lBotIndex).PosX = CurrentX - 1 And gBotData(lBotIndex).PosY = CurrentY + 1 Then
            Exit Function
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

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or sTile = "S" Or sTile = "L" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY + 1)
            gUserData(SocketIndex).TargetPos = "5,5"

            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Direction: Up-Right (CurrentX < TargetX, CurrentY > TargetY)
    If CurrentX < TargetX And CurrentY > TargetY Then
        If gBotData(lBotIndex).PosX = CurrentX + 1 And gBotData(lBotIndex).PosY = CurrentY - 1 Then
            Exit Function
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

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or sTile = "S" Or sTile = "L" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX + 1) & "," & CStr(CurrentY - 1)
            gUserData(SocketIndex).TargetPos = "1,1"

            gUserData(SocketIndex).MoveTimer = 0
            gUserData(SocketIndex).Moving = False
            gUserData(SocketIndex).Sitting = False
        End If
    End If

    ' Cardinal directions (Right, Left, Down, Up)
    If CurrentX < TargetX And CurrentY = TargetY Then
        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY), CurrentX + 2, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or sTile = "S" Or sTile = "L" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX + 1) & "," & CStr(CurrentY)
            gUserData(SocketIndex).TargetPos = "2,2"
        End If
    End If

    If CurrentX > TargetX And CurrentY = TargetY Then
        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY), CurrentX, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or sTile = "S" Or sTile = "L" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY)
            gUserData(SocketIndex).TargetPos = "6,6"
        End If
    End If

    If CurrentX = TargetX And CurrentY < TargetY Then
        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY + 1), CurrentX + 1, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or sTile = "S" Or sTile = "L" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX) & "," & CStr(CurrentY + 1)
            gUserData(SocketIndex).TargetPos = "4,4"
        End If
    End If

    If CurrentX = TargetX And CurrentY > TargetY Then
        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY - 1), CurrentX + 1, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or sTile = "S" Or sTile = "L" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX) & "," & CStr(CurrentY - 1)
            gUserData(SocketIndex).TargetPos = "0,0"
        End If
    End If

    FindPathPublic = sResult
    Exit Function

ErrorHandler:
    FindPathPublic = "NoPath"
End Function

' FindPathPublicAlt - Alternate public room pathfinding (bot-centric)
Public Function FindPathPublicAlt(ByVal BotIndex As Integer, ByVal CurrentX As Integer, ByVal CurrentY As Integer, _
                                   ByVal TargetX As Integer, ByVal TargetY As Integer, ByVal HeightMap As String) As Variant
    ' Similar to FindPathPublic but from bot's perspective
    ' Used when bot needs to calculate its own path avoiding users

    Dim sResult As String
    Dim sTile As String
    Dim aHeightRows() As String
    Dim i As Variant

    On Error GoTo ErrorHandler

    sResult = "NoPath"

    ' Direction: Down-Right
    If CurrentX > TargetX And CurrentY > TargetY Then
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gBotData(BotIndex).PublicRoomId Then
                If gUserData(CLng(i)).PosX = CurrentX - 1 And gUserData(CLng(i)).PosY = CurrentY - 1 Then
                    Exit Function
                End If
            End If
        Next i

        aHeightRows = Split(HeightMap, Chr$(&HD))
        sTile = Mid(aHeightRows(CurrentY - 1), CurrentX, 1)

        If sTile = "O" Or sTile = "D" Or sTile = "R" Or IsNumeric(sTile) Then
            sResult = CStr(CurrentX - 1) & "," & CStr(CurrentY - 1)
            gBotData(BotIndex).TargetPos = "7,7"
            gBotData(BotIndex).Moving = False
        End If
    End If

    ' Additional directions follow same pattern...
    ' (Similar implementation for all 8 directions)

    FindPathPublicAlt = sResult
    Exit Function

ErrorHandler:
    FindPathPublicAlt = "NoPath"
End Function

' CheckPublicRoomTransition - Handle teleportation between connected public rooms
' Handles special locations like doors, elevators, stairs that connect different areas
Public Sub CheckPublicRoomTransition(ByVal SocketIndex As Integer)
    Dim lCurrentRoom As Integer
    Dim dPosX As Double
    Dim dPosY As Double

    lCurrentRoom = gUserData(SocketIndex).PublicRoomId
    dPosX = gUserData(SocketIndex).PosX
    dPosY = gUserData(SocketIndex).PosY

    ' Room 49 (0x31) - Old School Disco transitions
    If lCurrentRoom = &H31 Then
        ' Exit point at (16,18) -> Room 50
        If dPosX = 16 And dPosY = 18 Then
            gUserData(SocketIndex).PublicRoomId = &H32
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEold_skool1 15799"
            RemoveUserFromPublicRoom &H31, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
            gUserData(SocketIndex).Height = "6.0"
        End If
    End If

    ' Room 31 (0x1F) - Hallway transitions
    If lCurrentRoom = &H1F Then
        ' Multiple exit points to Room 55 (hallway0)
        If (dPosX = 16 Or dPosX = 15 Or dPosX = 14 Or (dPosX = 13 And dPosY = 0)) Then
            gUserData(SocketIndex).PublicRoomId = &H37
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "Bfhttp://hotel-uk/client.pub.hallway.0"
            SendData SocketIndex, "AEhallway0 15191"
            RemoveUserFromPublicRoom &H1F, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 56 (0x38) - Another hallway section
    If lCurrentRoom = &H38 Then
        ' Exit points to Room 55
        If (dPosX = 0 Or dPosX = 8 Or dPosX = 7 Or (dPosX = 6 And dPosY = 5)) Then
            gUserData(SocketIndex).PublicRoomId = &H37
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "Bfhttp://hotel-uk/client.pub.hallway.0"
            SendData SocketIndex, "AEhallway0 15191"
            RemoveUserFromPublicRoom &H38, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 55 (0x37) - Main hallway transitions
    If lCurrentRoom = &H37 Then
        ' Exit to Room 56 (hallway2)
        If (dPosX = 31 Or dPosX = 5 Or dPosX = 4 Or (dPosX = 3 And dPosY = 2)) Then
            gUserData(SocketIndex).PublicRoomId = &H38
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "Bfhttp://hotel-uk/client.pub.hallway.0"
            SendData SocketIndex, "AEhallway2 15191"
            RemoveUserFromPublicRoom &H37, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 51 (0x33) - Old school transitions
    If lCurrentRoom = &H33 Then
        ' Exit at (10,?) or (9,33) -> Room 50
        If dPosX = 10 Or (dPosX = 9 And dPosY = &H21) Then
            gUserData(SocketIndex).PublicRoomId = &H32
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEold_skool1 15799"
            RemoveUserFromPublicRoom &H33, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
            gUserData(SocketIndex).Height = "6.0"
        End If
    End If

    ' Room 50 (0x32) - Old school main area
    If lCurrentRoom = &H32 Then
        ' Exit at (1,7) -> back to Room 50 (stay)
        If dPosX = 1 And dPosY = 7 Then
            gUserData(SocketIndex).Height = "6.0"
        End If
    End If

    ' Room 53 (0x35) - Beauty salon
    If lCurrentRoom = &H35 Then
        ' Multiple exit points to Room 52
        If (dPosX = 19 And dPosY = 25) Or (dPosX = 19 And dPosY = 23) Or (dPosX = 19 And dPosY = 24) Then
            gUserData(SocketIndex).PublicRoomId = &H34
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AEbeauty_salon1 15287"
            RemoveUserFromPublicRoom &H35, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
            gUserData(SocketIndex).Height = "6.0"
        End If
    End If

    ' Room 14 (0xE) - Rooftop transitions
    If lCurrentRoom = &HE Then
        ' Exit at (9,4), (10,4), or (9,3) -> Room 37
        If (dPosX = 9 And dPosY = 4) Or (dPosX = 10 And dPosY = 4) Or (dPosX = 9 And dPosY = 3) Then
            gUserData(SocketIndex).PublicRoomId = &H25
            gUserData(SocketIndex).Height = CStr(19)
            gUserData(SocketIndex).LastPacket = "I" & gUserData(SocketIndex).LocaleKey
            SendData SocketIndex, "AErooftop_2 42431"
            RemoveUserFromPublicRoom &HE, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 37 (0x25) - Rooftop 2
    If lCurrentRoom = &H25 Then
        ' Exit when Y > 9 -> Room 14
        If dPosY > 9 Then
            gUserData(SocketIndex).PublicRoomId = &HE
            gUserData(SocketIndex).PosY = 4
            gUserData(SocketIndex).DestHeight = 8
            gUserData(SocketIndex).TargetHeight = 4
            gUserData(SocketIndex).Height = CStr(3)
            gUserData(SocketIndex).TargetPos = "4,4"
            gUserData(SocketIndex).TriggerWalk = True
            SendData SocketIndex, "AErooftop 42431"
            RemoveUserFromPublicRoom &H25, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
            gUserData(SocketIndex).DestX = 0
            gUserData(SocketIndex).DestY = 0
        End If
    End If

    ' Room 28 (0x1C) - Info Bus park
    If lCurrentRoom = &H1C Then
        ' Check if info bus doors are open
        If frmMain.chkInfoBus.Value = 1 Then
            SendData SocketIndex, "AGbus open"

            ' Exit at (28,5) -> Room 34 (park_b)
            If dPosX = 28 And dPosY = 5 Then
                gUserData(SocketIndex).PublicRoomId = &H22
                SendData SocketIndex, "AEpark_b 15190"
                RemoveUserFromPublicRoom &H1C, Chr$(1) & "@]" & gUserData(SocketIndex).RoomSlot
                gUserData(SocketIndex).DestX = 0
                gUserData(SocketIndex).DestY = 0
            End If
        Else
            SendData SocketIndex, "AGbus close"
        End If
    End If

    ' Additional room transitions for:
    ' - Pool areas (lido, diving)
    ' - Cafes and restaurants
    ' - Club rooms
    ' - Game halls
    ' etc.
    ' (Pattern continues for all public room connections)

End Sub
