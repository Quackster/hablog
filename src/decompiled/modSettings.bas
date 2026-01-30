Attribute VB_Name = "modSettings"
Option Explicit

' Tab background color constant
Private Const TAB_COLOR As Long = &H65A4C8 ' RGB(200, 164, 101)

Public Sub UpdateTabLabels()
    On Error Resume Next

    ' Set tab label captions from locale
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

    ' Set tab label fonts (bold for active tab)
    frmSettings.Label1.Font.Bold = True
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = False
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Set title and labels
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
    frmSettings.Pictab_main.BackColor = TAB_COLOR
    frmSettings.mainCheck1.BackColor = TAB_COLOR
    frmSettings.mainCheck2.BackColor = TAB_COLOR
    frmSettings.mainCheck3.BackColor = TAB_COLOR
    frmSettings.mainCheck4.BackColor = TAB_COLOR
    frmSettings.mainCheck5.BackColor = TAB_COLOR
End Sub

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

    ' Set tab label fonts
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = True
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = False
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Set title and labels
    frmSettings.title.Caption = GetLocaleString("tab_limits")
    frmSettings.limitsLabel1.Caption = GetLocaleString("limitsLabel1")
    frmSettings.limitsLabel2.Caption = GetLocaleString("limitsLabel2")
    frmSettings.limitsLabel3.Caption = GetLocaleString("limitsLabel3")
    frmSettings.limitsLabel4.Caption = GetLocaleString("limitsLabel4")
    frmSettings.limitsLabel5.Caption = GetLocaleString("limitsLabel5")
    frmSettings.limitsCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.limitsCommand2.Caption = GetLocaleString("restorebutton")

    ' Set background color
    frmSettings.Pictab_limits.BackColor = TAB_COLOR
End Sub

Public Sub ShowFilterTab()
    On Error Resume Next

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

    ' Set tab label fonts
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = True
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = False
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Set title and labels
    frmSettings.title.Caption = GetLocaleString("tab_filter")
    frmSettings.filterLabel1.Caption = GetLocaleString("filterLabel1")
    frmSettings.filterLabel2.Caption = GetLocaleString("filterLabel2")
    frmSettings.filterCommand1.Caption = GetLocaleString("filterCommand1")
    frmSettings.filterCommand2.Caption = GetLocaleString("filterCommand2")
    frmSettings.filterCommand3.Caption = GetLocaleString("restorebutton")

    ' Set background color
    frmSettings.Pictab_filter.BackColor = TAB_COLOR

    ' Reload filter list
    ReloadFilterList
End Sub

Public Sub ShowHabbosTab()
    On Error Resume Next

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

    ' Set tab label fonts
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = True
    frmSettings.Label5.Font.Bold = False
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Set title and labels
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
    frmSettings.habbosCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.habbosCommand2.Caption = GetLocaleString("restorebutton")

    ' Set background color
    frmSettings.Pictab_habbos.BackColor = TAB_COLOR

    ' Load habbos list
    LoadHabbosList
End Sub

Public Sub ShowGuestTab()
    On Error Resume Next

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

    ' Set tab label fonts
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = True
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Set title and labels
    frmSettings.title.Caption = GetLocaleString("tab_guestrooms")
    frmSettings.guestLabel1.Caption = GetLocaleString("guestLabel1")
    frmSettings.guestLabel2.Caption = GetLocaleString("guestLabel2")

    ' Set background color
    frmSettings.Pictab_guest.BackColor = TAB_COLOR

    ' Show guestroom sub-tab by default
    frmSettings.Pictab_guestroom.Visible = True
    frmSettings.Pictab_guestcategories.Visible = False
End Sub

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

    ' Set tab label fonts
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = False
    frmSettings.Label6.Font.Bold = True
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Set title
    frmSettings.title.Caption = GetLocaleString("tab_publicrooms")

    ' Set background color
    frmSettings.Pictab_public.BackColor = TAB_COLOR
End Sub

Public Sub ShowRanksTab()
    On Error Resume Next

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

    ' Set tab label fonts
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = False
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = True
    frmSettings.Label8.Font.Bold = False
    frmSettings.Label9.Font.Bold = False

    ' Set title and labels
    frmSettings.title.Caption = GetLocaleString("tab_ranks")
    frmSettings.ranksLabel1.Caption = GetLocaleString("ranksLabel1")
    frmSettings.ranksLabel2.Caption = GetLocaleString("ranksLabel2")
    frmSettings.ranksLabel3.Caption = GetLocaleString("ranksLabel3")
    frmSettings.ranksLabel4.Caption = GetLocaleString("ranksLabel4")
    frmSettings.ranksLabel5.Caption = GetLocaleString("ranksLabel5")
    frmSettings.ranksLabel6.Caption = GetLocaleString("ranksLabel6")
    frmSettings.ranksCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.ranksCommand2.Caption = GetLocaleString("restorebutton")

    ' Set background color
    frmSettings.Pictab_ranks.BackColor = TAB_COLOR
End Sub

Public Sub ShowClubTab()
    On Error Resume Next

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

    ' Set tab label fonts
    frmSettings.Label1.Font.Bold = False
    frmSettings.Label2.Font.Bold = False
    frmSettings.Label3.Font.Bold = False
    frmSettings.Label4.Font.Bold = False
    frmSettings.Label5.Font.Bold = False
    frmSettings.Label6.Font.Bold = False
    frmSettings.Label7.Font.Bold = False
    frmSettings.Label8.Font.Bold = True
    frmSettings.Label9.Font.Bold = False

    ' Set title and labels
    frmSettings.title.Caption = GetLocaleString("tab_club")
    frmSettings.clubLabel1.Caption = GetLocaleString("clubLabel1")
    frmSettings.clubLabel2.Caption = GetLocaleString("clubLabel2")
    frmSettings.clubCommand1.Caption = GetLocaleString("savebutton")
    frmSettings.clubCommand2.Caption = GetLocaleString("restorebutton")

    ' Set background color
    frmSettings.Pictab_club.BackColor = TAB_COLOR
End Sub

Public Sub ShowConsoleTab()
    On Error Resume Next

    ' Console tab uses a different form/approach
    ' This is typically handled separately
End Sub

Public Sub ReloadFilterList()
    On Error Resume Next

    Dim sFilterPath As String
    Dim oTextStream As Object
    Dim sLine As String

    ' Clear the filter list
    frmSettings.filterList1.Clear

    ' Build path to filter file
    sFilterPath = gAppPath & "filter.txt"

    ' Check if file exists
    If gFSO.FileExists(sFilterPath) Then
        ' Open and read the filter file
        Set oTextStream = gFSO.OpenTextFile(sFilterPath, 1, False, 0)

        Do While Not oTextStream.AtEndOfStream
            sLine = oTextStream.ReadLine
            If Len(Trim(sLine)) > 0 Then
                frmSettings.filterList1.AddItem sLine
            End If
        Loop

        oTextStream.Close
        Set oTextStream = Nothing
    End If
End Sub

Private Sub LoadHabbosList()
    On Error Resume Next

    Dim sHabbosPath As String
    Dim oFolder As Object
    Dim oSubFolder As Object

    ' Clear the habbos list
    frmSettings.habbosList1.Clear

    ' Build path to habbos folder
    sHabbosPath = gAppPath & "habbos"

    ' Check if folder exists
    If gFSO.FolderExists(sHabbosPath) Then
        Set oFolder = gFSO.GetFolder(sHabbosPath)

        ' Add each subfolder (user) to the list
        For Each oSubFolder In oFolder.SubFolders
            frmSettings.habbosList1.AddItem oSubFolder.Name
        Next oSubFolder

        Set oFolder = Nothing
    End If
End Sub
