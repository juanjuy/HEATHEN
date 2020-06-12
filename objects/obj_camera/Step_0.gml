if !shake {
	x += (xTo - x)/25;
	y += (yTo - y)/25;
} else if shake {
	xTo = x;
	yTo = y;
}

/*if obj_player.crouch_timer = 30 {
	y += 5;
} else if obj_player.lookup_timer = 30 {
	y -= 10;
}*/

if !shake {
	x = clamp(x,0+(view_wport[0]/2),room_width-(view_wport[0]/2));
	y = clamp(y,0+(view_hport[0]/2),room_height-(view_hport[0]/2));
} 

if (follow != noone) {
	xTo = follow.x;
	yTo = follow.y;
}


var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);

if(shake) { 
	shakeDur --;
	x += choose(-shakeForce,shakeForce);
	y += choose(-shakeForce,shakeForce);
	if(shakeDur <= 0) {
		shake = false;
		shakeDur = 5;
	}
}