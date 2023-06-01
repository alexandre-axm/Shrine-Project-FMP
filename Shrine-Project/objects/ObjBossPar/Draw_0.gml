// You can write your code in this editor
	shader = hurt ? ShDamage : ShDefault
	shader_set(shader);
	draw_self();
	shader_reset();

