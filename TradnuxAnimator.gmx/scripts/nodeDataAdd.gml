with objNode
{
    var isCore, parent;
    
    isCore = data[? "core"];
    parent = data[? "parent"];

    if data[? "core"]{
        ds_list_add(X,x);
        ds_list_add(Y,y);
    }else{
        ds_list_add(X,x);
        ds_list_add(Y,y);
        ds_list_add(rot,point_direction(parent.x, parent.y, x, y));
        ds_list_add(len,point_distance(parent.x, parent.y, x, y));
        ds_list_add(wid,width);
    }
}
