var wx, wy, par, frame, isCore;
par = data[? "parent"];
wx = window_view_mouse_get_x(0);
wy = window_view_mouse_get_y(0);
frame = global.frameCurrent-1;
isCore = data[? "core"];

if (wx > x-5 and wx < x+5){
    if (wy > y-5 and wy < y+5){
        if mouse_check_button_pressed(mb_left){
            objNode.selected = false;
            objNode.drag = false;
     
            selected = true;
            global.selectedNode = id;
            
            nodeDragChildren();
            
            drag = true;
            xOffset = wx - x;
            yOffset = wy - y;

            if !core{
                rot[| frame] = point_direction(par.x, par.y,x,y);
                global.dragRotStart = rot[| frame];  
            }else{
                //rot[| frame] = point_direction(par.x, par.y,x,y);
                //global.dragRotStart = rot[| frame];  
            }
            
            
        }
        
        
        if mouse_check_button(mb_left){
            if selected{

            }
        }else{
            drag = false;
        }
        
        
        if mouse_check_button_released(mb_left){
            if !drag drag = false;
            
        }
        
    }
}

if drag and mouse_check_button(mb_left){
    if (selected and isCore){
        x = wx - xOffset;
        y = wy - yOffset;
        X[| frame] = x;
        Y[| frame] = y; 
    } 
    else{
        if selected {
            len[| frame] = point_distance(par.x, par.y, x, y);
            rot[| frame] = point_direction(par.x, par.y, x, y);
            x = wx - xOffset;
            y = wy - yOffset;
            X[| frame] = x;
            Y[| frame] = y; 
            global.dragRotStop = rot[| frame];
        }
        else{
            //len[| frame] = point_distance(par.x, par.y, x, y);
            //rot[| frame] = point_direction(par.x, par.y, x, y);
            //global.dragRotStop = rot[| frame];
            x = par.x + len[| frame] * cos(degtorad(rot[| frame]));
            y = par.y - len[| frame] * sin(degtorad(rot[| frame]));
            X[| frame] = x;
            Y[| frame] = y; 
            rot[| frame] = global.dragRotStop - global.dragRotStart + rotStart;
        }
        


        //scrVerticesReform(objCtrl.frameCur);
        
    }
}else{
    
}
