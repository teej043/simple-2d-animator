with(objNode){
  if (selected && (id == global.selectedNode)) {
    //nodeChildrenDelete();
    
    //var par = data[? "childCount"];
    data[? "parent"].selected = true;
    global.selectedNode = data[? "parent"];
    nodeChildrenDelete();
    
  }
}


/*

{
    if (objCtrl.playback_on = 1) or (objCtrl.record_on = 1) exit;

    if (objCtrl.selected_point.object_index = objCore) and (instance_number(objCore) < 2) exit;
 
    //var old;
    //old = pointsTot;

    with objCtrl.selected_point
    {
        nodeChildrenDelete();

        my_parent.child_exists[my_rank] = 0;
        objCtrl.selected_point = my_parent;
        my_parent.am_selected = 1;
        my_parent.child_true_count -= 1;
        
        
        
        
        objCtrl.nrank=1;
        for (i = 1; i <= my_parent.child_count; i += 1)
        {
            if (my_parent.child_exists[i] = 1)
            {
                with my_parent.child[i]
                {
                    my_rank = objCtrl.nrank;   
                    
                }
                objCtrl.nrank+=1;
            }
        }
        
        with objPoint {my_parent_rank = my_parent.my_rank}
        //with my_outline instance_destroy();
        instance_destroy();
    }
    
    //scrDepthDefrag();
    //show_message("there was "+string(old)+" points, but now there are "+string(pointsTot)+" left.");
}

*/
