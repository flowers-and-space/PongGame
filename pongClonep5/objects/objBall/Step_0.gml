/// @description bounce and reset

//this takes care of the ball bouncing off the ceiling and floor and room
if (y <= sprite_height/2 || y >= room_height-(sprite_height/2))		// || os the same as OR
{
	vspeed *= -1;
}

//Check if player scored
if (x <= 0) || (x >= 1024)		//0 is the left side of screen. 1024 is right side if the screen
{
	// which player scored
	if (x >= 1024)
	global.player1_score += 1;
	else
	global.player2_score += 1;


	//check if winning score is reached, if so show new room(win message)
	if (global.player1_score = 4)	//change this number to ten after testing
	{
		room_goto(rmP1Win)
	}
	
	if (global.player2_score = 4)	//change this number to ten after testing
	{
		room_goto(rmP2Win)
	} 
}

//This takes care of resetting after the ball goes past the paddle on each side
if (x <= 0  || x >= room_width)
{
	x = xstart;
	y = ystart;
}
