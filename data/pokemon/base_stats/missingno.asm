	db 0 ; species ID placeholder

	db  33, 136,   1,  29,   6,   6
	evs  0,   8,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, GHOST ; type
	db 45 ; catch rate
	db 64 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 120 ; step cycles to hatch
	INCBIN "gfx/pokemon/bulbasaur/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm 
    ; end
