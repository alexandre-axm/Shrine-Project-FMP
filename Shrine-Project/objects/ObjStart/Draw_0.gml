/// @description Insert description here
// You can write your code in this editor
draw_self();

//Sprite Control
if global.selected = ObjStart
{
	image_index = 2;
}
if global.selected != ObjStart
{
	image_index = 1;
}