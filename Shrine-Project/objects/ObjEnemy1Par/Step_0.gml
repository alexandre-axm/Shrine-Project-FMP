event_inherited();

switch(state)
	{
		case states.IDLE:
			check_for_player();
			//EnemySpriteControl();
		break;
		case states.MOVE:
			check_for_player();
			//EnemySpriteControl();
		break;
		case states.ATTACK:
			//EnemySpriteControl();
		break;
		case states.DEAD:
			//EnemySpriteControl();
		break;
	}