///@param object
///@param dialog_line

function start_dialog(){
if(!instance_exists(dialog_controller)){
	instance_create_depth(0, 0, 0, dialog_controller)
	dialog_controller.dialog_lines = argument[0].dialog_lines
	dialog_controller.dialog_line =	argument[1]
	dialog_controller.fetch = true
}
}