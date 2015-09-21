var xx,yy,obj,name;
xx = (room_width)-10;
yy = 30; 
if instance_number(objNode) <= 0 exit;

draw_set_halign(fa_right);

for (i=0;i<=instance_number(objNode)-1;i++){
    obj = instance_find(objNode,i);
    name = obj.data[? "name"]; 
    draw_text(xx,yy+(20*i),string(name));
}

draw_set_halign(0);
