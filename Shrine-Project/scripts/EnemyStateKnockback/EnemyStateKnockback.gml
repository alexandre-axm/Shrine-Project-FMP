function EnemyStateKnockback()
{
		direction = point_direction(x, y, ObjMHitbox.x || ObjOfuda.x, ObjMHitbox.y || ObjOfuda.y) + 180;
		speed = 2;
		if place_free(x, y) = false
		{
			speed = 0;
		}
}