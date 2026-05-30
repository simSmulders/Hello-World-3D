extends Node

signal collectible_picked_up
signal all_collected
signal initiated

var collected_count := 0
var total_collectibles := 0

func _ready() -> void:
	await get_tree().process_frame
	total_collectibles = get_tree().get_nodes_in_group("collectibles").size()
	initiated.emit()

func collect():
	collected_count += 1
	collectible_picked_up.emit()
	if collected_count >= total_collectibles:
		all_collected.emit()
