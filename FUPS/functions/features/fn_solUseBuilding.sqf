private ["_sol","_build"];
_sol = _this select 0;
_build = _this select 1;

_count = 0;
_positions = [];
while {!(_build buildingPos _count isEqualTo [0,0,0])} do {_count = _positions pushBack (_build buildingPos _count)};

if !(_positions isEqualTo []) exitWith {
	_sol move (_positions select (floor random _count));
	true
};

false