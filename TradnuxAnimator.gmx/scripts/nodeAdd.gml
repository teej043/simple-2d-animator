with(objNode){
    if selected{
        var obj;
        show_message(length);
        obj = instance_create( x + length*cos(degtorad(rotation)), y - length*sin(degtorad(rotation)), objNode);
        data[? "childCount"]+=1;
        
        ds_list_add(children, obj);
        data[? "childCount"] = ds_list_size(children);  
        
        with(obj){
            var frame,gen,parNth,nth;
            frame = global.frameCurrent-1;
            
            /*
            x = other.X[| frame] + other.len[| frame]*cos(degtorad(other.rot[| frame]));
            y = other.Y[| frame] - other.len[| frame]*sin(degtorad(other.rot[| frame]));
            */
            
            //lets use local variables first, then save them as data later during frame management operations

            rotation = other.rotation;
            length = other.length;
            width = other.width;
            
            gen = ds_map_find_value(other.data,"generation")+1;
            nth = ds_list_size(other.children);
            parNth = ds_map_find_value(other.data,"childNth");
            //X = x;
            //Y = y;
            
            /*
            for(i=0; i<=global.frameCount-1; i+=1){
                ds_list_add(X, other.x + other.len[| i] * cos(degtorad( other.rot[| i])) );
                ds_list_add(Y, other.y - other.len[| i] * sin(degtorad( other.rot[| i])) );
                ds_list_add(rot, other.rot[| i]);
                ds_list_add(len, other.len[| i]);
                ds_list_add(wid, other.wid[| i]);
            }
            */
             
            data[? "core"] = 0;
            data[? "parent"] = other.id;
            data[? "childNth"] = nth;
            data[? "generation"] = gen;
            data[? "childCount"] = 0;
            data[? "rotStart"] = 0;
            
            //show_message(data[? "core"]);
            
            if ( data[? "generation"] > global.generationCount ){
                global.generationCount += 1;
            }
            
            data[? "name"] = "node-"+string(gen)+"-"+string(parNth)+"-"+string(nth);
        }
    }
}
