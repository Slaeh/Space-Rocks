score += 10;

instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == spr_large_asteroid){
		repeat(2){
			var newAsteroid = instance_create_layer(x,y,"Instances", obj_asteroid);
			newAsteroid.sprite_index = spr_medium_asteroid;
		}
	}else if(sprite_index == spr_medium_asteroid) {
		repeat(2){
			var newAsteroid = instance_create_layer(x,y,"Instances",obj_asteroid); 
			newAsteroid.sprite_index = spr_small_asteroid;
		}
	}
	repeat(10){
		instance_create_layer(x,y,"Instances",obj_debris);
	}
}