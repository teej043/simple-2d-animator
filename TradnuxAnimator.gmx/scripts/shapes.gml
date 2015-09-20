var f, par;
f = argument0;
par = data[? "parent"];

if (shape == 0){
    
    var x1,y1,x2,y2,x3,y3,x4,y4;
    
    x1[f] = par.x + (wid[| f]/2)*cos(degtorad(rot[| f] - 90));
    y1[f] = par.y - (wid[| f]/2)*sin(degtorad(rot[| f] - 90));

    x2[f] = par.x + (wid[| f]/2)*cos(degtorad(rot[| f] + 90));
    y2[f] = par.y - (wid[| f]/2)*sin(degtorad(rot[| f] + 90));

    x3[f] = x + (wid[| f]/2)*cos(degtorad(rot[| f] + 90));
    y3[f] = y - (wid[| f]/2)*sin(degtorad(rot[| f] + 90));

    x4[f] = x + (wid[| f]/2)*cos(degtorad(rot[| f] - 90));
    y4[f] = y - (wid[| f]/2)*sin(degtorad(rot[| f] - 90));
}
