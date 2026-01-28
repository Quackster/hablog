Attribute VB_Name = "modSpeech"

Option Explicit

' Speech Commands Module
' Handles chat-based admin commands for the Habbo server
' Commands include: hotelalert, alert, ban, warp, online lists, credits, badges, stats, delete user

' CanHotelAlert - Check if user can use hotelalert command
' Returns True if user's rank includes "hotelalert" permission
Public Function CanHotelAlert(ByVal SocketIndex As Variant) As Boolean
    On Error Resume Next

    Dim sRankFile As String
    Dim sPermissions As String

    ' Build path to user's rank file
    sRankFile = gAppPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"

    ' Get speech_cmd permissions from rank file
    sPermissions = GetINI("rank", "speech_cmd", sRankFile)

    ' Check if hotelalert is in the permissions list
    CanHotelAlert = (InStr(1, sPermissions, ",hotelalert") > 0)
End Function

' CanAlert - Check if user can use alert command
' Returns True if user's rank includes "alert" permission
Public Function CanAlert(ByVal SocketIndex As Variant) As Boolean
    On Error Resume Next

    Dim sRankFile As String
    Dim sPermissions As String

    ' Build path to user's rank file
    sRankFile = gAppPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"

    ' Get speech_cmd permissions from rank file
    sPermissions = GetINI("rank", "speech_cmd", sRankFile)

    ' Check if alert is in the permissions list
    CanAlert = (InStr(1, sPermissions, ",alert") > 0)
End Function

' CanBan - Check if user can use ban command
' Returns True if user's rank includes "ban" permission
Public Function CanBan(ByVal SocketIndex As Variant) As Boolean
    On Error Resume Next

    Dim sRankFile As String
    Dim sPermissions As String

    ' Build path to user's rank file
    sRankFile = gAppPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"

    ' Get speech_cmd permissions from rank file
    sPermissions = GetINI("rank", "speech_cmd", sRankFile)

    ' Check if ban is in the permissions list
    CanBan = (InStr(1, sPermissions, ",ban") > 0)
End Function

' CanWarp - Check if user can use warp command
' Returns True if user's rank includes "warp" permission
Public Function CanWarp(ByVal SocketIndex As Variant) As Boolean
    On Error Resume Next

    Dim sRankFile As String
    Dim sPermissions As String

    ' Build path to user's rank file
    sRankFile = gAppPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"

    ' Get speech_cmd permissions from rank file
    sPermissions = GetINI("rank", "speech_cmd", sRankFile)

    ' Check if warp is in the permissions list
    CanWarp = (InStr(1, sPermissions, ",warp") > 0)
End Function

' CanWarp2 - Duplicate warp check (same as CanWarp)
Public Function CanWarp2(ByVal SocketIndex As Variant) As Boolean
    On Error Resume Next

    Dim sRankFile As String
    Dim sPermissions As String

    ' Build path to user's rank file
    sRankFile = gAppPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"

    ' Get speech_cmd permissions from rank file
    sPermissions = GetINI("rank", "speech_cmd", sRankFile)

    ' Check if warp is in the permissions list
    CanWarp2 = (InStr(1, sPermissions, ",warp") > 0)
End Function

' SendOnlineList - Shows list of online users with ranks (groups by same IP)
Public Sub SendOnlineList(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim i As Variant
    Dim j As Variant
    Dim vCount As Variant
    Dim sIPs As Variant
    Dim sFirst30 As Variant
    Dim sOverflow As Variant

    vCount = 0
    sIPs = vbNullString
    sFirst30 = vbNullString
    sOverflow = vbNullString

    ' Loop through all sockets
    For i = 1 To frmMain.SockI
        ' Check if socket is connected and user is logged in
        If frmMain.Sock(CInt(i)).State = 7 And gUserData(CLng(i)).Username <> vbNullString Then
            ' Skip if already processed this IP
            If InStr(1, sIPs, frmMain.Sock(CInt(i)).RemoteHostIP) > 0 Then
                GoTo NextUser
            End If

            ' Add to list (first 30)
            If vCount <= 30 Then
                sFirst30 = sFirst30 & "<br>Name: " & gUserData(CLng(i)).Username & "  Rank: " & gUserData(CLng(i)).Rank
            End If
            vCount = vCount + 1

            ' Find users with same IP
            For j = 1 To frmMain.SockI
                If frmMain.Sock(CInt(i)).RemoteHostIP = frmMain.Sock(CInt(j)).RemoteHostIP _
                   And i <> j _
                   And frmMain.Sock(CInt(j)).State = 7 _
                   And gUserData(CLng(j)).Username <> vbNullString Then

                    If vCount <= 30 Then
                        sFirst30 = sFirst30 & "<br>Name: " & gUserData(CLng(j)).Username & "  Rank: " & gUserData(CLng(i)).Rank
                    Else
                        sOverflow = sOverflow & "<br>Name: " & gUserData(CLng(j)).Username & "  Rank: " & gUserData(CLng(i)).Rank
                    End If
                    vCount = vCount + 1
                End If
            Next j

            ' Track processed IPs
            sIPs = sIPs & frmMain.Sock(CInt(i)).RemoteHostIP & ","
        End If
NextUser:
    Next i

    ' Send first batch
    SendData SocketIndex, "BK" & CStr(vCount) & " HabLogs online:" & CStr(sFirst30) & Chr$(1)

    ' Send overflow if more than 30
    If vCount > 30 Then
        SendData SocketIndex, "BK" & CStr(sOverflow) & Chr$(1)
    End If
End Sub

' SendOnlineListWithIP - Shows list of online users with IPs and ranks
Public Sub SendOnlineListWithIP(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim i As Variant
    Dim j As Variant
    Dim vCount As Variant
    Dim sIPs As Variant
    Dim sFirst30 As Variant
    Dim sOverflow As Variant

    vCount = 0
    sIPs = vbNullString
    sFirst30 = vbNullString
    sOverflow = vbNullString

    ' Loop through all sockets
    For i = 1 To frmMain.SockI
        ' Check if socket is connected and user is logged in
        If frmMain.Sock(CInt(i)).State = 7 And gUserData(CLng(i)).Username <> vbNullString Then
            ' Skip if already processed this IP
            If InStr(1, sIPs, frmMain.Sock(CInt(i)).RemoteHostIP) > 0 Then
                GoTo NextUser2
            End If

            ' Add to list with IP (first 30)
            If vCount <= 30 Then
                sFirst30 = sFirst30 & "<br>Name: " & gUserData(CLng(i)).Username & _
                          "  IP: " & frmMain.Sock(CInt(i)).RemoteHostIP & _
                          "  Rank: " & gUserData(CLng(i)).Rank
            End If
            vCount = vCount + 1

            ' Find users with same IP
            For j = 1 To frmMain.SockI
                If frmMain.Sock(CInt(i)).RemoteHostIP = frmMain.Sock(CInt(j)).RemoteHostIP _
                   And i <> j _
                   And frmMain.Sock(CInt(j)).State = 7 _
                   And gUserData(CLng(j)).Username <> vbNullString Then

                    If vCount <= 30 Then
                        sFirst30 = sFirst30 & "<br>Name: " & gUserData(CLng(j)).Username & _
                                  "  IP: " & frmMain.Sock(CInt(j)).RemoteHostIP & _
                                  "  Rank: " & gUserData(CLng(i)).Rank
                    Else
                        sOverflow = sOverflow & "<br>Name: " & gUserData(CLng(j)).Username & _
                                   "  IP: " & frmMain.Sock(CInt(j)).RemoteHostIP & _
                                   "  Rank: " & gUserData(CLng(i)).Rank
                    End If
                    vCount = vCount + 1
                End If
            Next j

            ' Track processed IPs
            sIPs = sIPs & frmMain.Sock(CInt(i)).RemoteHostIP & ","
        End If
NextUser2:
    Next i

    ' Send first batch
    SendData SocketIndex, "BK" & CStr(vCount) & " HabLogs online:" & CStr(sFirst30) & Chr$(1)

    ' Send overflow if more than 30
    If vCount > 30 Then
        SendData SocketIndex, "BK" & CStr(sOverflow) & Chr$(1)
    End If
End Sub

' SendOnlineListSimple - Shows simple list of online usernames
Public Sub SendOnlineListSimple(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim i As Variant
    Dim j As Variant
    Dim vCount As Variant
    Dim sIPs As Variant
    Dim sFirst30 As Variant
    Dim sOverflow As Variant

    vCount = 0
    sIPs = vbNullString
    sFirst30 = vbNullString
    sOverflow = vbNullString

    ' Loop through all sockets
    For i = 1 To frmMain.SockI
        ' Check if socket is connected and user is logged in
        If frmMain.Sock(CInt(i)).State = 7 And gUserData(CLng(i)).Username <> vbNullString Then
            ' Skip if already processed this IP
            If InStr(1, sIPs, frmMain.Sock(CInt(i)).RemoteHostIP) > 0 Then
                GoTo NextUser3
            End If

            ' Add to list (first 30)
            If vCount <= 30 Then
                sFirst30 = sFirst30 & "<br>Name: " & gUserData(CLng(i)).Username
            End If
            vCount = vCount + 1

            ' Find users with same IP
            For j = 1 To frmMain.SockI
                If frmMain.Sock(CInt(i)).RemoteHostIP = frmMain.Sock(CInt(j)).RemoteHostIP _
                   And i <> j _
                   And frmMain.Sock(CInt(j)).State = 7 _
                   And gUserData(CLng(j)).Username <> vbNullString Then

                    If vCount <= 30 Then
                        sFirst30 = sFirst30 & "<br>Name: " & gUserData(CLng(j)).Username
                    Else
                        sOverflow = sOverflow & "<br>Name: " & gUserData(CLng(j)).Username
                    End If
                    vCount = vCount + 1
                End If
            Next j

            ' Track processed IPs
            sIPs = sIPs & frmMain.Sock(CInt(i)).RemoteHostIP & ","
        End If
NextUser3:
    Next i

    ' Send first batch
    SendData SocketIndex, "BK" & CStr(vCount) & " HabLogs online:" & CStr(sFirst30) & Chr$(1)

    ' Send overflow if more than 30
    If vCount > 30 Then
        SendData SocketIndex, "BK" & CStr(sOverflow) & Chr$(1)
    End If
End Sub

' GiveCreditsToAll - Give credits to all online users
' Uses frmMain label caption for amount
Public Sub GiveCreditsToAll()
    On Error Resume Next

    Dim i As Variant
    Dim sAmount As Variant
    Dim oTextStream As Object
    Dim sCurrentCredits As Variant
    Dim dNewCredits As Double
    Dim sUsername As String

    ' Get amount from label caption
    sAmount = frmMain.lblCreditsAmount.Caption

    ' Loop through all sockets
    For i = 1 To frmMain.SockI
        ' Check if socket is connected
        If frmMain.Sock(CInt(i)).State = 7 Then
            ' Get username (lowercase)
            sUsername = LCase(gUserData(CLng(i)).Username)

            ' Read current credits
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\credits.txt", 1, True, 0)
            sCurrentCredits = oTextStream.ReadAll

            ' Calculate new credits
            dNewCredits = Val(CStr(sAmount)) + Val(CStr(sCurrentCredits))

            ' Write new credits
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\credits.txt", 2, False, 0)
            oTextStream.Write CStr(dNewCredits)

            ' Log transaction
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(i)).Username & "\transactions.txt", 8, True, 0)
            oTextStream.Write Replace(CStr(Date), "-", ".") & Chr$(9) & CStr(Time) & Chr$(9) & _
                             CStr(sAmount) & Chr$(9) & "0" & Chr$(9) & Chr$(9) & "web_internal" & Chr$(&HD)

            ' Send credits update packet
            frmMain.Sock(CInt(i)).SendData "@F" & CStr(dNewCredits) & ".0" & Chr$(1)
        End If
    Next i
End Sub

' GiveBadgeToAll - Give badge to all online users
' Uses frmMain label caption for badge name
Public Sub GiveBadgeToAll()
    On Error Resume Next

    Dim i As Variant
    Dim sBadge As Variant
    Dim oTextStream As Object
    Dim sCurrentBadges As Variant
    Dim sUsername As String

    ' Get badge name from label caption
    sBadge = frmMain.lblBadgeName.Caption

    ' Loop through all sockets
    For i = 1 To frmMain.SockI
        ' Check if socket is connected
        If frmMain.Sock(CInt(i)).State = 7 Then
            ' Get username (lowercase)
            sUsername = LCase(gUserData(CLng(i)).Username)

            ' Read current badges
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\badges.txt", 1, True, 0)
            sCurrentBadges = oTextStream.ReadAll

            ' Write updated badges
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsername & "\badges.txt", 2, False, 0)
            oTextStream.Write CStr(sCurrentBadges) & ";" & CStr(sBadge)

            ' Send notification
            frmMain.Sock(CInt(i)).SendData "BK" & "You got a Badge from Hablog Management. If you will see it reload HabLog Hotel!" & Chr$(1)
        End If
    Next i
End Sub

' SendServerStats - Send server statistics to user
Public Sub SendServerStats(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sTemp As String
    Dim vUserCount As Variant
    Dim vRoomCount As Variant
    Dim vFurniCount As Variant
    Dim vHotelName As Variant
    Dim sOnlineCount As String

    ' Read user count
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\count.txt", 1, True, 0)
    vUserCount = Val(oTextStream.ReadAll)

    ' Read room count
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\count.txt", 1, True, 0)
    vRoomCount = Val(oTextStream.ReadAll)

    ' Read furni count
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\count.txt", 1, True, 0)
    vFurniCount = Val(oTextStream.ReadAll)

    ' Get hotel name
    vHotelName = GetINI("config", "hotel_name", gSettingsFile)

    ' Get online count
    sOnlineCount = frmMain.lblOnlineCount.Caption

    ' Build and send stats message
    SendData SocketIndex, "BK" & "Hey " & gUserData(CInt(SocketIndex)).Username & _
             "!<br>The Server Time is " & CStr(Now) & _
             "!<br><br>Here you can see some details about " & CStr(vHotelName) & _
             "<br>" & CStr(vHotelName) & " has " & CStr(vUserCount) & _
             " registered users.<br>The users have created " & CStr(vRoomCount) & _
             " rooms in total.<br>There are " & CStr(vFurniCount) & _
             " furni's bought in " & CStr(vHotelName) & _
             ".<br>At the moment there are " & sOnlineCount & _
             " users online.<br><br>We thank you for playing " & CStr(vHotelName) & "!" & Chr$(1)
End Sub

' SendPollToPrivateRoom - Send poll question to users in private room
Public Sub SendPollToPrivateRoom()
    On Error Resume Next

    Dim vRoomId As Variant
    Dim vQuestion As Variant
    Dim vAnswers As Variant
    Dim sPollPacket As Variant

    ' Get parameters from form labels
    vRoomId = frmMain.lblPollRoom.Caption
    vQuestion = frmMain.lblPollQuestion.Caption
    vAnswers = frmMain.lblPollAnswers.Caption

    ' Build poll packet
    sPollPacket = "D}YqAThis is the Hablog Question System!" & _
                  "Thank you for your Quick Answer, we will look if you got the prize or not. " & _
                  "If you arent got a answer you are not the winner!JXPDIK" & _
                  CStr(vQuestion) & "YPDJK" & CStr(vAnswers) & ""

    ' Replace spaces with dashes
    sPollPacket = Replace(CStr(sPollPacket), " ", "-")

    ' Send to room
    RemoveUserFromRoom CLng(vRoomId), CStr(sPollPacket)
End Sub

' SendPollToPublicRoom - Send poll question to users in public room
Public Sub SendPollToPublicRoom()
    On Error Resume Next

    Dim vRoomId As Variant
    Dim vQuestion As Variant
    Dim vAnswers As Variant
    Dim sPollPacket As Variant

    ' Get parameters from form labels
    vRoomId = frmMain.lblPollRoom.Caption
    vQuestion = frmMain.lblPollQuestion.Caption
    vAnswers = frmMain.lblPollAnswers.Caption

    ' Build poll packet
    sPollPacket = "D}YqAThis is the Hablog Question System!" & _
                  "Thank you for your Quick Answer, we will look if you got the prize or not. " & _
                  "If you arent got a answer you are not the winner!JXPDIK" & _
                  CStr(vQuestion) & "YPDJK" & CStr(vAnswers) & ""

    ' Replace spaces with dashes
    sPollPacket = Replace(CStr(sPollPacket), " ", "-")

    ' Send to room
    RemoveUserFromPublicRoom CLng(vRoomId), CStr(sPollPacket)
End Sub

' DeleteUser - Delete a user account (admin only)
' Protected usernames: Hebbo, Orakel, Carlos
Public Sub DeleteUser(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vTargetUser As Variant
    Dim vAdminUser As Variant

    ' Get target username from label
    vTargetUser = frmMain.lblDeleteUser.Caption

    ' Get admin username from label
    vAdminUser = frmMain.lblAdminName.Caption

    ' Check if trying to delete protected user
    If vTargetUser = "Hebbo" Or vTargetUser = "Orakel" Or vTargetUser = "Carlos" Then
        Exit Sub
    End If

    ' Check if admin is protected user (only they can delete)
    If vAdminUser = "Hebbo" Or vAdminUser = "Orakel" Or vAdminUser = "Carlos" Then
        ' Delete user folder
        gFSO.DeleteFolder gAppPath & "habbos\" & LCase(CStr(vTargetUser)), True

        ' Notify admin
        SendData SocketIndex, "BK" & "The user " & CStr(vTargetUser) & " is now deleted by " & CStr(vAdminUser) & Chr$(1)
    End If
End Sub
