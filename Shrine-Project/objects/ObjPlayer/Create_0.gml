//Movement
image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 1.5;

//Sprites
sPlayerL = SprPlayerL;
sPlayerR = SprPlayerR;
sPlayerU = SprPlayerU;
sPlayerD = SprPlayerD;

//Consumables
global.playerHealth = 10;
global.stockR = 20;
global.keysHeld = 0;

//Cooldowns
global.cooldownH = false;
cooldownM = false;
cooldownR = false;

//Power Ups
global.attackUp = false;
global.defenceUp = false;

global.enemiesLeft = 0;


//Controller
gamepad_set_axis_deadzone(0,0.5);