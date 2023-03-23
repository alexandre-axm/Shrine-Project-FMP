function PlayerStateDeath()
{
	if holding
	{
		instance_destroy(global.lifted);
	}
	room_goto(GameOver);
};