Attribute VB_Name = "modSettings"
Option Explicit

' Settings Tab Management Module
' Handles tab switching and locale setup for frmSettings

Private Const TAB_COLOR As Long = &H65A4C8  ' RGB(200, 164, 101)

' Updates all tab labels with locale strings
Public Sub UpdateTabLabels()
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

' Show Main Tab
Public Sub ShowMainTab()
    On Error Resume Next

    ' Position and show main tab
    frmSettings.Pictab_main.Top = 1440
    frmSettings.Pictab_main.Left = 2160
    frmSettings.Pictab_main.Visible = True

    ' Hide other tabs
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_guest.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_ranks.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (main = bold)
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

    ' Set colors
    frmSettings.Pictab_main.BackColor = TAB_COLOR
    frmSettings.mainCheck1.BackColor = TAB_COLOR
    frmSettings.mainCheck2.BackColor = TAB_COLOR
    frmSettings.mainCheck3.BackColor = TAB_COLOR
    frmSettings.mainCheck4.BackColor = TAB_COLOR
    frmSettings.mainCheck5.BackColor = TAB_COLOR

    ' Load settings from INI
    frmSettings.mainText1.Text = GetINI("server", "port", gSettingsFile)
    frmSettings.mainText2.Text = GetINI("server", "connection_limit", gSettingsFile)
    frmSettings.mainCheck1.Value = CInt(Val(GetINI("config", "bobba_filter", gSettingsFile)))
    frmSettings.mainCheck2.Value = CInt(Val(GetINI("config", "console", gAppPath & "configuration\settings.ini")))

    ' Handle welcome message with optional custom text
    Dim sWelcomeMsg As String
    Dim arrParts() As String
    sWelcomeMsg = GetINI("config", "welcome_message", gSettingsFile)
    arrParts = Split(sWelcomeMsg, ",")

    If arrParts(0) = "1" Then
        If InStr(1, sWelcomeMsg, ",") <> 0 Then
            arrParts = Split(sWelcomeMsg, ",", 2)
            frmSettings.mainText3.Text = arrParts(1)
        End If
        frmSettings.mainText3.Enabled = True
        frmSettings.mainCheck4.Value = 1
    Else
        If InStr(1, sWelcomeMsg, ",") <> 0 Then
            arrParts = Split(sWelcomeMsg, ",", 2)
            frmSettings.mainText3.Text = arrParts(1)
        End If
        frmSettings.mainText3.Enabled = False
        frmSettings.mainCheck4.Value = 0
    End If

    frmSettings.mainCheck5.Value = CInt(Val(GetINI("config", "freehcclothes", gSettingsFile)))
End Sub

' Show Limits Tab
Public Sub ShowLimitsTab()
    On Error Resume Next

    ' Position and show limits tab
    frmSettings.Pictab_limits.Top = 1440
    frmSettings.Pictab_limits.Left = 2160
    frmSettings.Pictab_limits.Visible = True

    ' Hide other tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_guest.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_ranks.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (limits = bold)
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
    frmSettings.limitsLabel1.Caption = GetLocaleString("limitslabel1")
    frmSettings.limitsLabel2.Caption = GetLocaleString("limitslabel2")
    frmSettings.limitsLabel3.Caption = GetLocaleString("limitslabel3")
    frmSettings.limitsLabel4.Caption = GetLocaleString("limitslabel4")
    frmSettings.limitsLabel5.Caption = GetLocaleString("limitslabel5")
    frmSettings.limitsCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.limitsCommand2.Caption = GetLocaleString("restorebutton")

    ' Set colors
    frmSettings.Pictab_limits.BackColor = TAB_COLOR

    ' Load settings from INI
    frmSettings.limitsText1.Text = GetINI("config", "maxroomsperuser", gSettingsFile)
    frmSettings.limitsText2.Text = GetINI("config", "maxguestroomsinlist", gSettingsFile)
    frmSettings.limitsText3.Text = GetINI("config", "maxfavouriterooms", gSettingsFile)
    frmSettings.limitsText4.Text = GetINI("config", "maxrollersinroom", gSettingsFile)
    frmSettings.limitsText5.Text = GetINI("config", "maxpetsinroom", gSettingsFile)
End Sub

' Show Filter Tab
Public Sub ShowFilterTab()
    On Error Resume Next

    Dim oTextStream As Object
    Dim sContent As String
    Dim arrLines() As String
    Dim i As Long

    ' Position and show filter tab
    frmSettings.Pictab_filter.Top = 1440
    frmSettings.Pictab_filter.Left = 2160
    frmSettings.Pictab_filter.Visible = True

    ' Hide other tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_guest.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_ranks.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (filter = bold)
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

    ' Set colors
    frmSettings.Pictab_filter.BackColor = TAB_COLOR

    ' Load bobba filter words
    Set oTextStream = gFSO.OpenTextFile(gAppPath & "configuration\bobbafilter.ini", 1, False, 0)
    sContent = oTextStream.ReadAll
    oTextStream.Close
    arrLines = Split(sContent, vbCrLf)

    frmSettings.filterList1.Clear
    For i = 0 To UBound(arrLines)
        If arrLines(i) <> vbNullString Then
            frmSettings.filterList1.AddItem arrLines(i)
        End If
    Next i

    ' Load replacement text
    frmSettings.filterText1.Text = GetINI("config", "replacement", gSettingsFile)
    frmSettings.filterCommand1.Enabled = False
End Sub

' Show Habbos Tab
Public Sub ShowHabbosTab()
    On Error Resume Next

    Dim rs As ADODB.Recordset

    ' Position and show habbos tab
    frmSettings.Pictab_habbos.Top = 1440
    frmSettings.Pictab_habbos.Left = 2160
    frmSettings.Pictab_habbos.Visible = True

    ' Hide other tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_guest.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_ranks.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (habbos = bold)
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
    frmSettings.habbosCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.habbosCommand2.Caption = GetLocaleString("restorebutton")

    ' Set colors
    frmSettings.Pictab_habbos.BackColor = TAB_COLOR

    ' Load users from database
    frmSettings.habbosList1.Clear
    Set rs = dbConn.Execute("SELECT name FROM users ORDER BY name ASC")
    Do While Not rs.EOF
        frmSettings.habbosList1.AddItem rs!Name
        rs.MoveNext
    Loop
    rs.Close
    Set rs = Nothing
End Sub

' Show Guest Rooms Tab
Public Sub ShowGuestTab()
    On Error Resume Next

    Dim rs As ADODB.Recordset

    ' Position and show guest tab
    frmSettings.Pictab_guest.Top = 1440
    frmSettings.Pictab_guest.Left = 2160
    frmSettings.Pictab_guest.Visible = True

    ' Hide other tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_ranks.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (guest = bold)
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
    frmSettings.guestroomCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.guestroomCommand2.Caption = GetLocaleString("restorebutton")
    frmSettings.guestcategoriesCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.guestcategoriesCommand2.Caption = GetLocaleString("restorebutton")

    ' Set colors
    frmSettings.Pictab_guest.BackColor = TAB_COLOR

    ' Load guest rooms from database
    frmSettings.guestroomList1.Clear
    Set rs = dbConn.Execute("SELECT id, name FROM rooms WHERE ownerid > 0 ORDER BY name ASC")
    Do While Not rs.EOF
        frmSettings.guestroomList1.AddItem rs!Name
        frmSettings.guestroomList1.ItemData(frmSettings.guestroomList1.NewIndex) = rs!id
        rs.MoveNext
    Loop
    rs.Close

    ' Load categories
    frmSettings.guestcategoriesList1.Clear
    Set rs = dbConn.Execute("SELECT id, name FROM room_categories WHERE type = 2 ORDER BY orderid ASC")
    Do While Not rs.EOF
        frmSettings.guestcategoriesList1.AddItem rs!Name
        frmSettings.guestcategoriesList1.ItemData(frmSettings.guestcategoriesList1.NewIndex) = rs!id
        rs.MoveNext
    Loop
    rs.Close
    Set rs = Nothing
End Sub

' Show Public Rooms Tab
Public Sub ShowPublicTab()
    On Error Resume Next

    ' Position and show public tab
    frmSettings.Pictab_public.Top = 1440
    frmSettings.Pictab_public.Left = 2160
    frmSettings.Pictab_public.Visible = True

    ' Hide other tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_guest.Visible = False
    frmSettings.Pictab_ranks.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (public = bold)
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = False
    frmSettings.Label6.Font.Bold = True
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Set title and labels from locale
    frmSettings.title.Caption = GetLocaleString("tab_publicrooms")
    frmSettings.publicroomCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.publicroomCommand2.Caption = GetLocaleString("restorebutton")

    ' Set colors
    frmSettings.Pictab_public.BackColor = TAB_COLOR
End Sub

' Show Ranks Tab
Public Sub ShowRanksTab()
    On Error Resume Next

    Dim oFolder As Object
    Dim oFile As Object
    Dim sFileName As String

    ' Position and show ranks tab
    frmSettings.Pictab_ranks.Top = 1440
    frmSettings.Pictab_ranks.Left = 2160
    frmSettings.Pictab_ranks.Visible = True

    ' Hide other tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_guest.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (ranks = bold)
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
    frmSettings.ranksCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.ranksCommand2.Caption = GetLocaleString("restorebutton")

    ' Set colors
    frmSettings.Pictab_ranks.BackColor = TAB_COLOR

    ' Load rank files
    frmSettings.ranksCombo1.Clear
    Set oFolder = gFSO.GetFolder(gAppPath & "ranks")
    For Each oFile In oFolder.Files
        sFileName = oFile.Name
        If LCase(Right(sFileName, 4)) = ".ini" Then
            frmSettings.ranksCombo1.AddItem Left(sFileName, Len(sFileName) - 4)
        End If
    Next oFile
    Set oFolder = Nothing

    If frmSettings.ranksCombo1.ListCount > 0 Then
        frmSettings.ranksCombo1.ListIndex = 0
    End If
End Sub

' Show Club Tab
Public Sub ShowClubTab()
    On Error Resume Next

    Dim i As Integer

    ' Position and show club tab
    frmSettings.Pictab_club.Top = 1440
    frmSettings.Pictab_club.Left = 2160
    frmSettings.Pictab_club.Visible = True

    ' Hide other tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_guest.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_ranks.Visible = False

    ' Set tab label fonts (club = bold)
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

    ' Set colors
    frmSettings.Pictab_club.BackColor = TAB_COLOR

    ' Load HC present settings
    For i = 0 To 10
        frmSettings.hcpresent(i).Text = GetINI("hc", "present" & CStr(i + 1), gSettingsFile)
    Next i

    frmSettings.clubText1.Text = GetINI("hc", "hcdays", gSettingsFile)
    frmSettings.clubText2.Text = GetINI("hc", "hcmonths", gSettingsFile)
End Sub

' Show Console Tab
Public Sub ShowConsoleTab()
    On Error Resume Next

    ' Position and show console tab (using Pictab_main area for console)
    frmSettings.Pictab_main.Top = 1440
    frmSettings.Pictab_main.Left = 2160

    ' Hide other tabs
    frmSettings.Pictab_main.Visible = False
    frmSettings.Pictab_limits.Visible = False
    frmSettings.Pictab_filter.Visible = False
    frmSettings.Pictab_habbos.Visible = False
    frmSettings.Pictab_guest.Visible = False
    frmSettings.Pictab_public.Visible = False
    frmSettings.Pictab_ranks.Visible = False
    frmSettings.Pictab_club.Visible = False

    ' Set tab label fonts (console = bold)
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
End Sub

' Reload filter list from file
Public Sub ReloadFilterList()
    On Error Resume Next

    Dim oTextStream As Object
    Dim sContent As String
    Dim arrLines() As String
    Dim i As Long

    Set oTextStream = gFSO.OpenTextFile(gAppPath & "configuration\bobbafilter.ini", 1, False, 0)
    sContent = oTextStream.ReadAll
    oTextStream.Close
    arrLines = Split(sContent, vbCrLf)

    frmSettings.filterList1.Clear
    For i = 0 To UBound(arrLines)
        If arrLines(i) <> vbNullString Then
            frmSettings.filterList1.AddItem arrLines(i)
        End If
    Next i
End Sub
