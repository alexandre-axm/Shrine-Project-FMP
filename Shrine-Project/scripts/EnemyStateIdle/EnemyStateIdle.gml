// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateIdle(){
	if distance_to_object(ObjPlayer) <= 350 && !alert
	{
		if pathTimer -- <= 0
		{
		var _path = path_add();
		pathTimer = pathDelay;
		var _pathSet = mp_grid_path(global.mpGrid, _path, x, y, x +- irandom(20), y +- irandom(20), choose(0, 1));
		if _pathSet
		{
			path_assign(path, _path);
			path_start(_path, moveSpd/2, path_action_stop, false);
		}
		}
	}
	if distance_to_object(ObjPlayer) >= 350
	{
		path_end()
	}
}