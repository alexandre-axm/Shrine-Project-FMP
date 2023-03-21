//
drop = choose(1,2,3);

if drop = 1
	{
		instance_create_layer(x, y,"Instances", ObjOfudaR);
	}
if drop = 2
	{
		instance_create_layer(x, y, "Instances", ObjPotion);
	}

