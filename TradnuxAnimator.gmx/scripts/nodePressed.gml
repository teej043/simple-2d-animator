var wx, wy;
wx = window_view_mouse_get_x(0);
wy = window_view_mouse_get_y(0);

if (wx > x-5 and wx < x+5){
    if (wy > y-5 and wy < y+5){
        objNode.selected = false;
        selected = true;
        show_message('selected');
    }
}
