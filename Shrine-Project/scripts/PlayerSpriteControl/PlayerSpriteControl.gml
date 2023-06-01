function PlayerSpriteControl()
{

if (facing == noone)
{
	return
}
 
if (!stopMove)
	{
	    var spriteKey = holding ? "sGrab" : "sPlayer"
	    sprite_index = facingSprites[? spriteKey][directionMap[? string(facing)]]
	}

switch (state)
	{
		case PlayerStateMelee:
			sprite_index = facingSprites[? "sMAttack"][directionMap[? string(facing)]];
		    image_index = 0;
		    image_speed = 3;
		    break;
		case PlayerStateRange:
			sprite_index = facingSprites[? "sRAttack"][directionMap[? string(facing)]];
		    image_index = 0;
		    image_speed = 3;
		    break;
		case PlayerStateThrow:
			sprite_index = facingSprites[? "sThrow"][directionMap[? string(facing)]];
		    image_index = 0;
		    image_speed = 4;
		    break;
		case PlayerStateGrab:
			sprite_index = facingSprites[? "sGrab"][directionMap[? string(facing)]];
		    image_index = 0;
		    image_speed = 2;
		    break;
	}

}