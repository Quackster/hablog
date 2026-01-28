VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "EncryptionTools"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Option Explicit

' Encryption Tools wrapper class
' Provides encryption, hashing, and URL encoding functions

Public Function Encrypt(ByVal PublicKey As String, ByVal Data As String) As String
    Encrypt = EncryptDecrypt(PublicKey, Data, True)
End Function

Public Function Decrypt(ByVal PublicKey As String, ByVal Data As String) As String
    Decrypt = EncryptDecrypt(PublicKey, Data, False)
End Function

Public Function MD5HashString(ByVal Data As String) As String
    MD5HashString = GetMD5String(Data)
End Function

Public Function MD5HashFile(ByVal Filename As String) As String
    MD5HashFile = GetMD5File(Filename)
End Function

Public Function URLEncode(ByVal Data As String) As Variant
    URLEncode = EncodeURL(Data)
End Function

Public Function URLDecode(ByVal Data As String) As Variant
    URLDecode = DecodeURL(Data)
End Function

Public Function URLEncodeBinaryData(ByVal Data As String) As Variant
    URLEncodeBinaryData = EncodeBinaryURL(Data)
End Function

Public Function URLDecodeBinaryData(ByVal Data As String) As Variant
    URLDecodeBinaryData = DecodeBinaryURL(Data)
End Function
