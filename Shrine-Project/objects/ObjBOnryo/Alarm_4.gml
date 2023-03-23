/// @description Figure 8 - Melee
if path = path_start(pthOnryoFigure8, 2, path_action_continue, false)
{
	path_end();
	state = OnryoStateMelee;
	script_execute(state);
	alarm_set(5,45);
}