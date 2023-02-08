//
function check_for_player2()
{
	var _dis = distance_to_object(ObjPlayer);
	if ((_dis <= alertDis) || distance_to_object(ObjWall) <= 15 || alert) and (_dis || distance_to_object(ObjWall)) > attackDis
	{
		alert = true;
			
		if pathTimer-- <= 0
		{
			pathTimer = pathDelay;
			var _foundPlayer = mp_grid_path(global.mpGrid, path, x, y, (ObjPlayer.x -+ random_range(100, 250)) - (ObjWall.x -+ irandom_range(10,30)), (ObjPlayer.y -+ random_range(100, 250)) - (ObjWall.y -+ irandom_range(10,30)), choose(0, 1));
			if _foundPlayer
			{
				path_start(path, moveSpd, path_action_stop, false);
				alert = false;
			}
		}
	}
	else 
	{
		if _dis <= alertDis
		{
			path_end();
		}
	}
}