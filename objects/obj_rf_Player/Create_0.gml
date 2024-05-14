//INITIATES THE PLAYER IN A VERTICAL POSITION
image_angle = 90;
forceMoveTimer = 30;



//TAIL HOLDER
tailObj = [instance_create_layer(150, 950,"Instances",obj_rf_tail), instance_create_layer(150, 1000,"Instances",obj_rf_tail)]
tailPos = [{_x : 150, _y : 950}, {_x : 150, _y : 900}]

function CollisionCheck(xLoc, yLoc) {
	var collisionDetected = collision_circle(xLoc,yLoc, 25, obj_oob, false, false);
	if (collisionDetected) {
		return true;
	}//end if
}//end function