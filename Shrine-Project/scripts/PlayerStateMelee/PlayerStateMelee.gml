function PlayerStateMelee()
{
if facing = 2 //sprite_index = sPlayerL //Melee Attack Left
 {
	 sprite_index = sMAttackL;
	 image_speed = 1;
	 attacking = true;
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
 
if facing = 0 //sprite_index = sPlayerR //Melee Attack Right
 {
	 sprite_index = sMAttackR;
	 image_speed = 1;
	 attacking = true;
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
 
if facing = 1 //sprite_index = sPlayerU //Melee Attack Up
 {
	 sprite_index = sMAttackU;
	 image_speed = 1;
	 attacking = true;
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
 
if facing = 3 //sprite_index = sPlayerD //Melee Attack Down
 {
	 sprite_index = sMAttackD;
	 image_speed = 1;
	 attacking = true;
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