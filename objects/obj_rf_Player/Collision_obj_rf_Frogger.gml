if (!dying) {
	instance_destroy(other);

	var _x = irandom_range(60, 940);
	var _y = irandom_range(60, 940);

	instance_create_layer(_x, _y, "Instances", obj_rf_Frogger);


	var lastTail = tailObj[array_length(tailObj) - 1]
	var tx = lastTail.x;
	var ty = lastTail.y;
	array_push(tailObj, instance_create_layer(tx, ty, "TAIL",obj_rf_tail));
	array_push(tailPos, {_x : tx, _y : ty})

}//end if