private ["_group","_type","_allowWater","_pos"];
_group = _this select 0;
_type = [_group] call FUPS_fnc_ai_type;
_allowWater = [0,0,2,1] select _type;
_pos = [_group,0,_allowWater] call FUPS_fnc_randomMarkerPos;

if (_type == 1) then {
	private "_roads";
	_roads = _pos nearRoads 100;
	if !(_roads isEqualTo []) then {_pos = getPosATL (_roads select 0)};
};

_pos