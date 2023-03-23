//
function check_for_player2()
{
	var _path = path_add();
	var _dis = distance_to_object(ObjPlayer);
	if ((_dis <= alertDis) || (((distance_to_object(ObjWall) <= 10) && alert))) and (_dis || distance_to_object(ObjWall)) > attackDis
	{
		alert = true;
			
		if pathTimer-- <= 0
		{
			pathTimer = pathDelay;
			var _foundPlayer = mp_grid_path(global.mpGrid, _path, x, y, (ObjPlayer.x -+ random_range(100, 250)) - (ObjWall.x -+ irandom_range(10,30)), (ObjPlayer.y -+ random_range(100, 250)) - (ObjWall.y -+ irandom_range(10,30)), choose(0, 1));
			if _foundPlayer
			{
				path_assign(path, _path);
				path_start(_path, moveSpd, path_action_stop, false);
				alert = false;
			}
		}
	}
	else 
	{
		if _dis <= alertDis
		{
			alert = false;
			path_end();
		}
	}
		if distance_to_object(ObjPlayer) >= 350
	{
		path_end()
	}
};