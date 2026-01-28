Attribute VB_Name = "modHabboClub"

Option Explicit

' Habbo Club Module
' Handles Habbo Club membership presents/gifts
' Contains functions for delivering furniture gifts based on membership months

' GetHCGiftPresent - Gets HC gift from present list based on months
' Used for monthly HC presents (present1-present10 in settings)
Private Function GetHCGiftPresent(ByVal SocketIndex As Integer, ByVal Months As String)
    Dim sPresents(0 To 10) As String
    Dim sMonths As String
    Dim sFurniIds As String
    Dim oTextStream As Object
    Dim sFurniCount As String
    Dim sNewFurniId As String
    Dim sNextFurniId As String
    Dim vParts As Variant
    Dim vGiftItem As Variant
    Dim i As Variant
    Dim lRandom As Long
    Dim sRandom As String
    Dim sPresentName As String

    sMonths = Months

    ' Load HC presents from settings (present1 through present10)
    sPresents(0) = GetINI("HC", "present1", gSettingsFile)
    sPresents(1) = GetINI("HC", "present2", gSettingsFile)
    sPresents(2) = GetINI("HC", "present3", gSettingsFile)
    sPresents(3) = GetINI("HC", "present4", gSettingsFile)
    sPresents(4) = GetINI("HC", "present5", gSettingsFile)
    sPresents(5) = GetINI("HC", "present6", gSettingsFile)
    sPresents(6) = GetINI("HC", "present7", gSettingsFile)
    sPresents(7) = GetINI("HC", "present8", gSettingsFile)
    sPresents(8) = GetINI("HC", "present9", gSettingsFile)
    sPresents(9) = GetINI("HC", "present10", gSettingsFile)
    sPresents(10) = GetINI("HC", "present11", gSettingsFile)

    ' Normalize months to 1-10 range (months 11-19 map to 2-10, months 20-28 map to 2-10)
    If Val(sMonths) > 10 And Val(sMonths) <= 19 Then
        sMonths = CStr(Val(sMonths) - 9)
    End If
    If Val(sMonths) > 19 And Val(sMonths) <= 28 Then
        sMonths = CStr(Val(sMonths) - 18)
    End If

    sFurniIds = vbNullString

    ' Split the present string for this month
    vParts = Split(sPresents(CInt(sMonths)), ";")
    vGiftItem = Split(sPresents(CInt(sMonths)), ";")(1)

    ' Process each furniture item in the present
    For i = 1 To UBound(vParts)
        If Len(vParts(i)) > 2 Then
            ' Check if this is a "door" type item (special handling for doors)
            If Left(vParts(i), 4) = "door" Then
                ' Read current furni count
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\count.txt", 1, False, 0)
                sFurniCount = CStr(Val(oTextStream.ReadAll))

                ' Calculate new furni IDs (2 items for doors)
                sNewFurniId = CStr(Val(sFurniCount) + 1)
                sNextFurniId = CStr(Val(sFurniCount) + 1 + 1)

                ' Update furni count
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\count.txt", 2, False, 0)
                oTextStream.Write CStr(sNextFurniId)

                ' Copy door furniture folder (first door)
                gFSO.CopyFolder gAppPath & "buy_furni\club_furni\" & vParts(i), gAppPath & "furni\" & sNewFurniId, True

                ' Copy door furniture folder (second door)
                gFSO.CopyFolder gAppPath & "buy_furni\club_furni\" & vParts(i), gAppPath & "furni\" & sNextFurniId, True

                ' Create destination file for first door
                Set oTextStream = gFSO.CreateTextFile(gAppPath & "furni\" & sNewFurniId & "\destination.txt", True, False)

                ' Write destination (second door ID)
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sNewFurniId & "\destination.txt", 2, False, 0)
                oTextStream.Write CStr(sNextFurniId)

                ' Create destination file for second door
                Set oTextStream = gFSO.CreateTextFile(gAppPath & "furni\" & sNextFurniId & "\destination.txt", True, False)

                ' Write destination (first door ID)
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sNextFurniId & "\destination.txt", 2, False, 0)
                oTextStream.Write CStr(sNewFurniId)

                ' Add both door IDs to the list
                sFurniIds = CStr(sNewFurniId) & ";" & CStr(sNextFurniId) & ";"
            Else
                ' Regular furniture item
                ' Read current furni count
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\count.txt", 1, False, 0)
                sFurniCount = CStr(Val(oTextStream.ReadAll))

                ' Calculate new furni ID
                sNewFurniId = CStr(Val(sFurniCount) + 1)

                ' Update furni count
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\count.txt", 2, False, 0)
                oTextStream.Write sNewFurniId

                ' Copy furniture folder
                gFSO.CopyFolder gAppPath & "buy_furni\club_furni\" & vParts(i), gAppPath & "furni\" & sNewFurniId, True

                ' Add furni ID to the list
                sFurniIds = sFurniIds & sNewFurniId & ";"
            End If
        End If
    Next i

    ' After processing all items, copy the present box
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\count.txt", 1, False, 0)
    sFurniCount = CStr(Val(oTextStream.ReadAll))
    sNewFurniId = CStr(Val(sFurniCount) + 1)

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\count.txt", 2, False, 0)
    oTextStream.Write sNewFurniId

    ' Copy present box folder
    gFSO.CopyFolder gAppPath & "buy_furni\club_furni\present", gAppPath & "furni\" & sNewFurniId, True

    ' Write inbox.txt with the furniture IDs
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sNewFurniId & "\inbox.txt", 2, False, 0)
    oTextStream.Write sFurniIds

    ' Write inboxid.txt with "3 " prefix and gift item name
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sNewFurniId & "\inboxid.txt", 2, False, 0)
    oTextStream.Write "3 " & CStr(vGiftItem)

    ' Generate random present appearance (0-6)
    Randomize Timer
    lRandom = Int(Rnd() * 7)
    If lRandom = 0 Then
        sRandom = vbNullString
    End If
    sPresentName = "present_gen" & CStr(lRandom)

    ' Write present name
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sNewFurniId & "\name.txt", 2, False, 0)
    oTextStream.Write sPresentName

    ' Add present to user's hand
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase(gUserData(SocketIndex).Username) & "\hand.txt", 8, False, 0)
    oTextStream.Write ";" & sNewFurniId

    ' Write var.txt with gift message
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sNewFurniId & "\var.txt", 2, False, 0)
    oTextStream.Write "H!" & GetLocaleString("club_gift_name")
End Function

' GetHCGiftFurni - Gets HC gift from fixed furniture list based on months
' Uses hardcoded furniture items for HC rewards
Private Function GetHCGiftFurni(ByVal SocketIndex As Integer, ByVal Months As String)
    Dim sFurniList(0 To 10) As String
    Dim sMonths As String
    Dim sFurniIds As String
    Dim oTextStream As Object
    Dim sFurniCount As String
    Dim sNewFurniId As String
    Dim sNextFurniId As String
    Dim vParts As Variant
    Dim vGiftItem As Variant
    Dim i As Variant
    Dim lRandom As Long
    Dim sRandom As String
    Dim sPresentName As String

    sMonths = Months

    ' Hardcoded HC furniture items per month
    sFurniList(0) = ";club_sofa"
    sFurniList(1) = ";aqua_chair;aqua_chair;aqua_chair;aqua_chair;aqua_table"
    sFurniList(2) = ";mocchamaster"
    sFurniList(3) = ";edicehc"
    sFurniList(4) = ";hcamme"
    sFurniList(5) = ";doorD"
    sFurniList(6) = ";hcsohva"
    sFurniList(7) = ";hc_lmp"
    sFurniList(8) = ";hc_tbl"
    sFurniList(9) = ";hc_chr"
    sFurniList(10) = ";hc_dsk"

    ' Normalize months to 1-10 range
    If Val(sMonths) > 10 And Val(sMonths) <= 19 Then
        sMonths = CStr(Val(sMonths) - 9)
    End If
    If Val(sMonths) > 19 And Val(sMonths) <= 28 Then
        sMonths = CStr(Val(sMonths) - 18)
    End If

    sFurniIds = vbNullString

    ' Split the furniture string for this month
    vParts = Split(sFurniList(CInt(sMonths)), ";")
    vGiftItem = Split(sFurniList(CInt(sMonths)), ";")(1)

    ' Process each furniture item
    For i = 1 To UBound(vParts)
        If Len(vParts(i)) > 2 Then
            ' Check if this is a "door" type item
            If Left(vParts(i), 4) = "door" Then
                ' Read current furni count
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\count.txt", 1, False, 0)
                sFurniCount = CStr(Val(oTextStream.ReadAll))

                ' Calculate new furni IDs (2 items for doors)
                sNewFurniId = CStr(Val(sFurniCount) + 1)
                sNextFurniId = CStr(Val(sFurniCount) + 1 + 1)

                ' Update furni count
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\count.txt", 2, False, 0)
                oTextStream.Write CStr(sNextFurniId)

                ' Copy door furniture folders
                gFSO.CopyFolder gAppPath & "buy_furni\club_furni\" & vParts(i), gAppPath & "furni\" & sNewFurniId, True
                gFSO.CopyFolder gAppPath & "buy_furni\club_furni\" & vParts(i), gAppPath & "furni\" & sNextFurniId, True

                ' Create and write destination files for linked doors
                Set oTextStream = gFSO.CreateTextFile(gAppPath & "furni\" & sNewFurniId & "\destination.txt", True, False)
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sNewFurniId & "\destination.txt", 2, False, 0)
                oTextStream.Write CStr(sNextFurniId)

                Set oTextStream = gFSO.CreateTextFile(gAppPath & "furni\" & sNextFurniId & "\destination.txt", True, False)
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sNextFurniId & "\destination.txt", 2, False, 0)
                oTextStream.Write CStr(sNewFurniId)

                sFurniIds = CStr(sNewFurniId) & ";" & CStr(sNextFurniId) & ";"
            Else
                ' Regular furniture item
                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\count.txt", 1, False, 0)
                sFurniCount = CStr(Val(oTextStream.ReadAll))

                sNewFurniId = CStr(Val(sFurniCount) + 1)

                Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\count.txt", 2, False, 0)
                oTextStream.Write sNewFurniId

                gFSO.CopyFolder gAppPath & "buy_furni\club_furni\" & vParts(i), gAppPath & "furni\" & sNewFurniId, True

                sFurniIds = sFurniIds & sNewFurniId & ";"
            End If
        End If
    Next i

    ' Copy present box
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\count.txt", 1, False, 0)
    sFurniCount = CStr(Val(oTextStream.ReadAll))
    sNewFurniId = CStr(Val(sFurniCount) + 1)

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\count.txt", 2, False, 0)
    oTextStream.Write sNewFurniId

    gFSO.CopyFolder gAppPath & "buy_furni\club_furni\present", gAppPath & "furni\" & sNewFurniId, True

    ' Write inbox.txt
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sNewFurniId & "\inbox.txt", 2, False, 0)
    oTextStream.Write sFurniIds

    ' Write inboxid.txt
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sNewFurniId & "\inboxid.txt", 2, False, 0)
    oTextStream.Write "3 " & CStr(vGiftItem)

    ' Generate random present appearance
    Randomize Timer
    lRandom = Int(Rnd() * 7)
    If lRandom = 0 Then
        sRandom = vbNullString
    End If
    sPresentName = "present_gen" & CStr(lRandom)

    ' Write present name
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sNewFurniId & "\name.txt", 2, False, 0)
    oTextStream.Write sPresentName

    ' Add to user's hand
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "habbos\" & LCase(gUserData(SocketIndex).Username) & "\hand.txt", 8, False, 0)
    oTextStream.Write ";" & sNewFurniId

    ' Write var.txt
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "furni\" & sNewFurniId & "\var.txt", 2, False, 0)
    oTextStream.Write "H!" & GetLocaleString("club_gift_name")
End Function
