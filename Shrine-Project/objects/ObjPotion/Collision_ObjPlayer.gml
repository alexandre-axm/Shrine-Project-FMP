/// @description Insert description here
// You can write your code in this editor
global.playerHealth += 1;
instance_destroy(self);
audio_play_sound(SndFireball,1,false);