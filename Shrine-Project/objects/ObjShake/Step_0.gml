//Screen Shake

if shakeLen = 0 then
{
	shakeX = 0;
	shakeY = 0;
	instance_destroy()
}
if shakeLen > 0 then
{
	shakeX = -(shakeInt/2) + random(shakeInt)
	shakeY = -(shakeInt/2) + random(shakeInt)
	shakeLen -= 1
}
camera_set_view_pos(view_camera[0], xs + shakeX, ys + shakeY);