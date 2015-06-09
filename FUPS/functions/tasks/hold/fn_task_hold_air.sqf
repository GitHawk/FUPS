switch (_group getVariable ["FUPS_taskState","init"]) do {
    case ("init"): {
        ["Holding"] call FUPS_fnc_log;

        private "_wp";
        [_group] call FUPS_fnc_clearWP;
        _wp = _group addWaypoint [_currpos,0];
        _wp setWaypointType "LOITER";
        _wp setWaypointLoiterRadius 200;

        _group setVariable ["FUPS_taskState",""];
    };
};