// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: vaforall.sqf v2.0
//	@file Author: Matt76 @CCG

9999 cutText ["", "BLACK IN"];
		
	["Open",true] call BIS_fnc_arsenal;

	// Disable random button on Virtual Arsenal to prevent abuse
	[missionNamespace, "arsenalOpened", {
	disableSerialization;
	_display = _this select 0;
	(_display displayCtrl 44150) ctrlRemoveAllEventHandlers "buttonclick";
	(_display displayCtrl 44150) ctrlEnable false;
	_display displayAddEventHandler ["KeyDown", "if ((_this select 1) in [19,29]) then {true}"];
	}] call BIS_fnc_addScriptedEventHandler;

	//systemChat format["Welcome to CCG Wasteland %1", name player];

waitUntil {isNull (uiNamespace getVariable ["RscDisplayArsenal", displayNull])};
	


	