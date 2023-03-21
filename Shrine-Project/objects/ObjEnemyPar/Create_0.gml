//Start In Idle State
//state = states.IDLE
//eState = EnemyStateIdle;

kbDir = 0;
kbSpeed = 0;
kbMaxSpeed = 6;
kbDec = 0.2;

distance = 0;

xTarget = xstart;
yTarget = ystart;

//Set Item Drop Value
drop = 0

//Sprites
sEWalkU = 0;
sEWalkL = 0;
sEWalkR = 0;
sEWalkD = 0;

facing = 0;
attacking = false
hurt = false;

//Grab & Throw
lifted = false;
thrown = false;
z = 0;
destructable = false;
entityThrowDis = 128;