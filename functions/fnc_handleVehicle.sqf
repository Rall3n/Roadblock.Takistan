params ["_vehicle"];

countVehicles pushBack _vehicle;

(driver _vehicle) moveTo (markerPos "vehicle_hold");

//(driver _vehicle) setDestination [markerPos "vehicle_hold", "LEADER PLANNED", true];

(driver _vehicle) forceSpeed (_vehicle getSpeed "SLOW");

//(driver _vehicle) setSpeedMode "LIMITED";