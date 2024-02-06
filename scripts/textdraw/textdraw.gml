var font;
font = font_add("Arial", 30, false, false, 0, 0);

draw_set_font(font);
draw_set_color(c_black)

var text = argument0;
var txtx = 50;
var txty = 50;
var width = 753;
draw_text_ext(txtx, txty, text, -1, width);
