//INITIATES THE PLAYER IN A VERTICAL POSITION
image_angle = 90;
forceMoveTimer = 30;
dying = false;
dieTime = 0;


//TAIL HOLDER
tailObj = [instance_create_layer(150, 950,"TAIL",obj_rf_tail), instance_create_layer(150, 1000,"TAIL",obj_rf_tail)]
tailPos = [{_x : 150, _y : 950}, {_x : 150, _y : 900}]

function CollisionCheck(xLoc, yLoc, deathObj) {
	for (var i = 0; i < array_length(deathObj); i++) {
		var collisionDetected = collision_circle(xLoc,yLoc, 10, deathObj, false, false);
		if (collisionDetected) {
			return true;
		}//end if
	}//end for
}//end function