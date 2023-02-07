function PlayerStateKnockback()
{
	direction = point_direction(x, y, other.x, other.y) + 180;
	speed = 2;
	if place_free(x, y) = false
	{
		speed = 0;
	}
};