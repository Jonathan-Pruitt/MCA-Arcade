var dx = x;
var dy = y;

// CHECK KEYBOARD PRESSES TO DETERMINE MOVEMENT
if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	dy -= 50;	
	image_angle = 90;
} else if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	dy += 50;
	image_angle = 270;
} else if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
	dx -= 50;
	image_angle = 180;
} else if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
	dx += 50;
	image_angle = 0;
}//end movement tree

var stopMove = CollisionCheck(dx, dy);

if (!stopMove) {
	x = dx;
	y = dy;
}//end if