// Damage Player
if !global.cooldownH
	{
		global.playerHealth -= global.defenceUp ? 0.5 : 1;
		global.cooldownH = true;
		with ObjPlayer
			{
				alarm_set(4,10);
				kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
				kbSpeed = kbMaxSpeed;
			}
		instance_destroy(self);
		audio_play_sound(SndHurt,2,false);
	}