nodeDataSave(global.frameCurrent);

with(objNode){
    if selected{
        var obj;
        obj = instance_create( x + length*cos(degtorad(rotation)), y - length*sin(degtorad(rotation)), objNode);
        data[? "childCount"]+=1;
        
        ds_list_add(children, obj);
        data[? "childCount"] = ds_list_size(children);  
        
        with(obj){
            var frame,gen,parNth,nth,par;
            par = other.id;
            frame = global.frameCurrent-1;
            
            //lets use local variables first, then save them as data later during frame management operations

            rotation = other.rotation;
            length = other.length;
            width = other.width;
            
            gen = ds_map_find_value(other.data,"generation")+1;
            nth = ds_list_size(other.children);
            parNth = ds_map_find_value(other.data,"childNth");
             
            data[? "core"] = 0;
            data[? "parent"] = other.id;
            data[? "childNth"] = nth;
            data[? "generation"] = gen;
            data[? "childCount"] = 0;
            data[? "rotStart"] = 0;
            
            
            if ( data[? "generation"] > global.generationCount ){
                global.generationCount += 1;
            }
            
            data[? "name"] = "node-"+string(gen)+"-"+string(parNth)+"-"+string(nth);
            
            for(i=0;i<=global.frameCount-1;i+=1){
                var xx,yy,parX,parY;
                parX = par.X[| i];
                parY = par.Y[| i];
                xx = parX + par.len[| i]*cos(degtorad(par.rot[| i]));
                yy = parY - par.len[| i]*sin(degtorad(par.rot[| i]));
                ds_list_add(X, xx);
                ds_list_add(Y, yy);
                ds_list_add(rot, point_direction(parX, parY, xx, yy));
                ds_list_add(len, point_distance(parX, parY, xx, yy));
                ds_list_add(wid, width);
            }
        }
    }
}
