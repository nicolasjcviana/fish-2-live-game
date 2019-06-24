/// @description Insert description here
// You can write your code in this editor

dinheiro = 0;
profundidade = 250;
valorProfundidade = 200;
valorPeixes = 200;
quantidadePeixesMax = 2;
quantidadePeixesPegado = 0;
jogadas = ds_queue_create();
audio_play_sound(snd_sea, 1, true)