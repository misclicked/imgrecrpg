--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:03e6b36cf8d7688f6a6ed6c20af4fb87:cd48c39dda943bbc72b6169062166284:a1d8d6df815539b2cf7f2cbbeb18a4d7$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- Enemies/blockerBody
            x=770,
            y=1841,
            width=51,
            height=51,

        },
        {
            -- Enemies/blockerMad
            x=779,
            y=1894,
            width=51,
            height=51,

        },
        {
            -- Enemies/blockerSad
            x=823,
            y=1835,
            width=51,
            height=51,

        },
        {
            -- Enemies/fishDead
            x=624,
            y=1797,
            width=66,
            height=42,

        },
        {
            -- Enemies/fishSwim1
            x=692,
            y=1797,
            width=66,
            height=42,

        },
        {
            -- Enemies/fishSwim2
            x=930,
            y=625,
            width=62,
            height=43,

        },
        {
            -- Enemies/flyDead
            x=896,
            y=1804,
            width=59,
            height=33,

        },
        {
            -- Enemies/flyFly1
            x=1032,
            y=1248,
            width=72,
            height=36,

        },
        {
            -- Enemies/flyFly2
            x=825,
            y=1670,
            width=75,
            height=31,

        },
        {
            -- Enemies/pokerMad
            x=380,
            y=1784,
            width=48,
            height=146,

        },
        {
            -- Enemies/pokerSad
            x=430,
            y=1784,
            width=48,
            height=146,

        },
        {
            -- Enemies/slimeDead
            x=890,
            y=2019,
            width=59,
            height=12,

        },
        {
            -- Enemies/slimeWalk1
            x=1119,
            y=1514,
            width=50,
            height=28,

        },
        {
            -- Enemies/slimeWalk2
            x=558,
            y=1723,
            width=51,
            height=26,

        },
        {
            -- Enemies/snailShell
            x=698,
            y=2002,
            width=44,
            height=30,

        },
        {
            -- Enemies/snailShell_upsidedown
            x=1039,
            y=1740,
            width=44,
            height=30,

        },
        {
            -- Enemies/snailWalk1
            x=779,
            y=1947,
            width=54,
            height=31,

        },
        {
            -- Enemies/snailWalk2
            x=1119,
            y=1481,
            width=57,
            height=31,

        },
        {
            -- HUD/hud_0
            x=864,
            y=1795,
            width=30,
            height=38,

        },
        {
            -- HUD/hud_1
            x=1150,
            y=1363,
            width=26,
            height=37,

        },
        {
            -- HUD/hud_2
            x=1085,
            y=1739,
            width=32,
            height=38,

        },
        {
            -- HUD/hud_3
            x=1116,
            y=1920,
            width=28,
            height=38,

        },
        {
            -- HUD/hud_4
            x=1147,
            y=358,
            width=29,
            height=38,

        },
        {
            -- HUD/hud_5
            x=1120,
            y=1960,
            width=28,
            height=38,

        },
        {
            -- HUD/hud_6
            x=1146,
            y=1703,
            width=30,
            height=38,

        },
        {
            -- HUD/hud_7
            x=1046,
            y=1968,
            width=32,
            height=39,

        },
        {
            -- HUD/hud_8
            x=1046,
            y=1926,
            width=32,
            height=40,

        },
        {
            -- HUD/hud_9
            x=1120,
            y=1662,
            width=32,
            height=39,

        },
        {
            -- HUD/hud_coins
            x=876,
            y=1839,
            width=47,
            height=47,

        },
        {
            -- HUD/hud_gem_blue
            x=842,
            y=1985,
            width=46,
            height=36,

        },
        {
            -- HUD/hud_gem_green
            x=1033,
            y=1814,
            width=46,
            height=36,

        },
        {
            -- HUD/hud_gem_red
            x=1063,
            y=1527,
            width=46,
            height=36,

        },
        {
            -- HUD/hud_gem_yellow
            x=1111,
            y=1544,
            width=46,
            height=36,

        },
        {
            -- HUD/hud_heartEmpty
            x=724,
            y=1750,
            width=53,
            height=45,

        },
        {
            -- HUD/hud_heartFull
            x=974,
            y=1830,
            width=53,
            height=45,

        },
        {
            -- HUD/hud_heartHalf
            x=835,
            y=1938,
            width=53,
            height=45,

        },
        {
            -- HUD/hud_keyBlue
            x=779,
            y=1750,
            width=44,
            height=40,

        },
        {
            -- HUD/hud_keyBlue_disabled
            x=1033,
            y=1772,
            width=44,
            height=40,

        },
        {
            -- HUD/hud_keyGreem_disabled
            x=1035,
            y=1852,
            width=44,
            height=40,

        },
        {
            -- HUD/hud_keyGreen
            x=1065,
            y=1593,
            width=44,
            height=40,

        },
        {
            -- HUD/hud_keyRed
            x=1074,
            y=1663,
            width=44,
            height=40,

        },
        {
            -- HUD/hud_keyRed_disabled
            x=1081,
            y=1813,
            width=44,
            height=40,

        },
        {
            -- HUD/hud_keyYellow
            x=1081,
            y=1855,
            width=44,
            height=40,

        },
        {
            -- HUD/hud_keyYellow_disabled
            x=1111,
            y=1582,
            width=44,
            height=40,

        },
        {
            -- HUD/hud_p1
            x=888,
            y=1888,
            width=47,
            height=47,

        },
        {
            -- HUD/hud_p1Alt
            x=925,
            y=1839,
            width=47,
            height=47,

        },
        {
            -- HUD/hud_p2
            x=937,
            y=1888,
            width=47,
            height=47,

        },
        {
            -- HUD/hud_p2Alt
            x=986,
            y=1877,
            width=47,
            height=47,

        },
        {
            -- HUD/hud_p3
            x=744,
            y=1985,
            width=47,
            height=47,

        },
        {
            -- HUD/hud_p3Alt
            x=793,
            y=1985,
            width=47,
            height=47,

        },
        {
            -- HUD/hud_x
            x=380,
            y=1932,
            width=30,
            height=28,

        },
        {
            -- Items/1
            x=156,
            y=1566,
            width=108,
            height=106,

        },
        {
            -- Items/10
            x=606,
            y=697,
            width=64,
            height=106,

        },
        {
            -- Items/100
            x=446,
            y=850,
            width=52,
            height=106,

        },
        {
            -- Items/101
            x=418,
            y=1360,
            width=100,
            height=64,

        },
        {
            -- Items/102
            x=930,
            y=563,
            width=96,
            height=60,

        },
        {
            -- Items/103
            x=500,
            y=924,
            width=64,
            height=92,

        },
        {
            -- Items/104
            x=584,
            y=1932,
            width=64,
            height=100,

        },
        {
            -- Items/105
            x=380,
            y=38,
            width=136,
            height=124,

        },
        {
            -- Items/106
            x=900,
            y=64,
            width=128,
            height=88,

        },
        {
            -- Items/107
            x=412,
            y=438,
            width=112,
            height=76,

        },
        {
            -- Items/108
            x=2,
            y=1666,
            width=136,
            height=130,

        },
        {
            -- Items/109
            x=2,
            y=1154,
            width=144,
            height=136,

        },
        {
            -- Items/11
            x=108,
            y=740,
            width=118,
            height=114,

        },
        {
            -- Items/110
            x=1028,
            y=563,
            width=64,
            height=92,

        },
        {
            -- Items/111
            x=1147,
            y=398,
            width=28,
            height=44,

        },
        {
            -- Items/112
            x=952,
            y=373,
            width=72,
            height=92,

        },
        {
            -- Items/113
            x=446,
            y=958,
            width=52,
            height=52,

        },
        {
            -- Items/114
            x=1144,
            y=1435,
            width=32,
            height=44,

        },
        {
            -- Items/115
            x=760,
            y=1797,
            width=38,
            height=42,

        },
        {
            -- Items/116
            x=474,
            y=1318,
            width=52,
            height=40,

        },
        {
            -- Items/117
            x=528,
            y=1318,
            width=48,
            height=40,

        },
        {
            -- Items/118
            x=496,
            y=541,
            width=132,
            height=40,

        },
        {
            -- Items/119
            x=772,
            y=454,
            width=152,
            height=40,

        },
        {
            -- Items/12
            x=168,
            y=1292,
            width=90,
            height=138,

        },
        {
            -- Items/120
            x=148,
            y=1154,
            width=96,
            height=136,

        },
        {
            -- Items/121
            x=160,
            y=1432,
            width=100,
            height=132,

        },
        {
            -- Items/122
            x=108,
            y=602,
            width=116,
            height=136,

        },
        {
            -- Items/123
            x=228,
            y=740,
            width=100,
            height=124,

        },
        {
            -- Items/124
            x=452,
            y=312,
            width=88,
            height=124,

        },
        {
            -- Items/125
            x=330,
            y=736,
            width=92,
            height=128,

        },
        {
            -- Items/126
            x=140,
            y=1674,
            width=128,
            height=116,

        },
        {
            -- Items/127
            x=654,
            y=281,
            width=116,
            height=112,

        },
        {
            -- Items/128
            x=180,
            y=1932,
            width=96,
            height=100,

        },
        {
            -- Items/129
            x=418,
            y=1932,
            width=84,
            height=100,

        },
        {
            -- Items/13
            x=538,
            y=151,
            width=134,
            height=110,

        },
        {
            -- Items/130
            x=1019,
            y=657,
            width=68,
            height=84,

        },
        {
            -- Items/131
            x=886,
            y=1000,
            width=60,
            height=88,

        },
        {
            -- Items/132
            x=566,
            y=920,
            width=44,
            height=96,

        },
        {
            -- Items/133
            x=400,
            y=1132,
            width=60,
            height=112,

        },
        {
            -- Items/134
            x=2,
            y=1932,
            width=176,
            height=100,

        },
        {
            -- Items/135
            x=798,
            y=1197,
            width=44,
            height=76,

        },
        {
            -- Items/136
            x=808,
            y=1439,
            width=52,
            height=76,

        },
        {
            -- Items/137
            x=844,
            y=1199,
            width=44,
            height=76,

        },
        {
            -- Items/138
            x=672,
            y=739,
            width=92,
            height=80,

        },
        {
            -- Items/139
            x=480,
            y=1858,
            width=96,
            height=72,

        },
        {
            -- Items/14
            x=246,
            y=1144,
            width=90,
            height=140,

        },
        {
            -- Items/140
            x=382,
            y=516,
            width=112,
            height=80,

        },
        {
            -- Items/141
            x=380,
            y=164,
            width=156,
            height=88,

        },
        {
            -- Items/142
            x=778,
            y=45,
            width=120,
            height=112,

        },
        {
            -- Items/143
            x=278,
            y=62,
            width=100,
            height=152,

        },
        {
            -- Items/144
            x=118,
            y=408,
            width=164,
            height=96,

        },
        {
            -- Items/145
            x=256,
            y=286,
            width=72,
            height=120,

        },
        {
            -- Items/146
            x=668,
            y=45,
            width=108,
            height=104,

        },
        {
            -- Items/147
            x=480,
            y=1646,
            width=76,
            height=104,

        },
        {
            -- Items/148
            x=674,
            y=151,
            width=96,
            height=128,

        },
        {
            -- Items/149
            x=226,
            y=998,
            width=96,
            height=144,

        },
        {
            -- Items/15
            x=318,
            y=866,
            width=76,
            height=130,

        },
        {
            -- Items/150
            x=378,
            y=1668,
            width=76,
            height=114,

        },
        {
            -- Items/151
            x=808,
            y=1517,
            width=52,
            height=68,

        },
        {
            -- Items/152
            x=720,
            y=1841,
            width=48,
            height=64,

        },
        {
            -- Items/153
            x=2,
            y=466,
            width=104,
            height=188,

        },
        {
            -- Items/154
            x=136,
            y=1798,
            width=76,
            height=132,

        },
        {
            -- Items/155
            x=480,
            y=1752,
            width=72,
            height=104,

        },
        {
            -- Items/156
            x=554,
            y=1752,
            width=68,
            height=104,

        },
        {
            -- Items/157
            x=690,
            y=1009,
            width=60,
            height=96,

        },
        {
            -- Items/158
            x=766,
            y=747,
            width=96,
            height=84,

        },
        {
            -- Items/159
            x=450,
            y=1426,
            width=68,
            height=108,

        },
        {
            -- Items/16
            x=566,
            y=607,
            width=100,
            height=88,

        },
        {
            -- Items/160
            x=856,
            y=580,
            width=72,
            height=88,

        },
        {
            -- Items/161
            x=948,
            y=840,
            width=84,
            height=76,

        },
        {
            -- Items/162
            x=2,
            y=1546,
            width=152,
            height=118,

        },
        {
            -- Items/163
            x=566,
            y=697,
            width=3,
            height=3,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 404,
            sourceHeight = 402
        },
        {
            -- Items/17
            x=672,
            y=647,
            width=92,
            height=90,

        },
        {
            -- Items/18
            x=226,
            y=602,
            width=70,
            height=136,

        },
        {
            -- Items/19
            x=392,
            y=598,
            width=98,
            height=102,

        },
        {
            -- Items/2
            x=2,
            y=998,
            width=124,
            height=154,

        },
        {
            -- Items/20
            x=1111,
            y=1624,
            width=36,
            height=36,

        },
        {
            -- Items/21
            x=1127,
            y=1847,
            width=36,
            height=36,

        },
        {
            -- Items/22
            x=1150,
            y=1402,
            width=24,
            height=24,

        },
        {
            -- Items/23
            x=852,
            y=670,
            width=96,
            height=74,

        },
        {
            -- Items/24
            x=968,
            y=1178,
            width=64,
            height=66,

        },
        {
            -- Items/25
            x=214,
            y=1796,
            width=74,
            height=134,

        },
        {
            -- Items/26
            x=1090,
            y=140,
            width=86,
            height=102,

        },
        {
            -- Items/27
            x=642,
            y=495,
            width=106,
            height=80,

        },
        {
            -- Items/28
            x=266,
            y=1564,
            width=102,
            height=108,

        },
        {
            -- Items/29
            x=504,
            y=1932,
            width=78,
            height=100,

        },
        {
            -- Items/3
            x=2,
            y=656,
            width=104,
            height=178,

        },
        {
            -- Items/30
            x=262,
            y=1426,
            width=102,
            height=136,

        },
        {
            -- Items/31
            x=2,
            y=1798,
            width=132,
            height=132,

        },
        {
            -- Items/32
            x=274,
            y=508,
            width=106,
            height=92,

        },
        {
            -- Items/33
            x=270,
            y=1674,
            width=106,
            height=120,

        },
        {
            -- Items/34
            x=378,
            y=1014,
            width=60,
            height=116,

        },
        {
            -- Items/35
            x=766,
            y=647,
            width=84,
            height=98,

        },
        {
            -- Items/36
            x=366,
            y=1426,
            width=82,
            height=120,

        },
        {
            -- Items/37
            x=466,
            y=1536,
            width=76,
            height=108,

        },
        {
            -- Items/38
            x=218,
            y=866,
            width=98,
            height=130,

        },
        {
            -- Items/39
            x=2,
            y=62,
            width=126,
            height=196,

        },
        {
            -- Items/4
            x=290,
            y=1796,
            width=88,
            height=164,

        },
        {
            -- Items/40
            x=536,
            y=702,
            width=68,
            height=108,

        },
        {
            -- Items/41
            x=768,
            y=1107,
            width=74,
            height=88,

        },
        {
            -- Items/42
            x=805,
            y=1371,
            width=58,
            height=66,

        },
        {
            -- Items/43
            x=864,
            y=746,
            width=86,
            height=88,

        },
        {
            -- Items/44
            x=130,
            y=62,
            width=146,
            height=150,

        },
        {
            -- Items/45
            x=930,
            y=467,
            width=92,
            height=94,

        },
        {
            -- Items/46
            x=542,
            y=263,
            width=110,
            height=126,

        },
        {
            -- Items/47
            x=654,
            y=395,
            width=116,
            height=98,

        },
        {
            -- Items/48
            x=338,
            y=1144,
            width=60,
            height=130,

        },
        {
            -- Items/49
            x=638,
            y=1106,
            width=50,
            height=92,

        },
        {
            -- Items/5
            x=352,
            y=1276,
            width=64,
            height=148,

        },
        {
            -- Items/50
            x=765,
            y=1690,
            width=58,
            height=58,

        },
        {
            -- Items/51
            x=844,
            y=1105,
            width=50,
            height=92,

        },
        {
            -- Items/52
            x=542,
            y=391,
            width=110,
            height=98,

        },
        {
            -- Items/53
            x=2,
            y=1426,
            width=156,
            height=118,

        },
        {
            -- Items/54
            x=260,
            y=1286,
            width=90,
            height=138,

        },
        {
            -- Items/55
            x=118,
            y=286,
            width=136,
            height=120,

        },
        {
            -- Items/56
            x=330,
            y=312,
            width=120,
            height=110,

        },
        {
            -- Items/57
            x=2,
            y=260,
            width=114,
            height=204,

        },
        {
            -- Items/58
            x=1023,
            y=228,
            width=54,
            height=14,

        },
        {
            -- Items/59
            x=130,
            y=214,
            width=142,
            height=70,

        },
        {
            -- Items/6
            x=612,
            y=909,
            width=48,
            height=98,

        },
        {
            -- Items/60
            x=968,
            y=1086,
            width=64,
            height=90,

        },
        {
            -- Items/61
            x=2,
            y=1292,
            width=164,
            height=132,

        },
        {
            -- Items/62
            x=370,
            y=1548,
            width=94,
            height=118,

        },
        {
            -- Items/63
            x=752,
            y=1009,
            width=62,
            height=96,

        },
        {
            -- Items/64
            x=765,
            y=1608,
            width=58,
            height=80,

        },
        {
            -- Items/65
            x=948,
            y=918,
            width=84,
            height=82,

        },
        {
            -- Items/66
            x=948,
            y=1002,
            width=84,
            height=82,

        },
        {
            -- Items/67
            x=108,
            y=506,
            width=164,
            height=94,

        },
        {
            -- Items/68
            x=760,
            y=833,
            width=90,
            height=76,

        },
        {
            -- Items/69
            x=1030,
            y=188,
            width=54,
            height=38,

        },
        {
            -- Items/7
            x=650,
            y=1932,
            width=46,
            height=98,

        },
        {
            -- Items/70
            x=274,
            y=216,
            width=72,
            height=68,

        },
        {
            -- Items/71
            x=1034,
            y=1032,
            width=72,
            height=68,

        },
        {
            -- Items/72
            x=526,
            y=491,
            width=114,
            height=48,

        },
        {
            -- Items/73
            x=852,
            y=836,
            width=94,
            height=66,

        },
        {
            -- Items/74
            x=128,
            y=998,
            width=96,
            height=154,

        },
        {
            -- Items/75
            x=2,
            y=836,
            width=100,
            height=160,

        },
        {
            -- Items/76
            x=456,
            y=1668,
            width=22,
            height=108,

        },
        {
            -- Items/77
            x=440,
            y=1014,
            width=30,
            height=106,

        },
        {
            -- Items/78
            x=462,
            y=1122,
            width=28,
            height=98,

        },
        {
            -- Items/79
            x=324,
            y=998,
            width=52,
            height=144,

        },
        {
            -- Items/8
            x=1026,
            y=364,
            width=110,
            height=90,

        },
        {
            -- Items/80
            x=284,
            y=424,
            width=126,
            height=82,

        },
        {
            -- Items/81
            x=1023,
            y=244,
            width=114,
            height=118,

        },
        {
            -- Items/82
            x=578,
            y=1858,
            width=72,
            height=72,

        },
        {
            -- Items/83
            x=750,
            y=1520,
            width=56,
            height=86,

        },
        {
            -- Items/84
            x=1080,
            y=1967,
            width=38,
            height=38,

        },
        {
            -- Items/85
            x=1004,
            y=1970,
            width=40,
            height=38,

        },
        {
            -- Items/86
            x=962,
            y=1937,
            width=40,
            height=42,

        },
        {
            -- Items/87
            x=1004,
            y=1926,
            width=40,
            height=42,

        },
        {
            -- Items/88
            x=298,
            y=602,
            width=92,
            height=132,

        },
        {
            -- Items/89
            x=1090,
            y=2,
            width=86,
            height=136,

        },
        {
            -- Items/9
            x=1030,
            y=64,
            width=58,
            height=122,

        },
        {
            -- Items/90
            x=518,
            y=45,
            width=148,
            height=104,

        },
        {
            -- Items/91
            x=772,
            y=279,
            width=118,
            height=92,

        },
        {
            -- Items/92
            x=474,
            y=702,
            width=60,
            height=112,

        },
        {
            -- Items/93
            x=762,
            y=1204,
            width=34,
            height=92,

        },
        {
            -- Items/94
            x=952,
            y=744,
            width=70,
            height=94,

        },
        {
            -- Items/95
            x=418,
            y=1246,
            width=54,
            height=112,

        },
        {
            -- Items/96
            x=104,
            y=856,
            width=112,
            height=140,

        },
        {
            -- Items/97
            x=1139,
            y=244,
            width=36,
            height=112,

        },
        {
            -- Items/98
            x=772,
            y=159,
            width=118,
            height=118,

        },
        {
            -- Items/99
            x=690,
            y=1107,
            width=76,
            height=88,

        },
        {
            -- Items/bomb
            x=1003,
            y=1472,
            width=58,
            height=60,

            sourceX = 6,
            sourceY = 10,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/bombFlash
            x=1002,
            y=1534,
            width=58,
            height=60,

            sourceX = 6,
            sourceY = 10,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/bush
            x=825,
            y=1765,
            width=70,
            height=28,

            sourceX = 0,
            sourceY = 42,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/buttonBlue
            x=589,
            y=1401,
            width=70,
            height=48,

            sourceX = 0,
            sourceY = 22,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/buttonBlue_pressed
            x=961,
            y=1770,
            width=70,
            height=28,

            sourceX = 0,
            sourceY = 42,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/buttonGreen
            x=661,
            y=1401,
            width=70,
            height=48,

            sourceX = 0,
            sourceY = 22,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/buttonGreen_pressed
            x=1008,
            y=1442,
            width=70,
            height=28,

            sourceX = 0,
            sourceY = 42,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/buttonRed
            x=733,
            y=1392,
            width=70,
            height=48,

            sourceX = 0,
            sourceY = 22,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/buttonRed_pressed
            x=961,
            y=1800,
            width=70,
            height=28,

            sourceX = 0,
            sourceY = 42,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/buttonYellow
            x=902,
            y=1670,
            width=70,
            height=48,

            sourceX = 0,
            sourceY = 22,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/buttonYellow_pressed
            x=890,
            y=1937,
            width=70,
            height=28,

            sourceX = 0,
            sourceY = 42,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/cactus
            x=737,
            y=1907,
            width=40,
            height=58,

            sourceX = 15,
            sourceY = 12,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/chain
            x=1077,
            y=1286,
            width=20,
            height=70,

            sourceX = 25,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/cloud1
            x=900,
            y=154,
            width=128,
            height=71,

        },
        {
            -- Items/cloud2
            x=892,
            y=227,
            width=129,
            height=71,

        },
        {
            -- Items/cloud3
            x=892,
            y=300,
            width=129,
            height=71,

        },
        {
            -- Items/coinBronze
            x=1063,
            y=1475,
            width=54,
            height=50,

            sourceX = 0,
            sourceY = 16,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/coinGold
            x=962,
            y=1981,
            width=38,
            height=38,

            sourceX = 16,
            sourceY = 17,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/coinSilver
            x=1127,
            y=1807,
            width=38,
            height=38,

            sourceX = 16,
            sourceY = 17,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/fireball
            x=474,
            y=816,
            width=24,
            height=26,

            sourceX = 22,
            sourceY = 22,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/flagBlue
            x=278,
            y=1962,
            width=68,
            height=70,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/flagBlue2
            x=348,
            y=1962,
            width=68,
            height=70,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/flagBlueHanging
            x=694,
            y=1725,
            width=28,
            height=70,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/flagGreen
            x=933,
            y=1453,
            width=68,
            height=70,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/flagGreen2
            x=862,
            y=1526,
            width=68,
            height=70,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/flagGreenHanging
            x=1035,
            y=1596,
            width=28,
            height=70,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/flagRed
            x=825,
            y=1598,
            width=68,
            height=70,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/flagRed2
            x=895,
            y=1598,
            width=68,
            height=70,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/flagRedHanging
            x=1044,
            y=1668,
            width=28,
            height=70,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/flagYellow
            x=932,
            y=1526,
            width=68,
            height=70,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/flagYellow2
            x=965,
            y=1598,
            width=68,
            height=70,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/flagYellowHanging
            x=707,
            y=1911,
            width=28,
            height=70,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/gemBlue
            x=724,
            y=1717,
            width=36,
            height=26,

            sourceX = 17,
            sourceY = 22,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/gemGreen
            x=1062,
            y=1565,
            width=36,
            height=26,

            sourceX = 17,
            sourceY = 22,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/gemRed
            x=1065,
            y=1635,
            width=36,
            height=26,

            sourceX = 17,
            sourceY = 22,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/gemYellow
            x=1069,
            y=1897,
            width=36,
            height=26,

            sourceX = 17,
            sourceY = 22,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/keyBlue
            x=968,
            y=1246,
            width=62,
            height=38,

            sourceX = 4,
            sourceY = 13,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/keyGreen
            x=897,
            y=1764,
            width=62,
            height=38,

            sourceX = 4,
            sourceY = 13,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/keyRed
            x=1080,
            y=1435,
            width=62,
            height=38,

            sourceX = 4,
            sourceY = 13,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/keyYellow
            x=800,
            y=1795,
            width=62,
            height=38,

            sourceX = 4,
            sourceY = 13,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/mushroomBrown
            x=1074,
            y=1705,
            width=42,
            height=32,

            sourceX = 14,
            sourceY = 38,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/mushroomRed
            x=1079,
            y=1779,
            width=42,
            height=32,

            sourceX = 14,
            sourceY = 38,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/particleBrick1a
            x=284,
            y=408,
            width=19,
            height=14,

        },
        {
            -- Items/particleBrick1b
            x=496,
            y=516,
            width=21,
            height=21,

        },
        {
            -- Items/particleBrick2a
            x=424,
            y=850,
            width=19,
            height=14,

        },
        {
            -- Items/particleBrick2b
            x=1107,
            y=1897,
            width=21,
            height=21,

        },
        {
            -- Items/plant
            x=1080,
            y=1925,
            width=34,
            height=40,

            sourceX = 18,
            sourceY = 30,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/plantPurple
            x=890,
            y=1989,
            width=56,
            height=28,

            sourceX = 7,
            sourceY = 42,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/rock
            x=895,
            y=1720,
            width=70,
            height=42,

            sourceX = 0,
            sourceY = 28,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/snowhill
            x=890,
            y=1967,
            width=70,
            height=20,

            sourceX = 0,
            sourceY = 50,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/spikes
            x=967,
            y=1732,
            width=70,
            height=36,

            sourceX = 0,
            sourceY = 34,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/springboardDown
            x=1099,
            y=1323,
            width=70,
            height=38,

            sourceX = 0,
            sourceY = 32,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/springboardUp
            x=1034,
            y=1194,
            width=70,
            height=52,

            sourceX = 0,
            sourceY = 18,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/star
            x=832,
            y=1888,
            width=54,
            height=48,

            sourceX = 0,
            sourceY = 18,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/switchLeft
            x=974,
            y=1670,
            width=68,
            height=60,

            sourceX = 0,
            sourceY = 10,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/switchMid
            x=652,
            y=1841,
            width=66,
            height=68,

            sourceX = 2,
            sourceY = 2,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/switchRight
            x=825,
            y=1703,
            width=68,
            height=60,

            sourceX = 2,
            sourceY = 10,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/weight
            x=1080,
            y=1363,
            width=68,
            height=70,

            sourceX = 1,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Items/weightChained
            x=624,
            y=1725,
            width=68,
            height=70,

            sourceX = 1,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- Player/p1_duck
            x=937,
            y=1380,
            width=69,
            height=71,

        },
        {
            -- Player/p1_front
            x=558,
            y=1629,
            width=66,
            height=92,

        },
        {
            -- Player/p1_hurt
            x=589,
            y=1307,
            width=69,
            height=92,

        },
        {
            -- Player/p1_jump
            x=1024,
            y=467,
            width=67,
            height=94,

        },
        {
            -- Player/p1_stand
            x=660,
            y=1307,
            width=66,
            height=92,

        },
        {
            -- Player/p1_walk01
            x=546,
            y=1018,
            width=68,
            height=95,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p1_walk02
            x=736,
            y=912,
            width=68,
            height=95,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p1_walk03
            x=492,
            y=607,
            width=72,
            height=93,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p1_walk04
            x=472,
            y=1018,
            width=72,
            height=95,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p1_walk05
            x=662,
            y=912,
            width=72,
            height=95,

            sourceX = 0,
            sourceY = 1,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p1_walk06
            x=616,
            y=1009,
            width=72,
            height=95,

            sourceX = 0,
            sourceY = 2,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p1_walk07
            x=806,
            y=911,
            width=72,
            height=95,

            sourceX = 0,
            sourceY = 2,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p1_walk08
            x=1108,
            y=939,
            width=68,
            height=93,

            sourceX = 2,
            sourceY = 4,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p1_walk09
            x=1108,
            y=1034,
            width=68,
            height=93,

            sourceX = 2,
            sourceY = 4,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p1_walk10
            x=600,
            y=812,
            width=70,
            height=95,

            sourceX = 1,
            sourceY = 2,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p1_walk11
            x=816,
            y=1008,
            width=68,
            height=95,

            sourceX = 3,
            sourceY = 1,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p2_duck
            x=950,
            y=670,
            width=67,
            height=72,

        },
        {
            -- Player/p2_front
            x=614,
            y=1529,
            width=66,
            height=92,

        },
        {
            -- Player/p2_hurt
            x=626,
            y=1623,
            width=67,
            height=92,

        },
        {
            -- Player/p2_jump
            x=880,
            y=904,
            width=66,
            height=94,

        },
        {
            -- Player/p2_stand
            x=682,
            y=1529,
            width=66,
            height=92,

        },
        {
            -- Player/p2_walk01
            x=1108,
            y=747,
            width=68,
            height=94,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 94
        },
        {
            -- Player/p2_walk02
            x=728,
            y=1298,
            width=68,
            height=92,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 94
        },
        {
            -- Player/p2_walk03
            x=695,
            y=1623,
            width=68,
            height=92,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 94
        },
        {
            -- Player/p2_walk04
            x=1034,
            y=1102,
            width=70,
            height=90,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 94
        },
        {
            -- Player/p2_walk05
            x=896,
            y=1187,
            width=70,
            height=92,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 94
        },
        {
            -- Player/p2_walk06
            x=690,
            y=1204,
            width=70,
            height=92,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 94
        },
        {
            -- Player/p2_walk07
            x=566,
            y=1115,
            width=70,
            height=94,

        },
        {
            -- Player/p2_walk08
            x=474,
            y=1222,
            width=70,
            height=94,

        },
        {
            -- Player/p2_walk09
            x=546,
            y=1211,
            width=70,
            height=94,

        },
        {
            -- Player/p2_walk10
            x=618,
            y=1211,
            width=70,
            height=94,

        },
        {
            -- Player/p2_walk11
            x=1108,
            y=843,
            width=68,
            height=94,

            sourceX = 1,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 94
        },
        {
            -- Player/p3_duck
            x=862,
            y=1453,
            width=69,
            height=71,

        },
        {
            -- Player/p3_front
            x=869,
            y=1281,
            width=66,
            height=92,

        },
        {
            -- Player/p3_hurt
            x=798,
            y=1277,
            width=69,
            height=92,

        },
        {
            -- Player/p3_jump
            x=520,
            y=1360,
            width=67,
            height=94,

        },
        {
            -- Player/p3_stand
            x=937,
            y=1286,
            width=66,
            height=92,

        },
        {
            -- Player/p3_walk01
            x=1093,
            y=456,
            width=68,
            height=95,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p3_walk02
            x=544,
            y=1534,
            width=68,
            height=93,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p3_walk03
            x=1034,
            y=937,
            width=72,
            height=93,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p3_walk04
            x=492,
            y=1115,
            width=72,
            height=93,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p3_walk05
            x=1094,
            y=553,
            width=72,
            height=95,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p3_walk06
            x=1024,
            y=743,
            width=72,
            height=95,

            sourceX = 0,
            sourceY = 1,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p3_walk07
            x=1034,
            y=840,
            width=72,
            height=95,

            sourceX = 0,
            sourceY = 2,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p3_walk08
            x=896,
            y=1090,
            width=70,
            height=95,

            sourceX = 1,
            sourceY = 2,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p3_walk09
            x=1106,
            y=1129,
            width=70,
            height=95,

            sourceX = 1,
            sourceY = 2,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p3_walk10
            x=1108,
            y=650,
            width=68,
            height=95,

            sourceX = 3,
            sourceY = 2,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- Player/p3_walk11
            x=1106,
            y=1226,
            width=70,
            height=95,

            sourceX = 2,
            sourceY = 1,
            sourceWidth = 72,
            sourceHeight = 97
        },
        {
            -- UI/9slices/blue_button02_0_0
            x=1111,
            y=1527,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/blue_button02_0_1
            x=550,
            y=33,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/blue_button02_0_2
            x=378,
            y=1132,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/blue_button02_1_0
            x=892,
            y=159,
            width=6,
            height=29,

        },
        {
            -- UI/9slices/blue_button02_1_1
            x=550,
            y=2,
            width=178,
            height=29,

        },
        {
            -- UI/9slices/blue_button02_1_2
            x=892,
            y=190,
            width=6,
            height=29,

        },
        {
            -- UI/9slices/blue_button02_2_0
            x=450,
            y=1536,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/blue_button02_2_1
            x=730,
            y=33,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/blue_button02_2_2
            x=458,
            y=1536,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/blue_button03_0_0
            x=1111,
            y=1527,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/blue_button03_0_1
            x=550,
            y=33,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/blue_button03_0_2
            x=378,
            y=1132,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/blue_button03_1_0
            x=1103,
            y=1635,
            width=6,
            height=25,

        },
        {
            -- UI/9slices/blue_button03_1_1
            x=348,
            y=285,
            width=178,
            height=25,

        },
        {
            -- UI/9slices/blue_button03_1_2
            x=278,
            y=1932,
            width=6,
            height=25,

        },
        {
            -- UI/9slices/blue_button03_2_0
            x=492,
            y=1210,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/blue_button03_2_1
            x=496,
            y=583,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/blue_button03_2_2
            x=386,
            y=1132,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/green_button02_0_0
            x=500,
            y=1210,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/green_button02_0_1
            x=496,
            y=595,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/green_button02_0_2
            x=508,
            y=1210,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/green_button02_1_0
            x=848,
            y=616,
            width=6,
            height=29,

        },
        {
            -- UI/9slices/green_button02_1_1
            x=730,
            y=2,
            width=178,
            height=29,

        },
        {
            -- UI/9slices/green_button02_1_2
            x=526,
            y=438,
            width=6,
            height=29,

        },
        {
            -- UI/9slices/green_button02_2_0
            x=516,
            y=1210,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/green_button02_2_1
            x=750,
            y=496,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/green_button02_2_2
            x=524,
            y=1210,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/green_button03_0_0
            x=500,
            y=1210,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/green_button03_0_1
            x=496,
            y=595,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/green_button03_0_2
            x=508,
            y=1210,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/green_button03_1_0
            x=400,
            y=1246,
            width=6,
            height=25,

        },
        {
            -- UI/9slices/green_button03_1_1
            x=772,
            y=373,
            width=178,
            height=25,

        },
        {
            -- UI/9slices/green_button03_1_2
            x=611,
            y=1723,
            width=6,
            height=25,

        },
        {
            -- UI/9slices/green_button03_2_0
            x=532,
            y=1210,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/green_button03_2_1
            x=750,
            y=508,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/green_button03_2_2
            x=1147,
            y=444,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/grey_box_0_0
            x=218,
            y=856,
            width=8,
            height=8,

        },
        {
            -- UI/9slices/grey_box_0_1
            x=668,
            y=628,
            width=175,
            height=8,

        },
        {
            -- UI/9slices/grey_box_0_2
            x=226,
            y=1144,
            width=8,
            height=8,

        },
        {
            -- UI/9slices/grey_box_1_0
            x=108,
            y=466,
            width=8,
            height=34,

        },
        {
            -- UI/9slices/grey_box_1_1
            x=373,
            y=2,
            width=175,
            height=34,

        },
        {
            -- UI/9slices/grey_box_1_2
            x=528,
            y=254,
            width=8,
            height=34,

        },
        {
            -- UI/9slices/grey_box_2_0
            x=616,
            y=1106,
            width=8,
            height=7,

        },
        {
            -- UI/9slices/grey_box_2_1
            x=668,
            y=638,
            width=175,
            height=7,

        },
        {
            -- UI/9slices/grey_box_2_2
            x=690,
            y=1298,
            width=8,
            height=7,

        },
        {
            -- UI/9slices/grey_button02_0_0
            x=1155,
            y=444,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/grey_button02_0_1
            x=750,
            y=520,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/grey_button02_0_2
            x=518,
            y=151,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/grey_button02_1_0
            x=534,
            y=438,
            width=6,
            height=29,

        },
        {
            -- UI/9slices/grey_button02_1_1
            x=910,
            y=2,
            width=178,
            height=29,

        },
        {
            -- UI/9slices/grey_button02_1_2
            x=630,
            y=541,
            width=6,
            height=29,

        },
        {
            -- UI/9slices/grey_button02_2_0
            x=900,
            y=45,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/grey_button02_2_1
            x=750,
            y=532,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/grey_button02_2_2
            x=654,
            y=263,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/grey_button03_0_0
            x=1155,
            y=444,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/grey_button03_0_1
            x=750,
            y=520,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/grey_button03_0_2
            x=518,
            y=151,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/grey_button03_1_0
            x=534,
            y=438,
            width=6,
            height=29,

        },
        {
            -- UI/9slices/grey_button03_1_1
            x=910,
            y=2,
            width=178,
            height=29,

        },
        {
            -- UI/9slices/grey_button03_1_2
            x=630,
            y=541,
            width=6,
            height=29,

        },
        {
            -- UI/9slices/grey_button03_2_0
            x=900,
            y=45,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/grey_button03_2_1
            x=750,
            y=532,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/grey_button03_2_2
            x=654,
            y=263,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/grey_panel_0_0
            x=518,
            y=38,
            width=7,
            height=5,

        },
        {
            -- UI/9slices/grey_panel_0_1
            x=690,
            y=1197,
            width=86,
            height=5,

        },
        {
            -- UI/9slices/grey_panel_0_2
            x=606,
            y=805,
            width=7,
            height=5,

        },
        {
            -- UI/9slices/grey_panel_1_0
            x=1138,
            y=364,
            width=7,
            height=89,

        },
        {
            -- UI/9slices/grey_panel_1_1
            x=672,
            y=821,
            width=86,
            height=89,

        },
        {
            -- UI/9slices/grey_panel_1_2
            x=698,
            y=1911,
            width=7,
            height=89,

        },
        {
            -- UI/9slices/grey_panel_2_0
            x=140,
            y=1666,
            width=7,
            height=6,

        },
        {
            -- UI/9slices/grey_panel_2_1
            x=626,
            y=1717,
            width=86,
            height=6,

        },
        {
            -- UI/9slices/grey_panel_2_2
            x=382,
            y=508,
            width=7,
            height=6,

        },
        {
            -- UI/9slices/red_button00_0_0
            x=378,
            y=998,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/red_button00_0_1
            x=750,
            y=544,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/red_button00_0_2
            x=412,
            y=424,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/red_button00_1_0
            x=1100,
            y=1565,
            width=6,
            height=25,

        },
        {
            -- UI/9slices/red_button00_1_1
            x=772,
            y=400,
            width=178,
            height=25,

        },
        {
            -- UI/9slices/red_button00_1_2
            x=948,
            y=1989,
            width=6,
            height=25,

        },
        {
            -- UI/9slices/red_button00_2_0
            x=926,
            y=454,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/red_button00_2_1
            x=750,
            y=556,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/red_button00_2_2
            x=994,
            y=657,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/red_button01_0_0
            x=886,
            y=1090,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/red_button01_0_1
            x=750,
            y=568,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/red_button01_0_2
            x=544,
            y=1629,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/red_button01_1_0
            x=1149,
            y=1624,
            width=6,
            height=29,

        },
        {
            -- UI/9slices/red_button01_1_1
            x=910,
            y=33,
            width=178,
            height=29,

        },
        {
            -- UI/9slices/red_button01_1_2
            x=1159,
            y=1544,
            width=6,
            height=29,

        },
        {
            -- UI/9slices/red_button01_2_0
            x=750,
            y=1608,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/red_button01_2_1
            x=676,
            y=580,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/red_button01_2_2
            x=808,
            y=1587,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/yellow_button02_0_0
            x=624,
            y=1841,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/yellow_button02_0_1
            x=676,
            y=592,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/yellow_button02_0_2
            x=652,
            y=1911,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/yellow_button02_1_0
            x=1167,
            y=1807,
            width=6,
            height=29,

        },
        {
            -- UI/9slices/yellow_button02_1_1
            x=348,
            y=254,
            width=178,
            height=29,

        },
        {
            -- UI/9slices/yellow_button02_1_2
            x=1089,
            y=657,
            width=6,
            height=29,

        },
        {
            -- UI/9slices/yellow_button02_2_0
            x=1163,
            y=444,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/yellow_button02_2_1
            x=676,
            y=604,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/yellow_button02_2_2
            x=770,
            y=1894,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/yellow_button03_0_0
            x=624,
            y=1841,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/yellow_button03_0_1
            x=676,
            y=592,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/yellow_button03_0_2
            x=652,
            y=1911,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/yellow_button03_1_0
            x=1089,
            y=688,
            width=6,
            height=25,

        },
        {
            -- UI/9slices/yellow_button03_1_1
            x=772,
            y=427,
            width=178,
            height=25,

        },
        {
            -- UI/9slices/yellow_button03_1_2
            x=408,
            y=1246,
            width=6,
            height=25,

        },
        {
            -- UI/9slices/yellow_button03_2_0
            x=737,
            y=1967,
            width=6,
            height=10,

        },
        {
            -- UI/9slices/yellow_button03_2_1
            x=668,
            y=616,
            width=178,
            height=10,

        },
        {
            -- UI/9slices/yellow_button03_2_2
            x=707,
            y=1983,
            width=6,
            height=10,

        },
        {
            -- UI/Icon/check1
            x=994,
            y=625,
            width=32,
            height=30,

        },
        {
            -- UI/Icon/check2
            x=1035,
            y=1894,
            width=32,
            height=30,

        },
        {
            -- UI/Icon/check3
            x=1130,
            y=1885,
            width=32,
            height=30,

        },
        {
            -- UI/Icon/check4
            x=1120,
            y=2000,
            width=32,
            height=30,

        },
        {
            -- UI/Icon/circle1
            x=520,
            y=1456,
            width=70,
            height=76,

        },
        {
            -- UI/Icon/circle2
            x=592,
            y=1451,
            width=70,
            height=76,

        },
        {
            -- UI/Icon/circle3
            x=664,
            y=1451,
            width=70,
            height=76,

        },
        {
            -- UI/Icon/circle4
            x=1005,
            y=1286,
            width=70,
            height=76,

        },
        {
            -- UI/Icon/cross1
            x=348,
            y=216,
            width=30,
            height=30,

        },
        {
            -- UI/Icon/cross2
            x=392,
            y=702,
            width=30,
            height=30,

        },
        {
            -- UI/Icon/cross3
            x=1146,
            y=1743,
            width=30,
            height=30,

        },
        {
            -- UI/Icon/cross4
            x=1146,
            y=1775,
            width=30,
            height=30,

        },
        {
            -- UI/Icon/icon
            x=2,
            y=2,
            width=369,
            height=58,

            sourceX = 7,
            sourceY = 7,
            sourceWidth = 383,
            sourceHeight = 72
        },
        {
            -- UI/Icon/sword1
            x=736,
            y=1442,
            width=70,
            height=76,

        },
        {
            -- UI/Icon/sword2
            x=865,
            y=1375,
            width=70,
            height=76,

        },
        {
            -- UI/Icon/sword3
            x=1008,
            y=1364,
            width=70,
            height=76,

        },
        {
            -- castleLedgeLeft
            x=373,
            y=38,
            width=5,
            height=22,

        },
        {
            -- castleLedgeRight
            x=519,
            y=516,
            width=5,
            height=22,

        },
        {
            -- dirtLedgeLeft
            x=798,
            y=1371,
            width=5,
            height=18,

        },
        {
            -- dirtLedgeRight
            x=1171,
            y=1540,
            width=5,
            height=18,

        },
        {
            -- grassLedgeLeft
            x=1099,
            y=1286,
            width=5,
            height=24,

        },
        {
            -- grassLedgeRight
            x=1171,
            y=1323,
            width=5,
            height=24,

        },
        {
            -- hill_large
            x=396,
            y=866,
            width=48,
            height=146,

        },
        {
            -- hill_largeAlt
            x=424,
            y=702,
            width=48,
            height=146,

        },
        {
            -- hill_small
            x=500,
            y=816,
            width=48,
            height=106,

        },
        {
            -- hill_smallAlt
            x=550,
            y=812,
            width=48,
            height=106,

        },
        {
            -- sandLedgeLeft
            x=330,
            y=286,
            width=5,
            height=18,

        },
        {
            -- sandLedgeRight
            x=466,
            y=1646,
            width=5,
            height=18,

        },
        {
            -- snowLedgeLeft
            x=473,
            y=1646,
            width=5,
            height=18,

        },
        {
            -- snowLedgeRight
            x=462,
            y=1222,
            width=5,
            height=18,

        },
        {
            -- stoneLedgeLeft
            x=1171,
            y=1514,
            width=5,
            height=24,

        },
        {
            -- stoneLedgeRight
            x=118,
            y=260,
            width=5,
            height=24,

        },
    },
    
    sheetContentWidth = 1178,
    sheetContentHeight = 2034
}

SheetInfo.frameIndex =
{

    ["Enemies/blockerBody"] = 1,
    ["Enemies/blockerMad"] = 2,
    ["Enemies/blockerSad"] = 3,
    ["Enemies/fishDead"] = 4,
    ["Enemies/fishSwim1"] = 5,
    ["Enemies/fishSwim2"] = 6,
    ["Enemies/flyDead"] = 7,
    ["Enemies/flyFly1"] = 8,
    ["Enemies/flyFly2"] = 9,
    ["Enemies/pokerMad"] = 10,
    ["Enemies/pokerSad"] = 11,
    ["Enemies/slimeDead"] = 12,
    ["Enemies/slimeWalk1"] = 13,
    ["Enemies/slimeWalk2"] = 14,
    ["Enemies/snailShell"] = 15,
    ["Enemies/snailShell_upsidedown"] = 16,
    ["Enemies/snailWalk1"] = 17,
    ["Enemies/snailWalk2"] = 18,
    ["HUD/hud_0"] = 19,
    ["HUD/hud_1"] = 20,
    ["HUD/hud_2"] = 21,
    ["HUD/hud_3"] = 22,
    ["HUD/hud_4"] = 23,
    ["HUD/hud_5"] = 24,
    ["HUD/hud_6"] = 25,
    ["HUD/hud_7"] = 26,
    ["HUD/hud_8"] = 27,
    ["HUD/hud_9"] = 28,
    ["HUD/hud_coins"] = 29,
    ["HUD/hud_gem_blue"] = 30,
    ["HUD/hud_gem_green"] = 31,
    ["HUD/hud_gem_red"] = 32,
    ["HUD/hud_gem_yellow"] = 33,
    ["HUD/hud_heartEmpty"] = 34,
    ["HUD/hud_heartFull"] = 35,
    ["HUD/hud_heartHalf"] = 36,
    ["HUD/hud_keyBlue"] = 37,
    ["HUD/hud_keyBlue_disabled"] = 38,
    ["HUD/hud_keyGreem_disabled"] = 39,
    ["HUD/hud_keyGreen"] = 40,
    ["HUD/hud_keyRed"] = 41,
    ["HUD/hud_keyRed_disabled"] = 42,
    ["HUD/hud_keyYellow"] = 43,
    ["HUD/hud_keyYellow_disabled"] = 44,
    ["HUD/hud_p1"] = 45,
    ["HUD/hud_p1Alt"] = 46,
    ["HUD/hud_p2"] = 47,
    ["HUD/hud_p2Alt"] = 48,
    ["HUD/hud_p3"] = 49,
    ["HUD/hud_p3Alt"] = 50,
    ["HUD/hud_x"] = 51,
    ["Items/1"] = 52,
    ["Items/10"] = 53,
    ["Items/100"] = 54,
    ["Items/101"] = 55,
    ["Items/102"] = 56,
    ["Items/103"] = 57,
    ["Items/104"] = 58,
    ["Items/105"] = 59,
    ["Items/106"] = 60,
    ["Items/107"] = 61,
    ["Items/108"] = 62,
    ["Items/109"] = 63,
    ["Items/11"] = 64,
    ["Items/110"] = 65,
    ["Items/111"] = 66,
    ["Items/112"] = 67,
    ["Items/113"] = 68,
    ["Items/114"] = 69,
    ["Items/115"] = 70,
    ["Items/116"] = 71,
    ["Items/117"] = 72,
    ["Items/118"] = 73,
    ["Items/119"] = 74,
    ["Items/12"] = 75,
    ["Items/120"] = 76,
    ["Items/121"] = 77,
    ["Items/122"] = 78,
    ["Items/123"] = 79,
    ["Items/124"] = 80,
    ["Items/125"] = 81,
    ["Items/126"] = 82,
    ["Items/127"] = 83,
    ["Items/128"] = 84,
    ["Items/129"] = 85,
    ["Items/13"] = 86,
    ["Items/130"] = 87,
    ["Items/131"] = 88,
    ["Items/132"] = 89,
    ["Items/133"] = 90,
    ["Items/134"] = 91,
    ["Items/135"] = 92,
    ["Items/136"] = 93,
    ["Items/137"] = 94,
    ["Items/138"] = 95,
    ["Items/139"] = 96,
    ["Items/14"] = 97,
    ["Items/140"] = 98,
    ["Items/141"] = 99,
    ["Items/142"] = 100,
    ["Items/143"] = 101,
    ["Items/144"] = 102,
    ["Items/145"] = 103,
    ["Items/146"] = 104,
    ["Items/147"] = 105,
    ["Items/148"] = 106,
    ["Items/149"] = 107,
    ["Items/15"] = 108,
    ["Items/150"] = 109,
    ["Items/151"] = 110,
    ["Items/152"] = 111,
    ["Items/153"] = 112,
    ["Items/154"] = 113,
    ["Items/155"] = 114,
    ["Items/156"] = 115,
    ["Items/157"] = 116,
    ["Items/158"] = 117,
    ["Items/159"] = 118,
    ["Items/16"] = 119,
    ["Items/160"] = 120,
    ["Items/161"] = 121,
    ["Items/162"] = 122,
    ["Items/163"] = 123,
    ["Items/17"] = 124,
    ["Items/18"] = 125,
    ["Items/19"] = 126,
    ["Items/2"] = 127,
    ["Items/20"] = 128,
    ["Items/21"] = 129,
    ["Items/22"] = 130,
    ["Items/23"] = 131,
    ["Items/24"] = 132,
    ["Items/25"] = 133,
    ["Items/26"] = 134,
    ["Items/27"] = 135,
    ["Items/28"] = 136,
    ["Items/29"] = 137,
    ["Items/3"] = 138,
    ["Items/30"] = 139,
    ["Items/31"] = 140,
    ["Items/32"] = 141,
    ["Items/33"] = 142,
    ["Items/34"] = 143,
    ["Items/35"] = 144,
    ["Items/36"] = 145,
    ["Items/37"] = 146,
    ["Items/38"] = 147,
    ["Items/39"] = 148,
    ["Items/4"] = 149,
    ["Items/40"] = 150,
    ["Items/41"] = 151,
    ["Items/42"] = 152,
    ["Items/43"] = 153,
    ["Items/44"] = 154,
    ["Items/45"] = 155,
    ["Items/46"] = 156,
    ["Items/47"] = 157,
    ["Items/48"] = 158,
    ["Items/49"] = 159,
    ["Items/5"] = 160,
    ["Items/50"] = 161,
    ["Items/51"] = 162,
    ["Items/52"] = 163,
    ["Items/53"] = 164,
    ["Items/54"] = 165,
    ["Items/55"] = 166,
    ["Items/56"] = 167,
    ["Items/57"] = 168,
    ["Items/58"] = 169,
    ["Items/59"] = 170,
    ["Items/6"] = 171,
    ["Items/60"] = 172,
    ["Items/61"] = 173,
    ["Items/62"] = 174,
    ["Items/63"] = 175,
    ["Items/64"] = 176,
    ["Items/65"] = 177,
    ["Items/66"] = 178,
    ["Items/67"] = 179,
    ["Items/68"] = 180,
    ["Items/69"] = 181,
    ["Items/7"] = 182,
    ["Items/70"] = 183,
    ["Items/71"] = 184,
    ["Items/72"] = 185,
    ["Items/73"] = 186,
    ["Items/74"] = 187,
    ["Items/75"] = 188,
    ["Items/76"] = 189,
    ["Items/77"] = 190,
    ["Items/78"] = 191,
    ["Items/79"] = 192,
    ["Items/8"] = 193,
    ["Items/80"] = 194,
    ["Items/81"] = 195,
    ["Items/82"] = 196,
    ["Items/83"] = 197,
    ["Items/84"] = 198,
    ["Items/85"] = 199,
    ["Items/86"] = 200,
    ["Items/87"] = 201,
    ["Items/88"] = 202,
    ["Items/89"] = 203,
    ["Items/9"] = 204,
    ["Items/90"] = 205,
    ["Items/91"] = 206,
    ["Items/92"] = 207,
    ["Items/93"] = 208,
    ["Items/94"] = 209,
    ["Items/95"] = 210,
    ["Items/96"] = 211,
    ["Items/97"] = 212,
    ["Items/98"] = 213,
    ["Items/99"] = 214,
    ["Items/bomb"] = 215,
    ["Items/bombFlash"] = 216,
    ["Items/bush"] = 217,
    ["Items/buttonBlue"] = 218,
    ["Items/buttonBlue_pressed"] = 219,
    ["Items/buttonGreen"] = 220,
    ["Items/buttonGreen_pressed"] = 221,
    ["Items/buttonRed"] = 222,
    ["Items/buttonRed_pressed"] = 223,
    ["Items/buttonYellow"] = 224,
    ["Items/buttonYellow_pressed"] = 225,
    ["Items/cactus"] = 226,
    ["Items/chain"] = 227,
    ["Items/cloud1"] = 228,
    ["Items/cloud2"] = 229,
    ["Items/cloud3"] = 230,
    ["Items/coinBronze"] = 231,
    ["Items/coinGold"] = 232,
    ["Items/coinSilver"] = 233,
    ["Items/fireball"] = 234,
    ["Items/flagBlue"] = 235,
    ["Items/flagBlue2"] = 236,
    ["Items/flagBlueHanging"] = 237,
    ["Items/flagGreen"] = 238,
    ["Items/flagGreen2"] = 239,
    ["Items/flagGreenHanging"] = 240,
    ["Items/flagRed"] = 241,
    ["Items/flagRed2"] = 242,
    ["Items/flagRedHanging"] = 243,
    ["Items/flagYellow"] = 244,
    ["Items/flagYellow2"] = 245,
    ["Items/flagYellowHanging"] = 246,
    ["Items/gemBlue"] = 247,
    ["Items/gemGreen"] = 248,
    ["Items/gemRed"] = 249,
    ["Items/gemYellow"] = 250,
    ["Items/keyBlue"] = 251,
    ["Items/keyGreen"] = 252,
    ["Items/keyRed"] = 253,
    ["Items/keyYellow"] = 254,
    ["Items/mushroomBrown"] = 255,
    ["Items/mushroomRed"] = 256,
    ["Items/particleBrick1a"] = 257,
    ["Items/particleBrick1b"] = 258,
    ["Items/particleBrick2a"] = 259,
    ["Items/particleBrick2b"] = 260,
    ["Items/plant"] = 261,
    ["Items/plantPurple"] = 262,
    ["Items/rock"] = 263,
    ["Items/snowhill"] = 264,
    ["Items/spikes"] = 265,
    ["Items/springboardDown"] = 266,
    ["Items/springboardUp"] = 267,
    ["Items/star"] = 268,
    ["Items/switchLeft"] = 269,
    ["Items/switchMid"] = 270,
    ["Items/switchRight"] = 271,
    ["Items/weight"] = 272,
    ["Items/weightChained"] = 273,
    ["Player/p1_duck"] = 274,
    ["Player/p1_front"] = 275,
    ["Player/p1_hurt"] = 276,
    ["Player/p1_jump"] = 277,
    ["Player/p1_stand"] = 278,
    ["Player/p1_walk01"] = 279,
    ["Player/p1_walk02"] = 280,
    ["Player/p1_walk03"] = 281,
    ["Player/p1_walk04"] = 282,
    ["Player/p1_walk05"] = 283,
    ["Player/p1_walk06"] = 284,
    ["Player/p1_walk07"] = 285,
    ["Player/p1_walk08"] = 286,
    ["Player/p1_walk09"] = 287,
    ["Player/p1_walk10"] = 288,
    ["Player/p1_walk11"] = 289,
    ["Player/p2_duck"] = 290,
    ["Player/p2_front"] = 291,
    ["Player/p2_hurt"] = 292,
    ["Player/p2_jump"] = 293,
    ["Player/p2_stand"] = 294,
    ["Player/p2_walk01"] = 295,
    ["Player/p2_walk02"] = 296,
    ["Player/p2_walk03"] = 297,
    ["Player/p2_walk04"] = 298,
    ["Player/p2_walk05"] = 299,
    ["Player/p2_walk06"] = 300,
    ["Player/p2_walk07"] = 301,
    ["Player/p2_walk08"] = 302,
    ["Player/p2_walk09"] = 303,
    ["Player/p2_walk10"] = 304,
    ["Player/p2_walk11"] = 305,
    ["Player/p3_duck"] = 306,
    ["Player/p3_front"] = 307,
    ["Player/p3_hurt"] = 308,
    ["Player/p3_jump"] = 309,
    ["Player/p3_stand"] = 310,
    ["Player/p3_walk01"] = 311,
    ["Player/p3_walk02"] = 312,
    ["Player/p3_walk03"] = 313,
    ["Player/p3_walk04"] = 314,
    ["Player/p3_walk05"] = 315,
    ["Player/p3_walk06"] = 316,
    ["Player/p3_walk07"] = 317,
    ["Player/p3_walk08"] = 318,
    ["Player/p3_walk09"] = 319,
    ["Player/p3_walk10"] = 320,
    ["Player/p3_walk11"] = 321,
    ["UI/9slices/blue_button02_0_0"] = 322,
    ["UI/9slices/blue_button02_0_1"] = 323,
    ["UI/9slices/blue_button02_0_2"] = 324,
    ["UI/9slices/blue_button02_1_0"] = 325,
    ["UI/9slices/blue_button02_1_1"] = 326,
    ["UI/9slices/blue_button02_1_2"] = 327,
    ["UI/9slices/blue_button02_2_0"] = 328,
    ["UI/9slices/blue_button02_2_1"] = 329,
    ["UI/9slices/blue_button02_2_2"] = 330,
    ["UI/9slices/blue_button03_0_0"] = 331,
    ["UI/9slices/blue_button03_0_1"] = 332,
    ["UI/9slices/blue_button03_0_2"] = 333,
    ["UI/9slices/blue_button03_1_0"] = 334,
    ["UI/9slices/blue_button03_1_1"] = 335,
    ["UI/9slices/blue_button03_1_2"] = 336,
    ["UI/9slices/blue_button03_2_0"] = 337,
    ["UI/9slices/blue_button03_2_1"] = 338,
    ["UI/9slices/blue_button03_2_2"] = 339,
    ["UI/9slices/green_button02_0_0"] = 340,
    ["UI/9slices/green_button02_0_1"] = 341,
    ["UI/9slices/green_button02_0_2"] = 342,
    ["UI/9slices/green_button02_1_0"] = 343,
    ["UI/9slices/green_button02_1_1"] = 344,
    ["UI/9slices/green_button02_1_2"] = 345,
    ["UI/9slices/green_button02_2_0"] = 346,
    ["UI/9slices/green_button02_2_1"] = 347,
    ["UI/9slices/green_button02_2_2"] = 348,
    ["UI/9slices/green_button03_0_0"] = 349,
    ["UI/9slices/green_button03_0_1"] = 350,
    ["UI/9slices/green_button03_0_2"] = 351,
    ["UI/9slices/green_button03_1_0"] = 352,
    ["UI/9slices/green_button03_1_1"] = 353,
    ["UI/9slices/green_button03_1_2"] = 354,
    ["UI/9slices/green_button03_2_0"] = 355,
    ["UI/9slices/green_button03_2_1"] = 356,
    ["UI/9slices/green_button03_2_2"] = 357,
    ["UI/9slices/grey_box_0_0"] = 358,
    ["UI/9slices/grey_box_0_1"] = 359,
    ["UI/9slices/grey_box_0_2"] = 360,
    ["UI/9slices/grey_box_1_0"] = 361,
    ["UI/9slices/grey_box_1_1"] = 362,
    ["UI/9slices/grey_box_1_2"] = 363,
    ["UI/9slices/grey_box_2_0"] = 364,
    ["UI/9slices/grey_box_2_1"] = 365,
    ["UI/9slices/grey_box_2_2"] = 366,
    ["UI/9slices/grey_button02_0_0"] = 367,
    ["UI/9slices/grey_button02_0_1"] = 368,
    ["UI/9slices/grey_button02_0_2"] = 369,
    ["UI/9slices/grey_button02_1_0"] = 370,
    ["UI/9slices/grey_button02_1_1"] = 371,
    ["UI/9slices/grey_button02_1_2"] = 372,
    ["UI/9slices/grey_button02_2_0"] = 373,
    ["UI/9slices/grey_button02_2_1"] = 374,
    ["UI/9slices/grey_button02_2_2"] = 375,
    ["UI/9slices/grey_button03_0_0"] = 376,
    ["UI/9slices/grey_button03_0_1"] = 377,
    ["UI/9slices/grey_button03_0_2"] = 378,
    ["UI/9slices/grey_button03_1_0"] = 379,
    ["UI/9slices/grey_button03_1_1"] = 380,
    ["UI/9slices/grey_button03_1_2"] = 381,
    ["UI/9slices/grey_button03_2_0"] = 382,
    ["UI/9slices/grey_button03_2_1"] = 383,
    ["UI/9slices/grey_button03_2_2"] = 384,
    ["UI/9slices/grey_panel_0_0"] = 385,
    ["UI/9slices/grey_panel_0_1"] = 386,
    ["UI/9slices/grey_panel_0_2"] = 387,
    ["UI/9slices/grey_panel_1_0"] = 388,
    ["UI/9slices/grey_panel_1_1"] = 389,
    ["UI/9slices/grey_panel_1_2"] = 390,
    ["UI/9slices/grey_panel_2_0"] = 391,
    ["UI/9slices/grey_panel_2_1"] = 392,
    ["UI/9slices/grey_panel_2_2"] = 393,
    ["UI/9slices/red_button00_0_0"] = 394,
    ["UI/9slices/red_button00_0_1"] = 395,
    ["UI/9slices/red_button00_0_2"] = 396,
    ["UI/9slices/red_button00_1_0"] = 397,
    ["UI/9slices/red_button00_1_1"] = 398,
    ["UI/9slices/red_button00_1_2"] = 399,
    ["UI/9slices/red_button00_2_0"] = 400,
    ["UI/9slices/red_button00_2_1"] = 401,
    ["UI/9slices/red_button00_2_2"] = 402,
    ["UI/9slices/red_button01_0_0"] = 403,
    ["UI/9slices/red_button01_0_1"] = 404,
    ["UI/9slices/red_button01_0_2"] = 405,
    ["UI/9slices/red_button01_1_0"] = 406,
    ["UI/9slices/red_button01_1_1"] = 407,
    ["UI/9slices/red_button01_1_2"] = 408,
    ["UI/9slices/red_button01_2_0"] = 409,
    ["UI/9slices/red_button01_2_1"] = 410,
    ["UI/9slices/red_button01_2_2"] = 411,
    ["UI/9slices/yellow_button02_0_0"] = 412,
    ["UI/9slices/yellow_button02_0_1"] = 413,
    ["UI/9slices/yellow_button02_0_2"] = 414,
    ["UI/9slices/yellow_button02_1_0"] = 415,
    ["UI/9slices/yellow_button02_1_1"] = 416,
    ["UI/9slices/yellow_button02_1_2"] = 417,
    ["UI/9slices/yellow_button02_2_0"] = 418,
    ["UI/9slices/yellow_button02_2_1"] = 419,
    ["UI/9slices/yellow_button02_2_2"] = 420,
    ["UI/9slices/yellow_button03_0_0"] = 421,
    ["UI/9slices/yellow_button03_0_1"] = 422,
    ["UI/9slices/yellow_button03_0_2"] = 423,
    ["UI/9slices/yellow_button03_1_0"] = 424,
    ["UI/9slices/yellow_button03_1_1"] = 425,
    ["UI/9slices/yellow_button03_1_2"] = 426,
    ["UI/9slices/yellow_button03_2_0"] = 427,
    ["UI/9slices/yellow_button03_2_1"] = 428,
    ["UI/9slices/yellow_button03_2_2"] = 429,
    ["UI/Icon/check1"] = 430,
    ["UI/Icon/check2"] = 431,
    ["UI/Icon/check3"] = 432,
    ["UI/Icon/check4"] = 433,
    ["UI/Icon/circle1"] = 434,
    ["UI/Icon/circle2"] = 435,
    ["UI/Icon/circle3"] = 436,
    ["UI/Icon/circle4"] = 437,
    ["UI/Icon/cross1"] = 438,
    ["UI/Icon/cross2"] = 439,
    ["UI/Icon/cross3"] = 440,
    ["UI/Icon/cross4"] = 441,
    ["UI/Icon/icon"] = 442,
    ["UI/Icon/sword1"] = 443,
    ["UI/Icon/sword2"] = 444,
    ["UI/Icon/sword3"] = 445,
    ["castleLedgeLeft"] = 446,
    ["castleLedgeRight"] = 447,
    ["dirtLedgeLeft"] = 448,
    ["dirtLedgeRight"] = 449,
    ["grassLedgeLeft"] = 450,
    ["grassLedgeRight"] = 451,
    ["hill_large"] = 452,
    ["hill_largeAlt"] = 453,
    ["hill_small"] = 454,
    ["hill_smallAlt"] = 455,
    ["sandLedgeLeft"] = 456,
    ["sandLedgeRight"] = 457,
    ["snowLedgeLeft"] = 458,
    ["snowLedgeRight"] = 459,
    ["stoneLedgeLeft"] = 460,
    ["stoneLedgeRight"] = 461,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
