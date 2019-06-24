/// @description Insert description here
// You can write your code in this editor

if (state == "M_UP") {
	var valor = 0;
	with (other) {
		instance_destroy();
		valor = moneyValue;
	}
	
	with(obj_game) {
		quantidadePeixesPegado += 1;
		dinheiro += valor;
	}
	
	audio_play_sound(snd_fished, 3, false);
}