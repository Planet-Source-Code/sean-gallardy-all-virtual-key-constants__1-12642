Attribute VB_Name = "ModVKey"
'Declares
Public Declare Sub keybd_event Lib "user32" (ByVal bVk As Byte, ByVal bScan As Byte, ByVal dwFlags As Long, ByVal dwExtraInfo As Long)

'Flag Constants
Public Const KEYEVENTF_EXTENDEDKEY = &H1
Public Const KEYEVENTF_KEYUP = &H2

'Other Key Constants
Public Const VK_ACCEPT = &H1E
Public Const VK_ADD = &H6B
Public Const VK_APPS = &H5D
Public Const VK_ATTN = &HF6
Public Const VK_BACK = &H8
Public Const VK_BROWSER_BACK = &HA6
Public Const VK_BROWSER_FAVORITES = &HAB
Public Const VK_BROWSER_HOME = &HAC
Public Const VK_BROWSER_REFRESH = &HA8
Public Const VK_BROWSER_SEARCH = &HAA
Public Const VK_BROWSER_STOP = &HA9
Public Const VK_CANCEL = &H3
Public Const VK_CAPITAL = &H14
Public Const VK_CLEAR = &HC
Public Const VK_CONTROL = &H11
Public Const VK_CONVERT = &H1C
Public Const VK_CRSEL = &HF7
Public Const VK_DECIMAL = &H6E
Public Const VK_DELETE = &H2E
Public Const VK_DIVIDE = &H6F
Public Const VK_DOWN = &H28
Public Const VK_END = &H23
Public Const VK_EREOF = &HF9
Public Const VK_ESCAPE = &H1B
Public Const VK_EXECUTE = &H2B
Public Const VK_EXSEL = &HF8
Public Const VK_F1 = &H70
Public Const VK_F10 = &H79
Public Const VK_F11 = &H7A
Public Const VK_F12 = &H7B
Public Const VK_F13 = &H7C
Public Const VK_F14 = &H7D
Public Const VK_F15 = &H7E
Public Const VK_F16 = &H7F
Public Const VK_F17 = &H80
Public Const VK_F18 = &H81
Public Const VK_F19 = &H82
Public Const VK_F2 = &H71
Public Const VK_F20 = &H83
Public Const VK_F21 = &H84
Public Const VK_F22 = &H85
Public Const VK_F23 = &H86
Public Const VK_F24 = &H87
Public Const VK_F3 = &H72
Public Const VK_F4 = &H73
Public Const VK_F5 = &H74
Public Const VK_F6 = &H75
Public Const VK_F7 = &H76
Public Const VK_F8 = &H77
Public Const VK_F9 = &H78
Public Const VK_FINAL = &H18
Public Const VK_HANGUL = &H15
Public Const VK_HANGUEL = &H15
Public Const VK_HELP = &H2F
Public Const VK_HOME = &H24
Public Const VK_INSERT = &H2D
Public Const VK_JUNJA = &H17
Public Const VK_KANA = &H15
Public Const VK_LAUNCH_APP1 = &HB6
Public Const VK_LAUNCH_APP2 = &HB7
Public Const VK_LAUNCH_MAIL = &HB4
Public Const VK_LAUNCH_MEDIA_SELECT = &HB5
Public Const VK_LBUTTON = &H1
Public Const VK_LCONTROL = &HA2
Public Const VK_LEFT = &H25
Public Const VK_LMENU = &HA4
Public Const VK_LSHIFT = &HA0
Public Const VK_LWIN = &H5B
Public Const VK_MBUTTON = &H4
Public Const VK_MEDIA_NEXT_TRACK = B0
Public Const VK_MEDIA_PREV_TRACK = &HB1
Public Const VK_MEDIA_PLAY_PAUSE = &HB3
Public Const VK_MEDIA_STOP = &HB2
Public Const VK_MENU = &H12
Public Const VK_MODECHANGE = &H1F
Public Const VK_MULTIPLY = &H6A
Public Const VK_NEXT = &H22
Public Const VK_NONAME = &HFC
Public Const VK_NONCONVERT = &H1D
Public Const VK_NUMLOCK = &H90
Public Const VK_NUMPAD0 = &H60
Public Const VK_NUMPAD1 = &H61
Public Const VK_NUMPAD2 = &H62
Public Const VK_NUMPAD3 = &H63
Public Const VK_NUMPAD4 = &H64
Public Const VK_NUMPAD5 = &H65
Public Const VK_NUMPAD6 = &H66
Public Const VK_NUMPAD7 = &H67
Public Const VK_NUMPAD8 = &H68
Public Const VK_NUMPAD9 = &H69
Public Const VK_OEM_1 = &HBA
Public Const VK_OEM_102 = &HE2
Public Const VK_OEM_2 = &HBF
Public Const VK_OEM_3 = &HC0
Public Const VK_OEM_4 = &HDB
Public Const VK_OEM_5 = &HDC
Public Const VK_OEM_6 = &HDD
Public Const VK_OEM_7 = &HDE
Public Const VK_OEM_8 = &HDF
Public Const VK_OEM_CLEAR = &HFE
Public Const VK_OEM_COMMA = &HBC
Public Const VK_OEM_MINUS = &HBD
Public Const VK_OEM_PERIOD = &HBE
Public Const VK_OEM_PLUS = &HBB
Public Const VK_PA1 = &HFD
Public Const VK_PACKET = &HE7
Public Const VK_PAUSE = &H13
Public Const VK_PLAY = &HFA
Public Const VK_PRINT = &H2A
Public Const VK_PRIOR = &H21
Public Const VK_PROCESSKEY = &HE5
Public Const VK_RBUTTON = &H2
Public Const VK_RCONTROL = &HA3
Public Const VK_RETURN = &HD
Public Const VK_RIGHT = &H27
Public Const VK_RMENU = &HA5
Public Const VK_RSHIFT = &HA1
Public Const VK_RWIN = &H5C
Public Const VK_SCROLL = &H91
Public Const VK_SELECT = &H29
Public Const VK_SEPARATOR = &H6C
Public Const VK_SHIFT = &H10
Public Const VK_SLEEP = &H5F
Public Const VK_SNAPSHOT = &H2C
Public Const VK_SPACE = &H20
Public Const VK_SUBTRACT = &H6D
Public Const VK_TAB = &H9
Public Const VK_UP = &H26
Public Const VK_VOLUME_MUTE = &HAD
Public Const VK_VOLUME_DOWN = &HAE
Public Const VK_VOLUME_UP = &HAF
Public Const VK_XBUTTON1 = &H5
Public Const VK_XBUTTON2 = &H6
Public Const VK_ZOOM = &HFB

'Alphabet Key Contants
Public Const VK_A = &H41
Public Const VK_B = &H42
Public Const VK_C = &H43
Public Const VK_D = &H44
Public Const VK_E = &H45
Public Const VK_F = &H46
Public Const VK_G = &H47
Public Const VK_H = &H48
Public Const VK_I = &H49
Public Const VK_J = &H4A
Public Const VK_K = &H4B
Public Const VK_L = &H4C
Public Const VK_M = &H4D
Public Const VK_N = &H4E
Public Const VK_O = &H4F
Public Const VK_P = &H50
Public Const VK_Q = &H51
Public Const VK_R = &H52
Public Const VK_S = &H53
Public Const VK_T = &H54
Public Const VK_U = &H55
Public Const VK_V = &H56
Public Const VK_W = &H57
Public Const VK_X = &H58
Public Const VK_Y = &H59
Public Const VK_Z = &H5A

'Number Key Constansts
Public Const VK_0 = &H30
Public Const VK_1 = &H31
Public Const VK_2 = &H32
Public Const VK_3 = &H33
Public Const VK_4 = &H34
Public Const VK_5 = &H35
Public Const VK_6 = &H36
Public Const VK_7 = &H37
Public Const VK_8 = &H38
Public Const VK_9 = &H39
