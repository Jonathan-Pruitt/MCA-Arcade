if (timer == 0) {
	
	var _dir = irandom(3);

	if (_dir == 0) {
		y -= 25;	
		image_angle = 90;
	} else if (_dir == 1) {
		y += 25;
		image_angle = 270;
	} else if (_dir == 2) {
		x -= 25;
		image_angle = 180;
	} else if (_dir == 3) {
		x += 25;
		image_angle = 0;
	}//end movement tree
	
	timer = 30;
	
} else {
	
	timer--;
	
}//end if
