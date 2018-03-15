/// @description bounce and reset

//this takes care of the ball bouncing off the ceiling and floor and room
if (y <= sprite_height/2 || y >= room_height-(sprite_height/2))		// || os the same as OR
{
	vspeed *= -1;
}

//This takes care of resetting after the ball goes past the paddle on each side
if (x <= 0  || x >= room_width)
{
	x = xstart;
	y = ystart;
}