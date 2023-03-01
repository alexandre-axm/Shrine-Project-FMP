// You can write your code in this editor
if !cooldownE
{
	shader_set(ShDefault);
	draw_self();
	shader_reset();
};
else
{
	shader_set(ShDamage);
	draw_self();
	shader_reset();
};

if keyboard_check(ord("P"))
	{
		draw_path(path, x, y, 0);
	}
	
//draw_text(x+24, y-24, facing);

