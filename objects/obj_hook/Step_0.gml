/// @description Insert description here
// You can write your code in this editor
/*
*/

// speed = 3;


switch (state) {
	case "DOWN":
		direction = 270;
		speed = 1.5;
		state = "M_DOWN";
		audio_play_sound(snd_reel, 2, true);
		break;
	case "M_DOWN":
		var prof = 0;
		with(obj_game) {
			prof = profundidade;
		}
		if (y > 1020 or y > (prof + 250)) {
			direction = 90;
			speed = 1.5;
			state = "M_UP";
		}
		break;
	case "M_UP":
		x = mouse_x;
		speed = 1.0;
		y = y - 2;
		
		var qtdPeixes = 0;
		var qtdMax = 0;
		with (obj_game) {
			qtdPeixes = quantidadePeixesPegado;
			qtdMax = quantidadePeixesMax
		}
		
		if (y < 150 or qtdPeixes >= qtdMax) {
			speed = 0;
			state = "STOP";
			with(obj_game) {
				ds_queue_enqueue(jogadas, qtdPeixes);
				if (ds_queue_size(jogadas) == 6) {
					ds_queue_dequeue(jogadas);
				}
			}
			if (audio_is_playing(snd_reel)) {
				audio_stop_sound(snd_reel);
			}
			quantidadePeixesPegado = 0;
			room_goto(rm_start);
		}
		break;	
}