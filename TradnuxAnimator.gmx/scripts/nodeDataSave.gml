
with objNode
{
    var frame, isCore, parent;
    frame = argument0-1;
    isCore = data[? "core"];
    parent = data[? "parent"];
<<<<<<< HEAD

    //we just overwrite new data
    if data[? "core"]{
        X[| frame] = x;
        Y[| frame] = y;
    }else{
        X[| frame] = x;
        Y[| frame] = y;
        rot[| frame] = point_direction(parent.x, parent.y, x, y);
        len[| frame] = point_distance(parent.x, parent.y, x, y);
        wid[| frame] = width;
=======
    
    
    if isAppend{
        //add new records
        if data[? "core"]{
            ds_list_add(X,x);
            ds_list_add(Y,y);
            ds_list_add(rot, rotation);
            ds_list_add(len, length);
            ds_list_add(wid, width);
        }else{
            ds_list_add(X,x);
            ds_list_add(Y,y);
            ds_list_add(rot, point_direction(parent.x, parent.y, x, y));
            ds_list_add(len, point_distance(parent.x, parent.y, x, y));
            ds_list_add(wid, width);
            
            shapeRemold(frame);
        }
    }else{
        //we just overwrite new data
        if data[? "core"]{
            X[| frame] = x;
            Y[| frame] = y;
        }else{
            X[| frame] = x;
            Y[| frame] = y;
            rot[| frame] = point_direction(parent.x, parent.y, x, y);
            len[| frame] = point_distance(parent.x, parent.y, x, y);
            wid[| frame] = width;
            
            shapeRemold(frame);
        }
>>>>>>> add vertices feature
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
