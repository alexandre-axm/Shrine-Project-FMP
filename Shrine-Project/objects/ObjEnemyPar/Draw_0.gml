if !hurt
	shader_set(ShDefault);
else
	shader_set(ShDamage);
draw_sprite_ext(sprite_index,image_index,floor(x),floor(y-z),image_xscale,image_yscale,image_angle,image_blend,image_alpha);
shader_reset();

if keyboard_check(ord("P"))
	{
		draw_path(path, x, y, 0);
	}
	
//draw_text(x+24, y-24, attacking);

