var xx,yy,cores,core,childN;
cores = global.cores;
coreNum = ds_list_size(cores);
if (!ds_list_empty(cores)) exit;

xx = room_width - 10;
yy = 10;
core = noone;

for(i=0; i<=coreNum-1; i++){
    core = cores[| i];
    childN = ds_list_size(core.children);
    str += string(guiDrawNodeTreeChildren(core.children)) + '\n';
}

draw_text(xx,yy,str);


instance_number(objNode);
instance_find(obj,n);
