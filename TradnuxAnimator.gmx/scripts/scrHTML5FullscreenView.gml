//argument0 = base size for the view.

//Set the view port to the screen size
view_wport[0] = browser_width;
view_hport[0] = browser_height;

//Set the canvas
window_set_size(browser_width, browser_height);
window_center();

//get the new aspect ratio
var aspect = browser_width / browser_height;

//Set the view accordingly
if aspect < 1
    {
    view_hview[0] = argument0;
    view_wview[0] = argument0 * aspect;
    }
else
    {
    view_hview[0] = argument0 / aspect;
    view_wview[0] = argument0;
    }
