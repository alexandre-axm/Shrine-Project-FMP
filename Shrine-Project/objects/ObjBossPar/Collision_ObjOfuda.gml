if !cooldownE //Standard Attack Value
	{
		eHealth -= global.attackUp ? 2 : 1;
		eHealth -= 1;
		cooldownE = true;
		hurt = true;
		alarm_set(0,30);
		instance_destroy(other);
		if place_free(x,y)
		{
			kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
			kbSpeed = kbMaxSpeed;
		}
		CameraShake();
		//path_end();
		//path_reverse(path);
		audio_play_sound(SndBossHurt,1,false);
	}