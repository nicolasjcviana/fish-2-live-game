/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_space) && room == rm_start) {
	quantidadePeixesPegado = 0;
	room_goto(rm_game);
}

if (keyboard_check_pressed(ord("A")) && room == rm_start && dinheiro >= valorProfundidade) {
	profundidade += 50;
	dinheiro -= valorProfundidade;
	valorProfundidade *= 1.1;
}

if (keyboard_check_pressed(ord("P")) && room == rm_start && dinheiro >= valorPeixes) {
	quantidadePeixesMax++;
	dinheiro -= valorPeixes;
	valorPeixes *= 1.3;
}

if (keyboard_check_pressed(ord("R")) && room == rm_ranking) {
	room_goto(rm_start);
}

if (keyboard_check_pressed(ord("R")) && room == rm_start) {
	room_goto(rm_ranking);
}