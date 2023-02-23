event_inherited();
eState = EnemyStateIdle;

global.enemiesLeft += 1;
eHealth = 2;
cooldownE = false;

//are we chasing the player?
alert = false;

//distance to start chasing
alertDis = 100;
attackDis = 0;

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