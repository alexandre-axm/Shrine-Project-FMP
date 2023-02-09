if state != PlayerStateKnockback
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
