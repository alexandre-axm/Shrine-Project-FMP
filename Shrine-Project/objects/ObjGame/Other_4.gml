//set grid / tile size
#macro TS 32

//get tiles in room
var _w = ceil(room_width / TS);
var _h = ceil(room_height / TS);

//create motion plan grid
global.mpGrid = mp_grid_create(0, 0, _w, _h, TS, TS);

//add solid instances to grid
mp_grid_add_instances(global.mpGrid, ObjGridPar, true);
mp_grid_add_instances(global.mpGrid, ObjGrabPar, true);

//Refresh Grid
alarm_set(0,30);