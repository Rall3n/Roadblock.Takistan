private ["_randMarker","_value","_bool1","_randTime","_attackSuccess"];

//Random Timer before the first wave (hint to warn the players)
//_randTime = random [120,160,200];

hint "Ihr habt ca. 2-3 Minuten, bevor der erste Angriff stattfindet.";

//sleep(1+_randTime);

//Enemy spawning at random markers placed on the map
_randMarker = selectRandom ["enemyMarker_1","enemyMarker_2","enemyMarker_3","enemyMarker_4","enemyMarker_5"];

//Random amount of enemies are placed on the position defined before
_testGroup = [markerPos _randMarker, east, enemies, [], [], [], [], [1,0.5], []] call BIS_fnc_spawnGroup;

//Spawned group gets the task to attack the roadblock
[_testGroup,"attackRoadblock","",testUnit,1,1,true] call BIS_fnc_taskCreate;
_testGroup move position player;

_attackSuccess = "attackRoadblock" call BIS_fnc_taskCompleted;

while {!_attackSuccess} do
{
	_attackSuccess = "attackRoadblock" call BIS_fnc_taskCompleted;
	hint "noch nicht";
};

hint "Getötet!";
























/*Planned:
Random timer between attacks
Enemies stay on the hill, snipers eventually
Suicide Bombers on foot (explosion on kill), in cars (explosion in base, near base)
Information from the base that an attack will occur in some minutes (combined with the random timer)
Really big attacks with armored vehicles (support from base - for us) - only with information before
*/
