//
spawn = choose (1, 2)
if spawn = 1
{
	instance_create_layer(x,y,"Enemy", ObjEBiwa)
	instance_destroy(self)
};
if spawn = 2
{
	instance_create_layer(x,y,"Enemy", ObjEBakeneko)
	instance_destroy(self)
};