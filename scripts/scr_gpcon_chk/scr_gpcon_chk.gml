///@description Trigger: when gamepad connected
function scr_gpcon_chk() 
{
	if(gamepad_is_connected(0) == true && global.fl_gpcon == false){
		global.fl_gpcon = true
		return true
	}
	if(gamepad_is_connected(0) == false && global.fl_gpcon == true){
		global.fl_gpcon = false
	}
}