/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
/// @DnDVersion : 1
/// @DnDHash : 75870212
/// @DnDArgument : "var" "tr2"
layer_sequence_destroy(tr2);

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 6D542153
/// @DnDArgument : "room" "Periodico"
/// @DnDSaveInfo : "room" "Periodico"
if (audio_is_playing(snd_MM)) {
    audio_stop_sound(snd_MM);
}
room_goto(Periodico);