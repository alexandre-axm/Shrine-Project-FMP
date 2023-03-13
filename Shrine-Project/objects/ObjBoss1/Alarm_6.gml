/// @description Reset - Range
if state = OnryoStateReset
{
	speed = 0;
	state = OnryoStateRange;
	script_execute(state);
	alarm_set(7,120);
}