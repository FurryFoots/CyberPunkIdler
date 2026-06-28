extends ProgressBar

@onready var search_trash_progress_bar: ProgressBar = $"."
@onready var search_trash_button: Button = $"../SearchTrashButton"
@onready var Player = $"../../../Player"
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if search_trash_button.button_pressed:
		if search_trash_progress_bar.value < search_trash_progress_bar.max_value:
			search_trash_progress_bar.value += 30.0 * delta # Fills 10 units per second
		if search_trash_progress_bar.value == search_trash_progress_bar.max_value:
			search_trash_progress_bar.value = 0
			Player.modify_cash(Big.new(1))
