/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3760189F
/// @DnDArgument : "speed" "-walkspeed"
/// @DnDArgument : "speed_relative" "1"
/// @DnDArgument : "type" "1"
hspeed += -walkspeed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 0A4C50CE
/// @DnDArgument : "x" "2"
/// @DnDArgument : "y" "-32"
/// @DnDArgument : "object" "O_Collision"
/// @DnDSaveInfo : "object" "O_Collision"
var l0A4C50CE_0 = instance_place(2, -32, [O_Collision]);if ((l0A4C50CE_0 > 0)){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5FD881DA
	/// @DnDParent : 0A4C50CE
	/// @DnDArgument : "type" "1"
	hspeed = 0;}