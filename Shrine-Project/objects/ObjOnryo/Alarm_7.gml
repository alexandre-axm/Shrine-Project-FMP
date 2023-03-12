/// @description Range - Circle
if state = OnryoStateRange
{
	path = path_start(pthOnryoCircle, 2.5, path_action_continue, false)
	alarm_set(1,95);
	state = OnryoStateCircle
}