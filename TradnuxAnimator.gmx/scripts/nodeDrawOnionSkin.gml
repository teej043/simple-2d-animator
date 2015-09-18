var xx, yy, width, frameN, skins, maxSkins, parX, parY, n, isCore;
frameN = global.frameCurrent-1;
skins = 3;
width = 5;
maxSkins = 3;
isCore = data[? "core"];

//maximum onion skin is 3
if ( frameN < (maxSkins-1) ){
    skins = frameN;
}


for( i=skins; i>=0; i-=1 ){
    draw_set_alpha(0.4 - (i/10));
    
    n = frameN - i;
    xx = X[| n];
    yy = Y[| n];
    if isCore{
        parX = xx;
        parY = yy;
    }
    else{
        parX = data[? "parent"].X[| n];
        parY = data[? "parent"].Y[| n];
    }
    draw_line_width(xx, yy, parX, parY, width);
    
    draw_set_alpha(1);
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
