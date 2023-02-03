// You can write your code in this editor

var cameraPanSpeed = 4;

var camera = view_get_camera(0);

var desiredX = ObjPlayer.x / 480
desiredX -= frac(desiredX);
desiredX *= 480;

var desiredY = ObjPlayer.y / 352;
desiredY -= frac(desiredY);
desiredY *= 352;

var currentX = camera_get_view_x(camera);
var currentY = camera_get_view_y(camera);

if ((desiredX != currentX) || (desiredY != currentY))
	{
		var dx = clamp(desiredX - currentX, -cameraPanSpeed, +cameraPanSpeed);
		var dy = clamp(desiredY - currentY, -cameraPanSpeed, +cameraPanSpeed);
		camera_set_view_pos(camera, currentX + dx, currentY + dy);
	}