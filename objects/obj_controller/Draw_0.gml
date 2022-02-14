/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе



var ix, iy, bl


for (ix=0; ix < field_w; ix++) {
	for (iy=0; iy < field_h; iy++) {
		bl = field[# ix, iy]
		if (is_struct(bl)) {
			//draw_rectangle(x+ix * tile_size, y+iy * tile_size, x+(ix+1) * tile_size, y+(iy+1) * tile_size, 0)
			bl.update()
			bl.draw(x+ix * tile_size, y+iy * tile_size)
		}
	}
}