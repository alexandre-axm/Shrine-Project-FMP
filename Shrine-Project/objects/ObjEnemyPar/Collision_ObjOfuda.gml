if !cooldownE
	{
		
		eHealth -= global.attackUp ? 2 : 1  //Attack Value
		cooldownE = true;
		hurt = true;
		disguiseOn = false;
		alarm_set(0,15);
		instance_destroy(other);
		path_end();
		if place_free(x,y)
		{
			kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
			kbSpeed = kbMaxSpeed;
		}
		audio_play_sound(SndHurt,2,false);
	}