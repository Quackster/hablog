Attribute VB_Name = "modIcon"
Option Explicit

' ============================================================================
' Global Variable Declarations
' This module contains all global variables used across the HabLog project
' ============================================================================

' ============================================================================
' User Data Type Definition
' Stores session data for each connected user
' ============================================================================
Public Type UserDataType
    ' Identity
    Username As String          ' User's username
    UserNum As Long             ' User number/ID
    Ticket As String            ' Session ticket
    TicketStatus As Integer     ' Ticket status
    TicketUsed As Boolean       ' Ticket used flag

    ' Room location
    RoomId As Double            ' Private room ID (0 = not in room)
    PublicRoomId As Integer     ' Public room ID (0 = not in room)
    PublicRoom As Integer       ' Public room indicator
    PublicRoomData As String    ' Public room data
    RoomSlot As String          ' Room slot identifier
    RoomName As String          ' Current room name
    RoomNum As Integer          ' Room number
    RoomType As Integer         ' Room type
    RoomUnitId As Integer       ' Room unit ID (slot number)
    RoomIdString As String      ' Room ID as string
    RoomPosition As String      ' Room position string
    CurrentRoom As String       ' Current room identifier
    InRoom As Boolean           ' Is in a room
    TargetRoom As Long          ' Target room ID

    ' Position and movement
    PosX As Integer             ' X position
    PosY As Integer             ' Y position
    Height As Double            ' Current height
    DestX As Integer            ' Destination X
    DestY As Integer            ' Destination Y
    DestHeight As Double        ' Destination height
    TargetX As Integer          ' Target X
    TargetY As Integer          ' Target Y
    TargetHeight As Double      ' Target height
    TargetPos As String         ' Target position string
    Movement As String          ' Movement data
    MoveTimer As Integer        ' Movement timer index
    Moving As Boolean           ' Is moving flag
    OnRoller As Boolean         ' On roller flag
    TriggerWalk As Boolean      ' Trigger walk flag

    ' Appearance
    Figure As String            ' User figure string
    Sex As String               ' User sex (M/F)
    Badge As String             ' User badge
    GroupBadge As String        ' Group badge

    ' State flags
    State As Integer            ' User state/status
    Rank As String              ' User rank
    IsConnected As Boolean      ' Connected flag
    IsDancing As Boolean        ' Dancing flag
    IsTalking As Boolean        ' Talking flag
    IsWaving As Boolean         ' Waving flag
    IsVanished As Boolean       ' Vanished flag
    VanishStatus As Boolean     ' Vanish status
    VanishVisible As Boolean    ' Vanish visible
    WaveStatus As Boolean       ' Wave status
    Sitting As Boolean          ' Sitting flag
    DrinkStatus As Boolean      ' Drink status
    NeedUpdate As Boolean       ' Needs update flag

    ' Gestures
    CurrentGesture As String    ' Current gesture
    GestureActive As Boolean    ' Gesture active flag

    ' Teleporting
    IsTeleporting As Boolean    ' Teleporting flag
    TeleportId As String        ' Teleport ID
    TeleportDest As String      ' Teleport destination
    TeleportStep As Integer     ' Teleport step

    ' Swimming/Pool
    Swim As Boolean             ' Swimming flag
    SwimStatus As Integer       ' Swim status
    SwimAction As String        ' Swim action
    SwimFigure As String        ' Swimming figure
    PoolFigure As String        ' Pool figure
    PoolZone As Integer         ' Pool zone
    PoolAnimation As String     ' Pool animation
    PoolTrigger As Boolean      ' Pool trigger
    PoolDoorOpen As Boolean     ' Pool door open
    VoteSwim As Boolean         ' Vote swim
    VoteWalk As Boolean         ' Vote walk

    ' Dice
    DiceRolling As Boolean      ' Dice rolling flag
    DiceResult As Integer       ' Dice result

    ' Misc
    LastPacket As String        ' Last packet received
    LocaleKey As String         ' Locale key
    PingCount As Integer        ' Ping counter
    SocketQueue As String       ' Socket queue
    TempData As String          ' Temporary data storage
    UsingItem As String         ' Item being used

    ' Trading
    TradePartner As Integer     ' Trade partner socket index
    TradeItems As String        ' Items being traded
    TradeAccepted As Boolean    ' Trade accepted flag

    ' Carry Items
    CarryItem As String         ' Item being carried (drink, etc.)
    CarryTimer As Integer       ' Carry item timer (ticks remaining)

    ' Permission Flags
    CanDisconnect As Boolean    ' Can disconnect other users
    CanDebug As Boolean         ' Access to debug commands
    CanWhenSunban As Boolean    ' Can check when user will be unbanned
    CanFracts As Boolean        ' Can view infractions
    CanInfract As Boolean       ' Can issue infractions
    CanInfract2 As Boolean      ' Can issue infractions (alternate)
    CanViewInfracts As Boolean  ' Can view infractions
    CanWheres As Boolean        ' Can find where a user is
    CanAnswer As Boolean        ' Can answer CFH calls
    CanEmail As Boolean         ' Can view user emails
    CanResetVoters As Boolean   ' Can reset poll voters
    CanSetScores As Boolean     ' Can set game scores
    CanSentLog As Boolean       ' Can view sent messages log
    CanClearLog As Boolean      ' Can clear chat logs
    CanGetClient As Boolean     ' Can get client info
    CanStartLog As Boolean      ' Can start logging
    CanStopLog As Boolean       ' Can stop logging
    CanJail As Boolean          ' Can jail users
    CanGiveCredits As Boolean   ' Can give credits to users
    CanTakeCredits As Boolean   ' Can take credits from users
    CanClearConsole As Boolean  ' Can clear console
    CanClearHand As Boolean     ' Can clear user hand (inventory)
    CanGiveDrink As Boolean     ' Can give drinks to users
    CanMassCredits As Boolean   ' Can give credits to all users
    CanBot As Boolean           ' Can control bots
    CanPoll As Boolean          ' Can create/manage polls
    CanGroup As Boolean         ' Can manage groups
    CanWarp As Boolean          ' Can warp to locations
    CanUserWarp As Boolean      ' Can warp users

    ' Additional State Fields
    RoomState As Integer        ' Room state
    TradeState As Integer       ' Trade state
    TradingWith As Integer      ' Trading partner index
    IsTrading As Boolean        ' Is currently trading
    IsSitting As Boolean        ' Is sitting (alternate)
    IsLaying As Boolean         ' Is laying down
    IsWalking As Boolean        ' Is walking
    IsBanned As Boolean         ' Is banned
    BannedState As Integer      ' Banned state
    BannedUser As String        ' Banned by user

    ' Direction and Dance
    Direction As Integer        ' Body direction (0-7)
    HeadDirection As Integer    ' Head direction (0-7)
    DanceStyle As Integer       ' Dance style number

    ' Location
    CurrentLocation As String   ' Current location string
    CurrentAction As String     ' Current action string
    InHotelView As Boolean      ' In hotel view
    InTeleporter As Boolean     ' In a teleporter
    OwnerRoomId As Long         ' Owner's room ID

    ' Teleporter Extended
    TeleporterReady As Boolean  ' Teleporter is ready
    TeleporterName As String    ' Teleporter name
    TeleX As Integer            ' Teleporter X position
    TeleY As Integer            ' Teleporter Y position
    TeleHeight As Double        ' Teleporter height

    ' Timer
    TimerActive As Boolean      ' Timer is active
    TimerEnabled As Boolean     ' Timer is enabled
    TimerId As Integer          ' Timer ID
    TimerInterval As Long       ' Timer interval
    TimerData As String         ' Timer data

    ' Misc Extended
    ChatLog As String           ' Chat log
    CommandValue As String      ' Command value
    DirectMail As Boolean       ' Direct mail enabled
    InventoryPage As Integer    ' Current inventory page
    Tag As String               ' User tag
    Tags As String              ' User tags
    TypingStatus As Boolean     ' Is typing
    UserType As Integer         ' User type
    SomeFlag1 As Boolean        ' Misc flag 1
    SomeFlag2 As Boolean        ' Misc flag 2
    SomeFlag3 As Boolean        ' Misc flag 3
End Type

' ============================================================================
' Pet Data Type Definition
' Stores data for pets
' ============================================================================
Public Type PetDataType
    Name As String              ' Pet name
    PetName As String           ' Pet name (alias)
    Type As String              ' Pet type
    Race As String              ' Pet race/breed
    Color As String             ' Pet color
    Hunger As Integer           ' Hunger level
    Thirst As Integer           ' Thirst level
    Happiness As Integer        ' Happiness level
    Energy As Integer           ' Energy level
    Nature As String            ' Pet nature type
    NatureLevel As Integer      ' Nature level
    Birthday As Date            ' Pet birthday

    ' Location
    RoomId As Long              ' Current room ID
    OwnerRoomId As Long         ' Owner's room ID
    PosX As Integer             ' X position
    PosY As Integer             ' Y position
    CurrentX As Integer         ' Current X position (alias)
    CurrentY As Integer         ' Current Y position (alias)
    Height As Variant           ' Height value
    TargetX As Integer          ' Target X position
    TargetY As Integer          ' Target Y position
    TargetPos As String         ' Target position string

    ' Nest
    NestId As String            ' Nest furniture ID
    NestX As Integer            ' Nest X position
    NestY As Integer            ' Nest Y position
    IsGoingToNest As Integer    ' Going to nest flag

    ' State/Animation
    Moving As Boolean           ' Is moving flag
    Sitting As Boolean          ' Is sitting flag
    MoveTimer As Integer        ' Movement timer
    ActionString As String      ' Action string
    StatusText As String        ' Status text
    PetPose As String           ' Pet pose
    PetDirection As Integer     ' Pet body direction
    HeadDirection As Integer    ' Pet head direction
    AnimFrame1 As Integer       ' Animation frame 1
    AnimFrame2 As Integer       ' Animation frame 2
    PetMood As Integer          ' Pet mood

    ' Actions
    PetAction1 As Integer       ' Pet action 1
    PetAction2 As Integer       ' Pet action 2
    PetAction3 As Integer       ' Pet action 3
    IsSleeping As Integer       ' Is sleeping flag
    SleepTimer As Integer       ' Sleep timer

    ' Extended
    FurniId As Long             ' Furniture ID
    PetVar1 As Integer          ' Pet variable 1
    PetVar2 As Integer          ' Pet variable 2
    ArrayIndex As Long          ' Array index
    Action As String            ' Current action
    Alive As Boolean            ' Is alive
    DrinkTimer As Integer       ' Drink timer
    EatTimer As Integer         ' Eat timer
    SleepDuration As Integer    ' Sleep duration
    Health As String            ' Health status
    Figure As String            ' Pet figure
    IsSitting As Boolean        ' Is sitting
    IsLaying As Boolean         ' Is laying
    Gesture As String           ' Current gesture
    HasAction As Boolean        ' Has active action
End Type

' ============================================================================
' Bot Data Type Definition
' Stores data for room bots
' ============================================================================
Public Type BotDataType
    Name As String              ' Bot name
    Figure As String            ' Bot figure string
    Sex As String               ' Bot sex (M/F)
    Mission As String           ' Bot mission/motto
    Look As String              ' Bot look data

    ' Position
    PosX As Integer             ' Current X position
    PosY As Integer             ' Current Y position
    CurrentX As Integer         ' Current X (alias)
    CurrentY As Integer         ' Current Y (alias)
    StartX As Integer           ' Starting X position
    StartY As Integer           ' Starting Y position
    Height As Double            ' Current height
    Heightmap As String         ' Room heightmap

    ' Movement
    TargetX As Integer          ' Target X position
    TargetY As Integer          ' Target Y position
    TargetPos As String         ' Target position string
    Moving As Boolean           ' Is moving flag
    BodyDirection As Integer    ' Body direction
    HeadDirection As Integer    ' Head direction

    ' Room
    RoomId As Long              ' Room ID
    PublicRoomId As Integer     ' Public room ID
    RoomSlot As String          ' Room slot

    ' State
    IsEnabled As Boolean        ' Bot enabled
    IsDisabled As Boolean       ' Bot disabled
    IsTalking As Boolean        ' Bot talking
    NeedUpdate As Boolean       ' Needs update
    IsBusy As Boolean           ' Bot is busy
    IsSpeaking As Boolean       ' Bot is speaking
    IsWalking As Boolean        ' Bot is walking
End Type

' Height Map Type for public room pathfinding
Public Type TileDataType
    TileType As String          ' Tile type (O, D, R, S, L, X, etc.)
End Type

' CheckState Type - Simulates a CheckBox control
Public Type CheckState
    Value As Integer            ' 0 = unchecked, 1 = checked
End Type

' TextState Type - Simulates a TextBox control
Public Type TextState
    Text As String              ' Text content
End Type

' ============================================================================
' Global Variables (declared after Types)
' ============================================================================

' File System and Paths
Public gFSO As Object                   ' FileSystemObject for file operations
Public gAppPath As String               ' Application base path (database folder)
Public gSettingsFile As String          ' Path to settings.ini

' User Data Arrays
Public gUserData() As UserDataType      ' Per-socket user session data
Public gUsernames() As String           ' Username lookup by socket index
Public gPetData() As PetDataType        ' Pet data array
Public gBotData() As BotDataType        ' Bot data array
Public gRoomData() As Variant           ' Room data array

' System State
Public gIsWinNT As Integer              ' Windows NT flag (0 or 1)
Public gShutdownPrivilege As Long       ' Shutdown privilege handle
Public gLoggedInUsers As String         ' Logged in user IDs tracking

' Note: frmMain is auto-declared by VB6 as a form module
' Do not declare it here - just reference frmMain directly

' ============================================================================
' Helper Functions
' ============================================================================

' GetHeightMapTileType - Returns tile type for public room pathfinding
' This is a stub function - public room heightmaps are loaded elsewhere
Public Function GetHeightMapTileType(ByVal RoomId As Integer, ByVal X As Integer, ByVal Y As Integer) As String
    ' Return empty string by default - actual heightmap lookups happen via file-based system
    GetHeightMapTileType = vbNullString
End Function

' ============================================================================
' INI File Wrapper Functions
' These wrap the modINI functions with different parameter orders
' ============================================================================

' ReadIniSetting - Reads from INI file (File, Section, Key order)
Public Function ReadIniSetting(ByVal sFile As String, ByVal sSection As String, ByVal sKey As String) As String
    ReadIniSetting = GetINI(sSection, sKey, sFile)
End Function

' WriteIniSetting - Writes to INI file (File, Section, Key, Value order)
Public Sub WriteIniSetting(ByVal sFile As String, ByVal sSection As String, ByVal sKey As String, ByVal sValue As String)
    WriteINI sSection, sKey, sValue, sFile
End Sub

' ============================================================================
' Initialization Sub
' Call this to initialize global objects
' ============================================================================
Public Sub InitializeGlobals()
    ' Create FileSystemObject
    Set gFSO = CreateObject("Scripting.FileSystemObject")

    ' Initialize arrays (will be resized as needed)
    ReDim gUserData(1 To 1000)
    ReDim gUsernames(1 To 1000)
    ReDim gPetData(1 To 1000)
    ReDim gBotData(1 To 100)
End Sub
