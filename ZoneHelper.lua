local PackageName, Major, Minor, Patch = "ZoneHelper", 1, 0, 0
local PkgMajor, PkgMinor = PackageName, tonumber(sting.format("%02d%02d%02d", Major, Minor, Patch))
local Pkg = Apollo.GetPackage(PkgMajor)
if Pkg and (Pkg.nVersion or 0) >= PkgMinor then
  return -- no upgrade needed
end

ZoneHelper.CodeEnumContinents = {
  -- Raids
  R_Datascape = 52,             -- Datascape
  R_GeneticArchives = 67,       -- Genetic Archives
  R_CoreY83 = 91,               -- Initialization Core Y-83
  -- Dungeons
  D_Stormtalon = 13,            -- Stormtalon's Lair
  D_Skullcano = 14,             -- Scullcano
  D_KelVoreth = 15,             -- Ruins of Kel Voreth
  D_Swordmaiden = 48,           -- Sanctuary of the Swordmaiden
  D_UltProtogames = 69,         -- Ultimate Protogames
  D_ProtogamesAcadamy = 90,     -- Protogames Academy
  --SoloDungeons
  SD_OmniCore = 80,             -- OMNICore-1
  -- Adventures
  A_Seige = 16,                 -- Galeras Adventure
  A_MalgraveTrail = 17,         -- Malgrave Adventure
  A_WarOfTheWilds = 23,         -- Northern Wastes Adventure
  A_Hycrest = 24,               -- Hycrest Adventure
  A_Algoroc = 25,               -- Algoroc Adventure
  A_Crimelords = 26,            -- Whitevale Adventure
  A_Riot = 27,                  -- Astrovoid Prison Adventure
  A_Ellevar = 28,               -- Ellevar Adventure
  A_Farside = 74,               -- Farside Adventure (???)
  A_Bay = 84,                   -- Levian Bay Backup
  -- Continents
  C_Alizar = 6,
  C_Olyssia = 8,
  C_Farside = 19,
  C_Isigrol = 33,
  -- StartingAreas
  SA_TheGamblersRuin = 22,      -- Exiles Ark Ship
  SA_TheDestiny = 30,           -- Dominion Ark Ship
  SA_DestinyCryo = 76,          -- Dominion Cryo Recovery
  -- DailyZones
  DZ_NorthernWastes = 32,       -- Northern Wastes
  DZ_CrimsonBadlands = 61,      -- Crimson Isle Pocket Cap
  DZ_StarComm = 72,             -- Levian Bay Pocket Cap
  --Shiphands
  SH_Infestation = 18,          -- X82CargoShip
  SH_OutpostM13 = 38,           -- Asteroid Mining
  SH_VoidHunter = 50,           -- Void Hunter (???)
  SH_RageLogic = 51,            -- Rage Logic
  SH_SpaceMadness = 58,         -- Space Madness
  SH_DeepSpace = 60,            -- Deep Space Exploration
  SH_Gauntlet = 62,             -- The Gauntlet
  SH_FragmentZero = 83,
  -- Expeditions
  EX_Graylight = 42,            -- Graylight Grapplefest
  EX_KelVoreth = 43,            -- Kel Voreth Underforge
  EX_MeltingPot = 44,           -- The Melting Pot
  EX_Mayday = 45,               -- Mayday
  EX_CreeperCave = 46,          -- Creeper Cave
  EX_SpiderTomb = 47,           -- Spider Tomb
  EX_EldanLab = 75,             -- Abandoned Eldan Test Lab
  --PvP
  PVP_Arena = 39,
  PVP_Walatiki = 40,            -- Smash and Grab
  PVP_Bloodsworn = 53,          -- Halls of the Bloodsworn
  PVP_Warplot = 54,             -- Warplot Battleground
  PVP_WarplotSkymap = 55,       -- Warplot Skymap
  PVP_Cannon = 56,              -- ???
  PVP_Sabotage = 57,            -- Sabotage
  --Misc
  M_Housing = 7,                -- Inside House
  M_HousingSkymap = 36,
  -- World Dungeons
  WD_GrimvaultCore = 73,        -- Grimvaule Core
  WD_ExoLabXC42 = 85,           -- Exo-Lab XC42 (R12)
  -- Story
  ST_Drusera1 = 63,
  ST_Drusera2 = 64,
  ST_Drusera3 = 65,
  ST_Drusera4 = 68,
  ST_Drusera5 = 71,
  -- Quest
  Q_TheDustStalker = 87,
  -- Unknown Ares
  U_HalonRing = 9,
  U_Protopia = 10,
  U_QuestTestIsland = 11,
  U_InitiateIsland = 12,
  U_HousingAlgorocNeighborhood = 20,  -- ???
  U_EternityIslands = 30,
  U_PellicaneTestWorld = 34,
  U_RandyLand = 41,
  U_Coralus = 49,
  U_Arcterra = 92
}

ZoneHelper.ContinentInfo = {
  [6] = {
    name = "Alizar",
    commonName = "Alizar",
    zones = {}
  },
  [7] = {
    name = "Housing",
    commonName = "",
    zones = {}
  },
  [8] = {
    name = "Olyssia",
    commonName = "",
    zones = {}
  },
  [9] = {
    name = "Halon Ring",
    commonName = "",
    zones = {}
  },
  [10] = {
    name = "Protopia",
    commonName = "",
    zones = {}
  },
  [11] = {
    name = "QuestTestIsland",
    commonName = "",
    zones = {}
  },
  [12] = {
    name = "InitiateIsland",
    commonName = "",
    zones = {}
  },
  [13] = {
    name = "StormtalonLair",
    commonName = "",
    zones = {}
  },
  [14] = {
    name = "Skullcano",
    commonName = "",
    zones = {}
  },
  [15] = {
    name = "Kel Voreth",
    commonName = "",
    zones = {}
  },
  [16] = {
    name = "Galeras Adventure",
    commonName = "",
    zones = {}
  },
  [17] = {
    name = "Malgrave Adventure",
    commonName = "",
    zones = {}
  },
  [18] = {
    name = "X82CargoShip",
    commonName = "",
    zones = {}
  },
  [19] = {
    name = "Farside",
    commonName = "",
    zones = {}
  },
  [20] = {
    name = "Housing Algoroc Neighborhood",
    commonName = "",
    zones = {}
  },
  [22] = {
    name = "Exile Ark Ship",
    commonName = "",
    zones = {}
  },
  [23] = {
    name = "Northern Wastes Adventure",
    commonName = "",
    zones = {}
  },
  [24] = {
    name = "Hycrest Adventure",
    commonName = "",
    zones = {}
  },
  [25] = {
    name = "Algoroc Adventure",
    commonName = "",
    zones = {}
  },
  [26] = {
    name = "Whitevale Adventure",
    commonName = "",
    zones = {}
  },
  [27] = {
    name = "Astrovoid Prison Adventure",
    commonName = "",
    zones = {}
  },
  [28] = {
    name = "Ellevar Adventure",
    commonName = "",
    zones = {}
  },
  [30] = {
    name = "Dominion Ark Ship",
    commonName = "",
    zones = {}
  },
  [31] = {
    name = "Eternity Islands",
    commonName = "",
    zones = {}
  },
  [32] = {
    name = "Northern Wastes",
    commonName = "",
    zones = {}
  },
  [33] = {
    name = "Isigrol",
    commonName = "",
    zones = {}
  },
  [34] = {
    name = "Pellicane Test World",
    commonName = "",
    zones = {}
  },
  [36] = {
    name = "Housing Skymap",
    commonName = "",
    zones = {}
  },
  [38] = {
    name = "Shiphand: Asteroid Mining",
    commonName = "",
    zones = {}
  },
  [39] = {
    name = "PvP_Arena",
    commonName = "",
    zones = {}
  },
  [40] = {
    name = "PvP Smash and Grab",
    commonName = "Walatiki Temple",
    zones = { 69 }
  },
  [41] = {
    name = "RandyLand",
    commonName = "RandyLand",
    zones = { 77 }
  },
  [42] = {
    name = "Expedition: Graylight Grapplefest",
    commonName = "",
    zones = {}
  },
  [43] = {
    name = "Expedition: Kel Voreth Underforge",
    commonName = "",
    zones = {}
  },
  [44] = {
    name = "Expedition: The Melting Pot",
    commonName = "",
    zones = {}
  },
  [45] = {
    name = "Expedition: Mayday",
    commonName = "",
    zones = {}
  },
  [46] = {
    name = "Expedition: Creepy Cave",
    commonName = "",
    zones = {}
  },
  [47] = {
    name = "Expedition: Spider Tomb",
    commonName = "",
    zones = {}
  },
  [48] = {
    name = "Sanctuary of the Swordmaiden",
    commonName = "",
    zones = {}
  },
  [49] = {
    name = "Coralus",
    commonName = "Coralus",
    zones = { 89 }
  },
  [50] = {
    name = "Shiphand: Void Hunter",
    commonName = "",
    zones = {}
  },
  [51] = {
    name = "Shiphand: Rage Logic",
    commonName = "",
    zones = {}
  },
  [52] = {
    name = "Datascape",
    commonName = "The Datascape",
    zones = { 98, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120 }
  },
  [53] = {
    name = "Halls of the Bloodsworn",
    commonName = "Halls of the Bloodsworn",
    zones = { 99 }
  },
  [54] = {
    name = "PvP: Warplot Battleground",
    commonName = "Warplot Battleground",
    zones = { 100 }
  },
  [55] = {
    name = "PvP: Warplot Sky Map",
    commonName = "Warplot Sky Map",
    zones = { 101 }
  },
  [56] = {
    name = "PvP: Cannon",
    commonName = "PvP: Cannon",
    zones = { 102 }
  },
  [57] = {
    name = "PvP: Sabotage",
    commonName = "Daggerstone Pass",
    zones = { 103 }
  },
  [58] = {
    name = "Shiphand: Space Madness",
    commonName = "",
    zones = {}
  },
  [60] = {
    name = "Shiphand: Deep Space Exploration",
    commonName = "",
    zones = {}
  },
  [61] = {
    name = "Crimson Isle Pocket Cap",
    commonName = "",
    zones = {}
  },
  [62] = {
    name = "Shiphand: The Gauntlet",
    commonName = "",
    zones = {}
  },
  [63] = {
    name = "Drusera World Story 1",
    commonName = "",
    zones = {}
  },
  [64] = {
    name = "Drusera World Story 2",
    commonName = "",
    zones = {}
  },
  [65] = {
    name = "Drusera World Story 3",
    commonName = "",
    zones = {}
  },
  [67] = {
    name = "Genetic Archives",
    commonName = "",
    zones = {}
  },
  [68] = {
    name = "Drusera World Story 4",
    commonName = "",
    zones = {}
  },
  [69] = {
    name = "Ultimate Protogames",
    commonName = "",
    zones = {}
  },
  [71] = {
    name = "Drusera World Story 5",
    commonName = "",
    zones = {}
  },
  [72] = {
    name = "Levian Bay Pocket Cap",
    commonName = "",
    zones = {}
  },
  [73] = {
    name = "Grimvault Core",
    commonName = "",
    zones = {}
  },
  [74] = {
    name = "",
    commonName = "Farside Adventure",
    zones = {}
  },
  [75] = {
    name = "Expedition: Abandoned Eldan Test Lab",
    commonName = "Abandoned Eldan Test Lab",
    zones = {}
  },
  [76] = {
    name = "",
    commonName = "The Destiny Cryo-Recovery",
    zones = { 207, 208 }
  },
  [80] = {
    name = "",
    commonName = "OMNICore-1",
    zones = { 214, 215, 216, 217 }
  },
  [82] = {
    name = "",
    commonName = "Stygian Thicket",
    zones = { 252, 253 }
  },
  [83] = {
    name = "",
    commonName = "Shiphand: Fragment Zero",
    zones = { 277, 278, 279, 280 }
  },
  [84] = {
    name = "Levian Bay Backup",
    commonName = "Bay of Betrayal",
    zones = { 307, 349, 350, 351, 352 }
  },
  [85] = {
    name = "Exo-Lab XC42",
    commonName = "Exo-Lab XC42",
    zones = { 327 }
  },
  [87] = {  -- Exile Quest
    name = "The Dust Stalker",
    commonName = "The Dust Stalker",
    zones = { 406 }
  },
  [90] = {
    name = "",
    commonName = "Protogames Academy",
    zones = { 470, 471, 472, 473 }
  },
  [91] = {
    name = "",
    commonName = "Initialization Core Y-83",
    zones = { 475 }
  },
  [92] = {
    name = "",
    commonName = "Arcterra",
    zones = { 476 }
  }
}

ZoneHelper.ZoneContinent = {
  [1] = 6,
  [2] = 6,
  [4] = 7,
  [5] = 6,
  [6] = 8,
  [7] = 8,
  [8] = 9,
  [10] = 10,
  [12] = 8,
  [14] = 6,
  [15] = 8,
  [16] = 6,
  [17] = 6,
  [18] = 12,
  [19] = 13,
  [20] = 14,
  [21] = 15,
  [22] = 8,
  [23] = 16,
  [24] = 17,
  [25] = 18,
  [26] = 8,
  [27] = 6,
  [28] = 19,
  [29] = 20,
  [31] = 22,
  [32] = 23,
  [33] = 24,
  [34] = 25,
  [35] = 26,
  [36] = 27,
  [37] = 28,
  [40] = 31,
  [41] = 32,
  [42] = 33,
  [46] = 19,
  [47] = 34,
  [48] = 9,
  [49] = 9,
  [50] = 19,
  [53] = 33,
  [57] = 8,
  [58] = 8,
  [59] = 8,
  [60] = 36,
  [63] = 38,
  [64] = 38,
  [65] = 38,
  [66] = 39,
  [67] = 38,
  [68] = 38,
  [69] = 40,
  [70] = 33,
  [71] = 33,
  [72] = 14,
  [73] = 14,
  [74] = 19,
  [75] = 19,
  [76] = 19,
  [77] = 41,
  [78] = 8,
  [79] = 42,
  [80] = 43,
  [81] = 44,
  [82] = 45,
  [83] = 46,
  [84] = 47,
  [85] = 48,
  [87] = 19,
  [88] = 19,
  [89] = 49,
  [90] = 50,
  [91] = 50,
  [92] = 50,
  [93] = 51,
  [94] = 51,
  [95] = 51,
  [96] = 51,
  [97] = 51,
  [98] = 52,
  [99] = 53,
  [100] = 54,
  [101] = 55,
  [102] = 56,
  [103] = 57,
  [104] = 52,
  [105] = 52,
  [106] = 52,
  [107] = 52,
  [108] = 52,
  [109] = 52,
  [110] = 52,
  [111] = 52,
  [112] = 52,
  [113] = 52,
  [114] = 52,
  [115] = 52,
  [116] = 52,
  [117] = 52,
  [118] = 52,
  [119] = 52,
  [120] = 52,
  [121] = 58,
  [124] = 31,
  [131] = 61,
  [132] = 62,
  [133] = 62,
  [134] = 62,
  [135] = 27,
  [137] = 63,
  [138] = 64,
  [139] = 65,
  [141] = 60,
  [142] = 60,
  [143] = 60,
  [144] = 60,
  [148] = 67,
  [149] = 67,
  [150] = 67,
  [151] = 22,
  [153] = 68,
  [155] = 33,
  [156] = 22,
  [157] = 22,
  [158] = 22,
  [159] = 22,
  [160] = 69,
  [162] = 69,
  [163] = 69,
  [164] = 69,
  [165] = 69,
  [167] = 69,
  [169] = 69,
  [170] = 69,
  [173] = 69,
  [174] = 69,
  [176] = 69,
  [177] = 69,
  [180] = 69,
  [181] = 69,
  [182] = 69,
  [184] = 30,
  [185] = 30,
  [186] = 30,
  [187] = 30,
  [188] = 30,
  [189] = 24,
  [191] = 71,
  [192] = 72,
  [194] = 27,
  [195] = 27,
  [196] = 27,
  [197] = 26,
  [198] = 26,
  [199] = 26,
  [200] = 26,
  [201] = 73,
  [202] = 74,
  [203] = 75,
  [204] = 69,
  [205] = 69,
  [207] = 76,
  [208] = 76,
  [214] = 80,
  [215] = 80,
  [216] = 80,
  [217] = 80,
  [219] = 6,
  [220] = 32,
  [221] = 32,
  [222] = 32,
  [223] = 6,
  [224] = 9,
  [225] = 9,
  [226] = 9,
  [227] = 9,
  [228] = 9,
  [232] = 9,
  [233] = 9,
  [234] = 9,
  [235] = 9,
  [236] = 9,
  [237] = 9,
  [238] = 9,
  [239] = 9,
  [240] = 9,
  [241] = 9,
  [242] = 9,
  [243] = 9,
  [244] = 9,
  [245] = 9,
  [246] = 9,
  [247] = 9,
  [248] = 9,
  [249] = 9,
  [250] = 9,
  [251] = 9,
  [252] = 82,
  [253] = 82,
  [254] = 33,
  [255] = 33,
  [256] = 33,
  [257] = 33,
  [258] = 33,
  [259] = 33,
  [260] = 33,
  [261] = 33,
  [262] = 33,
  [263] = 33,
  [264] = 33,
  [265] = 33,
  [266] = 33,
  [267] = 33,
  [268] = 33,
  [269] = 33,
  [270] = 33,
  [271] = 33,
  [273] = 33,
  [274] = 33,
  [275] = 33,
  [276] = 33,
  [277] = 83,
  [278] = 83,
  [279] = 83,
  [280] = 83,
  [281] = 33,
  [282] = 33,
  [283] = 33,
  [284] = 33,
  [285] = 33,
  [286] = 33,
  [287] = 61,
  [288] = 61,
  [289] = 61,
  [290] = 61,
  [291] = 33,
  [292] = 33,
  [293] = 33,
  [294] = 33,
  [295] = 33,
  [296] = 33,
  [298] = 33,
  [299] = 33,
  [300] = 33,
  [301] = 33,
  [302] = 33,
  [303] = 33,
  [304] = 33,
  [305] = 33,
  [306] = 33,
  [307] = 84,
  [309] = 19,
  [310] = 19,
  [311] = 19,
  [312] = 8,
  [313] = 8,
  [314] = 8,
  [315] = 8,
  [316] = 8,
  [317] = 8,
  [318] = 8,
  [319] = 8,
  [320] = 8,
  [321] = 33,
  [322] = 33,
  [323] = 33,
  [324] = 33,
  [325] = 33,
  [326] = 33,
  [327] = 85,
  [328] = 33,
  [329] = 33,
  [330] = 8,
  [331] = 8,
  [332] = 8,
  [333] = 8,
  [334] = 8,
  [335] = 8,
  [336] = 8,
  [337] = 8,
  [338] = 8,
  [339] = 8,
  [340] = 8,
  [341] = 8,
  [342] = 8,
  [343] = 8,
  [344] = 8,
  [345] = 8,
  [346] = 8,
  [349] = 84,
  [350] = 84,
  [351] = 84,
  [352] = 84,
  [353] = 17,
  [354] = 23,
  [355] = 24,
  [356] = 8,
  [357] = 8,
  [359] = 8,
  [360] = 8,
  [361] = 8,
  [362] = 8,
  [363] = 8,
  [364] = 8,
  [365] = 8,
  [366] = 8,
  [367] = 8,
  [368] = 8,
  [369] = 8,
  [370] = 8,
  [371] = 8,
  [372] = 8,
  [373] = 8,
  [374] = 8,
  [375] = 8,
  [376] = 8,
  [377] = 8,
  [378] = 8,
  [379] = 8,
  [380] = 8,
  [381] = 8,
  [382] = 8,
  [383] = 8,
  [384] = 8,
  [385] = 8,
  [386] = 8,
  [387] = 8,
  [388] = 8,
  [389] = 8,
  [390] = 8,
  [391] = 8,
  [395] = 6,
  [396] = 6,
  [397] = 6,
  [398] = 6,
  [399] = 6,
  [400] = 6,
  [401] = 6,
  [402] = 6,
  [403] = 6,
  [404] = 6,
  [405] = 6,
  [406] = 87,
  [407] = 6,
  [408] = 6,
  [409] = 6,
  [410] = 6,
  [411] = 6,
  [412] = 6,
  [413] = 6,
  [414] = 6,
  [415] = 6,
  [416] = 6,
  [417] = 6,
  [418] = 6,
  [419] = 6,
  [420] = 6,
  [421] = 6,
  [422] = 6,
  [423] = 6,
  [424] = 6,
  [425] = 6,
  [426] = 6,
  [427] = 6,
  [428] = 6,
  [429] = 6,
  [430] = 6,
  [431] = 6,
  [432] = 6,
  [433] = 6,
  [434] = 6,
  [435] = 6,
  [436] = 6,
  [437] = 6,
  [438] = 6,
  [439] = 6,
  [440] = 6,
  [441] = 6,
  [442] = 6,
  [443] = 6,
  [444] = 6,
  [445] = 6,
  [446] = 6,
  [447] = 6,
  [448] = 6,
  [449] = 6,
  [450] = 6,
  [451] = 6,
  [452] = 6,
  [453] = 6,
  [454] = 6,
  [455] = 6,
  [456] = 8,
  [457] = 8,
  [458] = 8,
  [459] = 8,
  [460] = 8,
  [461] = 8,
  [462] = 6,
  [464] = 33,
  [470] = 90,
  [471] = 90,
  [472] = 90,
  [473] = 90,
  [474] = 6,
  [475] = 91,
  [476] = 92
}

function ZoneHelper:new(args)
  local new = { }

  if args then
    for key, val in pairs(args) do
      new[key] = val
    end
  end
  return setmetatable(new, ZoneHelper)
end

function ZoneHelper:OnLoad()
  --Event_FireGenericEvent("OneVersion_ReportAddonInfo", "ZoneHelper", Major, Minor, Patch, 0, true)
end

function ZoneHelper:IsZoneRaid(zoneid)
end

function ZoneHelper:IsZoneDungeon(zoneid)
end

function ZoneHelper:IsZoneAdventure(zoneid)
end

function ZoneHelper:IsZoneShiphand(zoneid)
end

-- Dungeons, Solo Dungeons, Raids, Adventures, and Shiphands
function ZoneHelper:IsZoneInstance(zoneid)
end

function ZoneHelper:IsContinentRaid(continentId)
  return continentId == 52 or continentId == 67
end

function ZoneHelper:IsContinentDungeon(continentId)
  return continentId == 15 or continentId == 13 or continentId == 14 or continentId == 48 or continentId == 90
end

function ZoneHelper:IsContinentAdventure(continentId)
  return continentId == 27 or continentId == 84 or continentId == 26 or continentId == 16 or continentId == 17 or continentId == 23
end

function ZoneHelper:IsContinentShiphand(continentId)
end

-- Dungeons, Solo Dungeons, Raids, Adventures, and Shiphands
function ZoneHelper:IsContinentInstance(continentId)

end

--/eval vardump(GameLib.GetCurrentZoneMap())
Apollo.RegisterPackage(ZoneHelper, PkgMajor, PkgMinor, {})
