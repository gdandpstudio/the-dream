/// @DnDAction : YoYo Games.Files.Open_Ini
/// @DnDVersion : 1
/// @DnDHash : 63CCB3E4
/// @DnDArgument : "filename" ""config.cfg""
ini_open("config.cfg");

/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 770B99F7
/// @DnDArgument : "var" "global.name"
/// @DnDArgument : "section" ""local""
/// @DnDArgument : "key" ""name""
/// @DnDArgument : "default" ""_NoName_""
global.name = ini_read_string("local", "name", "_NoName_");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A0B7BE6
/// @DnDArgument : "var" "global.name"
/// @DnDArgument : "value" ""_NoName_""
if(global.name == "_NoName_")
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 138EAD96
	/// @DnDParent : 0A0B7BE6
	/// @DnDArgument : "code" "global.name = get_string("Enter your name (not real or THEY will come to you)", "")$(13_10)ini_write_string("local", "name", global.name)"
	global.name = get_string("Enter your name (not real or THEY will come to you)", "")
	ini_write_string("local", "name", global.name)
}

/// @DnDAction : YoYo Games.Files.Close_Ini
/// @DnDVersion : 1
/// @DnDHash : 21E7715A
ini_close();