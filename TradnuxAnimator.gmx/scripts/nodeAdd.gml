nodeDataSave(global.frameCurrent-1,0);

with(objNode){
    if selected{
        var obj;
        obj = instance_create( x + length*cos(degtorad(rotation)), y - length*sin(degtorad(rotation)), objNode);
        data[? "childCount"]+=1;
        
        ds_list_add(children, obj);
        data[? "childCount"] = ds_list_size(children);  
    
        with(obj){
            var frame,gen,parNth,nth;
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
                if data[? "core"]{
                    ds_list_add(X,x);
                    ds_list_add(Y,y);
                    ds_list_add(rot,0);
                    ds_list_add(len,30);
                    ds_list_add(wid,10);
                }
                else{
                    ds_list_add(rot,point_direction(data[? "parent"].x,data[? "parent"].y,x,y));
                    ds_list_add(len,point_distance(data[? "parent"].x,data[? "parent"].y,x,y));
                    ds_list_add(wid,data[? "parent"].wid[| i]);
                }
                
                shapeRemold(frame);
            }
        }
    }
}
