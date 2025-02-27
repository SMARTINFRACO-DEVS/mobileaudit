class ChecklistCategory {
  final String name;
  final Map<String, String> items;

  ChecklistCategory({required this.name, required this.items});
}

class ChecklistData {
  final Map<String, ChecklistCategory> siteEnvironment;
  final Map<String, String> tower; // Use Map for consistent response options
  final Map<String, String> earthing; // Use Map for consistent response options
  final Map<String, Map<String, String>> sectorIssues; // Maintain structure
  final Map<String, String> btsEquipment; // Use Map for consistent response options
  final Map<String, String> powerEquipmentUnit; // Use Map for consistent response options

  ChecklistData({
    required this.siteEnvironment,
    required this.tower,
    required this.earthing,
    required this.sectorIssues,
    required this.btsEquipment,
    required this.powerEquipmentUnit,
  });
}

final checklistData = ChecklistData(
  siteEnvironment: {
    "Site Environment A": ChecklistCategory(
      name: "Site Environment A",
      items: {
        "1": "Signage available and ok",
        "2": "Site secured with locks",
        "3": "Security guard house available",
      "4": "Security personnel on site",
      "5": "Remote monitoring system available(Power)"
      },
    ),
        "Site Environment B": ChecklistCategory(
      name: "Site Environment B",
      items: {
       "1": "Site is clear of weeds and debris(Internal)",
      "2": "Site is clear of weeds and debris(external 1m wide from the fence)",
      "3": "Site area is fumigated(internal)",
      "4": "Site area is fumigated(external 1m wide from the fence)"
      },
    ),
      "Site Environment C": ChecklistCategory(
      name: "Site Environment C",
      items: {
       "1": "Fence mesh in good condition",
      "2": "Fence post in good condition (intermediate and corner)",
      "3": "Razor coil in good condition",
      "4": "Fence gate in good state",
      "5": "Retaining wall in good condition"
      },
    ),
       "Site Environment D": ChecklistCategory(
      name: "Site Environment D",
      items: {
        "1": "Site leveling ok",
      "2": "Chippings on site at required volume(100mm)",
      "3": "All piping works covered and not exposed"
      },
    ),
    
    
  },
  tower: {
     "1": "Security light available and functioning",
    "2": "AWL available and functioning",
    "3": "Ladder secured well and in good state",
    "4": "Cable tray in good condition",
    "5": "Rest platform secured and ok",
    "6": "Bolts and nuts in good condition",
    "7": "Tower members in good condition",
    "8": "Grouting ok beneath tower base",
  },
  earthing: {
  "1": "Earth connections covered with Denzo Paste/Grease",
    "2": "Correct materials used for earthing",
    "3": "The combined earth reading less or equal to 5 Ohms",
    "4": "The external ground bus bar bonded to grounding ring",
    "5": "Grounding conductors securely fastened"
  },
  sectorIssues: {
    "Sector 1": {
        "1": "Fiber cables(CPRI) ok and functioning",
        "2": "RRU power cables ok and functioning",
        "3": "Physical checks of weather proofing on jumper cables ok",
        "4": "Physical checks IF cables ok",
        "5": "RRU available and ok",
        "6": "Physical checks of GSM Antenna available",
        "7": "MW available and link up(record azimuth)",
        "8": "Mounting kits in good condition(RRU)",
        "9": "Mounting kits in good condition(GSM)",
        "10": "Mounting kits in good condition(MW)",
        "11": "Boom and bracket in good condition(RRU)",
        "12": "Boom and bracket in good condition(GSM)",
        "13": "Boom and bracket in good condition(MW)",
        "14": "I-bolts and U-bolts in good condition(RRU)",
        "15": "I-bolts and U-bolts in good condition(GSM)",
        "16": "I-bolts and U-bolts in good condition(MW)",
        "17": "All cables labelled(fiber,power and jumper)",
        "18": "All Equipment labelled(RRU,GSM,MW,BTS,ACDB,DCDB,METER BOX,GENSET)",
    },
    "Sector 2": {
        "1": "Fiber cables(CPRI) ok and functioning",
        "2": "RRU power cables ok and functioning",
        "3": "Physical checks of weather proofing on jumper cables ok",
        "4": "Physical checks IF cables ok",
        "5": "RRU available and ok",
        "6": "Physical checks of GSM Antenna available",
        "7": "MW available and link up(record azimuth)",
        "8": "Mounting kits in good condition(RRU)",
        "9": "Mounting kits in good condition(GSM)",
        "10": "Mounting kits in good condition(MW)",
        "11": "Boom and bracket in good condition(RRU)",
        "12": "Boom and bracket in good condition(GSM)",
        "13": "Boom and bracket in good condition(MW)",
        "14": "I-bolts and U-bolts in good condition(RRU)",
        "15": "I-bolts and U-bolts in good condition(GSM)",
        "16": "I-bolts and U-bolts in good condition(MW)",
        "17": "All cables labelled(fiber,power and jumper)",
        "18": "All equipment labelled(RRU,GSM,MW,BTS,ACDB,DCDB,METER BOX,GENSET)"
      },
      "Sector 3": {
        "1": "Fiber cables(CPRI) ok and functioning",
        "2": "RRU Power cables ok and functioning",
        "3": "Physical checks of weather proofing on jumper cables ok",
        "4": "Physical checks IF cables ok",
        "5": "RRU available and ok",
        "6": "Physical checks of GSM Antenna available",
        "7": "MW available and link up(record azimuth)",
        "8": "Mounting kits in good condition(RRU)",
        "9": "Mounting kits in good condition(GSM)",
        "10": "Mounting kits in good condition(MW)",
        "11": "Boom and bracket in good condition (RRU)",
        "12": "Boom and bracket in good condition (GSM)",
        "13": "Boom and bracket in good condition (MW)",
        "14": "I-bolts and U-bolts in good condition(RRU)",
        "15": "I-bolts and U-bolts in good condition(GSM)",
        "16": "I-bolts and U-bolts in good condition(MW)",
        "17": "All cables labelled(fiber,power and jumper)",
        "18": "All equipment labelled(RRU,GSM,MW,BTS,ACDB,DCDB,METER BOX,GENSET)"
      }
  },
  btsEquipment: {
     "1": "BTS cabinet in good state",
    "2": "Batteries available in the cabinet",
    "3": "Battery protection available",
    "4": "BTS cabinet freen from dust and dirt",
    "5": "BTS cabinet fan in good state and functioning",
    "6": "BTS cabinet ventilation ok"
  },
  powerEquipmentUnit: {
   "1": "Junction box in good state and functioning",
    "2": "Meter box in good state and functioning",
    "3": "ACDB in good state and functioning",
    "4": "DCDB in good state and functioning",
    "5": "ATS in good state and functioning",
    "6": "AVR in good state and functioning",
    "7": "Gen set in good state and functioning",
    "8": "Fuel tank in good state and functioning",
    "9": "Junction box free from rust",
    "10": "Meter box free from rust",
    "11": "ACDB free from rust",
    "12": "DCDB free from rust",
    "13": "ATS free from rust",
    "14": "AVR free from rust",
    "15": "Gen set free from rust",
    "16": "Fuel tank free from rust"
  },
);
