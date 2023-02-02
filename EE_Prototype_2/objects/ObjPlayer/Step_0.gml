//Get Input
	//Movement Input
	keyLeft = keyboard_check(ord("A")) || gamepad_button_check(0,gp_padl) || (gamepad_axis_value(0,gp_axislh) < 0);
	keyRight = keyboard_check(ord("D")) || gamepad_button_check(0,gp_padr) || (gamepad_axis_value(0,gp_axislh) > 0);
	keyUp = keyboard_check(ord("W")) || gamepad_button_check(0,gp_padu) || (gamepad_axis_value(0,gp_axislv) < 0);
	keyDown = keyboard_check(ord("S")) || gamepad_button_check(0,gp_padd) || (gamepad_axis_value(0,gp_axislv) > 0);
	//Action Input
	keyGrab = keyboard_check(ord("J")) || gamepad_button_check(0,gp_face2);
	keyMelee = keyboard_check(ord("I")) || gamepad_button_check(0,gp_face1);
	keyRange = keyboard_check(ord("O")) || gamepad_button_check(0,gp_face3);

inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);

//Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

if place_free(x + hSpeed, y)
	{
		x += hSpeed
	}
if place_free(x, y + vSpeed)
	{
		y += vSpeed
	}

//Sprite Direction
if hSpeed > 0 //Face Left
	{
		sprite_index = sPlayerR
	}
if hSpeed < 0 //Face Right
	{
		sprite_index = sPlayerL
	}
if vSpeed > 0 //Face Down
	{
		sprite_index = sPlayerD
	}
if vSpeed < 0 //Face Up
	{
		sprite_index = sPlayerU
	}

// Melee Attack
if keyMelee && cooldownM = false && sprite_index = sPlayerL //Melee Attack Left
 {
	 instance_create_layer(x - 16, y, "Instances", ObjMHitbox,
		 {
			image_angle : 180
		 });
	 cooldownM = true; //Attack cooldown
	 alarm_set(0,30);
 }
if keyMelee && cooldownM = false && sprite_index = sPlayerR //Melee Attack Right
 {
	 instance_create_layer(x + 16, y, "Instances", ObjMHitbox,
		{
			image_angle : 0
		});
	 cooldownM = true; //Attack cooldown
	 alarm_set(0,30);
 }
if keyMelee && cooldownM = false && sprite_index = sPlayerU //Melee Attack Up
 {
	 instance_create_layer(x, y - 16, "Instances", ObjMHitbox,
		{
			image_angle : 90
		});
	 cooldownM = true; //Attack cooldown
	 alarm_set(0,30);
 }
if keyMelee && cooldownM = false && sprite_index = sPlayerD //Melee Attack Down
 {
	 instance_create_layer(x, y + 16, "Instances", ObjMHitbox,
		{
			image_angle : 270
		});
	 cooldownM = true; //Attack cooldown
	 alarm_set(0,30);
 }
// Ranged Atack
if keyRange && cooldownR = false && global.stockR > 0 && sprite_index = sPlayerL //Range Attack Left
 {
	 instance_create_layer(x - 32, y, "Instances", ObjOfuda,
		{
			direction : 180,
			image_angle : 180
		});
	 global.stockR -= 1;
	 cooldownR = true; //Attack cooldown
	 alarm_set(1,30);
 }
if keyRange && cooldownR = false && global.stockR > 0 && sprite_index = sPlayerR //Range Attack Right
 {
	 instance_create_layer(x + 16, y, "Instances", ObjOfuda,
		{
			direction : 0,
			image_angle : 0
		});
	 global.stockR -= 1;
	 cooldownR = true; //Attack cooldown
	 alarm_set(1,30);
 }
if keyRange && cooldownR = false && global.stockR > 0 && sprite_index = sPlayerU //Range Attack Up
{
	 instance_create_layer(x, y - 16, "Instances", ObjOfuda,
		{
			direction : 90,
			image_angle : 90
		});
	 global.stockR -= 1;
	 cooldownR = true; //Attack cooldown
	 alarm_set(1,30);
}
if keyRange && cooldownR = false && global.stockR > 0 && sprite_index = sPlayerD //Range Attack Down
 {
	 instance_create_layer(x, y + 32, "Instances", ObjOfuda,
		{
			direction : 270,
			image_angle : 270
		});
	 global.stockR -= 1;
	 cooldownR = true; //Attack cooldown
	 alarm_set(1,30);
 }
 
 global.stockR = clamp(global.stockR, 0, 30)
 global.playerHealth = clamp(global.playerHealth, 0, 10)