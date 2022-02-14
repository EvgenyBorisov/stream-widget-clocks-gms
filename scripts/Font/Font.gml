// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377


function write_latter(field, x,y, letter, symbol_class) {
	var l = array_length(letter.code)
	var i, bl 
	
	for (i=0; i<l; i++) {
		if (letter.code[i] == 1)
		{
			bl = field[# x+i%letter.width , y+floor(i/letter.width)]
			
			if !is_struct(bl) {
				field[# x+i%letter.width , y+floor(i/letter.width)] = new symbol_class()
			}
		}
		else {
			field[# x+i%letter.width , y+floor(i/letter.width)] = 0
		}
	}
	
} 

function write_time (field, h,m) {
	if h > 9 {
		h = string(h)
	}
	else {
		h = "0" + string(h)
	}
	if m > 9 {
		m = string(m)
	}
	else {
		m = "0" + string(m)
	}
	
	t = h + ":" + m
	
	
	
	write_latter(field,0,0,symbol_font[? string_char_at(t, 1)], Block)
	write_latter(field,4,0,symbol_font[? string_char_at(t, 2)], Block)
	write_latter(field,8,0,symbol_font[? ":"], Block)
	write_latter(field,10,0,symbol_font[? string_char_at(t, 4)], Block)
	write_latter(field,14,0,symbol_font[? string_char_at(t, 5)], Block)
	
}


function BaseLetter(){
	width = 3
	height = 1
	code = [1,1,1]
}

function LetterClock(): BaseLetter() constructor {
	width = 1
	height = 5
	code = [
	0,
	1,
	0,
	1,
	0
	]
}


function Letter0(): BaseLetter() constructor {
	width = 3
	height = 5
	code = [
	0,1,0,
	1,0,1,
	1,0,1,
	1,0,1,
	0,1,0
	]
}


function Letter1(): BaseLetter() constructor {
	width = 3
	height = 5
	code = [
	0,0,1,
	0,1,1,
	0,0,1,
	0,0,1,
	0,0,1
	]
}

function Letter2(): BaseLetter() constructor {
	width = 3
	height = 5
	code = [
	1,1,1,
	0,0,1,
	0,1,1,
	1,0,0,
	1,1,1
	]
}

function Letter3(): BaseLetter() constructor {
	width = 3
	height = 5
	code = [
	1,1,0,
	0,0,1,
	1,1,0,
	0,0,1,
	1,1,0
	]
}

function Letter4(): BaseLetter() constructor {
	width = 3
	height = 5
	code = [
	1,0,1,
	1,0,1,
	1,1,1,
	0,0,1,
	0,0,1
	]
}

function Letter5(): BaseLetter() constructor {
	width = 3
	height = 5
	code = [
	1,1,1,
	1,0,0,
	1,1,1,
	0,0,1,
	1,1,1
	]
}

function Letter6(): BaseLetter() constructor {
	width = 3
	height = 5
	code = [
	1,1,1,
	1,0,0,
	1,1,1,
	1,0,1,
	1,1,1
	]
}

function Letter7(): BaseLetter() constructor {
	width = 3
	height = 5
	code = [
	1,1,1,
	0,0,1,
	0,0,1,
	0,0,1,
	0,0,1
	]
}

function Letter8(): BaseLetter() constructor {
	width = 3
	height = 5
	code = [
	1,1,1,
	1,0,1,
	1,1,1,
	1,0,1,
	1,1,1
	]
}

function Letter9(): BaseLetter() constructor {
	width = 3
	height = 5
	code = [
	1,1,1,
	1,0,1,
	1,1,1,
	0,0,1,
	1,1,1
	]
}




