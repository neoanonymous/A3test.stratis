// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: storeOwners.sqf
//	@file Author: AgentRev, JoSchaap, His_Shadow

// Notes: Gun and general stores have position of spawned crate, vehicle stores have an extra air spawn direction
//
// Array contents are as follows:
// Name, Building Position (-1 to stay in original position), Desk Direction (or [Desk Direction, Front Offset], or [] to stay in original direction), Excluded Buttons
storeOwnerConfig = compileFinal str
[
	
	//WALMART
	["WalMart1", -1, [], []],
	["WalMart2", -1, [], []],
	["WalMart3", -1, [], []],
	//WALMART
	
	//SS
	["spawnshop1", -1, [], []],
	["spawnshop2", -1, [], []],
	//SS	
	
	["GenStore1", 1, [30, 1.5], []],
	["GenStore2", 4, 310, []],
	["GenStore3", -1, [], []],
	["GenStore4", -1, [], []],
	["GenStore5", -1, [], []],
	["GenStore6", -1, [], []],
	["GenStore7", -1, [], []],
	["GenStore8", -1, [], []],

	["GunStore1", -1, [], []],
	["GunStore2", 1, 130, []],
	["GunStore3", -1, [], []],
	["GunStore4", -1, [], []],
	["GunStore5", -1, [], []],
	["GunStore6", -1, [], []],
	["GunStore7", -1, [], []],

	// Buttons you can disable: "Land", "Armored", "Tanks", "Helicopters", "Boats", "Planes"
	["VehStore1", -1, [], []],
	["VehStore2", 2, 285, []],
	["VehStore3", -1, [], []],
	["VehStore4", -1, [], ["planes"]],
	["VehStore5", -1, [], ["planes"]],
	["VehStore6", -1, [], []],
	["VehStore7", -1, [], []],
	["VehStore8", -1, [], []],
	["VehStore9", -1, [], []]
];

// Outfits for store owners
storeOwnerConfigAppearance = compileFinal str
[
	["GenStore1", [["weapon", ""], ["uniform", "U_IG_Guerilla2_2"]]],
	["GenStore2", [["weapon", ""], ["uniform", "U_IG_Guerilla2_3"]]],
	["GenStore3", [["weapon", ""], ["uniform", "U_IG_Guerilla3_1"]]],

	["GunStore1", [["weapon", ""], ["uniform", "U_B_SpecopsUniform_sgg"]]],
	["GunStore2", [["weapon", ""], ["uniform", "U_O_SpecopsUniform_blk"]]],
	["GunStore3", [["weapon", ""], ["uniform", "U_I_CombatUniform_tshirt"]]],
	["GunStore4", [["weapon", ""], ["uniform", "U_IG_Guerilla1_1"]]],

	["VehStore1", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore2", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore3", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore4", [["weapon", ""], ["uniform", "U_Competitor"]]]
];
