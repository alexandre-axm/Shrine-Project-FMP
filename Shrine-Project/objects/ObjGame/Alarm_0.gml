//Clear existing grid
mp_grid_clear_all(global.mpGrid);

var _w = ceil(room_width / TS);
var _h = ceil(room_height / TS);

//Create New Grid
global.mpGrid = mp_grid_create(0, 0, _w, _h, TS, TS);

//add solid instances to grid
mp_grid_add_instances(global.mpGrid, ObjGridPar, true);
mp_grid_add_instances(global.mpGrid, ObjGrabPar, true);
mp_grid_add_instances(global.mpGrid, ObjAiGuide, true);

//Refresh Grid
alarm_set(0,30);