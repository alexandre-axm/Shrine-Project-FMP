// You can write your code in this editor
if !hurt
{
	shader_set(ShDefault);
	draw_self();
	//draw_sprite_ext(sprite_index,image_index,floor(x),floor(y-z),image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	shader_reset();
};
else
{
	shader_set(ShDamage);
	draw_self();
	//draw_sprite_ext(sprite_index,image_index,floor(x),floor(y-z),image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	shader_reset();
};
	
//draw_text(x+24, y-24, xstart);

