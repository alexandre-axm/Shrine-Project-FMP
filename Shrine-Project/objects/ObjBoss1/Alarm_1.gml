// You can write your code in this editor

if state = OnryoStateCircle
{
	state = OnryoStateFigure8;
	//script_execute(state);
	path_start(pthOnryoFigure8, 2, path_action_stop, false);
}
if state = OnryoStateFigure8
{
	state = OnryoStateMelee;
	script_execute(state);
	path_start(pthOnryoCircle, 2, path_action_stop, false);
}
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