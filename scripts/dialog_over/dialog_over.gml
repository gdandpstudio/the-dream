// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function dialog_over(dialog_numb){
	if (dialog = dialog_numb){
		global.mainchara_move = true;
		global.frisk_anim = true;
		global.letters = 0;
		if (!variable_instance_exists(id,"talked")){
			talked = 0;
		}
		talked += 1;
		dialog = 0;
	}
}