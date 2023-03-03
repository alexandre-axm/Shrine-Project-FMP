//Projectiles (+ Pattern)
if state = OnryoStateRange
{
	instance_create_layer(x, y, "Instances", ObjEFireball2, {direction : 0});
	instance_create_layer(x, y, "Instances", ObjEFireball2, {direction : 90});
	instance_create_layer(x, y, "Instances", ObjEFireball2, {direction : 180});
	instance_create_layer(x, y, "Instances", ObjEFireball2, {direction : 270});
	alarm_set(3,30)
}