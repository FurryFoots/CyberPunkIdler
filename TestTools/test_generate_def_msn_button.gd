extends Button
const Default_Msn_Scene = preload("res://Scenes/merc_mission_click.tscn")
@onready var click_missions_v_box: VBoxContainer = $"../../PlayArea/ClickMissionsPanel/ClickMissionsVBox"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	var msn_instance = Default_Msn_Scene.instantiate()
	click_missions_v_box.add_child(msn_instance)
	#Get the 0 child because that's the progress bar that will pass info
	#to the player
	msn_instance.get_child(0).player = %Player
