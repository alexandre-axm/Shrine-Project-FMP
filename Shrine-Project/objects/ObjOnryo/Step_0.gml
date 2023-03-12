// You can write your code in this editor
event_inherited();

//var _path = path_add();
//path_assign(_path,path);

//Health Check
if eHealth <= 0
	{
		instance_destroy(self)
		room_goto(LevelClear);
	}
	
//Sprite Control
if state = OnryoStateRange
	{
		sprite_index = SprOnryoAttack;
		//image_index = 0;
		image_speed = 2;
	}
if state != OnryoStateRange
	{
		sprite_index = SprOnryoMove;
		//image_index = 0;
		image_speed = 2;
	}