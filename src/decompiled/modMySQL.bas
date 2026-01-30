Attribute VB_Name = "modMySQL"
Option Explicit

Private gConnection As Object
Private gCommand As Object
Private gRecordset As Object

Public Sub ConnectMySQL()
    Set gConnection = CreateObject("ADODB.Connection")
    Set gCommand = CreateObject("ADODB.Command")
    Set gRecordset = CreateObject("ADODB.Recordset")

    gConnection.ConnectionString = "Driver={MySQL ODBC 3.51 Driver};Server=localhost;Port=3306;Database=gangstaclub_nl_db;User=gangstaclub;Password=PASS;Option=3;"
    gConnection.Open

    gCommand.ActiveConnection = gConnection
    gRecordset.ActiveConnection = gConnection

    MsgBox "Connection Successful!"
End Sub

Public Function SQLQuery(ByVal sQuery As String) As String
    Dim sResult As String

    frmMain.txtQueryText = sQuery
    gRecordset.Open sQuery
    sResult = gRecordset.GetString(2, -1)
    gRecordset.Close

    SQLQuery = Mid$(sResult, 1, Len(sResult) - 1)
End Function

Public Sub SQLExecute(ByVal sQuery As String)
    gRecordset.Open sQuery
End Sub

Public Function SQLRecordExists(ByVal sQuery As String) As String
    Dim bEOF As Boolean

    gRecordset.Open sQuery
    bEOF = gRecordset.EOF

    If bEOF = False Then
        SQLRecordExists = "TRUE"
    Else
        SQLRecordExists = "FALSE"
    End If

    gRecordset.Close
End Function
