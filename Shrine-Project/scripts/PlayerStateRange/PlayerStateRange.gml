function PlayerStateRange()
{
if facing = 0 //Range Attack Left
 {
	 instance_create_layer(x - 16, y, "Instances", ObjOfuda,
		{
			direction : 180,
			image_angle : 180
		});
	 global.stockR -= 1;
	 cooldownR = true; //Attack cooldown
	 stopMove= true; // Briefly Stops Movement
	 alarm_set(1,30);
	 alarm_set(5,15);
 }
if facing = 180 //Range Attack Right
 {
	 instance_create_layer(x + 16, y, "Instances", ObjOfuda,
		{
			direction : 0,
			image_angle : 0
		});
	 global.stockR -= 1;
	 cooldownR = true; //Attack cooldown
	 stopMove= true; // Briefly Stops Movement
	 alarm_set(1,30);
	 alarm_set(5,15);
 }
if facing = 270 //Range Attack Up
 {
	 instance_create_layer(x, y - 16, "Instances", ObjOfuda,
		{
			direction : 90,
			image_angle : 90
		});
	 global.stockR -= 1;
	 cooldownR = true; //Attack cooldown
	 stopMove= true; // Briefly Stops Movement
	 alarm_set(1,30);
	 alarm_set(5,15);
 }
if facing = 90 //Range Attack Down
 {
	 instance_create_layer(x, y + 16, "Instances", ObjOfuda,
		{
			direction : 270,
			image_angle : 270
		});
	 global.stockR -= 1;
	 cooldownR = true; //Attack cooldown
	 stopMove= true; // Briefly Stops Movement
	 alarm_set(1,30);
	 alarm_set(5,15);
 }
state = PlayerStateFree;
}