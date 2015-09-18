if ( global.frameCurrent > 1 ){
    nodeDataSave(global.frameCurrent,false);
    global.frameCurrent -= 1;
    nodeDataLoad(global.frameCurrent);
}
