/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3EC57420
/// @DnDArgument : "var" "Noche1"
Noche1 = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 355B9749
/// @DnDArgument : "var" "Noche1"
if(Noche1 == 0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 0423CD93
	/// @DnDParent : 355B9749
	/// @DnDArgument : "room" "N1"
	/// @DnDSaveInfo : "room" "N1"
	global.Noche = 1;
	room_goto(N1);
}
