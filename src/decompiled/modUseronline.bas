Attribute VB_Name = "modUseronline"
Option Explicit

' Module for tracking online users from socket connections

Public Sub RefreshUserList()
    Dim sOnlineList As String
    Dim i As Variant
    Dim j As Variant
    Dim oSock As Object

    sOnlineList = vbNullString

    ' Loop through all sockets
    For i = 1 To frmMain.SockI

        Set oSock = frmMain.Sock(CInt(i))

        ' Check if socket is connected (state = 7) and has a username
        If oSock.State = 7 And gUsernames(CLng(i)) <> vbNullString Then

            ' Skip if already in list
            If InStr(1, sOnlineList, CStr(oSock.RemoteHostIP), 0) Then
                GoTo NextSocket
            End If

            ' Add to the listbox: Username [IP]
            frmMain.Listuseronline.AddItem gUsernames(CLng(i)) & " [" & CStr(oSock.RemoteHostIP) & "]"

            ' Inner loop to find users with same IP on different sockets
            For j = 1 To frmMain.SockI
                Set oSock = frmMain.Sock(CInt(j))

                ' If same IP, different socket, connected, and has username
                If CStr(frmMain.Sock(CInt(i)).RemoteHostIP) = CStr(frmMain.Sock(CInt(j)).RemoteHostIP) And _
                   i <> j And _
                   frmMain.Sock(CInt(j)).State = 7 And _
                   gUsernames(CLng(j)) <> vbNullString Then

                    ' Add to listbox
                    frmMain.Listuseronline.AddItem gUsernames(CLng(j)) & " [" & CStr(oSock.RemoteHostIP) & "]"
                End If
            Next j

            ' Build comma-separated list
            sOnlineList = sOnlineList & CStr(frmMain.Sock(CInt(i)).RemoteHostIP) & ","
        End If
NextSocket:
    Next i
End Sub
