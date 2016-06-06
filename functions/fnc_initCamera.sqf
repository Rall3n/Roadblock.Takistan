disableSerialization;

private ["_pic", "_cam"];

_cam = "camera" camCreate [0,0,0];
_cam cameraEffect ["internal","back","rtt"];
"rtt" setPiPEffect [0];
with uiNamespace do  
{
	_pic = findDisplay 46 ctrlCreate ["RscPicture", 201295];
	_pic ctrlSetPosition [0,0,1,1];	
	_pic ctrlCommit 0;
	_pic ctrlSetText "#(argb,512,512,1)r2t(rtt,1.0)";
};

while {roadblock_usingMirror} do {
	_cam setPos (positionCameraToWorld [0,0,2]);
	_cam setVectorDirAndUp [[0,0,1], [0,1,0]];
};

deleteVehicle _cam;
ctrlDelete ((findDisplay 46) displayCtrl 201295);