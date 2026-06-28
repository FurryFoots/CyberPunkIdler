extends ProgressBar

@onready var search_trash_progress_bar: ProgressBar = $"."
@onready var search_trash_button: Button = $"../SearchTrashButton"
var player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		if search_trash_progress_bar.value >= search_trash_progress_bar.max_value:
			search_trash_progress_bar.value = 0
			player.modify_cash(Big.new(1))

func _on_search_trash_button_pressed() -> void:
	search_trash_progress_bar.value += 10 # Replace with function body.
