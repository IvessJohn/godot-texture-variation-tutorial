extends Sprite

export(int) var TEXTURE_VARIATIONS_AMOUNT: int = 3
export(int) var TEXTURE_WIDTH: int = 32
#export(int) var TEXTURE_HEIGHT: int = 32

func _ready():
	variate_texture()

func variate_texture():
	# Tileset/Region approach
	if TEXTURE_VARIATIONS_AMOUNT > 1:
		var skips: int = randi() % TEXTURE_VARIATIONS_AMOUNT
		region_rect.position.x += skips * TEXTURE_WIDTH
#		region_rect.position.y += skips * TEXTURE_HEIGHT
