MACRO RGB
rept _NARG / 3
	dw palred (\1) + palgreen (\2) + palblue (\3)
	shift
	shift
	shift
endr
ENDM

DEF palred   EQUS "(1 << 0) *"
DEF palgreen EQUS "(1 << 5) *"
DEF palblue  EQUS "(1 << 10) *"

DEF palettes EQUS "* PALETTE_SIZE"
DEF palette  EQUS "+ PALETTE_SIZE *"
DEF color    EQUS "+ PAL_COLOR_SIZE *"

DEF tiles EQUS "* LEN_2BPP_TILE"
DEF tile  EQUS "+ LEN_2BPP_TILE *"

; extracts the middle two colors from a 2bpp binary palette
; example usage:
; INCBIN "foo.gbcpal", middle_colors
DEF middle_colors EQUS "PAL_COLOR_SIZE, PAL_COLOR_SIZE * 2"
