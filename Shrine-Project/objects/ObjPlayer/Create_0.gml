state = PlayerStateFree;

//Movement
image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2;
stopMove = false;
facing = 0;

//Sprites
sPlayerL = SprPlayerL;
sPlayerR = SprPlayerR;
sPlayerU = SprPlayerU;
sPlayerD = SprPlayerD;

sMAttackL = SprMAttackL;
sMAttackR = SprMAttackR;
sMAttackU = SprMAttackU;
sMAttackD = SprMAttackD;

//Consumables
global.playerHealth = 10;
global.stockR = 20;
global.keysHeld = 0;

//Cooldowns
global.cooldownH = false;
cooldownM = false;
cooldownR = false;

kbDir = 0;
kbSpeed = 0;
kbMaxSpeed = 4;
kbDec = 0.2;

//Power Ups
global.attackUp = false;
global.defenceUp = false;

global.enemiesLeft = 0;


//Controller
gamepad_set_axis_deadzone(0,0.5);