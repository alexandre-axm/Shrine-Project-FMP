// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateGrab(){
	if facing = 0 //Melee Attack Left
 {
	instance_create_layer(x - 16, y, "Instances", ObjGrabRange);
	cooldownM = true; //Attack cooldown
	stopMove = true; // Briefly Stops Movement
	alarm_set(0,30);
	alarm_set(5,18);
 }
 
if facing = 180 //Melee Attack Right
 {
	instance_create_layer(x + 16, y, "Instances", ObjGrabRange);
	cooldownM = true; //Attack cooldown
	stopMove = true; // Briefly Stops Movement
	alarm_set(0,30);
	alarm_set(5,18);
 }
 
if facing = 270 //Melee Attack Up
 {
	instance_create_layer(x, y - 16, "Instances", ObjGrabRange);
	cooldownM = true; //Attack cooldown
	stopMove = true; // Briefly Stops Movement
	alarm_set(0,30);
	alarm_set(5,18);
 }
 
if facing = 90 //Melee Attack Down
 {
	instance_create_layer(x, y + 16, "Instances", ObjGrabRange);
	cooldownM = true; //Attack cooldown
	stopMove = true; // Briefly Stops Movement
	alarm_set(0,30);
	alarm_set(5,18);		
 }
state = PlayerStateFree;
}