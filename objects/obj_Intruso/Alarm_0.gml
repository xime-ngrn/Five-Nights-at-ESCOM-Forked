if (camara_actual < camara_max) {
    var siendo_visto = (global.CameraUp == 1 && global.CamaraActiva == camara_actual);
    if (!siendo_visto) {
        camara_actual += 1;
    }
    alarm[0] = room_speed * 10;
} else {
    global.JSBy = 2;
    room_goto(GameOver);
}	
