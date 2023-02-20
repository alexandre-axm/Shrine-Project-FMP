//Point Towards Target
x = ObjPlayer.x
y = ObjPlayer.y - 48

if global.target != noone
{
	image_angle = point_direction(x,y,global.target.x,global.target.y)
}