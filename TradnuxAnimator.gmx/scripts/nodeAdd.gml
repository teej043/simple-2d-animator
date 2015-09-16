with(objNode){
    if selected{
        var obj;
        obj = instance_create( x + len*cos(degtorad(rot)), y - len*sin(degtorad(rot)), objNode);
        children[childCount] = obj;
        childCount+=1;   
        with(obj){
            X = x;
            Y = y;
            core = false;
            rot = other.rot;
            len = other.len;
            wid = other.wid;
            parent = other.id;
            generation = other.generation;
            childCount = 0;
            children = 0;
            childNth = other.childCount;
            
        }
    }
}
