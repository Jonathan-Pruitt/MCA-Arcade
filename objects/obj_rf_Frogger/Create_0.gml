//TIMER CONTROLS HOW MANY FRAMES ARE WAITED BEFORE THE NEXT ACTION
timer = 30;

//MOVE ARRAY GIVES A LIST OF POSSIBLE MOVEMENT DIRECTIONS
moveArray = [0,1,2,3];

function CollisionCheck(xLoc, yLoc) {
	var collisionDetected = collision_circle(xLoc,yLoc, 25, obj_oob, false, false);
	if (collisionDetected) {
		return true;
	}//end if
}//end function