private "_highest";
_highest = -1;
{
	if (_x > _highest) then {_highest = _x};
} forEach _this;

waitUntil {!isNil "FUPS_templates"};
waitUntil {count FUPS_templates > _highest};
waitUntil {{isNil {FUPS_templates select _x}} count _this == 0};