extends Node2D
class_name SnakeKitTile

var tile_position: Vector2i:
	get:
		return Vector2i(floori((position.x - SnakeKit.OFFSET_X) / SnakeKit.TILE_SIZE), \
										floori((position.y - SnakeKit.OFFSET_Y) / SnakeKit.TILE_SIZE))

var pixel_position: Vector2:
	get:
		return position

func _process(delta: float) -> void:
	queue_redraw()