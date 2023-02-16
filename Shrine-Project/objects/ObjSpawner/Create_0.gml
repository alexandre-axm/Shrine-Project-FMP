//
spawn = choose (1, 2)
if spawn = 1
{
	instance_create_layer(x,y,"Enemy", ObjEnemy2)
	instance_destroy(self)
}
if spawn = 2
{
	instance_create_layer(x,y,"Enemy", ObjEnemy1)
	instance_destroy(self)
}
