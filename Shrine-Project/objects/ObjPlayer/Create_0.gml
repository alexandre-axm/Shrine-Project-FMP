event_inherited();

state = PlayerStateFree;

//Movement
image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2.25;
stopMove = false;
facing = 0;
holding = false;

z = 0;

//Sprites
//Walk
sPlayerL = SprPlayerL;
sPlayerR = SprPlayerR;
sPlayerU = SprPlayerU;
sPlayerD = SprPlayerD;

//Melee Attack
sMAttackL = SprMAttackL;
sMAttackR = SprMAttackR;
sMAttackU = SprMAttackU;
sMAttackD = SprMAttackD;

//Ranged Attack
sRAttackL = SprRAttackL;
sRAttackR = SprRAttackR;
sRAttackU = SprRAttackU;
sRAttackD = SprRAttackD;

//Grab
sGrabL = SprGrabL;
sGrabR = SprGrabR;
sGrabU = SprGrabU;
sGrabD = SprGrabD;

//Throw
sThrowL = SprThrowL;
sThrowR = SprThrowR;
sThrowU = SprThrowU;
sThrowD = SprThrowD;

//Consumables
global.playerHealth = 10;
global.playerHealthMax = 10;
global.stockR = 20;
global.keysHeld = 0;

//Cooldowns
global.cooldownH = false;
cooldownM = false;
cooldownR = false;

//Knockback
kbDir = 0;
kbSpeed = 0;
kbMaxSpeed = 5;
kbDec = 0.2;

//Power Ups
global.attackUp = false;
global.defenceUp = false;

global.enemiesLeft = 0;

//Controller
gamepad_set_axis_deadzone(0,0.5);