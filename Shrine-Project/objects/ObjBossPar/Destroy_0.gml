// Drop Item On Defeat
drop = choose(1,2,3,4,5,6,7,8,9,10); //Choose Drop Value
if drop = 1 //Health Up
	{
		instance_create_layer(x, y, "Instances", ObjDropR);
	};
if drop = 2 //Defence Up
	{
		instance_create_layer(x, y, "Instances", ObjDropB);
	};
if drop = 3 //Attack Up
	{
		instance_create_layer(x, y, "Instances", ObjDropY);
	};