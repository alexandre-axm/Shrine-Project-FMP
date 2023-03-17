/// @description Melee - Reset
if state = OnryoStateMelee
{
	state = OnryoStateReset;
	script_execute(state);
	alarm_set(6,75);
}