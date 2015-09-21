if global.playBack exit;
if (global.frameCurrent == 1) exit;

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
