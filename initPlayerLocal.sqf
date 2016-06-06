//Create the actions for the civilian interaction!

roadblock_fnc_initCamera = compile preProcessFile "functions\fnc_initCamera.sqf";

roadblock_usingMirror = false;

if (isNull (configFile >> "CfgPatches" >> "ace_interact_menu")) then {
	//Vanilla Actions (or CBA fleximenu?)
	player addAction ["Use mirror", {hint "Using Mirror"; roadblock_usingMirror = true; [] spawn roadblock_fnc_initCamera;}, nil, 1.5, true, true, "", "!roadblock_usingMirror"];
	player addAction ["Close mirror", {hint "Closing Mirror"; roadblock_usingMirror = false;}, nil, 1.5, true, true, "", "roadblock_usingMirror"];
	
	//Actions for Vehicle/Unit control
} else {
	//ACE actions
};