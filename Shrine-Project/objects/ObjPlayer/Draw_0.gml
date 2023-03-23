if state != PlayerStateKnockback
{
	shader_set(ShDefault);
	draw_sprite_ext(sprite_index,image_index,floor(x),floor(y-z),image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	shader_reset();
};
else
{
	shader_set(ShDamage);
	draw_sprite_ext(sprite_index,image_index,floor(x),floor(y-z),image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	shader_reset();
};
