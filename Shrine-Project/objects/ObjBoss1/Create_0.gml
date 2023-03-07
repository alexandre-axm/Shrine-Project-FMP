event_inherited();

eHealth = 15;
cooldownE = false;
path = path_start(pthOnryoCircle, 2, path_action_continue, false);
alarm_set(1,300);

xstart = 1295;
ystart = 1680;

//Run State Machine
state = OnryoStateCircle;
//script_execute(state);