/// @DnDAction : YoYo Games.Files.Open_Ini
/// @DnDVersion : 1
/// @DnDHash : 35E4FB88
/// @DnDArgument : "filename" ""config.ini""
ini_open("config.ini");

/// @DnDAction : YoYo Games.Files.Ini_Write
/// @DnDVersion : 1
/// @DnDHash : 028608BA
/// @DnDArgument : "section" ""local""
/// @DnDArgument : "key" ""lvl""
/// @DnDArgument : "value" ""2""
ini_write_string("local", "lvl", "2");

/// @DnDAction : YoYo Games.Files.Close_Ini
/// @DnDVersion : 1
/// @DnDHash : 0C5039BE
ini_close();

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 24E8AE6C
/// @DnDArgument : "room" "Lv2"
/// @DnDSaveInfo : "room" "Lv2"
room_goto(Lv2);