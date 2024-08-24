// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function dialog_start(){
	if (place_meeting(x,y,obj_mainchara)){
		if (keyboard_check_pressed(ord("Z")) and dialog = 0){
			dialog = 1;
		}
	}
}