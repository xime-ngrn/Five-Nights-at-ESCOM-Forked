/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
/// @DnDVersion : 1
/// @DnDHash : 21FB3F05
/// @DnDArgument : "var" "SN1"
layer_sequence_destroy(SN1);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 09878496
/// @DnDArgument : "objectid" "objN1_E"
/// @DnDArgument : "layer" ""Instances_1""
/// @DnDSaveInfo : "objectid" "objN1_E"
instance_create_layer(0, 0, "Instances_1", objN1_E);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 67ED0F5B
/// @DnDApplyTo : {objN1_S}
with(objN1_S) instance_destroy();