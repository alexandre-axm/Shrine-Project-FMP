// You can write your code in this editor
direction = point_direction(x,y,ObjPlayer.x,ObjPlayer.y)
image_angle = direction;
speed = 3;
alarm_set(0,60);
audio_play_sound(SndFireball,1,false);
