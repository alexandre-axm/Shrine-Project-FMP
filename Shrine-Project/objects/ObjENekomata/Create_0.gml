// Inherit the parent event
event_inherited();

global.enemiesLeft += 1;
eHealth = 3;
cooldownE = false;
cooldownEP = false;

//are we chasing the player?
alert = false;

//distance to start chasing
alertDis = 150;
attackDis = 96;

//path resource
path = path_add();

moveSpd = 1.5;
pathDelay = 30;
pathTimer = irandom(60);

/*Sprites
sEnemyIdle =
sEnemyMove =
sEnemyAttack =
sEnemyDeath =