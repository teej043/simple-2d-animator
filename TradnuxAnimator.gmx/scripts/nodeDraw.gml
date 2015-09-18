var wx,wy,xx,yy,width,length,frame,parX,parY;
wx = window_view_mouse_get_x(0);
wy = window_view_mouse_get_y(0);
frame = global.frameCurrent-1;

xx = x;
yy = y;
width = 5;

if !data[? "core"]{
    parX = data[? "parent"].x;
    parY = data[? "parent"].y;
}else{
    parX = x;
    parY = y;
}

draw_circle(xx, yy, width, 1);

if selected{
    draw_circle(xx, yy, width, 0);
}

if drag{
    draw_circle_colour(xx, yy, width, c_yellow, c_yellow, 1);
}

if (wx > x-5 and wx < x+5){
    if (wy > y-5 and wy < y+5){
        draw_circle_colour(xx, yy, width, c_aqua, c_aqua, 0);
    }
}

if !data[? "core"]{
    draw_line_width(xx, yy, parX, parY, width);
}
