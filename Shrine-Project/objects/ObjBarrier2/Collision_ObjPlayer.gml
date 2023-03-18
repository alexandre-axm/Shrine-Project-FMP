if global.enemiesLeft <= 23
	{
		instance_destroy(self)
		global.target = noone;
		audio_play_sound(SndBarrier,1,false);
	}
