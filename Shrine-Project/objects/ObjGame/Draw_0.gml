//Show HUD
draw_text(2800,0,global.playerHealth);
draw_text(2800,32,global.stockR);
draw_text(2800,64,global.keysHeld);
draw_text(2800,96,global.enemiesLeft);
draw_text(2800,128,global.attackUp);
draw_text(2800,160,global.defenceUp);

//Show Enemy AI Grid
if keyboard_check(vk_alt)
{
	mp_grid_draw(global.mpGrid);
};