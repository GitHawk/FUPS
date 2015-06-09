switch (_group getVariable ["FUPS_taskState","init"]) do {
    case ("init"): {
        ["Holding"] call FUPS_fnc_log;

        private "_holdPos";
        _holdPos = (selectBestPlaces [_currpos,50,"hills - forest + trees + meadow",5,1]) select 0 select 0;
        _group move _holdPos;

        _group setVariable ["FUPS_taskState","idle"];
        _group setVariable ["FUPS_movePos",_holdPos];
    };
    case ("idle"): {
        private "_pos";
        _pos = _group getVariable "FUPS_movePos";
        {
            if (_x distance _pos > 50) then {
                _x doMove ([_pos,random 20,random 360] call FUPS_fnc_relPos);
            };
        } forEach (units _group);
    };
};