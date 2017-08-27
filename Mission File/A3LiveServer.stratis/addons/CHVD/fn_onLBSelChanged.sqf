private ["_index","_terrainGrid"];
_index = _this select 0;
_varType = _this select 1;
_text = _this select 2;

if (!CHVD_allowNoGrass) then {
	_index = _index + 1;
};

switch (_index) do {
	case 0: {_terrainGrid = 1};
	case 1: {_terrainGrid = 1};
	case 2: {_terrainGrid = 1};
	case 3: {_terrainGrid = 1};
};

if (!CHVD_allowNoGrass) then {
	_terrainGrid = _terrainGrid min 48.99;
};
ctrlSetText [_text, str _terrainGrid];		
call compile format ["%1 = %2",_varType, _terrainGrid];
call compile format ["profileNamespace setVariable ['%1',%1]", _varType];
//[] call CHVD_fnc_updateSettings;
