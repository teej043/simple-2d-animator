with objNode
{
<<<<<<< HEAD
    var frame, isCore;
    frame = argument0-1;
=======
    
    
>>>>>>> bb028f4c927a855acfc305b215566bb7fc6dd3f2
    isCore = data[? "core"];
    //parent = data[? "parent"];

    //load records
    if data[? "core"]{
        x = X[| frame];
        y = Y[| frame];
        rotation = rot[| frame];
        length = len[| frame];
        width = wid[| frame];
        shapeRemold(frame);
    }else{
        x = X[| frame];
        y = Y[| frame];
        rotation = rot[| frame];
        length = len[| frame];
        width = wid[| frame];
        
        shapeRemold(frame);
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
