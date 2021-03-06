VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsPreferences"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private Declare Function PathFileExists Lib "shlwapi" Alias "PathFileExistsA" (ByVal pszPath As String) As Long
Private Declare Function PathIsDirectory Lib "shlwapi" Alias "PathIsDirectoryA" (ByVal pszPath As String) As Long

Private Const PREFERENCES As String = "preferences"

Public prefs As New ARINIManager
Private initialized As Boolean



Public Sub initialize()
    If (Not initialized) Then
        Dim path As String
        path = getAppPath + "tracer.ini"
        Debug.Print "Preferences: " + path
        prefs.INIFile = path
        initialized = True

        If (Not FileExists(path)) Then
           MsgBox "Preferences file is not found: " + path, vbCritical
        End If
    End If
End Sub

Private Function FileExists(ByVal sPath As String) As Boolean
      If (PathFileExists(sPath)) And Not (PathIsDirectory(sPath)) Then FileExists = True
End Function

'server port --------------------------
Public Property Get minimize() As Boolean
    minimize = (Val(prefs.GetValue(PREFERENCES, "minimizetotray", "0")) = 1)
End Property

Public Property Let minimize(ByVal vNewValue As Boolean)
    Dim value As Long
    If (vNewValue) Then
        value = 1
    End If
    prefs.WriteValue PREFERENCES, "minimizetotray", Trim(Str(value))
End Property

'exec command
Public Property Get LogDir() As String
    'LogDir = prefs.GetValue(PREFERENCES, "logdir", "C:\Documents and Settings\user\Application Data\Macromedia\Flash Player\Logs\")
    LogDir = SpecialFolder(feUserAppData) + "\Macromedia\Flash Player\Logs\"
End Property

Public Property Let LogDir(ByVal vNewValue As String)
    prefs.WriteValue PREFERENCES, "logdir", vNewValue
End Property

Public Property Get alpha() As Long
    alpha = Val(prefs.GetValue(PREFERENCES, "alpha", "150"))
End Property

Public Property Let alpha(ByVal vNewValue As Long)
    prefs.WriteValue PREFERENCES, "alpha", Trim(Str(vNewValue))
End Property

Public Property Get wait() As Long
    wait = Val(prefs.GetValue(PREFERENCES, "wait", "10"))
End Property

Public Property Let wait(ByVal vNewValue As Long)
    prefs.WriteValue PREFERENCES, "wait", Trim(Str(vNewValue))
End Property
