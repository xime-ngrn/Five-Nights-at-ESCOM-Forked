/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5767D9D6
/// @DnDArgument : "code" "if (global.secLaser != -1$(13_10)    && layer_sequence_exists("Lasers", global.secLaser)) {$(13_10)    layer_sequence_destroy(global.secLaser);$(13_10)}$(13_10)$(13_10)global.secLaser = -1;$(13_10)$(13_10)if (global.Laser == 1) {$(13_10)    with (obj_CLaser) {$(13_10)        sprite_index = spr_CLaser1;$(13_10)        image_index = 0;$(13_10)    }$(13_10)}"
if (global.secLaser != -1
    && layer_sequence_exists("Lasers", global.secLaser)) {
    layer_sequence_destroy(global.secLaser);
}

global.secLaser = -1;

if (global.Laser == 1) {
    with (obj_CLaser) {
        sprite_index = spr_CLaser1;
        image_index = 0;
    }
}