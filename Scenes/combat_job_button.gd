extends Button
@onready var combat_job_v_box: VBoxContainer = $"../../../ClickMissionsPanel/CombatJobVBox"
@onready var click_missions_panel: ScrollContainer = $"../../../ClickMissionsPanel"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	#var Parent = self.get_parent()
	for child in click_missions_panel.get_children():
		child.visible = false
	combat_job_v_box.visible = true
