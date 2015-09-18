xPos = 0;
yPos = 0;
rotation = 0;
length = 10;
width = 5;

/*
name = "";
core = false;
parent = noone; 
childNth = 1;
generation = 0;
childCount = 0;
children = 0;
*/

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
