var xpos = argument0;                                       //Get the x position to center the view on
var ypos = argument1;                                       //Get the y position to center the view on

view_xview[0] = xpos - (view_wview[0] / 2);                 //Center the view based on the width and height
view_yview[0] = ypos - (view_hview[0] / 2);

if argument2                                                                    //Limit the view?
{
//Keep view width and height inside the room size
if view_wview[0] > room_width                                                   //Check to see if the new width is outside the room
    {
    view_wview[0] = room_width;                                                 //Set the width to the room
    view_hview[0] = view_wview[0] / (view_wport[0] / view_hport[0]);            //Set the height proportionally
    view_xview[0] = 0;                                                          //Set the position
    }
if view_hview[0] > room_height                                                  //Check to see if the new height is outside the room
    {
    view_hview[0] = room_height                                                 //Set the height to the room
    view_wview[0] = view_hview[0] * (view_wport[0] / view_hport[0]);            //Set the width proportionally
    view_yview[0] = 0;                                                          //Set the position
    if view_wview[0] > room_width                                               //An extra check to ensure that the view is always inside the room
        {
        view_wview[0] = room_width;
        view_hview[0] = view_wview[0] / (view_wport[0] / view_hport[0]);
        view_xview[0] = 0;
        }
    }
//Keep the view position within the room
if view_xview[0] < 0                                                            //Check the x position on the left
    {
    view_xview[0] = 0;
    }
else
    {
    if view_xview[0] + view_wview[0] > room_width                               //Check the x position on the right
        {
        view_xview[0] = room_width - view_wview[0];
        }
    }
if view_yview[0] < 0                                                            //Check the y position on the top
    {
    view_yview[0] = 0;
    }
else
    {
    if view_yview[0] + view_hview[0] > room_height                              //Check the y position on the bottom
        {
        view_yview[0] = room_height - view_hview[0];
        }
    }
}
