
// Variáveis do player
spd = 2.5;
moveX = 0;
moveY = 0;

// Cria a câmera caso não exista
if !instance_exists(obj_camera){
	instance_create_layer(x,y,layer,obj_camera);
}

// Cria o mouse caso não exista
if !instance_exists(obj_mouse){
	instance_create_layer(x,y,"Mouse",obj_mouse);
}

// Função de andar
function anda(){
	// Variáveis do teclado
	var _keyW = keyboard_check(ord("W"));
	var _keyA = keyboard_check(ord("A"));
	var _keyS = keyboard_check(ord("S"));
	var _keyD = keyboard_check(ord("D"));
	
	// Calcula velocidade e direção
	moveX = (_keyD - _keyA) * spd;
	moveY = (_keyS - _keyW) * spd;
	
	// Animação
	if (moveX != 0) or (moveY != 0) {
		sprite_index = spr_playerWalk;
		if _keyA {
			image_xscale = -1;
		} else if _keyD {
			image_xscale = 1;
		}
	} else {
		sprite_index = spr_player;
	}
	
}
	

