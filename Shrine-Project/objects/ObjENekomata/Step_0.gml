// Inherit the parent event
event_inherited();

//Check Player Distance
distance = distance_to_object(ObjPlayer);
EnemyPlayerCheck3();

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
if (distance <= attackDis) && !cooldownEP && !lifted && !thrown //Stop if distance less than attack distance
	{
	cooldownEP = true;
	alarm_set(1,60);
	instance_create_layer(x - 16, y, "Instances", ObjEFireball)
	path_end();
	}
if (lifted) || (thrown) //Stop if distance less than attack distance
	{
	path_end();
	}
if !alert && distance_to_object(ObjWall || ObjAiGuide) <= 25 //Stop object from movinging into wall
	{
	path_reverse(path);
	}