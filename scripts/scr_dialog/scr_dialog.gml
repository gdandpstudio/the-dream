if(instance_exists(obj_dialog)){
/// @description draw_resized_sprite_and_text(sprDial, texDial)
/// @param sprDial
/// @param texDial

var sprDial = argument0;
var texDial = argument1;

// Проверка, что sprDial является допустимым индексом спрайта
if (is_real(sprDial) && sprite_exists(sprDial)) {
    // Зелёный спрайт
    var greenX = view_xview[0] + 7; // отступ по X
    var greenY = view_yview[0] + 7; // отступ по Y
    var greenWidth = 228; // ширина
    var greenHeight = 241; // высота

    // Получение размеров спрайта
    var sprOrigWidth = sprite_get_width(sprDial);
    var sprOrigHeight = sprite_get_height(sprDial);

    // Вычисление масштаба спрайта
    var sprScaleX = greenWidth / sprOrigWidth;
    var sprScaleY = greenHeight / sprOrigHeight;

    // Отрисовка спрайта зеленым цветом с заданным масштабом
    draw_sprite_ext(sprDial, 0, greenX, greenY, sprScaleX, sprScaleY, 0, c_green, 1);
}

// Синий текст
var blueX = view_xview[0] + 243; // отступ по X
var blueY = view_yview[0] + 224 + 7; // отступ по Y
var blueWidth = 602; // ширина
var blueHeight = 241; // высота

// Вычисление масштаба текста
var textScaleX = blueWidth / string_width(texDial);
var textScaleY = blueHeight / string_height(texDial);

// Установка масштаба текста
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Отрисовка текста синим цветом с заданным масштабом
draw_set_color(c_blue);
draw_text_transformed(blueX, blueY, texDial, textScaleX, textScaleY, 0)
obj_dialog.visible = true
game_set_speed(0, gamespeed_fps);
}