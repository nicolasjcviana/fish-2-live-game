/// @description Insert description here
// You can write your code in this editor

// LIVES = PROFUNDIDADE
if (room == rm_start) {
	var c = c_white;
	draw_set_halign(fa_left);
	draw_text_transformed_color(80, 316, string(profundidade) + "m", 1.5, 1.5, 0, c, c, c, c, 255);

	draw_set_halign(fa_left);
	draw_text_transformed_color(80, 346, "Custa $ " + string(floor(valorProfundidade)), 1, 1, 0, c, c, c, c, 255);

	// quantidade de peixes
	draw_set_halign(fa_left);
	draw_text_transformed_color(240, 316, string(quantidadePeixesMax), 1.5, 1.5, 0, c, c, c, c, 255);

	draw_set_halign(fa_left);
	draw_text_transformed_color(220, 346, "Custa $ " + string(floor(valorPeixes)), 1, 1, 0, c, c, c, c, 255);

	// SCORE = DINHEIRO
	draw_set_halign(fa_left);
	draw_text_transformed_color(414, 316, "$ " + string(dinheiro), 1.5, 1.5, 0, c, c, c, c, 255);


	draw_set_halign(fa_center);
	draw_text_transformed_color(room_width/2, 400, ">>>      'SPACE' PARA COMECAR      <<<", 1, 1, 0, c, c, c, c, 255);
	draw_text_transformed_color(room_width/2, 420, ">>>      'R' PARA RANKING      <<<", 1, 1, 0, c, c, c, c, 255);
	if (dinheiro >= valorProfundidade) {
		draw_text_transformed_color(room_width/2, 440, ">>> 'A' PARA AUMENTAR PROFUNDIDADE <<<", 1, 1, 0, c, c, c, c, 255);
	}
	
	if (dinheiro >= valorPeixes) {
		draw_text_transformed_color(room_width/2, 460, ">>> 'P' PARA AUMENTAR QUANTIDADE PEIXES <<<", 1, 1, 0, c, c, c, c, 255);
	}
	
}

if (room == rm_game) {
	var c = c_black;
	draw_set_halign(fa_center);
	draw_text_transformed_color(obj_camera.bbox_right + 250, obj_camera.bbox_bottom - 250, "Peixes: " + string(quantidadePeixesPegado) + "/" + string(quantidadePeixesMax), 1, 1, 0, c, c, c, c, 255);
}

if (room == rm_ranking) {
	var c = c_white;
	draw_set_halign(fa_center);
	draw_text_transformed_color(250, 270, "Ranking das ultimas jogadas", 1, 1, 0, c, c, c, c, 255);

	var jogadasTemp = ds_queue_create();
	ds_queue_copy(jogadasTemp, jogadas);
	var cont = 1;
	var yText = 290;
	
	while(!ds_queue_empty(jogadasTemp)) {
		var valor = ds_queue_dequeue(jogadasTemp);
		
		draw_text_transformed_color(250, yText, "Jogada " + string(cont) + ": " + string(valor), 1, 1, 0, c, c, c, c, 255);
		yText += 20;
		cont++;
	}
	
	draw_text_transformed_color(250, yText + 60, ">>>     R para voltar    <<<", 1, 1, 0, c, c, c, c, 255);

}