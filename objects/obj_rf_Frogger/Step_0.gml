//TIMER COUNTDOWN
/// ONCE TIMER IS 0, THE FROG MOVES ONCE, THEN THE TIMER IS RESET
if (timer == 0) {
	
	//DUPLICATE THE MOVEMENT OPTION ARRAY
	var moveOptions = moveArray;
	
	/*
	IF THE FROG IS PARTICULARLY FAR IN ANY CARDINAL DIRECTION ON SCREEN, 
	ADD MORE ENTRIES TO THE MOVEOPTION ARRAY TO INCREASE THE CHANCE OF 
	MOVEMENT KEEPING THE FROG FROM MOVING TOO FAR INTO CORNERS/EDGES
	*/
	if (x > 750) { array_push(moveOptions, 2,2); }
	if (x > 600) { array_push(moveOptions, 2); }
	if (x < 250) { array_push(moveOptions, 3,3); }
	if (x < 400) { array_push(moveOptions, 3); }
	if (y > 750) { array_push(moveOptions, 0,0); }
	if (y > 600) { array_push(moveOptions, 0); }
	if (y < 250) { array_push(moveOptions, 1,1); }
	if (y < 400) { array_push(moveOptions, 1); }

	//SET THE JUMP DIRECTION BY GRABBING A RANDOM OPTION FROM THE ARRAY
	var _dir = irandom(array_length(moveOptions) - 1);

	//BASED ON THE DIRECTION CHOSEN, MOVE THE FROG AND UPDATE THE FROG ROTATION ANGLE
	/*
	0 -- JUMP UP
	1 -- JUMP DOWN
	2 -- JUMP LEFT
	3 -- JUMP RIGHT
	*/
	if (moveOptions[_dir] == 0) {
		y -= 25;	
		image_angle = 90;
	} else if (moveOptions[_dir] == 1) {
		y += 25;
		image_angle = 270;
	} else if (moveOptions[_dir] == 2) {
		x -= 25;
		image_angle = 180;
	} else if (moveOptions[_dir] == 3) {
		x += 25;
		image_angle = 0;
	}//end movement tree
	
	//RESET TIMER TO 30 FRAMES
	timer = 30;
	
} else {
	
	//IF TIMER IS NOT CURRENTLY AT 0, REDUCE IT BY 1
	timer--;
	
}//end if
