fnc_spawnVehicle = compile preprocessFile "functions\fnc_spawnVehicle.sqf";
fnc_handleVehicle = compile preprocessFile "functions\fnc_handleVehicle.sqf";
fnc_spawnEnemy = compile preprocessFile "functions\fnc_spawnEnemy.sqf";

civ_Vehicles  = [["C_SUV_01_F", 3]];
countVehicles = [];
enemies = ["O_Soldier_AR_F","O_Soldier_GL_F","O_Soldier_A_F","O_Soldier_F","O_Soldier_SL_F"];


serverInit = true;

sleep 1;
[] spawn fnc_spawnVehicle;
[] spawn fnc_spawnEnemy;

