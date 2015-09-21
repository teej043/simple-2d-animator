if ( global.frameCurrent > 1 ){
    nodeDataSave(global.frameCurrent);
    global.frameCurrent -= 1;
    nodeDataLoad(global.frameCurrent);
}
