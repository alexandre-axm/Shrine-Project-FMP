///@description Projectiles (x Pattern)
if state = OnryoStateRange
{
	instance_create_layer(x, y, "Instances", ObjEFireball2, {direction : 45});
	instance_create_layer(x, y, "Instances", ObjEFireball2, {direction : 135});
	instance_create_layer(x, y, "Instances", ObjEFireball2, {direction : 225});
	instance_create_layer(x, y, "Instances", ObjEFireball2, {direction : 315});	
	alarm_set(2,30)
	audio_play_sound(SndFireball,1,false);
}