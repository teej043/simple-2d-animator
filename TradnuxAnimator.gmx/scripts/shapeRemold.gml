var f, par, isCore;
f = argument0;
par = data[? "parent"];
isCore = data[? "core"];

if isCore exit;

if (shape == 0){
    
/*
    v1x[f] = par.x + (wid[| f]/2)*cos(degtorad(rot[| f] - 90));
    v1y[f] = par.y - (wid[| f]/2)*sin(degtorad(rot[| f] - 90));

    v2x[f] = par.x + (wid[| f]/2)*cos(degtorad(rot[| f] + 90));
    v2y[f] = par.y - (wid[| f]/2)*sin(degtorad(rot[| f] + 90));

    v3x[f] = x + (wid[| f]/2)*cos(degtorad(rot[| f] + 90));
    v3y[f] = y - (wid[| f]/2)*sin(degtorad(rot[| f] + 90));

    v4x[f] = x + (wid[| f]/2)*cos(degtorad(rot[| f] - 90));
    v4y[f] = y - (wid[| f]/2)*sin(degtorad(rot[| f] - 90));
*/


    v1x[| f] = par.x + (width/2)*cos(degtorad(rotation - 90));
    v1y[| f] = par.y - (width/2)*sin(degtorad(rotation - 90));

    v2x[| f] = par.x + (width/2)*cos(degtorad(rotation + 90));
    v2y[| f] = par.y - (width/2)*sin(degtorad(rotation + 90));

    v3x[| f] = x + (width/2)*cos(degtorad(rotation + 90));
    v3y[| f] = y - (width/2)*sin(degtorad(rotation + 90));

    v4x[| f] = x + (width/2)*cos(degtorad(rotation - 90));
    v4y[| f] = y - (width/2)*sin(degtorad(rotation - 90));
    

}
