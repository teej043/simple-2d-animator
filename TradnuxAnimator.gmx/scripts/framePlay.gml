if global.playBack
{
    alarm[0] = global.playBackAlarm;
    global.frameCurrent += 1;
    
    //loop animation
    if global.frameCurrent > global.frameCount
    {
        global.frameCurrent = 1;
    }

    nodeDataLoad(global.frameCurrent);
}
