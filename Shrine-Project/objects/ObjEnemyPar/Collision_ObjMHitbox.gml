if !cooldownE
	{	
		if !global.attackUp
			eHealth -= 1;  //Standard Damage Value
		else
			eHealth -= 2; //Increased Damage Value
		cooldownE = true;
		hurt = true;
		disguiseOn = false;
		alarm_set(0,30);
		path_end();
		if place_free(x,y)
		{
			kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
			kbSpeed = kbMaxSpeed;
		}
		audio_play_sound(SndHurt,2,false);
	};