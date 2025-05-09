/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 3E94517E
/// @DnDArgument : "y" "3"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "object" "O_Collision"
/// @DnDSaveInfo : "object" "O_Collision"
var l3E94517E_0 = instance_place(0, y + 3, [O_Collision]);if ((l3E94517E_0 > 0)){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 590AF2D2
	/// @DnDParent : 3E94517E
	/// @DnDArgument : "type" "2"
	vspeed = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 28CBB915
	/// @DnDParent : 3E94517E
	var l28CBB915_0;l28CBB915_0 = keyboard_check(vk_space);if (l28CBB915_0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 7FB1D6DE
		/// @DnDParent : 28CBB915
		/// @DnDArgument : "speed" "-45"
		/// @DnDArgument : "type" "2"
		vspeed = -45;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6A030A81
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56D16FF9
	/// @DnDParent : 6A030A81
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "gravitypower"
	if(vspeed < gravitypower){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 02C0D512
		/// @DnDParent : 56D16FF9
		/// @DnDArgument : "speed" "1"
		/// @DnDArgument : "speed_relative" "1"
		/// @DnDArgument : "type" "2"
		vspeed += 1;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 430DA60B
	/// @DnDParent : 6A030A81
	else{	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 07878F68
		/// @DnDParent : 430DA60B
		/// @DnDArgument : "speed" "gravitypower"
		/// @DnDArgument : "type" "2"
		vspeed = gravitypower;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D698287
/// @DnDArgument : "var" "walkspeed"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "0.201"
if(walkspeed > 0.201){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E376ADE
	/// @DnDParent : 4D698287
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "frein"
	frein += true;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 5A8C8BA4
/// @DnDArgument : "key" "ord("Q")"
/// @DnDArgument : "not" "1"
var l5A8C8BA4_0;l5A8C8BA4_0 = keyboard_check_released(ord("Q"));if (!l5A8C8BA4_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6B85660A
	/// @DnDParent : 5A8C8BA4
	/// @DnDArgument : "key" "ord("D")"
	/// @DnDArgument : "not" "1"
	var l6B85660A_0;l6B85660A_0 = keyboard_check(ord("D"));if (!l6B85660A_0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 11E061E7
		/// @DnDParent : 6B85660A
		/// @DnDArgument : "var" "frein"
		/// @DnDArgument : "value" "true"
		if(frein == true){	/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 20192881
			/// @DnDParent : 11E061E7
			/// @DnDArgument : "speed" "walkspeed-0.25"
			/// @DnDArgument : "speed_relative" "1"
			/// @DnDArgument : "type" "1"
			hspeed += walkspeed-0.25;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 6E526124
			/// @DnDParent : 11E061E7
			/// @DnDArgument : "type" "1"
			hspeed = 0;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 33C11BF1
/// @DnDArgument : "var" "walkspeed"
/// @DnDArgument : "op" "3"
if(walkspeed <= 0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 60655322
	/// @DnDParent : 33C11BF1
	/// @DnDArgument : "type" "1"
	hspeed = 0;}