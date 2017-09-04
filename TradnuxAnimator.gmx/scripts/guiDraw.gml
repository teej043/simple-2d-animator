
var y1, y2;
y1 = 10;
y2 = y1+(8*20);

draw_set_color(c_black);

draw_text(10,y1+0, string(window_view_mouse_get_x(0) )+','+string(window_view_mouse_get_y(0)));
draw_text(10,y1+20, string(mouse_x)+','+string(mouse_y));
draw_text(10,y1+40,"Current Frame: "+string(global.frameCurrent));
draw_text(10,y1+60,"Total Frames: "+string(global.frameCount));
draw_text(10,y1+80,"Generations: "+string(global.generationCount));
draw_text(10,y1+100,"Rotation Drag Start: "+string(global.dragRotStart));
draw_text(10,y1+120,"Rotation Drag Stop: "+string(global.dragRotStop));


if (global.selectedNode != noone){
    draw_text(10,y2-20,"listsize: "+string(ds_list_size(global.selectedNode.X)));
    draw_text(10,y2+0,"id: "+string(global.selectedNode.id));
    draw_text(10,y2+20,"id: "+string(global.selectedNode.data[? "name"]));
    draw_text(10,y2+40,"parent: "+string(global.selectedNode.data[? "parent"]));
    draw_text(10,y2+60,"isCore: "+string(global.selectedNode.data[? "core"]));
    draw_text(10,y2+80,"childNth: "+string(global.selectedNode.data[? "childNth"]));
    draw_text(10,y2+100,"generation: "+string(global.selectedNode.data[? "generation"]));
    draw_text(10,y2+120,"X: "+string(global.selectedNode.X[| 0]));
    draw_text(10,y2+140,"Y: "+string(global.selectedNode.Y[| 0]));
    draw_text(10,y2+160,"rot: "+string(global.selectedNode.rot[| 0]));
    draw_text(10,y2+180,"len: "+string(global.selectedNode.len[| 0]));
    draw_text(10,y2+200,"wid: "+string(global.selectedNode.wid[| 0]));
    draw_text(10,y2+220,"rotStart: "+string(global.selectedNode.rotStart));
    draw_text(10,y2+240,"children: "+string(global.selectedNode.data[? "childCount"]) );
    for(i=0; i<= global.selectedNode.data[? "childCount"]-1; i+=1){
        draw_text(20,(y2+260)+(i*20),string(ds_list_find_value(global.selectedNode.children,i)));
    }
}


