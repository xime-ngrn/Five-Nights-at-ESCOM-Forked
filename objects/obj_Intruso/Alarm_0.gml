if (camara_actual < camara_max) {
    if (global.CamaraActiva != camara_actual) {
        camara_actual += 1;
    }
    alarm[0] = room_speed * 5;
} else {
    global.JSBy = 2;
    room_goto(GameOver);
}	