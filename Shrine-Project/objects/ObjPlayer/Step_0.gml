//Get Input
	//Movement Input
	keyLeft = keyboard_check(ord("A")) || gamepad_button_check(0,gp_padl) || (gamepad_axis_value(0,gp_axislh) < 0);
	keyRight = keyboard_check(ord("D")) || gamepad_button_check(0,gp_padr) || (gamepad_axis_value(0,gp_axislh) > 0);
	keyUp = keyboard_check(ord("W")) || gamepad_button_check(0,gp_padu) || (gamepad_axis_value(0,gp_axislv) < 0);
	keyDown = keyboard_check(ord("S")) || gamepad_button_check(0,gp_padd) || (gamepad_axis_value(0,gp_axislv) > 0);
	//Action Input
	keyGrab = keyboard_check(ord("U")) || gamepad_button_check(0,gp_face2);
	keyMelee = keyboard_check(ord("I")) || gamepad_button_check(0,gp_face1);
	keyRange = keyboard_check(ord("O")) || gamepad_button_check(0,gp_face3);

inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);

//State Machine
script_execute(state);

//Sprite Control
if hSpeed > 0 //Face Right
	{
		facing = 180;
		image_speed = 1;
	};
if hSpeed < 0 //Face Left
	{
		facing = 0;
		image_speed = 1;
	};
if vSpeed > 0 //Face Down
	{
		facing = 90;
		image_speed = 1;
	};
if vSpeed < 0 //Face Up
	{
		facing = 270;
		image_speed = 1;
	};

PlayerSpriteControl();
 
 global.stockR = clamp(global.stockR, 0, 30)
 global.playerHealth = clamp(global.playerHealth, 0, 10)	