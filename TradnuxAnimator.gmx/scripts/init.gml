/*-- Tradnux Animator --*/


global.dragRotStart = 0;
global.dragRotStop = 0;
global.selectedNode = noone;

global.frameCount = 1;
global.frameCurrent = 1;
global.playBack = 0;
global.playBackAlarm = 1;
global.playBackAlarmMin = 1;
global.playBackAlarmMax = room_speed;

global.generationCount = 0;
global.cores = ds_list_create();

obj = instance_create(room_width/2,room_height/2,objNode);



with(obj){    
    selected = false;
    rotStart = 0;
    
    data[? "core"] = true;
    data[? "name"] = "core1";
    
    
    ds_map_add(data,"parent", noone);
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
ds_list_add(global.cores,obj);

str = "";
