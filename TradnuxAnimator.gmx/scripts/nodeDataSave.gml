var frame,isAppend;
frame = argument0-1;
isAppend = argument1;
parent = data[? "parent"];

with objNode
{
    if isAppend{
        if data[? "core"]{
            ds_list_add(X,x);
            ds_list_add(Y,y);
        }else{
            ds_list_add(X,x);
            ds_list_add(Y,y);
            ds_list_add(rot, point_direction(parent.x, parent.y, x, y));
            ds_list_add(len, point_distance(parent.x, parent.y, x, y));
            ds_list_add(wid, width);
        }
    }
}


/*
for (i = 1; i <= objCtrl.generation_count; i += 1)
{
    with objPoint
    {
        if (my_generation = i)
        {
            angle[argument0] = point_direction(my_parent.x,my_parent.y,x,y);
            length[argument0] = point_distance(my_parent.x,my_parent.y,x,y);
        }
    }    
}
*/
