// You can write your code in this editor
if lifted && (instance_exists(ObjPlayer))
	{
		x = ObjPlayer.x;
		y = ObjPlayer.y - 24;
		persistent = true;
		depth = ObjPlayer.depth-1;
		ObjPlayer.holding = true;
	}
if (!lifted)
	{
		if thrown
			{
				throwDisTravelled = min(throwDisTravelled + 3, throwDis);
				x = xstart + lengthdir_x(throwDisTravelled, direction);
				y = ystart + lengthdir_y(throwDisTravelled, direction);
				if !place_free(x,y) //(tilemap_get_at_pixel(collisionMap,x ,y) > 0)
					{
						thrown = false;
						grav = 0.1;
						if (destructable) instance_destroy();
					}
				
				throwPercent = throwStartPercent + lerp(0, 1 - throwStartPercent, throwDisTravelled / throwDis);
				z = throwPeakH * sin(throwPercent * pi);
				if (throwDis == throwDisTravelled)
					{
						thrown = false;
						if (destructable) instance_destroy();
					}
			}
			else
			{
				if (z > 0)
				{
					z = max(z - grav, 0)
					grav += 0.1;
					if (z == 0) && (destructable) instance_destroy();
				}
				else
				{
					grav = 0.1;
				}
			}
	};

		