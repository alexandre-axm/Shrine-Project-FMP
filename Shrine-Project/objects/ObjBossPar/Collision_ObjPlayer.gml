// Damage Player
if !global.cooldownH && !cooldownE
	{
		global.playerHealth -= global.defenceUp ? 0.5 : 1;
		global.cooldownH = true;
		cooldownE = true;
		alarm_set(0,30);
		with ObjPlayer
			{
				alarm_set(4,10);
				kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
				kbSpeed = kbMaxSpeed;
			}
		//path_end();
		//path_reverse(path);
		audio_play_sound(SndHurt,2,false);
	}