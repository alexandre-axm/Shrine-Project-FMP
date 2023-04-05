//Set Inputs
keyUp = keyboard_check(ord("W")) || gamepad_button_check(0,gp_padu) || (gamepad_axis_value(0,gp_axislv) < 0);
keyDown = keyboard_check(ord("S")) || gamepad_button_check(0,gp_padd) || (gamepad_axis_value(0,gp_axislv) > 0);
keyGrab = keyboard_check(ord("U")) || gamepad_button_check(0,gp_face2);

//Menu Cycle

if room = MainMenu
{
	if global.selected == noone  && (keyUp || keyDown)
	{
		global.selected = ObjStart;
	}
	if global.selected == ObjStart && keyDown
	{
		global.selected = ObjExitGame;
	}
	if global.selected == ObjExitGame && keyUp
	{
		global.selected = ObjStart;
	}
	}

if room = LevelClear
{
	if global.selected == noone && (keyUp || keyDown)
	{
		global.selected = ObjReturn;
	}
	if global.selected == ObjReturn && keyDown
	{
		global.selected = ObjExitGame;
	}
	if global.selected == ObjExitGame && keyUp
	{
		global.selected = ObjReturn;
	}
}
	
if room = GameOver
{
	if global.selected == noone && (keyUp || keyDown)
	{
		global.selected = ObjRetry;
	}
	if global.selected == ObjRetry && keyDown
	{
		global.selected = ObjExitGame;
	}
	if global.selected == ObjExitGame && keyUp
	{
		global.selected = ObjRetry;
	}
}



//Activation
if keyGrab
{
	if global.selected == ObjStart
	{
		room_goto(Objective)
		global.selected = noone;
	}
	if global.selected == ObjExitGame
	{
		game_end();
		global.selected = noone;
	}
	if global.selected == ObjRetry
	{
		room_goto(Level1);
		global.selected = noone;
	}
	if global.selected == ObjReturn
	{
		room_goto(MainMenu);
		global.selected = noone;
	}
}