-- ------------------------------------------------------------------------
-- List of effects and state
--   class,        effect name,                       use or not, type*, regex pattern
--
-- *type : 0 - timed skill, 1 - untimed skill, 2 - timed skill with break on damage
-- ------------------------------------------------------------------------
DEFAULT_FREEP_EFFECTS = {
    {"Commun",      "Hébété",                                   1, 2, "Hébété"},
    {"Commun",      "Attaque en force",                         1, 0},
    {"Commun",      "Récupération",                             0, 0},
    {"Commun",      "Etourdi",                                  1, 0, "Etourdi"},
    {"Commun",      "Enraciné",                                 1, 2, "Enraciné"},
    {"Commun",      "Immunité contre les états temporaires",    1, 0},
    {"Beornide",    "Coup violent",                             0, 0},
    {"Beornide",    "Essaim d'abeilles",                        0, 0},
    {"Beornide",    "Bee Swarm Critical Defence Debuff",        0, 0},
    {"Beornide",    "Abeilles affaiblissantes",                 0, 0},
    {"Beornide",    "Defensive Blow",                           0, 0},
    {"Beornide",    "Marque de Beorn",                          0, 1},
    {"Beornide",    "Rugissement perçant",                      0, 0},
    {"Beornide",    "Rake",                                     0, 0, "Rake"},
    {"Beornide",    "Slammed",                                  0, 0},
    {"Beornide",    "Slash",                                    0, 0, "Slash"}, -- Coup tranchant
    {"Beornide",    "Serrated Edge",                            0, 0},
    {"Beornide",    "Sluggish Bees",                            0, 0},
    {"Beornide",    "Weakened",                                 0, 0, "Weakened"},
    {"Cambrioleur", "Embrouillement",                           0, 0, "Embrouillement"},
    {"Cambrioleur", "Hémorragie fourbe",                        0, 0, "Hémorragie fourbe"},
    {"Cambrioleur", "Damaging Gamble",                          0, 0, "Damaging Gamble"},
    {"Cambrioleur", "Debuffing Gamble",                         0, 0, "Debuffing Gamble"},
    {"Cambrioleur", "Avantage du parieur",                      0, 0, "Avantage du parieur"},
    {"Cambrioleur", "Hedged Bet",                               0, 0, "Hedged Bet"},
    {"Cambrioleur", "Provoke",                                  0, 0},
    {"Cambrioleur", "Bel accroc",                               0, 0},
    {"Cambrioleur", "Révélation de faiblesse",                  0, 1},
    {"Cambrioleur", "Tour : contre-défense",                    0, 0},
    {"Cambrioleur", "Tour : poussière dans les yeux",           0, 0},
    {"Cambrioleur", "fureur",                                   0, 0},
    {"Cambrioleur", "Tour : Incapacité",                        0, 0, "Incapacité"},
    {"Capitaine",   "Armour Rend (Capitaine)",                  0, 0, "Armour Rend"},
    {"Capitaine",   "Cutting Attack",                           0, 0, "Cutting Attack"},
    {"Capitaine",   "Grave Wound",                              0, 0, "Grave Wound"},
    {"Capitaine",   "Lead the Charge",                          0, 0},
    {"Capitaine",   "Oathbreaker's Shame",                      0, 0},
    {"Capitaine",   "Noble Mark",                               0, 1},
    {"Capitaine",   "Revealing Mark",                           0, 1},
    {"Capitaine",   "Telling Mark",                             0, 1},
    {"Champion",    "Echange agressif",                         0, 0},
    {"Champion",    "Destruction d'armure (Champion)",          0, 0, "Destruction d'armure"},
    {"Champion",    "Destin du lâche",                          0, 1, "Destin du lâche"},
    {"Champion",    "Coups intenses",                           0, 0},
    {"Champion",    "Critique dévastateur",                     0, 0},
    {"Champion",    "Cor des champions",                        0, 0},
    {"Champion",    "Horn of Gondor Physical Mitigation",       0, 0},
    {"Champion",    "Déchirement",                              0, 0, "Déchirement Niveau"},
    {"Gardien",    "Prendre à cœur",                            0, 1},
    {"Gardien",    "Marque de la lumière",                      0, 1},
    {"Gardien",    "Blessure béante",                           0, 0},
    {"Gardien",    "Chant de guerre",                           0, 0},
    {"Gardien",    "Plaie sanglante",                           0, 0},
    {"Gardien",    "Blessure profonde",                         0, 0},
    {"Gardien",    "Blessure terrible",                         0, 0},
    {"Gardien",    "En proie au titubement",                    0, 0},
    {"Chasseur",      "Marque de l'archer",                     0, 0, "Marque de l'archer"},
    {"Chasseur",      "Flèche barbelée",                        0, 0, {"Burning Arrow", "Flèche barbelée", "Glowing Arrow"}},
    {"Chasseur",      "Exsangue",                               0, 0},
    {"Chasseur",      "Effrayé",                                0, 0},
    {"Chasseur",      "Cherche-cœur",                           0, 0},
    {"Chasseur",      "Blessure persistante",                   0, 0, "Blessure persistante"},
    {"Chasseur",      "Piège perforant de maître trappeur",     0, 0},
    {"Chasseur",      "Triple piège de maître trappeur",        0, 0},
    {"Chasseur",      "Tir pénétrant",                          0, 0},
    {"Chasseur",      "Piège perçant",                          0, 0},
    {"Chasseur",      "Snaring Trap",                           0, 0}, -- Fil de détente
    {"Chasseur",      "Le grand piège",                         0, 0},
    {"Maitre du savoir", "Remuer le couteau dans la plaie",     0, 0},
    {"Maitre du savoir", "Artisanat ancien",                    0, 0},
    {"Maitre du savoir", "Bénédiction du corbeau",              0, 0},
    {"Maitre du savoir", "Braises ardentes",                    0, 0, {"Braises ardentes", "Braises ardentes améliorées"}},
    {"Maitre du savoir", "Braises ardentes : brûlure lente",    0, 0},
    {"Maitre du savoir", "Coup de frais",                       0, 0},
    {"Maitre du savoir", "Gel intense",                         0, 0},
    {"Maitre du savoir", "Connaissance du feu",                 1, 0, "Connaissance du feu"},
    {"Maitre du savoir", "Connaissance du froid",               1, 0, "Connaissance du froid"},
    {"Maitre du savoir", "Braises calcinantes améliorées",      0, 0},
    {"Maitre du savoir", "Connaissance du maître du savoir",    0, 0},
    {"Maitre du savoir", "Lueur de la nature",                  0, 1},
    {"Maitre du savoir", "Lumière de la nature",                0, 0},
    {"Maitre du savoir", "Chances de critique à distance",      0, 0},
    {"Maitre du savoir", "Anneau de flammes",                   0, 1},
    {"Maitre du savoir", "Ecrasement des bras",                 0, 0},
    {"Maitre du savoir", "Injonction",                          0, 0},
    {"Maitre du savoir", "voir la fin des choses",              0, 0},
    {"Maitre du savoir", "Vulnérabilité au feu",                0, 1},
    {"Maitre du savoir", "Goudron collant",                     0, 1},
    {"Maitre du savoir", "Monter la température",               0, 0},
    {"Maitre du savoir", "Connaissance de la protection",       0, 1},
    {"Maitre du savoir", "Echauffement",                        0, 0},
    {"Maitre du savoir", "Connaissance du vent",                0, 0, "Connaissance du vent"},
    {"Maitre du savoir", "Tempête hivernale",                   0, 0},
    {"Menestrel",    "Anthem of the Wizards: Slowed",           0, 0}, -- Cri des Magiciens
    {"Menestrel",    "Appel d'Oromë",                           0, 0, 'Appel d\'Orom'},
    {"Menestrel",    "Echo de bataille",                        0, 1},
    {"Menestrel",    "Harsh Echoes",                            0, 0},
    {"Menestrel",    "Strike a Chord - Major Ballad",           0, 0},
    {"Menestrel",    "Strike a Chord - Minor Ballad",           0, 0},
    {"Menestrel",    "Strike a Chord - Perfect Ballad",         0, 0},
    {"Menestrel",    "Echo de bataille intemporel",               0, 1},
    {"Gardien des runes",  "Flammes perturbantes",                 0, 0},
    {"Gardien des runes",  "Essai de feu",                     0, 0},
    {"Gardien des runes",  "Essence de l'hiver",                 0, 0},
    {"Gardien des runes",  "Raillerie cuisante",                    0, 0, "Raillerie cuisante"},
    {"Gardien des runes",  "Raillerie cuisante - Niveau 2",           0, 0, "Raillerie cuisante %- Niveau 2"},
    {"Gardien des runes",  "Raillerie cuisante - Niveau 3",           0, 0, "Raillerie cuisante %- Niveau 3"},
    {"Gardien des runes",  "Déluge verbal",                   0, 1},
    {"Gardien des runes",  "Icy Windstorm",                     0, 1},
    {"Gardien des runes",  "Molten Flame",                      0, 0},
    {"Gardien des runes",  "Mystifying Flames",                 0, 0},
    {"Gardien des runes",  "Moquerie cinglante",                  0, 0},
    {"Gardien des runes",  "Searing Words",                     0, 0},
    {"Gardien des runes",  "Allégorie du feu",                      0, 0, "Writ of Fire"},
    {"Gardien des runes",  "Allégorie de foudre",                 0, 0, "Writ of Lightning"},
    {"Sentinelle",      "Battering Strikes - Tier 1",           0, 0, "Battering Strikes %- Tier 1"},
    {"Sentinelle",      "Battering Strikes - Tier 2",           0, 0, "Battering Strikes %- Tier 2"},
    {"Sentinelle",      "Battering Strikes - Tier 3",           0, 0, "Battering Strikes %- Tier 3"},
    {"Sentinelle",      "Desolation",                           0, 0},
    {"Sentinelle",      "Diminished Target",                    0, 0},
    {"Sentinelle",      "Goad DoT",                             0, 0, "Goad Damage over Time"},
    {"Sentinelle",      "Hampering Javelin",                    0, 0, "Hampering Javelin"},
    {"Sentinelle",      "Marked Target",                        0, 0},
    {"Sentinelle",      "Mighty Blow",                          0, 0},
    {"Sentinelle",      "Morale-tap",                           0, 0, "Morale%-tap"},
    {"Sentinelle",      "No Respite",                           0, 0},
    {"Sentinelle",      "Piercing Strike - LDoT",               0, 0, "Piercing Strike %- Light Damage over Time"},
    {"Sentinelle",      "Power Attack",                         0, 0},
    {"Sentinelle",      "Precise Blow - LDoT",                  0, 0, "Precise Blow %- Light Damage over Time"},
    {"Sentinelle",      "Shield Piercer",                       0, 0},
    {"Sentinelle",      "Spear of Virtue - LDoT",               0, 0, "Spear of Virtue %- Light Damage over Time"},
    {"Sentinelle",      "Suppression - Tier 1",                 0, 0, "Suppression %- Tier 1"},
    {"Sentinelle",      "Suppression - Tier 2",                 0, 0, "Suppression %- Tier 2"},
    {"Sentinelle",      "Warning Shot",                         0, 0},
    {"Sentinelle",      "LDoT - Tier 1",                        0, 0, "Light Damage over Time %- Tier 1"},
    {"Sentinelle",      "LDoT - Tier 2",                        0, 0, "Light Damage over Time %- Tier 2"},
    {"Sentinelle",      "LDoT - Tier 3",                        0, 0, "Light Damage over Time %- Tier 3"},
    {"Sentinelle",      "LDoT - Tier 4",                        0, 0, "Light Damage over Time %- Tier 4"},
    {"Sentinelle",      "Low Bleed",                            0, 0, "Low Bleed"},
    {"Sentinelle",      "Medium Bleed",                         0, 0, "Medium Bleed"},
    {"Sentinelle",      "Big Bleed",                            0, 0, "Big Bleed"},
    {"Sentinelle",      "Low Bleed - Barbed Javelins",          0, 0, "Low Bleed %- Barbed Javelins"},
    {"Sentinelle",      "Moderate Bleed - Barbed Javelins",     0, 0, "Moderate Bleed %- Barbed Javelins"},
    {"Sentinelle",      "Major Bleed - Barbed Javelins",        0, 0, "Major Bleed %- Barbed Javelins"},
    {"Sentinelle",      "Severe Bleed - Barbed Javelins",       0, 0, "Severe Bleed %- Barbed Javelins"},

}

DEFAULT_FREEP_PLAYER_EFFECTS = {
    {"Commun", "Immunité contre les états temporaires",         0, 0},
    {"Beornide", "Immunité contre les états temporaires",       0, 0},
    {"Cambrioleur", "Immunité contre les états temporaires",    0, 0},
    {"Capitaine", "Immunité contre les états temporaires",      0, 0},
    {"Champion", "Immunité contre les états temporaires",       0, 0},
    {"Gardien", "Immunité contre les états temporaires",        0, 0},
    {"Maitre du savoir", "Immunité contre les états temporaires", 0, 0},
    {"Menestrel", "Immunité contre les états temporaires",      0, 0},
    {"Gardien des runes", "Immunité contre les états temporaires", 0, 0},
    {"Sentinelle", "Immunité contre les états temporaires",     0, 0},
}

DEFAULT_CREEP_EFFECTS = {
}

DEFAULT_CREEP_PLAYER_EFFECTS = {
}

DEFAULT_EFFECTS = DEFAULT_FREEP_EFFECTS

-- ------------------------------------------------------------------------
-- Constants
-- ------------------------------------------------------------------------
DEBUG_ENABLED = false
DEBUFF_AND_EFFECTS_OFFSET = 100
DEFAULT_WIDTH = 200
DEFAULT_HEIGHT = 20
DEFAULT_SAVE_FRAME_POSITIONS = false
DEFAULT_LOCKED_POSITION = false
DEFAULT_SHOW_MORALE = true
DEFAULT_SHOW_POWER = true
DEFAULT_SHOW_EFFECTS = true
DEFAULT_EFFECTS_MODULUS = 20
