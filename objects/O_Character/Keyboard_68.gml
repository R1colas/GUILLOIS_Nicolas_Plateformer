/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 036BD7F4
/// @DnDArgument : "speed" "walkspeed"
/// @DnDArgument : "speed_relative" "1"
/// @DnDArgument : "type" "1"
hspeed += walkspeed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6BCEC6D1
/// @DnDArgument : "x" "2"
/// @DnDArgument : "y" "-32"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "O_Collision"
/// @DnDSaveInfo : "object" "O_Collision"
var l6BCEC6D1_0 = instance_place(2, y + -32, [O_Collision]);if ((l6BCEC6D1_0 > 0)){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0E802E4E
	/// @DnDParent : 6BCEC6D1
	/// @DnDArgument : "type" "1"
	hspeed = 0;}