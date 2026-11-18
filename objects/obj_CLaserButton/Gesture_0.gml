/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 11EE0584
/// @DnDArgument : "var" "global.BatConteo"
/// @DnDArgument : "op" "2"
if(global.BatConteo > 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E2ADB20
	/// @DnDParent : 11EE0584
	/// @DnDArgument : "var" "global.Laser"
	if(global.Laser == 0){	/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 45A21FE0
		/// @DnDParent : 3E2ADB20
		/// @DnDArgument : "soundid" "snd_Laser"
		/// @DnDSaveInfo : "soundid" "snd_Laser"
		audio_stop_sound(snd_Laser);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 29C6600B
		/// @DnDParent : 3E2ADB20
		/// @DnDArgument : "soundid" "snd_Laser"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "snd_Laser"
		audio_play_sound(snd_Laser, 0, 1, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 046C75FD
		/// @DnDInput : 2
		/// @DnDParent : 3E2ADB20
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "global.Laser"
		/// @DnDArgument : "var_1" "global.BatLaser"
		global.Laser = 1;
		global.BatLaser = 1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6443C950
		/// @DnDParent : 3E2ADB20
		/// @DnDArgument : "spriteind" "spr_CLOn"
		/// @DnDSaveInfo : "spriteind" "spr_CLOn"
		sprite_index = spr_CLOn;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 0B29A29D
		/// @DnDParent : 3E2ADB20
		/// @DnDArgument : "code" "alarm_set(0, -1);$(13_10)alarm_set(1, -1);$(13_10)$(13_10)if (global.secLaser != -1$(13_10)    && layer_sequence_exists("Lasers", global.secLaser)) {$(13_10)    layer_sequence_destroy(global.secLaser);$(13_10)}$(13_10)$(13_10)global.secLaser = -1;"
		alarm_set(0, -1);
		alarm_set(1, -1);
		
		if (global.secLaser != -1
		    && layer_sequence_exists("Lasers", global.secLaser)) {
		    layer_sequence_destroy(global.secLaser);
		}
		
		global.secLaser = -1;
	
		/// @DnDAction : YoYo Games.Sequences.Sequence_Create
		/// @DnDVersion : 1
		/// @DnDHash : 60FE7EEC
		/// @DnDParent : 3E2ADB20
		/// @DnDArgument : "xpos" "x-441"
		/// @DnDArgument : "ypos" "380"
		/// @DnDArgument : "var" "global.secLaser"
		/// @DnDArgument : "sequenceid" "sqn_CLaserON"
		/// @DnDArgument : "layer" ""Lasers""
		/// @DnDSaveInfo : "sequenceid" "sqn_CLaserON"
		global.secLaser = layer_sequence_create("Lasers", x-441, 380, sqn_CLaserON);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 3E5C173D
		/// @DnDParent : 3E2ADB20
		/// @DnDArgument : "steps" "13"
		alarm_set(0, 13);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 210A608E
	/// @DnDParent : 11EE0584
	else{	/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 2A727394
		/// @DnDParent : 210A608E
		/// @DnDArgument : "soundid" "snd_Laser"
		/// @DnDSaveInfo : "soundid" "snd_Laser"
		audio_stop_sound(snd_Laser);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 35531DCE
		/// @DnDInput : 2
		/// @DnDParent : 210A608E
		/// @DnDArgument : "var" "global.Laser"
		/// @DnDArgument : "var_1" "global.BatLaser"
		global.Laser = 0;
		global.BatLaser = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 690F1674
		/// @DnDParent : 210A608E
		/// @DnDArgument : "spriteind" "spr_CLOff"
		/// @DnDSaveInfo : "spriteind" "spr_CLOff"
		sprite_index = spr_CLOff;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5B7CA508
		/// @DnDApplyTo : {obj_CLaser}
		/// @DnDParent : 210A608E
		with(obj_CLaser) {
		sprite_index = noone;
		image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 4A61A52E
		/// @DnDParent : 210A608E
		/// @DnDArgument : "code" "alarm_set(0, -1);$(13_10)alarm_set(1, -1);$(13_10)$(13_10)if (global.secLaser != -1$(13_10)    && layer_sequence_exists("Lasers", global.secLaser)) {$(13_10)    layer_sequence_destroy(global.secLaser);$(13_10)}$(13_10)$(13_10)global.secLaser = -1;"
		alarm_set(0, -1);
		alarm_set(1, -1);
		
		if (global.secLaser != -1
		    && layer_sequence_exists("Lasers", global.secLaser)) {
		    layer_sequence_destroy(global.secLaser);
		}
		
		global.secLaser = -1;
	
		/// @DnDAction : YoYo Games.Sequences.Sequence_Create
		/// @DnDVersion : 1
		/// @DnDHash : 701451D6
		/// @DnDParent : 210A608E
		/// @DnDArgument : "xpos" "x-441"
		/// @DnDArgument : "ypos" "380"
		/// @DnDArgument : "var" "global.secLaser"
		/// @DnDArgument : "sequenceid" "sqn_CLaserOFF"
		/// @DnDArgument : "layer" ""Lasers""
		/// @DnDSaveInfo : "sequenceid" "sqn_CLaserOFF"
		global.secLaser = layer_sequence_create("Lasers", x-441, 380, sqn_CLaserOFF);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 46C212D4
		/// @DnDParent : 210A608E
		/// @DnDArgument : "steps" "13"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 13);}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4CE381CD
else{	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 6E836CEC
	/// @DnDParent : 4CE381CD
	/// @DnDArgument : "soundid" "snd_EmptyButton"
	/// @DnDSaveInfo : "soundid" "snd_EmptyButton"
	audio_stop_sound(snd_EmptyButton);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 5B1C37F4
	/// @DnDParent : 4CE381CD
	/// @DnDArgument : "soundid" "snd_EmptyButton"
	/// @DnDSaveInfo : "soundid" "snd_EmptyButton"
	audio_play_sound(snd_EmptyButton, 0, 0, 1.0, undefined, 1.0);}