// You can write your code in this editor
sprite_index = SprBoxBreak;
image_speed = 1;
solid = false;
alarm_set(0,15);
//instance_destroy(self);
instance_destroy(other);
audio_play_sound(SndBoxBreak,1,false);


