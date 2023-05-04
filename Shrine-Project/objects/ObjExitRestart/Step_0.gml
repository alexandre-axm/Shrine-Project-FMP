//Reset Game
if keyboard_check(ord("R")) || gamepad_button_check(0,gp_start)
{
	game_restart()
};

//Close Game
if keyboard_check(vk_escape) || gamepad_button_check(0,gp_select)
{
	game_end()
};