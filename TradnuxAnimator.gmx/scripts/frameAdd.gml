//Appends a new frame to the timeline

//Before we add a frame, we need to record local data of current frame to data structures.
with (objNode){
    var isCore,len,rot,wid,xx,yy,frame;
    frame = global.frameCurrent;
    isCore = data[? "core"];
    xx = X[| frame];
    yy = Y[| frame];
    len = len[| frame];
    rot = rot[| frame];
    wid = wid[| frame];
}

//Increment total number of frames by one, then assign new frame as current.
global.frameCount +=1;
global.frameCurrent = global.frameCount;
