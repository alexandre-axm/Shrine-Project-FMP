event_inherited();

//Check Player Distance
distance = distance_to_object(ObjPlayer);
EnemyPlayerCheck2();

//Start Path
if pathTimer -- <= 0 //Counts path timer down until 0
	{
	var _path = path_add();
	pathTimer = pathDelay;
	var _foundPlayer = mp_grid_path(global.mpGrid, _path, x, y, xTarget, yTarget, choose(0, 1));
	if _foundPlayer
	{
		path_assign(path, _path);
		path_start(_path, moveSpd, path_action_stop, false);
	}
}
if (distance <= attackDis) //Stop if distance less than attack distance
	{
	path_end();
	}
if !alert && distance_to_object(ObjWall || ObjAiGuide) <= 25 //Stop object from moving into walls
	{
	path_reverse(path);
	}

//Sprite Control	
if path_speed > 0 // Moving Left
{
	image_index = SprBiwaWalkL;
	image_speed = 1;
}
if direction = 0 //Moving Right
{
	image_index = SprBiwaWalkR;
	image_speed = 1;
}
if direction = 90 //Moving Up
{
	image_index = SprBiwaWalkU;
	image_speed = 1;
}
if direction = 270 //Moving Down
{
	image_index = SprBiwaWalkD;
	image_speed = 1;
}
//if (hspeed && vspeed) = 0
	{
		//image_speed = 0;
	}