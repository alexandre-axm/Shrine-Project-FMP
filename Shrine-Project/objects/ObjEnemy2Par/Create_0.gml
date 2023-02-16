event_inherited();

global.enemiesLeft += 1;
eHealth = 2;
cooldownE = false;

//are we chasing the player?
alert = false;

//distance to start chasing
alertDis = 150;
attackDis = 0;

//path resource
path = path_add();

moveSpd = 2.5;
pathDelay = 30;
pathTimer = irandom(40);