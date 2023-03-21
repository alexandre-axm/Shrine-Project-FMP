event_inherited();
//eState = EnemyStateIdle;

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

//Sprites
disguiseOn = true;
disguise = choose(1,2,3);

if disguise = 1 //No Disguise
{
	sEWalkU = SprBakenekoWalkU;
	sEWalkL = SprBakenekoWalkL;
	sEWalkR = SprBakenekoWalkR;
	sEWalkD = SprBakenekoWalkD;
}
if disguise = 2 //Female Disguise
{
	sEWalkU = SprFDisguiseU;
	sEWalkL = SprFDisguiseL;
	sEWalkR = SprFDisguiseR;
	sEWalkD = SprFDisguiseD;
}
if disguise = 3 //Male Disguise
{
	sEWalkU = SprMDisguiseU;
	sEWalkL = SprMDisguiseL;
	sEWalkR = SprMDisguiseR;
	sEWalkD = SprMDisguiseD;
}