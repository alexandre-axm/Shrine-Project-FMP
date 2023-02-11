//
function PlayerSpriteControl(){

//Moving Sprite Direction
if hSpeed > 0 //Face Left
	{
<<<<<<< Updated upstream
		sprite_index = sPlayerR
	}
if hSpeed < 0 //Face Right
	{
		sprite_index = sPlayerL
	}
if vSpeed > 0 //Face Down
	{
		sprite_index = sPlayerD
	}
if vSpeed < 0 //Face Up
	{
		sprite_index = sPlayerU
=======
		if state = PlayerStateFree{sprite_index = sPlayerR}
		if state = PlayerStateMelee{sprite_index = sMAttackR}
		image_speed = 1;
		facing = 0;
	}
if hSpeed < 0 //Face Right
	{
		if state = PlayerStateFree{sprite_index = sPlayerL}
		if state = PlayerStateMelee{sprite_index = sMAttackL}
		image_speed = 1;
		facing = 2;
	}
if vSpeed > 0 //Face Down
	{
		if state = PlayerStateFree{sprite_index = sPlayerD}
		if state = PlayerStateMelee{sprite_index = sMAttackD}
		image_speed = 1;
		facing = 3;
	}
if vSpeed < 0 //Face Up
	{
		if state = PlayerStateFree{sprite_index = sPlayerU}
		if state = PlayerStateMelee{sprite_index = sMAttackU}
		image_speed = 1;
		facing = 1;
>>>>>>> Stashed changes
	}
}	