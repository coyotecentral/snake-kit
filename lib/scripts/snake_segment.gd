@tool
extends SnakeKitTile
class_name SnakeSegment

var segment_color: Color = Color.WHITE_SMOKE
var _sprite: Texture2D = null

# TODO: support sprites here:
# @export_enum("Color") var display_type: String = "Color"
var display_type = "Color"

func _draw() -> void:
	draw_rect(Rect2(Vector2(-8, -8), Vector2(SnakeKit.TILE_SIZE, SnakeKit.TILE_SIZE)), segment_color)

func _get_property_list() -> Array[Dictionary]:
	var properties: Array[Dictionary] = []

	if display_type == "Color":
		properties.append({
			"name": "segment_color",
			"type": TYPE_COLOR,
			"hint": PROPERTY_HINT_COLOR_NO_ALPHA,
		})

	return properties

func _get(property: StringName) -> Variant:
	if property == "segment_color":
		return segment_color
	else:
		return null

func _set(property: StringName, value: Variant) -> bool:
	if property == "segment_color":
		if value:
			segment_color = value
		else:
			segment_color = Color.WHITE
		return true
	return false