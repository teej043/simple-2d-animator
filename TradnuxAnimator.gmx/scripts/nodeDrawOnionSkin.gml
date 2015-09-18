var xx, yy, width, frame, skins, parX, parY, n;
frame = global.frameCurrent-1;
skins = 1;
width = 5;


for( i=1; i<=skins; i+=1 ){
    n = frame - i;
    xx = X[| n];
    yy = Y[| n];
    parX = data[? "parent"].X[| n];
    parY = data[? "parent"].Y[| n];
    draw_line_width(xx, yy, parX, parY, width);
}

/*
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
*/
