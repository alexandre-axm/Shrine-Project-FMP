// You can write your code in this editor
if global.enemiesLeft <= 39
	{
		instance_destroy(self);
		global.target = noone;
		audio_play_sound(SndBarrier,1,false);
	}