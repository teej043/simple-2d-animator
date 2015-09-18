if ( global.frameCurrent < global.frameCount ){
    nodeDataSave(global.frameCurrent,false);
    global.frameCurrent += 1;
    nodeDataLoad(global.frameCurrent);
}
