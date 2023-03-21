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
if (distance <= attackDis) //Stop if distance less than attack distance, start attacking
	{
	path_end();
	attacking = true;
	disguiseOn = false;
	alarm_set(1,15);
	}
if (lifted) || (thrown) || (global.thrown = self) //Stop if being held or thrown
	{
	path_end();
	}
if !alert && distance_to_object(ObjWall || ObjAiGuide) <= 25 //Stop object from movinging into wall
	{
	path_reverse(path);
	}
	
//Sprites
if attacking && global.lifted != self && global.thrown != self
{
	sEWalkU = SPrBakenekoAtkU;
	sEWalkL = SprBakenekoAtkL;
	sEWalkR = SprBakenekoAtkR;
	sEWalkD = SprBakenekoAtkD;
}
if !attacking && !disguiseOn
{
	sEWalkU = SprBakenekoWalkU;
	sEWalkL = SprBakenekoWalkL;
	sEWalkR = SprBakenekoWalkR;
	sEWalkD = SprBakenekoWalkD;
}