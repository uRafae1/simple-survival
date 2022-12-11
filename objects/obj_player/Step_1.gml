
// Colisão vertical e horizontal
if place_meeting(x+moveX, y, obj_barrier){
	moveX = 0;
} else {
	x += moveX;
}
if place_meeting(x, y+moveY, obj_barrier){
	moveY = 0;
} else {
	y += moveY;
}





