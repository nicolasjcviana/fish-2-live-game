/// scr_create_fish(argument0, argument1, argument2, argument3, argument4, argument5);
var numberOfFishes = argument0;
var yInit = argument1
var yFinal = argument2;
var spr = argument3;
var value = argument4;
var vel = argument5;

repeat(numberOfFishes) {
	
	var xx = irandom_range(0, room_width);
	var yy = irandom_range(yInit, yFinal);
	
	inst = instance_create_layer(xx, yy, "Instances", obj_fish);
	
	with(inst) {
		sprite_index = spr;
		moneyValue = value;
		velocidade = vel;
	}
}