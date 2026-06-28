extends ProgressBar

@onready var mug_civilian_progress_bar: ProgressBar = $"."
@onready var mug_civilian_button: Button = $"../MugCivilianButton"
@onready var Player = $"../../../Player"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if mug_civilian_button.button_pressed:
		if mug_civilian_progress_bar.value < mug_civilian_progress_bar.max_value:
			mug_civilian_progress_bar.value += 20.0 * delta # Fills 10 units per second
		if mug_civilian_progress_bar.value == mug_civilian_progress_bar.max_value:
			mug_civilian_progress_bar.value = 0
			Player.modify_cash(Big.new(1))
			Player.modify_cred(Big.new(1))
			Player.modify_heat(Big.new(1))
