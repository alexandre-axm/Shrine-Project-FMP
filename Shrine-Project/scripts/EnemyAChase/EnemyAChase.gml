// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyAChase()
{
	if pathTimer -- <= 0
	{
	var _path = path_add();
	pathTimer = pathDelay;
	var _foundPlayer = mp_grid_path(global.mpGrid, _path, x, y, ObjPlayer.x, ObjPlayer.y, choose(0, 1));
	if _foundPlayer
	{
		path_assign(path, _path);
		path_start(_path, moveSpd, path_action_stop, false);
	}
	if distance_to_object(ObjPlayer) <= attackDis
	{
		alert = false;
		path_end();
	}
	if distance_to_object(ObjPlayer) >= alertDis
	{
		alert = false;
		path_end();
		state = EnemyStateIdle;
	}
	}
};