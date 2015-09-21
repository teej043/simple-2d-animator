if ( global.frameCurrent < global.frameCount ){
    nodeDataSave(global.frameCurrent);
    global.frameCurrent += 1;
    nodeDataLoad(global.frameCurrent);
}
