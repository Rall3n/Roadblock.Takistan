fnc_spawnVehicle = compile preprocessFile "functions\fnc_spawnVehicle.sqf";
fnc_handleVehicle = compile preprocessFile "functions\fnc_handleVehicle.sqf";

civ_Vehicles  = [["C_SUV_01_F", 3]];
countVehicles = [];


serverInit = true;

sleep 1;
[] spawn fnc_spawnVehicle;

