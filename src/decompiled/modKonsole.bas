Attribute VB_Name = "modKonsole"

Option Explicit

' Console Module
' Handles Habbo Console (messaging system) functionality
' Including friend lists, direct messages, and inquiries

' GetConsoleData - Loads and sends console data (friend list with status)
' Sends @L packet with friend information, online status, location, mission
Public Sub GetConsoleData(ByVal SocketIndex As Integer)
    Dim sResult As String
    Dim sOnlineSocket As String
    Dim vFriends As Variant
    Dim vFriend As Variant
    Dim oTextStream As Object
    Dim oFolder As Object
    Dim oFile As Object
    Dim sUsername As String
    Dim sSex As String
    Dim sConsoleMission As String
    Dim sMyConsoleMission As String
    Dim sLastOnline As String
    Dim sLocation As String
    Dim sAppInfo As String
    Dim sName As String
    Dim i As Variant
    Dim j As Variant
    Dim lMaxSockets As Long
    Dim vInquiries As Variant
    Dim vInquiry As Variant
    Dim sInquiryUsername As String
    Dim sInquiriesContent As String

    sResult = vbNullString
    sUsername = LCase(gUserData(SocketIndex).Username)

    ' Check if friendlist.txt exists and has content
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\friendlist.txt", 1, False, 0)
    If oTextStream.AtEndOfStream = False Then
        ' Read and parse friend list (delimited by ">")
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\friendlist.txt", 1, False, 0)
        vFriends = Split(oTextStream.ReadAll, ">")

        ' Process each friend
        For i = 1 To UBound(vFriends)
            If vFriends(i) <> vbNullString And vFriends(i) <> ">" Then
                ' Remove "<" from friend name
                vFriend = Replace(vFriends(i), "<", vbNullString)
                sOnlineSocket = vbNullString

                ' Check if friend is online
                lMaxSockets = frmMain.SockIGet()
                For j = 1 To lMaxSockets
                    sUsername = LCase(gUserData(j).Username)
                    If LCase(vFriend) = sUsername Then
                        ' Check socket state = 7 (connected)
                        If frmMain.SockI(j).State = 7 Then
                            sOnlineSocket = CStr(j)
                            ' Get location - Floor1b if in room, else hotel_view
                            If gUserData(j).RoomNum > 0 Then
                                sLocation = "Floor1b"
                            Else
                                sLocation = GetLocaleString("hotel_view")
                            End If
                            Exit For
                        End If
                    End If
                Next j

                ' Get friend's last online time
                sUsername = LCase(vFriend)
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\lastonline.txt", 1, False, 0)
                sLastOnline = oTextStream.ReadAll

                ' Get friend's sex (M/F -> I/H for male/female icon)
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\sex.txt", 1, False, 0)
                If LCase(oTextStream.ReadAll) = "m" Then
                    sSex = "I"  ' Male
                Else
                    sSex = "H"  ' Female
                End If

                ' Get friend's console mission
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\consolemission.txt", 1, False, 0)
                If oTextStream.AtEndOfStream Then
                    sConsoleMission = "H"
                Else
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\consolemission.txt", 1, False, 0)
                    sConsoleMission = "I" & oTextStream.ReadAll
                    If sConsoleMission = "I " Then
                        sConsoleMission = "H"
                    End If
                End If

                ' Build friend entry based on online status
                If sOnlineSocket <> vbNullString Then
                    ' Friend is online - include full info
                    sUsername = LCase(vFriend)

                    ' Get friend's display name
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\name.txt", 1, False, 0)
                    sName = oTextStream.ReadAll

                    ' Get friend's app info
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\app.txt", 1, False, 0)
                    sAppInfo = oTextStream.ReadAll

                    ' Build online friend entry:
                    ' BI + encoded_user_num + name + Chr(2) + sex + consolemission + Chr(2) + "I" + location + Chr(2) + lastonline + Chr(2) + app + Chr(2) + Chr(1)
                    sResult = sResult & "BI" & EncodeVL64(CDbl(GetUserNum(vFriend))) & sName & Chr(2) & sSex & sConsoleMission & Chr(2) & "I" & sLocation & Chr(2) & sLastOnline & Chr(2) & sAppInfo & Chr(2) & Chr(1)
                Else
                    ' Friend is offline
                    sUsername = LCase(vFriend)

                    ' Get friend's display name
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\name.txt", 1, False, 0)
                    sName = oTextStream.ReadAll

                    ' Get friend's app info
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\app.txt", 1, False, 0)
                    sAppInfo = oTextStream.ReadAll

                    ' Build offline friend entry:
                    ' BI + encoded_user_num + name + Chr(2) + sex + consolemission + Chr(2) + "H" + Chr(2) + lastonline + Chr(2) + app + Chr(2) + Chr(1)
                    sResult = sResult & "BI" & EncodeVL64(CDbl(GetUserNum(vFriend))) & sName & Chr(2) & sSex & sConsoleMission & Chr(2) & "H" & Chr(2) & sLastOnline & Chr(2) & sAppInfo & Chr(2) & Chr(1)
                End If
            End If
        Next i
    End If

    ' Get user's own console mission
    sUsername = LCase(gUserData(SocketIndex).Username)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\consolemission.txt", 1, False, 0)
    If oTextStream.AtEndOfStream = False Then
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\consolemission.txt", 1, False, 0)
        sMyConsoleMission = oTextStream.ReadAll
    Else
        sMyConsoleMission = vbNullString
    End If

    ' Process direct mail files (non-txt files in directmail folder)
    Set oFolder = gFSO.GetFolder(gAppPath & "habbos\" & sUsername & "\directmail\")
    For Each oFile In oFolder.Files
        If Right(oFile, 3) <> "txt" Then
            ' Read message file and append to result
            Set oTextStream = oFile.OpenAsTextStream(1, 0)
            sResult = sResult & Chr(1) & Split(oTextStream.ReadAll, Chr(1), 2)(1)
        End If
    Next oFile

    ' Process friend inquiries/requests
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\inquiries.txt", 1, False, 0)
    If oTextStream.AtEndOfStream = False Then
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\inquiries.txt", 1, False, 0)
        vInquiries = Split(oTextStream.ReadAll, "<")

        For i = 1 To UBound(vInquiries)
            If vInquiries(i) <> vbNullString And vInquiries(i) <> ">" Then
                ' Get username from inquiry
                vInquiry = Split(vInquiries(i), ">")(0)
                sInquiryUsername = LCase(vInquiry)

                ' Check if user folder exists
                If gFSO.FolderExists(gAppPath & "habbos\" & sInquiryUsername) Then
                    ' Build inquiry entry: BD + encoded_user_num + name + Chr(2) + Chr(1)
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sInquiryUsername & "\num.txt", 1, False, 0)
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sInquiryUsername & "\name.txt", 1, False, 0)
                    sResult = sResult & "BD" & EncodeVL64(CDbl(oTextStream.ReadAll)) & oTextStream.ReadAll & Chr(2) & Chr(1)
                Else
                    ' User doesn't exist - remove from inquiries
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\inquiries.txt", 1, False, 0)
                    sInquiriesContent = oTextStream.ReadAll
                    sInquiriesContent = Replace(sInquiriesContent, "<" & vInquiry & ">", vbNullString)
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\inquiries.txt", 2, False, 0)
                    oTextStream.Write sInquiriesContent
                End If
            End If
        Next i
    End If

    ' Send console data packet: @L + consolemission + Chr(2) + Chr(1) + friend_entries
    frmMain.SockI(SocketIndex).SendData "@L" & sMyConsoleMission & Chr(2) & Chr(1) & sResult
End Sub

' SendDirectMessage - Sends a direct message to another user
' Creates message file in recipient's directmail folder
Public Sub SendDirectMessage(ByVal MessageText As String, ByVal RecipientUsername As String, ByVal SenderSocketIndex As Integer)
    Dim oTextStream As Object
    Dim sTimestamp As String
    Dim sMailCount As String
    Dim vMailNum As Variant
    Dim sMessageData As String
    Dim sRecipientLower As String
    Dim j As Variant
    Dim lMaxSockets As Long

    sRecipientLower = LCase(RecipientUsername)

    ' Check if recipient exists
    If gFSO.FolderExists(gAppPath & "habbos\" & sRecipientLower) = False Then
        Exit Sub
    End If

    ' Format timestamp: dd-mm-yyyy hh:mm
    sTimestamp = Format(Date, "dd-mm-yyyy") & " " & Format(Time, "hh:mm")

    ' Get next mail ID
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sRecipientLower & "\directmail\count.txt", 1, False, 0)
    vMailNum = Val(oTextStream.ReadAll) + 1

    ' Ensure unique mail ID (loop until we find an unused one)
    Do While Round(EncodeVL64(vMailNum), 0) <> vMailNum
        vMailNum = vMailNum + 1
    Loop

    ' Update mail count
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sRecipientLower & "\directmail\count.txt", 2, False, 0)
    oTextStream.Write CStr(vMailNum)

    ' Build message data:
    ' BFI + encoded_mail_num + encoded_sender_num + timestamp + Chr(2) + message_text + Chr(2) + Chr(1)
    sMessageData = "BFI" & EncodeVL64(vMailNum) & EncodeVL64(CDbl(GetUserNum(CStr(SenderSocketIndex)))) & sTimestamp & Chr(2) & CStr(MessageText) & Chr(2) & Chr(1)

    ' Write message file (written multiple times for redundancy/sync)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sRecipientLower & "\directmail\" & CStr(vMailNum) & ".message", 2, True, 0)
    oTextStream.Write CStr(MessageText) & Chr(1) & sMessageData

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sRecipientLower & "\directmail\" & CStr(vMailNum) & ".message", 2, True, 0)
    oTextStream.Write CStr(MessageText) & Chr(1) & sMessageData

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sRecipientLower & "\directmail\" & CStr(vMailNum) & ".message", 2, True, 0)
    oTextStream.Write CStr(MessageText) & Chr(1) & sMessageData

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sRecipientLower & "\directmail\" & CStr(vMailNum) & ".message", 2, True, 0)
    oTextStream.Write CStr(MessageText) & Chr(1) & sMessageData

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sRecipientLower & "\directmail\" & CStr(vMailNum) & ".message", 2, True, 0)
    oTextStream.Write CStr(MessageText) & Chr(1) & sMessageData

    ' If recipient is online, send them the message immediately
    lMaxSockets = frmMain.SockIGet()
    For j = 1 To lMaxSockets
        If LCase(gUserData(j).Username) = sRecipientLower Then
            ' Check socket state = 7 (connected)
            If frmMain.SockI(j).State = 7 Then
                frmMain.SockI(j).SendData sMessageData
                Exit For
            End If
        End If
    Next j
End Sub

' GetFriendsList - Gets friend list with console missions and online status
' Sends @M packet with friend count and status
Public Sub GetFriendsList(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sResult As String
    Dim sUsername As String
    Dim vFriends() As String
    Dim vFriendCount As Variant
    Dim oTextStream As Object
    Dim sFriendList As String
    Dim sConsoleMission As String
    Dim sFriendUsername As String
    Dim sLastOnline As String
    Dim i As Variant
    Dim j As Variant
    Dim lMaxSockets As Long
    Dim bFoundOnline As Variant

    sUsername = LCase(gUserData(SocketIndex).Username)

    ' Check if friendlist exists
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\friendlist.txt", 1, False, 0)
    If oTextStream.AtEndOfStream = False Then
        ' Read friend list
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\friendlist.txt", 1, False, 0)
        sFriendList = Replace(oTextStream.ReadAll, "<", vbNullString)
        vFriends = Split(sFriendList, ">")

        vFriendCount = 0

        ' Process each friend
        For i = 0 To UBound(vFriends)
            If Len(vFriends(i)) > 0 Then
                sFriendUsername = LCase(vFriends(i))

                ' Get friend's console mission
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sFriendUsername & "\consolemission.txt", 1, False, 0)
                If oTextStream.AtEndOfStream = False Then
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sFriendUsername & "\consolemission.txt", 1, False, 0)
                    If oTextStream.ReadAll = " " Then
                        sConsoleMission = vbNullString
                    Else
                        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sFriendUsername & "\consolemission.txt", 1, False, 0)
                        sConsoleMission = oTextStream.ReadAll
                    End If
                Else
                    sConsoleMission = vbNullString
                End If

                bFoundOnline = 0

                ' Check if friend is online
                lMaxSockets = frmMain.SockIGet()
                For j = 1 To lMaxSockets
                    If gUserData(j).Username <> vbNullString Then
                        If LCase(gUserData(j).Username) = vFriends(i) Then
                            ' Check socket state = 7 (connected) and has room
                            If frmMain.SockI(j).State = 7 Then
                                If gUserData(j).RoomName <> vbNullString Then
                                    ' Friend is online in a room
                                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sFriendUsername & "\num.txt", 1, False, 0)
                                    sResult = sResult & EncodeVL64(CDbl(oTextStream.ReadAll)) & sConsoleMission & Chr(2) & gUserData(j).RoomName & Chr(2)
                                    bFoundOnline = 1
                                End If
                            End If
                        End If
                    End If
                Next j

                ' If not found online, add offline entry
                If bFoundOnline = 0 Then
                    sFriendUsername = LCase(vFriends(i))

                    ' Get friend's num and last online time
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sFriendUsername & "\num.txt", 1, False, 0)
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sFriendUsername & "\lastonline.txt", 1, False, 0)
                    sLastOnline = oTextStream.ReadAll

                    sResult = sResult & EncodeVL64(CDbl(oTextStream.ReadAll)) & sConsoleMission & Chr(2) & "H" & sLastOnline & Chr(2)
                End If

                vFriendCount = vFriendCount + 1
            End If
        Next i

        ' Send @M packet: @M + encoded_friend_count + friend_entries + Chr(1)
        frmMain.SockI(SocketIndex).SendData "@M" & EncodeVL64(CDbl(vFriendCount)) & sResult & Chr(1)
    End If
End Sub

' GetDirectMail - Retrieves unread direct mail messages
' Reads message files from directmail folder and sends to user
Public Sub GetDirectMail(ByVal SocketIndex As Integer)
    Dim oFolder As Object
    Dim oFile As Object
    Dim oTextStream As Object
    Dim sUsername As String
    Dim sMessageContent As String

    sUsername = LCase(gUserData(SocketIndex).Username)

    ' Get directmail folder
    Set oFolder = gFSO.GetFolder(gAppPath & "habbos\" & sUsername & "\directmail\")

    ' Process each file in the folder
    For Each oFile In oFolder.Files
        ' Skip .txt files (like count.txt)
        If Right(oFile, 3) <> "txt" Then
            ' Read and send message
            Set oTextStream = oFile.OpenAsTextStream(1, 0)
            sMessageContent = oTextStream.ReadAll

            ' Send message data (second part after Chr(1) delimiter)
            frmMain.SockI(SocketIndex).SendData Split(sMessageContent, Chr(1), 2)(1)
        End If
    Next oFile
End Sub
