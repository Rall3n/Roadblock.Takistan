private ["_randMarker","_value","_group","_bool1"];


//Enemy spawning at random markers placed on the map
_randMarker = selectRandom ["enemyMarker_1","enemyMarker_2","enemyMarker_3","enemyMarker_4","enemyMarker_5"];

//Value to define how much enemies are spawning
_value = selectRandom [1,2,3,4,5];

//Random amount of enemies and random position placed within a group
_group = [markerPos _randMarker, east, enemies, [], [], [], [], _value, []] call BIS_fnc_spawnGroup;

//Spawned group gets the task to attack the roadblock
_bool1 = [_group, markerPos "attackPos"] call BIS_fnc_taskAttack;

/*Planned:
Random timer between attacks
Enemies stay on the hill, snipers eventually
Suicide Bombers on foot (explosion on kill), in cars (explosion in base, near base)
Information from the base that an attack will occur in some minutes (combined with the random timer)
Really big attacks with armored vehicles (support from base - for us) - only with information before
*/
