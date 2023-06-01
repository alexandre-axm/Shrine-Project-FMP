switch (irandom_range(1, 3)) //Choose Drop Value
	{
	case 1: 
		instance_create_layer(x, y,"Instances", ObjOfudaR);
		break;	
	case 2: 
		instance_create_layer(x, y, "Instances", ObjPotion);
		break;	
	default: //No Drop
		break;
	}

//audio_play_sound(SndBoxBreak,2,false);