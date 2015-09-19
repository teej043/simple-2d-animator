var wx, wy, par, isCore, pxw;
par = data[? "parent"];
wx = window_view_mouse_get_x(0);
wy = window_view_mouse_get_y(0);
isCore = data[? "core"];
pxw = 7;

//make sure our mouse pointer is inside the node instance
if (wx > x-pxw and wx < x+pxw){
    if (wy > y-pxw and wy < y+pxw){
        
        //if user clicked on the node
        if mouse_check_button_pressed(mb_left){
            
            //flag all node instances as not selected and not dragged 
            objNode.selected = false;
            objNode.drag = false;
            
            //however this current instance will re-selected
            selected = true;
            global.selectedNode = id;
            
            //inform its children that they are ready for manipulations
            nodeDragChildren();
            
            //flag this instance to be ready for dragging
            drag = true;
            xOffset = wx - x;
            yOffset = wy - y;

            if !data[? "core"]{
                rotation = point_direction(par.x, par.y,x,y);
                global.dragRotStart = rotation;  
            }else{
                global.dragRotStart = 0;  
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
    if isCore{
        if selected{
            x = wx - xOffset;
            y = wy - yOffset;
            global.dragRotStop = 0;
        } 
    } 
    else{
        if selected {
            
            length = point_distance(par.x, par.y, x, y);
            rotation = point_direction(par.x, par.y, x, y);
            x = wx - xOffset;
            y = wy - yOffset;
            global.dragRotStop = rotation;

        }
        else{
            x = par.x + length * cos(degtorad(rotation));
            y = par.y - length * sin(degtorad(rotation));
            rotation = global.dragRotStop - global.dragRotStart + rotStart;
        }
    }
}
else{
    
}
