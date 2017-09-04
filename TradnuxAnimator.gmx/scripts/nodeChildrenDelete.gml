var childnum;
childnum = ds_list_size(children);
for (i = 0; i <= childnum-1; i += 1){
    with children[| i]{
    
        if (childnum > 0) nodeChildrenDelete();
        
        
    }
}
instance_destroy();

