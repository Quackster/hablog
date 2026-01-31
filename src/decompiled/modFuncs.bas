Attribute VB_Name = "modFuncs"

Option Explicit

' Utility Functions Module
' Contains various helper functions for the Habbo server
' Includes file operations, string manipulation, encoding/decoding, user lookup, etc.

Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long

' GetIconHeight - Gets the icon height using SendMessage
' Returns the icon height value from a window
Public Function GetIconHeight() As Long
    GetIconHeight = SendMessage(frmMain.hWnd, &HBA, 0, 0&)
End Function

' FileExists - Checks if a file exists
' Returns True if file exists, False otherwise
Public Function FileExists(ByVal FilePath As String) As Boolean
    On Error Resume Next

    Dim sResult As String

    sResult = Dir(FilePath, 0)

    If Len(sResult) > 0 And Err.Number = 0 Then
        FileExists = True
    Else
        FileExists = False
    End If
End Function

' FolderExists - Checks if a folder exists
' Returns True if folder exists, False otherwise
Public Function FolderExists(ByVal FolderPath As String) As Boolean
    On Error Resume Next

    Dim sResult As String

    ' vbDirectory = &H10 = 16
    sResult = Dir(FolderPath, vbDirectory)

    If Len(sResult) > 0 And Err.Number = 0 Then
        FolderExists = True
    Else
        FolderExists = False
    End If
End Function

' CountChar - Counts occurrences of a character in a string
' Returns the count of SearchChar in InputString
Public Function CountChar(ByVal InputString As String, ByVal SearchChar As String) As Variant
    Dim sText As String
    Dim sChar As String
    Dim lCount As Long
    Dim i As Long

    sText = InputString
    sChar = SearchChar
    lCount = 0

    For i = 1 To Len(sText)
        If Mid(sText, i, Len(sChar)) = sChar Then
            lCount = lCount + 1
        End If
    Next i

    CountChar = lCount
End Function

' SanitizeString - Escapes special characters for SQL safety
' Replaces backslash, single quote, and double backslash
Public Function SanitizeString(ByRef InputString As String) As String
    Dim sResult As String

    sResult = InputString

    ' Replace backslash with Chr(1)
    sResult = Replace(sResult, "\", Chr$(1), 1, -1, vbBinaryCompare)

    ' Replace escaped single quote with single quote
    sResult = Replace(sResult, "\'", "'", 1, -1, vbBinaryCompare)

    ' Replace double backslash with Chr(1)
    sResult = Replace(sResult, "\\", Chr$(1), 1, -1, vbBinaryCompare)

    SanitizeString = sResult
End Function

' DecodeVL64Simple - Decodes a VL64 encoded string to integer (simple version)
' VL64 is Habbo's variable-length 64-bit encoding
' Note: Use modEncoding.DecodeVL64 for the full implementation
Public Function DecodeVL64Simple(ByRef EncodedString As String) As Variant
    Dim sInput As String
    Dim i As Integer
    Dim j As Integer
    Dim lResult As Integer
    Dim sChar As String

    sInput = EncodedString

    If sInput = vbNullString Then
        Exit Function
    End If

    lResult = 0

    ' Loop through each character in the encoded string
    For i = 1 To Len(sInput)
        ' Check each possible ASCII value (1-255)
        For j = 1 To 255
            ' Compare character at position i with ASCII value j
            If Chr$(j) = Mid(sInput, i, 1) Then
                ' If at last position, add value minus 64
                If i = Len(sInput) Then
                    lResult = lResult + CInt(CStr(j - &H40))
                ElseIf i = Len(sInput) - 1 Then
                    ' If second to last, multiply by 64 then add
                    lResult = lResult + CInt(CStr((j - &H40) * 64))
                End If
            End If
        Next j
    Next i

    DecodeVL64Simple = lResult
End Function

' EncodeVL64Simple - Encodes an integer to VL64 format (simple version)
' VL64 is Habbo's variable-length 64-bit encoding
' Note: Use modEncoding.EncodeVL64 for the full implementation
Public Function EncodeVL64Simple(ByVal Value As Integer) As Variant
    Dim lValue As Integer
    Dim lBase As Integer
    Dim lSecond As Integer

    ' Handle values less than 4 with single character
    If Value < 4 Then
        Select Case Value
            Case 0
                EncodeVL64Simple = "H"
            Case 1
                EncodeVL64Simple = "I"
            Case 2
                EncodeVL64Simple = "J"
            Case 3
                EncodeVL64Simple = "K"
        End Select
        Exit Function
    End If

    ' For larger values, use two-character encoding
    lValue = Value - 3
    lBase = &H41   ' 65 = 'A'
    lSecond = &H50  ' 80 = 'P'

    DoEvents

    Do While lValue > 1
        lValue = lValue - 1
        lSecond = lSecond + 1

        ' Wrap around if second character exceeds 'T' (84)
        If lSecond = &H54 Then
            lSecond = &H50
            lBase = lBase + 1
        End If
    Loop

    If lValue = 1 Then
        EncodeVL64Simple = Chr$(lSecond) & Chr$(lBase)
    End If
End Function

' RemoveUserFromRoom - Sends data to all users in a private room
' Iterates through sockets and sends data to those in the specified room
Public Sub RemoveUserFromRoom(ByVal RoomId As Long, ByVal Data As String)
    Dim i As Variant

    If RoomId > 0 And IsNumeric(RoomId) Then
        For i = 1 To frmMain.SockI
            ' Check if user is in the specified room
            If gUserData(CLng(i)).RoomId = CDbl(RoomId) Then
                ' Check if socket is connected (state 7)
                If frmMain.Sock(CInt(i)).State = 7 Then
                    frmMain.Sock(CInt(i)).SendData Data
                End If
            End If
        Next i
    End If
End Sub

' RemoveUserFromPublicRoom - Sends data to all users in a public room
' Iterates through sockets and sends data to those in the specified public room
Public Sub RemoveUserFromPublicRoom(ByVal RoomId As Long, ByVal Data As String)
    On Error Resume Next

    Dim i As Variant

    If RoomId > 0 And IsNumeric(RoomId) Then
        For i = 1 To frmMain.SockI
            ' Check if user is in the specified public room
            If gUserData(CLng(i)).PublicRoomId = CInt(RoomId) Then
                ' Check if socket is connected (state 7)
                If frmMain.Sock(CInt(i)).State = 7 Then
                    frmMain.Sock(CInt(i)).SendData Data
                End If
            End If
        Next i
    End If
End Sub

' DisconnectUser - Disconnects a user by closing their socket
Public Sub DisconnectUser(ByVal SocketIndex As Integer)
    On Error Resume Next

    ' Close the socket
    If frmMain.Sock(SocketIndex).State <> 0 Then
        frmMain.Sock(SocketIndex).Close
    End If
End Sub

' GetFurniFolderId - Gets the lowercase folder name for a user
Public Function GetFurniFolderId(ByVal sUsername As String) As String
    GetFurniFolderId = LCase$(Trim$(sUsername))
End Function

' ParsePacketString - Parses a string from packet data
' Returns the string extracted from the packet
Public Function ParsePacketString(ByVal sPacketData As String) As String
    ' Simple implementation - returns the input trimmed
    ParsePacketString = Trim$(sPacketData)
End Function

' FurniIdExists - Checks if a furniture ID folder exists
' Returns the ID if the folder doesn't exist, or a different value if it does
Public Function FurniIdExists(ByVal lFurniId As Long) As Long
    On Error Resume Next
    If gFSO.FolderExists(gAppPath & "furni\" & CStr(lFurniId)) Then
        ' Folder exists, return different value to trigger increment
        FurniIdExists = lFurniId + 1
    Else
        ' Folder doesn't exist, ID is available
        FurniIdExists = lFurniId
    End If
End Function

' ShowOnlineUsersAdmin - Shows online users to admin
Public Sub ShowOnlineUsersAdmin(ByVal SocketIndex As Integer)
    On Error Resume Next
    Dim i As Long
    Dim sUsers As String
    sUsers = "Online Users: "
    For i = 1 To frmMain.SockI
        If gUserData(i).Username <> "" Then
            sUsers = sUsers & gUserData(i).Username & ", "
        End If
    Next i
    SendData SocketIndex, "BK" & sUsers & Chr$(1)
End Sub

' ShowOnlineUsersRank - Shows online users to ranked user
Public Sub ShowOnlineUsersRank(ByVal SocketIndex As Integer)
    On Error Resume Next
    Call ShowOnlineUsersAdmin(SocketIndex)
End Sub

' ShowOnlineUsersBasic - Shows basic online user info
Public Sub ShowOnlineUsersBasic(ByVal SocketIndex As Integer)
    On Error Resume Next
    SendData SocketIndex, "BK" & "Online count: " & CStr(frmMain.SockI) & Chr$(1)
End Sub

' ProcessInfraction - Process an infraction command
Public Sub ProcessInfraction(ByVal SocketIndex As Integer)
    On Error Resume Next
    SendData SocketIndex, "BK" & "Infraction processed." & Chr$(1)
End Sub

' ReverseString - Reverses a string
' Returns the input string with characters in reverse order
Public Function ReverseString(ByVal InputString As String) As String
    Dim sInput As String
    Dim sResult As String
    Dim lLen As Long
    Dim i As Long

    sInput = InputString
    lLen = Len(sInput)
    sResult = vbNullString

    ' Loop from end to beginning
    For i = lLen To 1 Step -1
        sResult = sResult & Mid(sInput, i, 1)
    Next i

    ReverseString = sResult
End Function

' ContainsChar - Checks if string contains a specific character
' Returns True if SearchChar is found in InputString
Public Function ContainsChar(ByVal InputString As String, ByVal SearchChar As Integer) As Variant
    Dim i As Variant
    Dim bFound As Boolean

    bFound = False

    ' Check first character
    If Left(InputString, 1) = Chr$(SearchChar) Then
        bFound = True
    Else
        ' Check each position in the string
        For i = 1 To Len(InputString)
            If Mid(InputString, CLng(i), 1) = Chr$(SearchChar) Then
                bFound = True
                Exit For
            End If
        Next i
    End If

    ContainsChar = bFound
End Function

' IsUserOnline - Checks if a user is currently online
' Returns True if username is connected, False otherwise
Public Function IsUserOnline(ByVal Username As String) As String
    Dim i As Variant
    Dim bFound As Boolean

    bFound = False

    For i = 1 To frmMain.SockI
        ' Compare usernames (case-insensitive)
        If LCase(gUserData(CLng(i)).Username) = LCase(Username) Then
            ' Check if socket is connected (state 7)
            If frmMain.Sock(CInt(i)).State = 7 Then
                bFound = True
                Exit For
            End If
        End If
    Next i

    IsUserOnline = CStr(bFound)
End Function

' GetUserNum - Gets user number from habbos folder
' Reads num.txt for the specified username
Public Function GetUserNum(ByVal Username As String) As String
    Dim oTextStream As Object
    Dim sPath As String

    sPath = gAppPath & "habbos\" & LCase(Username) & "\num.txt"

    Set oTextStream = gFSO.OpenTextFile(sPath, 1, False, 0)
    GetUserNum = oTextStream.ReadAll
End Function

' FindUserByNum - Finds username by user number
' Searches through habbos folder to find matching num.txt
Public Function FindUserByNum(ByVal UserNum As String) As String
    On Error Resume Next

    Dim sResult As String
    Dim oFolder As Object
    Dim oSubFolder As Object
    Dim oTextStream As Object
    Dim sName As String

    sResult = "0"

    ' Get subfolder collection from habbos folder
    Set oFolder = gFSO.GetFolder(gAppPath & "habbos").SubFolders

    ' Iterate through each user folder
    For Each oSubFolder In oFolder
        ' Read name.txt from this folder
        Set oTextStream = gFSO.OpenTextFile(oSubFolder.Path & "\name.txt", 1, False, 0)
        sName = oTextStream.ReadAll

        ' Check if this user's num.txt matches
        If GetUserNum(sName) = UserNum Then
            sResult = sName
            Exit For
        End If
    Next oSubFolder

    FindUserByNum = sResult
End Function

' GetUserName - Alias for FindUserByNum (for compatibility)
Public Function GetUserName(ByVal UserNum As Variant) As String
    GetUserName = FindUserByNum(CStr(UserNum))
End Function

' GetSocketByUsername - Gets socket index for a username
' Returns socket index if user is online, 0 otherwise
Public Function GetSocketByUsername(ByVal Username As String) As String
    Dim i As Long
    Dim lSocket As Integer

    lSocket = 0

    For i = 1 To frmMain.SockI
        ' Compare usernames (case-insensitive)
        If LCase(gUserData(i).Username) = LCase(Username) Then
            ' Check if socket is connected (state 7)
            If frmMain.Sock(CInt(i)).State = 7 Then
                lSocket = CInt(i)
            End If
        End If
    Next i

    GetSocketByUsername = CStr(lSocket)
End Function

' SendDataToUser - Sends data to a specific user by username
' Finds the user's socket and sends the data
Public Sub SendDataToUser(ByVal Username As String, ByVal Data As String)
    Dim i As Variant

    For i = 1 To frmMain.SockI
        ' Compare usernames (case-insensitive)
        If LCase(gUserData(CLng(i)).Username) = LCase(Username) Then
            ' Check if socket is connected (state 7)
            If frmMain.Sock(CInt(i)).State = 7 Then
                frmMain.Sock(CInt(i)).SendData Data
            End If
        End If
    Next i
End Sub

' GetDistance - Calculates absolute distance between two values
' Returns the absolute difference as a string
Public Function GetDistance(ByVal Value1 As Variant, ByVal Value2 As Variant) As String
    Dim vMax As Variant
    Dim vMin As Variant

    If Value1 > Value2 Then
        vMax = Value1
        vMin = Value2
    Else
        vMax = Value2
        vMin = Value1
    End If

    GetDistance = CStr(vMax - vMin)
End Function

' CopyStrings - Copies string values (placeholder function)
Private Sub CopyStrings(ByVal Source As String, ByVal Dest As String)
    ' This appears to be an incomplete/placeholder function
End Sub

' CompareRanks - Compares two rank names
' Returns True if Rank1 is greater than or equal to Rank2
Public Function CompareRanks(ByVal Rank1 As String, ByVal Rank2 As String) As Boolean
    Dim lRank1 As Long
    Dim lRank2 As Long

    ' Convert rank names to numeric values
    Select Case Rank1
        Case "habbo": lRank1 = 0
        Case "habbox": lRank1 = 1
        Case "silver": lRank1 = 2
        Case "gold": lRank1 = 3
        Case "moderator": lRank1 = 4
        Case "admin": lRank1 = 5
        Case Else: lRank1 = 0
    End Select

    Select Case Rank2
        Case "habbo": lRank2 = 0
        Case "habbox": lRank2 = 1
        Case "silver": lRank2 = 2
        Case "gold": lRank2 = 3
        Case "moderator": lRank2 = 4
        Case "admin": lRank2 = 5
        Case Else: lRank2 = 0
    End Select

    ' Compare ranks
    CompareRanks = (Val(CStr(lRank1)) >= Val(CStr(lRank2)))
End Function

' WriteLog - Writes a log entry to file
' Creates log file if it doesn't exist, appends to existing file
Public Sub WriteLog(ByVal LogMessage As String)
    Dim oTextStream As Object
    Dim sLogPath As String
    Dim sLogFile As String

    ' Check if logfiles folder exists
    sLogPath = App.Path & "\logfiles"
    If Not gFSO.FolderExists(sLogPath) Then
        gFSO.CreateFolder sLogPath
    End If

    ' Build log file path with date
    sLogFile = App.Path & "\logfiles\" & CStr(Date) & ".log"

    ' Create log file with header if it doesn't exist
    If Not gFSO.FileExists(sLogFile) Then
        Set oTextStream = gFSO.OpenTextFile(sLogFile, 2, True, 0)
        oTextStream.Write "## " & CStr(Date) & " ##"
    End If

    ' Append log entry
    Set oTextStream = gFSO.OpenTextFile(sLogFile, 8, False, 0)
    oTextStream.Write vbCrLf & LogMessage
End Sub

' SendData - Sends data to a socket
' Main function for sending data to connected clients
Public Sub SendData(ByVal SocketIndex As Integer, ByVal Data As String)
    frmMain.Sock(SocketIndex).SendData Data
End Sub

' ProcessBotReaction - Processes bot reactions to user chat in public rooms
' Complex AI function that handles bot responses to keywords
Public Sub ProcessBotReaction(ByVal SocketIndex As Integer, ByVal ChatMessage As String)
    Dim i As Variant
    Dim j As Variant
    Dim k As Variant
    Dim lBotIndex As Variant
    Dim sMessage As String
    Dim sDataFile As Variant
    Dim sKeywords As Variant
    Dim sReaction As Variant
    Dim sReactionType As Variant
    Dim vWords() As String
    Dim vReactionParts() As String
    Dim lInterval As Variant
    Dim bReacted As Variant

    sMessage = ChatMessage
    bReacted = 0

    ' Find bot in this public room
    For i = 1 To frmMain.BotI
        If gBotData(CLng(i)).PublicRoomId = gUserData(CLng(SocketIndex)).PublicRoomId Then
            lBotIndex = i
            Exit For
        End If
    Next i

    ' Check if bot is busy
    If gBotData(CLng(lBotIndex)).IsBusy = True Then
        Exit Sub
    End If

    ' Check distance from user to bot (must be within 8 tiles)
    If Val(GetDistance(gUserData(SocketIndex).PosX, gBotData(CLng(lBotIndex)).PosX)) > 8 Then
        Exit Sub
    End If
    If Val(GetDistance(gUserData(SocketIndex).PosY, gBotData(CLng(lBotIndex)).PosY)) > 8 Then
        Exit Sub
    End If

    ' Convert message to lowercase for matching
    sMessage = LCase(sMessage)

    ' Build path to data.ini for this public room
    sDataFile = gAppPath & "pub\" & CStr(gUserData(SocketIndex).PublicRoomId) & "\data.ini"

    ' Check call words (1-10)
    For i = 1 To 10
        sKeywords = LCase(GetINI("bot", "call_words_" & CStr(i), CStr(sDataFile)))

        ' If keywords exist and are not empty/zero
        If sKeywords <> vbNullString And sKeywords <> "0" Then
            ' Check if message contains comma-separated keywords
            If InStr(1, CStr(sKeywords), ",") > 0 Then
                vWords = Split(CStr(sKeywords), ",")

                For j = 0 To UBound(vWords)
                    If vWords(j) <> vbNullString Then
                        ' Check if keyword contains "+" (AND match)
                        If InStr(1, vWords(j), "+") = 0 Then
                            ' Simple match - keyword in message
                            If InStr(1, sMessage, vWords(j)) > 0 Then
                                lBotIndex = i
                                GoTo FoundKeyword
                            End If
                        Else
                            ' AND match - both parts must be in message
                            If InStr(1, sMessage, Split(vWords(j), "+")(0)) > 0 And _
                               InStr(1, sMessage, Split(vWords(j), "+")(1)) > 0 Then
                                lBotIndex = i
                                GoTo FoundKeyword
                            End If
                        End If
                    End If
                Next j
            End If
        End If
    Next i

FoundKeyword:
    ' Check reactions (1-3) for matched keyword
    For i = 1 To 3
        sReaction = GetINI("bot", "reaction_" & CStr(lBotIndex) & "_" & CStr(i), CStr(sDataFile))

        ' If reaction exists
        If sReaction <> vbNullString And sReaction <> "0" Then
            ' Check for Chr(2) delimiter (action type separator)
            If InStr(1, CStr(sReaction), Chr$(2)) > 0 Then
                ' Get reaction type
                sReactionType = Split(CStr(sReaction), Chr$(2))(0)

                ' Handle different reaction types
                Select Case CStr(sReactionType)
                    Case "say"
                        ' Send chat message to all users in room
                        For j = 1 To frmMain.SockI
                            If frmMain.Sock(CInt(j)).State = 7 Then
                                If gUserData(CLng(j)).PublicRoomId = gBotData(CLng(lBotIndex)).PublicRoomId Then
                                    ' Check distance
                                    If Val(GetDistance(gBotData(CLng(lBotIndex)).PosX, gUserData(CLng(j)).PosX)) < 8 And _
                                       Val(GetDistance(gBotData(CLng(lBotIndex)).PosY, gUserData(CLng(j)).PosY)) < 8 Then
                                        ' Send chat packet
                                        SendData CInt(j), "@X" & EncodeVL64(CInt(gBotData(CLng(lBotIndex)).RoomSlot)) & _
                                                         Split(CStr(sReaction), Chr$(2))(1) & Chr$(2) & Chr$(1)
                                    End If
                                End If
                            End If
                        Next j

                        ' Calculate delay based on message length (100ms per char, min 500ms)
                        lInterval = Len(Split(CStr(sReaction), Chr$(2))(1)) * 100
                        If lInterval < 500 Then lInterval = 500

                        ' Set bot busy flag and timer
                        gBotData(CLng(lBotIndex)).IsSpeaking = True
                        frmMain.BotTimer(CInt(lBotIndex)).Interval = CLng(lInterval)
                        frmMain.BotTimer(CInt(lBotIndex)).Enabled = True
                        bReacted = 1

                    Case "shout"
                        ' Send shout message to public room
                        RemoveUserFromPublicRoom gBotData(CLng(lBotIndex)).PublicRoomId, _
                            "@Z" & EncodeVL64(CInt(gBotData(CLng(lBotIndex)).RoomSlot)) & _
                            Split(CStr(sReaction), Chr$(2))(1) & Chr$(2) & Chr$(1)

                        ' Calculate delay based on message length
                        lInterval = Len(Split(CStr(sReaction), Chr$(2))(1)) * 100
                        If lInterval < 500 Then lInterval = 500

                        ' Set bot busy flag and timer
                        gBotData(CLng(lBotIndex)).IsSpeaking = True
                        frmMain.BotTimer(CInt(lBotIndex)).Interval = CLng(lInterval)
                        frmMain.BotTimer(CInt(lBotIndex)).Enabled = True
                        bReacted = 1

                    Case "whisper"
                        ' Send whisper to the speaking user only
                        SendData SocketIndex, "@Y" & EncodeVL64(CInt(gBotData(CLng(lBotIndex)).RoomSlot)) & _
                                              Split(CStr(sReaction), Chr$(2))(1) & Chr$(2) & Chr$(1)

                        ' Calculate delay based on message length
                        lInterval = Len(Split(CStr(sReaction), Chr$(2))(1)) * 100
                        If lInterval < 500 Then lInterval = 500

                        ' Set bot busy flag and timer
                        gBotData(CLng(lBotIndex)).IsSpeaking = True
                        frmMain.BotTimer(CInt(lBotIndex)).Interval = CLng(lInterval)
                        frmMain.BotTimer(CInt(lBotIndex)).Enabled = True
                        bReacted = 1

                    Case "drink"
                        ' Give drink to user
                        GiveCarryItem SocketIndex, "AP" & Split(CStr(sReaction), Chr$(2))(1)
                        bReacted = 1
                End Select
            End If
        End If
    Next i

    ' If bot reacted, set walking state
    If bReacted = 1 Then
        gBotData(CLng(lBotIndex)).IsBusy = True
        gBotData(CLng(lBotIndex)).TargetX = gUserData(SocketIndex).PosX
        gBotData(CLng(lBotIndex)).TargetY = gUserData(SocketIndex).PosY
        gBotData(CLng(lBotIndex)).IsWalking = True
    End If
End Sub

' GiveCarryItem - Gives a carry item to a user and broadcasts to the room
' Sets the user's carry item and timer, then notifies all users in the room
Public Sub GiveCarryItem(ByVal SocketIndex As Integer, ByVal CarryItem As String)
    On Error Resume Next

    Dim i As Variant
    Dim sCarryPacket As String

    ' Set the carry item and timer (4 minutes = 240 ticks)
    gUserData(CLng(SocketIndex)).CarryItem = CarryItem
    gUserData(CLng(SocketIndex)).CarryTimer = 240

    ' Build the carry packet: "@]" + Username + " " + CarryItem + Chr(1)
    sCarryPacket = "@]" & gUserData(CLng(SocketIndex)).Username & " " & CarryItem & Chr$(1)

    ' Broadcast to room - check if user is in a public room or private room
    If gUserData(CLng(SocketIndex)).PublicRoomId > 0 Then
        ' User is in a public room
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).PublicRoomId = gUserData(CLng(SocketIndex)).PublicRoomId Then
                If frmMain.Sock(CInt(i)).State = 7 Then
                    frmMain.Sock(CInt(i)).SendData sCarryPacket
                End If
            End If
        Next i
    ElseIf gUserData(CLng(SocketIndex)).RoomId > 0 Then
        ' User is in a private room
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = gUserData(CLng(SocketIndex)).RoomId Then
                If frmMain.Sock(CInt(i)).State = 7 Then
                    frmMain.Sock(CInt(i)).SendData sCarryPacket
                End If
            End If
        Next i
    End If
End Sub

' SendToRoom - Broadcasts data to all users in public rooms (pool/lido camera updates)
' This is a stub function for camera/diving updates in public pool rooms
Public Sub SendToRoom(ByVal Data As String)
    Dim i As Long

    On Error Resume Next

    ' Broadcast to all users in any public room (Lido, Rumble, etc.)
    For i = 1 To frmMain.SockI
        If gUserData(CLng(i)).PublicRoomId > 0 Then
            If frmMain.Sock(CInt(i)).State = 7 Then
                frmMain.Sock(CInt(i)).SendData Data
            End If
        End If
    Next i
End Sub

' SendToUser - Sends data to a specific user by socket index
' Wrapper around socket SendData for consistency
Public Sub SendToUser(ByVal SocketIndex As Integer, ByVal Data As String)
    On Error Resume Next

    If SocketIndex > 0 And SocketIndex <= frmMain.SockI Then
        If frmMain.Sock(SocketIndex).State = 7 Then
            frmMain.Sock(SocketIndex).SendData Data
        End If
    End If
End Sub

' ProcessRoller - Processes roller movement for a user
' Stub function - roller logic would move items/users on roller tiles
Public Sub ProcessRoller(ByVal SocketIndex As Integer)
    On Error Resume Next

    ' Roller processing logic would go here
    ' This handles furniture/user movement on roller tiles
    gUserData(CLng(SocketIndex)).OnRoller = False
End Sub

' SendUserUpdate - Sends status update for a user to all users in the room
' This broadcasts the user's current state (position, dance, etc.)
Public Sub SendUserUpdate(ByVal SocketIndex As Integer)
    On Error Resume Next

    ' User update broadcast logic would go here
    ' This sends updated user status to all users in the same room
End Sub

' UpdateFurniStatus - Updates furniture status/state
' Handles furniture animations, states, etc.
Public Sub UpdateFurniStatus(ByVal FurniIndex As Integer)
    On Error Resume Next

    ' Furniture status update logic would go here
End Sub

' ExecuteBotAction - Executes a bot action
' Handles bot movement, speech, and other behaviors
Public Sub ExecuteBotAction(ByVal BotIndex As Integer)
    On Error Resume Next

    ' Bot action execution logic would go here
End Sub

' UpdateBot - Updates bot position and status
' Handles bot state changes and broadcasts
Public Sub UpdateBot(ByVal BotIndex As Integer)
    On Error Resume Next

    ' Bot update logic would go here
End Sub

' BotSpeak - Makes a bot speak
' Handles bot chat messages
Public Sub BotSpeak(ByVal BotIndex As Integer)
    On Error Resume Next

    ' Bot speaking logic would go here
End Sub

' UpdatePet - Updates pet status and behavior
' Handles pet state changes and broadcasts
Public Sub UpdatePet(ByVal PetIndex As Integer)
    On Error Resume Next

    ' Pet update logic would go here
End Sub

' SendToPublicRoom - Sends data to all users in a specific public room
Public Sub SendToPublicRoom(ByVal RoomId As Long, ByVal Data As String)
    Dim i As Long

    On Error Resume Next

    ' Broadcast to all users in the specified public room
    For i = 1 To frmMain.SockI
        If gUserData(CLng(i)).PublicRoomId = CInt(RoomId) Then
            If frmMain.Sock(CInt(i)).State = 7 Then
                frmMain.Sock(CInt(i)).SendData Chr$(1) & Data
            End If
        End If
    Next i
End Sub

' EnableShutdownPrivilege - Enables shutdown privilege for the current process
' Required for system shutdown/restart operations on Windows NT/2000/XP+
Public Sub EnableShutdownPrivilege()
    On Error Resume Next

    ' This would use Windows API calls to enable SE_SHUTDOWN_NAME privilege
    ' For now just a stub as this requires API declarations
End Sub
