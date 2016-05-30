//if (({_x != objNull} count countVehicle) == 3) exitWith {};

private ["_rand", "_vehicle", "_passengers", "_group", "_units"];

_value = selectRandom civ_vehicles;

_rand = _value select 0;

_vehicle = _rand createVehicle (markerPos "spawn_vehicle");

_passengers = _value select 1;

_group = createGroup civilian;

_units = [];

private _i = 0;

_unit = createAgent ["C_Man_1", markerPos "spawn_civ", [], 0, "FORM"];

_unit disableAI "FSM";

_unit assignAsDriver _vehicle;
_unit moveInDriver _vehicle;

/*while {_i <= _passengers} do {
    
    _unit = createAgent ["C_Man_1", markerPos "spawn_civ", [], 0, "FORM"];
	
    _unit disableAI "FSM";
	
    _units pushBack _unit;
    
    sleep 3;
    if (_i == 0) then {
        _unit assignAsDriver _vehicle;
        _unit moveInDriver _vehicle;
    } else {
        _unit assignAsCargo _vehicle;
        _unit moveInCargo _vehicle;
    };
    
    _i = _i + 1;
};*/

//_units join _group;

[_vehicle] call fnc_handleVehicle;