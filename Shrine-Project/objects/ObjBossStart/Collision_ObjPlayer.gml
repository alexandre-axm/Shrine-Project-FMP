// You can write your code in this editor
global.BossStart = true;
instance_destroy(self);
with ObjBoss1
{
	path = path_start(pthOnryoCircle, 2, path_action_continue, false);
	alarm_set(1,300);
}