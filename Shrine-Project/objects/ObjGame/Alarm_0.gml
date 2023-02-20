//Clear existing grid
mp_grid_clear_all(global.mpGrid);

var _w = ceil(room_width / TS);
var _h = ceil(room_height / TS);

//Create New Grid
global.mpGrid = mp_grid_create(0, 0, _w, _h, TS, TS);

//add solid instances to grid
mp_grid_add_instances(global.mpGrid, ObjWall, true);
mp_grid_add_instances(global.mpGrid, ObjDoor, true);
mp_grid_add_instances(global.mpGrid, ObjBox, true);
mp_grid_add_instances(global.mpGrid, ObjBarrier, true);
mp_grid_add_instances(global.mpGrid, ObjAiGuide, true);

alarm_set(0,30);