//
global.defenceUp = true;
alarm_set(2,300);
instance_destroy(other);
global.playerHealth += 1;
instance_destroy(other);
audio_play_sound(SndSoul,1,false);


