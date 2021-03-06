VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsProcessor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private Const EMPTY_COMMAND As Byte = 255

Public logx                 As clsLog

Private lastCommand         As Byte

Private strings             As New cCollection

Public samples              As New cCollection

Public members              As New cCollection

Public isSetup              As Boolean

Public Sub processCommand(ByRef Data As clsSocketData)

    Dim result As Boolean
    
    If (lastCommand = EMPTY_COMMAND And Data.bytesAvailable > 0) Then
        Data.ReadData8 lastCommand
    End If
    
    If (lastCommand <> EMPTY_COMMAND) Then
        processInternal Data, result

        Do While result
            lastCommand = EMPTY_COMMAND

            If (Data.bytesAvailable > 0) Then
                Data.ReadData8 lastCommand
            End If

            processInternal Data, result
        Loop

    End If

    Data.Complete
End Sub

Public Sub processInternal(ByRef Data As clsSocketData, ByRef result As Boolean)

    result = False

    If (C_NEW_OBJECT_SAMPLE = lastCommand) Then

            Dim newSample As New clsNewObjectSample

            newSample.bytesAvailable Data, result

            If (result) Then
                newSample.parse Data
                'logx.xInfo "create: id=" & newSample.getId & " type=" & newSample.getType & " size=" & newSample.getSize
                'samples.Add newSample, "" & newSample.getId
            End If

        ElseIf (C_DELETE_OBJECT_SAMPLE = lastCommand) Then

            Dim delSample As New clsDeleteObjectSample

            delSample.bytesAvailable Data, result

            If (result) Then
                delSample.parse Data
                'logx.xInfo "delete: id=" & delSample.getId & " size=" & newSample.getSize
                'samples.Remove "" & delSample.getId
            End If

        ElseIf (C_SAMPLE = lastCommand) Then

            Dim sample As New clsSample

            If (sample.bytesAvailable(Data)) Then
    
                Set sample.strings = strings
                sample.parse Data
                '                Dim line As clsStackTraceLine
                '                logger "sample size=" & sample.getValue.size
                '                For Each line In sample.getValue.lines
                '                    logger "line:" & line.name & ":" & line.fileName & "(" & line.line & ")"
                '                Next
                    
                '                logger "sample loaded"
                'logx.xInfo "sample loaded"
                result = True
            End If

        ElseIf (C_STRING = lastCommand) Then

            Dim str As New clsString

            If (str.bytesAvailable(Data)) Then
                str.parse Data
                'logx.xInfo "string=" & str.getValue
    
                If (strings.Count < str.getKey) Then
                    strings.Add str.getValue
                End If
    
                result = True
            End If
                
        ElseIf (C_SWF = lastCommand) Then

            Dim swf As New clsSWF

            swf.bytesAvailable Data, result

            If (result) Then
                swf.parse Data
                logx.xInfo "swf size=" & swf.getSize
                logx.xInfo "swf url=" & strings.item(swf.getKey)
    
                If (Not isSetup) Then

                    'send commands
                    Dim commands(0 To 6) As Byte
        
                    commands(0) = C_MEMORY_PROFILING
                    commands(1) = 1
                    commands(2) = C_MEMORY_PROFILING_STACKTRACES
                    commands(3) = 1
                    commands(4) = C_PERFORMANCE_PROFILING
                    commands(5) = 1
                    commands(6) = C_RESUME
                    Data.socket.SendData commands
                    isSetup = True
                End If
            End If

        ElseIf (C_GC = lastCommand) Then

            Dim gc As New clsGC

            If (gc.bytesAvailable(Data)) Then
                gc.parse Data
                logx.xInfo "gc"
                result = True
            End If

    End If

End Sub

Private Sub Class_Initialize()
    lastCommand = EMPTY_COMMAND
End Sub

'    void process()
'            throws IOException
'    {
'        int command;
'        while ((command = this.in.read()) != -1)
'        {
'            Switch (Command)
'            {
'                Case 0:
'                    readSample();
'                    break;
'                Case 1:
'                    readNewObjectSample();
'                    break;
'                Case 2:
'                    readDeleteObjectSample();
'                    break;
'                Case 3:
'                    readMembers();
'                    break;
'                Case 4:
'                    readSwf();
'                    break;
'                Case 5:
'                    this.playerSession.done();
'                    break;
'                Case 6:
'                    readString();
'                    break;
'                Case 7:
'                    readCounts();
'                    break;
'            }
'
'            throw new IOException("Unknown 'agent -> profiler' command: " + command);
'        }
'    }

