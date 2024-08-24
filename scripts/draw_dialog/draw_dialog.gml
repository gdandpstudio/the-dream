// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function draw_dialog(dialog_numb,target,alpha,face,text,voice,speed_text,color,font,choise,shake,buttons){
	if (true){//List
		/*
		alpha = [frame,bg,text,face];
		
		face = [exists,face,subimg];
		
		text = [line1,line2,line3];
		
		voice = [voice,pith];
		
		color = [col_line1,col_line2,col_line3];
		
		choise = [0,choise1,choise2,choise3,choise4];
		
		buttons = [z,x,c];
		*/
	}
	if (dialog = dialog_numb){
		global.mainchara_move = false;
		
		var __clear1 = [text[0]];
		var __clear2 = [text[1]];
		var __clear3 = [text[2]];
		for (i = 1; i <= 9; i++){
			__clear1[i] = string_replace_all(__clear1[i - 1],"^" + string(i),"");
			__clear2[i] = string_replace_all(__clear2[i - 1],"^" + string(i),"");
			__clear3[i] = string_replace_all(__clear3[i - 1],"^" + string(i),"");
		}
		
		var text_clear = [__clear1[9],__clear2[9],__clear3[9]];
		var text_anim = 
		[string_copy(text_clear[0],0,global.letters),
		string_copy(text_clear[1],0,global.letters - string_length(text_clear[0])),
		string_copy(text_clear[2],0,global.letters - string_length(text_clear[0]) - string_length(text_clear[1]))];
		
		draw_set_font(font);
		
		var target_pos = (target.y - global.camy < global.cameraheight/2)*496;
		draw_sprite_ext(spr_dbox,1,51,16 + target_pos,1,1,0,c_white,alpha[1]);
		draw_sprite_ext(spr_dbox,0,51,16 + target_pos,1,1,0,c_white,alpha[0]);
		
		if (choise[0] <= 0){
			if (face[0] = 0){
				for (i = 0; i < 3; i++){
					var sh = [random_range(-shake,shake),random_range(-shake,shake)];
					draw_set_color(color[i]);
					draw_set_alpha(alpha[2]);
					draw_text(112 + sh[0],48 + (64 * i) + sh[1] + target_pos,text_anim[i]);
					draw_set_color(c_white);
					draw_set_alpha(1);
				}
			}
			if (face[0] = 1){
				draw_sprite_ext(face[1],face[2],112,64 + target_pos,1,1,0,c_white,alpha[3]);
				for (i = 0; i < 3; i++){
					var sh = [random_range(-shake,shake),random_range(-shake,shake)];
					draw_set_color(color[i]);
					draw_set_alpha(alpha[2]);
					draw_text(272 + sh[0],48 + (64 * i) + sh[1] + target_pos,text_anim[i]);
					draw_set_color(c_white);
					draw_set_alpha(1);
				}
			}
		} else {
			var choisecoordx = [448,144,688,448,448];
			var choisecoordy = [48,96,96,176,96];
			
			if (global.letters <= 0){
				global.letters += 1;
				choiseheart = 4;
			}
			
			if (keyboard_check(vk_up) and choise[1] != "") choiseheart = 0;
			if (keyboard_check(vk_left) and choise[2] != "") choiseheart = 1;
			if (keyboard_check(vk_right) and choise[3] != "") choiseheart = 2;
			if (keyboard_check(vk_down) and choise[4] != "") choiseheart = 3;
			
			draw_text(choisecoordx[0],choisecoordy[0] + target_pos,choise[1]);
			draw_text(choisecoordx[1],choisecoordy[1] + target_pos,choise[2]);
			draw_text(choisecoordx[2],choisecoordy[2] + target_pos,choise[3]);
			draw_text(choisecoordx[3],choisecoordy[3] + target_pos,choise[4]);
			
			draw_sprite(spr_soul_det,0,choisecoordx[choiseheart] - 32,choisecoordy[choiseheart] + 32 + target_pos);
		}
		
		draw_set_font(fnt_main);
		
		obj_dialoguer._string = [text[0],text[1],text[2]];
		obj_dialoguer.spd = speed_text;
		obj_dialoguer.voice = voice[0];
		obj_dialoguer._pitch = voice[1];
		obj_dialoguer.object = id;
		
		if (global.letters <= 0){
			obj_dialoguer.alarm[0] = 1;
		}
		
		if (string_length(text_anim[2]) >= string_length(text_clear[2])){
			if (keyboard_check_pressed(ord("Z")) and buttons[0] = 1){
				if (choise[0] <= 0){
					obj_dialoguer.alarm[1] = 1;
					exit;
				} else {
					if (choiseheart != 4){
						global.choise = choiseheart;
						choiseheart = 4;
						obj_dialoguer.alarm[1] = 1;
						exit;
					}
				}
			}
		}
		if (keyboard_check_pressed(ord("X")) and buttons[1] = 1){
			global.letters = string_length(text[0] + text[1] + text[2]);
		}
		if (keyboard_check(ord("C")) and buttons[2] = 1){
			global.letters += 1;
			obj_dialoguer.alarm[1] = 1;
			exit;
		}
	}
}