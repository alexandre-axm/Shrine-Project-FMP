// Drop Item On Defeat
switch (irandom_range(1, 10)) //Choose Drop Value
	{
	case 1: //Health Up
		instance_create_layer(x, y, "Instances", ObjDropR);
		break;	
	case 2: //Defence Up
		instance_create_layer(x, y, "Instances", ObjDropB);
		break;	
	case 3: //Attack Up
		instance_create_layer(x, y, "Instances", ObjDropY);
		break;	
	default: //No Drop
		break;
	}