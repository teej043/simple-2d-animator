var childnum;
childnum = ds_list_size(children);
for (i = 0; i <= childnum-1; i += 1){
    with children[| i]{
        var par;
        par = data[? "parent"];
        drag = true;
        xOffset = window_view_mouse_get_x(0) - x;
        yOffset = window_view_mouse_get_y(0) - y;
        rotStart = point_direction(par.x,par.y,x,y);

        if (childnum > 0) nodeChildrenDrag();
    }
}
