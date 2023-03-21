/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if breaking = true
	{
		sprite_index = SprBoxBreak;
		image_speed = 1;
		solid = false;
		audio_play_sound(SndBoxBreak,1,false);
		//alarm_set(0,15);
	}
