//Appends a new frame to the timeline

//Before we add a frame, we need to record local data of current frame to data structures.
nodeDataSave( global.frameCurrent, true);

//Increment total number of frames by one, then assign new frame as current.
global.frameCount +=1;
global.frameCurrent = global.frameCount;

with(objNode){
    shapeRemold(global.frameCount-1);
}
