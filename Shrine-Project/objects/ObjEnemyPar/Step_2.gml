// You can write your code in this editor
if lifted && (instance_exists(ObjPlayer))
	{
		ObjPlayer.holding = true;
		solid = false;
		persistent = true;
		if ObjPlayer.facing = 0 //Left
		{
			x = ObjPlayer.x - 19;
			y = ObjPlayer.y -2;
			depth = ObjPlayer.depth+1;
			
		}
		if ObjPlayer.facing = 90 //Down
		{
			x = ObjPlayer.x;
			y = ObjPlayer.y + 8;
			depth = ObjPlayer.depth-1;
		}
		if ObjPlayer.facing = 180 //Right
		{
			x = ObjPlayer.x + 19;
			y = ObjPlayer.y -2;
			depth = ObjPlayer.depth+1;
		}
		if ObjPlayer.facing = 270 //Up
		{
			x = ObjPlayer.x;
			y = ObjPlayer.y - 16;
			depth = ObjPlayer.depth+1;
		}
		
	}
if (!lifted)
	{
		if thrown
			{
				global.thrown = self;
				solid = true;
				throwDisTravelled = min(throwDisTravelled + 4, throwDis);
				x = xstart + lengthdir_x(throwDisTravelled, direction);
				y = ystart + lengthdir_y(throwDisTravelled, direction);
				if !place_free(x,y)
					{
						thrown = false;
						grav = 0.2;
						if (destructable) instance_destroy();
						eHealth -= 1;
						cooldownE = true;
						hurt = true;
						alarm_set(0,15);
						kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
						kbSpeed = kbMaxSpeed;
						CameraShake();
					}
				
				throwPercent = throwStartPercent + lerp(0, 1 - throwStartPercent, throwDisTravelled / throwDis);
				z = throwPeakH * sin(throwPercent * pi);
				if (throwDis == throwDisTravelled)
					{
						thrown = false; 
						global.thrown = noone;
					}
			}
			else
			{
				if (z > 0)
				{
					z = max(z - grav, 0)
					grav += 0.1;
					if (z == 0) 
					{
						global.thrown = noone;
					}
				}
				else
				{
					grav = 0.1;
				}
			}
	};

		