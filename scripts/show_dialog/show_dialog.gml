/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6E3FF30F
/// @DnDComment : // Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377
/// @DnDArgument : "funcName" "show_dialog"
/// @DnDArgument : "arg" "did"
function show_dialog(did) 
{
	/// @DnDAction : YoYo Games.Timelines.Speed_Timeline
	/// @DnDVersion : 1
	/// @DnDHash : 5CECBD00
	/// @DnDParent : 6E3FF30F
	timeline_speed = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 01F3BDC7
	/// @DnDApplyTo : {obj_dialog}
	/// @DnDParent : 6E3FF30F
	/// @DnDArgument : "spriteind" "argument0"
	with(obj_dialog) {
	sprite_index = argument0;
	image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45758F26
	/// @DnDApplyTo : {obj_dialog}
	/// @DnDParent : 6E3FF30F
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "visible"
	with(obj_dialog) {
	visible = true;
	
	}
}