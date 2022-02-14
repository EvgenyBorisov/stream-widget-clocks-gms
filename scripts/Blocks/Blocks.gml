// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377


function Block() constructor{
	sprite = spr_block_build
	progress = 0
	max_progress = sprite_get_number(spr_block_build)
	
	
	function draw(x,y) {
		if progress >= 1 {
			draw_sprite(sprite, progress-1, x,y)
		}
	}
	
	function update() {
		if progress < max_progress {
			progress += irandom(100) * 0.001
		}
		else {
			progress = max_progress
		}
	}
}