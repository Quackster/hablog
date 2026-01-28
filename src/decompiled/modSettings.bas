Attribute VB_Name = "modSettings"

Option Explicit

' Settings Module
' Manages the frmSettings form tab panels and loads settings from INI files
' Contains functions to show/hide tab panels and populate controls with saved values

Private Const TAB_BACKCOLOR As Long = &H65A4C8 ' RGB(200, 164, 101)

' LoadTabCaptions - Sets locale strings for all tab labels
Public Sub LoadTabCaptions()
    On Error Resume Next

    frmSettings.Label1.Caption = GetLocaleString("tab_main")
    frmSettings.Label2.Caption = GetLocaleString("tab_limits")
    frmSettings.Label3.Caption = GetLocaleString("tab_filter")
    frmSettings.Label4.Caption = GetLocaleString("tab_habbos")
    frmSettings.Label5.Caption = GetLocaleString("tab_guestrooms")
    frmSettings.Label6.Caption = GetLocaleString("tab_publicrooms")
    frmSettings.Label7.Caption = GetLocaleString("tab_ranks")
    frmSettings.Label8.Caption = GetLocaleString("tab_club")
    frmSettings.Label9.Caption = GetLocaleString("tab_console")
End Sub

' LoadMainTab - Shows Main tab and loads server settings
Public Sub LoadMainTab()
    On Error Resume Next

    Dim vParts As Variant
    Dim sWelcomeMessage As String

    ' Position and show main tab panel
    frmSettings.Pictab_main.Top = 1440
    frmSettings.Pictab_main.Left = 2160
    frmSettings.Pictab_main.Visible = True

    ' Hide all other tabs
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_guest.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_ranks.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (bold = active)
    frmSettings.Label1.Font.Bold = True
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = False
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Set title and labels from locale
    frmSettings.title.Caption = GetLocaleString("tab_main")
    frmSettings.mainLabel1.Caption = GetLocaleString("mainLabel1")
    frmSettings.mainLabel2.Caption = GetLocaleString("mainLabel2")
    frmSettings.mainLabel3.Caption = GetLocaleString("mainLabel3")
    frmSettings.mainCheck1.Caption = GetLocaleString("mainCheck1")
    frmSettings.mainCheck2.Caption = GetLocaleString("mainCheck2")
    frmSettings.mainCheck3.Caption = GetLocaleString("mainCheck3")
    frmSettings.mainCheck4.Caption = GetLocaleString("mainCheck4")
    frmSettings.mainCheck5.Caption = GetLocaleString("mainCheck5")
    frmSettings.mainCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.mainCommand2.Caption = GetLocaleString("restorebutton")

    ' Set background colors
    frmSettings.Pictab_main.BackColor = TAB_BACKCOLOR
    frmSettings.mainCheck1.BackColor = TAB_BACKCOLOR
    frmSettings.mainCheck2.BackColor = TAB_BACKCOLOR
    frmSettings.mainCheck3.BackColor = TAB_BACKCOLOR
    frmSettings.mainCheck4.BackColor = TAB_BACKCOLOR
    frmSettings.mainCheck5.BackColor = TAB_BACKCOLOR

    ' Load settings from INI
    frmSettings.mainText1.Text = GetINI("server", "port", gSettingsFile)
    frmSettings.mainText2.Text = GetINI("server", "connection_limit", gSettingsFile)
    frmSettings.mainCheck1.Value = CInt(Val(GetINI("config", "bobba_filter", gSettingsFile)))
    frmSettings.mainCheck2.Value = CInt(Val(GetINI("config", "console", gAppPath & "configuration\settings.ini")))

    ' Load welcome message (format: "enabled,message")
    sWelcomeMessage = GetINI("config", "welcome_message", gSettingsFile)
    vParts = Split(sWelcomeMessage, ",")

    If vParts(0) = "1" Then
        ' Welcome message is enabled
        If InStr(1, sWelcomeMessage, ",") <> 0 Then
            frmSettings.mainText3.Text = Split(sWelcomeMessage, ",", 2)(1)
            frmSettings.mainText3.Enabled = True
            frmSettings.mainCheck4.Value = 1
        End If
    Else
        ' Welcome message is disabled
        frmSettings.mainText3.Enabled = False
        frmSettings.mainCheck4.Value = 0
    End If

    ' Load free HC clothes setting
    frmSettings.mainCheck5.Value = CInt(Val(GetINI("config", "freehcclothes", gSettingsFile)))
End Sub

' LoadLimitsTab - Shows Limits tab and loads limit settings
Public Sub LoadLimitsTab()
    On Error Resume Next

    ' Position and show limits tab panel
    frmSettings.Pictab_limits.Top = 1440
    frmSettings.Pictab_limits.Left = 2160
    frmSettings.Pictab_limits.Visible = True

    ' Hide all other tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_guest.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_ranks.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (bold = active)
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = True
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = False
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Set title and labels from locale
    frmSettings.title.Caption = GetLocaleString("tab_limits")
    frmSettings.limitsLabel1.Caption = GetLocaleString("limitsLabel1")
    frmSettings.limitsLabel2.Caption = GetLocaleString("limitsLabel2")
    frmSettings.limitsLabel3.Caption = GetLocaleString("limitsLabel3")
    frmSettings.limitsLabel4.Caption = GetLocaleString("limitsLabel4")
    frmSettings.limitsLabel5.Caption = GetLocaleString("limitsLabel5")
    frmSettings.limitsCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.limitsCommand2.Caption = GetLocaleString("restorebutton")

    ' Set background color
    frmSettings.Pictab_limits.BackColor = TAB_BACKCOLOR

    ' Load settings from INI
    frmSettings.limitsText1.Text = GetINI("config", "maxroomsperuser", gSettingsFile)
    frmSettings.limitsText2.Text = GetINI("config", "maxguestroomsinlist", gSettingsFile)
    frmSettings.limitsText3.Text = GetINI("config", "maxfavouriterooms", gSettingsFile)
    frmSettings.limitsText4.Text = GetINI("config", "maxrollersinroom", gSettingsFile)
    frmSettings.limitsText5.Text = GetINI("config", "maxpetsinroom", gSettingsFile)
End Sub

' LoadFilterTab - Shows Filter tab and loads bobba filter settings
Public Sub LoadFilterTab()
    On Error Resume Next

    Dim oTextStream As Object
    Dim sContent As String
    Dim vLines As Variant
    Dim i As Variant

    ' Position and show filter tab panel
    frmSettings.Pictab_filter.Top = 1440
    frmSettings.Pictab_filter.Left = 2160
    frmSettings.Pictab_filter.Visible = True

    ' Hide all other tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_guest.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_ranks.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (bold = active)
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = True
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = False
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Set title and labels from locale
    frmSettings.title.Caption = GetLocaleString("tab_filter")
    frmSettings.filterLabel1.Caption = GetLocaleString("filterLabel1")
    frmSettings.filterLabel2.Caption = GetLocaleString("filterLabel2")
    frmSettings.filterLabel3.Caption = GetLocaleString("filterLabel3")
    frmSettings.filterCommand1.Caption = GetLocaleString("filterCommand1")

    ' Set background color
    frmSettings.Pictab_filter.BackColor = TAB_BACKCOLOR

    ' Load bobba filter words from file
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "configuration\bobbafilter.ini", 1, False, 0)
    sContent = oTextStream.ReadAll
    vLines = Split(sContent, vbCrLf)

    ' Populate list
    frmSettings.filterList1.Clear
    For i = 0 To UBound(vLines)
        If vLines(i) <> vbNullString Then
            frmSettings.filterList1.AddItem vLines(i)
        End If
    Next i

    ' Load replacement text
    frmSettings.filterText1.Text = GetINI("config", "replacement", gSettingsFile)

    ' Disable add button initially
    frmSettings.filterCommand1.Enabled = False
End Sub

' LoadHabbosTab - Shows Habbos tab and loads user list
Public Sub LoadHabbosTab()
    On Error Resume Next

    Dim oFolders As Object
    Dim oFolder As Object
    Dim oTextStream As Object
    Dim sUsername As String

    ' Position and show habbos tab panel
    frmSettings.Pictab_habbos.Top = 1440
    frmSettings.Pictab_habbos.Left = 2160
    frmSettings.Pictab_habbos.Visible = True

    ' Hide all other tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_guest.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_ranks.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (bold = active)
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = True
    frmSettings.Label5.Font.Bold = False
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Set title and labels from locale
    frmSettings.title.Caption = GetLocaleString("tab_habbos")
    frmSettings.habbosLabel1.Caption = GetLocaleString("habbosLabel1")
    frmSettings.habbosLabel2.Caption = GetLocaleString("habbosLabel2")
    frmSettings.habbosLabel3.Caption = GetLocaleString("habbosLabel3")
    frmSettings.habbosLabel4.Caption = GetLocaleString("habbosLabel4")
    frmSettings.habbosLabel5.Caption = GetLocaleString("habbosLabel5")
    frmSettings.habbosLabel6.Caption = GetLocaleString("habbosLabel6")
    frmSettings.habbosLabel7.Caption = GetLocaleString("habbosLabel7")
    frmSettings.habbosLabel8.Caption = GetLocaleString("habbosLabel8")
    frmSettings.habbosLabel9.Caption = GetLocaleString("habbosLabel9")

    ' Clear text fields
    frmSettings.habbosText1.Text = vbNullString
    frmSettings.habbosText2.Text = vbNullString
    frmSettings.habbosText3.Text = vbNullString
    frmSettings.habbosText4.Text = vbNullString
    frmSettings.habbosText5.Text = vbNullString
    frmSettings.habbosText6.Text = vbNullString
    frmSettings.habbosText7.Text = vbNullString
    frmSettings.habbosCombo1.Text = "Ranks"

    frmSettings.habbosCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.habbosCommand2.Caption = GetLocaleString("restorebutton")

    ' Set background color
    frmSettings.Pictab_habbos.BackColor = TAB_BACKCOLOR

    ' Load habbo user list
    frmSettings.habbosList1.Clear
    Set oFolders = gFSO.GetFolder(gAppPath & "habbos").SubFolders

    For Each oFolder In oFolders
        If gFSO.FileExists(oFolder & "\name.txt") Then
            Set oTextStream = gFSO.OpenTextFile(oFolder & "\name.txt", 1, False, 0)
            sUsername = oTextStream.ReadAll
            frmSettings.habbosList1.AddItem sUsername
        End If
    Next oFolder
End Sub

' LoadGuestTab - Shows Guest Rooms main tab
Public Sub LoadGuestTab()
    On Error Resume Next

    ' Position and show guest tab panel
    frmSettings.Pictab_guest.Top = 1440
    frmSettings.Pictab_guest.Left = 2160
    frmSettings.Pictab_guest.Visible = True

    ' Hide all other tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_ranks.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (bold = active)
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = True
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Set title and labels from locale
    frmSettings.title.Caption = GetLocaleString("tab_guestrooms")
    frmSettings.guestLabel1.Caption = GetLocaleString("guestLabel1")
    frmSettings.guestLabel2.Caption = GetLocaleString("guestLabel2")

    ' Set background color
    frmSettings.Pictab_guest.BackColor = TAB_BACKCOLOR

    ' Load guestroom sub-tab
    LoadGuestroomTab
End Sub

' LoadGuestroomTab - Shows Guestroom sub-tab and loads room list
Public Sub LoadGuestroomTab()
    On Error Resume Next

    Dim oFolders As Object
    Dim oFolder As Object
    Dim oTextStream As Object
    Dim vPathParts As Variant
    Dim sRoomId As String
    Dim sRoomName As String
    Dim sOwner As String
    Dim i As Variant

    ' Position and show guest tab panel
    frmSettings.Pictab_guest.Top = 1440
    frmSettings.Pictab_guest.Left = 2160
    frmSettings.Pictab_guest.Visible = True

    ' Hide all other main tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_ranks.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (bold = active)
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = True
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Show guestroom sub-tab, hide categories sub-tab
    frmSettings.Pictab_guestroom.Visible = True
    frmSettings.Pictab_guestcategories.Visible = False

    ' Set sub-tab label fonts
    frmSettings.guestLabel1.Font.Bold = True
    frmSettings.guestLabel2.Font.Bold = False

    ' Set labels from locale
    frmSettings.guestroomLabel1.Caption = GetLocaleString("guestroomLabel1")
    frmSettings.guestroomLabel2.Caption = GetLocaleString("guestroomLabel2")
    frmSettings.guestroomLabel3.Caption = GetLocaleString("guestroomLabel3")
    frmSettings.guestroomLabel4.Caption = GetLocaleString("guestroomLabel4")
    frmSettings.guestroomLabel5.Caption = GetLocaleString("guestroomLabel5")
    frmSettings.guestroomLabel6.Caption = GetLocaleString("guestroomLabel6")

    ' Clear text fields
    frmSettings.guestroomText1.Text = vbNullString
    frmSettings.guestroomText2.Text = vbNullString
    frmSettings.guestroomText3.Text = vbNullString
    frmSettings.guestroomText4.Text = vbNullString
    frmSettings.guestroomText5.Text = vbNullString

    frmSettings.guestroomCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.guestroomCommand2.Caption = GetLocaleString("restorebutton")

    ' Set background color
    frmSettings.Pictab_guestroom.BackColor = TAB_BACKCOLOR

    ' Load private room list
    frmSettings.guestroomList1.Clear
    Set oFolders = gFSO.GetFolder(gAppPath & "privaterooms").SubFolders

    For Each oFolder In oFolders
        ' Extract room ID from folder path
        vPathParts = Split(CStr(oFolder), "\")
        For i = 1 To UBound(vPathParts)
            sRoomId = vPathParts(i)
        Next i

        ' Check if room is not deleted
        If gFSO.FileExists(oFolder & "\deleted.txt") = False Then
            ' Read room name and owner
            Set oTextStream = gFSO.OpenTextFile(oFolder & "\name.txt", 1, False, 0)
            sRoomName = oTextStream.ReadAll

            Set oTextStream = gFSO.OpenTextFile(oFolder & "\owner.txt", 1, False, 0)
            sOwner = oTextStream.ReadAll

            frmSettings.guestroomList1.AddItem sRoomId & ") Name: " & sRoomName & " # Owner: " & sOwner
        End If
    Next oFolder
End Sub

' LoadGuestCategoriesTab - Shows Guest Categories sub-tab
Public Sub LoadGuestCategoriesTab()
    On Error Resume Next

    Dim oTextStream As Object
    Dim sContent As String
    Dim vLines As Variant
    Dim i As Variant
    Dim sCatProp As String
    Dim sCatName As String
    Dim sAllowTrade As String

    ' Position and show guest tab panel
    frmSettings.Pictab_guest.Top = 1440
    frmSettings.Pictab_guest.Left = 2160
    frmSettings.Pictab_guest.Visible = True

    ' Hide all other main tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_ranks.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (bold = active)
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = True
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Show categories sub-tab, hide guestroom sub-tab
    frmSettings.Pictab_guestroom.Visible = False
    frmSettings.Pictab_guestcategories.Visible = True

    ' Set sub-tab label fonts
    frmSettings.guestLabel1.Font.Bold = False
    frmSettings.guestLabel2.Font.Bold = True

    ' Set labels from locale
    frmSettings.guestcategoriesLabel1.Caption = GetLocaleString("guestcategoriesLabel1")
    frmSettings.guestcategoriesLabel2.Caption = GetLocaleString("guestcategoriesLabel2")
    frmSettings.guestcategoriesLabel3.Caption = GetLocaleString("guestcategoriesLabel3")
    frmSettings.guestcategoriesLabel4.Caption = GetLocaleString("guestcategoriesLabel4")
    frmSettings.guestcategoriesCheck1.Caption = GetLocaleString("guestcategoriesCheck1")

    frmSettings.guestcategoriesCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.guestcategoriesCommand2.Caption = GetLocaleString("restorebutton")

    ' Set background colors
    frmSettings.Pictab_guestcategories.BackColor = TAB_BACKCOLOR
    frmSettings.guestcategoriesCheck1.BackColor = TAB_BACKCOLOR

    ' Load room categories from file
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "room_categories\categories.ini", 1, False, 0)
    sContent = oTextStream.ReadAll
    vLines = Split(sContent, vbCrLf)

    ' Populate list
    frmSettings.guestcategoriesList1.Clear
    For i = 0 To UBound(vLines)
        If vLines(i) <> vbNullString Then
            frmSettings.guestcategoriesList1.AddItem vLines(i)
        End If
    Next i
End Sub

' LoadPublicRoomsTab - Shows Public Rooms tab
Public Sub LoadPublicRoomsTab()
    On Error Resume Next

    ' Position and show public tab panel
    frmSettings.Pictab_public.Top = 1440
    frmSettings.Pictab_public.Left = 2160
    frmSettings.Pictab_public.Visible = True

    ' Hide all other tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_guest.Visible = False
    frmSettings.Pictab_ranks.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (bold = active)
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = False
    frmSettings.Label6.Font.Bold = True
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Set title from locale
    frmSettings.title.Caption = GetLocaleString("tab_publicroom")

    ' Set background color
    frmSettings.Pictab_public.BackColor = TAB_BACKCOLOR
End Sub

' LoadRanksTab - Shows Ranks tab and loads rank settings
Public Sub LoadRanksTab()
    On Error Resume Next

    Dim oTextStream As Object
    Dim sContent As String
    Dim vLines As Variant
    Dim i As Variant

    ' Position and show ranks tab panel
    frmSettings.Pictab_ranks.Top = 1440
    frmSettings.Pictab_ranks.Left = 2160
    frmSettings.Pictab_ranks.Visible = True

    ' Hide all other tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_guest.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (bold = active)
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = False
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = True
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Set title and labels from locale
    frmSettings.title.Caption = GetLocaleString("tab_ranks")
    frmSettings.ranksLabel1.Caption = GetLocaleString("ranksLabel1")
    frmSettings.ranksLabel2.Caption = GetLocaleString("ranksLabel2")
    frmSettings.ranksLabel3.Caption = GetLocaleString("ranksLabel3")
    frmSettings.ranksLabel4.Caption = GetLocaleString("ranksLabel4")
    frmSettings.ranksCheck1.Caption = GetLocaleString("ranksCheck1")
    frmSettings.ranksCheck2.Caption = GetLocaleString("ranksCheck2")
    frmSettings.ranksCheck3.Caption = GetLocaleString("ranksCheck3")
    frmSettings.ranksCheck4.Caption = GetLocaleString("ranksCheck4")
    frmSettings.ranksCheck5.Caption = GetLocaleString("ranksCheck5")
    frmSettings.ranksCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.ranksCommand2.Caption = GetLocaleString("restorebutton")

    ' Clear text fields and checkboxes
    frmSettings.ranksText1.Text = vbNullString
    frmSettings.ranksText2.Text = vbNullString
    frmSettings.ranksCheck1.Value = 0
    frmSettings.ranksCheck2.Value = 0
    frmSettings.ranksCheck3.Value = 0
    frmSettings.ranksCheck4.Value = 0
    frmSettings.ranksCheck5.Value = 0

    ' Set background colors
    frmSettings.Pictab_ranks.BackColor = TAB_BACKCOLOR
    frmSettings.ranksCheck1.BackColor = TAB_BACKCOLOR
    frmSettings.ranksCheck2.BackColor = TAB_BACKCOLOR
    frmSettings.ranksCheck3.BackColor = TAB_BACKCOLOR
    frmSettings.ranksCheck4.BackColor = TAB_BACKCOLOR
    frmSettings.ranksCheck5.BackColor = TAB_BACKCOLOR

    ' Load ranks from file
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "configuration\ranks.ini", 1, False, 0)
    sContent = oTextStream.ReadAll
    vLines = Split(sContent, vbCrLf)

    ' Populate ranks combo
    frmSettings.ranksCombo1.Clear
    For i = 0 To UBound(vLines)
        If vLines(i) <> vbNullString Then
            frmSettings.ranksCombo1.AddItem vLines(i)
        End If
    Next i
    frmSettings.ranksCombo1.Text = "Ranks"

    ' Populate command list (ranksList1)
    frmSettings.ranksList1.Clear
    frmSettings.ranksList1.AddItem ":kick"
    frmSettings.ranksList1.AddItem ":voucher"
    frmSettings.ranksList1.AddItem ":shutup"
    frmSettings.ranksList1.AddItem ":hotelalert"
    frmSettings.ranksList1.AddItem ":roomunmute"
    frmSettings.ranksList1.AddItem ":takebadge"
    frmSettings.ranksList1.AddItem ":closeroom"
    frmSettings.ranksList1.AddItem ":infobus"
    frmSettings.ranksList1.AddItem ":superban"
    frmSettings.ranksList1.AddItem ":ban"
    frmSettings.ranksList1.AddItem ":credits"
    frmSettings.ranksList1.AddItem ":roomshutup"
    frmSettings.ranksList1.AddItem ":takecredits"
    frmSettings.ranksList1.AddItem ":deleteroom"
    frmSettings.ranksList1.AddItem ":openroom"
    frmSettings.ranksList1.AddItem ":changepassword"
    frmSettings.ranksList1.AddItem ":alert"
    frmSettings.ranksList1.AddItem ":whosonline"
    frmSettings.ranksList1.AddItem ":unmute"
    frmSettings.ranksList1.AddItem ":userdata"
    frmSettings.ranksList1.AddItem ":givebadge"
    frmSettings.ranksList1.AddItem ":unban"
    frmSettings.ranksList1.AddItem ":rank"
    frmSettings.ranksList1.AddItem ":changemission"
    frmSettings.ranksList1.AddItem ":cleanhand"
    frmSettings.ranksList1.AddItem ":givedrink"
    frmSettings.ranksList1.AddItem ":refresh"
    frmSettings.ranksList1.AddItem ":telewarp"
    frmSettings.ranksList1.AddItem ":invisible"
    frmSettings.ranksList1.AddItem ":endserver"
    frmSettings.ranksList1.AddItem ":reboot"
    frmSettings.ranksList1.AddItem ":diving"
    frmSettings.ranksList1.AddItem ":disconnect"
    frmSettings.ranksList1.AddItem ":poll"
    frmSettings.ranksList1.AddItem ":wheres"
    frmSettings.ranksList1.AddItem ":warp"
    frmSettings.ranksList1.AddItem ":userwarp"
    frmSettings.ranksList1.AddItem ":fracts"
    frmSettings.ranksList1.AddItem ":infract"
    frmSettings.ranksList1.AddItem ":position"
    frmSettings.ranksList1.AddItem ":wheres"
    frmSettings.ranksList1.AddItem ":answer"
    frmSettings.ranksList1.AddItem ":email"
    frmSettings.ranksList1.AddItem ":resetvoters"
    frmSettings.ranksList1.AddItem ":setscores"
    frmSettings.ranksList1.AddItem ":sentlog"
    frmSettings.ranksList1.AddItem ":stoplog"
    frmSettings.ranksList1.AddItem ":startlog"
    frmSettings.ranksList1.AddItem ":getclient"
    frmSettings.ranksList1.AddItem ":group"
    frmSettings.ranksList1.AddItem ":kill"
    frmSettings.ranksList1.AddItem ":userheight"
    frmSettings.ranksList1.AddItem ":height"
    frmSettings.ranksList1.AddItem ":clearhand"
    frmSettings.ranksList1.AddItem ":moveto"
    frmSettings.ranksList1.AddItem ":jail"
    frmSettings.ranksList1.AddItem ":debug"
    frmSettings.ranksList1.AddItem ":bot"
    frmSettings.ranksList1.AddItem ":position"

    ' Populate permissions list (ranksList2)
    frmSettings.ranksList2.Clear
    frmSettings.ranksList2.AddItem "Alert User"
    frmSettings.ranksList2.AddItem "Ban User"
    frmSettings.ranksList2.AddItem "Kick User"
    frmSettings.ranksList2.AddItem "Room Alert"
    frmSettings.ranksList2.AddItem "Room Kick"

    ' Disable controls until rank is selected
    frmSettings.ranksList1.Enabled = False
    frmSettings.ranksList2.Enabled = False
    frmSettings.ranksText1.Enabled = False
    frmSettings.ranksText2.Enabled = False
    frmSettings.ranksCheck1.Enabled = False
    frmSettings.ranksCheck2.Enabled = False
    frmSettings.ranksCheck3.Enabled = False
    frmSettings.ranksCheck4.Enabled = False
    frmSettings.ranksCheck5.Enabled = False
End Sub

' LoadClubTab - Shows Club tab and loads HC settings
Public Sub LoadClubTab()
    On Error Resume Next

    Dim i As Variant
    Dim sPresent As String
    Dim sHCBadge As String

    ' Position and show club tab panel
    frmSettings.Pictab_club.Top = 1440
    frmSettings.Pictab_club.Left = 2160
    frmSettings.Pictab_club.Visible = True

    ' Hide all other tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_guest.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_ranks.Visible = False

    ' Set tab label fonts (bold = active)
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = False
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = True
    frmSettings.Label9.Font.Bold = False

    ' Set title and labels from locale
    frmSettings.title.Caption = GetLocaleString("tab_club")
    frmSettings.clubLabel1.Caption = GetLocaleString("clubLabel1")
    frmSettings.clubLabel2.Caption = GetLocaleString("clubLabel2")
    frmSettings.clubLabel3.Caption = GetLocaleString("clubLabel3")
    frmSettings.clubCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.clubCommand2.Caption = GetLocaleString("restorebutton")

    ' Set background color
    frmSettings.Pictab_club.BackColor = TAB_BACKCOLOR

    ' Load HC presents (present1 through present10)
    For i = 0 To 10
        sPresent = GetINI("HC", "present" & CStr(i + 1), gAppPath & "configuration\settings.ini")
        frmSettings.hcpresent(CInt(i)).Text = sPresent
    Next i

    ' Load HC badge setting
    sHCBadge = GetINI("HC", "hcbadge", gAppPath & "configuration\settings.ini")
    frmSettings.clubText1.Text = Mid(sHCBadge, 2)
End Sub

' LoadConsoleTab - Shows Console tab and loads console settings
Public Sub LoadConsoleTab()
    On Error Resume Next

    ' Position and show console tab panel
    frmSettings.Pictab_console.Top = 1440
    frmSettings.Pictab_console.Left = 2160
    frmSettings.Pictab_console.Visible = True

    ' Hide all other tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_guest.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_ranks.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (bold = active)
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = False
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = True

    ' Set title from locale
    frmSettings.title.Caption = GetLocaleString("tab_console")

    ' Set background color
    frmSettings.Pictab_console.BackColor = TAB_BACKCOLOR
End Sub
