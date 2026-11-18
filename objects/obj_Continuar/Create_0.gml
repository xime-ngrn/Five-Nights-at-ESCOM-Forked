// Leer el progreso guardado
ini_open("progreso.ini");
var _ganada = ini_read_real("progreso", "noche_ganada", 0);
ini_close();

// La noche en la que te encuentras (la siguiente a la última ganada)
// Si ya se superó la Noche 1, continúa en la Noche 2
noche_actual = min(2, _ganada + 1);

// Continuar solo se habilita si ya se ganó al menos la Noche 1
habilitado = (_ganada >= 1);

// Si no está habilitado, se ve atenuado
image_alpha = habilitado ? 1 : 0.4;
