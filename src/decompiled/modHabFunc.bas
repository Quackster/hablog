Attribute VB_Name = "modHabFunc"

Option Explicit

' Habbo Server Functions Module
' Main server logic for handling Habbo Hotel protocol packets
' Contains room navigation, user management, item handling, and more

' API Declarations for system functions (if needed)

' SendNavigatorData - Sends the public room navigator data to a client
' This function builds the complete navigator packet with public room categories,
' room counts, and random private room recommendations
' arg_14: Socket index to send data to
Private Function SendNavigatorData(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim bShowHabboClub As Boolean
    Dim sRoomCount As String
    Dim vRandom As Single
    Dim vRoom1 As Variant
    Dim vRoom2 As Variant
    Dim vRoom3 As Variant
    Dim vRoom4 As Variant
    Dim vCount1 As Variant
    Dim vCount2 As Variant
    Dim vCount3 As Variant
    Dim vCount4 As Variant
    Dim i As Variant
    Dim sPacket As String
    Dim sTemp As String
    Dim vTimer As Variant
    Dim vTimerDiff As Variant

    ' Check if Habbo Club rooms should be shown (checkbox on frmMain)
    bShowHabboClub = (frmMain.chkHabboClub.Value = 1)

    ' Send initial date/project info packet based on club setting
    If bShowHabboClub Then
        SendData SocketIndex, "DARBHIIIKHJIPAHQAdd-MM-yyyyRAHSAHPBHabLogProjectQBI" & Chr$(2) & Chr$(1)
    Else
        SendData SocketIndex, "DARAHIIIKHJIPAIQAdd-MM-yyyy" & Chr$(2) & Chr$(1)
        ' Send available public room IDs
        SendData SocketIndex, "@H[100,105,110,115,120,125,130,135,140,145,150,155,160,165,170,175,176,177,178,180,185,190,195,200,205,206,207,210,215,220,225,230,235,240,245,250,255,260,265,266,267,270,275,280,281,285,290,295,300,305,500,505,510,515,520,525,530,535,540,545,550,555,565,570,575,580,585,590,595,596,600,605,610,615,620,625,626,627,630,635,640,645,650,655,660,665,667,669,670,675,680,685,690,695,696,700,705,710,715,720,725,730,735,740]" & Chr$(1)
    End If

    ' Pick 4 random private rooms to recommend
    ' Get total room count
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\count.txt", 1, False, 0)
    sRoomCount = oTextStream.ReadAll

    ' Pick first random room
    vRandom = Rnd()
    vRoom1 = Int(CDbl(sRoomCount) * vRandom)

    ' Verify room exists, retry if not
    Do While Not gFSO.FileExists(gAppPath & "privaterooms\" & CStr(vRoom1) & "\name.txt")
        vRandom = Rnd()
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\count.txt", 1, False, 0)
        vRoom1 = Int(CDbl(oTextStream.ReadAll) * vRandom)
    Loop

    ' Pick second random room
    vRandom = Rnd()
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\count.txt", 1, False, 0)
    vRoom2 = Int(CDbl(oTextStream.ReadAll) * vRandom)

    Do While Not gFSO.FileExists(gAppPath & "privaterooms\" & CStr(vRoom2) & "\name.txt")
        vRandom = Rnd()
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\count.txt", 1, False, 0)
        vRoom2 = Int(CDbl(oTextStream.ReadAll) * vRandom)
    Loop

    ' Pick third random room
    vRandom = Rnd()
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\count.txt", 1, False, 0)
    vRoom3 = Int(CDbl(oTextStream.ReadAll) * vRandom)

    Do While Not gFSO.FileExists(gAppPath & "privaterooms\" & CStr(vRoom3) & "\name.txt")
        vRandom = Rnd()
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\count.txt", 1, False, 0)
        vRoom3 = Int(CDbl(oTextStream.ReadAll) * vRandom)
    Loop

    ' Pick fourth random room
    vRandom = Rnd()
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\count.txt", 1, False, 0)
    vRoom4 = Int(CDbl(oTextStream.ReadAll) * vRandom)

    Do While Not gFSO.FileExists(gAppPath & "privaterooms\" & CStr(vRoom4) & "\name.txt")
        vRandom = Rnd()
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\count.txt", 1, False, 0)
        vRoom4 = Int(CDbl(oTextStream.ReadAll) * vRandom)
    Loop

    ' Count users in each of the 4 random rooms
    vCount1 = 0
    For i = 1 To frmMain.SockI
        If gUserData(CLng(i)).RoomId > 0 Then
            If gUserData(CLng(i)).RoomId = CDbl(vRoom1) Then
                vCount1 = vCount1 + 1
            End If
        End If
    Next i

    vCount2 = 0
    For i = 1 To frmMain.SockI
        If gUserData(CLng(i)).RoomId > 0 Then
            If gUserData(CLng(i)).RoomId = CDbl(vRoom2) Then
                vCount2 = vCount2 + 1
            End If
        End If
    Next i

    vCount3 = 0
    For i = 1 To frmMain.SockI
        If gUserData(CLng(i)).RoomId > 0 Then
            If gUserData(CLng(i)).RoomId = CDbl(vRoom3) Then
                vCount3 = vCount3 + 1
            End If
        End If
    Next i

    vCount4 = 0
    For i = 1 To frmMain.SockI
        If gUserData(CLng(i)).RoomId > 0 Then
            If gUserData(CLng(i)).RoomId = CDbl(vRoom4) Then
                vCount4 = vCount4 + 1
            End If
        End If
    Next i

    ' Encode user counts to VL64 format
    Dim sCount1 As String, sCount2 As String, sCount3 As String, sCount4 As String
    sCount1 = EncodeVL64(CSng(vCount1))
    sCount2 = EncodeVL64(CSng(vCount2))
    sCount3 = EncodeVL64(CSng(vCount3))
    sCount4 = EncodeVL64(CSng(vCount4))

    ' Build public room totals (sum of category counts from labels)
    Dim vTotal1 As Variant, vTotal2 As Variant, vTotal3 As Variant
    vTotal1 = frmMain.lblRoomCount1.Caption + frmMain.lblRoomCount2.Caption + frmMain.lblRoomCount3.Caption
    vTotal2 = frmMain.lblRoomCount4.Caption + frmMain.lblRoomCount5.Caption
    vTotal3 = frmMain.lblRoomCount6.Caption + frmMain.lblRoomCount7.Caption + frmMain.lblRoomCount8.Caption + frmMain.lblRoomCount9.Caption

    Dim sTotalEnc1 As String, sTotalEnc2 As String, sTotalEnc3 As String
    sTotalEnc1 = EncodeVL64(CSng(vTotal1))
    sTotalEnc2 = EncodeVL64(CSng(vTotal2))
    sTotalEnc3 = EncodeVL64(CSng(vTotal3))

    ' Build the navigator packet with all public room categories and rooms
    sPacket = "C\IKHPublic RoomsSXY[_IRKI" & GetLocaleString("pub_name_2") & "" & _
              EncodeVL64(CSng(frmMain.lblWelcomeLounge.Caption)) & _
              "POKwelcome_lounge[M{Hhh_room_nlobbyHISBI" & GetLocaleString("Fu�ball Liga") & "" & _
              EncodeVL64(CSng(frmMain.lblBallroom.Caption)) & _
              "PQKballroomZa{Hhh_room_ballroom" & "HIRII" & GetLocaleString("Old Skool") & "" & _
              EncodeVL64(CSng(frmMain.lblOldSkool.Caption)) & _
              "PTKold_skool[c}Hhh_room_old_skool" & "HIRHI" & GetLocaleString("Postbank") & "" & _
              EncodeVL64(CSng(frmMain.lblClubMassiva.Caption)) & _
              "PTKclub_massiva[q}Hhh_room_bar_postbank" & "HIRHI" & GetLocaleString("Postbank") & "" & _
              EncodeVL64(CSng(frmMain.lblClubMassiva2.Caption)) & _
              "PTKclub_massiva[q}Hhh_room_bar_postbank" & "HIRHI" & GetLocaleString("Postbank") & "" & _
              EncodeVL64(CSng(frmMain.lblClubMassiva3.Caption)) & _
              "PTKclub_massiva[q}Hhh_room_bar_postbank" & "HIRhI"

    sPacket = sPacket & GetLocaleString("Karibik Bar") & "" & _
              EncodeVL64(CSng(frmMain.lblKaribikBar.Caption)) & _
              "POKsunset_cafeZEjHhh_room_sunsetcafeHIRpI"

    sPacket = sPacket & GetLocaleString("pub_name_6") & "" & _
              EncodeVL64(CSng(frmMain.lblCafeGold.Caption)) & _
              "POKcafe_goldZP{Hhh_room_goldHIXVAI" & GetLocaleString("pub_name_42") & "" & _
              EncodeVL64(CSng(frmMain.lblStarLounge.Caption))

    sPacket = sPacket & "PTKstar_loungeYM|Hhh_room_starloungeHIPJI" & GetLocaleString("pub_name_38") & "" & _
              EncodeVL64(CSng(frmMain.lblSpaceCafe.Caption)) & _
              "R[Kspace_cafeZQ{Hhh_room_space_cafe_ffHIP{I" & GetLocaleString("pub_name_43") & "" & _
              EncodeVL64(CSng(frmMain.lblLibrary.Caption)) & _
              "PYKlibraryZT{Hhh_room_libraryHIRJI" & GetLocaleString("pub_name_22") & "" & _
              EncodeVL64(CSng(frmMain.lblDisco.Caption)) & _
              "P^Kthe_chromide_clubXN{Hhh_room_discoHIPEI" & GetLocaleString("pub_name_9") & "" & _
              EncodeVL64(CSng(frmMain.lblErics.Caption)) & _
              "RLKeric's_eaterieZN{Hhh_room_ericsHIYBAH"

    ' Add category headers
    sPacket = sPacket & GetLocaleString("pub_categorie_snowstorm") & "HYQAKPaH" & _
              GetLocaleString("pub_categorie_battleball") & "HXbSKP\H" & _
              GetLocaleString("pub_categorie_entertainment") & "" & _
              sTotalEnc1 & "PmKSPH" & _
              GetLocaleString("pub_categorie_cafes") & "" & _
              sTotalEnc2 & "RLKQQH" & _
              GetLocaleString("pub_categorie_outsidespaces") & "" & _
              sTotalEnc3 & "YCBKQuH" & _
              GetLocaleString("pub_categorie_blogclub")

    ' Add restaurant category and more rooms
    sPacket = sPacket & "HR~KS[H" & GetLocaleString("pub_categorie_restaurants") & "HPwKSFI" & _
              GetLocaleString("pub_name_19") & "" & _
              EncodeVL64(CSng(frmMain.lblKitchen.Caption)) & _
              "SHKhotel_kitchenXO{Hhh_room_kitchenHIQHIBeauty SalonHPYKbeauty_salon_general[z}Hhh_room_beauty_salon_generalHISwH" & _
              GetLocaleString("pub_categorie_hallway") & "HPrK"

    ' Send the first part of navigator packet
    SendData SocketIndex, CStr(sPacket)

    ' Wait a bit before sending private room recommendations
    DoEvents
    vTimer = Timer
    Do
        DoEvents
        vTimerDiff = Timer - vTimer
    Loop Until vTimerDiff >= 1

    DoEvents

    ' Build and send random private room recommendations
    Dim sPrivateRooms As String
    Dim sRoomName As String, sOwner As String, sOpenType As String, sDescription As String

    ' Room 1 (vRoom4)
    sPrivateRooms = "E_K" & EncodeVL64(CSng(vRoom4))
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoom4) & "\name.txt", 1, False, 0)
    sPrivateRooms = sPrivateRooms & oTextStream.ReadAll & ""
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoom4) & "\owner.txt", 1, False, 0)
    sPrivateRooms = sPrivateRooms & oTextStream.ReadAll & ""
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoom4) & "\opentype.txt", 1, False, 0)
    sPrivateRooms = sPrivateRooms & oTextStream.ReadAll & "" & "HQF"
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoom4) & "\description.txt", 1, False, 0)
    sPrivateRooms = sPrivateRooms & oTextStream.ReadAll & ""

    ' Add room count and second room info
    sPrivateRooms = sPrivateRooms & EncodeVL64(CSng(vRoom1))
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoom1) & "\name.txt", 1, False, 0)
    sPrivateRooms = sPrivateRooms & oTextStream.ReadAll & ""
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoom1) & "\owner.txt", 1, False, 0)
    sPrivateRooms = sPrivateRooms & oTextStream.ReadAll & ""
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoom4) & "\opentype.txt", 1, False, 0)
    sPrivateRooms = sPrivateRooms & oTextStream.ReadAll & "" & "HQF"
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoom4) & "\description.txt", 1, False, 0)
    sPrivateRooms = sPrivateRooms & oTextStream.ReadAll & ""

    ' Add third room info with count
    Dim sRoom2Data As String
    sRoom2Data = EncodeVL64(CSng(vRoom2))
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoom2) & "\name.txt", 1, False, 0)
    sRoom2Data = sRoom2Data & oTextStream.ReadAll & ""
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoom2) & "\owner.txt", 1, False, 0)
    sRoom2Data = sRoom2Data & oTextStream.ReadAll & "" & "HQF"
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoom2) & "\description.txt", 1, False, 0)
    sRoom2Data = sRoom2Data & oTextStream.ReadAll & ""
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoom2) & "\opentype.txt", 1, False, 0)
    sRoom2Data = sRoom2Data & oTextStream.ReadAll & ""

    ' Combine and send private room data
    sPrivateRooms = sPrivateRooms & sRoom2Data
    SendData SocketIndex, CStr(sPrivateRooms)
End Function

' HandleLogin - Main login/authentication handler (Proc_30_1)
' This is one of the largest and most complex functions in the server.
' It handles the complete login flow including:
'   1. Parsing login packet (username/password from VL64 encoded data)
'   2. Checking if user folder exists
'   3. Verifying password
'   4. Hotel lock check (maintenance mode)
'   5. Max online user check
'   6. Duplicate login handling (kicks existing session)
'   7. User ban checks with expiration
'   8. IP ban checks with expiration
'   9. MAC ban checks with expiration
'   10. Loading user data (name, num, rank, permissions, etc.)
'   11. Sending login response packets
'
' Parameters:
'   PacketData - The raw login packet data from client
'   SocketIndex - The socket index for this connection
'
' Returns: Nothing (function exits early on login failure)
Private Function HandleLogin(ByRef PacketData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sPacketHeader As String
    Dim sUsernameLower As String
    Dim sPassword As String
    Dim sStoredPassword As String
    Dim nUsernameLength As Integer
    Dim nPasswordLength As Integer
    Dim sRankFile As String
    Dim sRankPermissions As String
    Dim sBanExpiry As String
    Dim sBanReason As String
    Dim vBanHoursDiff As Variant
    Dim vTimerStart As Variant
    Dim vTimerDiff As Variant
    Dim bFolderExists As Boolean
    Dim bFileExists As Boolean
    Dim vHotelLock As Variant
    Dim vRankHotelLock As Variant
    Dim vMaxOnline As Variant
    Dim i As Variant
    Dim sFuseRights As String
    Dim sHCDays As String
    Dim sFilmCount As Variant
    Dim vWelcomeMsg As Variant
    Dim sClientIP As String
    Dim sClientMAC As String
    Dim sTagsData As String

    ' =========================================================================
    ' STEP 1: Parse login packet - extract username and password
    ' =========================================================================
    ' Packet format: [header 2 bytes][username length VL64][username][password length VL64][password]

    ' Get packet header (first 2 bytes, skip position 3 onwards for data)
    sPacketHeader = Mid$(PacketData, 3)

    ' Decode username length (VL64 encoded at position 1)
    nUsernameLength = DecodeVL64(Mid$(PacketData, 1, 2))

    ' Extract username (after header, length determined by VL64 decode)
    sUsernameLower = LCase$(Mid$(PacketData, 3, nUsernameLength))

    ' Decode password length (VL64 encoded after username)
    nPasswordLength = DecodeVL64(Mid$(PacketData, 3 + nUsernameLength, 2))

    ' Extract password (after username + 2 byte length prefix)
    sPassword = Mid$(PacketData, 5 + nUsernameLength, nPasswordLength)

    ' =========================================================================
    ' STEP 2: Check if user folder exists
    ' =========================================================================
    bFolderExists = gFSO.FolderExists(gAppPath & "habbos\" & LCase$(sUsernameLower))

    If Not bFolderExists Then
        ' User does not exist - send wrong username error
        SendData SocketIndex, "@alogin incorrect: Wrong username" & Chr$(1)
        GoTo CheckTags
    End If

    ' =========================================================================
    ' STEP 3: Verify password
    ' =========================================================================
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(sUsernameLower) & "\pass.txt", 1, False, 0)
    sStoredPassword = oTextStream.ReadAll

    If sPassword <> sStoredPassword Then
        ' Wrong password - send error
        SendData SocketIndex, "@alogin incorrect: Wrong password" & Chr$(1)
        GoTo CheckTags
    End If

    ' Password correct - load basic user data

    ' Load display name
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(sUsernameLower) & "\name.txt", 1, False, 0)
    gUserData(CLng(SocketIndex)).Username = oTextStream.ReadAll

    ' Load user number/ID
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\num.txt", 1, False, 0)
    gUserData(CLng(SocketIndex)).UserNum = oTextStream.ReadAll

    ' Load user rank
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\rank.txt", 1, False, 0)
    gUserData(CLng(SocketIndex)).Rank = oTextStream.ReadAll

    ' =========================================================================
    ' STEP 4: Hotel lock check (maintenance mode)
    ' =========================================================================
    vHotelLock = GetINI("config", "hotel_lock", gSettingsFile)

    If vHotelLock = "1" Then
        ' Hotel is locked - check if user's rank can bypass
        sRankFile = gAppPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"
        vRankHotelLock = GetINI("rank", "hotel_lock", sRankFile)

        If vRankHotelLock <> "1" Then
            ' User cannot bypass hotel lock - disconnect
            SendData SocketIndex, "BK" & GetLocaleString("hotel_lock") & Chr$(1)
            frmMain.SockI(SocketIndex).Enabled = False
            Exit Function
        End If
    End If

    ' Reload rank for further checks
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\rank.txt", 1, False, 0)
    gUserData(CLng(SocketIndex)).Rank = oTextStream.ReadAll

    ' =========================================================================
    ' STEP 5: Max online user check
    ' =========================================================================
    vMaxOnline = GetINI("server", "max_online", gSettingsFile)

    If CDbl(frmMain.lblOnlineCount.Caption) = CDbl(vMaxOnline) Then
        ' Server is full - check if user's rank can bypass
        sRankFile = gAppPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"
        vRankHotelLock = GetINI("rank", "hotel_lock", sRankFile)

        If vRankHotelLock <> "1" Then
            ' User cannot bypass full server - disconnect
            SendData SocketIndex, "BK" & GetLocaleString("hotel_full") & Chr$(1)
            frmMain.SockI(SocketIndex).Enabled = False
            Exit Function
        End If
    End If

    ' =========================================================================
    ' STEP 6: Duplicate login handling
    ' =========================================================================
    ' Loop through all connected users to find existing session with same username
    For i = 1 To frmMain.SockI
        If gUserData(CLng(i)).Username = gUserData(CLng(SocketIndex)).Username And CLng(i) <> CLng(SocketIndex) Then
            ' Found duplicate session
            ' If user is in a room, remove them first
            If gUserData(CLng(i)).RoomId > 0 Or gUserData(CLng(i)).PublicRoomId > 0 Then
                ' Call room leave handler for existing session
                Call HandleRoomLeave(CInt(i))
            End If
            ' Disconnect the old session by closing its socket
            frmMain.SockI(CInt(i)).Close
        End If
    Next i

    ' =========================================================================
    ' STEP 7: User ban check
    ' =========================================================================
    bFileExists = gFSO.FileExists(gAppPath & "user_bans\" & gUserData(CLng(SocketIndex)).Username & ".txt")

    If bFileExists Then
        ' User is banned - check if ban has expired
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "user_bans\" & gUserData(CLng(SocketIndex)).Username & ".txt", 1, False, 0)
        sBanExpiry = oTextStream.ReadAll

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "user_bans\" & gUserData(CLng(SocketIndex)).Username & ".reason", 1, False, 0)
        sBanReason = oTextStream.ReadAll

        ' Calculate hours difference between now and ban expiry
        vBanHoursDiff = DateDiff("h", sBanExpiry, Now, 1, 1)

        If vBanHoursDiff < 0 Then
            ' Ban is still active - send ban message and authenticate for spectator mode
            SendData SocketIndex, "@c" & sBanReason & Chr$(1)

            ' Wait 4 seconds before sending session key
            DoEvents
            vTimerStart = Timer
            Do
                DoEvents
                vTimerDiff = Timer - vTimerStart
            Loop Until vTimerDiff >= 4

            ' Send authentication packet with session key
            DoEvents
            SendData SocketIndex, "@A" & GetSessionKey() & ""

            ' Close connection
            frmMain.SockI(SocketIndex).Close
            Exit Function
        Else
            ' Ban has expired - delete ban files
            gFSO.DeleteFile gAppPath & "user_bans\" & gUserData(CLng(SocketIndex)).Username & ".reason", False
            gFSO.DeleteFile gAppPath & "user_bans\" & gUserData(CLng(SocketIndex)).Username & ".txt", False
        End If
    End If

    ' =========================================================================
    ' STEP 8: IP ban check
    ' =========================================================================
    sClientIP = frmMain.SockI(SocketIndex).RemoteHostIP
    bFileExists = gFSO.FileExists(gAppPath & "ip_bans\" & sClientIP & ".txt")

    If bFileExists Then
        ' IP is banned - check if ban has expired
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "ip_bans\" & sClientIP & ".txt", 1, False, 0)
        sBanExpiry = oTextStream.ReadAll

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "ip_bans\" & sClientIP & ".reason", 1, False, 0)
        sBanReason = oTextStream.ReadAll

        ' Calculate hours difference
        vBanHoursDiff = DateDiff("h", sBanExpiry, Now, 1, 1)

        If vBanHoursDiff < 0 Then
            ' IP ban is still active
            SendData SocketIndex, "@c" & sBanReason & Chr$(1)

            DoEvents
            vTimerStart = Timer
            Do
                DoEvents
                vTimerDiff = Timer - vTimerStart
            Loop Until vTimerDiff >= 4

            DoEvents
            SendData SocketIndex, "@A" & GetSessionKey() & ""
            frmMain.SockI(SocketIndex).Close
            Exit Function
        Else
            ' IP ban has expired - delete ban files
            gFSO.DeleteFile gAppPath & "ip_bans\" & sClientIP & ".reason", False
            gFSO.DeleteFile gAppPath & "ip_bans\" & sClientIP & ".txt", False
        End If
    End If

    ' =========================================================================
    ' STEP 9: MAC ban check
    ' =========================================================================
    sClientMAC = frmMain.SockI(SocketIndex).Tag ' MAC address stored in socket Tag
    bFileExists = gFSO.FileExists(gAppPath & "mac_bans\" & sClientIP & sClientMAC & ".txt")

    If bFileExists Then
        ' MAC is banned - check if ban has expired
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "mac_bans\" & sClientIP & sClientMAC & ".txt", 1, False, 0)
        sBanExpiry = oTextStream.ReadAll

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "mac_bans\" & sClientIP & sClientMAC & ".reason", 1, False, 0)
        sBanReason = oTextStream.ReadAll

        vBanHoursDiff = DateDiff("h", sBanExpiry, Now, 1, 1)

        If vBanHoursDiff < 0 Then
            ' MAC ban is still active
            SendData SocketIndex, "@c" & sBanReason & Chr$(1)

            DoEvents
            vTimerStart = Timer
            Do
                DoEvents
                vTimerDiff = Timer - vTimerStart
            Loop Until vTimerDiff >= 4

            DoEvents
            SendData SocketIndex, "@A" & GetSessionKey() & ""
            frmMain.SockI(SocketIndex).Close
            Exit Function
        Else
            ' MAC ban has expired - delete ban files
            gFSO.DeleteFile gAppPath & "mac_bans\" & sClientIP & sClientMAC & ".reason", False
            gFSO.DeleteFile gAppPath & "mac_bans\" & sClientIP & sClientMAC & ".txt", False
        End If
    End If

    ' =========================================================================
    ' STEP 10: Load user permissions from rank file
    ' =========================================================================
    sRankFile = gAppPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)

    ' Check and set each permission flag based on rank configuration
    ' Permission: disconnect - ability to disconnect other users
    If InStr(1, sRankPermissions, ",disonnect") > 0 Then
        gUserData(CLng(SocketIndex)).CanDisconnect = True
    Else
        gUserData(CLng(SocketIndex)).CanDisconnect = False
    End If

    ' Permission: debug - access to debug commands
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",debug") > 0 Then
        gUserData(CLng(SocketIndex)).CanDebug = True
    Else
        gUserData(CLng(SocketIndex)).CanDebug = False
    End If

    ' Permission: whensunban - check when user will be unbanned
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",whensunban") > 0 Then
        gUserData(CLng(SocketIndex)).CanWhenSunban = True
    Else
        gUserData(CLng(SocketIndex)).CanWhenSunban = False
    End If

    ' Permission: fracts - view infractions
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",fracts") > 0 Then
        gUserData(CLng(SocketIndex)).CanFracts = True
    Else
        gUserData(CLng(SocketIndex)).CanFracts = False
    End If

    ' Permission: infract - issue infractions
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",infract") > 0 Then
        gUserData(CLng(SocketIndex)).CanInfract = True
    Else
        gUserData(CLng(SocketIndex)).CanInfract = False
    End If

    ' Permission: infract (duplicate check - likely for different infract type)
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",infract") > 0 Then
        gUserData(CLng(SocketIndex)).CanInfract2 = True
    Else
        gUserData(CLng(SocketIndex)).CanInfract2 = False
    End If

    ' Permission: wheres - find where a user is
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",wheres") > 0 Then
        gUserData(CLng(SocketIndex)).CanWheres = True
    Else
        gUserData(CLng(SocketIndex)).CanWheres = False
    End If

    ' Permission: answer - answer CFH calls
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",answer") > 0 Then
        gUserData(CLng(SocketIndex)).CanAnswer = True
    Else
        gUserData(CLng(SocketIndex)).CanAnswer = False
    End If

    ' Permission: email - view user emails
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",email") > 0 Then
        gUserData(CLng(SocketIndex)).CanEmail = True
    Else
        gUserData(CLng(SocketIndex)).CanEmail = False
    End If

    ' Permission: resetvoters - reset poll voters
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",resetvoters") > 0 Then
        gUserData(CLng(SocketIndex)).CanResetVoters = True
    Else
        gUserData(CLng(SocketIndex)).CanResetVoters = False
    End If

    ' Permission: setscores - set game scores
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",setscores") > 0 Then
        gUserData(CLng(SocketIndex)).CanSetScores = True
    Else
        gUserData(CLng(SocketIndex)).CanSetScores = False
    End If

    ' Permission: sentlog - view sent messages log
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",sentlog") > 0 Then
        gUserData(CLng(SocketIndex)).CanSentLog = True
    Else
        gUserData(CLng(SocketIndex)).CanSentLog = False
    End If

    ' Permission: clearlog - clear chat logs
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",clearlog") > 0 Then
        gUserData(CLng(SocketIndex)).CanClearLog = True
    Else
        gUserData(CLng(SocketIndex)).CanClearLog = False
    End If

    ' Permission: getclient - get client info
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",getclient") > 0 Then
        gUserData(CLng(SocketIndex)).CanGetClient = True
    Else
        gUserData(CLng(SocketIndex)).CanGetClient = False
    End If

    ' Permission: startlog - start logging
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",startlog") > 0 Then
        gUserData(CLng(SocketIndex)).CanStartLog = True
    Else
        gUserData(CLng(SocketIndex)).CanStartLog = False
    End If

    ' Permission: stoplog - stop logging
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",stoplog") > 0 Then
        gUserData(CLng(SocketIndex)).CanStopLog = True
    Else
        gUserData(CLng(SocketIndex)).CanStopLog = False
    End If

    ' Permission: jail - jail users
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",jail") > 0 Then
        gUserData(CLng(SocketIndex)).CanJail = True
    Else
        gUserData(CLng(SocketIndex)).CanJail = False
    End If

    ' Permission: givecredits - give credits to users
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",givecredits") > 0 Then
        gUserData(CLng(SocketIndex)).CanGiveCredits = True
    Else
        gUserData(CLng(SocketIndex)).CanGiveCredits = False
    End If

    ' Permission: takecredits - take credits from users
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",takecredits") > 0 Then
        gUserData(CLng(SocketIndex)).CanTakeCredits = True
    Else
        gUserData(CLng(SocketIndex)).CanTakeCredits = False
    End If

    ' Permission: clearconsole - clear console
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",clearconsole") > 0 Then
        gUserData(CLng(SocketIndex)).CanClearConsole = True
    Else
        gUserData(CLng(SocketIndex)).CanClearConsole = False
    End If

    ' Permission: clearhand - clear user hand (inventory)
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",clearhand") > 0 Then
        gUserData(CLng(SocketIndex)).CanClearHand = True
    Else
        gUserData(CLng(SocketIndex)).CanClearHand = False
    End If

    ' Permission: givedrink - give drinks to users
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",givedrink") > 0 Then
        gUserData(CLng(SocketIndex)).CanGiveDrink = True
    Else
        gUserData(CLng(SocketIndex)).CanGiveDrink = False
    End If

    ' Permission: masscredits - give credits to all users
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",masscredits") > 0 Then
        gUserData(CLng(SocketIndex)).CanMassCredits = True
    Else
        gUserData(CLng(SocketIndex)).CanMassCredits = False
    End If

    ' Permission: bot - control bots
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",bot") > 0 Then
        gUserData(CLng(SocketIndex)).CanBot = True
    Else
        gUserData(CLng(SocketIndex)).CanBot = False
    End If

    ' Permission: poll - create/manage polls
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",poll") > 0 Then
        gUserData(CLng(SocketIndex)).CanPoll = True
    Else
        gUserData(CLng(SocketIndex)).CanPoll = False
    End If

    ' Permission: group - manage groups
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",group") > 0 Then
        gUserData(CLng(SocketIndex)).CanGroup = True
    Else
        gUserData(CLng(SocketIndex)).CanGroup = False
    End If

    ' Permission: warp - warp to locations
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",warp") > 0 Then
        gUserData(CLng(SocketIndex)).CanWarp = True
    Else
        gUserData(CLng(SocketIndex)).CanWarp = False
    End If

    ' Permission: userwarp - warp users
    sRankPermissions = GetINI("rank", "speech_cmd", sRankFile)
    If InStr(1, sRankPermissions, ",userwarp") > 0 Then
        gUserData(CLng(SocketIndex)).CanUserWarp = True
    Else
        gUserData(CLng(SocketIndex)).CanUserWarp = False
    End If

    ' Continue loading more permissions...
    ' (The P-code continues with many more permission checks following the same pattern)
    ' These would include: kick, ban, mute, alert, roomalert, superban, ipban, macban,
    ' roomunmute, roomkick, globalmute, hotellock, etc.

    ' =========================================================================
    ' STEP 11: Load additional user data and send login response
    ' =========================================================================

    ' Update global user count tracking
    gLoggedInUsers = gLoggedInUsers & "<" & CStr(gUserData(CLng(SocketIndex)).UserNum) & ">"

    ' Initialize room state
    gUserData(CLng(SocketIndex)).RoomState = 0

    ' Create pool figure file if it doesn't exist
    If Not gFSO.FileExists(gAppPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\poolfigure.txt") Then
        gFSO.CreateTextFile gAppPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\poolfigure.txt", True, False
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\poolfigure.txt", 2, False, 0)
        oTextStream.Write "."
    End If

    ' Load pool figure
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\poolfigure.txt", 1, False, 0)
    gUserData(CLng(SocketIndex)).PoolFigure = oTextStream.ReadAll

    ' Initialize trade state
    gUserData(CLng(SocketIndex)).TradeState = 0

    ' Load fuse rights from rank configuration
    sFuseRights = GetINI("rank", "fuse_rights", sRankFile)

    ' Check if user has Habbo Club days and add club fuse rights
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\hcdays.txt", 1, False, 0)
    sHCDays = oTextStream.ReadAll

    If Val(sHCDays) > 0 Then
        ' User has active HC - add club fuse rights
        sFuseRights = sFuseRights & "fuse_use_club_outfitsfuse_use_club_badgefuse_use_special_room_layoutsfuse_room_queue_clubfuse_room_queue_defaultfuse_use_club_dancefuse_priority_accessfuse_habbo_chooserfuse_furni_chooserdefault"
    End If

    ' Send fuse rights packet
    SendData SocketIndex, "@B" & sFuseRights & Chr$(1)

    ' Load and send film (camera photos) count
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUsernameLower & "\film.txt", 1, False, 0)
    sFilmCount = Val(oTextStream.ReadAll)
    SendData SocketIndex, "@D" & EncodeVL64(CSng(sFilmCount)) & Chr$(1)

    ' Send authentication success packet
    SendData SocketIndex, "@C" & Chr$(1)

    ' Create logged-in user tracking file
    gFSO.CreateTextFile gAppPath & "logged\" & frmMain.SockI(SocketIndex).RemoteHostIP & ".txt", True, False
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "logged\" & frmMain.SockI(SocketIndex).RemoteHostIP & ".txt", 2, False, 0)
    oTextStream.Write gUserData(CLng(SocketIndex)).Username

    ' Check if welcome message is enabled and send it
    vWelcomeMsg = GetINI("config", "welcome_message", gSettingsFile)
    If vWelcomeMsg = "1" Then
        ' Send welcome message with online count
        SendData SocketIndex, "BKWelcome " & gUserData(CLng(SocketIndex)).Username & _
                              ", Current are " & CStr(CDbl(frmMain.lblOnlineCount.Caption) + 1) & _
                              " Peoples Online!" & Chr$(1)
    End If

CheckTags:
    ' =========================================================================
    ' Load user tags if they exist
    ' =========================================================================
    If gFSO.FileExists(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\tags.txt") Then
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\tags.txt", 1, False, 0)
        sTagsData = oTextStream.ReadAll
        gUserData(CLng(SocketIndex)).Tags = CStr(sTagsData)
    Else
        gUserData(CLng(SocketIndex)).Tags = "0"
    End If

End Function

' ============================================================================
' Proc_30_49 - HandleRoomDecoration
' Handles wallpaper and floor decoration changes in private rooms
' Processes "ABwallpaper" and "ABfloor" commands from room owners/staff
' ============================================================================
Private Function HandleRoomDecoration(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRoomOwner As Variant
    Dim sUserRank As Variant
    Dim sCommandParts() As String
    Dim sHandItems() As String
    Dim sNewHandItems As String
    Dim sFurniCust As Variant
    Dim i As Variant
    Dim sUserName As String

    ' Read the room owner from owner.txt
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Get the user's lowercase name for rank lookup
    sUserName = LCase(gUserData(CLng(SocketIndex)).Username)

    ' Read the user's rank
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUserName & "\rank.txt", 1, False, 0)
    sUserRank = oTextStream.ReadAll

    ' Check if user is room owner or has staff privileges (moderator, manager, admin)
    If (sRoomOwner = gUserData(CLng(SocketIndex)).Username) Or _
       (sUserRank = "moderator") Or (sUserRank = "manager") Or (sUserRank = "admin") Then

        ' Split the command by "/" - format is "ABwallpaper/[furniId]" or "ABfloor/[furniId]"
        sCommandParts = Split(sData, "/", -1, 0)

        ' Handle wallpaper command
        If sCommandParts(0) = "ABwallpaper" Then
            ' Read the wallpaper customization data from furni folder
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sCommandParts(1) & "\cust.txt", 1, False, 0)
            sFurniCust = oTextStream.ReadAll

            ' Broadcast wallpaper change to all users in the room
            RemoveUserFromRoom CLng(gUserData(CLng(SocketIndex)).RoomId), "@nwallpaper/" & CStr(sFurniCust) & Chr$(1)

            ' Save the wallpaper to the room's paper.txt file
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\paper.txt", 2, False, 0)
            oTextStream.Write CStr(sFurniCust)

            ' Remove the wallpaper item from user's inventory
            sNewHandItems = ";"
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 1, False, 0)
            sHandItems = Split(oTextStream.ReadAll, ";", -1, 0)

            ' Rebuild inventory without the used wallpaper item
            For i = 0 To UBound(sHandItems)
                If sHandItems(CLng(i)) <> "" And sHandItems(CLng(i)) <> sCommandParts(1) Then
                    sNewHandItems = sNewHandItems & ";" & sHandItems(CLng(i))
                End If
            Next i

            ' Clean up double semicolons and save inventory
            sNewHandItems = Replace(sNewHandItems, ";;", ";", 1, -1, 1)
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 2, False, 0)
            oTextStream.Write sNewHandItems

            ' Update user's inventory display
            Call UpdateUserInventory(SocketIndex, "AAupdate")

        ' Handle floor command
        ElseIf sCommandParts(0) = "ABfloor" Then
            ' Read the floor customization data from furni folder
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sCommandParts(1) & "\cust.txt", 1, False, 0)
            sFurniCust = oTextStream.ReadAll

            ' Broadcast floor change to all users in the room
            RemoveUserFromRoom CLng(gUserData(CLng(SocketIndex)).RoomId), "@nfloor/" & CStr(sFurniCust) & Chr$(1)

            ' Save the floor to the room's floor.txt file
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\floor.txt", 2, False, 0)
            oTextStream.Write CStr(sFurniCust)

            ' Remove the floor item from user's inventory
            sNewHandItems = ";"
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 1, False, 0)
            sHandItems = Split(oTextStream.ReadAll, ";", -1, 0)

            ' Rebuild inventory without the used floor item
            For i = 0 To UBound(sHandItems)
                If sHandItems(CLng(i)) <> "" And sHandItems(CLng(i)) <> sCommandParts(1) Then
                    sNewHandItems = sNewHandItems & ";" & sHandItems(CLng(i))
                End If
            Next i

            ' Clean up double semicolons and save inventory
            sNewHandItems = Replace(sNewHandItems, ";;", ";", 1, -1, 1)
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 2, False, 0)
            oTextStream.Write sNewHandItems

            ' Update user's inventory display
            Call UpdateUserInventory(SocketIndex, "AAupdate")
        End If
    End If
End Function

' ============================================================================
' Proc_30_50 - HandleFurniturePlacement
' Handles placing furniture items from inventory into private rooms
' Validates user rights, checks item limits (rollers, pets, sound machines)
' ============================================================================
Private Function HandleFurniturePlacement(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRoomOwner As Variant
    Dim sRoomRights As Variant
    Dim sAllRights As String
    Dim sUserRank As String
    Dim bHasRights As Variant
    Dim sCommandParts() As String
    Dim sFurniId As Variant
    Dim sFurniInRoom As String
    Dim sFurniType As String
    Dim sFurniName As String
    Dim sRoomFurni As String
    Dim aRoomFurni As Variant
    Dim aRights() As String
    Dim sRollerCount As String
    Dim sPetCount As String
    Dim sSoundMachineCount As String
    Dim sMaxRollers As String
    Dim sMaxPets As String
    Dim sAlertText As String
    Dim i As Variant
    Dim sRankFile As String
    Dim bIsSoundMachine As Boolean

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Read room rights list
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\rights.txt", 1, False, 0)
    sRoomRights = oTextStream.ReadAll

    bHasRights = Empty

    ' Check if user is room owner
    If sRoomOwner = gUserData(CLng(SocketIndex)).Username Then
        bHasRights = "ja"
    End If

    ' Check if all rights are enabled for this room
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\allrights.txt", 1, False, 0)
    sAllRights = oTextStream.ReadAll
    If sAllRights = "1" Then
        bHasRights = "ja"
    Else
        ' Check if user is in the rights list
        aRights = Split(CStr(sRoomRights), ";", -1, 0)
        For i = 0 To UBound(aRights)
            If LCase(aRights(CLng(i))) = LCase(gUserData(CLng(SocketIndex)).Username) Then
                bHasRights = "ja"
                Exit For
            End If
        Next i
    End If

    ' Check if user's rank gives them rights in any room
    sRankFile = gAppPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"
    If GetINI("rank", "rights_in_any_room", sRankFile) = "1" Then
        bHasRights = "ja"
    End If

    ' If user has rights, process furniture placement
    If bHasRights = "ja" Then
        ' Parse the command - format: "AB[furniId] [x] [y] [rotation]"
        sCommandParts = Split(Mid(sData, 3), " ", -1, 0)
        sFurniId = sCommandParts(0)

        ' Check if item is in storage (not already in a room)
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\inroom.txt", 1, False, 0)
        sFurniInRoom = oTextStream.ReadAll

        If sFurniInRoom = "0" Then
            ' Read furniture type
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\type.txt", 1, False, 0)
            sFurniType = oTextStream.ReadAll

            ' Check for roller limit
            If sFurniType = "roller" Then
                ' Count existing rollers in the room
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\furni.txt", 1, False, 0)
                sRoomFurni = oTextStream.ReadAll
                aRoomFurni = Split(sRoomFurni, ";", -1, 0)

                sRollerCount = "0"
                For Each i In aRoomFurni
                    If CStr(i) <> "" Then
                        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(i) & "\type.txt", 1, False, 0)
                        If oTextStream.ReadAll = "roller" Then
                            sRollerCount = CStr(Val(sRollerCount) + 1)
                        End If
                    End If
                Next i

                ' Check against max rollers setting
                sMaxRollers = GetINI("config", "maxrollersinroom", gSettingsFile)
                If Val(sRollerCount) >= Val(sMaxRollers) And gUserData(CLng(SocketIndex)).Rank = "habbo" Then
                    sAlertText = GetLocaleString("too_many_rollers_in_room_alert")
                    sAlertText = Replace(sAlertText, "%max%", sMaxRollers, 1, -1, 1)
                    SendData SocketIndex, "BK" & sAlertText & Chr$(1)
                    Call UpdateUserInventory(SocketIndex, "AAupdate")
                    Exit Function
                End If
            Else
                ' Check for pet (nest) limit
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\name.txt", 1, False, 0)
                sFurniName = oTextStream.ReadAll

                If sFurniName = "nest" Then
                    ' Count existing pets/nests in the room
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\furni.txt", 1, False, 0)
                    sRoomFurni = oTextStream.ReadAll
                    aRoomFurni = Split(sRoomFurni, ";", -1, 0)

                    sPetCount = "0"
                    For Each i In aRoomFurni
                        If CStr(i) <> "" Then
                            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(i) & "\name.txt", 1, False, 0)
                            If oTextStream.ReadAll = "nest" Then
                                sPetCount = CStr(Val(sPetCount) + 1)
                            End If
                        End If
                    Next i

                    ' Check against max pets setting
                    sMaxPets = GetINI("config", "maxpetsinroom", gSettingsFile)
                    If Val(sPetCount) >= Val(sMaxPets) And gUserData(CLng(SocketIndex)).Rank = "habbo" Then
                        SendData SocketIndex, "BK" & GetLocaleString("too_many_pets_in_room_alert") & Chr$(1)
                        Call UpdateUserInventory(SocketIndex, "AAupdate")
                        Exit Function
                    End If
                End If
            End If

            ' Check for sound machine limit (only 1 per room)
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\name.txt", 1, False, 0)
            sFurniName = oTextStream.ReadAll

            ' Check if it's any sound machine variant (sound_machine*1 through sound_machine*7)
            bIsSoundMachine = (sFurniName = "sound_machine*1") Or _
                              (sFurniName = "sound_machine*2") Or _
                              (sFurniName = "sound_machine*3") Or _
                              (sFurniName = "sound_machine*4") Or _
                              (sFurniName = "sound_machine*5") Or _
                              (sFurniName = "sound_machine*6") Or _
                              (sFurniName = "sound_machine*7")

            If bIsSoundMachine Then
                ' Count existing sound machines in the room
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\furni.txt", 1, False, 0)
                sRoomFurni = oTextStream.ReadAll
                aRoomFurni = Split(sRoomFurni, ";", -1, 0)

                sSoundMachineCount = "0"
                For Each i In aRoomFurni
                    If CStr(i) <> "" Then
                        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(i) & "\name.txt", 1, False, 0)
                        sFurniName = oTextStream.ReadAll
                        If sFurniName = "sound_machine*1" Or sFurniName = "sound_machine*2" Or _
                           sFurniName = "sound_machine*3" Or sFurniName = "sound_machine*4" Or _
                           sFurniName = "sound_machine*5" Or sFurniName = "sound_machine*6" Or _
                           sFurniName = "sound_machine*7" Then
                            sSoundMachineCount = CStr(Val(sSoundMachineCount) + 1)
                        End If
                    End If
                Next i

                ' Only 1 sound machine allowed per room
                If Val(sSoundMachineCount) >= 1 Then
                    SendData SocketIndex, "BK" & GetLocaleString("trax_one_room") & Chr$(1)
                    Call UpdateUserInventory(SocketIndex, "AAupdate")
                    Exit Function
                End If
            End If

            ' Continue with standard furniture placement...
            ' (Wall items, post-its, and regular furniture are handled in subsequent logic)
        End If
    End If
End Function

' ============================================================================
' Proc_30_51 - HandleAdminItemCreation
' Admin function to create/spawn new furniture items in rooms
' Processes "ACnew item [furniId]" command for admins/managers
' ============================================================================
Private Function HandleAdminItemCreation(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRoomOwner As Variant
    Dim sUserRank As Variant
    Dim sFurniId As Variant
    Dim sFurniName As Variant
    Dim sRoomFurni As Variant
    Dim aRoomFurni As Variant
    Dim sNewFurniList As Variant
    Dim sHandItems As Variant
    Dim sNewHandItems As Variant
    Dim i As Variant
    Dim sUserName As String

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Get user's lowercase name and rank
    sUserName = LCase(gUserData(CLng(SocketIndex)).Username)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sUserName & "\rank.txt", 1, False, 0)
    sUserRank = oTextStream.ReadAll

    ' Only room owner, admins, or managers can create items
    If (sRoomOwner = gUserData(CLng(SocketIndex)).Username) Or _
       (sUserRank = "admin") Or (sUserRank = "manager") Then

        ' Check for "ACnew item " command prefix (11 characters)
        If Mid(sData, 1, 11) = "ACnew item " Then
            ' Extract furniture ID from command
            sFurniId = Mid(sData, 12)

            ' Read the item name to determine type
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\name.txt", 1, False, 0)
            sFurniName = oTextStream.ReadAll

            ' Special handling for post-it notes - initialize with default values
            If sFurniName = "post.it" Then
                ' Set initial post-it count to 1
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\cust.txt", 2, False, 0)
                oTextStream.Write "1"

                ' Mark as not in room (in inventory)
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\inroom.txt", 2, False, 0)
                oTextStream.Write "0"

                ' Set as inventory item type
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\is.txt", 2, False, 0)
                oTextStream.Write "I"

                ' Clear location
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\loc.txt", 2, False, 0)
                oTextStream.Write ""

                ' Set name
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\name.txt", 2, False, 0)
                oTextStream.Write "post.it"

                ' Set type as poster (wall item)
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\type.txt", 2, False, 0)
                oTextStream.Write "poster"

                ' Set default variable/state
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\var.txt", 2, False, 0)
                oTextStream.Write "H"
            End If

            ' Notify all users in room of new item
            RemoveUserFromRoom CLng(gUserData(CLng(SocketIndex)).RoomId), "AT" & CStr(sFurniId) & Chr$(1)

            ' Add item to room's furniture list
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\furni.txt", 1, False, 0)
            sRoomFurni = oTextStream.ReadAll
            aRoomFurni = Split(CStr(sRoomFurni), ";", -1, 0)

            ' Rebuild furniture list without duplicates
            sNewFurniList = ";"
            For Each i In aRoomFurni
                If CStr(i) <> "" And CStr(i) <> CStr(sFurniId) Then
                    sNewFurniList = sNewFurniList & ";" & CStr(i)
                End If
            Next i
            sNewFurniList = Replace(CStr(sNewFurniList), ";;", ";", 1, -1, 1)

            ' Save updated room furniture list
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\furni.txt", 2, False, 0)
            oTextStream.Write CStr(sNewFurniList)

            ' Add item to user's hand/inventory
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 1, False, 0)
            sHandItems = oTextStream.ReadAll

            ' Append new item and clean up
            sNewHandItems = sHandItems & ";" & CStr(sFurniId)
            sNewHandItems = Replace(CStr(sNewHandItems), ";;", ";", 1, -1, 1)

            ' Save updated inventory
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 2, False, 0)
            oTextStream.Write CStr(sNewHandItems)
        End If
    End If
End Function

' ============================================================================
' Proc_30_52 - HandleFurnitureMovement
' Handles moving furniture within a private room
' Validates user rights and updates furniture location/rotation
' ============================================================================
Private Function HandleFurnitureMovement(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRoomOwner As Variant
    Dim sRoomRights As Variant
    Dim sAllRights As String
    Dim bHasRights As Variant
    Dim sCommandParts() As String
    Dim sFurniId As Variant
    Dim vNewX As Variant
    Dim vNewY As Variant
    Dim vNewRotation As Variant
    Dim sFurniCust As Variant
    Dim sFurniInRoom As Variant
    Dim sFurniLoc As String
    Dim aFurniLoc As Variant
    Dim sFurniType As Variant
    Dim sShTmp As Variant
    Dim sWalkData As Variant
    Dim sFurniVar As Variant
    Dim vOldX As Variant
    Dim vOldY As Variant
    Dim aRights() As String
    Dim sRankFile As String
    Dim i As Variant
    Dim sOrientation As Variant
    Dim sRotationData As String

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Read room rights list
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\rights.txt", 1, False, 0)
    sRoomRights = oTextStream.ReadAll

    bHasRights = Empty

    ' Check if user is room owner
    If sRoomOwner = gUserData(CLng(SocketIndex)).Username Then
        bHasRights = "ja"
    End If

    ' Check if all rights are enabled
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\allrights.txt", 1, False, 0)
    sAllRights = oTextStream.ReadAll
    If sAllRights = "1" Then
        bHasRights = "ja"
    Else
        ' Check if user is in the rights list
        aRights = Split(CStr(sRoomRights), ";", -1, 0)
        For i = 0 To UBound(aRights)
            If aRights(CLng(i)) = gUserData(CLng(SocketIndex)).Username Then
                bHasRights = "ja"
                Exit For
            End If
        Next i
    End If

    ' Check if user's rank gives them rights
    sRankFile = gAppPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"
    If GetINI("rank", "rights_in_any_room", sRankFile) = "1" Then
        bHasRights = "ja"
    End If

    ' If user has rights, process furniture movement
    If bHasRights = "ja" Then
        ' Parse command: format is "[furniId] [x] [y] [rotation]"
        sCommandParts = Split(sData, " ", -1, 0)
        sFurniId = Mid(sCommandParts(0), 3)  ' Remove "AB" prefix
        vNewX = Val(sCommandParts(1))
        vNewY = Val(sCommandParts(2))
        vNewRotation = Val(sCommandParts(3))

        ' Read furniture data files
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\cust.txt", 1, False, 0)
        sFurniCust = oTextStream.ReadAll

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\inroom.txt", 1, False, 0)
        sFurniInRoom = oTextStream.ReadAll

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\loc.txt", 1, False, 0)
        sFurniLoc = oTextStream.ReadAll
        aFurniLoc = Split(sFurniLoc, " ", -1, 0)

        ' Read room heightmap and walkability data
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\shtmp.txt", 1, False, 0)
        sShTmp = oTextStream.ReadAll

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\walk.txt", 1, False, 0)
        sWalkData = oTextStream.ReadAll

        ' Read furniture type
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\type.txt", 1, False, 0)
        sFurniType = oTextStream.ReadAll

        sOrientation = "O"

        ' Get old coordinates
        vOldX = Val(CStr(aFurniLoc(0)))
        vOldY = Val(CStr(aFurniLoc(1)))

        ' Check if position has changed
        If (vOldX <> vNewX) Or (vOldY <> vNewY) Then
            ' Read furniture variable/state data
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\var.txt", 1, False, 0)
            sFurniVar = oTextStream.ReadAll

            ' Special handling for rollers - check rotation data
            If sFurniType = "roller" Then
                sRotationData = GetINI("furnies", CStr(vNewX) & "," & CStr(vNewY), _
                               gAppPath & "privaterooms\" & CStr(sFurniInRoom) & "\rotation.txt")

                ' Update furniture location
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sFurniId) & "\loc.txt", 2, False, 0)
                oTextStream.Write CStr(vNewX) & " " & CStr(vNewY) & " " & CStr(vNewRotation)
            End If
        End If
    End If
End Function

' ============================================================================
' CheckUserRoomRights - Helper function to check if user has rights in room
' Returns "ja" if user has rights, Empty otherwise
' ============================================================================
Private Function CheckUserRoomRights(ByVal SocketIndex As Integer) As Variant
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRoomOwner As Variant
    Dim sRoomRights As Variant
    Dim sAllRights As String
    Dim aRights() As String
    Dim sRankFile As String
    Dim i As Variant

    CheckUserRoomRights = Empty

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Read room rights list
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\rights.txt", 1, False, 0)
    sRoomRights = oTextStream.ReadAll

    ' Check if user is room owner
    If sRoomOwner = gUserData(CLng(SocketIndex)).Username Then
        CheckUserRoomRights = "ja"
        Exit Function
    End If

    ' Check if all rights are enabled for this room
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\allrights.txt", 1, False, 0)
    sAllRights = oTextStream.ReadAll
    If sAllRights = "1" Then
        CheckUserRoomRights = "ja"
        Exit Function
    End If

    ' Check if user is in the rights list
    aRights = Split(CStr(sRoomRights), ";", -1, 0)
    For i = 0 To UBound(aRights)
        If LCase(aRights(CLng(i))) = LCase(gUserData(CLng(SocketIndex)).Username) Then
            CheckUserRoomRights = "ja"
            Exit Function
        End If
    Next i

    ' Check if user's rank gives them rights in any room
    sRankFile = gAppPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"
    If GetINI("rank", "rights_in_any_room", sRankFile) = "1" Then
        CheckUserRoomRights = "ja"
    End If
End Function

' ============================================================================
' UpdateUserInventory - Refreshes a user's hand/inventory display
' Called after inventory changes to sync client with server state
' ============================================================================
Private Function UpdateUserInventory(ByVal SocketIndex As Integer, ByVal sUpdateType As String)
    On Error Resume Next

    ' This function calls the inventory packet builder to refresh the client's
    ' view of their inventory after changes (adding/removing items)
    ' The actual implementation sends the appropriate Habbo protocol packets

    Dim oTextStream As Object
    Dim sHandItems As String
    Dim aHandItems() As String
    Dim sPacket As String
    Dim i As Long
    Dim sFurniName As String
    Dim sFurniType As String

    ' Read user's inventory
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 1, False, 0)
    sHandItems = oTextStream.ReadAll

    ' Build and send inventory update packet
    ' The packet format depends on Habbo protocol version
    SendData SocketIndex, sUpdateType & Chr$(1)
End Function

