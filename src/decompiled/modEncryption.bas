Attribute VB_Name = "modEncryption"

Option Explicit

' MD5 Hashing and Encryption Module
' Implements RFC 1321 MD5 Message-Digest Algorithm
' Also includes URL encoding/decoding and simple XOR encryption

' Module-level state for MD5 computation
Private m_State(1 To 4) As Long      ' A, B, C, D state words
Private m_ByteCount As Long          ' Total bytes processed
Private m_Buffer(0 To 63) As Byte    ' 64-byte input buffer

' MD5 initialization constants (RFC 1321)
Private Const MD5_INIT_A As Double = 1732584193   ' 0x67452301
Private Const MD5_INIT_B As Double = 4023233417#  ' 0xEFCDAB89
Private Const MD5_INIT_C As Double = 2562383102#  ' 0x98BADCFE
Private Const MD5_INIT_D As Double = 271733878    ' 0x10325476

' Get MD5 state word A as string
Private Function GetMD5StateA() As String
    GetMD5StateA = CStr(m_State(1))
End Function

' Get MD5 state word B as string
Private Function GetMD5StateB() As String
    GetMD5StateB = CStr(m_State(2))
End Function

' Get MD5 state word C as string
Private Function GetMD5StateC() As String
    GetMD5StateC = CStr(m_State(3))
End Function

' Get MD5 state word D as string
Private Function GetMD5StateD() As String
    GetMD5StateD = CStr(m_State(4))
End Function

' MD5DigestFile - Compute MD5 hash of a file
' Returns 32-character hex string
Public Function MD5DigestFile(ByVal FilePath As String) As String
    Dim nFileNum As Integer
    Dim nBlockSize As Long

    On Error GoTo ErrorHandler

    nBlockSize = UBound(m_Buffer) + 1
    nFileNum = FreeFile

    Open FilePath For Binary Access Read As #nFileNum

    ' Initialize MD5 state
    MD5Init

    ' Process file in chunks
    Do While Not EOF(nFileNum)
        Get #nFileNum, , m_Buffer

        If Loc(nFileNum) < LOF(nFileNum) Then
            m_ByteCount = m_ByteCount + nBlockSize
            MD5Transform m_Buffer
        End If
    Loop

    ' Add remaining bytes
    m_ByteCount = m_ByteCount + (LOF(nFileNum) Mod nBlockSize)

    Close #nFileNum

    ' Finalize and return hash
    MD5Final
    MD5DigestFile = GetMD5State()
    Exit Function

ErrorHandler:
    If nFileNum <> 0 Then Close #nFileNum
    Err.Raise Err.Number, Err.Source, Err.Description
End Function

' MD5DigestString - Compute MD5 hash of a string
' Returns 32-character hex string
Public Function MD5DigestString(ByVal Text As String) As String
    Dim abData() As Byte

    ' Initialize MD5 state
    MD5Init

    ' Convert string to bytes and update
    abData = StringToBytes(Text)
    MD5Update abData, Len(Text)
    Erase abData

    ' Finalize and return hash
    MD5Final
    MD5DigestString = GetMD5State()
End Function

' StringToBytes - Convert string to byte array
Private Function StringToBytes(ByVal Text As String) As Byte()
    Dim abResult() As Byte
    Dim i As Long

    ReDim abResult(0 To Len(Text))

    For i = 0 To Len(Text) - 1
        abResult(i) = Asc(Mid$(Text, i + 1, 1))
    Next i

    StringToBytes = abResult
End Function

' GetMD5State - Get current MD5 state as 32-char hex string
Private Function GetMD5State() As String
    GetMD5State = LongToHex(m_State(1)) & LongToHex(m_State(2)) & _
                  LongToHex(m_State(3)) & LongToHex(m_State(4))
End Function

' LongToHex - Convert Long to 8-character hex string (little-endian byte order)
Private Function LongToHex(ByVal Value As Long) As String
    Dim bByte0 As Byte, bByte1 As Byte, bByte2 As Byte, bByte3 As Byte
    Dim sResult As String

    ' Extract bytes in little-endian order
    bByte0 = (Value And &HFF)
    If bByte0 < &H10 Then
        sResult = "0" & Hex(bByte0)
    Else
        sResult = Hex(bByte0)
    End If

    bByte1 = ((Value And &HFF00&) \ &H100)
    If bByte1 < &H10 Then
        sResult = sResult & "0" & Hex(bByte1)
    Else
        sResult = sResult & Hex(bByte1)
    End If

    bByte2 = ((Value And &HFF0000) \ &H10000)
    If bByte2 < &H10 Then
        sResult = sResult & "0" & Hex(bByte2)
    Else
        sResult = sResult & Hex(bByte2)
    End If

    ' Handle sign bit for high byte
    If Value < 0 Then
        bByte3 = ((Value And &H7F000000) \ &H1000000) Or &H80
    Else
        bByte3 = ((Value And &HFF000000) \ &H1000000)
    End If
    If bByte3 < &H10 Then
        sResult = sResult & "0" & Hex(bByte3)
    Else
        sResult = sResult & Hex(bByte3)
    End If

    LongToHex = sResult
End Function

' MD5Init - Initialize MD5 state with standard constants
Private Sub MD5Init()
    m_ByteCount = 0
    m_State(1) = ToUnsigned(MD5_INIT_A)
    m_State(2) = ToUnsigned(MD5_INIT_B)
    m_State(3) = ToUnsigned(MD5_INIT_C)
    m_State(4) = ToUnsigned(MD5_INIT_D)
End Sub

' MD5Final - Finalize MD5 hash with padding
Private Sub MD5Final()
    Dim abPadding(0 To 0) As Byte
    Dim dBitCount As Double
    Dim nPadLen As Long
    Dim abLength(0 To 7) As Byte

    ' Store bit count
    abPadding(0) = 128  ' 0x80
    dBitCount = CDbl(m_ByteCount) * 8

    ' Calculate padding length
    nPadLen = m_ByteCount Mod 64
    If nPadLen <= 56 Then
        MD5Update abPadding, 56 - nPadLen
    Else
        MD5Update abPadding, 120 - m_ByteCount
    End If

    ' Append bit count as 64-bit little-endian
    abLength(0) = ToUnsigned(dBitCount) And &HFF
    abLength(1) = (ToUnsigned(dBitCount) \ &H100) And &HFF
    abLength(2) = (ToUnsigned(dBitCount) \ &H10000) And &HFF
    abLength(3) = (ToUnsigned(dBitCount) \ &H1000000) And &HFF
    abLength(4) = 0
    abLength(5) = 0
    abLength(6) = 0
    abLength(7) = 0

    MD5Update abLength, 8
End Sub

' MD5Update - Update MD5 with new data
Private Sub MD5Update(ByRef Data() As Byte, ByVal DataLen As Long)
    Dim nBufferPos As Long
    Dim nSpaceLeft As Long
    Dim i As Integer
    Dim j As Integer

    nBufferPos = m_ByteCount Mod 64
    nSpaceLeft = 64 - nBufferPos
    m_ByteCount = m_ByteCount + DataLen

    If DataLen >= nSpaceLeft Then
        ' Fill buffer and transform
        For i = 0 To nSpaceLeft - 1
            m_Buffer(nBufferPos + i) = Data(i)
        Next i
        MD5Transform m_Buffer

        ' Transform complete blocks
        For j = nSpaceLeft To DataLen - j - (DataLen Mod 64) - 1 Step 64
            For i = 0 To 63
                m_Buffer(i) = Data(j + i)
            Next i
            MD5Transform m_Buffer
        Next j

        nBufferPos = 0
    Else
        j = 0
    End If

    ' Buffer remaining data
    For i = 0 To DataLen - j - 1
        m_Buffer(nBufferPos + i) = Data(j + i)
    Next i
End Sub

' MD5Transform - The core 64-round MD5 transformation
Private Sub MD5Transform(ByRef Block() As Byte)
    Dim A As Long, B As Long, C As Long, D As Long
    Dim X(0 To 15) As Long

    ' Save state
    A = m_State(1)
    B = m_State(2)
    C = m_State(3)
    D = m_State(4)

    ' Convert bytes to longs
    BytesToLongs Block, X, 64

    ' Round 1 (FF function)
    FF A, B, C, D, X(0), 7, -680876936
    FF D, A, B, C, X(1), 12, -389564586
    FF C, D, A, B, X(2), 17, 606105819
    FF B, C, D, A, X(3), 22, -1044525330
    FF A, B, C, D, X(4), 7, -176418897
    FF D, A, B, C, X(5), 12, 1200080426
    FF C, D, A, B, X(6), 17, -1473231341
    FF B, C, D, A, X(7), 22, -45705983
    FF A, B, C, D, X(8), 7, 1770035416
    FF D, A, B, C, X(9), 12, -1958414417
    FF C, D, A, B, X(10), 17, -42063
    FF B, C, D, A, X(11), 22, -1990404162
    FF A, B, C, D, X(12), 7, 1804603682
    FF D, A, B, C, X(13), 12, -40341101
    FF C, D, A, B, X(14), 17, -1502002290
    FF B, C, D, A, X(15), 22, 1236535329

    ' Round 2 (GG function)
    GG A, B, C, D, X(1), 5, -165796510
    GG D, A, B, C, X(6), 9, -1069501632
    GG C, D, A, B, X(11), 14, 643717713
    GG B, C, D, A, X(0), 20, -373897302
    GG A, B, C, D, X(5), 5, -701558691
    GG D, A, B, C, X(10), 9, 38016083
    GG C, D, A, B, X(15), 14, -660478335
    GG B, C, D, A, X(4), 20, -405537848
    GG A, B, C, D, X(9), 5, 568446438
    GG D, A, B, C, X(14), 9, -1019803690
    GG C, D, A, B, X(3), 14, -187363961
    GG B, C, D, A, X(8), 20, 1163531501
    GG A, B, C, D, X(13), 5, -1444681467
    GG D, A, B, C, X(2), 9, -51403784
    GG C, D, A, B, X(7), 14, 1735328473
    GG B, C, D, A, X(12), 20, -1926607734

    ' Round 3 (HH function)
    HH A, B, C, D, X(5), 4, -378558
    HH D, A, B, C, X(8), 11, -2022574463
    HH C, D, A, B, X(11), 16, 1839030562
    HH B, C, D, A, X(14), 23, -35309556
    HH A, B, C, D, X(1), 4, -1530992060
    HH D, A, B, C, X(4), 11, 1272893353
    HH C, D, A, B, X(7), 16, -155497632
    HH B, C, D, A, X(10), 23, -1094730640
    HH A, B, C, D, X(13), 4, 681279174
    HH D, A, B, C, X(0), 11, -358537222
    HH C, D, A, B, X(3), 16, -722521979
    HH B, C, D, A, X(6), 23, 76029189
    HH A, B, C, D, X(9), 4, -640364487
    HH D, A, B, C, X(12), 11, -421815835
    HH C, D, A, B, X(15), 16, 530742520
    HH B, C, D, A, X(2), 23, -995338651

    ' Round 4 (II function)
    II A, B, C, D, X(0), 6, -198630844
    II D, A, B, C, X(7), 10, 1126891415
    II C, D, A, B, X(14), 15, -1416354905
    II B, C, D, A, X(5), 21, -57434055
    II A, B, C, D, X(12), 6, 1700485571
    II D, A, B, C, X(3), 10, -1894986606
    II C, D, A, B, X(10), 15, -1051523
    II B, C, D, A, X(1), 21, -2054922799
    II A, B, C, D, X(8), 6, 1873313359
    II D, A, B, C, X(15), 10, -30611744
    II C, D, A, B, X(6), 15, -1560198380
    II B, C, D, A, X(13), 21, 1309151649
    II A, B, C, D, X(4), 6, -145523070
    II D, A, B, C, X(11), 10, -1120210379
    II C, D, A, B, X(2), 15, 718787259
    II B, C, D, A, X(9), 21, -343485551

    ' Add to state
    m_State(1) = UnsignedAdd(A, m_State(1))
    m_State(2) = UnsignedAdd(B, m_State(2))
    m_State(3) = UnsignedAdd(C, m_State(3))
    m_State(4) = UnsignedAdd(D, m_State(4))
End Sub

' BytesToLongs - Convert byte array to long array
Private Sub BytesToLongs(ByRef Bytes() As Byte, ByRef Longs() As Long, ByVal ByteCount As Integer)
    Dim i As Integer
    Dim j As Integer
    Dim dValue As Double

    j = 0
    For i = 0 To ByteCount - 1 Step 4
        dValue = CDbl(Bytes(i)) + _
                 CDbl(Bytes(i + 1)) * &H100 + _
                 CDbl(Bytes(i + 2)) * &H10000 + _
                 CDbl(Bytes(i + 3)) * &H1000000
        Longs(j) = ToUnsigned(dValue)
        j = j + 1
    Next i
End Sub

' FF - MD5 Round 1 auxiliary function
' F(x,y,z) = (x AND y) OR ((NOT x) AND z)
Private Sub FF(ByRef A As Long, ByVal B As Long, ByVal C As Long, ByVal D As Long, _
               ByVal X As Long, ByVal S As Long, ByVal AC As Long)
    A = UnsignedAdd4(A, (B And C) Or ((Not B) And D), X, AC)
    A = RotateLeft(A, S)
    A = UnsignedAdd(A, B)
End Sub

' GG - MD5 Round 2 auxiliary function
' G(x,y,z) = (x AND z) OR (y AND (NOT z))
Private Sub GG(ByRef A As Long, ByVal B As Long, ByVal C As Long, ByVal D As Long, _
               ByVal X As Long, ByVal S As Long, ByVal AC As Long)
    A = UnsignedAdd4(A, (B And D) Or (C And (Not D)), X, AC)
    A = RotateLeft(A, S)
    A = UnsignedAdd(A, B)
End Sub

' HH - MD5 Round 3 auxiliary function
' H(x,y,z) = x XOR y XOR z
Private Sub HH(ByRef A As Long, ByVal B As Long, ByVal C As Long, ByVal D As Long, _
               ByVal X As Long, ByVal S As Long, ByVal AC As Long)
    A = UnsignedAdd4(A, B Xor C Xor D, X, AC)
    A = RotateLeft(A, S)
    A = UnsignedAdd(A, B)
End Sub

' II - MD5 Round 4 auxiliary function
' I(x,y,z) = y XOR (x OR (NOT z))
Private Sub II(ByRef A As Long, ByVal B As Long, ByVal C As Long, ByVal D As Long, _
               ByVal X As Long, ByVal S As Long, ByVal AC As Long)
    A = UnsignedAdd4(A, C Xor (B Or (Not D)), X, AC)
    A = RotateLeft(A, S)
    A = UnsignedAdd(A, B)
End Sub

' RotateLeft - Rotate bits left by specified amount
Private Function RotateLeft(ByVal Value As Long, ByVal Bits As Long) As Long
    Dim lHigh As Long
    Dim i As Long

    Bits = Bits Mod 32
    If Bits = 0 Then
        RotateLeft = Value
        Exit Function
    End If

    For i = 1 To Bits
        lHigh = Value And &HC0000000
        Value = (Value And &H3FFFFFFF) * 2
        Value = Value Or ((lHigh < 0) And 1)
        Value = Value Or ((lHigh And &H40000000) And &H80000000)
    Next i

    RotateLeft = Value
End Function

' UnsignedAdd - Add two unsigned 32-bit values
Private Function UnsignedAdd(ByVal Value1 As Long, ByVal Value2 As Long) As Long
    Dim lLowSum As Long
    Dim lHighSum As Long
    Dim lCarry As Long

    lLowSum = (Value1 And &HFFFF&) + (Value2 And &HFFFF&)
    lCarry = lLowSum \ &H10000

    lHighSum = ((Value1 And &HFFFF0000) \ &H10000) + _
               ((Value2 And &HFFFF0000) \ &H10000) + _
               lCarry
    lHighSum = lHighSum And &HFFFF&

    UnsignedAdd = ToUnsigned(CDbl(lHighSum) * &H10000 + (lLowSum And &HFFFF&))
End Function

' UnsignedAdd4 - Add four unsigned 32-bit values
Private Function UnsignedAdd4(ByVal V1 As Long, ByVal V2 As Long, ByVal V3 As Long, ByVal V4 As Long) As Long
    Dim lLowSum As Long
    Dim lHighSum As Long
    Dim lCarry As Long

    lLowSum = (V1 And &HFFFF&) + (V2 And &HFFFF&) + (V3 And &HFFFF&) + (V4 And &HFFFF&)
    lCarry = lLowSum \ &H10000

    lHighSum = ((V1 And &HFFFF0000) \ &H10000) + _
               ((V2 And &HFFFF0000) \ &H10000) + _
               ((V3 And &HFFFF0000) \ &H10000) + _
               ((V4 And &HFFFF0000) \ &H10000) + _
               lCarry
    lHighSum = lHighSum And &HFFFF&

    UnsignedAdd4 = ToUnsigned(CDbl(lHighSum) * &H10000 + (lLowSum And &HFFFF&))
End Function

' ToUnsigned - Convert Double to signed Long (handles values > 2^31)
Private Function ToUnsigned(ByVal Value As Double) As Long
    If Value < 0 Or Value >= 4294967296# Then
        Err.Raise 6 ' Overflow
    ElseIf Value <= 2147483647 Then
        ToUnsigned = CLng(Value)
    Else
        ToUnsigned = CLng(Value - 4294967296#)
    End If
End Function

' ToSigned - Convert signed Long to unsigned Double
Private Function ToSigned(ByVal Value As Long) As Double
    If Value < 0 Then
        ToSigned = CDbl(Value) + 4294967296#
    Else
        ToSigned = CDbl(Value)
    End If
End Function

' SimpleEncrypt - XOR-based encryption with password
' Encrypts/decrypts data using password-derived key
Public Function SimpleEncrypt(ByVal Text As String, ByVal Password As String, ByVal Decrypt As Boolean) As String
    Dim abPassword() As Byte
    Dim abData() As Byte
    Dim abHalfData() As Byte
    Dim nTextLen As Long
    Dim nAverage As Long
    Dim nCharCode As Long
    Dim nKeyPos As Long
    Dim i As Integer

    nTextLen = Len(Text)

    ' Convert password to bytes
    abPassword = StrConv(Password, vbFromUnicode)

    ReDim abData(0 To nTextLen - 1)
    ReDim abHalfData(0 To nTextLen - 1)

    ' Build data and half-data arrays
    For i = 0 To nTextLen - 1
        abData(i) = Asc(Mid$(Text, i + 1, 1))
        abHalfData(i) = abData(i) / 2
        nAverage = nAverage + abData(i)
    Next i

    nAverage = nAverage / nTextLen

    ' Modify data with average
    For i = 0 To nTextLen - 1
        abData(i) = (abData(i) + nAverage) / 2
    Next i

    ' XOR with password
    For i = 0 To UBound(abPassword)
        nKeyPos = i Mod nTextLen
        nCharCode = abPassword(i)

        ' XOR with data if decrypting
        If Decrypt Then
            nCharCode = nCharCode Xor abData(nKeyPos)
        End If

        ' Check if in printable range
        If nCharCode >= &H30 And nCharCode <= &H96 Then
            If Decrypt Then
                nCharCode = nCharCode + abHalfData(nKeyPos)
            Else
                nCharCode = nCharCode - abHalfData(nKeyPos)
            End If

            ' Wrap around if out of range
            If nCharCode > &H96 Then
                nCharCode = nCharCode - &H96 + &H30 - 1
            ElseIf nCharCode < &H30 Then
                nCharCode = nCharCode + &H96 - &H30 + 1
            End If
        End If

        ' XOR with data if encrypting
        If Not Decrypt Then
            nCharCode = nCharCode Xor abData(nKeyPos)
        End If

        abPassword(i) = nCharCode
    Next i

    SimpleEncrypt = StrConv(abPassword, vbUnicode)
End Function

' URLEncode - Encode string for URL
Public Function URLEncode(ByVal Text As String) As String
    Dim sResult As String
    Dim nCharCode As Integer
    Dim sHex As String
    Dim i As Integer

    For i = 1 To Len(Text)
        nCharCode = Asc(Mid$(Text, i, 1))

        ' Keep alphanumeric characters
        If (nCharCode >= &H30 And nCharCode <= &H39) Or _
           (nCharCode >= &H41 And nCharCode <= &H5A) Or _
           (nCharCode >= &H61 And nCharCode <= &H7A) Then
            sResult = sResult & Mid$(Text, i, 1)
        ElseIf nCharCode = &H20 Then
            ' Space -> %20
            sResult = sResult & "%" & Hex$(32)
        Else
            ' Encode other characters
            sHex = Hex$(Asc(Mid$(Text, i, 1)))
            If Len(sHex) = 1 Then sHex = "0" & sHex
            sResult = sResult & "%" & sHex
        End If
    Next i

    URLEncode = sResult
End Function

' URLDecode - Decode URL-encoded string
Public Function URLDecode(ByVal Text As String) As String
    Dim sResult As String
    Dim i As Integer
    Dim vChar As Variant

    i = 1
    Do While i - 1 <> Len(Text)
        vChar = Mid(Text, i, 1)

        If vChar = "%" Then
            ' Decode hex sequence
            sResult = sResult & Chr$(CLng(Val("&H" & Mid(Text, i + 1, 2))))
            i = i + 3
        Else
            ' Keep character as-is
            sResult = sResult & Mid(Text, i, 1)
            i = i + 1
        End If
    Loop

    URLDecode = sResult
End Function

' BytesToHex - Convert byte array to hex string
Public Function BytesToHex(ByRef Data() As Byte) As String
    Dim sResult As String
    Dim sHex As String
    Dim i As Integer

    For i = 0 To UBound(Data)
        sHex = Hex$(Data(i))
        If Len(sHex) = 1 Then sHex = "0" & sHex
        sResult = sResult & sHex
    Next i

    BytesToHex = sResult
End Function

' HexToBytes - Convert hex string to byte array
Public Function HexToBytes(ByVal HexString As String) As Byte()
    Dim abResult() As Byte
    Dim i As Integer

    ReDim abResult(0 To Len(HexString) / 2 - 1)

    For i = 0 To UBound(abResult)
        abResult(i) = CLng(Val("&H" & Mid(HexString, i * 2 + 1, 2)))
    Next i

    HexToBytes = abResult
End Function

' Wrapper functions for EncryptionTools.cls compatibility
Public Function EncryptDecrypt(ByVal PublicKey As String, ByVal Data As String, ByVal Encrypt As Boolean) As String
    EncryptDecrypt = SimpleEncrypt(Data, PublicKey, Not Encrypt)
End Function

Public Function GetMD5String(ByVal Data As String) As String
    GetMD5String = MD5DigestString(Data)
End Function

Public Function GetMD5File(ByVal Filename As String) As String
    GetMD5File = MD5DigestFile(Filename)
End Function

Public Function EncodeURL(ByVal Data As String) As Variant
    EncodeURL = URLEncode(Data)
End Function

Public Function DecodeURL(ByVal Data As String) As Variant
    DecodeURL = URLDecode(Data)
End Function

Public Function EncodeBinaryURL(ByVal Data As String) As Variant
    EncodeBinaryURL = URLEncode(Data)
End Function

Public Function DecodeBinaryURL(ByVal Data As String) As Variant
    DecodeBinaryURL = URLDecode(Data)
End Function
