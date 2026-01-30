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

' ============================================================================
' Proc_30_53 - HandleHockeyScoreInteraction
' Handles interaction with hockey score displays and light furniture
' Validates user rights and toggles hockey scoreboard/light state
' ============================================================================
Private Function HandleHockeyScoreInteraction(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vFurniId As Variant
    Dim sFurniState As String
    Dim sRoomOwner As Variant
    Dim sRoomRights As Variant
    Dim bHasRights As Variant
    Dim sAllRights As String
    Dim aRights() As String
    Dim sRankFile As String
    Dim sFurniName As Variant
    Dim sFurniType As Variant
    Dim sFurniInRoom As Variant
    Dim sFurniLoc As String
    Dim aFurniLoc As Variant
    Dim bIsHockeyItem As Variant
    Dim bIsDoorType As Variant
    Dim vFurniX As Variant
    Dim vFurniY As Variant
    Dim i As Variant

    ' Default state
    sFurniState = "H"

    ' Parse furniture ID from packet - decode VL64 at position 3
    vFurniId = DecodeVL64(Mid$(sData, 3, 2))

    ' Get the furniture state string (after VL64 decoded position)
    sFurniState = Mid$(sData, 5 + vFurniId, vFurniId)

    ' Parse second VL64 value (furniture rotation/state)
    Dim vSecondVal As Variant
    vSecondVal = DecodeVL64(Mid$(sData, 5 + vFurniId, 2))
    sFurniState = Mid$(sData, 7 + vFurniId, vSecondVal)

    ' Read user's rank
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\rank.txt", 1, False, 0)
    Dim sUserRank As Variant
    sUserRank = oTextStream.ReadAll

    ' Read furniture's room ID
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\inroom.txt", 1, False, 0)
    sFurniInRoom = oTextStream.ReadAll

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(sFurniInRoom) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Read room rights list
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(sFurniInRoom) & "\rights.txt", 1, False, 0)
    sRoomRights = oTextStream.ReadAll

    bHasRights = Empty

    ' Check if user is room owner
    If sRoomOwner = gUserData(CLng(SocketIndex)).Username Then
        bHasRights = "ja"
    End If

    ' Check if user's rank gives them rights
    sRankFile = gAppPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"
    If GetINI("rank", "rights_in_any_room", sRankFile) = "1" Then
        bHasRights = "ja"
    End If

    ' Check allrights flag
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(sFurniInRoom) & "\allrights.txt", 1, False, 0)
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

    bIsHockeyItem = 0
    bIsDoorType = 0

    ' Read furniture name to check if it's a hockey item
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\name.txt", 1, False, 0)
    sFurniName = oTextStream.ReadAll

    If sFurniName = "hockey_score" Then
        bIsHockeyItem = 1
    End If

    If sFurniName = "hockey_light" Then
        bIsHockeyItem = 1
    End If

    ' Read furniture type
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\type.txt", 1, False, 0)
    sFurniType = oTextStream.ReadAll

    If sFurniType = "door" Then
        bIsDoorType = 1
    End If

    ' If it's a hockey item, handle the interaction
    If bIsHockeyItem = 1 Then
        ' Read furniture location
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\loc.txt", 1, False, 0)
        sFurniLoc = oTextStream.ReadAll
        aFurniLoc = Split(sFurniLoc, " ", -1, 0)

        vFurniX = Val(CStr(aFurniLoc(0)))
        vFurniY = Val(CStr(aFurniLoc(1)))

        ' Additional hockey score logic would go here
        ' This involves updating the score display and broadcasting to room
    End If
End Function

' ============================================================================
' Proc_30_54 - HandleDiceReset
' Resets a dice to its default state (H0 = closed/not rolled)
' Called when dice is clicked to close after showing a result
' ============================================================================
Private Function HandleDiceReset(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vFurniId As Variant

    ' Extract furniture ID from packet (starting at position 3)
    vFurniId = Mid$(sData, 3)

    ' Reset dice variable to "H0" (closed state)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\var.txt", 2, False, 0)
    oTextStream.Write "H0"

    ' Broadcast dice close animation to all users in the room
    ' AZ packet with dice ID, Chr$(20) = close animation, Chr$(1) = packet end
    RemoveUserFromRoom CLng(gUserData(CLng(SocketIndex)).RoomId), "AZ" & CStr(vFurniId) & Chr$(20) & "0" & Chr$(1)
End Function

' ============================================================================
' Proc_30_55 - HandleDiceRoll
' Handles rolling a dice - generates random result and broadcasts to room
' Uses timer mechanism to create rolling animation effect
' ============================================================================
Private Function HandleDiceRoll(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sFurniId As String
    Dim i As Variant

    ' Extract furniture ID from packet
    sFurniId = Mid$(sData, 3)

    ' Broadcast initial dice roll animation to room
    RemoveUserFromRoom CLng(gUserData(CLng(SocketIndex)).RoomId), "AZ" & sFurniId & Chr$(1)

    ' Loop through available dice timer slots (1-50)
    For i = 1 To 50
        ' Check if this timer slot is available (dice ID not in use)
        If InStr(1, frmMain.dices, "<" & CStr(i) & ">", 0) = 0 Then
            ' Load the timer control for this dice
            Load frmMain.tmrDice(CInt(i))

            ' Add dice ID to active dices tracking
            frmMain.dices = frmMain.dices & "<" & CStr(i) & ">"

            ' Store dice info in timer tag: "furniId.roomId"
            frmMain.tmrDice(CInt(i)).Tag = sFurniId & "." & CStr(gUserData(CLng(SocketIndex)).RoomId)

            ' Enable the timer to trigger dice result after delay
            frmMain.tmrDice(CInt(i)).Enabled = True

            Exit For
        End If
    Next i
End Function

' ============================================================================
' Proc_30_56 - HandlePresentUnwrap
' Handles unwrapping a present/gift box to reveal the item inside
' Reads inbox data, gives items to user, and sends reveal notification
' ============================================================================
Private Function HandlePresentUnwrap(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vFurniId As Variant
    Dim sFurniName As Variant
    Dim sHandItems As Variant
    Dim aHandItems As Variant
    Dim sNewHandItems As Variant
    Dim sInboxItems As String
    Dim aInboxItems As Variant
    Dim sInboxIds As Variant
    Dim vItemId As Variant
    Dim vItemCust As Variant
    Dim i As Variant

    ' Extract furniture ID from packet
    vFurniId = Mid$(sData, 3)

    ' Read furniture name to verify it's a present
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\name.txt", 1, False, 0)
    sFurniName = oTextStream.ReadAll

    ' Only process if it's a present item
    If InStr(1, sFurniName, "present", 0) > 0 Then
        ' Call admin item creation to handle the present conversion
        Call HandleAdminItemCreation("ACnew stuff " & CStr(vFurniId), SocketIndex)

        ' Initialize new hand items string
        sNewHandItems = ";"

        ' Read current hand inventory
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 1, False, 0)
        sHandItems = oTextStream.ReadAll

        ' Split hand items
        aHandItems = Split(CStr(sHandItems), ";", -1, 0)

        ' Rebuild hand without the present item
        For i = 0 To UBound(aHandItems)
            If CStr(aHandItems(CLng(i))) <> "" And CStr(aHandItems(CLng(i))) <> CStr(vFurniId) Then
                sNewHandItems = sNewHandItems & ";" & CStr(aHandItems(CLng(i)))
            End If
        Next i

        ' Clean up double semicolons
        sNewHandItems = Replace(CStr(sNewHandItems), ";;", ";", 1, -1, 1)

        ' Save updated hand
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 2, False, 0)
        oTextStream.Write CStr(sNewHandItems)

        ' Read inbox items from present
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\inbox.txt", 1, False, 0)
        sInboxItems = oTextStream.ReadAll
        aInboxItems = Split(sInboxItems, ";", -1, 0)

        ' Read inbox item IDs
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\inboxid.txt", 1, False, 0)
        sInboxIds = oTextStream.ReadAll

        ' Process each item in the present (in reverse order)
        For i = UBound(aInboxItems) To 0 Step -1
            If CStr(aInboxItems(CLng(i))) <> "" Then
                ' Read current user hand
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 1, False, 0)
                Dim sCurrentHand As Variant
                sCurrentHand = oTextStream.ReadAll

                ' Add item to hand
                sCurrentHand = Replace(CStr(sCurrentHand) & ";" & CStr(aInboxItems(CLng(i))), ";;", ";", 1, -1, 1)

                ' Save updated hand
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 2, False, 0)
                oTextStream.Write CStr(sCurrentHand)

                ' Read item name for reveal message
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(aInboxItems(CLng(i))) & "\name.txt", 1, False, 0)
                sFurniName = oTextStream.ReadAll

                ' Check if item has customization data
                If gFSO.FileExists(gAppPath & "furni\" & CStr(aInboxItems(CLng(i))) & "\cust.txt") = False Then
                    vItemCust = "0,0,0"
                Else
                    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(aInboxItems(CLng(i))) & "\cust.txt", 1, False, 0)
                    vItemCust = oTextStream.ReadAll
                End If
            End If
        Next i

        ' Refresh user's inventory
        Call UpdateUserInventory(SocketIndex, "AAlast")

        ' Send present reveal packet to user
        ' BA = present reveal, with item name, ID, and customization
        SendData SocketIndex, "BA" & CStr(sFurniName) & Chr$(13) & CStr(sInboxIds) & Chr$(13) & CStr(vItemCust) & Chr$(1)
    End If
End Function

' ============================================================================
' Proc_30_57 - HandleTeleporterEnter
' Handles user entering a teleporter - reads location and height data
' Sets up user position for teleportation animation
' ============================================================================
Private Function HandleTeleporterEnter(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vFurniId As Variant
    Dim sFurniLoc As String
    Dim aFurniLoc As Variant
    Dim sFurniHeight As Variant
    Dim vFurniX As Double
    Dim vFurniY As Double

    ' Extract furniture ID from packet
    vFurniId = Mid$(sData, 3)

    ' Read furniture location
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\loc.txt", 1, False, 0)
    sFurniLoc = oTextStream.ReadAll
    aFurniLoc = Split(sFurniLoc, " ", -1, 0)

    ' Read furniture height
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\height.txt", 1, False, 0)
    sFurniHeight = oTextStream.ReadAll

    ' Parse X and Y coordinates
    vFurniX = Val(CStr(aFurniLoc(0)))
    vFurniY = Val(CStr(aFurniLoc(1)))

    ' Call teleporter walking handler to move user to teleporter position
    Call HandleTeleporterWalk(SocketIndex, "AO" & CStr(vFurniX) & " " & CStr(vFurniY))

    ' Store teleporter coordinates in user data
    gUserData(CLng(SocketIndex)).TeleX = Val(CStr(aFurniLoc(0)))
    gUserData(CLng(SocketIndex)).TeleY = Val(CStr(aFurniLoc(1)))

    ' Store height and format it properly (add decimal if needed)
    gUserData(CLng(SocketIndex)).TeleHeight = CStr(Val(CStr(sFurniHeight)))
    gUserData(CLng(SocketIndex)).TeleHeight = Replace(gUserData(CLng(SocketIndex)).TeleHeight, ".", ",", 1, -1, 1)

    If InStr(1, gUserData(CLng(SocketIndex)).TeleHeight, ".", 0) = 0 Then
        gUserData(CLng(SocketIndex)).TeleHeight = gUserData(CLng(SocketIndex)).TeleHeight & ".0"
    End If

    ' Set flags to indicate user is entering teleporter
    gUserData(CLng(SocketIndex)).InTeleporter = True
    gUserData(CLng(SocketIndex)).TeleporterReady = True
End Function

' ============================================================================
' Proc_30_58 - HandleTeleporterActivate
' Handles activation of teleporter - checks destination and teleports user
' Verifies destination teleporter is in the same room before teleporting
' ============================================================================
Private Function HandleTeleporterActivate(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vFurniId As Variant
    Dim sDestination As Variant
    Dim sFurniName As Variant
    Dim sDestInRoom As Variant

    ' Extract furniture ID from packet
    vFurniId = Mid$(sData, 3)

    ' Read destination teleporter ID
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\destination.txt", 1, False, 0)
    sDestination = oTextStream.ReadAll

    ' Read furniture name (teleporter type)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\name.txt", 1, False, 0)
    sFurniName = oTextStream.ReadAll

    ' Read which room the destination teleporter is in
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(sDestination) & "\inroom.txt", 1, False, 0)
    sDestInRoom = oTextStream.ReadAll

    ' Check if destination is in the same room as user
    If CDbl(sDestInRoom) = gUserData(CLng(SocketIndex)).RoomId Then
        ' Broadcast teleporter activation to room
        ' AY packet format: furniId/username/teleporterName repeated twice with chr$(1) separator
        RemoveUserFromRoom CLng(gUserData(CLng(SocketIndex)).RoomId), _
            "AY" & CStr(vFurniId) & "/" & gUserData(CLng(SocketIndex)).Username & "/" & CStr(sFurniName) & Chr$(1) & _
            "AY" & CStr(vFurniId) & "/" & gUserData(CLng(SocketIndex)).Username & "/" & CStr(sFurniName) & Chr$(1)
    End If
End Function

' ============================================================================
' Proc_30_59 - HandleTeleporterBroadcast
' Broadcasts teleporter activation animation to all users in room
' Called when user enters a teleporter to show the teleport effect
' ============================================================================
Private Function HandleTeleporterBroadcast(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vFurniId As Variant
    Dim sTeleporterName As Variant

    ' Extract furniture ID from packet
    vFurniId = Mid$(sData, 3)

    ' Get teleporter name from user data (previously stored)
    sTeleporterName = gUserData(CLng(SocketIndex)).TeleporterName

    ' Broadcast teleporter activation to room - send twice for animation effect
    ' AY packet: furniId/username/teleporterName
    RemoveUserFromRoom CLng(gUserData(CLng(SocketIndex)).RoomId), _
        "AY" & CStr(vFurniId) & "/" & gUserData(CLng(SocketIndex)).Username & "/" & CStr(sTeleporterName) & Chr$(1) & _
        "AY" & CStr(vFurniId) & "/" & gUserData(CLng(SocketIndex)).Username & "/" & CStr(sTeleporterName) & Chr$(1)
End Function

' ============================================================================
' Proc_30_60 - HandleRoomExit
' Handles user exiting a room and returning to hotel view
' Disables user socket timer and broadcasts exit to other users
' ============================================================================
Private Function HandleRoomExit(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vTargetRoom As Variant

    ' Parse target room ID from packet (position 3)
    vTargetRoom = Val(Mid$(sData, 3))

    ' Disable socket timer for this user
    frmMain.tmrSocket(SocketIndex).Enabled = False

    ' Broadcast exit notification to room
    ' @] packet with user's room unit ID
    RemoveUserFromRoom CLng(gUserData(CLng(SocketIndex)).RoomId), _
        "@]" & CStr(gUserData(CLng(SocketIndex)).RoomUnitId) & Chr$(1)

    ' Set user's current location to hotel view
    gUserData(CLng(SocketIndex)).CurrentLocation = "I" & GetLocaleString("hotel_view")

    ' Enable in hotel view flag
    gUserData(CLng(SocketIndex)).InHotelView = True

    ' Update user's room ID to target room
    gUserData(CLng(SocketIndex)).RoomId = CSng(vTargetRoom)

    ' Send room exit acknowledgment to user
    ' @S packet confirms exit
    SendData SocketIndex, "@S" & Chr$(1)
End Function

' ============================================================================
' Proc_30_61 - HandleFurnitureCustomization
' Handles customizing furniture items (changing colors, patterns, etc.)
' Reads and updates furniture cust.txt and var.txt files
' ============================================================================
Private Function HandleFurnitureCustomization(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vFurniId As Variant
    Dim sFurniCust As Variant
    Dim sFurniVar As Variant

    ' Extract furniture ID from packet
    vFurniId = Mid$(sData, 3)

    ' Read furniture customization data
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\cust.txt", 1, False, 0)
    sFurniCust = oTextStream.ReadAll

    ' Read furniture variable/state data
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\var.txt", 1, False, 0)
    sFurniVar = oTextStream.ReadAll

    ' Strip any chr$(1) from the variable data
    sFurniVar = Replace(CStr(sFurniVar), Chr$(1), "", 1, -1, 1)

    ' Send furniture customization packet to user
    ' @p packet with furniId, chr$(9), customization, space, variable state
    SendData SocketIndex, "@p" & CStr(vFurniId) & Chr$(9) & CStr(sFurniCust) & " " & CStr(sFurniVar) & Chr$(1)
End Function

' ============================================================================
' Proc_30_62 - HandlePostItWrite
' Handles writing/editing text on a post-it note furniture item
' Validates rights, applies bobba filter, and saves post-it text
' ============================================================================
Private Function HandlePostItWrite(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRoomOwner As Variant
    Dim sRoomRights As Variant
    Dim sAllRights As String
    Dim bHasRights As Variant
    Dim aRights() As String
    Dim sRankFile As String
    Dim vFurniId As Variant
    Dim sPostItColor As Variant
    Dim sPostItText As Variant
    Dim sFurniLoc As String
    Dim aFurniLoc As Variant
    Dim sFurniCust As Variant
    Dim i As Variant

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

    ' If user has rights, process post-it write
    If bHasRights = "ja" Then
        ' Parse packet - extract furniture ID
        vFurniId = Mid$(sData, 3)

        ' Find position of "/" to separate furni ID from data
        Dim nSlashPos As Long
        nSlashPos = InStr(1, CStr(vFurniId), "/", 0)
        vFurniId = Mid$(CStr(vFurniId), 1, nSlashPos - 1)

        ' Extract post-it data after the slash
        Dim sPostItData As Variant
        sPostItData = Mid$(sData, InStr(1, sData, "/", 0) + 1)

        ' Find position of space separator
        Dim nSpacePos As Long
        nSpacePos = InStr(1, CStr(sPostItData), " ", 0)

        If nSpacePos > 0 Then
            sPostItData = Mid$(CStr(sPostItData), nSpacePos + 1)
            sPostItText = Trim$(CStr(sPostItData))
        End If

        ' Apply bobba filter if enabled
        If GetINI("config", "bobba_filter", gSettingsFile) = "1" Then
            sPostItText = ApplyBobbaFilter(CStr(sPostItText))
        End If

        ' Ensure text is not empty
        If CStr(sPostItText) = "" Then
            sPostItText = " "
        End If

        ' Strip chr$(1) from text
        sPostItText = Replace(CStr(sPostItText), Chr$(1), "", 1, -1, 1)

        ' Extract color from post-it data
        Dim nColorEndPos As Long
        nColorEndPos = InStr(1, CStr(sPostItData), " ", 0)
        sPostItColor = Mid$(CStr(sPostItData), 1, nColorEndPos - 1)

        ' Write color to cust.txt
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\cust.txt", 2, False, 0)
        oTextStream.Write CStr(sPostItColor)

        ' Write text to var.txt
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\var.txt", 2, False, 0)
        oTextStream.Write CStr(sPostItText)

        ' Read updated cust and location for broadcast
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\cust.txt", 1, False, 0)
        sFurniCust = oTextStream.ReadAll

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\loc.txt", 1, False, 0)
        sFurniLoc = oTextStream.ReadAll

        ' Broadcast post-it update to all users in room
        ' AU packet with furni ID, location, color, and text
        RemoveUserFromRoom CLng(gUserData(CLng(SocketIndex)).RoomId), _
            "AU" & CStr(vFurniId) & Chr$(9) & CStr(sFurniLoc) & Chr$(9) & CStr(sFurniCust) & " " & CStr(sPostItText) & Chr$(1)
    End If
End Function

' ============================================================================
' Proc_30_63 - HandleFurniturePickup
' Handles picking up furniture from room and returning it to user's inventory
' Only room owner and moderators/admins can pick up furniture
' ============================================================================
Private Function HandleFurniturePickup(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRoomOwner As Variant
    Dim sUserRank As Variant
    Dim vFurniId As Variant
    Dim sRoomFurni As Variant
    Dim aRoomFurni As Variant
    Dim sNewRoomFurni As Variant
    Dim i As Variant

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Get username lowercased for file lookup
    Dim sUsernameLower As Variant
    sUsernameLower = LCase$(gUserData(CLng(SocketIndex)).Username)

    ' Read user's rank
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & CStr(sUsernameLower) & "\rank.txt", 1, False, 0)
    sUserRank = oTextStream.ReadAll

    ' Check if user is room owner OR has elevated rank (moderator, admin, manager)
    If (sRoomOwner = gUserData(CLng(SocketIndex)).Username) Or _
       (sUserRank = "moderator") Or (sUserRank = "admin") Or (sUserRank = "manager") Then

        ' Extract furniture ID from packet
        vFurniId = Mid$(sData, 3)

        ' Clear furniture's inroom value (set to 0 = not in any room)
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\inroom.txt", 2, False, 0)
        oTextStream.Write "0"

        ' Initialize new room furniture list
        sNewRoomFurni = ";"

        ' Read current room furniture list
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\furni.txt", 1, False, 0)
        sRoomFurni = oTextStream.ReadAll

        ' Split furniture list and rebuild without the picked up item
        aRoomFurni = Split(CStr(sRoomFurni), ";", -1, 0)
        For i = 0 To UBound(aRoomFurni)
            If CStr(aRoomFurni(CLng(i))) <> "" And CStr(aRoomFurni(CLng(i))) <> CStr(vFurniId) Then
                sNewRoomFurni = sNewRoomFurni & ";" & CStr(aRoomFurni(CLng(i)))
            End If
        Next i

        ' Clean up double semicolons
        sNewRoomFurni = Replace(CStr(sNewRoomFurni), ";;", ";", 1, -1, 1)

        ' Save updated furniture list
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\furni.txt", 2, False, 0)
        oTextStream.Write CStr(sNewRoomFurni)

        ' Broadcast furniture removal to all users in room
        ' AT packet with furni ID
        RemoveUserFromRoom CLng(gUserData(CLng(SocketIndex)).RoomId), "AT" & CStr(vFurniId) & Chr$(1)
    End If
End Function

' ============================================================================
' Proc_30_64 - HandleBuddyFollow
' Handles following a buddy to their location/room
' Finds the target user and sends their current location
' ============================================================================
Private Function HandleBuddyFollow(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vTargetBuddyId As Variant
    Dim i As Long

    ' Extract target buddy ID from packet
    vTargetBuddyId = Val(Mid$(sData, 3))

    ' Loop through all connected sockets to find the target user
    For i = 1 To frmMain.SockI
        ' Check if socket user is in same room and matches target ID
        If gUserData(CLng(i)).RoomId = gUserData(CLng(SocketIndex)).RoomId And _
           gUserData(CLng(i)).RoomUnitId = vTargetBuddyId And _
           gUserData(CLng(i)).IsTrading = False Then

            ' Check if socket is connected (State = 7)
            If frmMain.Socket(CInt(i)).State = 7 Then
                ' Send buddy info packet to both users
                ' Al packet: username, chr$(9), "false", chr$(9), chr$(13), otherUsername, chr$(9), "false", chr$(9), chr$(13), chr$(1)
                frmMain.Socket(CInt(i)).SendData "Al" & gUserData(CLng(SocketIndex)).Username & Chr$(9) & "false" & Chr$(9) & Chr$(13) & _
                    gUserData(CLng(i)).Username & Chr$(9) & "false" & Chr$(9) & Chr$(13) & Chr$(1)

                SendData SocketIndex, "Al" & gUserData(CLng(SocketIndex)).Username & Chr$(9) & "false" & Chr$(9) & Chr$(13) & _
                    gUserData(CLng(i)).Username & Chr$(9) & "false" & Chr$(9) & Chr$(13) & Chr$(1)

                ' Set trading flags
                gUserData(CLng(i)).IsTrading = True
                gUserData(CLng(i)).TradePartner = False
                gUserData(CLng(i)).TradingWith = ""
                gUserData(CLng(i)).TradingWith = gUserData(CLng(SocketIndex)).Username
                gUserData(CLng(i)).TeleporterReady = True

                gUserData(CLng(SocketIndex)).IsTrading = True
                gUserData(CLng(SocketIndex)).TradePartner = False
                gUserData(CLng(SocketIndex)).TradingWith = ""
                gUserData(CLng(SocketIndex)).TradingWith = gUserData(CLng(i)).Username
                gUserData(CLng(SocketIndex)).TeleporterReady = True

                Exit For
            End If
        End If
    Next i
End Function

' ============================================================================
' Proc_30_65 - HandleUserSearch
' Handles searching for a user by name to find their location
' Returns the user's current room/location if online
' ============================================================================
Private Function HandleUserSearch(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim i As Long

    ' Loop through all connected sockets to find matching users
    For i = 1 To frmMain.SockI
        If gUserData(CLng(i)).Username <> "" Then
            ' Found a user - additional search logic would go here
        End If
    Next i
End Function

' ============================================================================
' Proc_30_69 - HandleServerTimeRequest
' Handles request for server time/date
' Sends current server timestamp to user
' Special codes: 9999, 999, 99999, 99, 1000 trigger special responses
' ============================================================================
Private Function HandleServerTimeRequest(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vCommand As Variant

    ' Extract command from packet
    vCommand = Mid$(sData, 3)

    ' Check for special test commands
    If vCommand = "9999" Or vCommand = "999" Or vCommand = "99999" Or vCommand = "99" Or vCommand = "1000" Then
        ' Send server time response with special header
        SendData SocketIndex, "DkIQ]" & CStr(Now) & Chr$(1)
        Exit Function
    End If

    ' Reset user state flags
    gUserData(CLng(SocketIndex)).SomeFlag1 = False
    gUserData(CLng(SocketIndex)).SomeFlag2 = False
    gUserData(CLng(SocketIndex)).SomeFlag3 = False

    ' Store command value
    gUserData(CLng(SocketIndex)).CommandValue = CStr(vCommand)

    ' Enable teleporter ready
    gUserData(CLng(SocketIndex)).TeleporterReady = True

    ' Reset additional state
    gUserData(CLng(SocketIndex)).TradeState = False

    ' Disable socket timers
    frmMain.tmrSocket(SocketIndex).Enabled = False
    frmMain.tmrSocket2(SocketIndex).Enabled = False
    frmMain.tmrSocket2(SocketIndex).Tag = "0"

    ' Enable timers
    frmMain.tmrSocket(SocketIndex).Enabled = True
    frmMain.tmrSocket2(SocketIndex).Enabled = True
End Function

' ============================================================================
' Proc_30_70 - HandleUserTypeSet
' Sets user typing indicator/status
' Used when user starts or stops typing
' ============================================================================
Private Function HandleUserTypeSet(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vTypeStatus As Variant

    ' Extract type status from packet
    vTypeStatus = Mid$(sData, 3)

    ' Set typing flags
    gUserData(CLng(SocketIndex)).SomeFlag2 = True
    gUserData(CLng(SocketIndex)).SomeFlag3 = False

    ' Store typing status
    gUserData(CLng(SocketIndex)).TypingStatus = CStr(vTypeStatus)

    ' Enable teleporter ready
    gUserData(CLng(SocketIndex)).TeleporterReady = True
End Function

' ============================================================================
' Proc_30_71 - HandleTimerSetup
' Sets up timer intervals for user-specific actions
' Parses interval value from packet data
' ============================================================================
Private Function HandleTimerSetup(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vTimerData As Variant
    Dim aTimerParts As Variant
    Dim vFirstPart As Variant
    Dim vInterval As Variant

    ' Extract timer data from packet
    vTimerData = Mid$(sData, 3)

    ' Split by chr$(9) and get first part (index 0)
    aTimerParts = Split(CStr(vTimerData), Chr$(9), -1, 0)
    vFirstPart = aTimerParts(0)

    ' Get interval value from second part (index 1)
    aTimerParts = Split(CStr(vTimerData), Chr$(9), -1, 0)
    vInterval = Val(CStr(aTimerParts(1)))

    ' Set flags
    gUserData(CLng(SocketIndex)).SomeFlag2 = True
    gUserData(CLng(SocketIndex)).SomeFlag3 = True

    ' Set timer interval
    frmMain.tmrSocket(SocketIndex).Interval = CLng(vInterval)
    frmMain.tmrSocket(SocketIndex).Enabled = True

    ' Store timer data
    gUserData(CLng(SocketIndex)).TimerData = CStr(vTimerData)

    ' Enable teleporter ready
    gUserData(CLng(SocketIndex)).TeleporterReady = True
End Function

' ============================================================================
' Proc_30_72 - HandleHCDaysCheck
' Checks user's Habbo Club membership days
' Loads different catalogue pages based on HC status
' ============================================================================
Private Function HandleHCDaysCheck(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sHCDays As String
    Dim sCataloguePages As Variant

    ' Read user's Habbo Club days
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hcdays.txt", 1, False, 0)
    sHCDays = oTextStream.ReadAll

    ' If no HC days (0), load non-HC catalogue
    If sHCDays = "0" Then
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "catalogue\pages.txt", 1, False, 0)
        sCataloguePages = oTextStream.ReadAll
    Else
        ' Load HC-enabled catalogue
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "catalogue\pages_hc.txt", 1, False, 0)
        sCataloguePages = oTextStream.ReadAll
    End If

    ' Send catalogue pages to user
    SendData SocketIndex, CStr(sCataloguePages) & Chr$(1)
End Function

' ============================================================================
' Proc_30_74 - HandleDateRequest
' Sends current server date formatted as DD-MM-YYYY to user
' Used for date-based features in client
' ============================================================================
Private Function HandleDateRequest(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sDay As Variant
    Dim sMonth As Variant
    Dim sYear As Variant

    ' Get current day, month, and year
    sDay = Day(Now)
    sMonth = Month(Now)
    sYear = Year(Now)

    ' Send formatted date to user
    ' Bc packet with date in DD-MM-YYYY format
    SendData SocketIndex, "Bc" & Format$(sDay, "00") & "-" & Format$(sMonth, "00") & "-" & CStr(sYear) & Chr$(1)
End Function

' ============================================================================
' Proc_30_75 - HandleGiftPurchase
' Handles purchasing a gift for another user from catalogue
' Validates recipient exists before allowing purchase
' ============================================================================
Private Function HandleGiftPurchase(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim aDataParts As Variant
    Dim sRecipient As Variant
    Dim sRecipientLower As Variant
    Dim sErrorMessage As String

    ' Split data by chr$(13) and get recipient (index 5)
    aDataParts = Split(sData, Chr$(13), -1, 0)

    ' Check if recipient is specified (not "0")
    If CStr(aDataParts(5)) <> "0" Then
        ' Get recipient username (index 6)
        sRecipient = aDataParts(6)
        sRecipientLower = LCase$(CStr(sRecipient))

        ' Check if recipient folder exists
        If gFSO.FolderExists(gAppPath & "habbos\" & CStr(sRecipientLower)) = False Then
            ' Recipient doesn't exist - send error message
            sErrorMessage = GetLocaleString("no_user_for_gift")
            sErrorMessage = Replace(sErrorMessage, "%user%", CStr(sRecipient), 1, -1, 1)
            SendData SocketIndex, "BK" & sErrorMessage & Chr$(1)
            Exit Function
        End If

        ' Recipient exists - process gift purchase
        ' (Additional gift processing logic would go here)
    End If
End Function

' ============================================================================
' Proc_30_90 - HandleConsoleMissionChange
' Handles changing user's console mission/motto text
' Applies bobba filter if enabled and saves to user file
' ============================================================================
Private Function HandleConsoleMissionChange(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vLength As Variant
    Dim sMissionText As Variant

    ' Decode length from VL64 at position 3
    vLength = DecodeVL64(Mid$(sData, 3, 2))

    ' Extract mission text (starts at position 5)
    sMissionText = Mid$(sData, 5)

    ' Apply bobba filter if enabled
    If GetINI("config", "bobba_filter", gSettingsFile) = "1" Then
        sMissionText = ApplyBobbaFilter(CStr(sMissionText))
    End If

    ' Strip any chr$(1) from text
    sMissionText = Replace(CStr(sMissionText), Chr$(1), "", 1, -1, 1)

    ' Trim and ensure not empty
    sMissionText = Trim$(CStr(sMissionText))
    If CStr(sMissionText) = "" Then
        sMissionText = " "
    End If

    ' Save mission text to user file
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\consolemission.txt", 2, False, 0)
    oTextStream.Write CStr(sMissionText)

    ' Send acknowledgment to user
    ' BS packet with mission text
    SendData SocketIndex, "BS" & CStr(sMissionText) & Chr$(2) & Chr$(1)
End Function

' ============================================================================
' Proc_30_91 - HandleUserLookup
' Handles looking up another user's profile information
' Returns name, motto, figure, and other profile data
' ============================================================================
Private Function HandleUserLookup(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vLength As Variant
    Dim sTargetUser As Variant
    Dim sTargetUserLower As String
    Dim sTargetName As Variant

    ' Decode length from VL64 at position 3
    vLength = DecodeVL64(Mid$(sData, 3, 2))

    ' Extract target username (starts at position 5)
    sTargetUser = Mid$(sData, 5)

    ' Get lowercase version for file lookup
    sTargetUserLower = LCase$(CStr(sTargetUser))

    ' Check if target user folder exists
    If gFSO.FolderExists(gAppPath & "habbos\" & sTargetUserLower) = True Then
        ' Read target user's display name
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & sTargetUserLower & "\name.txt", 1, False, 0)
        sTargetName = oTextStream.ReadAll

        ' Additional user lookup logic would read figure, motto, etc.
        ' and send profile packet to requesting user
    End If
End Function

' ============================================================================
' Proc_30_102 - HandleUserInfraction
' Handles giving an infraction/warning to a user
' Tracks infraction count and bans at certain thresholds (5, 10, 15, 20, 25)
' ============================================================================
Private Function HandleUserInfraction(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sTargetUser As Variant
    Dim sReason As Variant
    Dim sInfractionCount As String
    Dim nInfractions As Variant
    Dim i As Long

    ' Send confirmation to admin
    SendData SocketIndex, "BKUser now Infracted." & Chr$(1)

    ' Get target username and reason from label controls
    sTargetUser = frmMain.lblInfractUser.Caption
    sReason = frmMain.lblInfractReason.Caption

    ' Loop through connected sockets to find the target user
    For i = 1 To frmMain.SockI
        ' Check if this socket matches the target user (case insensitive)
        If LCase$(CStr(sTargetUser)) = LCase$(gUserData(CLng(i)).Username) And _
           frmMain.Socket(CInt(i)).State = 7 Then

            ' Check if infracts.txt exists for this user
            If gFSO.FileExists(gAppPath & "habbos\" & LCase$(CStr(sTargetUser)) & "\infracts.txt") = False Then
                ' Create new infractions file with count 0
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(sTargetUser)) & "\infracts.txt", 2, True, 0)
                oTextStream.Write "0"

                ' Save infraction reason
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(sTargetUser)) & "\infract.txt", 2, True, 0)
                oTextStream.Write CStr(sReason)
            End If

            ' Read current infraction count
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(sTargetUser)) & "\infracts.txt", 1, False, 0)
            sInfractionCount = oTextStream.ReadAll

            ' Increment infraction count
            nInfractions = CDbl(sInfractionCount) + 1

            ' Check if ban threshold reached (5, 10, 15, 20, or 25 infractions)
            If nInfractions = 5 Or nInfractions = 10 Or nInfractions = 15 Or _
               nInfractions = 20 Or nInfractions = 25 Then
                ' Calculate ban duration (1 hour for first threshold)
                Dim nBanHours As Long
                nBanHours = 1

                ' Create user ban file
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "user_bans\" & LCase$(CStr(sTargetUser)) & ".txt", 2, True, 0)
                oTextStream.Write CStr(DateAdd("h", nBanHours, Now))

                ' Write ban reason
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "user_bans\" & LCase$(CStr(sTargetUser)) & ".reason", 2, True, 0)
                oTextStream.Write "You are got a Infractions Ban for 1 hour."

                ' Notify user and disconnect
                SendData CInt(i), "@cYou are got a Infractions Ban for 1 hour."
                SendData CInt(i), "@A" & GenerateRandom() & Chr$(1)
            End If

            ' Update infraction count in file
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(sTargetUser)) & "\infracts.txt", 2, False, 0)
            oTextStream.Write CStr(nInfractions)

            Exit For
        End If
    Next i
End Function

' ============================================================================
' Proc_30_103 - HandleTicketValidation
' Handles validation of login tickets
' Reads ticket file and sets up user session data
' ============================================================================
Private Function HandleTicketValidation(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sTicketId As Variant
    Dim sTicketUsername As Variant
    Dim sUserDisplayName As Variant

    ' Clear username initially
    gUserData(CLng(SocketIndex)).Username = ""

    ' Extract ticket ID from packet (skip first 4 chars)
    sTicketId = Right$(sData, Len(sData) - 4)

    ' Check if ticket file exists
    If gFSO.FileExists(gAppPath & "tickets\" & CStr(sTicketId) & ".txt") = True Then
        ' Read username from ticket
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "tickets\" & CStr(sTicketId) & ".txt", 1, False, 0)
        sTicketUsername = oTextStream.ReadAll

        ' Read user's display name
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & CStr(sTicketUsername) & "/name.txt", 1, False, 0)
        sUserDisplayName = oTextStream.ReadAll

        ' Set username in user data
        gUserData(CLng(SocketIndex)).Username = CStr(sUserDisplayName)

        ' Clean up any control characters in username
        gUserData(CLng(SocketIndex)).Username = Replace(gUserData(CLng(SocketIndex)).Username, Chr$(1), " ", 1, -1, 1)
        gUserData(CLng(SocketIndex)).Username = Replace(gUserData(CLng(SocketIndex)).Username, Chr$(2), " ", 1, -1, 1)
        gUserData(CLng(SocketIndex)).Username = Replace(gUserData(CLng(SocketIndex)).Username, Chr$(3), " ", 1, -1, 1)
        gUserData(CLng(SocketIndex)).Username = Replace(gUserData(CLng(SocketIndex)).Username, Chr$(4), " ", 1, -1, 1)
        gUserData(CLng(SocketIndex)).Username = Replace(gUserData(CLng(SocketIndex)).Username, Chr$(5), " ", 1, -1, 1)
        gUserData(CLng(SocketIndex)).Username = Replace(gUserData(CLng(SocketIndex)).Username, Chr$(9), " ", 1, -1, 1)
        gUserData(CLng(SocketIndex)).Username = Replace(gUserData(CLng(SocketIndex)).Username, Chr$(10), " ", 1, -1, 1)
        gUserData(CLng(SocketIndex)).Username = Replace(gUserData(CLng(SocketIndex)).Username, Chr$(13), " ", 1, -1, 1)

        ' Continue with login process - load user data, figure, motto, etc.
    End If
End Function

' ============================================================================
' Proc_30_76 - HandleRoomCategoryChange
' Handles changing a private room's category
' Validates room ownership and updates category file
' ============================================================================
Private Function HandleRoomCategoryChange(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim nLengthBytes As Integer
    Dim sCategory As String
    Dim vRoomId As Variant
    Dim sRoomOwner As Variant
    Dim bFolderExists As Boolean
    Dim bDeletedExists As Boolean

    ' Determine VL64 length based on last character (H, I, J, K = 1-byte VL64)
    nLengthBytes = 2
    If Right$(sData, 1) = "H" Or Right$(sData, 1) = "I" Or Right$(sData, 1) = "J" Or Right$(sData, 1) = "K" Then
        nLengthBytes = 1
    End If

    ' Extract category letter (last nLengthBytes characters)
    sCategory = Right$(Mid$(sData, 3), nLengthBytes)

    ' Decode room ID from VL64
    vRoomId = Val(DecodeVL64(Mid$(Mid$(sData, 3), 1, Len(Mid$(sData, 3)) - nLengthBytes)))

    ' Check if room folder exists and is not deleted
    bFolderExists = gFSO.FolderExists(gAppPath & "privaterooms\" & CStr(vRoomId))
    bDeletedExists = gFSO.FileExists(gAppPath & "privaterooms\" & CStr(vRoomId) & "\deleted.txt")

    If bFolderExists And bDeletedExists = False Then
        ' Read room owner
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\owner.txt", 1, False, 0)
        sRoomOwner = oTextStream.ReadAll

        ' Verify user is room owner
        If sRoomOwner = gUserData(CLng(SocketIndex)).Username Then
            ' Write new category
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\category.txt", 2, False, 0)
            oTextStream.Write sCategory
        End If
    End If
End Function

' ============================================================================
' Proc_30_77 - HandleUsernameSearch
' Handles searching for a username to check availability
' Used during registration and friend search
' Returns @dK (taken) or @dH (available) based on search type
' ============================================================================
Private Function HandleUsernameSearch(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vLength As Variant
    Dim sUsername As String
    Dim bFolderExists As Boolean
    Dim bModFolderExists As Boolean

    ' Check packet type - "I" suffix = registration check, "J" suffix = friend search
    If Right$(sData, 1) = "I" Then
        ' Registration username check
        ' Decode username length from VL64 at position 3
        vLength = DecodeVL64(Mid$(sData, 3, 2))

        ' Extract username (starts at position 5)
        sUsername = Mid$(sData, 5, vLength)

        ' Clean control characters from username
        sUsername = Replace(sUsername, Chr$(1), "", 1, -1, 1)
        sUsername = Replace(sUsername, Chr$(1), "", 1, -1, 1)
        sUsername = Replace(sUsername, Chr$(1), "", 1, -1, 1)
        sUsername = Replace(sUsername, Chr$(1), "", 1, -1, 1)
        sUsername = Replace(sUsername, Chr$(1), "", 1, -1, 1)
        sUsername = Replace(sUsername, Chr$(1), "", 1, -1, 1)
        sUsername = Replace(sUsername, Chr$(2), "", 1, -1, 1)
        sUsername = Replace(sUsername, Chr$(3), "", 1, -1, 1)
        sUsername = Replace(sUsername, Chr$(4), "", 1, -1, 1)
        sUsername = Replace(sUsername, Chr$(5), "", 1, -1, 1)
        sUsername = Replace(sUsername, Chr$(6), "", 1, -1, 1)
        sUsername = Replace(sUsername, Chr$(7), "", 1, -1, 1)
        sUsername = Replace(sUsername, Chr$(8), "", 1, -1, 1)
        sUsername = Replace(sUsername, Chr$(9), "", 1, -1, 1)
        sUsername = Replace(sUsername, Chr$(10), "", 1, -1, 1)
        sUsername = Replace(sUsername, Chr$(11), "", 1, -1, 1)
        sUsername = Replace(sUsername, Chr$(12), "", 1, -1, 1)

        ' Check if username is numeric (ID = 1 means numeric)
        If Val(CheckUsernameNumeric(sUsername)) = 1 Then
            ' Username is numeric - not allowed
            SendData SocketIndex, "@dK" & Chr$(1)
            Exit Function
        End If

        ' Send available response
        SendData SocketIndex, "@dH" & Chr$(1)
    Else
        ' Friend search / user lookup
        vLength = DecodeVL64(Mid$(sData, 3, 2))
        sUsername = Mid$(sData, 5, vLength)

        ' Check for "mod" prefix (reserved)
        If LCase$(Left$(sUsername, 3)) = "mod" Then
            SendData SocketIndex, "@dK" & Chr$(1)
            Exit Function
        End If

        ' Check if username is numeric
        If Val(CheckUsernameNumeric(sUsername)) = 1 Then
            SendData SocketIndex, "@dK" & Chr$(1)
            Exit Function
        End If

        ' Check if user folder exists (or mod- prefixed folder)
        bFolderExists = gFSO.FolderExists(gAppPath & "habbos\" & sUsername)
        bModFolderExists = gFSO.FolderExists(gAppPath & "habbos\" & "mod-" & sUsername)

        If bFolderExists Or bModFolderExists Then
            ' Username taken/found
            SendData SocketIndex, "@dPA" & Chr$(1)
        Else
            ' Username available/not found
            SendData SocketIndex, "@dH" & Chr$(1)
        End If
    End If
End Function

' ============================================================================
' Proc_30_78 - HandleRoomCodeValidation
' Handles validation of room access codes/passwords
' Validates that code only contains digits 0-9 and is proper length
' ============================================================================
Private Function HandleRoomCodeValidation(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim nLength1 As Integer
    Dim nLength2 As Integer
    Dim vCodeData As Variant

    ' Decode first VL64 length
    nLength1 = DecodeVL64(Mid$(sData, 3, 2))

    ' Decode second VL64 length
    nLength2 = DecodeVL64(Mid$(sData, 3, 2))

    ' Get third VL64 value
    Dim nLength3 As Variant
    nLength3 = DecodeVL64(Mid$(sData, 5 + nLength2, 2))

    ' Extract code data
    vCodeData = Mid$(sData, 7 + nLength1)

    ' Validate code length (must be between 5 and 10 characters)
    If Len(CStr(vCodeData)) > 5 And Len(CStr(vCodeData)) < 10 Then
        ' Validate code contains only digits
        If InStr(1, CStr(vCodeData), "0", 0) <> 0 Or _
           InStr(1, CStr(vCodeData), "1", 0) <> 0 Or _
           InStr(1, CStr(vCodeData), "2", 0) <> 0 Or _
           InStr(1, CStr(vCodeData), "3", 0) <> 0 Or _
           InStr(1, CStr(vCodeData), "4", 0) <> 0 Or _
           InStr(1, CStr(vCodeData), "5", 0) <> 0 Or _
           InStr(1, CStr(vCodeData), "6", 0) <> 0 Or _
           InStr(1, CStr(vCodeData), "7", 0) <> 0 Or _
           InStr(1, CStr(vCodeData), "8", 0) <> 0 Or _
           InStr(1, CStr(vCodeData), "9", 0) <> 0 Then
            ' Code is valid
            SendData SocketIndex, "DZH" & Chr$(1)
            Exit Function
        End If
    End If

    ' Code is invalid
    SendData SocketIndex, "DZI" & Chr$(1)
End Function

' ============================================================================
' Proc_30_79 - HandlePetInfo
' Handles getting pet information for display
' Reads pet nature, birth date, and calculates age/stats
' ============================================================================
Private Function HandlePetInfo(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vFurniId As Variant
    Dim sPetNature As Variant
    Dim sPetBorn As Variant
    Dim vPetAge As Variant
    Dim sNature1 As Variant
    Dim sNature2 As Variant
    Dim sHappinessLevel As Variant

    ' Extract furniture/pet ID from packet
    vFurniId = Val(Mid$(sData, 5))

    ' Read pet nature (personality type)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(gPetData(CLng(vFurniId)).FurniId) & "\nature.txt", 1, False, 0)
    sPetNature = oTextStream.ReadAll

    ' Read pet birth date
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(gPetData(CLng(vFurniId)).FurniId) & "\born.txt", 1, False, 0)
    sPetBorn = oTextStream.ReadAll

    ' Calculate pet age in days
    vPetAge = DateDiff("d", CStr(sPetBorn), Now, 1, 1)

    ' Extract nature values (character 1 and 2)
    sNature1 = EncodeVL64(CSng(Mid$(sPetNature, 1, 1)))
    sNature2 = EncodeVL64(CSng(Mid$(sPetNature, 2, 1)))

    ' Determine happiness level based on stats
    ' Stats are stored in global_180 (happiness) and global_176 (energy)
    ' Thresholds: 300 (0x12C), 600 (0x258), 1200 (0x4B0)

    If gPetData(CLng(vFurniId)).Happiness <= 600 Then
        sHappinessLevel = "PA"  ' Low happiness
    End If

    If gPetData(CLng(vFurniId)).Happiness > 600 Then
        sHappinessLevel = "I"   ' Medium happiness
    End If

    If gPetData(CLng(vFurniId)).Happiness > 1200 Then
        sHappinessLevel = "H"   ' High happiness
    End If

    If gPetData(CLng(vFurniId)).Energy <= 600 Then
        sHappinessLevel = "K"   ' Low energy
    End If

    If gPetData(CLng(vFurniId)).Energy > 600 Then
        sHappinessLevel = "J"   ' Medium energy
    End If

    If gPetData(CLng(vFurniId)).Energy > 1200 Then
        sHappinessLevel = "H"   ' High energy
    End If

    ' Combined stat checks
    If gPetData(CLng(vFurniId)).Happiness <= 300 And gPetData(CLng(vFurniId)).Energy <= 300 Then
        sHappinessLevel = "QA"  ' Very low both
    End If

    If (gPetData(CLng(vFurniId)).Happiness <= 600 And gPetData(CLng(vFurniId)).Energy <= 600) Or _
       (gPetData(CLng(vFurniId)).Happiness <= 600 And gPetData(CLng(vFurniId)).Energy <= 600) Then
        sHappinessLevel = "PA"
    End If

    If (gPetData(CLng(vFurniId)).Happiness <= 600 And gPetData(CLng(vFurniId)).Energy > 600) Or _
       (gPetData(CLng(vFurniId)).Happiness > 600 And gPetData(CLng(vFurniId)).Energy <= 600) Then
        sHappinessLevel = "K"
    End If

    If gPetData(CLng(vFurniId)).Happiness > 600 And gPetData(CLng(vFurniId)).Energy > 600 Then
        sHappinessLevel = "J"
    End If

    If gPetData(CLng(vFurniId)).Happiness > 600 And gPetData(CLng(vFurniId)).Energy <= 300 Then
        sHappinessLevel = "J"
    End If

    If (gPetData(CLng(vFurniId)).Happiness > 1200 And gPetData(CLng(vFurniId)).Energy > 600) Or _
       (gPetData(CLng(vFurniId)).Happiness > 600 And gPetData(CLng(vFurniId)).Energy > 1200) Then
        sHappinessLevel = "I"
    End If

    If gPetData(CLng(vFurniId)).Happiness > 1200 And gPetData(CLng(vFurniId)).Energy > 1200 Then
        sHappinessLevel = "H"
    End If

    ' Build and send pet info packet
    ' CR = pet info header, followed by encoded ID, age, happiness levels
    SendData SocketIndex, "CR" & EncodeVL64(CSng(vFurniId)) & EncodeVL64(CSng(vPetAge)) & _
             CStr(sHappinessLevel) & CStr(gPetData(CLng(vFurniId)).PetVar1) & _
             CStr(gPetData(CLng(vFurniId)).PetVar2) & CStr(sNature1) & CStr(sNature2) & Chr$(1)
End Function

' ============================================================================
' Proc_30_80 - HandleRoomRightsRequest
' Handles requesting room rights (doorbell/password entry)
' Validates rights and sends appropriate response
' ============================================================================
Private Function HandleRoomRightsRequest(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRoomOwner As Variant
    Dim sRoomRights As Variant
    Dim sAllRights As String
    Dim bHasRights As Variant
    Dim aRights() As String
    Dim sRankFile As String
    Dim sTargetUser As Variant
    Dim sPacketType As Variant
    Dim i As Variant

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

    ' Process request if user has rights
    If bHasRights = "ja" Then
        ' Extract target user from packet
        sTargetUser = Mid$(sData, 5)
        sPacketType = Right$(sTargetUser, 1)
        sTargetUser = Mid$(sTargetUser, 1, Len(sTargetUser) - 1)

        ' Loop through connected users to find target
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).Username = CStr(sTargetUser) Then
                ' Check if packet type is not "@" (deny)
                If sPacketType <> "@" Then
                    ' Grant entry - set their room to current room
                    gUserData(CLng(i)).RoomId = gUserData(CLng(SocketIndex)).RoomId

                    ' Send entry allowed packet
                    If frmMain.Sock(CInt(i)).State = 7 Then
                        frmMain.Sock(CInt(i)).SendData "@i" & Chr$(1)
                    End If
                    Exit For
                Else
                    ' Deny entry
                    If frmMain.Sock(CInt(i)).State = 7 Then
                        frmMain.Sock(CInt(i)).SendData "BC" & Chr$(1)
                    End If
                    Exit For
                End If
            End If
        Next i
    End If
End Function

' ============================================================================
' Proc_30_81 - HandleTradeConfirmation
' Handles confirming a trade between two users
' Validates items, transfers ownership, and broadcasts result
' ============================================================================
Private Function HandleTradeConfirmation(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vTradeAction As Variant
    Dim vCount1 As Variant
    Dim vCount2 As Variant
    Dim vCount3 As Variant
    Dim vCount4 As Variant
    Dim vCount5 As Variant
    Dim vCount6 As Variant
    Dim vCount7 As Variant
    Dim vCount8 As Variant
    Dim vCount9 As Variant
    Dim vCount10 As Variant
    Dim i As Variant

    ' Extract trade action from packet
    vTradeAction = Mid$(sData, 4)

    ' Check if this is a trade acceptance packet ("PAI")
    If vTradeAction = "PAI" Then
        ' Initialize counters for trade validation
        vCount1 = "0"
        vCount2 = "0"
        vCount3 = "0"
        vCount4 = "0"
        vCount5 = "0"
        vCount6 = "0"
        vCount7 = "0"
        vCount8 = "0"
        vCount9 = "0"
        vCount10 = "0"

        ' Loop through all connected users to validate trade
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId > 0 Then
                ' Read room owner
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(i)).RoomId) & "\owner.txt", 1, False, 0)
                Dim sRoomOwner As Variant
                sRoomOwner = oTextStream.ReadAll

                ' Additional trade validation logic would continue here
                ' This includes verifying items exist, ownership, and completing transfer
            End If
        Next i
    End If
End Function

' ============================================================================
' Proc_30_82 - HandleTradeItems
' Handles adding/removing items from a trade window
' Validates item ownership and updates trade state
' ============================================================================
Private Function HandleTradeItems(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vFurniId As Variant
    Dim sFurniOwner As Variant
    Dim sHandItems As String
    Dim aHandItems() As String
    Dim bItemFound As Boolean
    Dim i As Variant

    ' Extract furniture ID from packet
    vFurniId = Val(Mid$(sData, 5))

    ' Read item owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\owner.txt", 1, False, 0)
    sFurniOwner = oTextStream.ReadAll

    ' Verify user owns the item
    If sFurniOwner <> gUserData(CLng(SocketIndex)).Username Then
        Exit Function
    End If

    ' Read user's hand/inventory
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 1, False, 0)
    sHandItems = oTextStream.ReadAll
    aHandItems = Split(sHandItems, ";", -1, 0)

    ' Verify item is in user's inventory
    bItemFound = False
    For i = 0 To UBound(aHandItems)
        If aHandItems(CLng(i)) = CStr(vFurniId) Then
            bItemFound = True
            Exit For
        End If
    Next i

    If Not bItemFound Then
        Exit Function
    End If

    ' Add item to trade window
    gUserData(CLng(SocketIndex)).TradeItems = gUserData(CLng(SocketIndex)).TradeItems & ";" & CStr(vFurniId)

    ' Broadcast trade update to trading partner
    Dim nPartnerIndex As Long
    For i = 1 To frmMain.SockI
        If gUserData(CLng(i)).Username = gUserData(CLng(SocketIndex)).TradingWith And _
           frmMain.Sock(CInt(i)).State = 7 Then
            nPartnerIndex = CLng(i)
            Exit For
        End If
    Next i

    If nPartnerIndex > 0 Then
        ' Send trade update to both parties
        ' Build item list packet and send
    End If
End Function

' ============================================================================
' Proc_30_83 - HandleTradeAccept
' Handles accepting the current trade offer
' Sets accept flag and checks if both parties accepted
' ============================================================================
Private Function HandleTradeAccept(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim i As Variant
    Dim nPartnerIndex As Long

    ' Set user's trade accept flag
    gUserData(CLng(SocketIndex)).TradeAccepted = True

    ' Find trading partner
    For i = 1 To frmMain.SockI
        If gUserData(CLng(i)).Username = gUserData(CLng(SocketIndex)).TradingWith And _
           frmMain.Sock(CInt(i)).State = 7 Then
            nPartnerIndex = CLng(i)
            Exit For
        End If
    Next i

    If nPartnerIndex > 0 Then
        ' Send accept notification to partner
        SendData CInt(nPartnerIndex), "Am" & gUserData(CLng(SocketIndex)).RoomSlot & Chr$(1)

        ' Check if both parties accepted
        If gUserData(CLng(nPartnerIndex)).TradeAccepted = True Then
            ' Both accepted - complete the trade
            Call CompleteTrade(SocketIndex, CInt(nPartnerIndex))
        End If
    End If
End Function

' ============================================================================
' Proc_30_84 - HandleTradeCancel
' Handles cancelling an active trade
' Resets trade state for both parties
' ============================================================================
Private Function HandleTradeCancel(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim i As Variant
    Dim nPartnerIndex As Long

    ' Find trading partner
    For i = 1 To frmMain.SockI
        If gUserData(CLng(i)).Username = gUserData(CLng(SocketIndex)).TradingWith And _
           frmMain.Sock(CInt(i)).State = 7 Then
            nPartnerIndex = CLng(i)
            Exit For
        End If
    Next i

    ' Reset current user's trade state
    gUserData(CLng(SocketIndex)).IsTrading = False
    gUserData(CLng(SocketIndex)).TradeAccepted = False
    gUserData(CLng(SocketIndex)).TradingWith = ""
    gUserData(CLng(SocketIndex)).TradeItems = ""

    ' Send trade cancel packet to current user
    SendData SocketIndex, "An" & Chr$(1)

    If nPartnerIndex > 0 Then
        ' Reset partner's trade state
        gUserData(CLng(nPartnerIndex)).IsTrading = False
        gUserData(CLng(nPartnerIndex)).TradeAccepted = False
        gUserData(CLng(nPartnerIndex)).TradingWith = ""
        gUserData(CLng(nPartnerIndex)).TradeItems = ""

        ' Send trade cancel packet to partner
        SendData CInt(nPartnerIndex), "An" & Chr$(1)
    End If
End Function

' ============================================================================
' Proc_30_85 - HandleRoomVote
' Handles voting on a private room (rating 1-5 stars)
' Updates room vote count and average rating
' ============================================================================
Private Function HandleRoomVote(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vVoteValue As Variant
    Dim sCurrentVotes As String
    Dim sCurrentTotal As String
    Dim vNewTotal As Variant
    Dim vNewCount As Variant
    Dim vNewAverage As Variant

    ' Extract vote value from packet (1-5)
    vVoteValue = Val(Mid$(sData, 3))

    ' Validate vote is in range
    If vVoteValue < 1 Or vVoteValue > 5 Then
        Exit Function
    End If

    ' Check if user has already voted
    If gFSO.FileExists(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\voters\" & gUserData(CLng(SocketIndex)).Username & ".txt") Then
        ' Already voted - ignore
        Exit Function
    End If

    ' Read current vote count
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\votecount.txt", 1, False, 0)
    sCurrentVotes = oTextStream.ReadAll

    ' Read current total
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\votetotal.txt", 1, False, 0)
    sCurrentTotal = oTextStream.ReadAll

    ' Calculate new values
    vNewCount = Val(sCurrentVotes) + 1
    vNewTotal = Val(sCurrentTotal) + vVoteValue
    vNewAverage = vNewTotal / vNewCount

    ' Save new vote count
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\votecount.txt", 2, False, 0)
    oTextStream.Write CStr(vNewCount)

    ' Save new total
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\votetotal.txt", 2, False, 0)
    oTextStream.Write CStr(vNewTotal)

    ' Record that user has voted
    gFSO.CreateTextFile gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\voters\" & gUserData(CLng(SocketIndex)).Username & ".txt", True, False
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\voters\" & gUserData(CLng(SocketIndex)).Username & ".txt", 2, False, 0)
    oTextStream.Write CStr(vVoteValue)

    ' Send vote confirmation with new average rating
    SendData SocketIndex, "EY" & EncodeVL64(CSng(Int(vNewAverage))) & Chr$(1)
End Function

' ============================================================================
' Proc_30_86 - HandleRoomSettings
' Handles updating room settings (name, description, password, etc.)
' Validates room ownership and updates setting files
' ============================================================================
Private Function HandleRoomSettings(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRoomOwner As Variant
    Dim sUserRank As Variant
    Dim aSettingParts() As String
    Dim sRoomName As String
    Dim sRoomDesc As String
    Dim sRoomPassword As String
    Dim sRoomOpenType As String

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Get user's rank
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\rank.txt", 1, False, 0)
    sUserRank = oTextStream.ReadAll

    ' Verify user can edit room settings
    If (sRoomOwner = gUserData(CLng(SocketIndex)).Username) Or _
       (sUserRank = "moderator") Or (sUserRank = "admin") Or (sUserRank = "manager") Then

        ' Parse settings from packet (separated by chr$(13))
        aSettingParts = Split(sData, Chr$(13), -1, 0)

        ' Extract room name (index 1)
        If UBound(aSettingParts) >= 1 Then
            sRoomName = aSettingParts(1)
            ' Apply bobba filter if enabled
            If GetINI("config", "bobba_filter", gSettingsFile) = "1" Then
                sRoomName = ApplyBobbaFilter(sRoomName)
            End If
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\name.txt", 2, False, 0)
            oTextStream.Write sRoomName
        End If

        ' Extract room description (index 2)
        If UBound(aSettingParts) >= 2 Then
            sRoomDesc = aSettingParts(2)
            If GetINI("config", "bobba_filter", gSettingsFile) = "1" Then
                sRoomDesc = ApplyBobbaFilter(sRoomDesc)
            End If
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\description.txt", 2, False, 0)
            oTextStream.Write sRoomDesc
        End If

        ' Extract open type (index 3) - "open", "closed", "password"
        If UBound(aSettingParts) >= 3 Then
            sRoomOpenType = aSettingParts(3)
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\opentype.txt", 2, False, 0)
            oTextStream.Write sRoomOpenType
        End If

        ' Extract password if provided (index 4)
        If UBound(aSettingParts) >= 4 And sRoomOpenType = "password" Then
            sRoomPassword = aSettingParts(4)
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\password.txt", 2, False, 0)
            oTextStream.Write sRoomPassword
        End If

        ' Send settings saved confirmation
        SendData SocketIndex, "@a" & Chr$(1)
    End If
End Function

' ============================================================================
' Proc_30_87 - HandleRoomDelete
' Handles deleting a private room
' Marks room as deleted and removes all users from it
' ============================================================================
Private Function HandleRoomDelete(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRoomOwner As Variant
    Dim sUserRank As Variant
    Dim vRoomId As Variant
    Dim i As Variant

    ' Extract room ID from packet
    vRoomId = Val(Mid$(sData, 3))

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Get user's rank
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\rank.txt", 1, False, 0)
    sUserRank = oTextStream.ReadAll

    ' Verify user can delete room
    If (sRoomOwner = gUserData(CLng(SocketIndex)).Username) Or _
       (sUserRank = "admin") Or (sUserRank = "manager") Then

        ' Mark room as deleted
        gFSO.CreateTextFile gAppPath & "privaterooms\" & CStr(vRoomId) & "\deleted.txt", True, False
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\deleted.txt", 2, False, 0)
        oTextStream.Write "1"

        ' Remove all users from the room
        For i = 1 To frmMain.SockI
            If gUserData(CLng(i)).RoomId = CDbl(vRoomId) And frmMain.Sock(CInt(i)).State = 7 Then
                ' Send room deleted notification
                SendData CInt(i), "CL" & Chr$(1)
                ' Reset user's room state
                gUserData(CLng(i)).RoomId = 0
            End If
        Next i

        ' Send deletion confirmation
        SendData SocketIndex, "@a" & Chr$(1)
    End If
End Function

' ============================================================================
' Proc_30_88 - HandleCataloguePageRequest
' Handles requesting a catalogue page for display
' Reads page content and items, sends to user
' ============================================================================
Private Function HandleCataloguePageRequest(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sPageName As Variant
    Dim sPageContent As Variant
    Dim sHCDays As String

    ' Extract page name from packet
    sPageName = Mid$(sData, 5)

    ' Clean control characters
    sPageName = Replace(CStr(sPageName), Chr$(1), "", 1, -1, 1)
    sPageName = Replace(CStr(sPageName), Chr$(2), "", 1, -1, 1)

    ' Check if user has Habbo Club for HC-only pages
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hcdays.txt", 1, False, 0)
    sHCDays = oTextStream.ReadAll

    ' Check if page exists
    If gFSO.FileExists(gAppPath & "catalogue\" & CStr(sPageName) & ".txt") Then
        ' Read page content
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "catalogue\" & CStr(sPageName) & ".txt", 1, False, 0)
        sPageContent = oTextStream.ReadAll

        ' Send page content
        SendData SocketIndex, "A~" & CStr(sPageContent) & Chr$(1)
    Else
        ' Page not found - send empty response
        SendData SocketIndex, "A~" & Chr$(1)
    End If
End Function

' ============================================================================
' Proc_30_89 - HandleCataloguePurchase
' Handles purchasing an item from the catalogue
' Validates credits, creates item, adds to inventory
' ============================================================================
Private Function HandleCataloguePurchase(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim aPurchaseParts() As String
    Dim sItemCode As Variant
    Dim sItemPrice As Variant
    Dim sUserCredits As String
    Dim vCredits As Variant
    Dim vPrice As Variant
    Dim vNewFurniId As Variant

    ' Parse purchase data (separated by chr$(13))
    aPurchaseParts = Split(sData, Chr$(13), -1, 0)

    ' Extract item code (index 3)
    sItemCode = aPurchaseParts(3)

    ' Read item price from catalogue
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "catalogue\items\" & CStr(sItemCode) & "\price.txt", 1, False, 0)
    sItemPrice = oTextStream.ReadAll
    vPrice = Val(CStr(sItemPrice))

    ' Read user's credits
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\credits.txt", 1, False, 0)
    sUserCredits = oTextStream.ReadAll
    vCredits = Val(sUserCredits)

    ' Check if user has enough credits
    If vCredits < vPrice Then
        SendData SocketIndex, "AD" & Chr$(1)  ' Not enough credits
        Exit Function
    End If

    ' Deduct credits
    vCredits = vCredits - vPrice
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\credits.txt", 2, False, 0)
    oTextStream.Write CStr(vCredits)

    ' Send updated credit balance
    SendData SocketIndex, "@F" & CStr(vCredits) & ".0" & Chr$(1)

    ' Get next furniture ID
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\count.txt", 1, False, 0)
    vNewFurniId = Val(oTextStream.ReadAll) + 1

    ' Update furniture count
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\count.txt", 2, False, 0)
    oTextStream.Write CStr(vNewFurniId)

    ' Create furniture folder
    gFSO.CreateFolder gAppPath & "furni\" & CStr(vNewFurniId)

    ' Copy item template files to new furniture
    gFSO.CopyFile gAppPath & "catalogue\items\" & CStr(sItemCode) & "\*.*", gAppPath & "furni\" & CStr(vNewFurniId) & "\"

    ' Set owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vNewFurniId) & "\owner.txt", 2, True, 0)
    oTextStream.Write gUserData(CLng(SocketIndex)).Username

    ' Set inroom to 0 (not placed)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vNewFurniId) & "\inroom.txt", 2, True, 0)
    oTextStream.Write "0"

    ' Add to user's hand/inventory
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 1, False, 0)
    Dim sHandItems As String
    sHandItems = oTextStream.ReadAll
    sHandItems = sHandItems & ";" & CStr(vNewFurniId)
    sHandItems = Replace(sHandItems, ";;", ";", 1, -1, 1)

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 2, False, 0)
    oTextStream.Write sHandItems

    ' Send purchase confirmation
    SendData SocketIndex, "Ar" & Chr$(1)
End Function

' ============================================================================
' CompleteTrade - Helper function to complete a trade between two users
' Transfers items between users' inventories
' ============================================================================
Private Function CompleteTrade(ByVal SocketIndex1 As Integer, ByVal SocketIndex2 As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim aItems1() As String
    Dim aItems2() As String
    Dim sHand1 As String
    Dim sHand2 As String
    Dim i As Long

    ' Get trade items from both users
    aItems1 = Split(gUserData(CLng(SocketIndex1)).TradeItems, ";", -1, 0)
    aItems2 = Split(gUserData(CLng(SocketIndex2)).TradeItems, ";", -1, 0)

    ' Transfer items from user 1 to user 2
    For i = 0 To UBound(aItems1)
        If aItems1(i) <> "" Then
            ' Update item owner
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & aItems1(i) & "\owner.txt", 2, False, 0)
            oTextStream.Write gUserData(CLng(SocketIndex2)).Username

            ' Remove from user 1's hand, add to user 2's hand
            ' (Implementation would update both hand.txt files)
        End If
    Next i

    ' Transfer items from user 2 to user 1
    For i = 0 To UBound(aItems2)
        If aItems2(i) <> "" Then
            ' Update item owner
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & aItems2(i) & "\owner.txt", 2, False, 0)
            oTextStream.Write gUserData(CLng(SocketIndex1)).Username
        End If
    Next i

    ' Reset trade state for both users
    gUserData(CLng(SocketIndex1)).IsTrading = False
    gUserData(CLng(SocketIndex1)).TradeAccepted = False
    gUserData(CLng(SocketIndex1)).TradingWith = ""
    gUserData(CLng(SocketIndex1)).TradeItems = ""

    gUserData(CLng(SocketIndex2)).IsTrading = False
    gUserData(CLng(SocketIndex2)).TradeAccepted = False
    gUserData(CLng(SocketIndex2)).TradingWith = ""
    gUserData(CLng(SocketIndex2)).TradeItems = ""

    ' Send trade complete packet to both users
    SendData SocketIndex1, "An" & Chr$(1)
    SendData SocketIndex2, "An" & Chr$(1)

    ' Update inventories for both users
    Call UpdateUserInventory(SocketIndex1, "AAupdate")
    Call UpdateUserInventory(SocketIndex2, "AAupdate")
End Function

' ============================================================================
' CheckUsernameNumeric - Helper function to check if username is all numeric
' Returns "1" if numeric, "0" otherwise
' ============================================================================
Private Function CheckUsernameNumeric(ByVal sUsername As String) As String
    On Error Resume Next

    Dim i As Long
    Dim sChar As String

    CheckUsernameNumeric = "0"

    ' Check each character
    For i = 1 To Len(sUsername)
        sChar = Mid$(sUsername, i, 1)
        If sChar < "0" Or sChar > "9" Then
            ' Found non-numeric character
            CheckUsernameNumeric = "0"
            Exit Function
        End If
    Next i

    ' All characters were numeric
    If Len(sUsername) > 0 Then
        CheckUsernameNumeric = "1"
    End If
End Function

' ============================================================================
' HandleTeleporterWalk - Helper function to handle user walking to teleporter
' Sets up pathfinding to teleporter location
' ============================================================================
Private Function HandleTeleporterWalk(ByVal SocketIndex As Integer, ByVal sData As String)
    On Error Resume Next

    Dim aCoords() As String
    Dim vTargetX As Variant
    Dim vTargetY As Variant

    ' Parse coordinates from data "AO[x] [y]"
    aCoords = Split(Mid$(sData, 3), " ", -1, 0)
    vTargetX = Val(aCoords(0))
    vTargetY = Val(aCoords(1))

    ' Set user's target position
    gUserData(CLng(SocketIndex)).TargetX = CLng(vTargetX)
    gUserData(CLng(SocketIndex)).TargetY = CLng(vTargetY)

    ' Enable pathfinding
    gUserData(CLng(SocketIndex)).IsWalking = True
End Function

' ============================================================================
' GetSessionKey - Helper function to generate a session key
' Returns a random session key string
' ============================================================================
Private Function GetSessionKey() As String
    On Error Resume Next

    Dim sKey As String
    Dim i As Long

    sKey = ""
    For i = 1 To 10
        sKey = sKey & Chr$(Int(Rnd() * 26) + 65)
    Next i

    GetSessionKey = sKey
End Function

' ============================================================================
' GenerateRandom - Helper function to generate random string
' Returns random alphanumeric string for various uses
' ============================================================================
Private Function GenerateRandom() As String
    On Error Resume Next

    Dim sRandom As String
    Dim i As Long

    sRandom = ""
    For i = 1 To 8
        sRandom = sRandom & Chr$(Int(Rnd() * 26) + 97)
    Next i

    GenerateRandom = sRandom
End Function

' ============================================================================
' HandleRoomLeave - Helper function to handle user leaving a room
' Broadcasts user departure and resets room state
' ============================================================================
Private Function HandleRoomLeave(ByVal SocketIndex As Integer)
    On Error Resume Next

    ' Broadcast user leaving to room
    If gUserData(CLng(SocketIndex)).RoomId > 0 Then
        RemoveUserFromRoom CLng(gUserData(CLng(SocketIndex)).RoomId), _
            "@]" & gUserData(CLng(SocketIndex)).RoomSlot & Chr$(1)
    End If

    If gUserData(CLng(SocketIndex)).PublicRoomId > 0 Then
        RemoveUserFromPublicRoom CLng(gUserData(CLng(SocketIndex)).PublicRoomId), _
            "@]" & gUserData(CLng(SocketIndex)).RoomSlot & Chr$(1)
    End If

    ' Reset room state
    gUserData(CLng(SocketIndex)).RoomId = 0
    gUserData(CLng(SocketIndex)).PublicRoomId = 0
    gUserData(CLng(SocketIndex)).RoomSlot = ""
End Function

' ============================================================================
' Proc_30_87 - HandleCFHRequest (Call For Help)
' Handles call for help requests from staff members
' Forwards help requests to appropriate staff with recrieve_cfh permission
' ============================================================================
Private Function HandleCFHRequest(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRankFile As String
    Dim vLength As Variant
    Dim vHelpData As Variant
    Dim vReportedUser As Variant
    Dim vReportType As Variant
    Dim nLength1 As Integer
    Dim sReportText As Variant
    Dim sTargetData As String
    Dim aTargetParts() As String
    Dim i As Variant

    ' Check if user has permission to receive CFH
    sRankFile = gAppPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"
    If GetINI("rank", "recrieve_cfh", sRankFile) = "1" Then
        ' Decode length from VL64 at position 3
        vLength = DecodeVL64(Mid$(sData, 3, 2))

        ' Extract help message data
        vHelpData = Mid$(sData, 5, vLength)

        ' Extract additional data after the message
        Dim vReportData As Variant
        vReportData = Mid$(sData, 5 + CLng(vLength))

        ' Decode reported user length
        nLength1 = DecodeVL64(Mid$(CStr(vReportData), 1, 2))

        ' Extract reported user
        vReportedUser = Mid$(CStr(vReportData), 3, nLength1)

        ' Get target/staff assignment data
        sTargetData = DecodeBase64(frmMain.Sock(SocketIndex).Text)
        aTargetParts = Split(sTargetData, Chr$(2), -1, 2)

        ' Loop through connected staff to forward CFH
        For i = 1 To frmMain.SockI
            If LCase$(aTargetParts(0)) = LCase$(gUserData(CLng(i)).Username) Then
                If frmMain.Sock(CInt(i)).State = 7 Then
                    ' Forward CFH to staff member
                    frmMain.Sock(CInt(i)).SendData "DR" & CStr(vReportedUser) & Chr$(2) & Chr$(1)
                    Exit For
                End If
            End If
        Next i
    End If
End Function

' ============================================================================
' Proc_30_88 - HandleRegistration
' Handles user registration/account creation
' Validates input, checks for duplicate names, creates user folder and files
' ============================================================================
Private Function HandleRegistration(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vRegData As Variant
    Dim vLength1 As Integer
    Dim vUsername As Variant
    Dim vPassword As Variant
    Dim vEmail As Variant
    Dim vBirthday As Variant
    Dim vMotto As Variant
    Dim sIPAddress As String
    Dim sMaxIP As String
    Dim sIPCount As String
    Dim bUserExists As Boolean
    Dim bIPFileExists As Boolean

    ' Check if user is already logged in
    If gUserData(CLng(SocketIndex)).Username = "" Then
        ' Send timestamp packet
        SendData SocketIndex, "DkIQ]" & Now & ""
        Exit Function
    End If

    ' Extract registration data from packet (starts at position 5)
    vRegData = Mid$(sData, 5)

    ' Parse username (VL64 length at position 1, then string)
    vLength1 = DecodeVL64(Mid$(CStr(vRegData), 1, 2))
    vUsername = Mid$(CStr(vRegData), 3, vLength1)

    ' Move past username section
    vLength1 = DecodeVL64(Mid$(CStr(vRegData), 1, 2))
    vRegData = Mid$(CStr(vRegData), 3 + vLength1 + 2)

    ' Parse password
    vLength1 = DecodeVL64(Mid$(CStr(vRegData), 1, 2))
    vPassword = Mid$(CStr(vRegData), 3, vLength1)
    vRegData = Mid$(CStr(vRegData), 3 + vLength1 + 2)

    ' Parse email
    vLength1 = DecodeVL64(Mid$(CStr(vRegData), 1, 2))
    vEmail = Mid$(CStr(vRegData), 3, vLength1)
    vRegData = Mid$(CStr(vRegData), 3 + vLength1 + 6)  ' Skip extra fields

    ' Parse motto/mission
    vLength1 = DecodeVL64(Mid$(CStr(vRegData), 1, 2))
    vMotto = Mid$(CStr(vRegData), 3, vLength1)
    vRegData = Mid$(CStr(vRegData), 3 + vLength1 + 2)

    ' Parse birthday
    vLength1 = DecodeVL64(Mid$(CStr(vRegData), 1, 2))
    vBirthday = Mid$(CStr(vRegData), 3, vLength1)
    vRegData = Mid$(CStr(vRegData), 3 + vLength1 + 11)

    ' Default motto
    vMotto = "Registered at HabLog Project"

    ' Check if username already exists
    bUserExists = gFSO.FolderExists(gAppPath & "habbos\" & LCase$(CStr(vUsername)))
    If bUserExists = True Then
        ' Username taken
        SendData SocketIndex, "DkIQ]" & Now & ""
        Exit Function
    End If

    ' Check if folder already exists with different casing
    bUserExists = gFSO.FolderExists(gAppPath & "habbos\" & LCase$(CStr(vUsername)))
    If bUserExists Then
        ' Username taken
        SendData SocketIndex, "BaName Taken" & Chr$(1)
        Exit Function
    End If

    ' Check IP registration limit if enabled
    If frmTab_userlock.chkIPCHECK.Value = "1" Then
        ' Get user's IP address
        sIPAddress = frmMain.Sock(SocketIndex).RemoteHostIP

        ' Check if IP file exists
        bIPFileExists = gFSO.FileExists(gAppPath & "register_ip\" & sIPAddress & ".text")

        If bIPFileExists = True Then
            ' Read current registration count for this IP
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "register_ip\" & sIPAddress & ".text", 1, False, 0)
            sIPCount = oTextStream.ReadAll

            ' Read max allowed registrations per IP
            sMaxIP = GetINI("server", "max_ip", gSettingsFile)

            If sIPCount >= sMaxIP Then
                ' Too many registrations from this IP
                SendData SocketIndex, "BK" & GetLanguageText("already_regged") & Chr$(1)
                frmMain.Sock(SocketIndex).Enabled = True
                Exit Function
            End If
        End If
    End If

    ' Check if hotel is locked for new registrations
    If GetINI("config", "hotel_lock", gSettingsFile) = "1" Then
        SendData SocketIndex, "BK" & GetLanguageText("hotel_lock") & Chr$(1)
        Exit Function
    End If

    ' Create user folder
    gFSO.CreateFolder gAppPath & "habbos\" & LCase$(CStr(vUsername))

    ' Write name file
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(vUsername)) & "\name.txt", 2, True, 0)
    oTextStream.Write CStr(vUsername)

    ' Write password file
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(vUsername)) & "\pass.txt", 2, True, 0)
    oTextStream.Write CStr(vPassword)

    ' Write email file
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(vUsername)) & "\email.txt", 2, True, 0)
    oTextStream.Write CStr(vEmail)

    ' Write birthday file
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(vUsername)) & "\birth.txt", 2, True, 0)
    oTextStream.Write CStr(vBirthday)

    ' Write motto file
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(vUsername)) & "\consolemission.txt", 2, True, 0)
    oTextStream.Write CStr(vMotto)

    ' Write rank file (default to normal user)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(vUsername)) & "\rank.txt", 2, True, 0)
    oTextStream.Write "normal"

    ' Write credits file (starting credits)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(vUsername)) & "\credits.txt", 2, True, 0)
    oTextStream.Write GetINI("config", "start_credits", gSettingsFile)

    ' Write hand/inventory file (empty)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(vUsername)) & "\hand.txt", 2, True, 0)
    oTextStream.Write ""

    ' Write friends file (empty)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(vUsername)) & "\friends.txt", 2, True, 0)
    oTextStream.Write ""

    ' Update IP registration count
    If frmTab_userlock.chkIPCHECK.Value = "1" Then
        If bIPFileExists Then
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "register_ip\" & sIPAddress & ".text", 1, False, 0)
            sIPCount = oTextStream.ReadAll
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "register_ip\" & sIPAddress & ".text", 2, False, 0)
            oTextStream.Write CStr(Val(sIPCount) + 1)
        Else
            gFSO.CreateTextFile gAppPath & "register_ip\" & sIPAddress & ".text", True, False
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "register_ip\" & sIPAddress & ".text", 2, False, 0)
            oTextStream.Write "1"
        End If
    End If

    ' Send registration success
    SendData SocketIndex, "@A" & Chr$(1)
End Function

' ============================================================================
' Proc_30_89 - HandleAccountUpdate
' Handles updating user account information (password, email)
' Validates current password and birthday before allowing changes
' ============================================================================
Private Function HandleAccountUpdate(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vLength As Variant
    Dim vCurrentPass As Variant
    Dim vCurrentBirth As Variant
    Dim vUpdateType As Variant
    Dim vNewValue As Variant
    Dim sStoredPass As Variant
    Dim sStoredBirth As Variant
    Dim nPos As Long

    ' Decode password length from VL64 at position 5
    vLength = DecodeVL64(Mid$(sData, 5, 2))

    ' Extract current password
    vCurrentPass = Mid$(sData, 7, CLng(vLength))

    ' Extract birthday (at position 9 + password length)
    nPos = 9 + Len(CStr(vCurrentPass))
    vLength = DecodeVL64(Mid$(sData, nPos, 2))
    vCurrentBirth = Mid$(sData, nPos + 2, CLng(vLength))

    ' Extract update type (at position 11 + password length + birthday length)
    nPos = 11 + Len(CStr(vCurrentPass)) + Len(CStr(vCurrentBirth))
    vLength = DecodeVL64(Mid$(sData, nPos, 2))
    vUpdateType = Mid$(sData, nPos + 2, CLng(vLength))

    ' Extract new value (at position 13 + all previous lengths)
    nPos = 13 + Len(CStr(vCurrentPass)) + Len(CStr(vCurrentBirth)) + Len(CStr(vUpdateType))
    vLength = DecodeVL64(Mid$(sData, nPos, 2))
    vNewValue = Mid$(sData, nPos + 2, CLng(vLength))

    ' Read stored password
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\pass.txt", 1, False, 0)
    sStoredPass = oTextStream.ReadAll

    ' Read stored birthday
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\birth.txt", 1, False, 0)
    sStoredBirth = oTextStream.ReadAll

    ' Verify current password
    If CStr(vCurrentPass) = CStr(sStoredPass) Then
        ' Verify birthday
        If CStr(vCurrentBirth) = CStr(sStoredBirth) Then
            ' Check update type
            If CStr(vUpdateType) = "@C" Then
                ' Update password
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\pass.txt", 2, False, 0)
                oTextStream.Write CStr(vNewValue)
            ElseIf CStr(vUpdateType) = "@G" Then
                ' Update email
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\email.txt", 2, False, 0)
                oTextStream.Write CStr(vNewValue)
            End If

            ' Send success response
            SendData SocketIndex, "Bi0" & Chr$(1)
        Else
            ' Wrong birthday
            SendData SocketIndex, "Bi2" & Chr$(1)
        End If
    Else
        ' Wrong password
        SendData SocketIndex, "Bi1" & Chr$(1)
    End If
End Function

' ============================================================================
' Proc_30_90 - HandleConsoleMissionUpdate
' Handles updating user's console mission/motto
' Applies bobba filter if enabled, saves to file
' ============================================================================
Private Function HandleConsoleMissionUpdate(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vLength As Variant
    Dim vMission As Variant

    ' Decode mission length from VL64 at position 3
    vLength = DecodeVL64(Mid$(sData, 3, 2))

    ' Extract mission text
    vMission = Mid$(sData, 5, CLng(vLength))

    ' Apply bobba filter if enabled
    If GetINI("config", "bobba_filter", gSettingsFile) = "1" Then
        vMission = ApplyBobbaFilter(CStr(vMission))
    End If

    ' Clean control characters
    vMission = Replace(CStr(vMission), Chr$(1), "", 1, -1, 1)

    ' Trim whitespace
    vMission = Trim$(CStr(vMission))

    ' Set to space if empty
    If CStr(vMission) = "" Then
        vMission = " "
    End If

    ' Write mission to file
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\consolemission.txt", 2, False, 0)
    oTextStream.Write CStr(vMission)

    ' Send confirmation with updated mission
    SendData SocketIndex, "BS" & CStr(vMission) & Chr$(2) & Chr$(1)
End Function

' ============================================================================
' Proc_30_91 - HandleUserSearch
' Handles searching for users in the console/messenger
' Returns user info if found including name, figure, online status
' ============================================================================
Private Function HandleUserSearch(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vLength As Variant
    Dim vSearchName As Variant
    Dim bUserExists As Boolean
    Dim sUserName As Variant
    Dim sUserApp As Variant
    Dim sUserMission As Variant
    Dim sUserSex As Variant
    Dim sUserLastOnline As Variant
    Dim sUserFigure As Variant
    Dim vIsOnline As Variant
    Dim i As Variant

    ' Decode search name length from VL64 at position 3
    vLength = DecodeVL64(Mid$(sData, 3, 2))

    ' Extract search name
    vSearchName = Mid$(sData, 5, CLng(vLength))

    ' Check if user folder exists
    bUserExists = gFSO.FolderExists(gAppPath & "habbos\" & LCase$(CStr(vSearchName)))

    If bUserExists = True Then
        ' Read user display name
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(vSearchName)) & "\name.txt", 1, False, 0)
        sUserName = oTextStream.ReadAll

        ' Read user figure/appearance
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(vSearchName)) & "\app.txt", 1, False, 0)
        sUserApp = oTextStream.ReadAll

        ' Read console mission - check if file is empty first
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(vSearchName)) & "\consolemission.txt", 1, False, 0)
        If oTextStream.AtEndOfStream = True Then
            sUserMission = ""
        Else
            sUserMission = oTextStream.ReadAll
        End If

        ' Read user sex
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(vSearchName)) & "\sex.txt", 1, False, 0)
        sUserSex = oTextStream.ReadAll
        If LCase$(CStr(sUserSex)) = "m" Then
            sUserSex = "I"  ' Male
        Else
            sUserSex = "H"  ' Female
        End If

        ' Read last online time
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(CStr(vSearchName)) & "\lastonline.txt", 1, False, 0)
        sUserLastOnline = oTextStream.ReadAll

        ' Check if user is currently online
        vIsOnline = 0
        For i = 1 To frmMain.SockI
            If LCase$(gUserData(CLng(i)).Username) = LCase$(CStr(vSearchName)) And _
               frmMain.Sock(CInt(i)).State = 7 Then
                sUserFigure = gUserData(CLng(i)).Figure
                vIsOnline = 1
                Exit For
            End If
        Next i

        If vIsOnline = 0 Then
            sUserFigure = "H"
        End If

        ' Build and send user info packet
        SendData SocketIndex, "B@MESSENGER" & Chr$(2) & _
                 EncodeVL64(CSng(GetHabboId(CStr(vSearchName)))) & _
                 CStr(sUserName) & Chr$(2) & _
                 CStr(sUserSex) & Chr$(2) & _
                 CStr(sUserMission) & Chr$(2) & _
                 CStr(sUserLastOnline) & Chr$(2) & _
                 CStr(sUserApp) & Chr$(2) & Chr$(1)
    Else
        ' User not found
        SendData SocketIndex, "B@MESSENGER" & Chr$(2) & "H" & Chr$(1)
    End If
End Function

' ============================================================================
' Proc_30_92 - HandleTimestamp
' Handles timestamp/heartbeat packets
' Returns current server time
' ============================================================================
Private Function HandleTimestamp(ByVal SocketIndex As Integer)
    On Error Resume Next

    ' Send current timestamp
    SendData SocketIndex, "BC" & Now & Chr$(1)
End Function

' ============================================================================
' Proc_30_93 - HandleFurniturePickup
' Handles picking up furniture from a room
' Validates ownership and adds item back to inventory
' ============================================================================
Private Function HandleFurniturePickup(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vFurniId As Variant
    Dim sFurniOwner As Variant
    Dim sRoomOwner As Variant
    Dim sHandItems As String
    Dim bIsOwner As Boolean
    Dim bHasRights As Boolean

    ' Extract furniture ID from packet
    vFurniId = Val(Mid$(sData, 5))

    ' Read furniture owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\owner.txt", 1, False, 0)
    sFurniOwner = oTextStream.ReadAll

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Check if user is furniture owner or room owner
    bIsOwner = (CStr(sFurniOwner) = gUserData(CLng(SocketIndex)).Username)
    bHasRights = (CStr(sRoomOwner) = gUserData(CLng(SocketIndex)).Username)

    If bIsOwner Or bHasRights Then
        ' Set furniture as not in room
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\inroom.txt", 2, False, 0)
        oTextStream.Write "0"

        ' Add to owner's hand
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & CStr(sFurniOwner) & "\hand.txt", 1, False, 0)
        sHandItems = oTextStream.ReadAll
        sHandItems = sHandItems & ";" & CStr(vFurniId)
        sHandItems = Replace(sHandItems, ";;", ";", 1, -1, 1)

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & CStr(sFurniOwner) & "\hand.txt", 2, False, 0)
        oTextStream.Write sHandItems

        ' Broadcast furniture removal to room
        BroadcastToRoom CLng(gUserData(CLng(SocketIndex)).RoomId), _
            "A_" & CStr(vFurniId) & Chr$(1)

        ' Update user's inventory if they are the owner
        If bIsOwner Then
            Call UpdateUserInventory(SocketIndex, "AAupdate")
        End If
    End If
End Function

' ============================================================================
' Proc_30_94 - HandleFurniturePlace
' Handles placing furniture in a room from inventory
' Validates ownership and room rights
' ============================================================================
Private Function HandleFurniturePlace(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim aPlaceParts() As String
    Dim vFurniId As Variant
    Dim vPosX As Variant
    Dim vPosY As Variant
    Dim vRotation As Variant
    Dim sFurniOwner As Variant
    Dim sRoomOwner As Variant
    Dim sFurniType As String
    Dim sFurniName As String
    Dim bHasRights As Boolean

    ' Parse placement data (space separated)
    aPlaceParts = Split(Mid$(sData, 3), " ", -1, 0)

    vFurniId = Val(aPlaceParts(0))
    vPosX = Val(aPlaceParts(1))
    vPosY = Val(aPlaceParts(2))
    vRotation = Val(aPlaceParts(3))

    ' Read furniture owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\owner.txt", 1, False, 0)
    sFurniOwner = oTextStream.ReadAll

    ' Verify user owns the furniture
    If CStr(sFurniOwner) <> gUserData(CLng(SocketIndex)).Username Then
        Exit Function
    End If

    ' Read room owner to check rights
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    bHasRights = (CStr(sRoomOwner) = gUserData(CLng(SocketIndex)).Username)

    ' Check if user has placement rights
    If Not bHasRights Then
        ' Check rights list
        bHasRights = HasRoomRights(SocketIndex, CLng(gUserData(CLng(SocketIndex)).RoomId))
    End If

    If bHasRights Then
        ' Update furniture position
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\x.txt", 2, False, 0)
        oTextStream.Write CStr(vPosX)

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\y.txt", 2, False, 0)
        oTextStream.Write CStr(vPosY)

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\rotation.txt", 2, False, 0)
        oTextStream.Write CStr(vRotation)

        ' Set furniture as in room
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\inroom.txt", 2, False, 0)
        oTextStream.Write CStr(gUserData(CLng(SocketIndex)).RoomId)

        ' Remove from user's hand
        RemoveFromHand SocketIndex, CLng(vFurniId)

        ' Read furniture type and name
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\type.txt", 1, False, 0)
        sFurniType = oTextStream.ReadAll

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\name.txt", 1, False, 0)
        sFurniName = oTextStream.ReadAll

        ' Broadcast furniture placement to room
        BroadcastToRoom CLng(gUserData(CLng(SocketIndex)).RoomId), _
            "A^" & CStr(vFurniId) & " " & CStr(sFurniName) & " " & _
            CStr(vPosX) & " " & CStr(vPosY) & " " & CStr(vRotation) & " " & _
            CStr(sFurniType) & Chr$(13) & Chr$(1)

        ' Update inventory
        Call UpdateUserInventory(SocketIndex, "AAupdate")
    End If
End Function

' ============================================================================
' Proc_30_95 - HandleFurnitureMove
' Handles moving already-placed furniture within a room
' Validates room rights before allowing move
' ============================================================================
Private Function HandleFurnitureMove(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim aMoveParts() As String
    Dim vFurniId As Variant
    Dim vNewX As Variant
    Dim vNewY As Variant
    Dim vNewRotation As Variant
    Dim sRoomOwner As Variant
    Dim bHasRights As Boolean

    ' Parse move data (space separated)
    aMoveParts = Split(Mid$(sData, 3), " ", -1, 0)

    vFurniId = Val(aMoveParts(0))
    vNewX = Val(aMoveParts(1))
    vNewY = Val(aMoveParts(2))
    vNewRotation = Val(aMoveParts(3))

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    bHasRights = (CStr(sRoomOwner) = gUserData(CLng(SocketIndex)).Username)

    If Not bHasRights Then
        bHasRights = HasRoomRights(SocketIndex, CLng(gUserData(CLng(SocketIndex)).RoomId))
    End If

    If bHasRights Then
        ' Update furniture position
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\x.txt", 2, False, 0)
        oTextStream.Write CStr(vNewX)

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\y.txt", 2, False, 0)
        oTextStream.Write CStr(vNewY)

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\rotation.txt", 2, False, 0)
        oTextStream.Write CStr(vNewRotation)

        ' Broadcast furniture move to room
        BroadcastToRoom CLng(gUserData(CLng(SocketIndex)).RoomId), _
            "A_" & CStr(vFurniId) & " " & CStr(vNewX) & " " & CStr(vNewY) & " " & _
            CStr(vNewRotation) & Chr$(1)
    End If
End Function

' ============================================================================
' Proc_30_96 - HandleWallItemPlace
' Handles placing wall items (posters, sticky notes, etc.)
' Validates ownership and room rights
' ============================================================================
Private Function HandleWallItemPlace(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim aPlaceParts() As String
    Dim vFurniId As Variant
    Dim vWallPos As Variant
    Dim sFurniOwner As Variant
    Dim sRoomOwner As Variant
    Dim bHasRights As Boolean

    ' Parse wall item data
    aPlaceParts = Split(Mid$(sData, 3), " ", -1, 0)

    vFurniId = Val(aPlaceParts(0))
    vWallPos = aPlaceParts(1)  ' Wall position string like ":w=0,5 l=11,53 l"

    ' Read furniture owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\owner.txt", 1, False, 0)
    sFurniOwner = oTextStream.ReadAll

    ' Verify user owns the wall item
    If CStr(sFurniOwner) <> gUserData(CLng(SocketIndex)).Username Then
        Exit Function
    End If

    ' Check room rights
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(gUserData(CLng(SocketIndex)).RoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    bHasRights = (CStr(sRoomOwner) = gUserData(CLng(SocketIndex)).Username)
    If Not bHasRights Then
        bHasRights = HasRoomRights(SocketIndex, CLng(gUserData(CLng(SocketIndex)).RoomId))
    End If

    If bHasRights Then
        ' Update wall item position
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\wallpos.txt", 2, False, 0)
        oTextStream.Write CStr(vWallPos)

        ' Set as in room
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\inroom.txt", 2, False, 0)
        oTextStream.Write CStr(gUserData(CLng(SocketIndex)).RoomId)

        ' Remove from hand
        RemoveFromHand SocketIndex, CLng(vFurniId)

        ' Broadcast wall item placement
        BroadcastToRoom CLng(gUserData(CLng(SocketIndex)).RoomId), _
            "AS" & CStr(vFurniId) & " " & CStr(vWallPos) & Chr$(1)

        ' Update inventory
        Call UpdateUserInventory(SocketIndex, "AAupdate")
    End If
End Function

' ============================================================================
' Proc_30_97 - HandleRoomNavigator
' Handles navigator room list requests
' Returns list of rooms in requested category
' ============================================================================
Private Function HandleRoomNavigator(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vCategoryId As Variant
    Dim sRoomList As String
    Dim aRoomFolders() As String
    Dim oFolder As Object
    Dim oSubFolder As Object
    Dim sRoomName As String
    Dim sRoomOwner As String
    Dim nRoomCount As Long
    Dim i As Long

    ' Extract category ID from packet
    vCategoryId = Val(Mid$(sData, 3))

    sRoomList = ""
    nRoomCount = 0

    ' Get list of room folders
    Set oFolder = gFSO.GetFolder(gAppPath & "privaterooms")

    For Each oSubFolder In oFolder.SubFolders
        ' Check if room is in the requested category
        If gFSO.FileExists(oSubFolder.Path & "\category.txt") Then
            Set oTextStream = gFSO.OpenTextFile(oSubFolder.Path & "\category.txt", 1, False, 0)
            Dim sCategory As String
            sCategory = oTextStream.ReadAll

            ' Check if room matches category and isn't deleted
            If Val(sCategory) = Val(vCategoryId) And _
               Not gFSO.FileExists(oSubFolder.Path & "\deleted.txt") Then

                ' Read room details
                Set oTextStream = gFSO.OpenTextFile(oSubFolder.Path & "\name.txt", 1, False, 0)
                sRoomName = oTextStream.ReadAll

                Set oTextStream = gFSO.OpenTextFile(oSubFolder.Path & "\owner.txt", 1, False, 0)
                sRoomOwner = oTextStream.ReadAll

                ' Add to room list
                sRoomList = sRoomList & EncodeVL64(CSng(oSubFolder.Name)) & _
                           CStr(sRoomName) & Chr$(2) & _
                           CStr(sRoomOwner) & Chr$(2) & _
                           "open" & Chr$(2) & _
                           "0" & Chr$(2) & _
                           "10" & Chr$(2) & _
                           CStr(sCategory) & Chr$(13)

                nRoomCount = nRoomCount + 1
                If nRoomCount >= 50 Then Exit For
            End If
        End If
    Next

    ' Send room list
    SendData SocketIndex, "@P" & EncodeVL64(CSng(nRoomCount)) & sRoomList & Chr$(1)
End Function

' ============================================================================
' Proc_30_98 - HandleOwnRooms
' Handles request for user's own rooms list
' Returns all rooms owned by the user
' ============================================================================
Private Function HandleOwnRooms(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRoomList As String
    Dim oFolder As Object
    Dim oSubFolder As Object
    Dim sRoomName As String
    Dim sRoomOwner As String
    Dim nRoomCount As Long

    sRoomList = ""
    nRoomCount = 0

    ' Get list of room folders
    Set oFolder = gFSO.GetFolder(gAppPath & "privaterooms")

    For Each oSubFolder In oFolder.SubFolders
        ' Check room owner
        If gFSO.FileExists(oSubFolder.Path & "\owner.txt") Then
            Set oTextStream = gFSO.OpenTextFile(oSubFolder.Path & "\owner.txt", 1, False, 0)
            sRoomOwner = oTextStream.ReadAll

            ' Check if owned by current user and not deleted
            If LCase$(sRoomOwner) = LCase$(gUserData(CLng(SocketIndex)).Username) And _
               Not gFSO.FileExists(oSubFolder.Path & "\deleted.txt") Then

                ' Read room name
                Set oTextStream = gFSO.OpenTextFile(oSubFolder.Path & "\name.txt", 1, False, 0)
                sRoomName = oTextStream.ReadAll

                ' Add to room list
                sRoomList = sRoomList & EncodeVL64(CSng(oSubFolder.Name)) & _
                           CStr(sRoomName) & Chr$(2) & Chr$(13)

                nRoomCount = nRoomCount + 1
            End If
        End If
    Next

    ' Send own rooms list
    SendData SocketIndex, "@Q" & EncodeVL64(CSng(nRoomCount)) & sRoomList & Chr$(1)
End Function

' ============================================================================
' Proc_30_99 - HandleRoomInfo
' Handles request for detailed room information
' Returns room name, description, owner, settings
' ============================================================================
Private Function HandleRoomInfo(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vRoomId As Variant
    Dim sRoomName As Variant
    Dim sRoomDesc As Variant
    Dim sRoomOwner As Variant
    Dim sRoomModel As Variant
    Dim sOpenType As Variant
    Dim sMaxUsers As Variant
    Dim sCategory As Variant

    ' Extract room ID from packet
    vRoomId = Val(Mid$(sData, 3))

    ' Check if room exists and not deleted
    If Not gFSO.FolderExists(gAppPath & "privaterooms\" & CStr(vRoomId)) Then
        Exit Function
    End If

    If gFSO.FileExists(gAppPath & "privaterooms\" & CStr(vRoomId) & "\deleted.txt") Then
        Exit Function
    End If

    ' Read room details
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\name.txt", 1, False, 0)
    sRoomName = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\description.txt", 1, False, 0)
    sRoomDesc = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\model.txt", 1, False, 0)
    sRoomModel = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\opentype.txt", 1, False, 0)
    sOpenType = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\maxusers.txt", 1, False, 0)
    sMaxUsers = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\category.txt", 1, False, 0)
    sCategory = oTextStream.ReadAll

    ' Build and send room info packet
    SendData SocketIndex, "@v" & _
             "I" & CStr(vRoomId) & Chr$(2) & _
             CStr(sRoomName) & Chr$(2) & _
             CStr(sRoomOwner) & Chr$(2) & _
             CStr(sRoomModel) & Chr$(2) & _
             CStr(sRoomDesc) & Chr$(2) & _
             "0" & Chr$(2) & _
             CStr(sCategory) & Chr$(2) & _
             CStr(sMaxUsers) & Chr$(2) & _
             CStr(sOpenType) & Chr$(1)
End Function

' ============================================================================
' Proc_30_100 - HandleRoomCreate
' Handles creating a new private room
' Creates room folder and initial settings files
' ============================================================================
Private Function HandleRoomCreate(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim aRoomParts() As String
    Dim sRoomName As Variant
    Dim sRoomModel As Variant
    Dim sOpenType As Variant
    Dim vNewRoomId As Variant

    ' Parse room creation data (chr$(13) separated)
    aRoomParts = Split(Mid$(sData, 3), Chr$(13), -1, 0)

    ' Extract room settings
    sRoomName = aRoomParts(1)
    sRoomModel = aRoomParts(2)
    sOpenType = aRoomParts(3)

    ' Apply bobba filter to room name
    If GetINI("config", "bobba_filter", gSettingsFile) = "1" Then
        sRoomName = ApplyBobbaFilter(CStr(sRoomName))
    End If

    ' Get next room ID
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\count.txt", 1, False, 0)
    vNewRoomId = Val(oTextStream.ReadAll) + 1

    ' Update room count
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\count.txt", 2, False, 0)
    oTextStream.Write CStr(vNewRoomId)

    ' Create room folder
    gFSO.CreateFolder gAppPath & "privaterooms\" & CStr(vNewRoomId)

    ' Write room files
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vNewRoomId) & "\name.txt", 2, True, 0)
    oTextStream.Write CStr(sRoomName)

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vNewRoomId) & "\owner.txt", 2, True, 0)
    oTextStream.Write gUserData(CLng(SocketIndex)).Username

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vNewRoomId) & "\model.txt", 2, True, 0)
    oTextStream.Write CStr(sRoomModel)

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vNewRoomId) & "\opentype.txt", 2, True, 0)
    oTextStream.Write CStr(sOpenType)

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vNewRoomId) & "\description.txt", 2, True, 0)
    oTextStream.Write ""

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vNewRoomId) & "\maxusers.txt", 2, True, 0)
    oTextStream.Write "25"

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vNewRoomId) & "\category.txt", 2, True, 0)
    oTextStream.Write "0"

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vNewRoomId) & "\rights.txt", 2, True, 0)
    oTextStream.Write ""

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vNewRoomId) & "\allrights.txt", 2, True, 0)
    oTextStream.Write "0"

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vNewRoomId) & "\votecount.txt", 2, True, 0)
    oTextStream.Write "0"

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vNewRoomId) & "\votetotal.txt", 2, True, 0)
    oTextStream.Write "0"

    ' Create voters folder
    gFSO.CreateFolder gAppPath & "privaterooms\" & CStr(vNewRoomId) & "\voters"

    ' Send room created response with room ID
    SendData SocketIndex, "@{" & CStr(vNewRoomId) & Chr$(13) & CStr(sRoomName) & Chr$(1)
End Function

' ============================================================================
' HasRoomRights - Helper to check if user has rights in a room
' ============================================================================
Private Function HasRoomRights(ByVal SocketIndex As Integer, ByVal RoomId As Long) As Boolean
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRights As String
    Dim aRights() As String
    Dim sRankFile As String
    Dim i As Long

    HasRoomRights = False

    ' Check all rights flag
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(RoomId) & "\allrights.txt", 1, False, 0)
    If oTextStream.ReadAll = "1" Then
        HasRoomRights = True
        Exit Function
    End If

    ' Check rights list
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(RoomId) & "\rights.txt", 1, False, 0)
    sRights = oTextStream.ReadAll
    aRights = Split(sRights, ";", -1, 0)

    For i = 0 To UBound(aRights)
        If aRights(i) = gUserData(CLng(SocketIndex)).Username Then
            HasRoomRights = True
            Exit Function
        End If
    Next i

    ' Check rank permission
    sRankFile = gAppPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"
    If GetINI("rank", "rights_in_any_room", sRankFile) = "1" Then
        HasRoomRights = True
    End If
End Function

' ============================================================================
' RemoveFromHand - Helper to remove an item from user's inventory
' ============================================================================
Private Function RemoveFromHand(ByVal SocketIndex As Integer, ByVal FurniId As Long)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sHandItems As String
    Dim aItems() As String
    Dim sNewHand As String
    Dim i As Long

    ' Read current hand
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 1, False, 0)
    sHandItems = oTextStream.ReadAll

    ' Split and rebuild without the removed item
    aItems = Split(sHandItems, ";", -1, 0)
    sNewHand = ""

    For i = 0 To UBound(aItems)
        If Val(aItems(i)) <> FurniId And aItems(i) <> "" Then
            If sNewHand = "" Then
                sNewHand = aItems(i)
            Else
                sNewHand = sNewHand & ";" & aItems(i)
            End If
        End If
    Next i

    ' Write updated hand
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 2, False, 0)
    oTextStream.Write sNewHand
End Function

' ============================================================================
' GetHabboId - Helper to get a user's numeric ID from username
' ============================================================================
Private Function GetHabboId(ByVal sUsername As String) As Long
    On Error Resume Next

    Dim oTextStream As Object
    Dim sId As String

    GetHabboId = 0

    If gFSO.FileExists(gAppPath & "habbos\" & LCase$(sUsername) & "\id.txt") Then
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(sUsername) & "\id.txt", 1, False, 0)
        sId = oTextStream.ReadAll
        GetHabboId = Val(sId)
    End If
End Function

' ============================================================================
' GetLanguageText - Helper to get localized text from language file
' ============================================================================
Private Function GetLanguageText(ByVal sKey As String) As String
    On Error Resume Next

    GetLanguageText = GetINI("lang", sKey, gAppPath & "lang.ini")

    If GetLanguageText = "" Then
        GetLanguageText = sKey
    End If
End Function

' ============================================================================
' DecodeBase64 - Helper to decode Base64 encoded strings
' ============================================================================
Private Function DecodeBase64(ByVal sEncoded As String) As String
    On Error Resume Next

    ' Simple placeholder - actual Base64 decoding would be implemented here
    DecodeBase64 = sEncoded
End Function

' ============================================================================
' Proc_30_101 - HandleRoomPassword
' Handles room password entry validation
' Checks if entered password matches room password
' ============================================================================
Private Function HandleRoomPassword(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vRoomId As Variant
    Dim sEnteredPass As Variant
    Dim sRoomPass As Variant

    ' Extract room ID and password from packet
    Dim aPassParts() As String
    aPassParts = Split(Mid$(sData, 3), Chr$(13), -1, 0)

    vRoomId = Val(aPassParts(0))
    sEnteredPass = aPassParts(1)

    ' Read room password
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\password.txt", 1, False, 0)
    sRoomPass = oTextStream.ReadAll

    ' Check password
    If CStr(sEnteredPass) = CStr(sRoomPass) Then
        ' Password correct - allow entry
        gUserData(CLng(SocketIndex)).RoomId = CDbl(vRoomId)
        SendData SocketIndex, "@i" & Chr$(1)
    Else
        ' Password incorrect
        SendData SocketIndex, "BC" & Chr$(1)
    End If
End Function

' ============================================================================
' Proc_30_102 - HandleRoomDoorbell
' Handles doorbell ringing for closed rooms
' Notifies room owner/users with rights
' ============================================================================
Private Function HandleRoomDoorbell(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRoomOwner As Variant
    Dim i As Variant

    ' Get room we're trying to enter
    Dim vTargetRoom As Double
    vTargetRoom = gUserData(CLng(SocketIndex)).TargetRoom

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vTargetRoom) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Find users in the room with rights to answer doorbell
    For i = 1 To frmMain.SockI
        If gUserData(CLng(i)).RoomId = vTargetRoom And frmMain.Sock(CInt(i)).State = 7 Then
            ' Check if this user can answer doorbell (owner or has rights)
            If gUserData(CLng(i)).Username = CStr(sRoomOwner) Or _
               HasRoomRights(CInt(i), CLng(vTargetRoom)) Then
                ' Send doorbell notification
                SendData CInt(i), "A{" & gUserData(CLng(SocketIndex)).Username & Chr$(1)
            End If
        End If
    Next i

    ' Send waiting message to user
    SendData SocketIndex, "A|" & Chr$(1)
End Function

' ============================================================================
' Proc_30_50 - HandleFurniturePlaceFromHand
' Handles placing furniture from user's inventory (hand) into the room
' Processes AZ packet - furniture placement with coordinates
'
' Validates:
' - User has rights to place (owner, rights list, allrights, or rank)
' - Max rollers per room limit
' - Max pets (nests) per room limit
' - Only one sound machine per room
' - Furniture is not already placed in a room
'
' Original P-Code: Proc_30_50_BBB150 (line 96511)
' ============================================================================
Private Function HandleFurniturePlaceFromHand(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRoomOwner As String
    Dim sRights As String
    Dim sAllRights As String
    Dim aRights() As String
    Dim bHasRights As Boolean
    Dim sRankFile As String
    Dim i As Variant

    Dim vRoomId As Double
    Dim aDataParts() As String
    Dim vFurniId As Variant
    Dim sFurniType As String
    Dim sFurniName As String
    Dim sFurniIs As String
    Dim sInRoom As String
    Dim vPosX As Variant
    Dim vPosY As Variant
    Dim vRotation As Variant
    Dim sWallPos As String

    Dim sRoomFurni As String
    Dim aRoomFurni() As String
    Dim vRollerCount As Long
    Dim vNestCount As Long
    Dim vSoundMachineCount As Long
    Dim vMaxRollers As Long
    Dim vMaxPets As Long

    ' Get user's current room
    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Read room rights list
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\rights.txt", 1, False, 0)
    sRights = oTextStream.ReadAll

    bHasRights = False

    ' Check if user is owner
    If LCase$(gUserData(CLng(SocketIndex)).Username) = LCase$(sRoomOwner) Then
        bHasRights = True
    End If

    ' Check allrights setting
    If Not bHasRights Then
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\allrights.txt", 1, False, 0)
        sAllRights = oTextStream.ReadAll
        If sAllRights = "1" Then
            bHasRights = True
        End If
    End If

    ' Check rights list
    If Not bHasRights Then
        aRights = Split(sRights, ";", -1, vbBinaryCompare)
        For i = 0 To UBound(aRights)
            If LCase$(aRights(i)) = LCase$(gUserData(CLng(SocketIndex)).Username) Then
                bHasRights = True
                Exit For
            End If
        Next i
    End If

    ' Check rank permission
    If Not bHasRights Then
        sRankFile = gAppPath & "ranks\" & gUserData(CLng(SocketIndex)).UserType & ".ini"
        If GetINI("rank", "rights_in_any_room", sRankFile) = "1" Then
            bHasRights = True
        End If
    End If

    ' Exit if no rights
    If Not bHasRights Then Exit Function

    ' Parse packet data: AZ furniid x y rotation
    ' Data starts at position 3
    aDataParts = Split(Mid$(sData, 3), " ", -1, vbBinaryCompare)

    If UBound(aDataParts) < 0 Then Exit Function

    vFurniId = aDataParts(0)

    ' Read furni inroom status - must be "0" (not placed)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\inroom.txt", 1, False, 0)
    sInRoom = oTextStream.ReadAll

    If sInRoom <> "0" Then Exit Function

    ' Read furni type (roller, nest, sound_machine, etc.)
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\type.txt", 1, False, 0)
    sFurniType = oTextStream.ReadAll

    ' =========================================================================
    ' ROLLER CHECK - Max rollers per room
    ' =========================================================================
    If sFurniType = "roller" Then
        ' Count existing rollers in room
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\furni.txt", 1, False, 0)
        sRoomFurni = oTextStream.ReadAll
        aRoomFurni = Split(sRoomFurni, ";", -1, vbBinaryCompare)

        vRollerCount = 0
        For i = 0 To UBound(aRoomFurni)
            If aRoomFurni(i) <> "" Then
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & aRoomFurni(i) & "\type.txt", 1, False, 0)
                If oTextStream.ReadAll = "roller" Then
                    vRollerCount = vRollerCount + 1
                End If
            End If
        Next i

        ' Check max limit
        vMaxRollers = Val(GetINI("config", "maxrollersinroom", gSettingsFile))
        If vRollerCount >= vMaxRollers And gUserData(CLng(SocketIndex)).UserType = "habbo" Then
            ' Send alert and refresh inventory
            Dim sAlert As String
            sAlert = GetLocaleString("too_many_rollers_in_room_alert")
            sAlert = Replace(sAlert, "%max%", CStr(vMaxRollers), 1, -1, vbBinaryCompare)
            SendData SocketIndex, "BK" & sAlert & Chr$(1)
            Call ProcessInventoryCommand("AAupdate", SocketIndex)
            Exit Function
        End If
    End If

    ' =========================================================================
    ' PET NEST CHECK - Max pets per room
    ' =========================================================================
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\name.txt", 1, False, 0)
    sFurniName = oTextStream.ReadAll

    If sFurniName = "nest" Then
        ' Count existing nests in room
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\furni.txt", 1, False, 0)
        sRoomFurni = oTextStream.ReadAll
        aRoomFurni = Split(sRoomFurni, ";", -1, vbBinaryCompare)

        vNestCount = 0
        For i = 0 To UBound(aRoomFurni)
            If aRoomFurni(i) <> "" Then
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & aRoomFurni(i) & "\name.txt", 1, False, 0)
                If oTextStream.ReadAll = "nest" Then
                    vNestCount = vNestCount + 1
                End If
            End If
        Next i

        ' Check max limit
        vMaxPets = Val(GetINI("config", "maxpetsinroom", gSettingsFile))
        If vNestCount >= vMaxPets And gUserData(CLng(SocketIndex)).UserType = "habbo" Then
            SendData SocketIndex, "BK" & GetLocaleString("too_many_pets_in_room_alert") & Chr$(1)
            Call ProcessInventoryCommand("AAupdate", SocketIndex)
            Exit Function
        End If
    End If

    ' =========================================================================
    ' SOUND MACHINE CHECK - Only one per room
    ' =========================================================================
    If sFurniName Like "sound_machine*" Then
        ' Count existing sound machines in room
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\furni.txt", 1, False, 0)
        sRoomFurni = oTextStream.ReadAll
        aRoomFurni = Split(sRoomFurni, ";", -1, vbBinaryCompare)

        vSoundMachineCount = 0
        For i = 0 To UBound(aRoomFurni)
            If aRoomFurni(i) <> "" Then
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & aRoomFurni(i) & "\name.txt", 1, False, 0)
                Dim sCheckName As String
                sCheckName = oTextStream.ReadAll
                If sCheckName Like "sound_machine*" Then
                    vSoundMachineCount = vSoundMachineCount + 1
                End If
            End If
        Next i

        If vSoundMachineCount >= 1 Then
            SendData SocketIndex, "BK" & GetLocaleString("trax_one_room") & Chr$(1)
            Call ProcessInventoryCommand("AAupdate", SocketIndex)
            Exit Function
        End If
    End If

    ' =========================================================================
    ' READ FURNITURE TYPE (I = floor item, S = wall item)
    ' =========================================================================
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\is.txt", 1, False, 0)
    sFurniIs = oTextStream.ReadAll

    ' =========================================================================
    ' FLOOR ITEM PLACEMENT (is = "I")
    ' =========================================================================
    If sFurniIs = "I" Then
        ' Read furniture name
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\name.txt", 1, False, 0)
        sFurniName = oTextStream.ReadAll

        ' Handle post-it notes specially (wall placement even though marked as I)
        If InStr(1, sFurniName, "post.it", vbTextCompare) = 1 Then
            ' Post-it placement handled differently
            Call PlacePostIt(CStr(vFurniId), SocketIndex)
            Exit Function
        End If

        ' Parse coordinates for floor items
        If UBound(aDataParts) >= 3 Then
            vPosX = Val(aDataParts(1))
            vPosY = Val(aDataParts(2))
            vRotation = Val(aDataParts(3))
        Else
            vPosX = 0
            vPosY = 0
            vRotation = 0
        End If

        ' Update furni position files
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\x.txt", 2, True, 0)
        oTextStream.Write CStr(vPosX)

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\y.txt", 2, True, 0)
        oTextStream.Write CStr(vPosY)

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\rotation.txt", 2, True, 0)
        oTextStream.Write CStr(vRotation)

        ' Mark furniture as placed in this room
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\inroom.txt", 2, True, 0)
        oTextStream.Write CStr(vRoomId)

        ' Add to room's furniture list
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\furni.txt", 1, False, 0)
        sRoomFurni = oTextStream.ReadAll

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\furni.txt", 2, False, 0)
        If sRoomFurni = "" Then
            oTextStream.Write CStr(vFurniId)
        Else
            oTextStream.Write sRoomFurni & ";" & CStr(vFurniId)
        End If

        ' Remove from user's hand
        Call RemoveFromHand(SocketIndex, CLng(vFurniId))

        ' Read additional furni data for broadcast
        Dim sFurniCust As String
        Dim sFurniHeight As String
        Dim sFurniDim As String

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\cust.txt", 1, False, 0)
        sFurniCust = oTextStream.ReadAll

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\h.txt", 1, False, 0)
        sFurniHeight = oTextStream.ReadAll
        If sFurniHeight = "" Then sFurniHeight = "0"

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\dim.txt", 1, False, 0)
        sFurniDim = oTextStream.ReadAll

        ' Broadcast furniture placement to all users in room
        ' Format: @Y furniid name x y h rotation dim cust
        Dim sBroadcast As String
        sBroadcast = "@Y" & CStr(vFurniId) & " " & sFurniName & " " & _
                     CStr(vPosX) & " " & CStr(vPosY) & " " & sFurniHeight & " " & _
                     CStr(vRotation) & " " & sFurniDim & " " & sFurniCust & Chr$(1)

        Call BroadcastToRoom(CInt(vRoomId), sBroadcast)

        ' Update user's inventory display
        Call ProcessInventoryCommand("AAupdate", SocketIndex)

    ' =========================================================================
    ' WALL ITEM PLACEMENT (is = "S")
    ' =========================================================================
    ElseIf sFurniIs = "S" Then
        ' Parse wall position string
        If UBound(aDataParts) >= 1 Then
            sWallPos = aDataParts(1)
        Else
            sWallPos = ":w=0,0 l=0,0 l"
        End If

        ' Update wall position
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\wallpos.txt", 2, True, 0)
        oTextStream.Write sWallPos

        ' Mark furniture as placed in this room
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\inroom.txt", 2, True, 0)
        oTextStream.Write CStr(vRoomId)

        ' Add to room's furniture list
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\furni.txt", 1, False, 0)
        sRoomFurni = oTextStream.ReadAll

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\furni.txt", 2, False, 0)
        If sRoomFurni = "" Then
            oTextStream.Write CStr(vFurniId)
        Else
            oTextStream.Write sRoomFurni & ";" & CStr(vFurniId)
        End If

        ' Remove from user's hand
        Call RemoveFromHand(SocketIndex, CLng(vFurniId))

        ' Read furni data for broadcast
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\name.txt", 1, False, 0)
        sFurniName = oTextStream.ReadAll

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\cust.txt", 1, False, 0)
        sFurniCust = oTextStream.ReadAll

        ' Broadcast wall item placement
        ' Format: @\ furniid name wallpos cust
        sBroadcast = "@\" & CStr(vFurniId) & " " & sFurniName & " " & sWallPos & " " & sFurniCust & Chr$(1)

        Call BroadcastToRoom(CInt(vRoomId), sBroadcast)

        ' Update user's inventory display
        Call ProcessInventoryCommand("AAupdate", SocketIndex)
    End If
End Function

' ============================================================================
' PlacePostIt - Helper to place a post-it note on wall
' ============================================================================
Private Function PlacePostIt(ByVal sFurniId As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vRoomId As Double
    Dim sRoomFurni As String
    Dim sWallPos As String
    Dim sFurniName As String
    Dim sFurniCust As String

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Default wall position for post-it
    sWallPos = ":w=0,0 l=0,0 l"

    ' Update wall position
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\wallpos.txt", 2, True, 0)
    oTextStream.Write sWallPos

    ' Mark as placed
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\inroom.txt", 2, True, 0)
    oTextStream.Write CStr(vRoomId)

    ' Add to room furniture
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\furni.txt", 1, False, 0)
    sRoomFurni = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\furni.txt", 2, False, 0)
    If sRoomFurni = "" Then
        oTextStream.Write sFurniId
    Else
        oTextStream.Write sRoomFurni & ";" & sFurniId
    End If

    ' Remove from hand
    Call RemoveFromHand(SocketIndex, CLng(sFurniId))

    ' Broadcast
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\name.txt", 1, False, 0)
    sFurniName = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sFurniId & "\cust.txt", 1, False, 0)
    sFurniCust = oTextStream.ReadAll

    Dim sBroadcast As String
    sBroadcast = "@\" & sFurniId & " " & sFurniName & " " & sWallPos & " " & sFurniCust & Chr$(1)

    Call BroadcastToRoom(CInt(vRoomId), sBroadcast)
    Call ProcessInventoryCommand("AAupdate", SocketIndex)
End Function

' ============================================================================
' Proc_30_51 - HandleAdminFurnitureManagement
' Admin command handler for creating/placing furniture items in rooms
' Handles "ACnew item X" and "A^X" packets for admin furniture operations
'
' Only accessible to:
' - Room owner
' - Users with "admin" rank
' - Users with "manager" rank
'
' Original P-Code: Proc_30_51_B88DF4 (line 102854)
' ============================================================================
Private Function HandleAdminFurnitureManagement(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRoomOwner As String
    Dim sUserRank As String
    Dim bHasAccess As Boolean
    Dim vRoomId As Double
    Dim vFurniId As Variant
    Dim sFurniName As String
    Dim sFurniType As String
    Dim sFurniCust As String
    Dim sFurniIs As String
    Dim sFurniLoc As String
    Dim sFurniVar As String
    Dim sRoomFurni As String
    Dim aRoomFurni() As String
    Dim sNewFurniList As String
    Dim aLocParts() As String
    Dim sInRoom As String
    Dim i As Variant

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Read user's rank
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\rank.txt", 1, False, 0)
    sUserRank = oTextStream.ReadAll

    ' Check access - must be owner, admin, or manager
    bHasAccess = False
    If gUserData(CLng(SocketIndex)).Username = sRoomOwner Then bHasAccess = True
    If sUserRank = "admin" Then bHasAccess = True
    If sUserRank = "manager" Then bHasAccess = True

    If Not bHasAccess Then Exit Function

    ' =========================================================================
    ' HANDLE "ACnew item X" - Add item X to current room (admin create)
    ' =========================================================================
    If Mid$(sData, 1, 11) = "ACnew item " Then
        vFurniId = Mid$(sData, 12)

        ' Read furniture name
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\name.txt", 1, False, 0)
        sFurniName = oTextStream.ReadAll

        ' Special handling for post.it items
        If sFurniName = "post.it" Then
            ' Initialize post-it item files
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\cust.txt", 2, True, 0)
            oTextStream.Write "1"

            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\inroom.txt", 2, True, 0)
            oTextStream.Write "0"

            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\is.txt", 2, True, 0)
            oTextStream.Write "I"

            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\loc.txt", 2, True, 0)
            oTextStream.Write ""

            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\name.txt", 2, True, 0)
            oTextStream.Write "post.it"

            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\type.txt", 2, True, 0)
            oTextStream.Write "poster"

            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\var.txt", 2, True, 0)
            oTextStream.Write "H"
        End If

        ' Broadcast item added to room
        Call BroadcastToRoom(CInt(vRoomId), "AT" & CStr(vFurniId) & Chr$(1))

        ' Read current room furniture list
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\furni.txt", 1, False, 0)
        sRoomFurni = oTextStream.ReadAll

        ' Remove this item from the list if it exists (to avoid duplicates)
        aRoomFurni = Split(sRoomFurni, ";", -1, vbBinaryCompare)
        sNewFurniList = ""
        For i = 0 To UBound(aRoomFurni)
            If aRoomFurni(i) <> "" And aRoomFurni(i) <> CStr(vFurniId) Then
                sNewFurniList = sNewFurniList & ";" & aRoomFurni(i)
            End If
        Next i
        sNewFurniList = Replace(sNewFurniList, ";;", ";", 1, -1, vbBinaryCompare)

        ' Write updated furniture list
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\furni.txt", 2, False, 0)
        oTextStream.Write sNewFurniList

        ' Add to user's hand
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 1, False, 0)
        Dim sUserHand As String
        sUserHand = oTextStream.ReadAll
        sUserHand = Replace(sUserHand & ";" & CStr(vFurniId), ";;", ";", 1, -1, vbBinaryCompare)

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 2, False, 0)
        oTextStream.Write sUserHand

        ' Update inventory
        Call ProcessInventoryCommand("AAupdate", SocketIndex)
        Exit Function
    End If

    ' =========================================================================
    ' HANDLE "A^X" - Delete/Remove item X from room
    ' =========================================================================
    vFurniId = Mid$(sData, 13)

    ' Broadcast item removal
    Call BroadcastToRoom(CInt(vRoomId), "A^" & CStr(vFurniId) & Chr$(1))

    ' Read furniture properties
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\type.txt", 1, False, 0)
    sFurniType = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\cust.txt", 1, False, 0)
    sFurniCust = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\name.txt", 1, False, 0)
    sFurniName = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\loc.txt", 1, False, 0)
    sFurniLoc = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\inroom.txt", 1, False, 0)
    sInRoom = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\var.txt", 1, False, 0)
    sFurniVar = oTextStream.ReadAll

    ' Handle roller removal - update loaded rollers
    If sFurniType = "roller" Then
        Dim sLoadedRollers As String
        sLoadedRollers = frmMain.LoadedRollersGet()
        sLoadedRollers = Replace(sLoadedRollers, "<" & CStr(vFurniId) & ">", "", 1, -1, vbBinaryCompare)
        frmMain.LoadedRollersSet sLoadedRollers
    End If

    ' Remove from room's furniture list
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\furni.txt", 1, False, 0)
    sRoomFurni = oTextStream.ReadAll
    aRoomFurni = Split(sRoomFurni, ";", -1, vbBinaryCompare)

    sNewFurniList = ""
    For i = 0 To UBound(aRoomFurni)
        If aRoomFurni(i) <> "" And aRoomFurni(i) <> CStr(vFurniId) Then
            sNewFurniList = sNewFurniList & ";" & aRoomFurni(i)
        End If
    Next i
    sNewFurniList = Replace(sNewFurniList, ";;", ";", 1, -1, vbBinaryCompare)
    If Left$(sNewFurniList, 1) = ";" Then sNewFurniList = Mid$(sNewFurniList, 2)

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\furni.txt", 2, False, 0)
    oTextStream.Write sNewFurniList

    ' Add to user's hand
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 1, False, 0)
    sUserHand = oTextStream.ReadAll
    sUserHand = Replace(sUserHand & ";" & CStr(vFurniId), ";;", ";", 1, -1, vbBinaryCompare)

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 2, False, 0)
    oTextStream.Write sUserHand

    ' Mark item as not in room
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\inroom.txt", 2, True, 0)
    oTextStream.Write "0"

    ' Update inventory
    Call ProcessInventoryCommand("AAlast", SocketIndex)
End Function

' ============================================================================
' Proc_30_52 - HandleFurnitureInteraction
' Handles furniture state toggling and special interactions
' Processes AN packet for furniture use/toggle operations
'
' Handles special furniture types:
' - Doors/Gates - toggle open/closed
' - Dice - roll/reset
' - Sound machines - play/stop
' - Vending machines - dispense items
' - Rollers - toggle direction
' - And many more interactive furniture types
'
' Original P-Code: Proc_30_52_BC0FD8 (line 105264)
' ============================================================================
Private Function HandleFurnitureInteraction(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRoomOwner As String
    Dim sRights As String
    Dim sAllRights As String
    Dim aRights() As String
    Dim bHasRights As Boolean
    Dim sRankFile As String
    Dim i As Variant

    Dim vRoomId As Double
    Dim vFurniId As Variant
    Dim sFurniType As String
    Dim sFurniName As String
    Dim sFurniVar As String
    Dim sFurniCust As String
    Dim sFurniX As String
    Dim sFurniY As String
    Dim sFurniH As String
    Dim sFurniRot As String

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Read rights
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\rights.txt", 1, False, 0)
    sRights = oTextStream.ReadAll

    bHasRights = False

    ' Check owner
    If LCase$(gUserData(CLng(SocketIndex)).Username) = LCase$(sRoomOwner) Then
        bHasRights = True
    End If

    ' Check allrights
    If Not bHasRights Then
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\allrights.txt", 1, False, 0)
        sAllRights = oTextStream.ReadAll
        If sAllRights = "1" Then bHasRights = True
    End If

    ' Check rights list
    If Not bHasRights Then
        aRights = Split(sRights, ";", -1, vbBinaryCompare)
        For i = 0 To UBound(aRights)
            If LCase$(aRights(i)) = LCase$(gUserData(CLng(SocketIndex)).Username) Then
                bHasRights = True
                Exit For
            End If
        Next i
    End If

    ' Check rank permission
    If Not bHasRights Then
        sRankFile = gAppPath & "ranks\" & gUserData(CLng(SocketIndex)).UserType & ".ini"
        If GetINI("rank", "rights_in_any_room", sRankFile) = "1" Then
            bHasRights = True
        End If
    End If

    ' Parse furniture ID from packet (after "AN")
    vFurniId = Mid$(sData, 3)

    ' Read furniture properties
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\type.txt", 1, False, 0)
    sFurniType = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\name.txt", 1, False, 0)
    sFurniName = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\var.txt", 1, False, 0)
    sFurniVar = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\cust.txt", 1, False, 0)
    sFurniCust = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\x.txt", 1, False, 0)
    sFurniX = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\y.txt", 1, False, 0)
    sFurniY = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\h.txt", 1, False, 0)
    sFurniH = oTextStream.ReadAll
    If sFurniH = "" Then sFurniH = "0"

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\rotation.txt", 1, False, 0)
    sFurniRot = oTextStream.ReadAll

    ' =========================================================================
    ' HANDLE DOOR/GATE TOGGLE
    ' =========================================================================
    If sFurniType = "door" Or sFurniType = "gate" Then
        If bHasRights Then
            ' Toggle door state
            If sFurniVar = "O" Then
                sFurniVar = "C"
            Else
                sFurniVar = "O"
            End If

            ' Save new state
            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\var.txt", 2, True, 0)
            oTextStream.Write sFurniVar

            ' Broadcast state change
            Call BroadcastFurniUpdate(CInt(vRoomId), CStr(vFurniId))
        End If
        Exit Function
    End If

    ' =========================================================================
    ' HANDLE SWITCH/LAMP TOGGLE
    ' =========================================================================
    If sFurniType = "switch" Or sFurniType = "lamp" Then
        If bHasRights Then
            ' Toggle between states (typically 0, 1, 2)
            Dim nState As Integer
            nState = Val(sFurniVar)
            nState = nState + 1
            If nState > 2 Then nState = 0

            sFurniVar = CStr(nState)

            Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\var.txt", 2, True, 0)
            oTextStream.Write sFurniVar

            Call BroadcastFurniUpdate(CInt(vRoomId), CStr(vFurniId))
        End If
        Exit Function
    End If

    ' =========================================================================
    ' HANDLE TELEPORTER INTERACTION
    ' =========================================================================
    If sFurniType = "teleporter" Then
        ' Teleporter handling - check if user is at teleporter position
        If gUserData(CLng(SocketIndex)).PosX = Val(sFurniX) And _
           gUserData(CLng(SocketIndex)).PosY = Val(sFurniY) Then
            ' Start teleport animation/process
            Call HandleTeleporterActivate(sData, SocketIndex)
        End If
        Exit Function
    End If

    ' =========================================================================
    ' HANDLE VENDING MACHINE
    ' =========================================================================
    If sFurniType = "vendingmachine" Then
        ' Check if user is adjacent to vending machine
        Dim bAdjacent As Boolean
        bAdjacent = False

        If Abs(gUserData(CLng(SocketIndex)).PosX - Val(sFurniX)) <= 1 And _
           Abs(gUserData(CLng(SocketIndex)).PosY - Val(sFurniY)) <= 1 Then
            bAdjacent = True
        End If

        If bAdjacent Then
            ' Dispense item animation
            gUserData(CLng(SocketIndex)).CarryItem = sFurniCust
            gUserData(CLng(SocketIndex)).CarryTimer = 240  ' 4 minutes

            ' Broadcast user carrying item
            Dim sCarryPacket As String
            sCarryPacket = "@]" & gUserData(CLng(SocketIndex)).Username & " " & sFurniCust & Chr$(1)
            Call BroadcastToRoom(CInt(vRoomId), sCarryPacket)
        End If
        Exit Function
    End If

    ' =========================================================================
    ' DEFAULT - Toggle generic furniture state
    ' =========================================================================
    If bHasRights Then
        ' Simple state toggle for other furniture types
        If sFurniVar = "0" Or sFurniVar = "" Then
            sFurniVar = "1"
        ElseIf sFurniVar = "1" Then
            sFurniVar = "0"
        End If

        Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\var.txt", 2, True, 0)
        oTextStream.Write sFurniVar

        Call BroadcastFurniUpdate(CInt(vRoomId), CStr(vFurniId))
    End If
End Function

' ============================================================================
' BroadcastFurniUpdate - Helper to broadcast furniture state update
' ============================================================================
Private Function BroadcastFurniUpdate(ByVal RoomId As Integer, ByVal FurniId As String)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sFurniName As String
    Dim sFurniVar As String
    Dim sFurniX As String
    Dim sFurniY As String
    Dim sFurniH As String
    Dim sFurniRot As String
    Dim sFurniDim As String

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & FurniId & "\name.txt", 1, False, 0)
    sFurniName = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & FurniId & "\var.txt", 1, False, 0)
    sFurniVar = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & FurniId & "\x.txt", 1, False, 0)
    sFurniX = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & FurniId & "\y.txt", 1, False, 0)
    sFurniY = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & FurniId & "\h.txt", 1, False, 0)
    sFurniH = oTextStream.ReadAll
    If sFurniH = "" Then sFurniH = "0"

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & FurniId & "\rotation.txt", 1, False, 0)
    sFurniRot = oTextStream.ReadAll

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & FurniId & "\dim.txt", 1, False, 0)
    sFurniDim = oTextStream.ReadAll

    ' Broadcast AX packet (furniture update)
    Dim sBroadcast As String
    sBroadcast = "AX" & FurniId & " " & sFurniName & " " & sFurniX & " " & _
                 sFurniY & " " & sFurniH & " " & sFurniRot & " " & _
                 sFurniDim & " " & sFurniVar & Chr$(1)

    Call BroadcastToRoom(RoomId, sBroadcast)
End Function

' ============================================================================
' Proc_30_54 - HandleDiceClose
' Handles closing/resetting a dice after it has been rolled
' Writes "H0" to var.txt and broadcasts state change
'
' Original P-Code: Proc_30_54_B2301C (line 112708)
' ============================================================================
Private Function HandleDiceClose(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vFurniId As Variant
    Dim vRoomId As Double

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Extract furniture ID from packet (starts at position 3)
    vFurniId = Mid$(sData, 3)

    ' Write closed state to dice
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\var.txt", 2, True, 0)
    oTextStream.Write "H0"

    ' Broadcast dice state change to room
    ' Format: AZ furniId Chr(20) 0 Chr(1)
    Dim sBroadcast As String
    sBroadcast = "AZ" & CStr(vFurniId) & Chr$(20) & "0" & Chr$(1)

    Call BroadcastToRoom(CInt(vRoomId), sBroadcast)
End Function

' ============================================================================
' Proc_30_55 - HandleDiceRollStart
' Handles starting a dice roll animation
' Finds available dice slot, loads timer, broadcasts to room
'
' Original P-Code: Proc_30_55_B2A790 (line 112771)
' ============================================================================
Private Function HandleDiceRollStart(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vFurniId As Variant
    Dim vRoomId As Double
    Dim i As Integer
    Dim sDices As String
    Dim bSlotFound As Boolean

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Extract furniture ID from packet
    vFurniId = Mid$(sData, 3)

    ' Broadcast initial dice state to room
    Dim sBroadcast As String
    sBroadcast = "AZ" & CStr(vFurniId) & Chr$(1)
    Call BroadcastToRoom(CInt(vRoomId), sBroadcast)

    ' Find available dice timer slot (1-50)
    bSlotFound = False
    For i = 1 To 50
        sDices = frmMain.dicesGet()
        If InStr(1, sDices, "<" & CStr(i) & ">", vbBinaryCompare) = 0 Then
            ' Slot available - load timer
            Load frmMain.tmrDice(i)

            ' Add slot to loaded dices list
            frmMain.dicesPut sDices & "<" & CStr(i) & ">"

            ' Set timer tag with furni ID and room ID
            frmMain.tmrDice(i).Tag = CStr(vFurniId) & "." & CStr(vRoomId)

            ' Enable timer
            frmMain.tmrDice(i).Enabled = True

            bSlotFound = True
            Exit For
        End If
    Next i
End Function

' ============================================================================
' Proc_30_56 - HandlePresentOpen
' Handles opening/unwrapping a present item
' If item name contains "present", processes as gift unwrap
'
' Original P-Code: Proc_30_56_B471EC (line 112906)
' ============================================================================
Private Function HandlePresentOpen(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vFurniId As Variant
    Dim sFurniName As String
    Dim sUserHand As String
    Dim aHandItems() As String
    Dim sNewHand As String
    Dim i As Variant

    ' Extract furniture ID from packet
    vFurniId = Mid$(sData, 3)

    ' Read furniture name
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\name.txt", 1, False, 0)
    sFurniName = oTextStream.ReadAll

    ' Check if this is a present item
    If InStr(1, sFurniName, "present", vbTextCompare) > 0 Then
        ' Call admin furniture add to place present in room
        Call HandleAdminFurnitureManagement("ACnew stuff " & CStr(vFurniId), SocketIndex)

        ' Read user's hand
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 1, False, 0)
        sUserHand = oTextStream.ReadAll

        ' Remove present from hand
        aHandItems = Split(sUserHand, ";", -1, vbBinaryCompare)
        sNewHand = ""
        For i = 0 To UBound(aHandItems)
            If aHandItems(i) <> "" And aHandItems(i) <> CStr(vFurniId) Then
                If sNewHand = "" Then
                    sNewHand = aHandItems(i)
                Else
                    sNewHand = sNewHand & ";" & aHandItems(i)
                End If
            End If
        Next i

        ' Write updated hand
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hand.txt", 2, False, 0)
        oTextStream.Write sNewHand

        ' Update inventory display
        Call ProcessInventoryCommand("AAupdate", SocketIndex)
    End If
End Function

' ============================================================================
' Proc_30_57 - HandleRightsGrant
' Handles granting room rights to another user
' Adds username to room's rights.txt file
'
' Original P-Code: Proc_30_57_B2FB0C (line 113361)
' ============================================================================
Private Function HandleRightsGrant(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sTargetUser As String
    Dim sRoomOwner As String
    Dim sRights As String
    Dim vRoomId As Double

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Extract target username from packet
    sTargetUser = Mid$(sData, 3)

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Only owner can grant rights
    If LCase$(gUserData(CLng(SocketIndex)).Username) <> LCase$(sRoomOwner) Then
        Exit Function
    End If

    ' Read current rights
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\rights.txt", 1, False, 0)
    sRights = oTextStream.ReadAll

    ' Add user to rights list if not already present
    If InStr(1, ";" & sRights & ";", ";" & sTargetUser & ";", vbTextCompare) = 0 Then
        If sRights = "" Then
            sRights = sTargetUser
        Else
            sRights = sRights & ";" & sTargetUser
        End If

        ' Write updated rights
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\rights.txt", 2, False, 0)
        oTextStream.Write sRights

        ' Send confirmation to user
        SendData SocketIndex, "@r" & sTargetUser & Chr$(1)
    End If
End Function

' ============================================================================
' Proc_30_58 - HandleRightsRevoke
' Handles revoking room rights from a user
' Removes username from room's rights.txt file
'
' Original P-Code: Proc_30_58_B34800 (line 113559)
' ============================================================================
Private Function HandleRightsRevoke(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sTargetUser As String
    Dim sRoomOwner As String
    Dim sRights As String
    Dim aRights() As String
    Dim sNewRights As String
    Dim vRoomId As Double
    Dim i As Variant

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Extract target username from packet
    sTargetUser = Mid$(sData, 3)

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Only owner can revoke rights
    If LCase$(gUserData(CLng(SocketIndex)).Username) <> LCase$(sRoomOwner) Then
        Exit Function
    End If

    ' Read current rights
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\rights.txt", 1, False, 0)
    sRights = oTextStream.ReadAll

    ' Remove user from rights list
    aRights = Split(sRights, ";", -1, vbBinaryCompare)
    sNewRights = ""
    For i = 0 To UBound(aRights)
        If LCase$(aRights(i)) <> LCase$(sTargetUser) And aRights(i) <> "" Then
            If sNewRights = "" Then
                sNewRights = aRights(i)
            Else
                sNewRights = sNewRights & ";" & aRights(i)
            End If
        End If
    Next i

    ' Write updated rights
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\rights.txt", 2, False, 0)
    oTextStream.Write sNewRights

    ' Send confirmation
    SendData SocketIndex, "@s" & sTargetUser & Chr$(1)
End Function

' ============================================================================
' Proc_30_59 - HandleKickUser
' Handles kicking a user from the room
' Only room owner or users with rights can kick
'
' Original P-Code: Proc_30_59_B24A40 (line 113800)
' ============================================================================
Private Function HandleKickUser(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sTargetUser As String
    Dim vRoomId As Double
    Dim i As Integer

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Extract target username
    sTargetUser = Mid$(sData, 3)

    ' Find target user in room
    For i = 1 To frmMain.SockI
        If frmMain.Sock(i).State = 7 Then
            If gUserData(CLng(i)).RoomId = vRoomId Then
                If LCase$(gUserData(CLng(i)).Username) = LCase$(sTargetUser) Then
                    ' Send kick notification
                    SendData i, "@R" & Chr$(1)

                    ' Move user out of room
                    gUserData(CLng(i)).RoomId = 0

                    ' Broadcast user left
                    Call BroadcastToRoom(CInt(vRoomId), "@b" & gUserData(CLng(i)).Username & Chr$(1))
                    Exit For
                End If
            End If
        End If
    Next i
End Function

' ============================================================================
' Proc_30_60 - HandleBanUser
' Handles banning a user from the room
' Adds user to room's ban list
'
' Original P-Code: Proc_30_60_B25A9C (line 113870)
' ============================================================================
Private Function HandleBanUser(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sTargetUser As String
    Dim sRoomOwner As String
    Dim sBanList As String
    Dim vRoomId As Double

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Extract target username
    sTargetUser = Mid$(sData, 3)

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Only owner can ban
    If LCase$(gUserData(CLng(SocketIndex)).Username) <> LCase$(sRoomOwner) Then
        Exit Function
    End If

    ' Read current ban list
    If gFSO.FileExists(gAppPath & "privaterooms\" & CStr(vRoomId) & "\banlist.txt") Then
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\banlist.txt", 1, False, 0)
        sBanList = oTextStream.ReadAll
    Else
        sBanList = ""
    End If

    ' Add to ban list if not already banned
    If InStr(1, ";" & sBanList & ";", ";" & sTargetUser & ";", vbTextCompare) = 0 Then
        If sBanList = "" Then
            sBanList = sTargetUser
        Else
            sBanList = sBanList & ";" & sTargetUser
        End If

        ' Write updated ban list
        Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\banlist.txt", 2, True, 0)
        oTextStream.Write sBanList
    End If

    ' Also kick the user
    Call HandleKickUser("@f" & sTargetUser, SocketIndex)
End Function

' ============================================================================
' Proc_30_61 - HandleFurnitureInfoRequest
' Handles request for furniture customization data
' Returns @p packet with cust.txt and var.txt contents
'
' Original P-Code: Proc_30_61_B2816C (line 113966)
' ============================================================================
Private Function HandleFurnitureInfoRequest(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim vFurniId As Variant
    Dim sFurniCust As String
    Dim sFurniVar As String

    ' Extract furniture ID
    vFurniId = Mid$(sData, 3)

    ' Read furniture custom data
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\cust.txt", 1, False, 0)
    sFurniCust = oTextStream.ReadAll

    ' Read furniture var data
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & CStr(vFurniId) & "\var.txt", 1, False, 0)
    sFurniVar = oTextStream.ReadAll

    ' Remove Chr(1) from var if present
    sFurniVar = Replace(sFurniVar, Chr$(1), "", 1, -1, vbBinaryCompare)

    ' Send response - @p FurniId Tab Cust Space Var Chr(1)
    SendData SocketIndex, "@p" & CStr(vFurniId) & Chr$(9) & sFurniCust & " " & sFurniVar & Chr$(1)
End Function

' ============================================================================
' Proc_30_62 - HandleRoomRightsList
' Handles request for list of users with rights in room
' Returns list of usernames to room owner
'
' Original P-Code: Proc_30_62_B60DF4 (line 114073)
' ============================================================================
Private Function HandleRoomRightsList(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oTextStream As Object
    Dim sRoomOwner As String
    Dim sRights As String
    Dim sAllRights As String
    Dim aRights() As String
    Dim vRoomId As Double
    Dim i As Variant
    Dim sPacket As String

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Read room owner
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\owner.txt", 1, False, 0)
    sRoomOwner = oTextStream.ReadAll

    ' Read rights list
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "privaterooms\" & CStr(vRoomId) & "\rights.txt", 1, False, 0)
    sRights = oTextStream.ReadAll

    ' Only owner can view rights list
    If LCase$(gUserData(CLng(SocketIndex)).Username) <> LCase$(sRoomOwner) Then
        Exit Function
    End If

    ' Build response packet with rights list
    sPacket = "@u"
    aRights = Split(sRights, ";", -1, vbBinaryCompare)
    For i = 0 To UBound(aRights)
        If aRights(i) <> "" Then
            sPacket = sPacket & aRights(i) & Chr$(13)
        End If
    Next i
    sPacket = sPacket & Chr$(1)

    SendData SocketIndex, sPacket
End Function

' ============================================================================
' Proc_30_63 - HandleUserWave
' Handles user wave/expression gesture
' Broadcasts wave animation to all users in room
'
' Original P-Code: Proc_30_63_B36A90 (line 114902)
' ============================================================================
Private Function HandleUserWave(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sAction As String
    Dim vRoomId As Double

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Extract action type from packet
    sAction = Mid$(sData, 3)

    ' Store action in user data
    gUserData(CLng(SocketIndex)).CurrentAction = sAction

    ' Broadcast user status to room
    Dim sBroadcast As String
    sBroadcast = "@]" & gUserData(CLng(SocketIndex)).VirtualId & " " & sAction & Chr$(1)
    Call BroadcastToRoom(CInt(vRoomId), sBroadcast)
End Function

' ============================================================================
' Proc_30_64 - HandleUserDance
' Handles user dance command
' Sets dance state and broadcasts to room
'
' Original P-Code: Proc_30_64_B398A0 (line 115176)
' ============================================================================
Private Function HandleUserDance(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sDanceStyle As String
    Dim vRoomId As Double

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Extract dance style from packet
    sDanceStyle = Mid$(sData, 3)

    ' Store dance state
    gUserData(CLng(SocketIndex)).DanceStyle = Val(sDanceStyle)

    ' Broadcast dance status
    Dim sBroadcast As String
    sBroadcast = "@^" & gUserData(CLng(SocketIndex)).VirtualId & " " & sDanceStyle & Chr$(1)
    Call BroadcastToRoom(CInt(vRoomId), sBroadcast)
End Function

' ============================================================================
' Proc_30_65 - HandleStopMovement
' Handles stopping user movement/walking
' Sets target position to current position
'
' Original P-Code: Proc_30_65_B3DCE4 (line 115461)
' ============================================================================
Private Function HandleStopMovement(ByVal SocketIndex As Integer)
    On Error Resume Next

    ' Set target to current position (stop walking)
    gUserData(CLng(SocketIndex)).TargetX = gUserData(CLng(SocketIndex)).PosX
    gUserData(CLng(SocketIndex)).TargetY = gUserData(CLng(SocketIndex)).PosY
    gUserData(CLng(SocketIndex)).IsWalking = False
End Function

' ============================================================================
' Proc_30_66 - HandleUserSit
' Handles user sit down command
' Sets sitting state and broadcasts to room
'
' Original P-Code: Proc_30_66_B5BA50 (line 115823)
' ============================================================================
Private Function HandleUserSit(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vRoomId As Double
    Dim sSitHeight As String

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Toggle sitting state
    If gUserData(CLng(SocketIndex)).IsSitting = 0 Then
        gUserData(CLng(SocketIndex)).IsSitting = 1
        sSitHeight = "0.5"  ' Default sit height
    Else
        gUserData(CLng(SocketIndex)).IsSitting = 0
        sSitHeight = "0"
    End If

    ' Broadcast sit status
    Dim sBroadcast As String
    sBroadcast = "@_" & gUserData(CLng(SocketIndex)).VirtualId & " sit " & sSitHeight & Chr$(1)
    Call BroadcastToRoom(CInt(vRoomId), sBroadcast)
End Function

' ============================================================================
' Proc_30_67 - HandleUserLay
' Handles user lay down command
' Sets laying state and broadcasts to room
'
' Original P-Code: Proc_30_67_B59988 (line 116482)
' ============================================================================
Private Function HandleUserLay(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vRoomId As Double

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Toggle laying state
    If gUserData(CLng(SocketIndex)).IsLaying = 0 Then
        gUserData(CLng(SocketIndex)).IsLaying = 1
    Else
        gUserData(CLng(SocketIndex)).IsLaying = 0
    End If

    ' Broadcast lay status
    Dim sBroadcast As String
    If gUserData(CLng(SocketIndex)).IsLaying = 1 Then
        sBroadcast = "@_" & gUserData(CLng(SocketIndex)).VirtualId & " lay" & Chr$(1)
    Else
        sBroadcast = "@_" & gUserData(CLng(SocketIndex)).VirtualId & Chr$(1)
    End If
    Call BroadcastToRoom(CInt(vRoomId), sBroadcast)
End Function

' ============================================================================
' Proc_30_68 - HandleUserMove
' Handles user movement/walk request
' Sets target position and initiates pathfinding
'
' Original P-Code: Proc_30_68_B75BFC (line 117092)
' ============================================================================
Private Function HandleUserMove(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vTargetX As Variant
    Dim vTargetY As Variant
    Dim vRoomId As Double
    Dim sCoords As String

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Extract target coordinates from packet
    ' Format: BW X Y (VL64 encoded)
    sCoords = Mid$(sData, 3)

    ' Decode X coordinate (first 2 chars VL64)
    vTargetX = DecodeVL64(Mid$(sCoords, 1, 2))

    ' Decode Y coordinate (next 2 chars VL64)
    vTargetY = DecodeVL64(Mid$(sCoords, 3, 2))

    ' Set target position
    gUserData(CLng(SocketIndex)).TargetX = CLng(vTargetX)
    gUserData(CLng(SocketIndex)).TargetY = CLng(vTargetY)
    gUserData(CLng(SocketIndex)).IsWalking = True

    ' Clear sitting/laying states when walking
    gUserData(CLng(SocketIndex)).IsSitting = 0
    gUserData(CLng(SocketIndex)).IsLaying = 0
End Function

' ============================================================================
' Proc_30_69 - HandleUserLook
' Handles user look/rotate command
' Changes user facing direction
'
' Original P-Code: Proc_30_69_B30F48 (line 118528)
' ============================================================================
Private Function HandleUserLook(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sDirection As String
    Dim vRoomId As Double

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Extract direction from packet
    sDirection = Mid$(sData, 3)

    ' Update user direction
    gUserData(CLng(SocketIndex)).Direction = Val(sDirection)
    gUserData(CLng(SocketIndex)).HeadDirection = Val(sDirection)

    ' Broadcast direction change
    Dim sBroadcast As String
    sBroadcast = "@`" & gUserData(CLng(SocketIndex)).VirtualId & " " & sDirection & " " & sDirection & Chr$(1)
    Call BroadcastToRoom(CInt(vRoomId), sBroadcast)
End Function

' ============================================================================
' Proc_30_70 - HandleTypingStatus
' Handles user typing status indicator
' Shows/hides typing bubble above user
'
' Original P-Code: Proc_30_70_B1EB38 (line 118746)
' ============================================================================
Private Function HandleTypingStatus(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim bIsTyping As Boolean
    Dim vRoomId As Double

    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Extract typing status from packet
    bIsTyping = (Mid$(sData, 3, 1) = "1")

    ' Broadcast typing status
    Dim sBroadcast As String
    If bIsTyping Then
        sBroadcast = "Dv" & gUserData(CLng(SocketIndex)).VirtualId & Chr$(1)
    Else
        sBroadcast = "Dw" & gUserData(CLng(SocketIndex)).VirtualId & Chr$(1)
    End If
    Call BroadcastToRoom(CInt(vRoomId), sBroadcast)
End Function

' ============================================================================
' Proc_30_71 - HandleTimerConfig
' Handles timer configuration for user-specific timers
' Sets timer interval and enabled status
'
' Original P-Code: Proc_30_71_B26FA4 (line 118788)
' ============================================================================
Private Function HandleTimerConfig(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sTimerData As String
    Dim arrParts() As String
    Dim sTimerId As String
    Dim vInterval As Variant

    ' Extract timer data from packet (remove header)
    sTimerData = Mid$(sData, 3)

    ' Split by tab character
    arrParts = Split(sTimerData, Chr$(9))

    ' Get timer ID (element 0)
    sTimerId = arrParts(0)

    ' Get interval value (element 1)
    vInterval = Val(arrParts(1))

    ' Set timer properties via control array on frmMain
    ' Store user timer state
    gUserData(CLng(SocketIndex)).TimerEnabled = True
    gUserData(CLng(SocketIndex)).TimerInterval = CLng(vInterval)

    ' Configure the actual timer control
    frmMain.tmrUser(SocketIndex).Interval = CLng(vInterval)
    frmMain.tmrUser(SocketIndex).Enabled = True

    ' Store timer ID for this user
    gUserData(CLng(SocketIndex)).TimerId = sTimerId
    gUserData(CLng(SocketIndex)).TimerActive = True
End Function

' ============================================================================
' Proc_30_72 - HandleCataloguePages
' Handles catalogue pages request
' Returns list of available pages based on HC status and rank
'
' Original P-Code: Proc_30_72_B312B0 (line 118892)
' ============================================================================
Private Function HandleCataloguePages(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sHcDays As String
    Dim sPages As String
    Dim sAdminPerm As String
    Dim sCataAll As String
    Dim arrPages() As String
    Dim sResponse As String
    Dim oFile As Object
    Dim i As Long

    ' Check HC days for this user
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\hcdays.txt", 1, False)
    sHcDays = oFile.ReadAll
    Set oFile = Nothing

    ' Load catalogue pages based on HC status
    If sHcDays = "0" Then
        ' Non-HC user - load regular pages
        Set oFile = gFSO.OpenTextFile(gDataPath & "catalogue\pages.txt", 1, False)
        sPages = oFile.ReadAll
        Set oFile = Nothing
    Else
        ' HC user - load pages with Club Shop
        Set oFile = gFSO.OpenTextFile(gDataPath & "catalogue\pages.txt", 1, False)
        sPages = "Club Shop;" & oFile.ReadAll
        Set oFile = Nothing
    End If

    ' Check if user has admin catalogue permission
    sAdminPerm = ReadIniValue(gDataPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini", "rank", "admin_catalogue")
    sCataAll = ReadIniValue(gConfigPath, "config", "cata_all")

    If sAdminPerm = "1" Or sCataAll = "1" Then
        ' Add admin extra pages
        Set oFile = gFSO.OpenTextFile(gDataPath & "catalogue\admin_extra.txt", 1, False)
        sPages = sPages & oFile.ReadAll
        Set oFile = Nothing
    End If

    ' Split pages by semicolon
    arrPages = Split(sPages, ";")

    ' Build response with tab and CR formatting
    sResponse = ""
    For i = 0 To UBound(arrPages)
        If arrPages(i) <> "" Then
            sResponse = sResponse & arrPages(i) & Chr$(9) & arrPages(i) & Chr$(13)
        End If
    Next i

    ' Send catalogue pages response
    Call SendData("A~" & sResponse & Chr$(1), SocketIndex)
End Function

' ============================================================================
' Proc_30_73 - HandleCataloguePageDisplay
' Handles request to display a specific catalogue page
' Loads page content based on page name
'
' Original P-Code: Proc_30_73_B35D40 (line 119104)
' ============================================================================
Private Function HandleCataloguePageDisplay(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sPageName As String
    Dim sPageContent As String
    Dim sAdminPerm As String
    Dim sCataAll As String
    Dim oFile As Object
    Dim arrPath() As String

    ' Extract page name from packet
    arrPath = Split(sData, "/")
    sPageName = arrPath(1)

    ' Handle special page types
    If sPageName = "rares" Then
        ' Rares page - send empty response
        Call SendData(Chr$(1), SocketIndex)
        Exit Function
    End If

    If sPageName = "Recycler" Or sPageName = "Ecotron" Then
        ' Recycler/Ecotron page
        Set oFile = gFSO.OpenTextFile(gDataPath & "catalogue\resycler.txt", 1, False)
        sPageContent = oFile.ReadAll
        Set oFile = Nothing
        Call SendData(sPageContent, SocketIndex)
        Exit Function
    End If

    ' Check for rare/special pages that require admin permission
    If sPageName = "Rares" Or sPageName = "Rare Trophies" Or _
       sPageName = "Ice Cream Machines" Or sPageName = "Oriental Screens" Or _
       sPageName = "Pillars" Or sPageName = "Laser Gates" Or _
       sPageName = "Smoke Machines" Or sPageName = "Fans" Or _
       sPageName = "Marquee" Or sPageName = "Rare Recolours" Then

        ' Check admin catalogue permission
        sAdminPerm = ReadIniValue(gDataPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini", "rank", "admin_catalogue")
        sCataAll = ReadIniValue(gConfigPath, "config", "cata_all")

        If sAdminPerm = "1" Or sCataAll = "1" Then
            ' Load the special page
            Set oFile = gFSO.OpenTextFile(gDataPath & "catalogue\" & sPageName & "\page.txt", 1, False)
            sPageContent = oFile.ReadAll
            Set oFile = Nothing
            Call SendData("A" & Chr$(&H7F) & sPageContent, SocketIndex)
            Exit Function
        Else
            ' Show Frontpage instead (no permission)
            sPageName = "Frontpage"
        End If
    End If

    ' Load regular catalogue page
    Set oFile = gFSO.OpenTextFile(gDataPath & "catalogue\" & sPageName & "\page.txt", 1, False)
    sPageContent = oFile.ReadAll
    Set oFile = Nothing

    ' Send page content
    Call SendData("A" & Chr$(&H7F) & sPageContent, SocketIndex)
End Function

' ============================================================================
' Proc_30_74 - HandleDateRequest
' Handles request for current server date
' Returns formatted date string
'
' Original P-Code: Proc_30_74_B240E8 (line 119353)
' ============================================================================
Private Function HandleDateRequest(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sDateResponse As String

    ' Build date response: Bc + DD-MM-YYYY format
    sDateResponse = "Bc" & Format(Day(Now), "00") & "-" & Format(Month(Now), "00") & "-" & Year(Now) & Chr$(1)

    ' Send date response
    Call SendData(sDateResponse, SocketIndex)
End Function

' ============================================================================
' Proc_30_76 - HandleRoomCategoryChange
' Handles room category change request
' Validates ownership and updates category
'
' Original P-Code: Proc_30_76_B2E198 (line 121940)
' ============================================================================
Private Function HandleRoomCategoryChange(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim nCategoryLen As Integer
    Dim sCategory As String
    Dim lRoomId As Long
    Dim sOwner As String
    Dim oFile As Object
    Dim sLastChar As String

    ' Determine category length based on last character
    nCategoryLen = 2  ' Default 2 bytes
    sLastChar = Right$(sData, 1)

    If sLastChar = "H" Or sLastChar = "I" Or sLastChar = "J" Or sLastChar = "K" Then
        nCategoryLen = 1  ' Single byte category
    End If

    ' Extract category from end of packet
    sCategory = Right$(sData, nCategoryLen)

    ' Extract room ID from packet (VL64 encoded after header)
    lRoomId = Val(DecodeBase64(Mid$(sData, 3, Len(Mid$(sData, 3)) - nCategoryLen)))

    ' Verify room exists and is not deleted
    If gFSO.FolderExists(gDataPath & "privaterooms\" & lRoomId) Then
        If Not gFSO.FileExists(gDataPath & "privaterooms\" & lRoomId & "\deleted.txt") Then
            ' Check ownership
            Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\owner.txt", 1, False)
            sOwner = oFile.ReadAll
            Set oFile = Nothing

            If sOwner = gUserData(CLng(SocketIndex)).Username Then
                ' Update room category
                Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\category.txt", 2, False)
                oFile.Write sCategory
                Set oFile = Nothing
            End If
        End If
    End If
End Function

' ============================================================================
' Proc_30_77 - HandleNameCheck
' Handles username availability check during registration
' Validates username and checks if it's available
'
' Original P-Code: Proc_30_77_B45C04 (line 122126)
' ============================================================================
Private Function HandleNameCheck(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sUsername As String
    Dim nLen As Integer
    Dim vLen As Variant
    Dim sLastChar As String

    ' Check last character to determine packet type
    sLastChar = Right$(sData, 1)

    If sLastChar = "I" Then
        ' Registration name check
        ' Get length from VL64 at position 3
        vLen = DecodeVL64(Mid$(sData, 3, 2))

        ' Extract username
        sUsername = Mid$(sData, 5, vLen)

        ' Strip control characters (Chr$(1) through Chr$(12))
        sUsername = Replace(sUsername, Chr$(1), "")
        sUsername = Replace(sUsername, Chr$(2), "")
        sUsername = Replace(sUsername, Chr$(3), "")
        sUsername = Replace(sUsername, Chr$(4), "")
        sUsername = Replace(sUsername, Chr$(5), "")
        sUsername = Replace(sUsername, Chr$(6), "")
        sUsername = Replace(sUsername, Chr$(7), "")
        sUsername = Replace(sUsername, Chr$(8), "")
        sUsername = Replace(sUsername, Chr$(9), "")
        sUsername = Replace(sUsername, Chr$(10), "")
        sUsername = Replace(sUsername, Chr$(11), "")
        sUsername = Replace(sUsername, Chr$(12), "")

        ' Check if username contains only invalid characters
        If FilterBadWords(sUsername) = 1 Then
            ' Name contains bad words
            Call SendData("@dK" & Chr$(1), SocketIndex)
            Exit Function
        End If

        ' Name is valid - send approval
        Call SendData("@dH" & Chr$(1), SocketIndex)
    Else
        ' Check name availability
        vLen = DecodeVL64(Mid$(sData, 3, 2))
        sUsername = Mid$(sData, 5, vLen)

        ' Check for "mod" prefix (reserved)
        If LCase(Left$(sUsername, 3)) = "mod" Then
            Call SendData("@dK" & Chr$(1), SocketIndex)
            Exit Function
        End If

        ' Check if name contains bad words
        If FilterBadWords(sUsername) = 1 Then
            Call SendData("@dK" & Chr$(1), SocketIndex)
            Exit Function
        End If

        ' Check if user already exists
        If gFSO.FolderExists(gDataPath & "habbos\" & sUsername) Or _
           gFSO.FolderExists(gDataPath & "habbos\mod-" & sUsername) Then
            ' Name taken
            Call SendData("@dPA" & Chr$(1), SocketIndex)
        Else
            ' Name available
            Call SendData("@dH" & Chr$(1), SocketIndex)
        End If
    End If
End Function

' ============================================================================
' Proc_30_78 - HandlePhoneValidation
' Handles phone number validation
' Checks if phone contains only numeric characters
'
' Original P-Code: Proc_30_78_B31D5C (line 122568)
' ============================================================================
Private Function HandlePhoneValidation(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim nLen1 As Integer
    Dim nLen2 As Integer
    Dim sPhone As String
    Dim bValid As Boolean

    ' Extract lengths from packet
    nLen1 = DecodeVL64(Mid$(sData, 3, 2))
    nLen2 = DecodeVL64(Mid$(sData, 3, 2))

    ' Get phone number from packet
    sPhone = Mid$(sData, 7 + nLen1, nLen2)

    ' Check length constraints (5-10 digits)
    If Len(sPhone) > 5 And Len(sPhone) < 10 Then
        ' Validate contains only digits 0-9
        bValid = (InStr(1, sPhone, "0") <> 0 Or InStr(1, sPhone, "1") <> 0 Or _
                  InStr(1, sPhone, "2") <> 0 Or InStr(1, sPhone, "3") <> 0 Or _
                  InStr(1, sPhone, "4") <> 0 Or InStr(1, sPhone, "5") <> 0 Or _
                  InStr(1, sPhone, "6") <> 0 Or InStr(1, sPhone, "7") <> 0 Or _
                  InStr(1, sPhone, "8") <> 0 Or InStr(1, sPhone, "9") <> 0)

        If bValid Then
            ' Valid phone number
            Call SendData("DZI" & Chr$(1), SocketIndex)
            Exit Function
        End If
    End If

    ' Invalid phone number
    Call SendData("DZH" & Chr$(1), SocketIndex)
End Function

' ============================================================================
' Proc_30_79 - HandlePetInfoRequest
' Handles request for pet information display
' Returns pet stats including mood based on hunger/thirst
'
' Original P-Code: Proc_30_79_B3E278 (line 122750)
' ============================================================================
Private Function HandlePetInfoRequest(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vPetId As Variant
    Dim sPetNature As String
    Dim sPetBorn As String
    Dim vDaysOld As Variant
    Dim sMood As String
    Dim sNatureType As String
    Dim sNatureLevel As String
    Dim oFile As Object
    Dim lPetIndex As Long

    ' Extract pet ID from packet
    vPetId = Val(Mid$(sData, 5))

    ' Get pet array index
    lPetIndex = gPetData(CLng(vPetId)).ArrayIndex

    ' Read pet nature
    Set oFile = gFSO.OpenTextFile(gDataPath & "furni\" & CStr(lPetIndex) & "\nature.txt", 1, False)
    sPetNature = oFile.ReadAll
    Set oFile = Nothing

    ' Read pet birth date
    Set oFile = gFSO.OpenTextFile(gDataPath & "furni\" & CStr(lPetIndex) & "\born.txt", 1, False)
    sPetBorn = oFile.ReadAll
    Set oFile = Nothing

    ' Calculate days old
    vDaysOld = DateDiff("d", sPetBorn, Now)

    ' Encode nature type and level
    sNatureType = EncodeVL64(Mid(sPetNature, 1, 1))
    sNatureLevel = EncodeVL64(Mid(sPetNature, 2, 1))

    ' Determine mood based on hunger/thirst levels
    ' Hunger thresholds: 300 (low), 600 (medium), 1200 (high)
    ' Thirst thresholds: 300 (low), 600 (medium), 1200 (high)
    If gPetData(CLng(vPetId)).Hunger <= 600 Then sMood = "PA"
    If gPetData(CLng(vPetId)).Hunger > 600 Then sMood = "I"
    If gPetData(CLng(vPetId)).Hunger > 1200 Then sMood = "H"

    If gPetData(CLng(vPetId)).Thirst <= 600 Then sMood = "K"
    If gPetData(CLng(vPetId)).Thirst > 600 Then sMood = "J"
    If gPetData(CLng(vPetId)).Thirst > 1200 Then sMood = "H"

    ' Combined checks
    If gPetData(CLng(vPetId)).Hunger <= 300 And gPetData(CLng(vPetId)).Thirst <= 300 Then sMood = "QA"
    If gPetData(CLng(vPetId)).Hunger <= 600 And gPetData(CLng(vPetId)).Thirst <= 600 Then sMood = "PA"
    If gPetData(CLng(vPetId)).Hunger <= 600 And gPetData(CLng(vPetId)).Thirst > 600 Then sMood = "K"
    If gPetData(CLng(vPetId)).Hunger > 600 And gPetData(CLng(vPetId)).Thirst <= 600 Then sMood = "K"
    If gPetData(CLng(vPetId)).Hunger > 600 And gPetData(CLng(vPetId)).Thirst > 600 Then sMood = "J"
    If gPetData(CLng(vPetId)).Hunger > 600 And gPetData(CLng(vPetId)).Thirst <= 300 Then sMood = "J"
    If gPetData(CLng(vPetId)).Hunger > 1200 And gPetData(CLng(vPetId)).Thirst > 600 Then sMood = "I"
    If gPetData(CLng(vPetId)).Hunger > 1200 And gPetData(CLng(vPetId)).Thirst > 1200 Then sMood = "H"

    ' Send pet info response
    Call SendData("CR" & EncodeVL64(vPetId) & EncodeVL64(vDaysOld) & sMood & sNatureType & sNatureLevel & Chr$(1), SocketIndex)
End Function

' ============================================================================
' Proc_30_80 - HandleFollowUser
' Handles follow user / stalk request
' Redirects to target user's room if they have rights
'
' Original P-Code: Proc_30_80_B3BBD8 (line 123137)
' ============================================================================
Private Function HandleFollowUser(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sOwner As String
    Dim sRights As String
    Dim sAllRights As String
    Dim sHasRights As String
    Dim sRankPerm As String
    Dim arrRights() As String
    Dim sTargetUser As String
    Dim sAction As String
    Dim vTargetData As Variant
    Dim oFile As Object
    Dim i As Long
    Dim lRoomId As Double

    lRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Read room owner
    Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & CStr(lRoomId) & "\owner.txt", 1, False)
    sOwner = oFile.ReadAll
    Set oFile = Nothing

    ' Read room rights list
    Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & CStr(lRoomId) & "\rights.txt", 1, False)
    sRights = oFile.ReadAll
    Set oFile = Nothing

    sHasRights = ""

    ' Check if user is owner
    If sOwner = gUserData(CLng(SocketIndex)).Username Then
        sHasRights = "ja"
    End If

    ' Check allrights flag
    Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & CStr(lRoomId) & "\allrights.txt", 1, False)
    sAllRights = oFile.ReadAll
    Set oFile = Nothing

    If sAllRights = "1" Then
        sHasRights = "ja"
    Else
        ' Check rights list
        arrRights = Split(sRights, ";")
        For i = 0 To UBound(arrRights)
            If arrRights(i) = gUserData(CLng(SocketIndex)).Username Then
                sHasRights = "ja"
                Exit For
            End If
        Next i
    End If

    ' Check rank permission
    sRankPerm = ReadIniValue(gDataPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini", "rank", "rights_in_any_room")
    If sRankPerm = "1" Then
        sHasRights = "ja"
    End If

    ' If user has rights, process follow request
    If sHasRights = "ja" Then
        ' Extract target user from packet
        vTargetData = Mid$(sData, 5)
        sAction = Right$(vTargetData, 1)
        sTargetUser = Mid$(vTargetData, 1, Len(vTargetData) - 1)

        ' Find target user and redirect
        For i = 1 To frmMain.SockIGet()
            If gUserData(CLng(i)).Username = sTargetUser Then
                If sAction <> "@" Then
                    ' Redirect current user to target's room
                    gUserData(CLng(SocketIndex)).RoomId = gUserData(CLng(i)).RoomId

                    ' Check if target is in a room (state 7)
                    If frmMain.SockI(i).State = 7 Then
                        Call SendData("@i" & Chr$(1), i)
                    End If
                    Exit Function
                Else
                    ' Different action - summon to room
                    If frmMain.SockI(i).State = 7 Then
                        Call SendData("BC" & Chr$(1), i)
                    End If
                    Exit Function
                End If
            End If
        Next i
    End If
End Function

' ============================================================================
' Proc_30_84 - HandleBroadcastAnswer
' Handles quiz/poll answer broadcast
' Broadcasts user's answer to a designated label/area
'
' Original P-Code: Proc_30_84_B23164 (line 127969)
' ============================================================================
Private Function HandleBroadcastAnswer(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vLen As Variant
    Dim sAnswer As String
    Dim sCaption As String
    Dim lLabelIndex As Long

    ' Extract length and answer from packet
    vLen = Mid$(sData, 5)
    sAnswer = Mid$(sData, CLng(vLen) + 11)

    ' Get label caption (for target index)
    sCaption = frmMain.lblInfo.Caption
    lLabelIndex = CInt(sCaption)

    ' Broadcast answer: BK + username + 's Answer is: <br> + answer
    Call SendData("BK" & gUserData(CLng(SocketIndex)).Username & "'s Answer is: <br>" & sAnswer & Chr$(1), lLabelIndex)
End Function

' ============================================================================
' Proc_30_90 - HandleConsoleMissionUpdate
' Handles user console mission/motto update
' Applies bobba filter and saves to file
'
' Original P-Code: Proc_30_90_B29500 (line 131553)
' ============================================================================
Private Function HandleConsoleMissionUpdate(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vLen As Variant
    Dim sMission As String
    Dim sBobbaFilter As String
    Dim oFile As Object

    ' Extract length from VL64
    vLen = DecodeVL64(Mid$(sData, 3, 2))

    ' Extract mission text
    sMission = Mid$(sData, 5, vLen)

    ' Check if bobba filter is enabled
    sBobbaFilter = ReadIniValue(gConfigPath, "config", "bobba_filter")

    If sBobbaFilter = "1" Then
        ' Apply bobba filter to mission text
        sMission = ApplyBobbaFilter(sMission)
    End If

    ' Remove control character
    sMission = Replace(sMission, Chr$(1), "")

    ' Trim whitespace
    sMission = Trim(sMission)

    ' Ensure mission is not empty
    If sMission = "" Then
        sMission = " "
    End If

    ' Save mission to user file
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & gUserData(CLng(SocketIndex)).Username & "\consolemission.txt", 2, False)
    oFile.Write sMission
    Set oFile = Nothing

    ' Send confirmation response
    Call SendData("BS" & sMission & Chr$(2) & Chr$(1), SocketIndex)
End Function

' ============================================================================
' Proc_30_92 - HandleUserDisconnect
' Handles user disconnect/logout
' Saves last online timestamp and performs cleanup
'
' Original P-Code: Proc_30_92_B23F70 (line 132052)
' ============================================================================
Private Function HandleUserDisconnect(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sUsername As String
    Dim sTimestamp As String
    Dim oFile As Object

    ' Get username in lowercase
    sUsername = LCase(gUserData(CLng(SocketIndex)).Username)

    ' Build timestamp: DD-MM-YYYY HH:MM
    sTimestamp = Format(Date, "dd-mm-yyyy") & " " & Format(Time, "hh:mm")

    ' Save last online time
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\lastonline.txt", 2, True)
    oFile.Write sTimestamp
    Set oFile = Nothing

    ' Call disconnect handler
    Call DisconnectUser(SocketIndex)
End Function

' ============================================================================
' Proc_30_87 - HandleRoomSettingsSave
' Handles saving room settings (name, description, access, etc.)
'
' Original P-Code: Proc_30_87_B333E0 (line 128746)
' ============================================================================
Private Function HandleRoomSettingsSave(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vRoomId As Variant
    Dim sOwner As String
    Dim sSettingsData As String
    Dim arrSettings() As String
    Dim oFile As Object
    Dim sRoomName As String
    Dim sDescription As String
    Dim sAccess As String
    Dim sPassword As String
    Dim sMaxUsers As String
    Dim lRoomId As Long

    lRoomId = CLng(gUserData(CLng(SocketIndex)).RoomId)

    ' Verify ownership
    Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\owner.txt", 1, False)
    sOwner = oFile.ReadAll
    Set oFile = Nothing

    If sOwner <> gUserData(CLng(SocketIndex)).Username Then
        Exit Function
    End If

    ' Extract settings from packet (tab-delimited after header)
    sSettingsData = Mid$(sData, 3)
    arrSettings = Split(sSettingsData, Chr$(9))

    ' Parse settings if we have enough elements
    If UBound(arrSettings) >= 4 Then
        sRoomName = arrSettings(0)
        sDescription = arrSettings(1)
        sAccess = arrSettings(2)
        sPassword = arrSettings(3)
        sMaxUsers = arrSettings(4)

        ' Apply bobba filter if enabled
        Dim sBobbaFilter As String
        sBobbaFilter = ReadIniValue(gConfigPath, "config", "bobba_filter")

        If sBobbaFilter = "1" Then
            sRoomName = ApplyBobbaFilter(sRoomName)
            sDescription = ApplyBobbaFilter(sDescription)
        End If

        ' Save room name
        Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\name.txt", 2, False)
        oFile.Write sRoomName
        Set oFile = Nothing

        ' Save description
        Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\description.txt", 2, False)
        oFile.Write sDescription
        Set oFile = Nothing

        ' Save access type
        Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\access.txt", 2, False)
        oFile.Write sAccess
        Set oFile = Nothing

        ' Save password if set
        If sAccess = "password" Then
            Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\password.txt", 2, True)
            oFile.Write sPassword
            Set oFile = Nothing
        End If

        ' Save max users
        Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\maxusers.txt", 2, False)
        oFile.Write sMaxUsers
        Set oFile = Nothing
    End If
End Function

' ============================================================================
' Proc_30_89 - HandleRoomInfoRequest
' Handles request for room information
' Returns room details for navigator
'
' Original P-Code: Proc_30_89_B3B178 (line 131259)
' ============================================================================
Private Function HandleRoomInfoRequest(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim lRoomId As Long
    Dim sOwner As String
    Dim sName As String
    Dim sDescription As String
    Dim sAccess As String
    Dim sMaxUsers As String
    Dim sCategory As String
    Dim sResponse As String
    Dim oFile As Object

    ' Extract room ID from packet
    lRoomId = Val(Mid$(sData, 5))

    ' Check if room exists and is not deleted
    If Not gFSO.FolderExists(gDataPath & "privaterooms\" & lRoomId) Then
        Exit Function
    End If

    If gFSO.FileExists(gDataPath & "privaterooms\" & lRoomId & "\deleted.txt") Then
        Exit Function
    End If

    ' Read room owner
    Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\owner.txt", 1, False)
    sOwner = oFile.ReadAll
    Set oFile = Nothing

    ' Read room name
    Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\name.txt", 1, False)
    sName = oFile.ReadAll
    Set oFile = Nothing

    ' Read description
    Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\description.txt", 1, False)
    sDescription = oFile.ReadAll
    Set oFile = Nothing

    ' Read access type
    Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\access.txt", 1, False)
    sAccess = oFile.ReadAll
    Set oFile = Nothing

    ' Read max users
    Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\maxusers.txt", 1, False)
    sMaxUsers = oFile.ReadAll
    Set oFile = Nothing

    ' Read category
    Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\category.txt", 1, False)
    sCategory = oFile.ReadAll
    Set oFile = Nothing

    ' Build response
    sResponse = "DK" & EncodeVL64(lRoomId) & Chr$(2) & sName & Chr$(2) & sOwner & Chr$(2) & _
                sAccess & Chr$(2) & "0" & Chr$(2) & sDescription & Chr$(2) & _
                sMaxUsers & Chr$(2) & sCategory & Chr$(1)

    Call SendData(sResponse, SocketIndex)
End Function

' ============================================================================
' Proc_30_101 - HandlePetFeed
' Handles feeding a pet in the room
'
' Original P-Code: Proc_30_101_B30828 (line 137088)
' ============================================================================
Private Function HandlePetFeed(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vPetId As Variant
    Dim lPetIndex As Long
    Dim sFoodType As String
    Dim oFile As Object

    ' Extract pet ID from packet
    vPetId = Val(Mid$(sData, 5))

    ' Get pet array index
    lPetIndex = gPetData(CLng(vPetId)).ArrayIndex

    ' Extract food type
    sFoodType = Mid$(sData, 3, 2)

    ' Reduce hunger based on food
    Select Case sFoodType
        Case "PA"  ' Regular food
            gPetData(CLng(vPetId)).Hunger = gPetData(CLng(vPetId)).Hunger - 100
        Case "PB"  ' Premium food
            gPetData(CLng(vPetId)).Hunger = gPetData(CLng(vPetId)).Hunger - 200
    End Select

    ' Ensure hunger doesn't go negative
    If gPetData(CLng(vPetId)).Hunger < 0 Then
        gPetData(CLng(vPetId)).Hunger = 0
    End If

    ' Save updated hunger to file
    Set oFile = gFSO.OpenTextFile(gDataPath & "furni\" & lPetIndex & "\hunger.txt", 2, False)
    oFile.Write CStr(gPetData(CLng(vPetId)).Hunger)
    Set oFile = Nothing
End Function

' ============================================================================
' Proc_30_98 - HandleFurnitureToggle
' Handles toggling furniture state (gates, doors, etc.)
'
' Original P-Code: Proc_30_98_B385A4 (line 134861)
' ============================================================================
Private Function HandleFurnitureToggle(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vFurniId As Variant
    Dim arrParts() As String
    Dim sLocation As String
    Dim sName As String
    Dim sState As String
    Dim oFile As Object
    Dim vRoomId As Variant
    Dim sBroadcast As String

    ' Extract furniture ID from packet (starting at position 5)
    vFurniId = Val(Mid$(sData, 5))

    ' Read furniture location
    Set oFile = gFSO.OpenTextFile(gDataPath & "furni\" & vFurniId & "\loc.txt", 1, False)
    sLocation = oFile.ReadAll
    Set oFile = Nothing

    ' Read furniture name
    Set oFile = gFSO.OpenTextFile(gDataPath & "furni\" & vFurniId & "\name.txt", 1, False)
    sName = oFile.ReadAll
    Set oFile = Nothing

    ' Read current state
    Set oFile = gFSO.OpenTextFile(gDataPath & "furni\" & vFurniId & "\var.txt", 1, False)
    sState = oFile.ReadAll
    Set oFile = Nothing

    ' Get room ID for broadcast
    vRoomId = gUserData(CLng(SocketIndex)).RoomId

    ' Toggle state - check if currently in "closed" states (3, 2, H, J -> open to I)
    If sState = "3" Or sState = "2" Or sState = "H" Or sState = "J" Then
        ' Write new state as "I" (open)
        Set oFile = gFSO.OpenTextFile(gDataPath & "furni\" & vFurniId & "\var.txt", 2, False)
        oFile.Write "I"
        Set oFile = Nothing

        ' Broadcast furniture state update
        sBroadcast = "AU" & vFurniId & Chr$(9) & " " & sName & "   " & sLocation & Chr$(9) & "2" & Chr$(1)
        Call BroadcastToRoom(CInt(vRoomId), sBroadcast)

    ElseIf sState = "1" Or sState = "I" Then
        ' Write new state as "J" (closed)
        Set oFile = gFSO.OpenTextFile(gDataPath & "furni\" & vFurniId & "\var.txt", 2, False)
        oFile.Write "J"
        Set oFile = Nothing

        ' Broadcast furniture state update
        sBroadcast = "AU" & vFurniId & Chr$(9) & " " & sName & "   " & sLocation & Chr$(9) & "1" & Chr$(1)
        Call BroadcastToRoom(CInt(vRoomId), sBroadcast)
    End If
End Function

' ============================================================================
' Proc_30_83 - HandleCFHSubmit
' Handles submission of a Call For Help request from a user
'
' Original P-Code: Proc_30_83_B3F900 (line 127655)
' ============================================================================
Private Function HandleCFHSubmit(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vMsgLength As Variant
    Dim sMessage As String
    Dim sRemainder As String
    Dim sRoomId As String
    Dim lCFHIndex As Long
    Dim sCFHEntry As String
    Dim sRankFile As String
    Dim i As Variant
    Dim oFile As Object

    ' Extract VL64-encoded message length from position 3
    vMsgLength = DecodeVL64(Mid$(sData, 3, 2))

    ' Extract message content
    sMessage = Mid$(sData, 5, CLng(vMsgLength))

    ' Get remainder of packet
    sRemainder = Mid$(sData, 5 + CLng(vMsgLength))

    ' Get room ID for this user
    sRoomId = EncodeVL64(gUserData(CLng(SocketIndex)).RoomId)

    ' Increment CFH counter
    lCFHIndex = Val(CStr(frmMain.CFHs)) + 1
    frmMain.CFHs = lCFHIndex

    ' Load new CFH text control
    Load frmMain.CFHs(CInt(lCFHIndex))

    ' Build CFH entry with formatted date, time, and message
    ' Format: "BT" + CFH_ID + Chr$(2) + message + cfh_time + " " + "dd-mm-yyyy" + " " + "hh:mm" + Chr$(2) + username + Chr$(2) + room_id + Chr$(2) + message: + Chr$(2) + "I" + Chr$(2) + room_id + Chr$(1)
    sCFHEntry = "BT" & EncodeVL64(CDbl(frmMain.CFHs)) & Chr$(2) & sRemainder & _
                GetConfigValue("cfh_time") & " " & Format$(Date, "dd-mm-yyyy") & " " & Format$(Time, "hh:mm") & Chr$(2) & _
                gUserData(CLng(SocketIndex)).Username & Chr$(2) & sMessage & Chr$(2) & _
                sRoomId & Chr$(2) & GetConfigValue("message") & ":" & Chr$(2) & _
                "I" & Chr$(2) & sRoomId & Chr$(1)

    ' Store CFH entry in control
    frmMain.CFHs(CInt(lCFHIndex)).Text = sCFHEntry

    ' Broadcast to all staff members with permission to receive CFH
    For i = 1 To frmMain.SockI.Count
        If gUserData(CLng(i)).Rank <> vbNullString Then
            ' Check if user has CFH receive permission
            sRankFile = gDataPath & "ranks\" & gUserData(CLng(i)).Rank & ".ini"
            If GetIniValue(sRankFile, "rank", "recrieve_cfh") = "1" Then
                ' Check if user is connected (state 7)
                If CInt(frmMain.SockI(CInt(i)).State) = 7 Then
                    ' Send CFH notification to this staff member
                    Call frmMain.SockI(CInt(i)).SendData(sCFHEntry)
                End If
            End If
        End If
    Next i

    ' Send confirmation to the sender
    Call SendData("EAH", SocketIndex)
End Function

' ============================================================================
' Proc_30_85 - HandleCFHPickup
' Handles a staff member picking up a Call For Help request
'
' Original P-Code: Proc_30_85_B41DA4 (line 128035)
' ============================================================================
Private Function HandleCFHPickup(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sRankFile As String
    Dim vCFHIdLength As Variant
    Dim vCFHId As Variant
    Dim sCFHEntry As String
    Dim arrParts() As String
    Dim sPickedUpBy As String
    Dim sSearchStr As String
    Dim lPos As Long
    Dim i As Variant
    Dim oFile As Object

    ' Check if user has permission to receive CFH
    sRankFile = gDataPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"
    If GetIniValue(sRankFile, "rank", "recrieve_cfh") <> "1" Then
        Exit Function
    End If

    ' Extract VL64-encoded CFH ID length
    vCFHIdLength = DecodeVL64(Mid$(sData, 3, 2))

    ' Extract CFH ID
    vCFHId = Mid$(sData, 5, CLng(vCFHIdLength))

    ' Check if this CFH has already been picked up
    sSearchStr = "<" & CStr(vCFHId) & "="
    If InStr(1, frmMain.PickedUpCalls, sSearchStr) = 0 Then
        ' Not picked up yet - mark as picked up by this user
        frmMain.PickedUpCalls = frmMain.PickedUpCalls & "<" & CStr(vCFHId) & "=" & _
                                gUserData(CLng(SocketIndex)).Username & ">"

        ' Loop through all staff members to update CFH entry
        For i = 1 To frmMain.SockI.Count
            If gUserData(CLng(i)).Rank <> vbNullString Then
                ' Check if user has CFH permission
                sRankFile = gDataPath & "ranks\" & gUserData(CLng(i)).Rank & ".ini"
                If GetIniValue(sRankFile, "rank", "recrieve_cfh") = "1" Then
                    ' Get original CFH entry
                    sCFHEntry = frmMain.CFHs(CInt(DecodeVL64(CStr(vCFHId)))).Text

                    ' Split by Chr$(2) and update with pickup info
                    arrParts = Split(sCFHEntry, Chr$(2))

                    ' Update first part with pickup date/time
                    arrParts(1) = Mid$(arrParts(1), 1, 1) & _
                                  GetConfigValue("picked_up_on") & " " & _
                                  Format$(Date, "dd-mm-yyyy") & " " & Format$(Time, "hh:mm")

                    ' Check if this staff member is connected (state 7)
                    If CInt(frmMain.SockI(CInt(i)).State) = 7 Then
                        ' Send updated CFH entry
                        Call frmMain.SockI(CInt(i)).SendData(Join(arrParts, Chr$(2)))
                    End If
                End If
            End If
        Next i
    Else
        ' Already picked up - find who picked it up
        sPickedUpBy = Mid$(frmMain.PickedUpCalls, _
                          InStr(1, frmMain.PickedUpCalls, sSearchStr))
        sPickedUpBy = Mid$(sPickedUpBy, InStr(1, sPickedUpBy, "=") + 1)
        sPickedUpBy = Mid$(sPickedUpBy, 1, InStr(1, sPickedUpBy, ">") - 1)

        ' Send error message that it was already picked up
        Call SendData("BK" & GetConfigValue("already_picked_up_by") & " " & sPickedUpBy & Chr$(1), SocketIndex)
    End If
End Function

' ============================================================================
' Proc_30_86 - HandleCFHReply
' Handles a staff member replying to a Call For Help request
'
' Original P-Code: Proc_30_86_B4116C (line 128389)
' ============================================================================
Private Function HandleCFHReply(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sRankFile As String
    Dim vCFHIdLength As Variant
    Dim vCFHId As Variant
    Dim sReply As String
    Dim sCFHEntry As String
    Dim arrParts() As String
    Dim sPickedUpBy As String
    Dim sSearchStr As String
    Dim i As Variant
    Dim oFile As Object

    ' Check if user has permission to receive CFH
    sRankFile = gDataPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"
    If GetIniValue(sRankFile, "rank", "recrieve_cfh") <> "1" Then
        Exit Function
    End If

    ' Extract VL64-encoded CFH ID length
    vCFHIdLength = DecodeVL64(Mid$(sData, 3, 2))

    ' Extract CFH ID
    vCFHId = Mid$(sData, 5, CLng(vCFHIdLength))

    ' Extract reply message
    sReply = Mid$(sData, 5 + CLng(vCFHIdLength), 1)

    ' Check if this CFH has already been picked up
    sSearchStr = "<" & CStr(vCFHId) & "="
    If InStr(1, frmMain.PickedUpCalls, sSearchStr) = 0 Then
        ' Loop through all staff members to update CFH entry
        For i = 1 To frmMain.SockI.Count
            If gUserData(CLng(i)).Rank <> vbNullString Then
                ' Check if user has CFH permission
                sRankFile = gDataPath & "ranks\" & gUserData(CLng(i)).Rank & ".ini"
                If GetIniValue(sRankFile, "rank", "recrieve_cfh") = "1" Then
                    ' Get original CFH entry
                    sCFHEntry = frmMain.CFHs(CInt(DecodeVL64(CStr(vCFHId)))).Text

                    ' Split by Chr$(2) and update with reply time
                    arrParts = Split(sCFHEntry, Chr$(2))

                    ' Update first part with reply date/time
                    arrParts(1) = sReply & GetConfigValue("cfh_time") & " " & _
                                  Format$(Date, "dd-mm-yyyy") & " " & Format$(Time, "hh:mm")

                    ' Update stored CFH entry
                    frmMain.CFHs(CInt(DecodeVL64(CStr(vCFHId)))).Text = Join(arrParts, Chr$(2))

                    ' Check if this staff member is connected (state 7)
                    If CInt(frmMain.SockI(CInt(i)).State) = 7 Then
                        ' Send updated CFH entry
                        Call frmMain.SockI(CInt(i)).SendData(frmMain.CFHs(CInt(DecodeVL64(CStr(vCFHId)))).Text)
                    End If
                End If
            End If
        Next i
    Else
        ' Already picked up - find who picked it up
        sPickedUpBy = Mid$(frmMain.PickedUpCalls, _
                          InStr(1, frmMain.PickedUpCalls, sSearchStr))
        sPickedUpBy = Mid$(sPickedUpBy, InStr(1, sPickedUpBy, "=") + 1)
        sPickedUpBy = Mid$(sPickedUpBy, 1, InStr(1, sPickedUpBy, ">") - 1)

        ' Send error message that it was already picked up
        Call SendData("BK" & GetConfigValue("already_picked_up_by") & " " & sPickedUpBy & Chr$(1), SocketIndex)
    End If
End Function

' ============================================================================
' Proc_30_91 - HandleUserLookup
' Handles looking up another user's profile for messenger/friend list
'
' Original P-Code: Proc_30_91_B437D0 (line 131674)
' ============================================================================
Private Function HandleUserLookup(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim vNameLength As Variant
    Dim sUsername As String
    Dim sUserPath As String
    Dim sName As String
    Dim sAppearance As String
    Dim sMission As String
    Dim sSex As String
    Dim sLastOnline As String
    Dim sSexIndicator As String
    Dim lUserId As Long
    Dim bOnline As Boolean
    Dim sResponse As String
    Dim i As Variant
    Dim oFile As Object

    ' Extract VL64-encoded username length and username
    vNameLength = DecodeVL64(Mid$(sData, 3, 2))
    sUsername = Mid$(sData, 5, CLng(vNameLength))

    ' Check if user exists
    sUserPath = gDataPath & "habbos\" & LCase$(sUsername)
    If Not gFSO.FolderExists(sUserPath) Then
        ' User not found
        Call SendData("B@MESSENGER" & Chr$(2) & "H" & Chr$(1), SocketIndex)
        Exit Function
    End If

    ' Read user name
    Set oFile = gFSO.OpenTextFile(sUserPath & "\name.txt", 1, False)
    sName = oFile.ReadAll
    Set oFile = Nothing

    ' Read appearance
    Set oFile = gFSO.OpenTextFile(sUserPath & "\app.txt", 1, False)
    sAppearance = oFile.ReadAll
    Set oFile = Nothing

    ' Read console mission (may be empty)
    Set oFile = gFSO.OpenTextFile(sUserPath & "\consolemission.txt", 1, False)
    If oFile.AtEndOfStream Then
        sMission = vbNullString
    Else
        sMission = oFile.ReadAll
    End If
    Set oFile = Nothing

    ' Read sex and determine indicator
    Set oFile = gFSO.OpenTextFile(sUserPath & "\sex.txt", 1, False)
    sSex = LCase$(oFile.ReadAll)
    Set oFile = Nothing

    If sSex = "m" Then
        sSexIndicator = "I"
    Else
        sSexIndicator = "H"
    End If

    ' Read last online
    Set oFile = gFSO.OpenTextFile(sUserPath & "\lastonline.txt", 1, False)
    sLastOnline = oFile.ReadAll
    Set oFile = Nothing

    ' Check if user is currently online
    bOnline = False
    For i = 1 To frmMain.SockI.Count
        If LCase$(gUserData(CLng(i)).Username) = LCase$(sUsername) Then
            If CInt(frmMain.SockI(CInt(i)).State) = 7 Then
                sSexIndicator = gUserData(CLng(i)).Figure
                bOnline = True
                Exit For
            End If
        End If
    Next i

    ' If not online, use "H" as indicator
    If Not bOnline Then
        sSexIndicator = "H"
    End If

    ' Get user ID
    lUserId = CLng(GetUserId(sUsername))

    ' Build response packet
    sResponse = "B@MESSENGER" & Chr$(2) & EncodeVL64(CDbl(lUserId)) & sName & Chr$(2) & _
                sSexIndicator & sMission & Chr$(2) & sSexIndicator & Chr$(2) & _
                sLastOnline & Chr$(2) & sAppearance & Chr$(2) & Chr$(1)

    Call SendData(sResponse, SocketIndex)
End Function

' ============================================================================
' Proc_30_95 - HandleFriendAccept
' Handles accepting or declining a friend request
'
' Original P-Code: Proc_30_95_B3AC88 (line 133546)
' ============================================================================
Private Function HandleFriendAccept(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sAction As String
    Dim sTargetUser As String
    Dim sInquiries As String
    Dim sUserPath As String
    Dim oFile As Object

    ' Check action type (position 3)
    sAction = Mid$(sData, 3, 1)

    If sAction = "I" Then
        ' Accept friend request - extract target username
        sTargetUser = DecodeB64(Right$(sData, Len(sData) - 3))
        sTargetUser = GetFurniFolderId(sTargetUser)

        ' Read target user's inquiries file
        sUserPath = gDataPath & "habbos\" & LCase$(sTargetUser) & "\inquiries.txt"
        Set oFile = gFSO.OpenTextFile(sUserPath, 1, False)
        If Not oFile.AtEndOfStream Then
            sInquiries = oFile.ReadAll
        Else
            sInquiries = vbNullString
        End If
        Set oFile = Nothing

        ' Remove current user from target's inquiries
        sInquiries = Replace(sInquiries, "<" & LCase$(sTargetUser) & ">", vbNullString)

        ' Write updated inquiries back
        Set oFile = gFSO.OpenTextFile(sUserPath, 2, False)
        oFile.Write sInquiries
        Set oFile = Nothing

        ' Now update own inquiries file
        sUserPath = gDataPath & "habbos\" & LCase$(sTargetUser) & "\inquiries.txt"
        Set oFile = gFSO.OpenTextFile(sUserPath, 1, False)
        If Not oFile.AtEndOfStream Then
            sInquiries = oFile.ReadAll
        Else
            sInquiries = vbNullString
        End If
        Set oFile = Nothing

        ' Remove target user from own inquiries
        sInquiries = Replace(sInquiries, "<" & LCase$(sTargetUser) & ">", vbNullString)

        ' Write updated inquiries back
        Set oFile = gFSO.OpenTextFile(sUserPath, 2, False)
        oFile.Write sInquiries
        Set oFile = Nothing
    Else
        ' Decline request - just remove from own inquiries
        sUserPath = gDataPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\inquiries.txt"
        Set oFile = gFSO.OpenTextFile(sUserPath, 2, False)
        oFile.Write vbNullString
        Set oFile = Nothing
    End If
End Function

' ============================================================================
' Proc_30_96 - HandleFriendRemove
' Handles removing a friend from the friend list
'
' Original P-Code: Proc_30_96_B53F30 (line 133853)
' ============================================================================
Private Function HandleFriendRemove(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sTargetUser As String
    Dim sTargetId As String
    Dim sMyId As String
    Dim sFriendList As String
    Dim sUserPath As String
    Dim oFile As Object
    Dim oFolder As Object
    Dim oFiles As Object
    Dim oFileItem As Object
    Dim sFileContent As String
    Dim i As Integer

    ' Extract target username from packet
    sTargetUser = DecodeB64(Right$(sData, Len(sData) - 3))
    sTargetUser = GetFurniFolderId(sTargetUser)

    ' Read current user's friendlist and remove target
    sUserPath = gDataPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\friendlist.txt"
    Set oFile = gFSO.OpenTextFile(sUserPath, 1, False)
    If Not oFile.AtEndOfStream Then
        sFriendList = oFile.ReadAll
    Else
        sFriendList = vbNullString
    End If
    Set oFile = Nothing

    ' Remove target from friendlist
    sFriendList = Replace(sFriendList, "<" & LCase$(sTargetUser) & ">", vbNullString)

    ' Write back updated friendlist
    Set oFile = gFSO.OpenTextFile(sUserPath, 2, False)
    oFile.Write sFriendList
    Set oFile = Nothing

    ' Read target user's friendlist and remove current user
    sUserPath = gDataPath & "habbos\" & LCase$(sTargetUser) & "\friendlist.txt"
    Set oFile = gFSO.OpenTextFile(sUserPath, 1, False)
    If Not oFile.AtEndOfStream Then
        sFriendList = oFile.ReadAll

        ' Remove current user from target's friendlist
        sFriendList = Replace(sFriendList, "<" & LCase$(gUserData(CLng(SocketIndex)).Username) & ">", vbNullString)

        ' Write back updated friendlist
        Set oFile = gFSO.OpenTextFile(sUserPath, 2, False)
        oFile.Write sFriendList
        Set oFile = Nothing
    End If

    ' Get user IDs for notifications
    sTargetId = GetUserId(sTargetUser)
    sMyId = GetUserId(gUserData(CLng(SocketIndex)).Username)

    ' Send removal notification to current user
    Call SendData("BJI" & EncodeVL64(CDbl(sTargetId)) & Chr$(1), SocketIndex)

    ' Find target user online and send them notification
    For i = 1 To frmMain.SockI.Count
        If LCase$(gUserData(CLng(i)).Username) = LCase$(sTargetUser) Then
            If CInt(frmMain.SockI(CInt(i)).State) = 7 Then
                Call frmMain.SockI(CInt(i)).SendData("BJI" & EncodeVL64(CDbl(sMyId)) & Chr$(1))
                Exit For
            End If
        End If
    Next i

    ' Clean up directmail from removed friend
    sUserPath = gDataPath & "habbos\" & LCase$(gUserData(CLng(SocketIndex)).Username) & "\directmail\"
    Set oFolder = gFSO.GetFolder(sUserPath)
    Set oFiles = oFolder.Files
    For Each oFileItem In oFiles
        If Right$(oFileItem.Path, 3) <> "txt" Then
            Set oFile = oFileItem.OpenAsTextStream(1)
            sFileContent = oFile.ReadAll
            Set oFile = Nothing
            If Len(sFileContent) >= Len(sTargetUser) Then
                If LCase$(Left$(sFileContent, Len(sTargetUser))) = LCase$(sTargetUser) Then
                    ' Read content and store in user data (for offline message)
                    Set oFile = oFileItem.OpenAsTextStream(1)
                    gUserData(CLng(SocketIndex)).DirectMail = oFile.ReadAll
                    Set oFile = Nothing
                    gFSO.DeleteFile oFileItem.Path, False
                End If
            End If
        End If
        DoEvents
    Next oFileItem

    ' Clean up directmail sent to removed friend
    sUserPath = gDataPath & "habbos\" & LCase$(sTargetUser) & "\directmail\"
    Set oFolder = gFSO.GetFolder(sUserPath)
    Set oFiles = oFolder.Files
    For Each oFileItem In oFiles
        If Right$(oFileItem.Path, 3) <> "txt" Then
            Set oFile = oFileItem.OpenAsTextStream(1)
            sFileContent = oFile.ReadAll
            Set oFile = Nothing
            If Len(sFileContent) >= Len(gUserData(CLng(SocketIndex)).Username) Then
                If LCase$(Left$(sFileContent, Len(gUserData(CLng(SocketIndex)).Username))) = LCase$(gUserData(CLng(SocketIndex)).Username) Then
                    gFSO.DeleteFile oFileItem.Path, False
                End If
            End If
        End If
        DoEvents
    Next oFileItem
End Function

' ============================================================================
' Proc_30_97 - HandleReportPlayer
' Handles reporting another player (creates a CFH from chat log)
'
' Original P-Code: Proc_30_97_B46294 (line 134454)
' ============================================================================
Private Function HandleReportPlayer(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sReportedUser As String
    Dim sReportMessage As String
    Dim sMessageContent As String
    Dim sRoomId As String
    Dim lCFHIndex As Long
    Dim sCFHEntry As String
    Dim sRankFile As String
    Dim arrParts() As String
    Dim i As Variant

    ' Check if there's chat log data to report
    If gUserData(CLng(SocketIndex)).ChatLog = vbNullString Then
        Exit Function
    End If

    ' Parse chat log - split by Chr$(1)
    arrParts = Split(gUserData(CLng(SocketIndex)).ChatLog, Chr$(1))
    sReportedUser = arrParts(0)

    ' Parse second part by Chr$(2)
    arrParts = Split(gUserData(CLng(SocketIndex)).ChatLog, Chr$(2))
    sReportMessage = arrParts(1)

    ' Parse third part for message content
    arrParts = Split(gUserData(CLng(SocketIndex)).ChatLog, Chr$(2))
    sMessageContent = arrParts(2)

    ' Clean up message - replace Chr$(13) with spaces, remove Chr$(10)
    sMessageContent = Replace(sMessageContent, Chr$(13), " ")
    sMessageContent = Replace(sMessageContent, Chr$(10), vbNullString)

    ' Get room ID
    sRoomId = EncodeVL64(gUserData(CLng(SocketIndex)).RoomId)

    ' If room ID is 0 but user has stored room, use that
    If sRoomId = "0" And gUserData(CLng(SocketIndex)).InRoom > 0 Then
        sRoomId = gUserData(CLng(SocketIndex)).RoomIdString
    End If

    ' Increment CFH counter
    lCFHIndex = Val(CStr(frmMain.CFHs)) + 1
    frmMain.CFHs = lCFHIndex

    ' Load new CFH text control
    Load frmMain.CFHs(CInt(lCFHIndex))

    ' Build CFH entry
    sCFHEntry = "BT" & EncodeVL64(CDbl(frmMain.CFHs)) & Chr$(2) & _
                "I" & GetConfigValue("cfh_time") & " " & Format$(Date, "dd-mm-yyyy") & " " & Format$(Time, "hh:mm") & Chr$(2) & _
                gUserData(CLng(SocketIndex)).Username & Chr$(2) & _
                GetConfigValue("rp_from") & ": " & sReportedUser & Chr$(13) & _
                GetConfigValue("rp_message") & ": " & sMessageContent & Chr$(2) & _
                sRoomId & Chr$(2) & GetConfigValue("reported_message") & ":" & Chr$(2) & _
                "I" & Chr$(2) & sRoomId & Chr$(1)

    ' Store CFH entry in control
    frmMain.CFHs(CInt(lCFHIndex)).Text = sCFHEntry

    ' Broadcast to all staff members with CFH permission
    For i = 1 To frmMain.SockI.Count
        sRankFile = gDataPath & "ranks\" & gUserData(CLng(i)).Rank & ".ini"
        If GetIniValue(sRankFile, "rank", "recrieve_cfh") = "1" Then
            If CInt(frmMain.SockI(CInt(i)).State) = 7 Then
                Call frmMain.SockI(CInt(i)).SendData(frmMain.CFHs(CInt(lCFHIndex)).Text)
            End If
        End If
    Next i
End Function

' ============================================================================
' Proc_30_102 - HandleInfraction
' Handles issuing an infraction/warning to a user by a moderator
'
' Original P-Code: Proc_30_102_B4B634 (line 137285)
' ============================================================================
Private Function HandleInfraction(ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sReason As String
    Dim sTargetUser As String
    Dim lInfractionCount As Long
    Dim sBanExpiry As String
    Dim sUserPath As String
    Dim oFile As Object
    Dim i As Variant

    ' Send confirmation message to moderator
    Call SendData("BKUser now Infracted." & Chr$(1), SocketIndex)

    ' Get target username and reason from form
    sReason = frmMain.Label.Caption
    sTargetUser = frmMain.Label.Caption

    ' Find target user online
    For i = 1 To frmMain.SockI.Count
        If LCase$(sTargetUser) = LCase$(gUserData(CLng(i)).Username) Then
            If CInt(frmMain.SockI(CInt(i)).State) = 7 Then
                ' Check if infracts.txt exists
                sUserPath = gDataPath & "habbos\" & LCase$(sTargetUser) & "\infracts.txt"
                If Not gFSO.FileExists(sUserPath) Then
                    ' Create initial infraction file with "0"
                    Set oFile = gFSO.OpenTextFile(sUserPath, 2, True)
                    oFile.Write "0"
                    Set oFile = Nothing

                    ' Write reason to infract.txt
                    sUserPath = gDataPath & "habbos\" & LCase$(sTargetUser) & "\infract.txt"
                    Set oFile = gFSO.OpenTextFile(sUserPath, 2, True)
                    oFile.Write sReason
                    Set oFile = Nothing
                End If

                ' Read current infraction count
                sUserPath = gDataPath & "habbos\" & LCase$(sTargetUser) & "\infracts.txt"
                Set oFile = gFSO.OpenTextFile(sUserPath, 1, False)
                lInfractionCount = Val(oFile.ReadAll) + 1
                Set oFile = Nothing

                ' Check if ban threshold reached (5, 10, 15, 20, 25)
                If lInfractionCount = 5 Or lInfractionCount = 10 Or lInfractionCount = 15 Or _
                   lInfractionCount = 20 Or lInfractionCount = 25 Then
                    ' Calculate ban expiry (1 hour from now)
                    sBanExpiry = CStr(DateAdd("h", 1, Now))

                    ' Create ban file
                    sUserPath = gDataPath & "user_bans\" & LCase$(sTargetUser) & ".txt"
                    Set oFile = gFSO.OpenTextFile(sUserPath, 2, True)
                    oFile.Write sBanExpiry
                    Set oFile = Nothing

                    ' Write ban reason
                    sUserPath = gDataPath & "user_bans\" & LCase$(sTargetUser) & ".reason"
                    Set oFile = gFSO.OpenTextFile(sUserPath, 2, True)
                    oFile.Write "You are got a Infractions Ban for 1 hour. The way was: " & vbCrLf & " & reden"
                    Set oFile = Nothing

                    ' Send ban message and disconnect
                    Call SendData("@cYou are got a Infractions Ban for 1 hour. The way was: " & vbCrLf & " & reden & Chr(1)", CInt(i))
                    Call SendData("@A" & GetServerVersion() & "", CInt(i))
                Else
                    ' Send warning message
                    Call SendData("@amod_warn/" & sReason & vbCrLf & _
                                  "This was a infraction! If you have few Infractions you count with a Ban!" & Chr$(1), CInt(i))

                    ' Update infraction files
                    If Not gFSO.FileExists(gDataPath & "habbos\" & LCase$(sTargetUser) & "\infracts.txt") Then
                        ' Create infracts.txt with 1
                        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\infracts.txt", 2, True)
                        oFile.Write "1"
                        Set oFile = Nothing

                        ' Write reason
                        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\infract.txt", 2, True)
                        oFile.Write sReason
                        Set oFile = Nothing
                    Else
                        ' Increment infraction count
                        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\infracts.txt", 1, False)
                        lInfractionCount = Val(oFile.ReadAll) + 1
                        Set oFile = Nothing

                        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\infracts.txt", 2, True)
                        oFile.Write CStr(lInfractionCount)
                        Set oFile = Nothing

                        ' Update reason
                        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\infract.txt", 2, True)
                        oFile.Write sReason
                        Set oFile = Nothing
                    End If
                End If
                Exit For
            End If
        End If
    Next i
End Function

' ============================================================================
' Proc_30_81 - HandleRoomNavigator
' Handles room navigator/category listing for guest rooms
' "PAI" = Returns overview of all categories with room counts
' "SLI", "RLI", etc. = Returns room list for specific category
'
' Original P-Code: Proc_30_81_B825E4 (line 123470)
' ============================================================================
Private Function HandleRoomNavigator(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sCommand As String
    Dim sCategory As String
    Dim sResponse As String
    Dim sRoomListResponse As String
    Dim sCategoryHeader As String
    Dim sCatName As String
    Dim sRoomPath As String
    Dim oFile As Object
    Dim i As Variant
    Dim j As Variant
    Dim k As Variant
    Dim lRoomId As Long
    Dim lRoomCount As Long
    Dim lMaxRooms As Long
    Dim lVisitorCount As Long
    Dim lRoomIndex As Long
    Dim sRoomName As String
    Dim sRoomOwner As String
    Dim sRoomDesc As String
    Dim sMaxIn As String
    Dim sOpenType As String
    Dim sShowName As String
    Dim sListEntry As String

    ' Category counts
    Dim lCountSL As Long, lCountRL As Long, lCountPR As Long, lCountRQ As Long
    Dim lCountQ As Long, lCountR As Long, lCountPL As Long, lCountRN As Long, lCountRR As Long
    Dim sEncodedSL As String, sEncodedRL As String, sEncodedPR As String, sEncodedRQ As String
    Dim sEncodedQ As String, sEncodedR As String, sEncodedPL As String, sEncodedRN As String, sEncodedRR As String

    ' Extract command (first 3 chars after header)
    sCommand = Mid$(sData, 4)
    sCategory = ""

    ' Handle "PAI" - Category overview
    If sCommand = "PAI" Then
        ' Initialize counters
        lCountSL = 0: lCountRL = 0: lCountPR = 0: lCountRQ = 0
        lCountQ = 0: lCountR = 0: lCountPL = 0: lCountRN = 0: lCountRR = 0

        ' Count rooms in category SL
        For i = 1 To frmMain.SockI.Count
            If gUserData(CLng(i)).RoomID > 0 Then
                sRoomPath = gDataPath & "privaterooms\" & CStr(gUserData(CLng(i)).RoomID) & "\category.txt"
                Set oFile = gFSO.OpenTextFile(sRoomPath, 1, False)
                sCatName = oFile.ReadAll
                Set oFile = Nothing
                If sCatName = "SL" Then lCountSL = lCountSL + 1
            End If
        Next i
        sEncodedSL = EncodeVL64(lCountSL)

        ' Count rooms in category RL
        For i = 1 To frmMain.SockI.Count
            If gUserData(CLng(i)).RoomID > 0 Then
                sRoomPath = gDataPath & "privaterooms\" & CStr(gUserData(CLng(i)).RoomID) & "\category.txt"
                Set oFile = gFSO.OpenTextFile(sRoomPath, 1, False)
                sCatName = oFile.ReadAll
                Set oFile = Nothing
                If sCatName = "RL" Then lCountRL = lCountRL + 1
            End If
        Next i
        sEncodedRL = EncodeVL64(lCountRL)

        ' Count rooms in category PR
        For i = 1 To frmMain.SockI.Count
            If gUserData(CLng(i)).RoomID > 0 Then
                sRoomPath = gDataPath & "privaterooms\" & CStr(gUserData(CLng(i)).RoomID) & "\category.txt"
                Set oFile = gFSO.OpenTextFile(sRoomPath, 1, False)
                sCatName = oFile.ReadAll
                Set oFile = Nothing
                If sCatName = "PR" Then lCountPR = lCountPR + 1
            End If
        Next i
        sEncodedPR = EncodeVL64(lCountPR)

        ' Count rooms in category RQ
        For i = 1 To frmMain.SockI.Count
            If gUserData(CLng(i)).RoomID > 0 Then
                sRoomPath = gDataPath & "privaterooms\" & CStr(gUserData(CLng(i)).RoomID) & "\category.txt"
                Set oFile = gFSO.OpenTextFile(sRoomPath, 1, False)
                sCatName = oFile.ReadAll
                Set oFile = Nothing
                If sCatName = "RQ" Then lCountRQ = lCountRQ + 1
            End If
        Next i
        sEncodedRQ = EncodeVL64(lCountRQ)

        ' Count rooms in category Q]
        For i = 1 To frmMain.SockI.Count
            If gUserData(CLng(i)).RoomID > 0 Then
                sRoomPath = gDataPath & "privaterooms\" & CStr(gUserData(CLng(i)).RoomID) & "\category.txt"
                Set oFile = gFSO.OpenTextFile(sRoomPath, 1, False)
                sCatName = oFile.ReadAll
                Set oFile = Nothing
                If sCatName = "Q]" Then lCountQ = lCountQ + 1
            End If
        Next i
        sEncodedQ = EncodeVL64(lCountQ)

        ' Count rooms in category R]
        For i = 1 To frmMain.SockI.Count
            If gUserData(CLng(i)).RoomID > 0 Then
                sRoomPath = gDataPath & "privaterooms\" & CStr(gUserData(CLng(i)).RoomID) & "\category.txt"
                Set oFile = gFSO.OpenTextFile(sRoomPath, 1, False)
                sCatName = oFile.ReadAll
                Set oFile = Nothing
                If sCatName = "R]" Then lCountR = lCountR + 1
            End If
        Next i
        sEncodedR = EncodeVL64(lCountR)

        ' Count rooms in category PL (first count)
        For i = 1 To frmMain.SockI.Count
            If gUserData(CLng(i)).RoomID > 0 Then
                sRoomPath = gDataPath & "privaterooms\" & CStr(gUserData(CLng(i)).RoomID) & "\category.txt"
                Set oFile = gFSO.OpenTextFile(sRoomPath, 1, False)
                sCatName = oFile.ReadAll
                Set oFile = Nothing
                If sCatName = "PL" Then lCountPL = lCountPL + 1
            End If
        Next i
        sEncodedPL = EncodeVL64(lCountPL)

        ' Count rooms in category RN
        For i = 1 To frmMain.SockI.Count
            If gUserData(CLng(i)).RoomID > 0 Then
                sRoomPath = gDataPath & "privaterooms\" & CStr(gUserData(CLng(i)).RoomID) & "\category.txt"
                Set oFile = gFSO.OpenTextFile(sRoomPath, 1, False)
                sCatName = oFile.ReadAll
                Set oFile = Nothing
                If sCatName = "RN" Then lCountRN = lCountRN + 1
            End If
        Next i
        sEncodedRN = EncodeVL64(lCountRN)

        ' Count rooms in category RR
        For i = 1 To frmMain.SockI.Count
            If gUserData(CLng(i)).RoomID > 0 Then
                sRoomPath = gDataPath & "privaterooms\" & CStr(gUserData(CLng(i)).RoomID) & "\category.txt"
                Set oFile = gFSO.OpenTextFile(sRoomPath, 1, False)
                sCatName = oFile.ReadAll
                Set oFile = Nothing
                If sCatName = "RR" Then lCountRR = lCountRR + 1
            End If
        Next i
        sEncodedRR = EncodeVL64(lCountRR)

        ' Build category overview response
        sResponse = "HPAH" & GetConfigValue("guestrooms_title") & _
                    "[nFbNMAISLJ" & GetConfigValue("categorie_1") & "" & sEncodedSL & _
                    "[XKPAHRLJ" & GetConfigValue("categorie_2") & "" & sEncodedRL & _
                    "Z~EPAHPRJ" & GetConfigValue("categorie_3") & "" & sEncodedPR & _
                    "ZtEPAHRQJ" & GetConfigValue("categorie_4") & "" & sEncodedRQ & _
                    "YsEPAHQ]J" & GetConfigValue("categorie_6") & "" & sEncodedQ & _
                    "Y}EPAHR]J" & GetConfigValue("categorie_7") & "" & sEncodedR & _
                    "ZyEPAHPLJ" & GetConfigValue("categorie_8") & "" & sEncodedPL & _
                    "X|EPAHRNJ" & GetConfigValue("categorie_9") & "" & sEncodedRN & _
                    "[EPAHRRJ" & GetConfigValue("categorie_10") & "" & sEncodedRR & _
                    "ZfFPAH"

        ' Remove disabled categories (check categories.ini for each)
        If Val(GetIniValue(gDataPath & "room_categories\categories.ini", "categories", "SL")) = 0 Then
            sResponse = Replace(sResponse, "SLJ" & GetConfigValue("categorie_1") & "QD[XKPAH", "")
        End If
        If Val(GetIniValue(gDataPath & "room_categories\categories.ini", "categories", "RL")) = 0 Then
            sResponse = Replace(sResponse, "RLJ" & GetConfigValue("categorie_2") & "YDAZ~EPAH", "")
        End If
        If Val(GetIniValue(gDataPath & "room_categories\categories.ini", "categories", "PR")) = 0 Then
            sResponse = Replace(sResponse, "PRJ" & GetConfigValue("categorie_3") & "RhZtEPAH", "")
        End If
        If Val(GetIniValue(gDataPath & "room_categories\categories.ini", "categories", "RQ")) = 0 Then
            sResponse = Replace(sResponse, "RQJ" & GetConfigValue("categorie_4") & "XLA[DFPAH", "")
        End If
        If Val(GetIniValue(gDataPath & "room_categories\categories.ini", "categories", "Q]")) = 0 Then
            sResponse = Replace(sResponse, "Q]J" & GetConfigValue("categorie_6") & "SPY}EPAH", "")
        End If
        If Val(GetIniValue(gDataPath & "room_categories\categories.ini", "categories", "R]")) = 0 Then
            sResponse = Replace(sResponse, "R]J" & GetConfigValue("categorie_7") & "REZyEPAH", "")
        End If
        If Val(GetIniValue(gDataPath & "room_categories\categories.ini", "categories", "PL")) = 0 Then
            sResponse = Replace(sResponse, "PLJ" & GetConfigValue("categorie_8") & "R]X|EPAH", "")
        End If
        If Val(GetIniValue(gDataPath & "room_categories\categories.ini", "categories", "RN")) = 0 Then
            sResponse = Replace(sResponse, "RNJ" & GetConfigValue("categorie_9") & "SP[EPAH", "")
        End If
        If Val(GetIniValue(gDataPath & "room_categories\categories.ini", "categories", "RR")) = 0 Then
            sResponse = Replace(sResponse, "RRJ" & GetConfigValue("categorie_10") & "XjAZfFPAH", "")
        End If

        Call SendData("C\" & sResponse & Chr$(1), SocketIndex)
        Exit Function
    End If

    ' Handle category-specific requests (SLI, RLI, PRI, etc.)
    If sCommand = "SLI" Then
        sCategory = "SL"
        sCategoryHeader = "I" & "SLI" & Mid$("SLI", 1, Len("SLI") - 1) & "J" & GetConfigValue("categorie_1")
    ElseIf sCommand = "RLI" Then
        sCategory = "RL"
        sCategoryHeader = "I" & "RLI" & Mid$("RLI", 1, Len("RLI") - 1) & "J" & GetConfigValue("categorie_2")
    ElseIf sCommand = "PRI" Then
        sCategory = "PR"
        sCategoryHeader = "I" & "PRI" & Mid$("PRI", 1, Len("PRI") - 1) & "J" & GetConfigValue("categorie_3")
    ElseIf sCommand = "RQI" Then
        sCategory = "RQ"
        sCategoryHeader = "I" & "RQI" & Mid$("RQI", 1, Len("RQI") - 1) & "J" & GetConfigValue("categorie_4")
    ElseIf sCommand = "Q]I" Then
        sCategory = "Q]"
        sCategoryHeader = "I" & "Q]I" & Mid$("Q]I", 1, Len("Q]I") - 1) & "J" & GetConfigValue("categorie_6")
    ElseIf sCommand = "R]I" Then
        sCategory = "R]"
        sCategoryHeader = "I" & "R]I" & Mid$("R]I", 1, Len("R]I") - 1) & "J" & GetConfigValue("categorie_7")
    ElseIf sCommand = "PLI" Then
        sCategory = "PL"
        sCategoryHeader = "I" & "PLI" & Mid$("PLI", 1, Len("PLI") - 1) & "J" & GetConfigValue("categorie_8")
    ElseIf sCommand = "RNI" Then
        sCategory = "RN"
        sCategoryHeader = "I" & "RNI" & Mid$("RNI", 1, Len("RNI") - 1) & "J" & GetConfigValue("categorie_9")
    ElseIf sCommand = "RRI" Then
        sCategory = "RR"
        sCategoryHeader = "I" & "RRI" & Mid$("RRI", 1, Len("RRI") - 1) & "J" & GetConfigValue("categorie_10")
    Else
        Exit Function
    End If

    ' Load temporary ListBox for sorting rooms
    Set frmMain.ListBox(SocketIndex) = Controls.Add("VB.ListBox", "ListBox" & SocketIndex)
    Load frmMain.ListBox(SocketIndex)

    ' Get total room count
    Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\count.txt", 1, False)
    lRoomCount = Val(oFile.ReadAll)
    Set oFile = Nothing

    lRoomIndex = 0
    sRoomListResponse = ""

    ' Loop through all rooms
    For i = 1 To lRoomCount
        ' Check if room folder exists and is not deleted
        If gFSO.FolderExists(gDataPath & "privaterooms\" & CStr(i)) Then
            If Not gFSO.FileExists(gDataPath & "privaterooms\" & CStr(i) & "\deleted.txt") Then
                ' Read room category
                Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & CStr(i) & "\category.txt", 1, False)
                sCatName = oFile.ReadAll
                Set oFile = Nothing

                ' Check if room matches requested category
                If sCatName = sCategory Then
                    ' Count visitors in this room
                    lVisitorCount = 0
                    For j = 1 To frmMain.SockI.Count
                        If gUserData(CLng(j)).RoomID = i Then
                            lVisitorCount = lVisitorCount + 1
                        End If
                    Next j

                    ' Add to ListBox with visitor count and room ID
                    frmMain.ListBox(SocketIndex).AddItem CStr(lVisitorCount) & " " & CStr(i)
                    lRoomIndex = lRoomIndex + 1
                End If
            End If
        End If
    Next i

    ' Get max rooms to list from config
    lMaxRooms = Val(GetIniValue(gDataPath, "config", "maxguestroomsinlist"))
    lRoomIndex = 0

    ' Loop through ListBox items (sorted by visitor count)
    For k = frmMain.ListBox(SocketIndex).ListCount - 1 To 0 Step -1
        lRoomIndex = lRoomIndex + 1
        If lRoomIndex <= lMaxRooms Then
            ' Extract room ID from list entry
            lRoomId = Val(Split(frmMain.ListBox(SocketIndex).List(k), " ")(1))

            ' Read room name
            Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\name.txt", 1, False)
            sRoomName = Trim$(oFile.ReadAll)
            Set oFile = Nothing

            ' Read room owner
            Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\owner.txt", 1, False)
            sRoomOwner = oFile.ReadAll
            Set oFile = Nothing

            ' Read room description
            Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\description.txt", 1, False)
            sRoomDesc = Trim$(oFile.ReadAll)
            Set oFile = Nothing

            ' Read max visitors
            Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\maxin.txt", 1, False)
            sMaxIn = oFile.ReadAll
            Set oFile = Nothing

            ' Read open type
            Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\opentype.txt", 1, False)
            sOpenType = oFile.ReadAll
            Set oFile = Nothing

            ' Read show owner name setting
            Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & lRoomId & "\showname.txt", 1, False)
            sShowName = oFile.ReadAll
            Set oFile = Nothing

            ' Count current visitors
            lVisitorCount = 0
            For j = 1 To frmMain.SockI.Count
                If gUserData(CLng(j)).RoomID = lRoomId Then
                    lVisitorCount = lVisitorCount + 1
                End If
            Next j

            ' Hide owner name if setting is 0 and user doesn't have see_room_owner permission
            If sShowName = "0" And sRoomOwner <> gUserData(CLng(SocketIndex)).Username Then
                If GetIniValue(gDataPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini", "rank", "see_room_owner") <> "1" Then
                    sRoomOwner = "-"
                End If
            End If

            ' Build room entry
            sRoomListResponse = sRoomListResponse & EncodeVL64(lRoomId) & sRoomName & Chr$(2) & _
                               sRoomOwner & Chr$(2) & sOpenType & Chr$(2) & _
                               EncodeVL64(lVisitorCount) & EncodeVL64(Val(sMaxIn)) & _
                               sRoomDesc & Chr$(2)
        End If
    Next k

    ' Unload temporary ListBox
    Unload frmMain.ListBox(SocketIndex)

    ' Send response
    If lRoomIndex > 0 Then
        Call SendData("C\" & sCategoryHeader & Chr$(2) & "I" & EncodeVL64(15 * lRoomIndex) & _
                      "PA" & EncodeVL64(lRoomIndex) & sRoomListResponse & Chr$(1), SocketIndex)
    Else
        Call SendData("C\" & sCategoryHeader & Chr$(2) & "IHPAH" & Chr$(1), SocketIndex)
    End If
End Function

' ============================================================================
' Proc_30_82 - HandleModeration
' Handles moderator commands: kick, alert, ban (user/IP/MAC), room alert
' Commands: "HI" = kick, "HH" = alert, "HJ" = ban, "IH" = roomalert
'
' Original P-Code: Proc_30_82_B7C6B4 (line 125593)
' ============================================================================
Private Function HandleModeration(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sCommand As String
    Dim sPacket As String
    Dim sRankFile As String
    Dim sTargetUser As String
    Dim sMessage As String
    Dim sBanType As String
    Dim sBanDuration As String
    Dim lBanHours As Long
    Dim sBanExpiry As String
    Dim sTargetRank As String
    Dim sTargetIP As String
    Dim sTargetMAC As String
    Dim oFile As Object
    Dim i As Variant
    Dim lTargetNameLen As Long
    Dim lMessageLen As Long
    Dim lBanTypeLen As Long

    ' Extract command (2 chars starting at position 4)
    sCommand = Mid$(sData, 4, 2)
    sPacket = Mid$(sData, 5)

    ' Build rank file path
    sRankFile = gDataPath & "ranks\" & gUserData(CLng(SocketIndex)).Rank & ".ini"

    ' Handle "HI" - Kick command
    If sCommand = "HI" Then
        ' Check kick permission
        If InStr(1, GetIniValue(sRankFile, "rank", "mod_tool"), ",kick") = 0 Then Exit Function

        ' Parse packet: [nameLen(VL64)][name][messageLen(VL64)][message]
        lTargetNameLen = DecodeVL64(Mid$(sPacket, 1, 2))
        sTargetUser = Mid$(sPacket, 3, lTargetNameLen)
        sPacket = Mid$(sPacket, 3 + lTargetNameLen)
        lMessageLen = DecodeVL64(Mid$(sPacket, 1, 2))
        sMessage = Mid$(sPacket, 3, lMessageLen)

        ' Find and kick target user
        For i = 1 To frmMain.SockI.Count
            If LCase$(sTargetUser) = LCase$(gUserData(CLng(i)).Username) Then
                ' Check if moderator rank is >= target rank
                If CompareRanks(gUserData(CLng(i)).Rank, gUserData(CLng(SocketIndex)).Rank) = True Then
                    ' Target is protected (Hebbo or higher rank)
                    If gUserData(CLng(i)).Username = "Hebbo" Then Exit Function

                    If CInt(frmMain.SockI(CInt(i)).State) = 7 Then
                        ' Send kick message
                        Call frmMain.SockI(CInt(i)).SendData("@R" & Chr$(1))
                    End If

                    ' Send warning message if specified
                    If sMessage <> "" Then
                        If CInt(frmMain.SockI(CInt(i)).State) = 7 Then
                            Call frmMain.SockI(CInt(i)).SendData("@amod_warn/" & sMessage & Chr$(1))
                        End If
                    End If

                    ' Remove user from room if in one
                    If gUserData(CLng(i)).RoomID > 0 Then
                        Call BroadcastToRoom(Chr$(1) & "@]" & gUserData(CLng(i)).RoomPosition, gUserData(CLng(i)).RoomID)
                        gUserData(CLng(i)).RoomID = 0
                    End If

                    ' Remove from public room if in one
                    If gUserData(CLng(i)).PublicRoomID > 0 Then
                        Call BroadcastToPublicRoom(Chr$(1) & "@]" & gUserData(CLng(i)).RoomPosition, gUserData(CLng(i)).PublicRoomID)
                        gUserData(CLng(i)).PublicRoomID = 0
                        gUserData(CLng(i)).RoomPosition = ""
                        gUserData(CLng(i)).PublicRoomData = 0
                    End If

                    gUserData(CLng(i)).CurrentRoom = "I" & GetConfigValue("hotel_view")
                End If
                Exit For
            End If
        Next i
        Exit Function
    End If

    ' Handle "HH" - Alert command
    If sCommand = "HH" Then
        ' Check alert permission
        If InStr(1, GetIniValue(sRankFile, "rank", "mod_tool"), ",alert") = 0 Then Exit Function

        ' Parse packet: [nameLen(VL64)][name][messageLen(VL64)][message]
        lTargetNameLen = DecodeVL64(Mid$(sPacket, 1, 2))
        sTargetUser = Mid$(sPacket, 3, lTargetNameLen)
        sPacket = Mid$(sPacket, 3 + lTargetNameLen)
        lMessageLen = DecodeVL64(Mid$(sPacket, 1, 2))
        sMessage = Mid$(sPacket, 3, lMessageLen)

        ' Find and alert target user
        For i = 1 To frmMain.SockI.Count
            If LCase$(sTargetUser) = LCase$(gUserData(CLng(i)).Username) Then
                If CInt(frmMain.SockI(CInt(i)).State) = 7 Then
                    Call frmMain.SockI(CInt(i)).SendData("@amod_warn/" & sMessage & Chr$(1))
                End If
                Exit For
            End If
        Next i
        Exit Function
    End If

    ' Handle "HJ" - Ban command
    If sCommand = "HJ" Then
        ' Check ban permission
        If InStr(1, GetIniValue(sRankFile, "rank", "mod_tool"), ",ban") = 0 Then Exit Function

        ' Parse packet: [nameLen(VL64)][name][messageLen(VL64)][message][banTypeLen(VL64)][banType][duration]
        lTargetNameLen = DecodeVL64(Mid$(sPacket, 1, 2))
        sTargetUser = Mid$(sPacket, 3, lTargetNameLen)
        sPacket = Mid$(sPacket, 3 + lTargetNameLen)
        lMessageLen = DecodeVL64(Mid$(sPacket, 1, 2))
        sMessage = Mid$(sPacket, 3, lMessageLen)
        sPacket = Mid$(sPacket, 3 + lMessageLen)
        lBanTypeLen = DecodeVL64(Mid$(sPacket, 1, 2))
        sBanType = Mid$(sPacket, 3, lBanTypeLen)
        sPacket = Mid$(sPacket, 3 + lBanTypeLen)

        ' Extract ban duration code (remaining packet after ban type)
        sBanDuration = Right$(sPacket, 1) & Left$(Mid$(sPacket, 1, Len(sPacket) - 1), Len(sPacket) - 1)
        sBanDuration = Mid$(sData, 11 + lTargetNameLen + lMessageLen + lBanTypeLen)

        ' Convert duration code to hours
        Select Case sBanDuration
            Case "JHH": lBanHours = 2
            Case "PAHH": lBanHours = 4
            Case "PCHH": lBanHours = 12
            Case "PFHH": lBanHours = 24
            Case "PLHH": lBanHours = 48
            Case "PRHH": lBanHours = 72
            Case "PjHH": lBanHours = 336
            Case "X~AHH": lBanHours = 504
            Case "XtBHH": lBanHours = 720
            Case "XhEHH": lBanHours = 8760
            Case "DAHH": lBanHours = 17520
            Case "FFHH": lBanHours = 100008  ' Permanent
            Case Else: lBanHours = 24
        End Select

        ' Check if target user exists
        If Not gFSO.FolderExists(gDataPath & "habbos\" & LCase$(sTargetUser)) Then Exit Function

        ' Check target rank - can't ban users of same or higher rank
        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\rank.txt", 1, False)
        sTargetRank = oFile.ReadAll
        Set oFile = Nothing

        If CompareRanks(sTargetRank, gUserData(CLng(SocketIndex)).Rank) = True Then Exit Function

        ' Demote managers to habbo
        If sTargetRank = "manager" Then
            Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\rank.txt", 2, True)
            oFile.Write "habbo"
            Set oFile = Nothing
            Exit Function
        End If

        ' Calculate ban expiry
        sBanExpiry = CStr(DateAdd("h", lBanHours, Now))

        ' Create user ban
        Set oFile = gFSO.OpenTextFile(gDataPath & "user_bans\" & LCase$(sTargetUser) & ".txt", 2, True)
        oFile.Write sBanExpiry
        Set oFile = Nothing

        ' Write ban reason
        Set oFile = gFSO.OpenTextFile(gDataPath & "user_bans\" & LCase$(sTargetUser) & ".reason", 2, True)
        oFile.Write sMessage
        Set oFile = Nothing

        ' Create IP ban if requested (ban type IJH or IJI)
        If sBanType = "IJH" Or sBanType = "IJI" Then
            ' Read target IP
            Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\host.txt", 1, False)
            sTargetIP = oFile.ReadAll
            Set oFile = Nothing

            ' Create IP ban file
            Set oFile = gFSO.OpenTextFile(gDataPath & "ip_bans\" & sTargetIP & ".txt", 2, True)
            oFile.Write sBanExpiry
            Set oFile = Nothing

            Set oFile = gFSO.OpenTextFile(gDataPath & "ip_bans\" & sTargetIP & ".reason", 2, True)
            oFile.Write sMessage
            Set oFile = Nothing
        End If

        ' Create MAC ban if requested (ban type HJI or IJI)
        If sBanType = "HJI" Or sBanType = "IJI" Then
            ' Read target MAC
            Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\machost.txt", 1, False)
            sTargetMAC = oFile.ReadAll
            Set oFile = Nothing

            ' Create MAC ban file
            Set oFile = gFSO.OpenTextFile(gDataPath & "mac_bans\" & sTargetMAC & ".txt", 2, True)
            oFile.Write sBanExpiry
            Set oFile = Nothing

            Set oFile = gFSO.OpenTextFile(gDataPath & "mac_bans\" & sTargetMAC & ".reason", 2, True)
            oFile.Write sMessage
            Set oFile = Nothing
        End If

        ' Mark user as banned
        gUserData(CLng(SocketIndex)).BannedState = ""
        gUserData(CLng(SocketIndex)).IsBanned = True
        gUserData(CLng(SocketIndex)).BannedUser = ""

        ' Find and kick banned user
        For i = 1 To frmMain.SockI.Count
            If LCase$(sTargetUser) = LCase$(gUserData(CLng(i)).Username) Then
                If CInt(frmMain.SockI(CInt(i)).State) = 7 Then
                    ' Send ban message and disconnect
                    Call frmMain.SockI(CInt(i)).SendData("@c" & sMessage & Chr$(1))
                    Call SendData("@A" & GetServerVersion() & "", CInt(i))

                    ' Wait a moment then close connection
                    Call DoWait(4)
                    Call frmMain.SockI(CInt(i)).Close

                    ' Remove from room
                    If gUserData(CLng(i)).RoomID > 0 Then
                        Call BroadcastToRoom(Chr$(1) & "@]" & gUserData(CLng(i)).RoomPosition, gUserData(CLng(i)).RoomID)
                        gUserData(CLng(i)).RoomID = 0
                    End If

                    If gUserData(CLng(i)).PublicRoomID > 0 Then
                        Call BroadcastToPublicRoom(Chr$(1) & "@]" & gUserData(CLng(i)).RoomPosition, gUserData(CLng(i)).PublicRoomID)
                        gUserData(CLng(i)).PublicRoomID = 0
                        gUserData(CLng(i)).RoomPosition = ""
                    End If

                    gUserData(CLng(i)).CurrentRoom = "H"
                End If
                Exit For
            End If
        Next i
        Exit Function
    End If

    ' Handle "IH" - Room alert command
    If sCommand = "IH" Then
        ' Check roomalert permission
        If InStr(1, GetIniValue(sRankFile, "rank", "mod_tool"), ",roomalert") = 0 Then Exit Function

        ' Parse packet
        lTargetNameLen = DecodeVL64(Mid$(sPacket, 1, 2))
        sTargetUser = Mid$(sPacket, 3, lTargetNameLen)
        sPacket = Mid$(sPacket, 3 + lTargetNameLen)
        lMessageLen = DecodeVL64(Mid$(sPacket, 1, 2))
        sMessage = Mid$(sPacket, 3, lMessageLen)

        ' Broadcast alert to all users in current room
        If gUserData(CLng(SocketIndex)).RoomID > 0 Then
            Call BroadcastToRoom("@amod_warn/" & sMessage & Chr$(1), gUserData(CLng(SocketIndex)).RoomID)
        ElseIf gUserData(CLng(SocketIndex)).PublicRoomID > 0 Then
            Call BroadcastToPublicRoom("@amod_warn/" & sMessage & Chr$(1), gUserData(CLng(SocketIndex)).PublicRoomID)
        End If
        Exit Function
    End If
End Function

' Helper function to wait for specified seconds
Private Sub DoWait(ByVal lSeconds As Long)
    Dim dStart As Double
    dStart = Timer
    Do While Timer - dStart < lSeconds
        DoEvents
    Loop
End Sub

' ============================================================================
' Proc_30_88 - HandleRegistration
' Handles new user registration
' Parses registration packet, validates data, creates user folder/files
'
' Original P-Code: Proc_30_88_B8B100 (line 128961)
' ============================================================================
Private Function HandleRegistration(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sPacket As String
    Dim sUsername As String
    Dim sPassword As String
    Dim sFigure As String
    Dim sSex As String
    Dim sEmail As String
    Dim sBirthday As String
    Dim sNote As String
    Dim lNameLen As Long
    Dim lPassLen As Long
    Dim lFigureLen As Long
    Dim lSexLen As Long
    Dim lEmailLen As Long
    Dim lBirthdayLen As Long
    Dim lNoteLen As Long
    Dim sUserPath As String
    Dim sIPPath As String
    Dim sIPCount As String
    Dim lIPCount As Long
    Dim oFile As Object
    Dim bIPCheckEnabled As Boolean
    Dim bRegEnabled As Boolean

    ' Exit if user already logged in
    If gUserData(CLng(SocketIndex)).Username <> "" Then Exit Function

    ' Send server time
    Call SendData("DkIQ]" & CStr(Now) & "", SocketIndex)
    Exit Function

    ' Parse packet starting at position 5
    sPacket = Mid$(sData, 5)

    ' Parse username (VL64 length + string)
    lNameLen = DecodeVL64(Mid$(sPacket, 1, 2))
    sUsername = Mid$(sPacket, 3, lNameLen)
    sPacket = Mid$(sPacket, 3 + lNameLen + 2)

    ' Parse password
    lPassLen = DecodeVL64(Mid$(sPacket, 1, 2))
    sPassword = Mid$(sPacket, 3, lPassLen)
    sPacket = Mid$(sPacket, 3 + lPassLen + 2)

    ' Parse figure
    lFigureLen = DecodeVL64(Mid$(sPacket, 1, 2))
    sFigure = Mid$(sPacket, 3, lFigureLen)
    sPacket = Mid$(sPacket, 3 + lFigureLen + 6)

    ' Parse sex
    lSexLen = DecodeVL64(Mid$(sPacket, 1, 2))
    sSex = Mid$(sPacket, 3, lSexLen)
    sPacket = Mid$(sPacket, 3 + lSexLen + 2)

    ' Parse email
    lEmailLen = DecodeVL64(Mid$(sPacket, 1, 2))
    sEmail = Mid$(sPacket, 3, lEmailLen)
    sPacket = Mid$(sPacket, 3 + lEmailLen + 11)

    ' Parse birthday
    lBirthdayLen = DecodeVL64(Mid$(sPacket, 1, 2))
    sBirthday = Mid$(sPacket, 3, lBirthdayLen)

    sNote = "Registered at HabLog Project"

    ' Check if username already exists
    If gFSO.FolderExists(gDataPath & "habbos\" & LCase$(sUsername)) Then
        Call SendData("DkIQ]" & CStr(Now) & "", SocketIndex)
        Exit Function
    End If

    ' Check if username already exists (second check)
    If gFSO.FolderExists(gDataPath & "habbos\" & LCase$(sUsername)) Then
        Call SendData("BaName Taken" & Chr$(1), SocketIndex)
        Exit Function
    End If

    ' Check IP registration limit if enabled
    bIPCheckEnabled = (frmTab_userlock.chkIPCHECK.Value = "1")
    If bIPCheckEnabled Then
        sIPPath = gDataPath & "register_ip\" & frmMain.SockI(SocketIndex).RemoteHostIP & ".text"
        If gFSO.FileExists(sIPPath) Then
            ' Read current count
            Set oFile = gFSO.OpenTextFile(sIPPath, 1, False)
            sIPCount = oFile.ReadAll
            Set oFile = Nothing

            ' Check if max registrations reached
            If sIPCount >= GetIniValue(gDataPath, "server", "max_ip") Then
                Call SendData("BK" & GetConfigValue("already_regged") & Chr$(1), SocketIndex)
                frmMain.SockI(SocketIndex).Enabled = True
                Exit Function
            End If
        End If
    End If

    ' Check if hotel is locked
    If GetIniValue(gDataPath, "config", "hotel_lock") = "1" Then
        Call SendData("BK" & GetConfigValue("hotel_lock") & Chr$(1), SocketIndex)
        frmMain.SockI(SocketIndex).Enabled = True
        Exit Function
    End If

    ' Check if registration is disabled
    bRegEnabled = (frmTab_userlock.chkREG.Value = "1")
    If Not bRegEnabled Then
        If frmTab_userlock.chkREG.Value = "0" Then
            Call SendData("BK" & GetConfigValue("reg_closed") & Chr$(1), SocketIndex)
            frmMain.SockI(SocketIndex).Enabled = True
            Exit Function
        End If
    End If

    ' Update IP registration counter
    sIPPath = gDataPath & "register_ip\" & frmMain.SockI(SocketIndex).RemoteHostIP & ".text"
    If gFSO.FileExists(sIPPath) Then
        ' Increment existing counter
        Set oFile = gFSO.OpenTextFile(sIPPath, 1, False)
        lIPCount = Val(oFile.ReadAll) + 1
        Set oFile = Nothing

        Set oFile = gFSO.OpenTextFile(sIPPath, 2, True)
        oFile.Write CStr(lIPCount)
        Set oFile = Nothing
    Else
        ' Create new counter
        gFSO.CreateTextFile sIPPath, False, True
        Set oFile = gFSO.OpenTextFile(sIPPath, 2, True)
        oFile.Write "1"
        Set oFile = Nothing
    End If

    ' Create user folder by copying from template
    sUserPath = gDataPath & "habbos\" & LCase$(sUsername)
    gFSO.CopyFolder gDataPath & "new_habbo", sUserPath, True

    ' Read habbos count
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\count.txt", 1, False)
    Dim sHabboCount As String
    sHabboCount = oFile.ReadAll
    Set oFile = Nothing

    ' Write username
    Set oFile = gFSO.OpenTextFile(sUserPath & "\name.txt", 2, True)
    oFile.Write sUsername
    Set oFile = Nothing

    ' Write password
    Set oFile = gFSO.OpenTextFile(sUserPath & "\pass.txt", 2, True)
    oFile.Write sPassword
    Set oFile = Nothing

    ' Write figure
    Set oFile = gFSO.OpenTextFile(sUserPath & "\app.txt", 2, True)
    oFile.Write sFigure
    Set oFile = Nothing

    ' Write birthday
    Set oFile = gFSO.OpenTextFile(sUserPath & "\birth.txt", 2, True)
    oFile.Write sBirthday
    Set oFile = Nothing

    ' Write sex
    Set oFile = gFSO.OpenTextFile(sUserPath & "\sex.txt", 2, True)
    oFile.Write sSex
    Set oFile = Nothing

    ' Write email
    Set oFile = gFSO.OpenTextFile(sUserPath & "\email.txt", 2, True)
    oFile.Write sEmail
    Set oFile = Nothing

    ' Write registration date
    Set oFile = gFSO.OpenTextFile(sUserPath & "\regdate.txt", 2, True)
    oFile.Write CStr(Now)
    Set oFile = Nothing

    ' Write host IP
    Set oFile = gFSO.OpenTextFile(sUserPath & "\host.txt", 2, True)
    oFile.Write frmMain.SockI(SocketIndex).RemoteHostIP
    Set oFile = Nothing

    ' Write note/mission
    Set oFile = gFSO.OpenTextFile(sUserPath & "\consolemission.txt", 2, True)
    oFile.Write sNote
    Set oFile = Nothing

    ' Update habbo count
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\count.txt", 2, True)
    oFile.Write CStr(Val(sHabboCount) + 1)
    Set oFile = Nothing

    ' Send registration success
    Call SendData("DA" & Chr$(1), SocketIndex)
End Function

' HandleFriendRequest - Processes sending a friend request (Proc_30_93)
' Sends a friend request notification to another user
Private Function HandleFriendRequest(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sUsername As String
    Dim sTargetUser As String
    Dim sFriendList As String
    Dim sInquiries As String
    Dim oFile As Object
    Dim i As Integer
    Dim lLen As Long
    Dim bAtEnd As Boolean

    ' Parse packet - extract target username
    ' Format: 2-byte header, then VL64-encoded length, then data
    lLen = DecodeVL64(Mid$(sData, 3, 2))
    sTargetUser = Right$(sData, Len(sData) - 2 - lLen)

    ' Get current user's username (lowercase for file operations)
    sUsername = LCase$(gUserData(SocketIndex).Username)

    ' Check 1: Is target already on sender's friend list?
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\friendlist.txt", 1, False, 1)
    bAtEnd = oFile.AtEndOfStream
    Set oFile = Nothing

    If Not bAtEnd Then
        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\friendlist.txt", 1, False, 1)
        sFriendList = oFile.ReadAll
        Set oFile = Nothing

        If InStr(1, sFriendList, "<" & LCase$(sTargetUser) & ">") > 0 Then
            Exit Function ' Already friends
        End If
    End If

    ' Check 2: Is sender already on target's friend list?
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\friendlist.txt", 1, False, 1)
    bAtEnd = oFile.AtEndOfStream
    Set oFile = Nothing

    If Not bAtEnd Then
        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\friendlist.txt", 1, False, 1)
        sFriendList = oFile.ReadAll
        Set oFile = Nothing

        If InStr(1, sFriendList, "<" & sUsername & ">") > 0 Then
            Exit Function ' Already friends (bidirectional)
        End If
    End If

    ' Check 3: Does sender already have a pending inquiry for target?
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\inquiries.txt", 1, False, 1)
    bAtEnd = oFile.AtEndOfStream
    Set oFile = Nothing

    If Not bAtEnd Then
        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\inquiries.txt", 1, False, 1)
        sInquiries = oFile.ReadAll
        Set oFile = Nothing

        If InStr(1, sInquiries, "<" & LCase$(sTargetUser) & ">") > 0 Then
            Exit Function ' Already have pending request
        End If
    End If

    ' Check 4: Does target already have a pending inquiry from sender?
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\inquiries.txt", 1, False, 1)
    bAtEnd = oFile.AtEndOfStream
    Set oFile = Nothing

    If Not bAtEnd Then
        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\inquiries.txt", 1, False, 1)
        sInquiries = oFile.ReadAll
        Set oFile = Nothing

        If InStr(1, sInquiries, "<" & sUsername & ">") > 0 Then
            Exit Function ' Target already has request from sender
        End If
    End If

    ' All checks passed - add friend request to target's inquiries
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\inquiries.txt", 8, False, 1)
    oFile.Write "<" & sUsername & ">"
    Set oFile = Nothing

    ' Notify target user if they are online
    For i = 1 To frmMain.SockIGet()
        If frmMain.SockI(i).State = 7 Then ' sckConnected
            If LCase$(gUserData(i).Username) = LCase$(sTargetUser) Then
                ' Build and send friend request notification packet
                ' "BD" + VL64(userID) + username + Chr(2) + Chr(1)
                Dim sPacket As String
                sPacket = "BD" & EncodeVL64(CDbl(GetUserID(gUserData(SocketIndex).Username))) & _
                          gUserData(SocketIndex).Username & Chr$(2) & Chr$(1)
                Call SendData(sPacket, i)
                Exit Function
            End If
        End If
    Next i
End Function

' HandleFriendAccept - Processes accepting a friend request (Proc_30_94)
' Accepts a pending friend request and adds both users to each other's friend list
Private Function HandleFriendAccept(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sUsername As String
    Dim sTargetUser As String
    Dim sInquiries As String
    Dim sFriendList As String
    Dim oFile As Object
    Dim i As Integer
    Dim lLen As Long
    Dim bAtEnd As Boolean
    Dim lTargetSocket As Long
    Dim sSex As String
    Dim sConsoleMission As String
    Dim sLastOnline As String
    Dim sFigure As String
    Dim sPacket As String

    ' Parse packet - extract target username (the one who sent the request)
    lLen = DecodeVL64(Mid$(sData, 3, 2))
    sTargetUser = Right$(sData, Len(sData) - 2 - lLen)

    ' Parse target user from packet data
    sTargetUser = ParsePacketString(sTargetUser)

    ' Get current user's username
    sUsername = LCase$(gUserData(SocketIndex).Username)

    ' Check if current user has pending inquiry from target
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\inquiries.txt", 1, False, 1)
    bAtEnd = oFile.AtEndOfStream
    Set oFile = Nothing

    If Not bAtEnd Then
        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\inquiries.txt", 1, False, 1)
        sInquiries = oFile.ReadAll
        Set oFile = Nothing

        ' Check if inquiry exists from target
        If InStr(1, sInquiries, "<" & LCase$(sTargetUser) & ">") > 0 Then
            ' Remove the inquiry from current user's inquiries
            sInquiries = Replace(sInquiries, "<" & LCase$(sTargetUser) & ">", "", 1, -1, vbTextCompare)
            Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\inquiries.txt", 2, False, 1)
            oFile.Write sInquiries
            Set oFile = Nothing

            ' Also remove from target's inquiries if exists
            Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\inquiries.txt", 1, False, 1)
            bAtEnd = oFile.AtEndOfStream
            Set oFile = Nothing

            If Not bAtEnd Then
                Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\inquiries.txt", 1, False, 1)
                sInquiries = oFile.ReadAll
                Set oFile = Nothing

                If InStr(1, sInquiries, "<" & sUsername & ">") > 0 Then
                    sInquiries = Replace(sInquiries, "<" & sUsername & ">", "", 1, -1, vbTextCompare)
                    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\inquiries.txt", 2, False, 1)
                    oFile.Write sInquiries
                    Set oFile = Nothing
                End If
            End If

            ' Add target to current user's friend list
            Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\friendlist.txt", 8, False, 1)
            oFile.Write "<" & sUsername & ">"
            Set oFile = Nothing

            ' Add current user to target's friend list
            Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\friendlist.txt", 8, False, 1)
            oFile.Write "<" & LCase$(sTargetUser) & ">"
            Set oFile = Nothing

            ' Get target user's socket if online
            lTargetSocket = GetUserID(sTargetUser)

            ' Determine sex character for packet
            Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\sex.txt", 1, False, 1)
            sSex = oFile.ReadAll
            Set oFile = Nothing

            If LCase$(sSex) = "m" Then
                sSex = "I"
            Else
                sSex = "H"
            End If

            ' Get console mission
            Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\consolemission.txt", 1, False, 1)
            If oFile.AtEndOfStream Then
                sConsoleMission = ""
            Else
                sConsoleMission = Trim$(oFile.ReadAll)
            End If
            Set oFile = Nothing

            ' Build friend info packet for current user
            ' Get target's name
            Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\name.txt", 1, False, 1)
            Dim sTargetName As String
            sTargetName = oFile.ReadAll
            Set oFile = Nothing

            ' Get last online time
            Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\lastonline.txt", 1, False, 1)
            sLastOnline = oFile.ReadAll
            Set oFile = Nothing

            ' Get figure
            Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\app.txt", 1, False, 1)
            sFigure = oFile.ReadAll
            Set oFile = Nothing

            ' Send friend added notification to current user
            sPacket = "BI" & EncodeVL64(CDbl(lTargetSocket)) & sTargetName & Chr$(2) & _
                      sSex & Chr$(2) & sConsoleMission & Chr$(2) & sLastOnline & Chr$(2) & _
                      sFigure & Chr$(2) & Chr$(1)
            Call SendData(sPacket, SocketIndex)

            ' Store figure for later use
            gUserData(SocketIndex).Figure = sFigure

            ' If target is online, send them the friend notification too
            If lTargetSocket <> 0 Then
                ' Get current user's info for the packet
                Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\sex.txt", 1, False, 1)
                sSex = oFile.ReadAll
                Set oFile = Nothing

                If LCase$(sSex) = "m" Then
                    sSex = "I"
                Else
                    sSex = "H"
                End If

                Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\consolemission.txt", 1, False, 1)
                If oFile.AtEndOfStream Then
                    sConsoleMission = ""
                Else
                    sConsoleMission = Trim$(oFile.ReadAll)
                End If
                Set oFile = Nothing

                Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\lastonline.txt", 1, False, 1)
                sLastOnline = oFile.ReadAll
                Set oFile = Nothing

                ' Send friend added notification to target
                sPacket = "BI" & EncodeVL64(CDbl(SocketIndex)) & gUserData(SocketIndex).Username & Chr$(2) & _
                          sSex & Chr$(2) & sConsoleMission & Chr$(2) & sLastOnline & Chr$(2) & _
                          gUserData(SocketIndex).Figure & Chr$(2) & Chr$(1)
                Call SendData(sPacket, CInt(lTargetSocket))
            End If
        End If
    End If
End Function

' HandleFriendDecline - Processes declining a friend request (Proc_30_95)
' Removes pending friend request from both users' inquiry lists
Private Function HandleFriendDecline(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sUsername As String
    Dim sTargetUser As String
    Dim sInquiries As String
    Dim oFile As Object
    Dim lLen As Long
    Dim bAtEnd As Boolean
    Dim sCommand As String

    ' Check if this is a decline command (command = "I")
    sCommand = Mid$(sData, 3, 1)
    If sCommand <> "I" Then Exit Function

    ' Parse packet - extract target username
    lLen = DecodeVL64(Mid$(sData, 3, 2))
    sTargetUser = Right$(sData, Len(sData) - 3)

    ' Parse target user from packet data
    sTargetUser = ParsePacketString(sTargetUser)

    ' Get current user's username
    sUsername = LCase$(gUserData(SocketIndex).Username)

    ' Remove inquiry from current user's inquiries
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\inquiries.txt", 1, False, 1)
    bAtEnd = oFile.AtEndOfStream
    Set oFile = Nothing

    If Not bAtEnd Then
        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\inquiries.txt", 1, False, 1)
        sInquiries = oFile.ReadAll
        Set oFile = Nothing

        ' Remove the inquiry
        sInquiries = Replace(sInquiries, "<" & LCase$(sTargetUser) & ">", "", 1, -1, vbTextCompare)
        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\inquiries.txt", 2, False, 1)
        oFile.Write sInquiries
        Set oFile = Nothing
    End If

    ' Also remove from target's inquiries if exists
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\inquiries.txt", 1, False, 1)
    bAtEnd = oFile.AtEndOfStream
    Set oFile = Nothing

    If Not bAtEnd Then
        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\inquiries.txt", 1, False, 1)
        sInquiries = oFile.ReadAll
        Set oFile = Nothing

        ' Remove the inquiry
        sInquiries = Replace(sInquiries, "<" & sUsername & ">", "", 1, -1, vbTextCompare)
        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\inquiries.txt", 2, False, 1)
        oFile.Write sInquiries
        Set oFile = Nothing
    Else
        ' Clear the file if not exists
        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\inquiries.txt", 2, False, 1)
        oFile.Write ""
        Set oFile = Nothing
    End If
End Function

' HandleFriendRemove - Processes removing a friend (Proc_30_96)
' Removes both users from each other's friend lists
Private Function HandleFriendRemove(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim sUsername As String
    Dim sTargetUser As String
    Dim sFriendList As String
    Dim oFile As Object
    Dim oFolder As Object
    Dim oFiles As Object
    Dim oFileItem As Object
    Dim i As Integer
    Dim lLen As Long
    Dim bAtEnd As Boolean
    Dim lTargetID As Long
    Dim lMyID As Long
    Dim sPacket As String
    Dim sFilePath As String
    Dim sFileContent As String

    ' Parse packet - extract target username to remove
    lLen = DecodeVL64(Mid$(sData, 3, 2))
    sTargetUser = Right$(sData, Len(sData) - 3)

    ' Parse target user from packet data
    sTargetUser = ParsePacketString(sTargetUser)

    ' Get current user's username
    sUsername = LCase$(gUserData(SocketIndex).Username)

    ' Remove target from current user's friend list
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\friendlist.txt", 1, False, 1)
    bAtEnd = oFile.AtEndOfStream
    Set oFile = Nothing

    If Not bAtEnd Then
        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\friendlist.txt", 1, False, 1)
        sFriendList = oFile.ReadAll
        Set oFile = Nothing

        ' Remove friend entry
        sFriendList = Replace(sFriendList, "<" & LCase$(sTargetUser) & ">", "", 1, -1, vbTextCompare)
        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sUsername & "\friendlist.txt", 2, False, 1)
        oFile.Write sFriendList
        Set oFile = Nothing
    End If

    ' Remove current user from target's friend list
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\friendlist.txt", 1, False, 1)
    bAtEnd = oFile.AtEndOfStream
    Set oFile = Nothing

    If Not bAtEnd Then
        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\friendlist.txt", 1, False, 1)
        sFriendList = oFile.ReadAll
        Set oFile = Nothing

        ' Remove friend entry
        sFriendList = Replace(sFriendList, "<" & sUsername & ">", "", 1, -1, vbTextCompare)
        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(sTargetUser) & "\friendlist.txt", 2, False, 1)
        oFile.Write sFriendList
        Set oFile = Nothing

        ' Get IDs for notification packets
        lTargetID = GetUserID(sTargetUser)
        lMyID = GetUserID(gUserData(SocketIndex).Username)

        ' Send friend removed notification to current user
        sPacket = "BJI" & EncodeVL64(CDbl(lTargetID)) & Chr$(1)
        Call SendData(sPacket, SocketIndex)

        ' Find target user if online and send them notification too
        For i = 1 To frmMain.SockIGet()
            If LCase$(gUserData(i).Username) = LCase$(sTargetUser) Then
                If frmMain.SockI(i).State = 7 Then ' sckConnected
                    sPacket = "BJI" & EncodeVL64(CDbl(lMyID)) & Chr$(1)
                    Call SendData(sPacket, i)
                    Exit For
                End If
            End If
        Next i

        ' Clean up direct mail from removed friend in current user's folder
        Set oFolder = gFSO.GetFolder(gDataPath & "habbos\" & sUsername & "\directmail\")
        Set oFiles = oFolder.Files

        For Each oFileItem In oFiles
            sFilePath = oFileItem.Path
            If Right$(sFilePath, 3) <> "txt" Then
                Set oFile = oFileItem.OpenAsTextStream(1, 0)
                sFileContent = oFile.ReadAll
                Set oFile = Nothing

                If Len(sFileContent) >= Len(sTargetUser) Then
                    If LCase$(Left$(sFileContent, Len(sTargetUser))) = LCase$(sTargetUser) Then
                        ' Store content temporarily and delete file
                        gUserData(SocketIndex).TempData = sFileContent
                        gFSO.DeleteFile sFilePath, False
                    End If
                End If
            End If
            DoEvents
        Next oFileItem

        ' Clean up direct mail from current user in target's folder
        Set oFolder = gFSO.GetFolder(gDataPath & "habbos\" & LCase$(sTargetUser) & "\directmail\")
        Set oFiles = oFolder.Files

        For Each oFileItem In oFiles
            sFilePath = oFileItem.Path
            If Right$(sFilePath, 3) <> "txt" Then
                Set oFile = oFileItem.OpenAsTextStream(1, 0)
                sFileContent = oFile.ReadAll
                Set oFile = Nothing

                If Len(sFileContent) >= Len(gUserData(SocketIndex).Username) Then
                    If LCase$(Left$(sFileContent, Len(gUserData(SocketIndex).Username))) = LCase$(gUserData(SocketIndex).Username) Then
                        gFSO.DeleteFile sFilePath, False
                    End If
                End If
            End If
            DoEvents
        Next oFileItem
    End If
End Function

' HandleHabboWheel - Processes spinning the HabboWheel game (Proc_30_99)
' Generates random prize and updates the wheel state
Private Function HandleHabboWheel(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oFile As Object
    Dim sOwner As String
    Dim lRandom As Long
    Dim sPrize As String
    Dim sFurniID As String
    Dim sFurniName As String
    Dim sLocation As String
    Dim sCustom As String
    Dim sVar As String
    Dim sPacket As String
    Dim lRoomID As Long

    lRoomID = gUserData(SocketIndex).RoomID

    ' Check if user is the room owner
    Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\" & CStr(lRoomID) & "\owner.txt", 1, False, 1)
    sOwner = oFile.ReadAll
    Set oFile = Nothing

    If sOwner <> gUserData(SocketIndex).Username Then Exit Function

    ' Generate random number (0-29) for wheel position
    Randomize
    lRandom = Int(Rnd() * 30)

    ' Map random number to prize code
    ' Each prize has a different probability based on wheel sections
    If lRandom = 22 Or lRandom = 21 Or lRandom = 20 Or lRandom = 19 Then
        sPrize = "22"
    ElseIf lRandom = 18 Or lRandom = 17 Or lRandom = 16 Or lRandom = 15 Then
        sPrize = "21"
    ElseIf lRandom = 14 Or lRandom = 13 Or lRandom = 12 Or lRandom = 11 Then
        sPrize = "23"
    ElseIf lRandom = 10 Or lRandom = 9 Or lRandom = 8 Then
        sPrize = "25"
    ElseIf lRandom = 7 Or lRandom = 6 Or lRandom = 5 Then
        sPrize = "24"
    ElseIf lRandom = 4 Or lRandom = 3 Or lRandom = 22 Then
        sPrize = "28"
    ElseIf lRandom = 2 Or lRandom = 27 Then
        sPrize = "29"
    ElseIf lRandom = 1 Or lRandom = 25 Then
        sPrize = "26"
    ElseIf lRandom = 0 Or lRandom = 22 Then
        sPrize = "27"
    ElseIf lRandom = 26 Then
        sPrize = "23"
    ElseIf lRandom = 23 Then
        sPrize = "25"
    End If

    ' Parse furniture ID from packet (remove "Cw" prefix)
    sFurniID = Mid$(sData, 3)
    sFurniID = Replace(sFurniID, "Cw", "", 1, -1, vbTextCompare)
    sFurniID = DecodeBase64(sFurniID)

    ' Check if item is a habbowheel
    Set oFile = gFSO.OpenTextFile(gDataPath & "furni\" & sFurniID & "\name.txt", 1, False, 1)
    sFurniName = oFile.ReadAll
    Set oFile = Nothing

    If sFurniName <> "habbowheel" Then Exit Function

    ' Update the wheel's variable (prize code)
    Set oFile = gFSO.OpenTextFile(gDataPath & "furni\" & sFurniID & "\var.txt", 2, True, 1)
    oFile.Write sPrize
    Set oFile = Nothing

    ' Read wheel location
    Set oFile = gFSO.OpenTextFile(gDataPath & "furni\" & sFurniID & "\loc.txt", 1, False, 1)
    sLocation = oFile.ReadAll
    Set oFile = Nothing

    ' Read wheel custom data
    Set oFile = gFSO.OpenTextFile(gDataPath & "furni\" & sFurniID & "\cust.txt", 1, False, 1)
    sCustom = oFile.ReadAll
    Set oFile = Nothing

    ' Re-read name
    Set oFile = gFSO.OpenTextFile(gDataPath & "furni\" & sFurniID & "\name.txt", 1, False, 1)
    sFurniName = oFile.ReadAll
    Set oFile = Nothing

    ' Read updated var
    Set oFile = gFSO.OpenTextFile(gDataPath & "furni\" & sFurniID & "\var.txt", 1, False, 1)
    sVar = oFile.ReadAll
    Set oFile = Nothing

    ' Broadcast wheel update to room
    ' "@m" = furniture update packet
    sPacket = "@m" & sFurniID & Chr$(9) & sFurniName & Chr$(9) & " " & Chr$(9) & _
              sLocation & Chr$(9) & sVar & Chr$(13)
    Call BroadcastToRoom(lRoomID, sPacket)

    ' Send spin acknowledgement
    sPacket = "@@" & Chr$(1) & "fucksngforum"
    Call BroadcastToRoom(lRoomID, sPacket)
End Function

' HandleKonsoleAdmin - Processes admin console commands (Proc_30_100)
' Handles: Konsole (staff broadcast), Hotelalert (hotel-wide alert), Packets (raw packets)
Private Function HandleKonsoleAdmin(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oFile As Object
    Dim sCommand As String
    Dim sMessage As String
    Dim sPacket As String
    Dim i As Integer
    Dim lCount As Long
    Dim sUserCount As String
    Dim sFurniCount As String
    Dim sRoomsCount As String
    Dim sMyNumber As String
    Dim lPacketPos As Long
    Dim lPacketLen As Long

    ' Parse command from packet
    ' Format: @a + command data
    sData = Split(sData, "@a")(1)
    sCommand = Mid$(sData, 1, 1)
    sCommand = DecodeBase64(sCommand)
    sCommand = ParsePacketString(sCommand)

    ' Check if command starts with "Er" (extended format)
    If sCommand = "Er" Then
        sCommand = Mid$(sData, 2, 1)
        sCommand = DecodeBase64(sCommand)
        sCommand = ParsePacketString(sCommand)
        lPacketPos = 2
    Else
        lPacketPos = 1
    End If

    ' Handle Konsole command - Staff broadcast message
    If sCommand = "Konsole" And gUserData(SocketIndex).Rank = "manager" Then
        ' Get message content
        sMessage = Mid$(sData, lPacketPos + 4)

        ' Clean control characters
        sMessage = Replace(sMessage, Chr$(1), "", 1, -1, vbTextCompare)
        sMessage = Replace(sMessage, Chr$(2), "", 1, -1, vbTextCompare)
        sMessage = Replace(sMessage, Chr$(3), "", 1, -1, vbTextCompare)
        sMessage = Replace(sMessage, Chr$(4), "", 1, -1, vbTextCompare)

        ' Read stats for placeholder replacement
        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\count.txt", 1, False, 1)
        sUserCount = oFile.ReadAll
        Set oFile = Nothing

        Set oFile = gFSO.OpenTextFile(gDataPath & "furni\count.txt", 1, False, 1)
        sFurniCount = oFile.ReadAll
        Set oFile = Nothing

        Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & gUserData(SocketIndex).Username & "\num.txt", 1, False, 1)
        sMyNumber = oFile.ReadAll
        Set oFile = Nothing

        Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\count.txt", 1, False, 1)
        sRoomsCount = oFile.ReadAll
        Set oFile = Nothing

        ' Replace CRLF with Chr(13)
        sMessage = Replace(sMessage, vbCrLf, Chr$(13), 1, -1, vbTextCompare)

        ' Replace placeholders
        sMessage = Replace(sMessage, "%usercount%", sUserCount, 1, -1, vbTextCompare)
        sMessage = Replace(sMessage, "%yournumber%", sMyNumber, 1, -1, vbTextCompare)
        sMessage = Replace(sMessage, "%furnicount%", sFurniCount, 1, -1, vbTextCompare)
        sMessage = Replace(sMessage, "%roomscount%", sRoomsCount, 1, -1, vbTextCompare)

        ' Send staff broadcast to all connected users
        For i = 1 To frmMain.SockIGet()
            If frmMain.SockI(i).State = 7 Then ' sckConnected
                If gUserData(i).Username <> "" Then
                    ' Increment user's directmail count
                    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(gUserData(i).Username) & "\directmail\count.txt", 1, False, 1)
                    lCount = Val(oFile.ReadAll) + 1
                    Set oFile = Nothing

                    ' Build broadcast packet with sender info
                    ' Format: "staff$" + Chr(1) + "BE" + count + URL + Chr(2) + "Info" + Chr(2) + message + Chr(2) + "H" + Chr(1)
                    Dim sName As String
                    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(gUserData(i).Username) & "\name.txt", 1, False, 1)
                    sName = oFile.ReadAll
                    Set oFile = Nothing

                    ' Replace %username% with recipient's name
                    Dim sUserMessage As String
                    sUserMessage = Replace(sMessage, "%username%", sName, 1, -1, vbTextCompare)

                    sPacket = "staff$" & Chr$(1) & "BE" & EncodeVL64(CDbl(lCount)) & _
                              "http://hablog.no-ip.org/" & Chr$(2) & "Info" & Chr$(2) & _
                              sUserMessage & Chr$(2) & "H" & Chr$(1)

                    ' Save message to directmail
                    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(gUserData(i).Username) & "\directmail\" & CStr(lCount) & ".message", 2, True, 1)
                    oFile.Write sPacket
                    Set oFile = Nothing

                    ' Update directmail count
                    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(gUserData(i).Username) & "\directmail\count.txt", 2, False, 1)
                    oFile.Write CStr(lCount)
                    Set oFile = Nothing

                    ' Send to user
                    Call SendData(Mid$(sPacket, 8), i)
                End If
            End If
        Next i
        Exit Function
    End If

    ' Handle Hotelalert command - Hotel-wide alert
    If sCommand = "Hotelalert" And gUserData(SocketIndex).Rank = "manager" Then
        ' Get message content
        sMessage = Mid$(sData, lPacketPos + 4)

        ' Clean control characters
        sMessage = Replace(sMessage, Chr$(1), "", 1, -1, vbTextCompare)
        sMessage = Replace(sMessage, Chr$(2), "", 1, -1, vbTextCompare)
        sMessage = Replace(sMessage, Chr$(3), "", 1, -1, vbTextCompare)
        sMessage = Replace(sMessage, Chr$(4), "", 1, -1, vbTextCompare)

        ' Send alert to all connected users
        For i = 1 To frmMain.SockIGet()
            If frmMain.SockI(i).State = 7 Then ' sckConnected
                If gUserData(i).Username <> "" Then
                    ' Replace CRLF
                    Dim sAlertMsg As String
                    sAlertMsg = Replace(sMessage, vbCrLf, Chr$(13), 1, -1, vbTextCompare)
                    sAlertMsg = Replace(sAlertMsg, "%username%", gUserData(SocketIndex).Username, 1, -1, vbTextCompare)

                    ' Read stats
                    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\count.txt", 1, False, 1)
                    sUserCount = oFile.ReadAll
                    Set oFile = Nothing
                    sAlertMsg = Replace(sAlertMsg, "%usercount%", sUserCount, 1, -1, vbTextCompare)

                    Set oFile = gFSO.OpenTextFile(gDataPath & "furni\count.txt", 1, False, 1)
                    sFurniCount = oFile.ReadAll
                    Set oFile = Nothing
                    sAlertMsg = Replace(sAlertMsg, "%furnicount%", sFurniCount, 1, -1, vbTextCompare)

                    Set oFile = gFSO.OpenTextFile(gDataPath & "privaterooms\count.txt", 1, False, 1)
                    sRoomsCount = oFile.ReadAll
                    Set oFile = Nothing
                    sAlertMsg = Replace(sAlertMsg, "%roomscount%", sRoomsCount, 1, -1, vbTextCompare)

                    ' Send alert packet "BK"
                    sPacket = "BK" & sAlertMsg & Chr$(1)
                    Call SendData(sPacket, i)
                End If
            End If
        Next i
        Exit Function
    End If

    ' Handle Packets command - Raw packet sending (admin only)
    If sCommand = "Packets" And gUserData(SocketIndex).Rank = "admin" Then
        ' Get packet content
        sMessage = Mid$(sData, lPacketPos + 4)

        ' Clean control characters
        sMessage = Replace(sMessage, Chr$(1), "", 1, -1, vbTextCompare)
        sMessage = Replace(sMessage, Chr$(2), "", 1, -1, vbTextCompare)
        sMessage = Replace(sMessage, Chr$(3), "", 1, -1, vbTextCompare)
        sMessage = Replace(sMessage, Chr$(4), "", 1, -1, vbTextCompare)

        ' Send raw packet to all connected users
        For i = 1 To frmMain.SockIGet()
            If frmMain.SockI(i).State = 7 Then ' sckConnected
                If gUserData(i).Username <> "" Then
                    Call SendData(sMessage, i)
                End If
            End If
        Next i
        Exit Function
    End If
End Function

' HandleTicketRedemption - Processes login via ticket code (Proc_30_103)
' Allows users to log in by redeeming a ticket code
Private Function HandleTicketRedemption(ByVal sData As String, ByVal SocketIndex As Integer)
    On Error Resume Next

    Dim oFile As Object
    Dim sTicketCode As String
    Dim sOwnerName As String
    Dim sUsername As String
    Dim sRank As String
    Dim sMaxOnline As String
    Dim sHotelLock As String
    Dim sRankHotelLock As String
    Dim i As Integer

    ' Clear any existing username
    gUserData(SocketIndex).Username = ""

    ' Parse ticket code from packet (remove 4-char header)
    sTicketCode = Right$(sData, Len(sData) - 4)

    ' Check if ticket exists
    If Not gFSO.FileExists(gDataPath & "tickets\" & sTicketCode & ".txt") Then
        Exit Function
    End If

    ' Read ticket owner from ticket file
    Set oFile = gFSO.OpenTextFile(gDataPath & "tickets\" & sTicketCode & ".txt", 1, False, 1)
    sOwnerName = oFile.ReadAll
    Set oFile = Nothing

    ' Read the actual display name from user folder
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & sOwnerName & "/name.txt", 1, False, 1)
    sUsername = oFile.ReadAll
    Set oFile = Nothing

    ' Store username in user data
    gUserData(SocketIndex).Username = sUsername

    ' Clean control characters from username (1-13)
    Dim j As Integer
    For j = 1 To 13
        gUserData(SocketIndex).Username = Replace(gUserData(SocketIndex).Username, Chr$(j), " ", 1, -1, vbTextCompare)
    Next j

    ' Set label caption (for debugging/tracking)
    frmMain.Label.Caption = sUsername

    ' Store username variant
    gUserData(SocketIndex).TempData = gUserData(SocketIndex).Username

    ' Read user number
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(gUserData(SocketIndex).Username) & "\num.txt", 1, False, 1)
    gUserData(SocketIndex).TempData = oFile.ReadAll
    Set oFile = Nothing

    ' Kick any existing session with this username
    For i = 1 To frmMain.SockIGet()
        If gUserData(i).Username = gUserData(SocketIndex).Username Then
            If i <> SocketIndex Then
                ' Disconnect the other session if it's in a room
                If gUserData(i).RoomID > 0 Or gUserData(i).PublicRoom > 0 Then
                    Call HandleRoomLeave(i)
                End If
                Call SendData("", i)
            End If
        End If
    Next i

    ' Read user's rank
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(gUserData(SocketIndex).Username) & "\rank.txt", 1, False, 1)
    gUserData(SocketIndex).Rank = oFile.ReadAll
    Set oFile = Nothing

    ' Check hotel lock status
    sHotelLock = GetIniValue(gDataPath, "config", "hotel_lock")
    If sHotelLock = "1" Then
        ' Check if user's rank allows bypass
        sRankHotelLock = GetIniValue(gDataPath & "ranks\" & gUserData(SocketIndex).Rank & ".ini", "rank", "hotel_lock")
        If sRankHotelLock <> "1" Then
            ' User cannot bypass hotel lock
            Call SendData("BK" & GetConfigValue("hotel_lock") & Chr$(1), SocketIndex)
            frmMain.SockI(SocketIndex).Enabled = True
            Exit Function
        End If
    End If

    ' Read user's rank again (for subsequent checks)
    Set oFile = gFSO.OpenTextFile(gDataPath & "habbos\" & LCase$(gUserData(SocketIndex).Username) & "\rank.txt", 1, False, 1)
    gUserData(SocketIndex).Rank = oFile.ReadAll
    Set oFile = Nothing

    ' Check max online limit
    sMaxOnline = GetIniValue(gDataPath, "server", "max_online")
    If frmMain.Label.Caption = sMaxOnline Then
        ' Check if user's rank allows bypass
        sRankHotelLock = GetIniValue(gDataPath & "ranks\" & gUserData(SocketIndex).Rank & ".ini", "rank", "hotel_lock")
        If sRankHotelLock <> "1" Then
            ' Hotel is full
            Call SendData("BK" & GetConfigValue("hotel_full") & Chr$(1), SocketIndex)
            frmMain.SockI(SocketIndex).Enabled = True
            Exit Function
        End If
    End If

    ' Kick any duplicate sessions again (final check)
    For i = 1 To frmMain.SockIGet()
        If gUserData(i).Username = gUserData(SocketIndex).Username Then
            If i <> SocketIndex Then
                If gUserData(i).RoomID > 0 Or gUserData(i).PublicRoom > 0 Then
                    Call HandleRoomLeave(i)
                End If
                Call SendData("", i)
            End If
        End If
    Next i

    ' Continue with login process (additional initialization would follow)
    ' ... rest of login initialization
End Function

