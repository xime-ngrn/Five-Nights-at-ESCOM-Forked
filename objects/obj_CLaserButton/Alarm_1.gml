/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4B168C8F
/// @DnDArgument : "code" "if (global.secLaser != -1$(13_10)    && layer_sequence_exists("Lasers", global.secLaser)) {$(13_10)    layer_sequence_destroy(global.secLaser);$(13_10)}$(13_10)$(13_10)global.secLaser = -1;"
if (global.secLaser != -1
    && layer_sequence_exists("Lasers", global.secLaser)) {
    layer_sequence_destroy(global.secLaser);
}

global.secLaser = -1;