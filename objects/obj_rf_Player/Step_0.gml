if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	y -= 50;	
	image_angle = 90;
} else if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	y += 50;
	image_angle = 270;
} else if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
	x -= 50;
	image_angle = 180;
} else if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
	x += 50;
	image_angle = 0;
}//end movement tree
