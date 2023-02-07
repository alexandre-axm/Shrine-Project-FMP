function PlayerStateMelee()
{
if sprite_index = sPlayerL //Melee Attack Left
 {
	 instance_create_layer(x - 32, y - 32, "Instances", ObjMHitbox,
		{
			image_angle : 90
		});
	 with ObjMHitbox
		{
			path_start(pthPlayerMeleeL,10,path_action_stop,false)
		} 
		cooldownM = true; //Attack cooldown
		stopMove= true; // Briefly Stops Movement
		alarm_set(0,30);
		alarm_set(5,15);
 }
 
if sprite_index = sPlayerR //Melee Attack Right
 {
	 instance_create_layer(x + 32, y + 32, "Instances", ObjMHitbox,
	 {
		 image_angle : 270
	 });
	 with ObjMHitbox
		{
			path_start(pthPlayerMeleeR,10,path_action_stop,false)
		}
		cooldownM = true; //Attack cooldown
		stopMove= true; // Briefly Stops Movement
		alarm_set(0,30);
		alarm_set(5,15);
 }
 
if sprite_index = sPlayerU //Melee Attack Up
 {
	 instance_create_layer(x + 32, y - 32, "Instances", ObjMHitbox);
	 with ObjMHitbox
		{
			path_start(pthPlayerMeleeU,10,path_action_stop,false)
		}
		cooldownM = true; //Attack cooldown
		stopMove= true; // Briefly Stops Movement
		alarm_set(0,30);
		alarm_set(5,15);
 }
 
if sprite_index = sPlayerD //Melee Attack Down
 {
	 instance_create_layer(x - 32, y + 32, "Instances", ObjMHitbox);
	 with ObjMHitbox
		{
			path_start(pthPlayerMeleeD,10,path_action_stop,false)
		}
		cooldownM = true; //Attack cooldown
		stopMove= true; // Briefly Stops Movement
		alarm_set(0,30);
		alarm_set(5,15);		
 }

state = PlayerStateFree;
};