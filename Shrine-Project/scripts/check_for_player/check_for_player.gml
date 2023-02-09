// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_for_player()
{
	var _path = path_add();
	var _dis = distance_to_object(ObjPlayer);
	if ((_dis <= alertDis) || distance_to_object(ObjWall) <= 15 || alert) and _dis > attackDis
	{
		alert = true;
			
		if pathTimer-- <= 0
		{
			pathTimer = pathDelay;
			var _foundPlayer = mp_grid_path(global.mpGrid, _path, x, y, ObjPlayer.x, ObjPlayer.y, choose(0, 1));
			if _foundPlayer
			{
				path_assign(path, _path);
				path_start(_path, moveSpd, path_action_stop, false);
			}
		}
	}
	else 
	{
		if _dis <= attackDis
		{
			path_end();
		}
	}
};