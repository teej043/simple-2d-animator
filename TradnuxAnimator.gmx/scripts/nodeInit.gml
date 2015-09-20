xPos = 0;
yPos = 0;
rotation = 0;
length = 30;
width = 5;

<<<<<<< HEAD
=======
shape = 0;
shapeFill = c_black;

v1x = ds_list_create();
v1y = ds_list_create();
v2x = ds_list_create();
v2y = ds_list_create();
v3x = ds_list_create();
v3y = ds_list_create();
v4x = ds_list_create();
v4y = ds_list_create();
v5x = ds_list_create();
v5y = ds_list_create();
v6x = ds_list_create();
v6y = ds_list_create();
v7x = ds_list_create();
v7y = ds_list_create();
v8x = ds_list_create();
v8y = ds_list_create();

>>>>>>> add vertices feature
rotStart = 0;
rotStartDrag = 0;
xOffset = 0;
yOffset = 0;

selected = false;
drag = false;

data = ds_map_create();
ds_map_add(data,"name", "");
ds_map_add(data,"core",false);
ds_map_add(data,"parent",noone);
ds_map_add(data,"childNth",1);
ds_map_add(data,"generation",0);
ds_map_add(data,"childCount",0);
ds_map_add(data,"rotStart",0);

children = ds_list_create();
X = ds_list_create();
Y = ds_list_create();
rot = ds_list_create();
len = ds_list_create();
wid = ds_list_create();
