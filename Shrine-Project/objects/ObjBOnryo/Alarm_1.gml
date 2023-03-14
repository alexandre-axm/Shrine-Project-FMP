/// @description Circle - Figure 8

if path = path_start(pthOnryoCircle, 2, path_action_continue, false)
{
	path = path_start(pthOnryoFigure8, 2, path_action_continue, false);
	alarm_set(4,300);
}
/*
if state = OnryoStateMelee
{
	state = OnryoStateReset;
	script_execute(state);
}
if state = OnryoStateReset
{
	state = OnryoStateRange;
	script_execute(state);
}
if state = OnryoStateRange
{
	state = OnryoStateCircle;
	script_execute(state);
}