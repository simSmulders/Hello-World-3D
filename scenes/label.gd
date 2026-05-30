extends Label

func _ready():
	GameState.initiated.connect(update_text)
	GameState.collectible_picked_up.connect(update_text)
	GameState.all_collected.connect(_on_all_collected)

func _on_all_collected():
	text = "You Win! 🎉"

func update_text():
	text = "Collected: " + str(GameState.collected_count) + " / " + str(GameState.total_collectibles)
