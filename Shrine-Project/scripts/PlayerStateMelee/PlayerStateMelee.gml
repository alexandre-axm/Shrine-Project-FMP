function PlayerStateMelee()
{
if facing = 0 //Melee Attack Left
 {
	 instance_create_layer(x - 24, y - 32, "Instances", ObjMHitbox,
		{
			image_angle : 90
		});
	 with ObjMHitbox
		{
			path_start(pthPlayerMeleeLR,8,path_action_stop,false)
		} 
		cooldownM = true; //Attack cooldown
		stopMove= true; // Briefly Stops Movement
		alarm_set(0,30);
		alarm_set(5,18);
 }
 
if facing = 180 //Melee Attack Right
 {
	 instance_create_layer(x + 24, y - 32, "Instances", ObjMHitbox,
	 {
		 image_angle : 270
	 });
	 with ObjMHitbox
		{
			path_start(pthPlayerMeleeLR,8,path_action_stop,false)
		}
		cooldownM = true; //Attack cooldown
		stopMove= true; // Briefly Stops Movement
		alarm_set(0,30);
		alarm_set(5,18);
 }
 
if facing = 270 //Melee Attack Up
 {
	 instance_create_layer(x - 32, y - 24, "Instances", ObjMHitbox);
	 with ObjMHitbox
		{
			path_start(pthPlayerMeleeUD,8,path_action_stop,false)
		}
		cooldownM = true; //Attack cooldown
		stopMove= true; // Briefly Stops Movement
		alarm_set(0,30);
		alarm_set(5,18);
 }
 
if facing = 90 //Melee Attack Down
 {
	 instance_create_layer(x - 24, y + 24, "Instances", ObjMHitbox);
	 with ObjMHitbox
		{
			path_start(pthPlayerMeleeUD,-8,path_action_stop,false)
		}
		cooldownM = true; //Attack cooldown
		stopMove= true; // Briefly Stops Movement
		alarm_set(0,30);
		alarm_set(5,18);		
 }
state = PlayerStateFree;
};