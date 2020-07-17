switch(room){
	case rm_game:
		draw_text(20,20, "SCORE: " + string(score));
		draw_text(20,40, "LIVES: " + string(lives));
		break;
		
    case rm_start:
	draw_set_halign(fa_center);
	var color = c_aqua;
		draw_text_transformed_color(
			room_width /2, 100, "SPACE ROCKS", 3, 3, 0, color, color, color, color,1);
			
			draw_text(room_width /2, 200,
			@"Score 1000 points to win!
			
			UP/DOWN: Move
			LEFT/RIGHT: Change direction
			SPACE: Shoot bullet
			
			<< PRESS ENTER TO START >>
			"
			);
			draw_set_halign(fa_left);
			break;
	
	case rm_win:
	draw_set_halign(fa_center);
	var color = c_lime;
		draw_text_transformed_color(
			room_width /2, 200, "YOU WON!", 3, 3, 0, color, color, color, color,1);
			
			draw_text(room_width /2, 300,
			"PRESS ENTER TO PLAY AGAIN"
			);
			draw_set_halign(fa_left);
			break;
	
	
	case rm_game_over:
	draw_set_halign(fa_center);
	var color = c_red;
		draw_text_transformed_color(
			room_width /2, 150, "GAME OVER", 3, 3, 0, color, color, color, color,1);
			draw_text(room_width /2, 300,
			"YOUR SCORE: " + string(score));
			
			draw_text(room_width /2, 300,
			"PRESS ENTER TO TRY AGAIN"
			);
			draw_set_halign(fa_left);
			break;
}
