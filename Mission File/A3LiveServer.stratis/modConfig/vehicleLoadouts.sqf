// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2017 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: vehicleLoadouts.sqf
//	@file Author: AgentRev

/*
	HOW TO CREATE A PYLON LOADOUT:
	 1. Create new scenario in Eden, add vehicle, adjust pylon loadout, and set Object Init to: copyToClipboard str getPylonMagazines this
	 3. Play scenario, wait until loaded, then pause game and return to Eden.
	 4. Your pylon array is now in the clipboard, which you can paste in this file, e.g. _pylons = ["PylonMissile_Missile_AA_R73_x1","","","","","","","","","","","","",""];

	Note: You can use any pylon type you want in the script, even if not shown in the editor, it should normally work! e.g. "PylonRack_12Rnd_missiles" for "B_Plane_Fighter_01_F"
*/

switch (true) do
{
	case (_class isKindOf "C_Heli_Light_01_civil_F"):
	{
		_mags =
		[
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["CMFlareLauncher", [-1]]
		];
	};	

	case (_class isKindOf "B_Heli_Light_01_F"):
	{
		_mags =
		[
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["CMFlareLauncher", [-1]]
		];
	};	

	case (_class isKindOf "I_Heli_Transport_02_F"):
	{
		_mags =
		[
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["CMFlareLauncher", [-1]]
		];
	};	

	case (_class isKindOf "I_Heli_light_03_unarmed_F"):
	{
		_mags =
		[
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["CMFlareLauncher", [-1]]
		];
	};
	
	case (_class isKindOf "O_Heli_Light_02_unarmed_F"):
	{
		_mags =
		[
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["CMFlareLauncher", [-1]]
		];
	};	
	
	// AH-9 Pawnee
	//(Gun-Only)
	case (_class isKindOf "B_Heli_Light_01_dynamicLoadout_F" && _variant == "pawneeGun"):
	{
		_mags =
		[
			["5000Rnd_762x51_Belt", [-1]],
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["M134_minigun", [-1]],
			["CMFlareLauncher", [-1]]
		];			
		_pylons = ["",""];
	};
	//DAR
	case (_class isKindOf "B_Heli_Light_01_dynamicLoadout_F" && _variant == "pawneeDAR"):
	{
		_mags =
		[
			["5000Rnd_762x51_Belt", [-1]],
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["M134_minigun", [-1]],
			["CMFlareLauncher", [-1]]
		];	
		_pylons = ["PylonRack_12Rnd_missiles","PylonRack_12Rnd_missiles"];
	};
	//20mm Cannons
	case (_class isKindOf "B_Heli_Light_01_dynamicLoadout_F" && _variant == "pawnee20mm"):
	{
		_mags =
		[
			["5000Rnd_762x51_Belt", [-1]],
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["M134_minigun", [-1]],
			["CMFlareLauncher", [-1]]
		];			
		_pylons = ["PylonWeapon_300Rnd_20mm_shells","PylonWeapon_300Rnd_20mm_shells"];
	};
	//FLACHION
	case (_class isKindOf "B_Heli_Light_01_dynamicLoadout_F" && _variant == "pawneeFALCHION"):
	{
		_mags =
		[
			["5000Rnd_762x51_Belt", [-1]],
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["M134_minigun", [-1]],
			["CMFlareLauncher", [-1]]
		];		
		_pylons = ["PylonRack_1Rnd_Missile_AA_04_F","PylonRack_1Rnd_Missile_AA_04_F"];
	};	
	//TRATNYR HE
	case (_class isKindOf "B_Heli_Light_01_dynamicLoadout_F" && _variant == "pawneeHE"):
	{
		_mags =
		[
			["5000Rnd_762x51_Belt", [-1]],
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["M134_minigun", [-1]],
			["CMFlareLauncher", [-1]]
		];	
		_pylons = ["PylonRack_20Rnd_Rocket_03_HE_F","PylonRack_20Rnd_Rocket_03_HE_F"];
	};

	// WY-55 HELLCAT
	// (GUNS ONLY)
	case (_class isKindOf "I_Heli_light_03_dynamicLoadout_F" && _variant == "HellGun"):
	{
		_mags =
		[
			["5000Rnd_762x51_Yellow_Belt", [-1]],
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["M134_minigun", [-1]],
			["CMFlareLauncher", [-1]]
		];
		_pylons = ["",""];
	};
	// WY-55 HELLCAT (GUNS + DAR)
	case (_class isKindOf "I_Heli_light_03_dynamicLoadout_F" && _variant == "HellDAR"):
	{
		_mags =
		[
			["5000Rnd_762x51_Yellow_Belt", [-1]],
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["M134_minigun", [-1]],
			["CMFlareLauncher", [-1]]
		];
		_pylons = ["PylonRack_12Rnd_missiles","PylonRack_12Rnd_missiles"];
	};
	// WY-55 HELLCAT (GUNS + 20mm CANNONS)
	case (_class isKindOf "I_Heli_light_03_dynamicLoadout_F" && _variant == "Hell20mm"):
	{
		_mags =
		[
			["5000Rnd_762x51_Yellow_Belt", [-1]],
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["M134_minigun", [-1]],
			["CMFlareLauncher", [-1]]
		];
		_pylons = ["PylonWeapon_300Rnd_20mm_shells","PylonWeapon_300Rnd_20mm_shells"];
	};
	// WY-55 HELLCAT (GUNS + DAGR)
	case (_class isKindOf "I_Heli_light_03_dynamicLoadout_F" && _variant == "HellDAGR"):
	{
		_mags =
		[
			["5000Rnd_762x51_Yellow_Belt", [-1]],
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["M134_minigun", [-1]],
			["CMFlareLauncher", [-1]]
		];	
		_pylons = ["PylonRack_12Rnd_PG_missiles","PylonRack_12Rnd_PG_missiles"];
	};
	// WY-55 HELLCAT (GUNS + BOMBS)
	case (_class isKindOf "I_Heli_light_03_dynamicLoadout_F" && _variant == "HellBOMB"):
	{
		_mags =
		[
			["5000Rnd_762x51_Yellow_Belt", [-1]],
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["M134_minigun", [-1]],
			["CMFlareLauncher", [-1]]
		];
		_pylons = ["PylonRack_Bomb_GBU12_x2","PylonRack_Bomb_GBU12_x2"];
	};	
	// WY-55 HELLCAT (AA Missiles)
	case (_class isKindOf "I_Heli_light_03_dynamicLoadout_F" && _variant == "HellAA"):
	{
		_mags =
		[
			["5000Rnd_762x51_Yellow_Belt", [-1]],
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["M134_minigun", [-1]],
			["CMFlareLauncher", [-1]]
		];
		_pylons = ["PylonMissile_1Rnd_Missile_AA_04_F","PylonMissile_1Rnd_Missile_AA_04_F"];
	};

	// PO-30 Orca
	// (Gun)
	case (_class isKindOf "O_Heli_Light_02_dynamicLoadout_F" && _variant == "orcaGUN"):
	{
		_mags =
		[
			["2000Rnd_65x39_Belt_Tracer_Green_Splash", [-1]],
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["LMG_Minigun_heli", [-1]],
			["CMFlareLauncher", [-1]]
		];
		_pylons = ["PylonWeapon_2000Rnd_65x39_belt",""];
	};
	// (Gun+DAR)
	case (_class isKindOf "O_Heli_Light_02_dynamicLoadout_F" && _variant == "orcaGUNDAR"):
	{
		_mags =
		[
			["2000Rnd_65x39_Belt_Tracer_Green_Splash", [-1]],
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["LMG_Minigun_heli", [-1]],
			["CMFlareLauncher", [-1]]
		];
		_pylons = ["PylonWeapon_2000Rnd_65x39_belt","PylonRack_12Rnd_missiles"];
	};
	// (GUN+DAGR)
	case (_class isKindOf "O_Heli_Light_02_dynamicLoadout_F" && _variant == "orcaGUNDAGR"):
	{
		_mags =
		[
			["2000Rnd_65x39_Belt_Tracer_Green_Splash", [-1]],
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_weapons =
		[
			["LMG_Minigun_heli", [-1]],
			["CMFlareLauncher", [-1]]
		];	
		_pylons = ["PylonWeapon_2000Rnd_65x39_belt","PylonRack_12Rnd_PG_missiles"];
	};

	// AH-99 Blackfoot vanilla wasteland
	case (_class isKindOf "Heli_Attack_01_dynamicLoadout_base_F" && _variant == "blackvanilla"):
	{
		_pylons = ["PylonMissile_1Rnd_AAA_missiles","PylonMissile_1Rnd_LG_scalpel","PylonRack_12Rnd_missiles","PylonRack_12Rnd_missiles","PylonMissile_1Rnd_LG_scalpel","PylonMissile_1Rnd_AAA_missiles"];
	};

	// AH-99 Blackfoot (DAR + DAGR)
	case (_class isKindOf "Heli_Attack_01_dynamicLoadout_base_F" && _variant == "blackDagr"):
	{
		_pylons = ["PylonMissile_1Rnd_AAA_missiles","PylonMissile_1Rnd_AAA_missiles","PylonRack_12Rnd_PG_missiles","PylonRack_12Rnd_PG_missiles","PylonMissile_1Rnd_AAA_missiles","PylonMissile_1Rnd_AAA_missiles"];
	};

	// AH-99 Blackfoot (AA + Bomber)
	case (_class isKindOf "Heli_Attack_01_dynamicLoadout_base_F" && _variant == "blackbomb"):
	{
		_mags =
		[
			["120Rnd_CMFlare_Chaff_Magazine", [-1]],
			["1000Rnd_20mm_shells", [0]],
			["2Rnd_GBU12_LGB", [-1]],
			["2Rnd_GBU12_LGB", [-1]],
			["2Rnd_GBU12_LGB", [-1]],
			["Laserbatteries", [0]]
		];
		_weapons =
		[
			["CMFlareLauncher", [-1]],
			["gatling_20mm", [0]],
			["GBU12BombLauncher", [-1]],
			["Laserdesignator_mounted", [0]]
		];
		_pylons = ["PylonMissile_1Rnd_AAA_missiles","PylonMissile_1Rnd_AAA_missiles","PylonMissile_1Rnd_AAA_missiles","PylonMissile_1Rnd_AAA_missiles","PylonMissile_1Rnd_AAA_missiles","PylonMissile_1Rnd_AAA_missiles"];
	};

	// Mi-48 Kajman
	case (_class isKindOf "Heli_Attack_02_dynamicLoadout_base_F"):
	{
		_pylons = ["PylonRack_4Rnd_LG_scalpel","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_4Rnd_LG_scalpel"];
	};

	// Y-32 Xi'an
	case ({_class isKindOf _x} count ["VTOL_02_infantry_dynamicLoadout_base_F", "VTOL_02_vehicle_dynamicLoadout_base_F"] > 0):
	{
		switch (_variant) do
		{
			case "armedXian": { _pylons = ["PylonRack_1Rnd_Missile_AGM_01_F","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_1Rnd_Missile_AGM_01_F"] };
			default
			{
				_mags =
				[
					["120Rnd_CMFlare_Chaff_Magazine", [-1]],
					["Laserbatteries", [0]]
				];
				_weapons =
				[
					["CMFlareLauncher", [-1]],
					["Laserdesignator_mounted", [0]]
				];
			};
		};
	};
	
	//////JETS/////
	
	
	// A-143 Buzzard
	case (_class isKindOf "Plane_Fighter_03_dynamicLoadout_base_F"):
	{
		_weapons =
		[
			["Laserdesignator_pilotCamera", [-1]],
			["CMFlareLauncher", [-1]]
		];
		_mags =
		[
			["Laserbatteries", [-1]],
			["120Rnd_CMFlareMagazine", [-1]]
		];
		switch (_variant) do
		{
			case "buzzardAA": { _pylons = ["PylonRack_1Rnd_Missile_AA_04_F","PylonRack_1Rnd_GAA_missiles","PylonRack_1Rnd_GAA_missiles","PylonWeapon_300Rnd_20mm_shells","PylonRack_1Rnd_GAA_missiles","PylonRack_1Rnd_GAA_missiles","PylonRack_1Rnd_Missile_AA_04_F"] };
			default           { _pylons = ["PylonRack_1Rnd_LG_scalpel","PylonRack_1Rnd_Missile_AA_04_F","PylonMissile_1Rnd_Bomb_04_F","PylonWeapon_300Rnd_20mm_shells","PylonMissile_1Rnd_Bomb_04_F","PylonRack_1Rnd_Missile_AA_04_F","PylonRack_1Rnd_LG_scalpel"] };
		};
		_customCode =
		{
			_veh setAmmoOnPylon [4, 500]; // 20mm gun
		};
	};

	// A-149 Gryphon
	case (_class isKindOf "Plane_Fighter_04_Base_F"):
	{
		_mags =
		[
			["magazine_Fighter04_Gun20mm_AA_x250", [-1]],
			["magazine_Fighter04_Gun20mm_AA_x250", [-1]],
			["magazine_Fighter04_Gun20mm_AA_x250", [-1]],
			["magazine_Fighter04_Gun20mm_AA_x250", [-1]], // extra gun mags (non-explosive ammo)
			["Laserbatteries", [-1]],
			["120Rnd_CMFlareMagazine", [-1]]
		];
		_pylons = ["PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AMRAAM_C_x1","PylonRack_Missile_AMRAAM_C_x1"];
	};

	// F/A-181 Black Wasp
	case (_class isKindOf "B_Plane_Fighter_01_F"):
	{
		_mags =
		[
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]],
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]], // extra gun mag (non-explosive ammo)
			["Laserbatteries", [-1]],
			["120Rnd_CMFlareMagazine", [-1]]
		];
		_pylons = ["PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_7Rnd_Rocket_04_AP_F","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Bomb_GBU12_x1","PylonMissile_Bomb_GBU12_x1"];
	};

	// F/A-181 Black Wasp (Stealth)
	case (_class isKindOf "B_Plane_Fighter_01_Stealth_F"):
	{
		_mags =
		[
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]],
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]],
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]],
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]],
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]], // extra gun mags to make up for lack of pylons (non-explosive ammo)
			["Laserbatteries", [-1]],
			["120Rnd_CMFlareMagazine", [-1]]
		];
		_pylons = ["","","","","","","","","","","",""];
	};

	// To-201 Shikra
	case (_class isKindOf "O_Plane_Fighter_02_F"):
	{
		_mags =
		[
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]], // extra gun mag (non-explosive ammo)
			["Laserbatteries", [-1]],
			["120Rnd_CMFlareMagazine", [-1]]
		];
		_pylons = ["PylonMissile_Missile_AGM_KH25_x1","PylonMissile_Missile_AGM_KH25_x1","PylonMissile_Bomb_KAB250_x1","PylonMissile_Bomb_KAB250_x1","PylonRack_20Rnd_Rocket_03_HE_F","PylonRack_20Rnd_Rocket_03_AP_F","PylonMissile_Missile_AA_R73_x1","PylonMissile_Missile_AA_R73_x1","PylonMissile_Missile_AA_R77_x1","PylonMissile_Missile_AA_R77_x1","PylonMissile_Missile_AA_R77_INT_x1","PylonMissile_Missile_AA_R77_INT_x1","PylonMissile_Bomb_KAB250_x1"];
	};

	// To-201 Shikra (Stealth)
	case (_class isKindOf "O_Plane_Fighter_02_Stealth_F"):
	{
		_mags =
		[
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]], // extra gun mags to make up for lack of pylons (non-explosive ammo)
			["Laserbatteries", [-1]],
			["120Rnd_CMFlareMagazine", [-1]]
		];
		_pylons = ["","","","","","","","","","","","",""];
	};

	// A-164 Wipeout CAS
	case (_class isKindOf "Plane_CAS_01_dynamicLoadout_base_F"):
	{
		_mags =
		[
			["1000Rnd_Gatling_30mm_Plane_CAS_01_F", [-1]],
			["Laserbatteries", [-1]],
			["120Rnd_CMFlareMagazine", [-1]]
		];
		switch (_variant) do
		{
			case "WipeoutOP": { _pylons = ["PylonRack_Missile_BIM9X_x2","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_4Rnd_LG_scalpel","PylonRack_Bomb_GBU12_x2","PylonRack_Bomb_GBU12_x2","PylonRack_Bomb_GBU12_x2","PylonRack_Bomb_GBU12_x2","PylonRack_4Rnd_LG_scalpel","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_Missile_BIM9X_x2"] };
			default            { _pylons = ["PylonRack_1Rnd_Missile_AA_04_F","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_3Rnd_Missile_AGM_02_F","PylonMissile_1Rnd_Bomb_04_F","PylonMissile_1Rnd_Bomb_04_F","PylonMissile_1Rnd_Bomb_04_F","PylonMissile_1Rnd_Bomb_04_F","PylonRack_3Rnd_Missile_AGM_02_F","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_1Rnd_Missile_AA_04_F"] };
		};
	};

	// To-199 Neophron CAS
	case (_class isKindOf "Plane_CAS_02_dynamicLoadout_base_F"):
	{
		_mags =
		[ 
			["120Rnd_CMFlareMagazine", [-1]],
			["500Rnd_Cannon_30mm_Plane_CAS_02_F", [-1]],
			["Laserbatteries", [-1]]
		];
		_pylons = ["PylonRack_1Rnd_Missile_AA_03_F","PylonRack_1Rnd_Missile_AA_03_F","PylonRack_1Rnd_Missile_AGM_01_F","PylonMissile_1Rnd_Bomb_03_F","PylonRack_20Rnd_Rocket_03_HE_F","PylonRack_20Rnd_Rocket_03_AP_F","PylonMissile_1Rnd_Bomb_03_F","PylonRack_1Rnd_Missile_AGM_01_F","PylonRack_1Rnd_Missile_AA_03_F","PylonRack_1Rnd_Missile_AA_03_F"];
	};

	// Greyhawk/Ababil UAVs
	case (_class isKindOf "UAV_02_dynamicLoadout_base_F"):
	{
		switch (_variant) do
		{
			_mags =
			[
				["120Rnd_CMFlareMagazine", [-1]]
			];
			case "greyhawkBomber": { _pylons = ["PylonMissile_1Rnd_Bomb_04_F","PylonMissile_1Rnd_Bomb_04_F"] };
			case "greyhawkCluster": { _pylons = ["PylonMissile_1Rnd_BombCluster_01_F","PylonMissile_1Rnd_BombCluster_01_F"] };
			default
			{
				_pylons = ["PylonRack_3Rnd_LG_scalpel","PylonRack_3Rnd_LG_scalpel"];
				_customCode =
				{
					_veh setAmmoOnPylon [1, 3]; // right wing
					_veh setAmmoOnPylon [2, 3]; // left wing
				};
			};
		};
	};

	// KH-3A Fenghuang UAV
	/*case (_class isKindOf "O_T_UAV_04_CAS_F"):
	{
		_customCode =
		{
			_veh setMagazineTurretAmmo ["4Rnd_LG_Jian", 2, [0]];
		};
	};*/

	// UCAV Sentinel
	case (_class isKindOf "B_UAV_05_F"):
	{
		_mags =
		[
			["120Rnd_CMFlareMagazine", [-1]]
		];
		switch (_variant) do
		{
			case "sentinelBomber": { _pylons = ["PylonMissile_Bomb_GBU12_x1","PylonMissile_Bomb_GBU12_x1"] };
			case "sentinelCluster": { _pylons = ["PylonMissile_1Rnd_BombCluster_01_F","PylonMissile_1Rnd_BombCluster_01_F"] };
			default                { _pylons = ["PylonMissile_Missile_AGM_02_x2","PylonMissile_Missile_AGM_02_x2"] };
		};
	};

	// MQ-12 Falcon UAV (non-dynamicLoadout)
	case (_class isKindOf "B_T_UAV_03_F"):
	{
		_mags =
		[
			["120Rnd_CMFlareMagazine", [-1]],
			["5000Rnd_762x51_Yellow_Belt", [0]],
			["24Rnd_missiles", [0]],
			["2Rnd_LG_scalpel", [0]],
			["2Rnd_LG_scalpel", [0]],
			["2Rnd_AAA_missiles", [0]],
			["Laserbatteries", [0]]
		];
		_weapons =
		[
			["CMFlareLauncher", [-1]],
			["M134_minigun", [0]],
			["missiles_DAR", [0]],
			["missiles_SCALPEL", [0]],
			["missiles_ASRAAM", [0]],
			["Laserdesignator_mounted", [0]]
		];
	};
};
