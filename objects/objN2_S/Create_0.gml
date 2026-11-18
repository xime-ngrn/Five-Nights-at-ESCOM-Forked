/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 3A187C0E
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 614D9EC5
/// @DnDArgument : "soundid" "snd_Night"
/// @DnDSaveInfo : "soundid" "snd_Night"
audio_play_sound(snd_Night, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 71ABA566
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "SN1"
SN1 = 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2EDA2892
/// @DnDArgument : "steps" "21"
alarm_set(0, 21);

/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 3550CF54
/// @DnDArgument : "xpos" "640"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "360"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "SN1"
/// @DnDArgument : "sequenceid" "sqn_Noche1"
/// @DnDArgument : "layer" ""Assets_1""
/// @DnDSaveInfo : "sequenceid" "sqn_Noche1"
SN1 = layer_sequence_create("Assets_1", x + 640, y + 360, sqn_Noche1);