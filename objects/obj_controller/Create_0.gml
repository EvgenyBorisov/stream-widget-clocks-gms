/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе


#macro tile_size 32
#macro symbol_font obj_controller.symbol_font_data

symbol_font = ds_map_create()

symbol_font[? "0"] = new Letter0()
symbol_font[? "1"] = new Letter1()
symbol_font[? "2"] = new Letter2()
symbol_font[? "3"] = new Letter3()
symbol_font[? "4"] = new Letter4()
symbol_font[? "5"] = new Letter5()
symbol_font[? "6"] = new Letter6()
symbol_font[? "7"] = new Letter7()
symbol_font[? "8"] = new Letter8()
symbol_font[? "9"] = new Letter9()
symbol_font[? ":"] = new LetterClock()



field_w = 17
field_h = 5

field = ds_grid_create(field_w,field_h)

h = current_hour
m = current_minute

write_time(field, h,m)