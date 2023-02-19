// You can write your code in this editor
if lifted && (instance_exists(ObjPlayer))
	{
		ObjPlayer.holding = true;
		solid = false;
		persistent = true;
		if ObjPlayer.facing = 0 //Left
		{
			x = ObjPlayer.x - 22;
			y = ObjPlayer.y -2;
			depth = ObjPlayer.depth-1;
			
		}
		if ObjPlayer.facing = 90 //Down
		{
			x = ObjPlayer.x;
			y = ObjPlayer.y + 12;
			depth = ObjPlayer.depth-1;
		}
		if ObjPlayer.facing = 180 //Right
		{
			x = ObjPlayer.x + 22;
			y = ObjPlayer.y -2;
			depth = ObjPlayer.depth-1;
		}
		if ObjPlayer.facing = 270 //Up
		{
			x = ObjPlayer.x;
			y = ObjPlayer.y - 22;
			depth = ObjPlayer.depth+1;
		}
		
	}
if (!lifted)
	{
		if thrown
			{
				global.thrown = self;
				solid = true;
				throwDisTravelled = min(throwDisTravelled + 3, throwDis);
				x = xstart + lengthdir_x(throwDisTravelled, direction);
				y = ystart + lengthdir_y(throwDisTravelled, direction);
				if !place_free(x,y)
					{
						thrown = false;
						grav = 0.2;
						if (destructable) instance_destroy();
					}
				
				throwPercent = throwStartPercent + lerp(0, 1 - throwStartPercent, throwDisTravelled / throwDis);
				z = throwPeakH * sin(throwPercent * pi);
				if (throwDis == throwDisTravelled)
					{
						thrown = false;
						if (destructable) 
						{
							global.thrown = noone;
							instance_destroy();
						}
					}
			}
			else
			{
				if (z > 0)
				{
					z = max(z - grav, 0)
					grav += 0.1;
					if (z == 0) && (destructable) 
					{
						global.thrown = noone;
						instance_destroy();
					}
				}
				else
				{
					grav = 0.1;
				}
			}
	};

		