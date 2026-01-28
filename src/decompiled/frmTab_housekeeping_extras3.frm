VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C0000C04E4C0A}#1.1#0"; "C:\WINDOWS\SysWow64\TABCTL32.OCX"
Begin VB.Form frmTab_housekeeping_extras3
  Caption = "Settings"
  BackColor = &HFFFFFF&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 5685
  ClientTop = 4335
  ClientWidth = 4185
  ClientHeight = 5235
  ShowInTaskbar = 0   'False
  Begin VB.PictureBox Picture2
    BackColor = &H80000006&
    Picture = "frmTab_housekeeping_extras3.frx":0000
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 4185
    Height = 5220
    TabIndex = 169
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TabDlg.SSTab SSTab1
    Left = 7080
    Top = 0
    Width = 5175
    Height = 7815
    TabIndex = 0
    OleObjectBlob = "frmTab_housekeeping_extras3.frx":0005D186
  End
End

Attribute VB_Name = "frmTab_housekeeping_extras3"

Option Explicit

' frmTab_housekeeping_extras3 - Housekeeping Admin Panel (Extras 3)
' Provides administrative functions for managing:
' - User profiles (Hebbos)
' - Room settings
' - Rank permissions
' - HC presents configuration
' - Server settings

Private Const WM_NCLBUTTONDOWN As Long = &HA1
Private Const HTCAPTION As Long = 2
Private Const HWND_TOPMOST As Long = -1
Private Const HWND_NOTOPMOST As Long = -2
Private Const SWP_NOSIZE As Long = 1
Private Const SWP_NOMOVE As Long = 2
Private Const SWP_FLAGS As Long = SWP_NOSIZE Or SWP_NOMOVE

Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function ReleaseCapture Lib "user32" () As Long
Private Declare Function SetWindowPos Lib "user32" (ByVal hWnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long

Private Sub Form_Load()
    ' Set window position based on foreground setting
    If GetINI("server", "foreground", gSettingsFile) = "Y" Then
        SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_FLAGS
    Else
        SetWindowPos Me.hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_FLAGS
    End If

    ' Load localized captions
    LoadLocaleCaptions

    ' Populate user list combo
    PopulateUserList

    ' Populate rank combo
    PopulateRankList

    ' Load deleted rooms for restore
    PopulateDeletedRooms

    ' Load server settings
    LoadServerSettings

    ' Load HC presents settings
    LoadHCPresents
End Sub

Private Sub LoadLocaleCaptions()
    ' Load locale strings for UI elements
    Me.Label7.Caption = GetLocaleString("settings_welcometext")
    Me.Frame3.Caption = GetLocaleString("settings_connectionframe")
    Me.Frame4.Caption = GetLocaleString("settings_mainsettingsframe")
    Me.Frame11.Caption = GetLocaleString("settings_other_rightsframe")
    Me.Check1.Caption = GetLocaleString("settings_bobba_check")
    Me.Check2.Caption = GetLocaleString("settings_welcome_message_check")
    Me.Check3.Caption = GetLocaleString("settings_console_check")
    Me.Command5.Caption = GetLocaleString("chancelbutton")
    Me.Command6.Caption = GetLocaleString("savebutton")
    Me.Command1.Caption = GetLocaleString("chancelbutton")
    Me.Command2.Caption = GetLocaleString("savebutton")
    Me.Frame1.Caption = GetLocaleString("settings_roomsframe")
    Me.Label1.Caption = GetLocaleString("settings_maxroomsperuser")
    Me.Label2.Caption = GetLocaleString("settings_maxroomsinlist")
    Me.Label22.Caption = GetLocaleString("hcchange_info")
    Me.Label24.Caption = GetLocaleString("extrabadges_1_11")
    Me.Label25.Caption = GetLocaleString("extrabadges_11")
    Me.Frame12.Caption = GetLocaleString("hc_presentsframe")
    Me.Label21.Caption = GetLocaleString("trading")
    Me.Label3.Caption = GetLocaleString("settings_maxfavouritedrooms")
    Me.Frame2.Caption = GetLocaleString("settings_furniframe")
    Me.Label4.Caption = GetLocaleString("settings_maxrollersinroom")
    Me.Label5.Caption = GetLocaleString("settings_maxpetsinroom")
    Me.Label9.Caption = GetLocaleString("username")
    Me.Label10.Caption = GetLocaleString("password")
    Me.Label11.Caption = GetLocaleString("mission")
    Me.Label12.Caption = GetLocaleString("rank")
    Me.Label13.Caption = GetLocaleString("credits")
    Me.Command3.Caption = GetLocaleString("addbutton")
    Me.Command4.Caption = GetLocaleString("removebutton")

    ' Set combo placeholder
    Me.Combo1.Text = " -- " & GetLocaleString("choose_a_user") & " -- "
End Sub

Private Sub PopulateUserList()
    Dim oFolder As Object
    Dim oSubFolder As Object
    Dim sHabbosPath As String

    sHabbosPath = gAppPath & "habbos\"

    If gFSO.FolderExists(sHabbosPath) Then
        Set oFolder = gFSO.GetFolder(sHabbosPath)
        For Each oSubFolder In oFolder.SubFolders
            Me.Combo1.AddItem oSubFolder.Name
        Next oSubFolder
    End If
End Sub

Private Sub PopulateRankList()
    Dim oFolder As Object
    Dim oSubFolder As Object
    Dim sRanksPath As String

    sRanksPath = gAppPath & "ranks\"

    Me.Combo2.Clear
    Me.Combo4.Clear

    If gFSO.FolderExists(sRanksPath) Then
        Set oFolder = gFSO.GetFolder(sRanksPath)
        For Each oSubFolder In oFolder.SubFolders
            Me.Combo2.AddItem oSubFolder.Name
            Me.Combo4.AddItem oSubFolder.Name
        Next oSubFolder
    End If
End Sub

Private Sub PopulateDeletedRooms()
    Dim oFolder As Object
    Dim oSubFolder As Object
    Dim sDeletedPath As String

    sDeletedPath = gAppPath & "privaterooms_deleted\"

    Me.Combo5.Clear

    If gFSO.FolderExists(sDeletedPath) Then
        Set oFolder = gFSO.GetFolder(sDeletedPath)
        For Each oSubFolder In oFolder.SubFolders
            Me.Combo5.AddItem oSubFolder.Name
        Next oSubFolder
    End If
End Sub

Private Sub LoadServerSettings()
    ' Load server port
    Me.Text6.Text = GetINI("server", "port", gSettingsFile)

    ' Load bobba filter setting
    If GetINI("config", "bobba_filter", gSettingsFile) = "1" Then
        Me.Check1.Value = 1
    Else
        Me.Check1.Value = 0
    End If

    ' Load console setting
    If GetINI("config", "console", gSettingsFile) = "1" Then
        Me.Check3.Value = 1
    Else
        Me.Check3.Value = 0
    End If

    ' Load welcome message setting
    Dim vParts As Variant
    Dim sWelcome As String
    sWelcome = GetINI("config", "welcome_message", gSettingsFile)
    If InStr(sWelcome, ",") > 0 Then
        vParts = Split(sWelcome, ",")
        Me.Check2.Value = CInt(vParts(0))
        Me.Text7.Text = CStr(vParts(1))
    End If

    ' Load room limits
    Me.Text1.Text = GetINI("limits", "max_rooms_per_user", gSettingsFile)
    Me.Text2.Text = GetINI("limits", "max_rooms_in_list", gSettingsFile)
    Me.Text3.Text = GetINI("limits", "max_favourited_rooms", gSettingsFile)
    Me.Text4.Text = GetINI("limits", "max_rollers_in_room", gSettingsFile)
    Me.Text5.Text = GetINI("limits", "max_pets_in_room", gSettingsFile)
    Me.Text24.Text = GetINI("limits", "max_friends_in_list", gSettingsFile)
End Sub

Private Sub LoadHCPresents()
    Dim i As Integer

    ' Load HC present settings
    For i = 0 To 10
        Me.hcpresent(i).Text = GetINI("HC", "present" & CStr(i + 1), gSettingsFile)
    Next i

    ' Load extra badges settings
    Me.Text19.Text = GetINI("HC", "extrabadge_1_11", gSettingsFile)
    Me.Text20.Text = GetINI("HC", "extrabadge_12", gSettingsFile)
End Sub

Private Sub Image1_Click(Index As Integer)
    ' Close button - hide form
    Me.Hide
End Sub

Private Sub Picture2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ' Allow dragging the form, or hide on right-click
    If Button = 1 Then
        ReleaseCapture
        SendMessage Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
    Else
        Me.Hide
    End If
End Sub

Private Sub Combo1_Click()
    ' User selected from combo - load user data
    Dim sUsername As String
    Dim sUserPath As String

    sUsername = Me.Combo1.Text

    If sUsername = vbNullString Or Left(sUsername, 3) = " --" Then
        Exit Sub
    End If

    sUserPath = gAppPath & "habbos\" & LCase(sUsername) & "\"

    If Not gFSO.FolderExists(sUserPath) Then
        Exit Sub
    End If

    ' Load user data into form
    Me.Text8.Text = sUsername
    Me.Text9.Text = ReadFile(sUserPath & "password.txt")
    Me.Text10.Text = ReadFile(sUserPath & "mission.txt")
    Me.Text11.Text = ReadFile(sUserPath & "credits.txt")
    Me.Text25.Text = ReadFile(sUserPath & "email.txt")
    Me.Text26.Text = ReadFile(sUserPath & "birthdate.txt")
    Me.Text27.Text = ReadFile(sUserPath & "badges.txt")
    Me.Text28.Text = ReadFile(sUserPath & "poolfigure.txt")

    ' Load rank into combo
    Dim sRank As String
    sRank = ReadFile(sUserPath & "rank.txt")
    Me.Combo2.Text = sRank

    ' Enable fields
    EnableUserFields True
End Sub

Private Sub Combo3_Click()
    ' Room selected from combo - load room data
    Dim sRoomId As String
    Dim sRoomPath As String

    sRoomId = Me.Combo3.Text

    If sRoomId = vbNullString Or Left(sRoomId, 3) = " --" Then
        Exit Sub
    End If

    sRoomPath = gAppPath & "privaterooms\" & sRoomId & "\"

    If Not gFSO.FolderExists(sRoomPath) Then
        Exit Sub
    End If

    ' Store room ID
    Me.room_id.Caption = sRoomId

    ' Load room data
    Me.Text15.Text = ReadFile(sRoomPath & "owner.txt")
    Me.Text12.Text = ReadFile(sRoomPath & "name.txt")
    Me.Text13.Text = ReadFile(sRoomPath & "description.txt")
    Me.Text14.Text = ReadFile(sRoomPath & "password.txt")

    ' Enable room fields
    Me.Text12.Enabled = True
    Me.Text13.Enabled = True
    Me.Text14.Enabled = True
    Me.Command10.Enabled = True
    Me.Command11.Enabled = True
    Me.Command12.Enabled = True
End Sub

Private Sub Combo4_Click()
    ' Rank selected - load rank settings
    LoadRankSettings Me.Combo4.Text
End Sub

Private Sub LoadRankSettings(ByVal sRankName As String)
    Dim sRankPath As String
    Dim i As Integer

    sRankPath = gAppPath & "ranks\" & sRankName & "\"

    If Not gFSO.FolderExists(sRankPath) Then
        Exit Sub
    End If

    ' Load speech command rights
    For i = 0 To 20
        If gFSO.FileExists(sRankPath & "right" & CStr(i) & ".txt") Then
            Me.rights(i).Value = CInt(ReadFile(sRankPath & "right" & CStr(i) & ".txt"))
        Else
            Me.rights(i).Value = 0
        End If
    Next i

    ' Load mod-tool rights
    For i = 0 To 4
        If gFSO.FileExists(sRankPath & "mtool" & CStr(i) & ".txt") Then
            Me.mtool(i).Value = CInt(ReadFile(sRankPath & "mtool" & CStr(i) & ".txt"))
        Else
            Me.mtool(i).Value = 0
        End If
    Next i

    ' Load badges
    Me.Text17.Text = ReadFile(sRankPath & "badges.txt")

    ' Load other rights
    Me.Check4.Value = CInt(GetINI("rights", "admin_catalogue", sRankPath & "settings.ini"))
    Me.Check5.Value = CInt(GetINI("rights", "see_room_owner", sRankPath & "settings.ini"))
    Me.Check6.Value = CInt(GetINI("rights", "enter_any_room", sRankPath & "settings.ini"))
    Me.Check7.Value = CInt(GetINI("rights", "receive_cfh", sRankPath & "settings.ini"))
    Me.Check8.Value = CInt(GetINI("rights", "rights_any_room", sRankPath & "settings.ini"))
    Me.Text18.Text = GetINI("rights", "other_rights", sRankPath & "settings.ini")
End Sub

Private Sub EnableUserFields(ByVal bEnable As Boolean)
    Me.Text8.Enabled = bEnable
    Me.Text9.Enabled = bEnable
    Me.Text10.Enabled = bEnable
    Me.Text11.Enabled = bEnable
    Me.Text25.Enabled = bEnable
    Me.Text26.Enabled = bEnable
    Me.Text27.Enabled = bEnable
    Me.Text28.Enabled = bEnable
    Me.Combo2.Enabled = bEnable
    Me.Command8.Enabled = bEnable
End Sub

Private Sub Check2_Click()
    ' Toggle welcome message text field
    Me.Text7.Enabled = (Me.Check2.Value = 1)
End Sub

Private Sub Check10_Click()
    ' Toggle register console message fields
    Dim bEnabled As Boolean
    bEnabled = (Me.Check10.Value = 1)
    Me.Text21.Enabled = bEnabled
    Me.Text22.Enabled = bEnabled
    Me.Text23.Enabled = bEnabled
End Sub

Private Sub Command1_Click()
    ' Cancel button on Limits tab - reload settings
    LoadServerSettings
End Sub

Private Sub Command2_Click()
    ' Save button on Limits tab - save settings
    WriteINI "server", "port", Me.Text6.Text, gSettingsFile
    WriteINI "limits", "max_rooms_per_user", Me.Text1.Text, gSettingsFile
    WriteINI "limits", "max_rooms_in_list", Me.Text2.Text, gSettingsFile
    WriteINI "limits", "max_favourited_rooms", Me.Text3.Text, gSettingsFile
    WriteINI "limits", "max_rollers_in_room", Me.Text4.Text, gSettingsFile
    WriteINI "limits", "max_pets_in_room", Me.Text5.Text, gSettingsFile
    WriteINI "limits", "max_friends_in_list", Me.Text24.Text, gSettingsFile
End Sub

Private Sub Command3_Click()
    ' Add user button
    Dim sUsername As String
    sUsername = InputBox(GetLocaleString("enter_username"), GetLocaleString("add_user"))

    If sUsername = vbNullString Then Exit Sub

    ' Create user folder and files
    CreateNewUser sUsername
    PopulateUserList
End Sub

Private Sub Command4_Click()
    ' Remove user button
    Dim sUsername As String
    sUsername = Me.Combo1.Text

    If sUsername = vbNullString Or Left(sUsername, 3) = " --" Then Exit Sub

    If MsgBox(GetLocaleString("confirm_delete_user") & " " & sUsername & "?", vbYesNo + vbQuestion) = vbYes Then
        DeleteUser sUsername
        PopulateUserList
        ClearUserFields
    End If
End Sub

Private Sub Command5_Click()
    ' Cancel button on Settings tab - reload
    LoadServerSettings
End Sub

Private Sub Command6_Click()
    ' Save button on Settings tab
    WriteINI "config", "bobba_filter", CStr(Me.Check1.Value), gSettingsFile
    WriteINI "config", "console", CStr(Me.Check3.Value), gSettingsFile
    WriteINI "config", "welcome_message", CStr(Me.Check2.Value) & "," & Me.Text7.Text, gSettingsFile
    WriteINI "config", "register_message", CStr(Me.Check10.Value) & "," & Me.Text21.Text & "," & Me.Text22.Text, gSettingsFile
    WriteFile gAppPath & "register_message.txt", Me.Text23.Text
End Sub

Private Sub Command7_Click()
    ' Load user into editor button
    Dim sUsername As String
    sUsername = Me.Combo1.Text

    If sUsername = vbNullString Or Left(sUsername, 3) = " --" Then Exit Sub

    ' Load into Frame6 editor (implementation depends on editor setup)
    LoadUserEditor sUsername
End Sub

Private Sub Command8_Click()
    ' Cancel button on User editor - reload user data
    Combo1_Click
End Sub

Private Sub Command9_Click()
    ' Save user changes button
    SaveUserData
End Sub

Private Sub Command10_Click()
    ' Delete room button
    Dim sRoomId As String
    sRoomId = Me.room_id.Caption

    If sRoomId = "0" Or sRoomId = vbNullString Then Exit Sub

    If MsgBox(GetLocaleString("confirm_delete_room"), vbYesNo + vbQuestion) = vbYes Then
        DeleteRoom sRoomId
        PopulateRoomList
        ClearRoomFields
    End If
End Sub

Private Sub Command11_Click()
    ' Save room changes button
    SaveRoomData
End Sub

Private Sub Command12_Click()
    ' Cancel room changes button
    Combo3_Click
End Sub

Private Sub Command13_Click()
    ' Cancel button on Categories tab
    LoadCategorySettings
End Sub

Private Sub Command14_Click()
    ' Save button on Categories tab
    SaveCategorySettings
End Sub

Private Sub Command15_Click()
    ' Save bobba replacement button
    WriteINI "bobba", "replacement", Me.Text16.Text, gSettingsFile
End Sub

Private Sub Command16_Click()
    ' Cancel button on Ranks tab
    LoadRankSettings Me.Combo4.Text
End Sub

Private Sub Command17_Click()
    ' Save button on Ranks tab
    SaveRankSettings Me.Combo4.Text
End Sub

Private Sub Command18_Click()
    ' Cancel button on HC Presents tab
    LoadHCPresents
End Sub

Private Sub Command19_Click()
    ' Save button on HC Presents tab
    SaveHCPresents
End Sub

Private Sub Command20_Click()
    ' Restore deleted room button
    Dim sRoomId As String
    sRoomId = Me.Combo5.Text

    If sRoomId = vbNullString Or Left(sRoomId, 3) = " --" Then Exit Sub

    RestoreDeletedRoom sRoomId
    PopulateDeletedRooms
End Sub

Private Sub Text16_Change()
    ' Enable save replacement button when text changes
    Me.Command15.Enabled = True
End Sub

Private Sub hcpresent_Change(Index As Integer)
    ' HC present text changed - no immediate action needed
End Sub

Private Sub SSTab1_DblClick()
    ' Double-click on tab - show info message
    MsgBox "Housekeeping Extras 3 - Admin Panel", vbInformation
End Sub

' Helper functions

Private Function ReadFile(ByVal sPath As String) As String
    Dim oTextStream As Object

    On Error Resume Next

    If Not gFSO.FileExists(sPath) Then
        ReadFile = vbNullString
        Exit Function
    End If

    Set oTextStream = gFSO.OpenTextFile(sPath, 1, False, 0)
    ReadFile = oTextStream.ReadAll
    oTextStream.Close
End Function

Private Sub WriteFile(ByVal sPath As String, ByVal sContent As String)
    Dim oTextStream As Object

    Set oTextStream = gFSO.OpenTextFile(sPath, 2, True, 0)
    oTextStream.Write sContent
    oTextStream.Close
End Sub

Private Sub CreateNewUser(ByVal sUsername As String)
    Dim sUserPath As String
    sUserPath = gAppPath & "habbos\" & LCase(sUsername) & "\"

    If gFSO.FolderExists(sUserPath) Then
        MsgBox GetLocaleString("user_already_exists"), vbExclamation
        Exit Sub
    End If

    gFSO.CreateFolder sUserPath

    WriteFile sUserPath & "password.txt", "password"
    WriteFile sUserPath & "mission.txt", ""
    WriteFile sUserPath & "credits.txt", "0"
    WriteFile sUserPath & "rank.txt", "1"
    WriteFile sUserPath & "email.txt", ""
    WriteFile sUserPath & "birthdate.txt", ""
    WriteFile sUserPath & "badges.txt", ""
    WriteFile sUserPath & "rooms.txt", ""
    WriteFile sUserPath & "hand.txt", ""
End Sub

Private Sub DeleteUser(ByVal sUsername As String)
    Dim sUserPath As String
    sUserPath = gAppPath & "habbos\" & LCase(sUsername)

    If gFSO.FolderExists(sUserPath) Then
        gFSO.DeleteFolder sUserPath, True
    End If
End Sub

Private Sub ClearUserFields()
    Me.Text8.Text = vbNullString
    Me.Text9.Text = vbNullString
    Me.Text10.Text = vbNullString
    Me.Text11.Text = vbNullString
    Me.Text25.Text = vbNullString
    Me.Text26.Text = vbNullString
    Me.Text27.Text = vbNullString
    Me.Text28.Text = vbNullString
    Me.Combo2.Text = "-- Choose --"
    EnableUserFields False
End Sub

Private Sub SaveUserData()
    Dim sUsername As String
    Dim sUserPath As String

    sUsername = Me.Text8.Text

    If sUsername = vbNullString Then Exit Sub

    sUserPath = gAppPath & "habbos\" & LCase(sUsername) & "\"

    WriteFile sUserPath & "password.txt", Me.Text9.Text
    WriteFile sUserPath & "mission.txt", Me.Text10.Text
    WriteFile sUserPath & "credits.txt", Me.Text11.Text
    WriteFile sUserPath & "email.txt", Me.Text25.Text
    WriteFile sUserPath & "birthdate.txt", Me.Text26.Text
    WriteFile sUserPath & "badges.txt", Me.Text27.Text
    WriteFile sUserPath & "poolfigure.txt", Me.Text28.Text
    WriteFile sUserPath & "rank.txt", Me.Combo2.Text
End Sub

Private Sub LoadUserEditor(ByVal sUsername As String)
    ' Load user data for editing in Frame6
    ' This is a placeholder - implementation depends on Frame6 controls
End Sub

Private Sub PopulateRoomList()
    Dim oFolder As Object
    Dim oSubFolder As Object
    Dim sRoomsPath As String

    sRoomsPath = gAppPath & "privaterooms\"

    Me.Combo3.Clear

    If gFSO.FolderExists(sRoomsPath) Then
        Set oFolder = gFSO.GetFolder(sRoomsPath)
        For Each oSubFolder In oFolder.SubFolders
            Me.Combo3.AddItem oSubFolder.Name
        Next oSubFolder
    End If
End Sub

Private Sub ClearRoomFields()
    Me.room_id.Caption = "0"
    Me.Text12.Text = vbNullString
    Me.Text13.Text = vbNullString
    Me.Text14.Text = vbNullString
    Me.Text15.Text = vbNullString
    Me.Text12.Enabled = False
    Me.Text13.Enabled = False
    Me.Text14.Enabled = False
    Me.Command10.Enabled = False
    Me.Command11.Enabled = False
    Me.Command12.Enabled = False
End Sub

Private Sub SaveRoomData()
    Dim sRoomId As String
    Dim sRoomPath As String

    sRoomId = Me.room_id.Caption

    If sRoomId = "0" Or sRoomId = vbNullString Then Exit Sub

    sRoomPath = gAppPath & "privaterooms\" & sRoomId & "\"

    WriteFile sRoomPath & "name.txt", Me.Text12.Text
    WriteFile sRoomPath & "description.txt", Me.Text13.Text
    WriteFile sRoomPath & "password.txt", Me.Text14.Text
End Sub

Private Sub DeleteRoom(ByVal sRoomId As String)
    Dim sSrcPath As String
    Dim sDstPath As String

    sSrcPath = gAppPath & "privaterooms\" & sRoomId
    sDstPath = gAppPath & "privaterooms_deleted\" & sRoomId

    ' Move to deleted folder
    If gFSO.FolderExists(sSrcPath) Then
        gFSO.MoveFolder sSrcPath, sDstPath
    End If
End Sub

Private Sub RestoreDeletedRoom(ByVal sRoomId As String)
    Dim sSrcPath As String
    Dim sDstPath As String

    sSrcPath = gAppPath & "privaterooms_deleted\" & sRoomId
    sDstPath = gAppPath & "privaterooms\" & sRoomId

    ' Move back from deleted folder
    If gFSO.FolderExists(sSrcPath) Then
        gFSO.MoveFolder sSrcPath, sDstPath
    End If
End Sub

Private Sub LoadCategorySettings()
    Dim i As Integer

    For i = 0 To 9
        Me.catname(i).Text = GetINI("categories", "name" & CStr(i), gSettingsFile)
        Me.catprop(i).Clear
        Me.catprop(i).AddItem "0"
        Me.catprop(i).AddItem "1"
        Me.catprop(i).AddItem "2"
        Me.catprop(i).ListIndex = CInt(GetINI("categories", "enabled" & CStr(i), gSettingsFile))
        Me.allowtraden(i).Value = CInt(GetINI("categories", "trading" & CStr(i), gSettingsFile))
    Next i
End Sub

Private Sub SaveCategorySettings()
    Dim i As Integer

    For i = 0 To 9
        WriteINI "categories", "name" & CStr(i), Me.catname(i).Text, gSettingsFile
        WriteINI "categories", "enabled" & CStr(i), CStr(Me.catprop(i).ListIndex), gSettingsFile
        WriteINI "categories", "trading" & CStr(i), CStr(Me.allowtraden(i).Value), gSettingsFile
    Next i
End Sub

Private Sub SaveRankSettings(ByVal sRankName As String)
    Dim sRankPath As String
    Dim i As Integer

    sRankPath = gAppPath & "ranks\" & sRankName & "\"

    If Not gFSO.FolderExists(sRankPath) Then Exit Sub

    ' Save speech command rights
    For i = 0 To 20
        WriteFile sRankPath & "right" & CStr(i) & ".txt", CStr(Me.rights(i).Value)
    Next i

    ' Save mod-tool rights
    For i = 0 To 4
        WriteFile sRankPath & "mtool" & CStr(i) & ".txt", CStr(Me.mtool(i).Value)
    Next i

    ' Save badges
    WriteFile sRankPath & "badges.txt", Me.Text17.Text

    ' Save other rights
    WriteINI "rights", "admin_catalogue", CStr(Me.Check4.Value), sRankPath & "settings.ini"
    WriteINI "rights", "see_room_owner", CStr(Me.Check5.Value), sRankPath & "settings.ini"
    WriteINI "rights", "enter_any_room", CStr(Me.Check6.Value), sRankPath & "settings.ini"
    WriteINI "rights", "receive_cfh", CStr(Me.Check7.Value), sRankPath & "settings.ini"
    WriteINI "rights", "rights_any_room", CStr(Me.Check8.Value), sRankPath & "settings.ini"
    WriteINI "rights", "other_rights", Me.Text18.Text, sRankPath & "settings.ini"
End Sub

Private Sub SaveHCPresents()
    Dim i As Integer

    ' Save HC present settings
    For i = 0 To 10
        WriteINI "HC", "present" & CStr(i + 1), Me.hcpresent(i).Text, gSettingsFile
    Next i

    ' Save extra badges settings
    WriteINI "HC", "extrabadge_1_11", Me.Text19.Text, gSettingsFile
    WriteINI "HC", "extrabadge_12", Me.Text20.Text, gSettingsFile
End Sub
