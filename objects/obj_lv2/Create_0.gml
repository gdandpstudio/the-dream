/// @DnDAction : YoYo Games.Files.Open_Ini
/// @DnDVersion : 1
/// @DnDHash : 2152F92C
/// @DnDArgument : "filename" ""config.ini""
ini_open("config.ini");

/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 45DF47F0
/// @DnDArgument : "var" "lvl"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "section" ""local""
/// @DnDArgument : "key" ""lvl""
/// @DnDArgument : "default" "1"
var lvl = ini_read_string("local", "lvl", 1);

/// @DnDAction : YoYo Games.Files.Close_Ini
/// @DnDVersion : 1
/// @DnDHash : 2317F42E
ini_close();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F952F2D
/// @DnDArgument : "var" "lvl"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "2"
if(!(lvl >= 2))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6E2A3A73
	/// @DnDParent : 0F952F2D
	instance_destroy();
}