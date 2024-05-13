//INITIATES THE PLAYER IN A VERTICAL POSITION
image_angle = 90;

function CollisionCheck(xLoc, yLoc) {
	var collisionDetected = collision_circle(xLoc,yLoc, 25, obj_oob, false, false);
	if (collisionDetected) {
		return true;
	}//end if
}//end function