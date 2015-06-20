local PackageName, Major, Minor, Patch = "ZoneHelper", 1, 0, 0
local PkgMajor, PkgMinor = PackageName, tonumber(sting.format("%02d%02d%02d", Major, Minor, Patch))
local Pkg = Apollo.GetPackage(PkgMajor)
if Pkg and (Pkg.nVersion or 0) >= PkgMinor then
  return -- no upgrade needed
end

ZoneHelper.CodeEnumContinents = {
  -- Raids
  R_Datascape = -1,
  R_GeneticArchives = -1,
  R_CoreY83 = -1,
  -- Dungeons
  D_KelVoreth = 15,
  D_Skullcano = 14,
  D_Stormtalon = 13,
  D_Swordmaiden = 48,
  D_Protogames = 90,
  D_VetProtogames = 90,
  --SoloDungeons
  SD_OmniCore = 80,
  -- Adventures
  A_MalgraveTrail = 17,
  A_Crimelords = 26,
  A_Wilds = 23,
  A_Seige = 16,
  A_Riot = 27,
  A_Bay = 84,
  -- Continents
  C_Olyssia = 8,
  C_Isigrol = 33,
  C_Alizar = 6,
  C_Farside = 19,
  -- StartingAreas
  SA_TheDestiny = 30,            -- Dominion
  SA_TheGamblersRuin = 22,       -- Exiles
  -- DailyZones
  DZ_StarComm = 72,
  DZ_CrimsonBadlands = 61,
  DZ_NorthernWilds = 32,
  --Shiphands
  SH_FragmentZero = 83,
  SH_OutpostM13 = -1,
  SH_Infestation = 18,
  SH_RageLogic = -1,
  SH_SpaceMadness = -1,
  SH_DeepSpaceExploration = -1,
  SH_Gauntlet = -1
}

ZoneHelper.CodeEnumZones = {
  -- Raids
  R_Datascape = -1,
  R_GeneticArchives = -1,
  R_CoreY83 = -1,
  -- Dungeons
  D_KelVoreth = -1,
  D_Skullcano = -1,
  D_Stormtalon = -1,
  D_Swordmaiden = -1,
  D_Protogames = -1,
  D_VetProtogames = -1,
  --SoloDungeons
  SD_OmniCore = 214,
  -- Adventures
  A_MalgraveTrail = 24,
  A_Crimelords = -1,
  A_Wilds = -1,
  A_Seige = 23,
  A_Riot = -1,
  A_Bay = 307,
  -- Outdoors
  Z_EverstarGrove = -1,
  Z_NorthernWilds = -1,
  Z_CrimsonIsle = -1,
  Z_LevianBay = -1,
  Z_Deradune = -1,
  Z_Ellevar = -1,
  Z_Celestion -1,
  Z_Algoroc = -1,
  Z_Auroria = -1,
  Z_Galeras = -1,
  Z_Whitevale = -1,
  Z_Wilderrune = -1,
  Z_Farside = -1,
  Z_Malgrave = 42,
  Z_SouthernGrimvault = 53,
  Z_WesternGrimvault = -1,
  Z_Blighthaven = -1,
  Z_TheDefile = -1,
  Z_Dreadmoor = -1,
  -- Cities
  C_Illium = 78,
  C_Thayd = -1,
  -- StartingAreas
  SA_TheDestiny = 184,            -- Dominion
  SA_TheGamblersRuin = 151,       -- Exiles
  -- DailyZones
  DZ_StarComm = 192,
  DZ_CrimsonBadlands = -1,
  DZ_NorthernWilds = -1,
  --Shiphands
  SH_FragmentZero = -1,
  SH_OutpostM13 = -1,
  SH_Infestation = 25,
  SH_RageLogic = -1,
  SH_SpaceMadness = -1,
  SH_DeepSpaceExploration = -1,
  SH_Gauntlet = -1
}

ZoneHelper.ZoneInfo = {
  [ZoneHelper.CodeEnumZones.Datascape] = {
    LongName = "DataScape",
    ShortName = "DS",
    continentId = ZoneHelper.CodeEnumContinents.Datascape
  },
  [ZoneHelper.CodeEnumZones.GeneticArchives] = {
    LongName = "Genetic Archives",
    ShortName = "GA"
  },
  CoreY83 = -1,
  -- Dungeons
  KelVoreth = 15,
  Skullcano = 14,
  Stormtalon = 13,
  Swordmaiden = 48,
  Protogames = 90,
  Olyssia = 8,
  Isigrol = 33,
  Alizar = 6,
  Farside = 19,
  StarComm = 70,
  CrimsonBadlands = 61,
  NorthernWilds = 32,
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
