global.dragRotStart = 0;
global.dragRotStop = 0;
global.selectedNode = noone;

global.frameCount = 1;
global.frameCurrent = 1;

global.generationCount = 0;

obj = instance_create(room_width/2,room_height/2,objNode);

with(obj){
    core = true;
    parent = noone;
    childCount = 0;
    childNth = 0;
    generation = 0;
    selected = false;
    rotStart = 0;
    
    data[? "core"] = true;
    ds_map_add(data,"parent",noone);
    ds_map_add(data,"childNth",1);
    ds_map_add(data,"generation",0);
    ds_map_add(data,"childCount",0);
    ds_map_add(data,"rotStart",0);
    
    ds_list_add(X,x);
    ds_list_add(Y,y);
    ds_list_add(rot,0);
    ds_list_add(len,30);
    ds_list_add(wid,5);
}

global.selectedNode = obj;
