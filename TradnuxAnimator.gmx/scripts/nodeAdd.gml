with(objNode){
    if selected{
        var obj;
        obj = instance_create( x + len*cos(degtorad(rot)), y - len*sin(degtorad(rot)), objNode);
        childCount+=1;
        
        ds_list_add(children, obj);
        data[? "childCount"] = ds_list_size(children);  
        
        with(obj){
            var frame;
            frame = global.frameCurrent-1;
            x = other.X[| frame] + other.len[| frame]*cos(degtorad(other.rot[| frame]));
            y = other.Y[| frame] - other.len[| frame]*sin(degtorad(other.rot[| frame]));
            //X = x;
            //Y = y;
            for(i=0; i<=global.frameCount-1; i+=1){
                ds_list_add(X, other.x + other.len[| i] * cos(degtorad( other.rot[| i])) );
                ds_list_add(Y, other.y - other.len[| i] * sin(degtorad( other.rot[| i])) );
                ds_list_add(rot, other.rot[| i]);
                ds_list_add(len, other.len[| i]);
                ds_list_add(wid, other.wid[| i]);
                
                show_message(ds_list_find_value(X,i));
                show_message(ds_list_find_value(Y,i));
                show_message(ds_list_find_value(rot,i));
                show_message(ds_list_find_value(len,i));
                show_message(ds_list_find_value(wid,i));
            }
            
            /*
            core = false;
            parent = other.id;
            childNth = other.childCount;
            generation = other.generation;
            childCount = 0;
            */
            
            
            
            data[? "core"] = false;
            data[? "parent"] = other.id;
            data[? "childNth"] = ds_list_size(other.children);
            data[? "generation"] = ds_map_find_value(other.data,"generation")+1;
            data[? "childCount"] = 0;
            data[? "rotStart"] = 0;
            
            if ( data[? "generation"] > global.generationCount ){
                global.generationCount += 1;
            }
        }
    }
}
