// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CameraShake(){
	if instance_number(ObjShake) = 0 then instance_create_depth(0,0,0,ObjShake)
	with (ObjShake)
	{
		shakeLen = 3;
		shakeInt = 6;
	}
}