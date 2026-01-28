Attribute VB_Name = "modEncoding"

Option Explicit

' modEncoding - Habbo Protocol Encoding/Decoding Module
' Handles VL64 (Variable Length 64-bit) encoding used in Habbo protocol
' VL64 is a compact integer representation using printable ASCII characters

' EncodeNumber - Encode a number to Habbo protocol format
' For numbers > 255, uses encode.txt lookup; otherwise single character encoding
Public Function EncodeNumber(ByVal sValue As String) As String
    Dim lValue As Double
    Dim sResult As String
    Dim i As Long

    On Error Resume Next

    lValue = Val(sValue)

    ' Numbers > 255 need special encoding from file lookup
    If lValue > 255 Then
        EncodeNumber = GetINI("encode", sValue, gAppPath & "encode.txt")
        Exit Function
    End If

    ' For numbers >= 4, use multi-character encoding
    If CDbl(sValue) - 3 > 0 Then
        ' Two-character encoding
        For i = 3 To CDbl(sValue) Step -4
            ' First character: remainder * 1 + 80
            ' Second character: quotient + 64
            If (CDbl(sValue) - i) Mod 4 = 0 Then
                EncodeNumber = Chr((i + 80)) & Chr(((CDbl(sValue) - i) \ 4) + 64)
                Exit Function
            End If
        Next i
    End If

    ' Single character encoding: value + 72 (0x48)
    EncodeNumber = Chr(CLng(CDbl(sValue) + &H48))
End Function

' EncodeVL64 - Encode a number using VL64 format
' VL64 uses 6-bit values with continuation markers
Public Function EncodeVL64(ByVal dValue As Double) As String
    Dim lRemainder As Integer
    Dim dQuotient As Double
    Dim sResult As String
    Dim dTemp As Double
    Dim i As Integer

    ' Get remainder mod 4 (determines encoding type)
    lRemainder = CLng(dValue) Mod 4

    ' Divide by 4
    dQuotient = CDbl(CLng(dValue) \ 4)

    ' Build encoding from base-64 digits
    For i = 0 To 5
        dTemp = CDbl(CLng(dQuotient) \ CLng(64 ^ i))

        If dTemp > 0 Then
            ' Add digit: (value mod 64) + 64
            sResult = sResult & Chr((CLng(dTemp) Mod 64) + 64)
        Else
            ' No more significant digits - output terminator
            EncodeVL64 = Chr(&H48 + lRemainder + (8 * i)) & sResult
            Exit Function
        End If
    Next i

    ' Output final terminator
    EncodeVL64 = Chr(&H48 + lRemainder + (8 * i)) & sResult
End Function

' DecodeVL64 - Decode a VL64 encoded string to number
' Returns "Er" on error
Public Function DecodeVL64(ByVal sEncoded As String) As String
    Dim dValue As Double
    Dim dAccum As Double
    Dim lFirstByte As Integer
    Dim lNumBytes As Long
    Dim i As Long

    On Error GoTo ErrorHandler

    ' Get first byte and calculate length indicator
    lFirstByte = Asc(Left(sEncoded, 1)) - &H48
    dValue = CDbl(lFirstByte) / 4

    ' Check if length indicator is valid
    If dValue < 1 Then
        dValue = 0
    End If

    ' Check encoding type based on length
    If CLng(dValue) Mod 2 = 0 Then
        ' Even length - use multi-byte decoding
        dValue = dValue / 2
        dAccum = 0

        For i = 1 To dValue
            ' Accumulate: (byte - 64) * 64^(position-1)
            dAccum = dAccum + (Asc(Mid(sEncoded, CLng(i) + 1, 1)) - 64) * (64 ^ (i - 1))
        Next i

        ' Final result: accumulator * 4 + remainder
        DecodeVL64 = CStr(Round(4 * dAccum + (Asc(Left(sEncoded, 1)) - &H48) Mod 4, 0))
    Else
        ' Odd length - use 2-byte decoding
        ' Replace 'S' with empty (special case)
        Dim sTemp As String
        sTemp = Replace(Left(sEncoded, 2), "S", vbNullString)

        DecodeVL64 = CStr(Round(dValue + (Asc(sTemp) - 64) * 4, 0))
    End If

    Exit Function

ErrorHandler:
    DecodeVL64 = "Er"
End Function

' EncodeB64 - Encode string length as 2-byte Base64-like format
' Used for length prefixes in Habbo protocol
Public Function EncodeB64(ByVal sText As String) As String
    Dim lLen As Long

    lLen = Len(sText)

    ' First byte: quotient + 64
    ' Second byte: remainder + 64
    EncodeB64 = Chr((lLen \ 64) + 64) & Chr((lLen Mod 64) + 64)
End Function

' DecodeB64 - Decode 2-byte Base64-like format to length
' Returns the integer length value
Public Function DecodeB64(ByVal sEncoded As String) As Long
    Dim lHigh As Long
    Dim lLow As Long

    ' First byte: (char - 64) * 64
    lHigh = (Asc(Left(sEncoded, 1)) - 64) * 64

    ' Second byte: (char - 64)
    lLow = Asc(Right(sEncoded, 1)) - 64

    DecodeB64 = lHigh + lLow
End Function

' DecodeB64Extended - Decode 2-character Habbo encoding to integer
' This is an extended Base64-like encoding supporting values 0-999+
' First character range: @ through O (ASCII 64-79)
' Second character range: @ through various (ASCII 64+)
Public Function DecodeB64Extended(ByVal sEncoded As String) As Integer
    Dim lFirstChar As Long
    Dim lSecondChar As Long

    ' Handle special case
    If sEncoded = "@@" Then
        DecodeB64Extended = 0
        Exit Function
    End If

    ' Calculate value from two characters
    ' First char: base value (0-15) * 64
    ' Second char: offset (0-63)
    lFirstChar = Asc(Left(sEncoded, 1)) - 64
    lSecondChar = Asc(Right(sEncoded, 1)) - 64

    DecodeB64Extended = (lFirstChar * 64) + lSecondChar
End Function
