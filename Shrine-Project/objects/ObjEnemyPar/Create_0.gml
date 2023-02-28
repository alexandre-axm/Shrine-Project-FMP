//Start In Idle State
//state = states.IDLE
//eState = EnemyStateIdle;

kbDir = 0;
kbSpeed = 0;
kbMaxSpeed = 5;
kbDec = 0.2;

distance = 0;

xTarget = xstart;
yTarget = ystart;
pathDir = 0;
timePassed = 0;
waitDuration = 60;
wait = 0;

//Set Item Drop Value
drop = 0

//State Scripts
enemyScript[states.IDLE] = -1;
enemyScript[states.WANDER] = -1;
enemyScript[states.MOVE] = -1;
enemyScript[states.ATTACK] = -1;
enemyScript[states.DEAD] = -1;

//Sprites
sEWalkU = 0;
sEWalkL = 0;
sEWalkR = 0;
sEWalkD = 0;