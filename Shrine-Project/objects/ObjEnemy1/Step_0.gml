event_inherited();

//Check Player Distance
distance = distance_to_object(ObjPlayer);
EnemyPlayerCheck();

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
if !alert && distance_to_object(ObjWall || ObjAiGuide) <= 25 //Stop object from movinging into wall
	{
	path_reverse(path);
	}