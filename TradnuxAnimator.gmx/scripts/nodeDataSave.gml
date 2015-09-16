with objCore
{
    X[argument0] = x;
    Y[argument0] = y;
}

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
