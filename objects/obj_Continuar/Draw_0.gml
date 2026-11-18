// Dibujar el botón base de Continuar
draw_self();

// Guardar estados gráficos
var old_colour = draw_get_colour();
var old_alpha = draw_get_alpha();
var old_font = draw_get_font();
var old_halign = draw_get_halign();
var old_valign = draw_get_valign();

draw_set_font(fnt_Privacidad);
draw_set_colour(c_white);
draw_set_alpha(image_alpha);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

// Dibujar entre paréntesis la noche en la que se encuentra el jugador
var _txt_noche = "(Noche " + string(noche_actual) + ")";
draw_text_transformed(x + sprite_width + 12, y + (sprite_height / 2), _txt_noche, 1.3, 1.3, 0);

// Restaurar estados gráficos
draw_set_colour(old_colour);
draw_set_alpha(old_alpha);
draw_set_font(old_font);
draw_set_halign(old_halign);
draw_set_valign(old_valign);
